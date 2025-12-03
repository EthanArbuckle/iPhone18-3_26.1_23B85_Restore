@interface PLJournalEntry
- (BOOL)_readFromFileHandle:(id)handle decodePayload:(BOOL)payload payloadClass:(Class)class error:(id *)error;
- (BOOL)readFromFileHandle:(id)handle decodePayload:(BOOL)payload payloadClass:(Class)class entryOffset:(unint64_t *)offset error:(id *)error;
- (BOOL)writeToFileHandle:(id)handle checksumContext:(id)context error:(id *)error;
- (PLJournalEntry)initWithPayloadID:(id)d payload:(id)payload payloadClass:(Class)class entryType:(int)type;
- (id)debugDescription;
- (id)description;
- (id)descriptionWithBuilder:(id)builder;
- (id)entryTypeDescription;
- (id)initForDeleteWithPayloadID:(id)d payloadClass:(Class)class;
- (id)initForInsertWithPayload:(id)payload;
- (id)initForUpdateWithPayload:(id)payload;
- (void)_appendHeaderData:(id)data headerCRC:(unsigned __int16)c payloadData:(id)payloadData toFileHandle:(id)handle checksumContext:(id)context;
- (void)writeBytes:(const void *)bytes length:(unint64_t)length toFileHandle:(id)handle checksumContext:(id)context;
@end

@implementation PLJournalEntry

- (id)entryTypeDescription
{
  header = [(PLJournalEntry *)self header];
  entryType = [header entryType];
  if (entryType >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", entryType];
  }

  else
  {
    v4 = off_1E7570DD8[entryType];
  }

  return v4;
}

- (id)descriptionWithBuilder:(id)builder
{
  builderCopy = builder;
  header = [(PLJournalEntry *)self header];
  entryType = [header entryType];
  if (entryType >= 3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", entryType];
  }

  else
  {
    v7 = off_1E7570DD8[entryType];
  }

  [builderCopy appendName:@"type" object:v7];

  payloadID = [(PLJournalEntry *)self payloadID];

  if (payloadID)
  {
    payloadID2 = [(PLJournalEntry *)self payloadID];
    [builderCopy appendName:@"payloadID" object:payloadID2];
  }

  header2 = [(PLJournalEntry *)self header];
  entryType2 = [header2 entryType];

  if (entryType2 != 2)
  {
    [builderCopy appendName:@"version" integerValue:{-[PLJournalEntry payloadVersion](self, "payloadVersion")}];
  }

  payload = [(PLJournalEntry *)self payload];

  if (payload)
  {
    if ([builderCopy style] == 3)
    {
      v13 = -[PLJournalEntryPayload prettyDescriptionForEntry:indent:](self->_payload, "prettyDescriptionForEntry:indent:", self, [builderCopy indent] + 1);
      [builderCopy appendName:@"payload" object:v13];
    }

    else
    {
      v14 = MEMORY[0x1E696AEC0];
      v13 = [(PLJournalEntryPayload *)self->_payload descriptionForEntry:self];
      v15 = [v14 stringWithFormat:@"[%@]", v13];
      [builderCopy appendName:@"payload" object:v15];
    }
  }

  build = [builderCopy build];

  return build;
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

- (BOOL)writeToFileHandle:(id)handle checksumContext:(id)context error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  contextCopy = context;
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
    payloadUUIDData = [(PLJournalEntryPayloadID *)self->_payloadID payloadUUIDData];
    if (payloadUUIDData)
    {
      [(PLJournalEntryHeader *)self->_header setPayloadUUID:payloadUUIDData];
    }

    else
    {
      payloadIDString = [(PLJournalEntryPayloadID *)self->_payloadID payloadIDString];
      [(PLJournalEntryHeader *)self->_header setPayloadID:payloadIDString];
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
    immutableData = [v14 immutableData];
    v19 = immutableData;
    [immutableData bytes];
    [immutableData length];
    CNCRC();
    [(PLJournalEntryHeader *)self->_header setPayloadID:0];
    [(PLJournalEntry *)self appendHeaderData:immutableData headerCRC:0 payloadData:v11 toFileHandle:handleCopy checksumContext:contextCopy];
    v20 = 1;

    v13 = v11;
    goto LABEL_11;
  }

  if (!error)
  {
    v20 = 0;
    goto LABEL_12;
  }

  v22 = MEMORY[0x1E696ABC0];
  v24 = *MEMORY[0x1E696AA08];
  v25[0] = v12;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  [v22 errorWithDomain:*MEMORY[0x1E69BFF48] code:51002 userInfo:v14];
  *error = v20 = 0;
LABEL_11:

LABEL_12:
  return v20;
}

- (void)_appendHeaderData:(id)data headerCRC:(unsigned __int16)c payloadData:(id)payloadData toFileHandle:(id)handle checksumContext:(id)context
{
  cCopy = c;
  dataCopy = data;
  payloadDataCopy = payloadData;
  handleCopy = handle;
  contextCopy = context;
  [(PLJournalEntry *)self writeBytes:&kPLJournalEntryMagic length:1 toFileHandle:handleCopy checksumContext:contextCopy];
  v23 = __rev16(cCopy);
  [(PLJournalEntry *)self writeBytes:&v23 length:2 toFileHandle:handleCopy checksumContext:contextCopy];
  if ([dataCopy length] >= 0x10000)
  {
    [dataCopy length];
    v16 = _PFAssertFailHandler();
    [(PLJournalEntry *)v16 writeBytes:v17 length:v18 toFileHandle:v19 checksumContext:v20, v21];
  }

  else
  {
    v22 = bswap32([dataCopy length]) >> 16;
    [(PLJournalEntry *)self writeBytes:&v22 length:2 toFileHandle:handleCopy checksumContext:contextCopy];
    [handleCopy writeData:dataCopy];
    [contextCopy update:dataCopy];
    if (payloadDataCopy)
    {
      [handleCopy writeData:payloadDataCopy];
      [contextCopy update:payloadDataCopy];
    }
  }
}

- (void)writeBytes:(const void *)bytes length:(unint64_t)length toFileHandle:(id)handle checksumContext:(id)context
{
  v9 = MEMORY[0x1E695DEF0];
  contextCopy = context;
  handleCopy = handle;
  v12 = [[v9 alloc] initWithBytesNoCopy:bytes length:length freeWhenDone:0];
  [contextCopy update:v12];

  [handleCopy writeData:v12];
}

- (BOOL)readFromFileHandle:(id)handle decodePayload:(BOOL)payload payloadClass:(Class)class entryOffset:(unint64_t *)offset error:(id *)error
{
  payloadCopy = payload;
  handleCopy = handle;
  offsetInFile = [handleCopy offsetInFile];
  v23 = 0;
  v14 = [(PLJournalEntry *)self _readFromFileHandle:handleCopy decodePayload:payloadCopy payloadClass:class error:&v23];
  v15 = v23;
  if (v14)
  {
    v16 = 1;
    if (!offset)
    {
      goto LABEL_9;
    }

LABEL_8:
    *offset = offsetInFile;
    goto LABEL_9;
  }

  while (1)
  {
    code = [v15 code];
    v16 = code == 51001;
    if (code != 51001)
    {
      break;
    }

    [handleCopy seekToFileOffset:++offsetInFile];
    v22 = v15;
    v18 = [(PLJournalEntry *)self _readFromFileHandle:handleCopy decodePayload:payloadCopy payloadClass:class error:&v22];
    v19 = v22;

    v15 = v19;
    if (v18)
    {
      v16 = 1;
      v15 = v19;
      break;
    }
  }

  if (offset)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (error)
  {
    v20 = v15;
    *error = v15;
  }

  return v16;
}

- (BOOL)_readFromFileHandle:(id)handle decodePayload:(BOOL)payload payloadClass:(Class)class error:(id *)error
{
  payloadCopy = payload;
  v46[3] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v11 = [handleCopy readDataOfLength:1];
  if ([v11 length] == 1)
  {
    if (*[v11 bytes] == 64)
    {

      v12 = [handleCopy readDataOfLength:2];
      if ([v12 length] == 2)
      {
        LOWORD(v46[0]) = 0;
        [v12 getBytes:v46 length:2];
        v13 = LOWORD(v46[0]);

        v14 = [handleCopy readDataOfLength:2];
        if ([v14 length] == 2)
        {
          LOWORD(v46[0]) = 0;
          [v14 getBytes:v46 length:2];
          LODWORD(v15) = LOWORD(v46[0]);

          if (v15)
          {
            v16 = __rev16(v15);
            v17 = [handleCopy readDataOfLength:v16];
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
                    payloadUUID = [(PLJournalEntryHeader *)self->_header payloadUUID];
                    v26 = payloadUUID;
                    v27 = +[PLJournalEntryPayloadIDFactory payloadIDWithUUIDBytes:](PLJournalEntryPayloadIDFactory, "payloadIDWithUUIDBytes:", [payloadUUID bytes]);
                    payloadID = self->_payloadID;
                    self->_payloadID = v27;

                    [(PLJournalEntryHeader *)self->_header setPayloadUUID:0];
                    goto LABEL_32;
                  }

                  if ([(PLJournalEntryHeader *)self->_header hasPayloadID])
                  {
                    payloadID = [(PLJournalEntryHeader *)self->_header payloadID];
                    v30 = [PLJournalEntryPayloadIDFactory payloadIDWithString:payloadID];
                    v31 = self->_payloadID;
                    self->_payloadID = v30;

LABEL_32:
                    objc_storeStrong(&self->_payloadClass, class);
                    payloadLength = [(PLJournalEntryHeader *)self->_header payloadLength];
                    nilProperties = [(PLJournalEntryHeader *)self->_header nilProperties];
                    if (nilProperties)
                    {
                      v34 = objc_alloc(MEMORY[0x1E695DFD8]);
                      nilProperties2 = [(PLJournalEntryHeader *)self->_header nilProperties];
                      v36 = [v34 initWithArray:nilProperties2];
                    }

                    else
                    {
                      v36 = 0;
                    }

                    if (payloadLength)
                    {
                      v37 = [handleCopy readDataOfLength:payloadLength];
                      if ([v37 length] >= payloadLength)
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

                        if (v40 && payloadCopy)
                        {
                          v41 = self->_payloadID;
                          payloadVersion = [(PLJournalEntryHeader *)self->_header payloadVersion];
                          v45 = 0;
                          v43 = [(objc_class *)class payloadWithData:v37 forPayloadID:v41 version:payloadVersion andNilProperties:v36 error:&v45];
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
                      if ([(PLJournalEntryHeader *)self->_header entryType]== 2 || !payloadCopy)
                      {
                        goto LABEL_54;
                      }

                      v38 = [(objc_class *)class payloadWithData:0 forPayloadID:self->_payloadID version:[(PLJournalEntryHeader *)self->_header payloadVersion] andNilProperties:v36 error:0];
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
  if (error && v18)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:v18 userInfo:0];
  }

  return v15;
}

- (id)initForDeleteWithPayloadID:(id)d payloadClass:(Class)class
{
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    payloadClassID = [(objc_class *)class payloadClassID];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLJournal.m" lineNumber:278 description:{@"payloadID must be non-nil (payloadClassID: %@)", payloadClassID}];
  }

  v8 = [(PLJournalEntry *)self initWithPayloadID:dCopy payload:0 payloadClass:class entryType:2];

  return v8;
}

- (id)initForUpdateWithPayload:(id)payload
{
  payloadCopy = payload;
  payloadID = [payloadCopy payloadID];

  if (!payloadID)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    payloadClassID = [objc_opt_class() payloadClassID];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLJournal.m" lineNumber:273 description:{@"payloadID must be non-nil (payloadClassID: %@)", payloadClassID}];
  }

  payloadID2 = [payloadCopy payloadID];
  v8 = [(PLJournalEntry *)self initWithPayloadID:payloadID2 payload:payloadCopy payloadClass:objc_opt_class() entryType:1];

  return v8;
}

- (id)initForInsertWithPayload:(id)payload
{
  payloadCopy = payload;
  payloadID = [payloadCopy payloadID];

  if (!payloadID)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    payloadClassID = [objc_opt_class() payloadClassID];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLJournal.m" lineNumber:268 description:{@"payloadID must be non-nil (payloadClassID: %@)", payloadClassID}];
  }

  payloadID2 = [payloadCopy payloadID];
  v8 = [(PLJournalEntry *)self initWithPayloadID:payloadID2 payload:payloadCopy payloadClass:objc_opt_class() entryType:0];

  return v8;
}

- (PLJournalEntry)initWithPayloadID:(id)d payload:(id)payload payloadClass:(Class)class entryType:(int)type
{
  v6 = *&type;
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  payloadCopy = payload;
  v27.receiver = self;
  v27.super_class = PLJournalEntry;
  v13 = [(PLJournalEntry *)&v27 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_payloadID, d);
    v15 = objc_alloc_init(PLJournalEntryHeader);
    header = v14->_header;
    v14->_header = v15;

    [(PLJournalEntryHeader *)v14->_header setEntryType:v6];
    objc_storeStrong(&v14->_payloadClass, class);
    if (payloadCopy)
    {
      -[PLJournalEntryHeader setPayloadVersion:](v14->_header, "setPayloadVersion:", [payloadCopy payloadVersion]);
      if (v6 == 1)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        nilProperties = [payloadCopy nilProperties];
        v18 = [nilProperties countByEnumeratingWithState:&v23 objects:v28 count:16];
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
                objc_enumerationMutation(nilProperties);
              }

              [(PLJournalEntryHeader *)v14->_header addNilProperties:*(*(&v23 + 1) + 8 * v21++)];
            }

            while (v19 != v21);
            v19 = [nilProperties countByEnumeratingWithState:&v23 objects:v28 count:16];
          }

          while (v19);
        }
      }

      objc_storeStrong(&v14->_payload, payload);
    }
  }

  return v14;
}

@end