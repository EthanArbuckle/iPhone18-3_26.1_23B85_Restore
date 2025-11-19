@interface PLJournalEntry
- (BOOL)_readFromFileHandle:(id)a3 decodePayload:(BOOL)a4 payloadClass:(Class)a5 error:(id *)a6;
- (BOOL)readFromFileHandle:(id)a3 decodePayload:(BOOL)a4 payloadClass:(Class)a5 entryOffset:(unint64_t *)a6 error:(id *)a7;
- (BOOL)writeToFileHandle:(id)a3 checksumContext:(id)a4 error:(id *)a5;
- (PLJournalEntry)initWithPayloadID:(id)a3 payload:(id)a4 payloadClass:(Class)a5 entryType:(int)a6;
- (id)debugDescription;
- (id)description;
- (id)descriptionWithBuilder:(id)a3;
- (id)entryTypeDescription;
- (id)initForDeleteWithPayloadID:(id)a3 payloadClass:(Class)a4;
- (id)initForInsertWithPayload:(id)a3;
- (id)initForUpdateWithPayload:(id)a3;
- (void)_appendHeaderData:(id)a3 headerCRC:(unsigned __int16)a4 payloadData:(id)a5 toFileHandle:(id)a6 checksumContext:(id)a7;
- (void)writeBytes:(const void *)a3 length:(unint64_t)a4 toFileHandle:(id)a5 checksumContext:(id)a6;
@end

@implementation PLJournalEntry

- (id)entryTypeDescription
{
  v2 = [(PLJournalEntry *)self header];
  v3 = [v2 entryType];
  if (v3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v3];
  }

  else
  {
    v4 = off_1E7570DD8[v3];
  }

  return v4;
}

- (id)descriptionWithBuilder:(id)a3
{
  v4 = a3;
  v5 = [(PLJournalEntry *)self header];
  v6 = [v5 entryType];
  if (v6 >= 3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
  }

  else
  {
    v7 = off_1E7570DD8[v6];
  }

  [v4 appendName:@"type" object:v7];

  v8 = [(PLJournalEntry *)self payloadID];

  if (v8)
  {
    v9 = [(PLJournalEntry *)self payloadID];
    [v4 appendName:@"payloadID" object:v9];
  }

  v10 = [(PLJournalEntry *)self header];
  v11 = [v10 entryType];

  if (v11 != 2)
  {
    [v4 appendName:@"version" integerValue:{-[PLJournalEntry payloadVersion](self, "payloadVersion")}];
  }

  v12 = [(PLJournalEntry *)self payload];

  if (v12)
  {
    if ([v4 style] == 3)
    {
      v13 = -[PLJournalEntryPayload prettyDescriptionForEntry:indent:](self->_payload, "prettyDescriptionForEntry:indent:", self, [v4 indent] + 1);
      [v4 appendName:@"payload" object:v13];
    }

    else
    {
      v14 = MEMORY[0x1E696AEC0];
      v13 = [(PLJournalEntryPayload *)self->_payload descriptionForEntry:self];
      v15 = [v14 stringWithFormat:@"[%@]", v13];
      [v4 appendName:@"payload" object:v15];
    }
  }

  v16 = [v4 build];

  return v16;
}

- (id)debugDescription
{
  v3 = [[PLDescriptionBuilder alloc] initWithObject:self style:3 indent:0];
  v4 = [(PLJournalEntry *)self descriptionWithBuilder:v3];

  return v4;
}

- (id)description
{
  v3 = [[PLDescriptionBuilder alloc] initWithObject:self style:1 indent:0];
  v4 = [(PLJournalEntry *)self descriptionWithBuilder:v3];

  return v4;
}

- (BOOL)writeToFileHandle:(id)a3 checksumContext:(id)a4 error:(id *)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  payload = self->_payload;
  if (!payload)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v23[0] = 0;
  v11 = [(PLJournalEntryPayload *)payload payloadDataWithError:v23];
  v12 = v23[0];
  v13 = v12;
  if (v11)
  {

LABEL_5:
    v14 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    v15 = [(PLJournalEntryPayloadID *)self->_payloadID payloadUUIDData];
    if (v15)
    {
      [(PLJournalEntryHeader *)self->_header setPayloadUUID:v15];
    }

    else
    {
      v16 = [(PLJournalEntryPayloadID *)self->_payloadID payloadIDString];
      [(PLJournalEntryHeader *)self->_header setPayloadID:v16];
    }

    if ([v11 length])
    {
      v17 = v11;
      [v11 bytes];
      [v11 length];
      CNCRC();
      [(PLJournalEntryHeader *)self->_header setPayloadCRC:0];
      -[PLJournalEntryHeader setPayloadLength:](self->_header, "setPayloadLength:", [v11 length]);
    }

    [(PLJournalEntryHeader *)self->_header writeTo:v14];
    v18 = [v14 immutableData];
    v19 = v18;
    [v18 bytes];
    [v18 length];
    CNCRC();
    [(PLJournalEntryHeader *)self->_header setPayloadID:0];
    [(PLJournalEntry *)self appendHeaderData:v18 headerCRC:0 payloadData:v11 toFileHandle:v8 checksumContext:v9];
    v20 = 1;

    v13 = v11;
    goto LABEL_11;
  }

  if (!a5)
  {
    v20 = 0;
    goto LABEL_12;
  }

  v22 = MEMORY[0x1E696ABC0];
  v24 = *MEMORY[0x1E696AA08];
  v25[0] = v12;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  [v22 errorWithDomain:*MEMORY[0x1E69BFF48] code:51002 userInfo:v14];
  *a5 = v20 = 0;
LABEL_11:

LABEL_12:
  return v20;
}

- (void)_appendHeaderData:(id)a3 headerCRC:(unsigned __int16)a4 payloadData:(id)a5 toFileHandle:(id)a6 checksumContext:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  [(PLJournalEntry *)self writeBytes:&kPLJournalEntryMagic length:1 toFileHandle:v14 checksumContext:v15];
  v23 = __rev16(v10);
  [(PLJournalEntry *)self writeBytes:&v23 length:2 toFileHandle:v14 checksumContext:v15];
  if ([v12 length] >= 0x10000)
  {
    [v12 length];
    v16 = _PFAssertFailHandler();
    [(PLJournalEntry *)v16 writeBytes:v17 length:v18 toFileHandle:v19 checksumContext:v20, v21];
  }

  else
  {
    v22 = bswap32([v12 length]) >> 16;
    [(PLJournalEntry *)self writeBytes:&v22 length:2 toFileHandle:v14 checksumContext:v15];
    [v14 writeData:v12];
    [v15 update:v12];
    if (v13)
    {
      [v14 writeData:v13];
      [v15 update:v13];
    }
  }
}

- (void)writeBytes:(const void *)a3 length:(unint64_t)a4 toFileHandle:(id)a5 checksumContext:(id)a6
{
  v9 = MEMORY[0x1E695DEF0];
  v10 = a6;
  v11 = a5;
  v12 = [[v9 alloc] initWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
  [v10 update:v12];

  [v11 writeData:v12];
}

- (BOOL)readFromFileHandle:(id)a3 decodePayload:(BOOL)a4 payloadClass:(Class)a5 entryOffset:(unint64_t *)a6 error:(id *)a7
{
  v10 = a4;
  v12 = a3;
  v13 = [v12 offsetInFile];
  v23 = 0;
  v14 = [(PLJournalEntry *)self _readFromFileHandle:v12 decodePayload:v10 payloadClass:a5 error:&v23];
  v15 = v23;
  if (v14)
  {
    v16 = 1;
    if (!a6)
    {
      goto LABEL_9;
    }

LABEL_8:
    *a6 = v13;
    goto LABEL_9;
  }

  while (1)
  {
    v17 = [v15 code];
    v16 = v17 == 51001;
    if (v17 != 51001)
    {
      break;
    }

    [v12 seekToFileOffset:++v13];
    v22 = v15;
    v18 = [(PLJournalEntry *)self _readFromFileHandle:v12 decodePayload:v10 payloadClass:a5 error:&v22];
    v19 = v22;

    v15 = v19;
    if (v18)
    {
      v16 = 1;
      v15 = v19;
      break;
    }
  }

  if (a6)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (a7)
  {
    v20 = v15;
    *a7 = v15;
  }

  return v16;
}

- (BOOL)_readFromFileHandle:(id)a3 decodePayload:(BOOL)a4 payloadClass:(Class)a5 error:(id *)a6
{
  v8 = a4;
  v46[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [v10 readDataOfLength:1];
  if ([v11 length] == 1)
  {
    if (*[v11 bytes] == 64)
    {

      v12 = [v10 readDataOfLength:2];
      if ([v12 length] == 2)
      {
        LOWORD(v46[0]) = 0;
        [v12 getBytes:v46 length:2];
        v13 = LOWORD(v46[0]);

        v14 = [v10 readDataOfLength:2];
        if ([v14 length] == 2)
        {
          LOWORD(v46[0]) = 0;
          [v14 getBytes:v46 length:2];
          LODWORD(v15) = LOWORD(v46[0]);

          if (v15)
          {
            v16 = __rev16(v15);
            v17 = [v10 readDataOfLength:v16];
            if (![v17 length])
            {
              v18 = 51005;
              goto LABEL_22;
            }

            if ([v17 length] < v16)
            {
              v18 = 51001;
LABEL_22:

              goto LABEL_12;
            }

            v46[0] = 0;
            v21 = v17;
            [v17 bytes];
            [v17 length];
            CNCRC();
            if (v46[0] == bswap32(v13) >> 16)
            {
              v22 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v17];
              if (PLJournalEntryHeaderReadFrom(self->_header, v22))
              {
                if (!-[PLJournalEntryHeader hasPayloadUUID](self->_header, "hasPayloadUUID") || (-[PLJournalEntryHeader payloadUUID](self->_header, "payloadUUID"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 length] == 16, v23, v24))
                {
                  if ([(PLJournalEntryHeader *)self->_header hasPayloadUUID])
                  {
                    v25 = [(PLJournalEntryHeader *)self->_header payloadUUID];
                    v26 = v25;
                    v27 = +[PLJournalEntryPayloadIDFactory payloadIDWithUUIDBytes:](PLJournalEntryPayloadIDFactory, "payloadIDWithUUIDBytes:", [v25 bytes]);
                    payloadID = self->_payloadID;
                    self->_payloadID = v27;

                    [(PLJournalEntryHeader *)self->_header setPayloadUUID:0];
                    goto LABEL_32;
                  }

                  if ([(PLJournalEntryHeader *)self->_header hasPayloadID])
                  {
                    v29 = [(PLJournalEntryHeader *)self->_header payloadID];
                    v30 = [PLJournalEntryPayloadIDFactory payloadIDWithString:v29];
                    v31 = self->_payloadID;
                    self->_payloadID = v30;

LABEL_32:
                    objc_storeStrong(&self->_payloadClass, a5);
                    v32 = [(PLJournalEntryHeader *)self->_header payloadLength];
                    v33 = [(PLJournalEntryHeader *)self->_header nilProperties];
                    if (v33)
                    {
                      v34 = objc_alloc(MEMORY[0x1E695DFD8]);
                      v35 = [(PLJournalEntryHeader *)self->_header nilProperties];
                      v36 = [v34 initWithArray:v35];
                    }

                    else
                    {
                      v36 = 0;
                    }

                    if (v32)
                    {
                      v37 = [v10 readDataOfLength:v32];
                      if ([v37 length] >= v32)
                      {
                        v46[0] = 0;
                        v39 = v37;
                        [v37 bytes];
                        [v37 length];
                        CNCRC();
                        v15 = v46[0];
                        v19 = 0;
                        v40 = v15 == [(PLJournalEntryHeader *)self->_header payloadCRC];
                        LOBYTE(v15) = v40;
                        if (v40)
                        {
                          v18 = 0;
                        }

                        else
                        {
                          v18 = 51001;
                        }

                        if (v40 && v8)
                        {
                          v41 = self->_payloadID;
                          v42 = [(PLJournalEntryHeader *)self->_header payloadVersion];
                          v45 = 0;
                          v43 = [(objc_class *)a5 payloadWithData:v37 forPayloadID:v41 version:v42 andNilProperties:v36 error:&v45];
                          v19 = v45;
                          payload = self->_payload;
                          self->_payload = v43;

                          if (v19)
                          {
                            LOBYTE(v15) = 0;
                            v18 = 51001;
                          }

                          else
                          {
                            v18 = 0;
                            LOBYTE(v15) = 1;
                          }
                        }
                      }

                      else
                      {
                        v19 = 0;
                        LOBYTE(v15) = 0;
                        v18 = 51005;
                      }
                    }

                    else
                    {
                      v18 = 0;
                      LOBYTE(v15) = 1;
                      v19 = 0;
                      if ([(PLJournalEntryHeader *)self->_header entryType]== 2 || !v8)
                      {
                        goto LABEL_54;
                      }

                      v38 = [(objc_class *)a5 payloadWithData:0 forPayloadID:self->_payloadID version:[(PLJournalEntryHeader *)self->_header payloadVersion] andNilProperties:v36 error:0];
                      v18 = 0;
                      v19 = 0;
                      v37 = self->_payload;
                      self->_payload = v38;
                    }

LABEL_54:
                    goto LABEL_13;
                  }
                }
              }
            }

            else
            {
            }

            v19 = 0;
            LOBYTE(v15) = 0;
          }

          else
          {
            v19 = 0;
          }

          v18 = 51001;
          goto LABEL_13;
        }
      }

      else
      {
      }

      v19 = 0;
      LOBYTE(v15) = 0;
      v18 = 51005;
      goto LABEL_13;
    }

    v18 = 51001;
  }

  else
  {
    v18 = 51005;
  }

LABEL_12:
  v19 = 0;
  LOBYTE(v15) = 0;
LABEL_13:
  if (a6 && v18)
  {
    *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:v18 userInfo:0];
  }

  return v15;
}

- (id)initForDeleteWithPayloadID:(id)a3 payloadClass:(Class)a4
{
  v7 = a3;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [(objc_class *)a4 payloadClassID];
    [v10 handleFailureInMethod:a2 object:self file:@"PLJournal.m" lineNumber:278 description:{@"payloadID must be non-nil (payloadClassID: %@)", v11}];
  }

  v8 = [(PLJournalEntry *)self initWithPayloadID:v7 payload:0 payloadClass:a4 entryType:2];

  return v8;
}

- (id)initForUpdateWithPayload:(id)a3
{
  v5 = a3;
  v6 = [v5 payloadID];

  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [objc_opt_class() payloadClassID];
    [v10 handleFailureInMethod:a2 object:self file:@"PLJournal.m" lineNumber:273 description:{@"payloadID must be non-nil (payloadClassID: %@)", v11}];
  }

  v7 = [v5 payloadID];
  v8 = [(PLJournalEntry *)self initWithPayloadID:v7 payload:v5 payloadClass:objc_opt_class() entryType:1];

  return v8;
}

- (id)initForInsertWithPayload:(id)a3
{
  v5 = a3;
  v6 = [v5 payloadID];

  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [objc_opt_class() payloadClassID];
    [v10 handleFailureInMethod:a2 object:self file:@"PLJournal.m" lineNumber:268 description:{@"payloadID must be non-nil (payloadClassID: %@)", v11}];
  }

  v7 = [v5 payloadID];
  v8 = [(PLJournalEntry *)self initWithPayloadID:v7 payload:v5 payloadClass:objc_opt_class() entryType:0];

  return v8;
}

- (PLJournalEntry)initWithPayloadID:(id)a3 payload:(id)a4 payloadClass:(Class)a5 entryType:(int)a6
{
  v6 = *&a6;
  v29 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v27.receiver = self;
  v27.super_class = PLJournalEntry;
  v13 = [(PLJournalEntry *)&v27 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_payloadID, a3);
    v15 = objc_alloc_init(PLJournalEntryHeader);
    header = v14->_header;
    v14->_header = v15;

    [(PLJournalEntryHeader *)v14->_header setEntryType:v6];
    objc_storeStrong(&v14->_payloadClass, a5);
    if (v12)
    {
      -[PLJournalEntryHeader setPayloadVersion:](v14->_header, "setPayloadVersion:", [v12 payloadVersion]);
      if (v6 == 1)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v17 = [v12 nilProperties];
        v18 = [v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v24;
          do
          {
            v21 = 0;
            do
            {
              if (*v24 != v20)
              {
                objc_enumerationMutation(v17);
              }

              [(PLJournalEntryHeader *)v14->_header addNilProperties:*(*(&v23 + 1) + 8 * v21++)];
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
          }

          while (v19);
        }
      }

      objc_storeStrong(&v14->_payload, a4);
    }
  }

  return v14;
}

@end