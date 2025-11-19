@interface PCProtobufReader
- (BOOL)closeFile;
- (BOOL)openFileWithName:(id)a3 error:(id *)a4;
- (BOOL)readRecord:(id *)a3 error:(id *)a4;
- (PCProtobufReader)init;
- (id)findNextMessageStart;
- (id)readRemainingBytes;
- (id)readUntilNextMessageStart;
- (id)unescapeMessage:(id)a3;
@end

@implementation PCProtobufReader

- (PCProtobufReader)init
{
  v3.receiver = self;
  v3.super_class = PCProtobufReader;
  result = [(PCProtobufReader *)&v3 init];
  if (result)
  {
    result->_eofReached = 0;
  }

  return result;
}

- (BOOL)openFileWithName:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_fileHandle)
  {
    [(PCProtobufReader *)self closeFile];
  }

  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
  v17 = 0;
  v8 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:v7 error:&v17];
  v9 = v17;
  fileHandle = self->_fileHandle;
  self->_fileHandle = v8;

  v11 = self->_fileHandle;
  if (v11)
  {
    self->_eofReached = 0;
  }

  else if (a4)
  {
    if (v9)
    {
      v14 = v9;
      *a4 = v9;
    }

    else
    {
      v15 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v19[0] = @"Unable to open file";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *a4 = [v15 errorWithDomain:@"PCProtobufReader" code:2 userInfo:v16];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11 != 0;
}

- (BOOL)readRecord:(id *)a3 error:(id *)a4
{
  v52[1] = *MEMORY[0x1E69E9840];
  if (!self->_fileHandle)
  {
    if (a4)
    {
      v8 = MEMORY[0x1E696ABC0];
      v51 = *MEMORY[0x1E696A578];
      v52[0] = @"File not opened";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      *a4 = [v8 errorWithDomain:@"PCProtobufReader" code:3 userInfo:v9];
    }

    if (!a3)
    {
      goto LABEL_4;
    }

LABEL_8:
    v7 = 0;
    *a3 = 0;
    goto LABEL_49;
  }

  if (!self->_eofReached)
  {
    v10 = [(PCProtobufReader *)self findNextMessageStart];
    if (v10)
    {
      v11 = [(PCProtobufReader *)self readUntilNextMessageStart];
      if (v11 || ([(PCProtobufReader *)self readRemainingBytes], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v12 = v11;
        v13 = [(PCProtobufReader *)self unescapeMessage:v11];
        v40 = 0;
        v39 = 0;
        if (PCDecodeVarintFromData(v13, &v39, &v40))
        {
          v14 = v40 + v39 + 4;
          if (v14 == [v13 length])
          {
            v15 = [v13 subdataWithRange:{v40, v39}];
            v16 = [v13 subdataWithRange:{v40 + v39, 4}];
            v17 = PCDecodeLittleEndianUInt32(v16);
            v18 = [v15 bytes];
            v19 = [v15 length];
            if (v19)
            {
              v20 = 0;
              v21 = 1;
              do
              {
                v22 = *v18++;
                v21 = (v21 + v22) % 0xFFF1;
                v20 = (v21 + v20) % 0xFFF1;
                --v19;
              }

              while (v19);
              v23 = v21 | (v20 << 16);
            }

            else
            {
              v23 = 1;
            }

            if (v17 != v23)
            {
              if (a4)
              {
                v33 = MEMORY[0x1E696ABC0];
                v43 = *MEMORY[0x1E696A578];
                v44 = @"Checksum verification failed";
                v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
                *a4 = [v33 errorWithDomain:@"PCProtobufReader" code:7 userInfo:v34];
              }

              v7 = 0;
              if (a3)
              {
                *a3 = 0;
              }

              goto LABEL_46;
            }

            v30 = [[PCPInteractionRecord alloc] initWithData:v15];
            v31 = v30;
            v7 = v30 != 0;
            if (v30)
            {
              if (!a3)
              {
LABEL_45:

LABEL_46:
                goto LABEL_47;
              }

              v32 = v30;
            }

            else
            {
              if (a4)
              {
                v38 = MEMORY[0x1E696ABC0];
                v41 = *MEMORY[0x1E696A578];
                v42 = @"Failed to parse protobuf";
                v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
                *a4 = [v38 errorWithDomain:@"PCProtobufReader" code:8 userInfo:v35];
              }

              if (!a3)
              {
                goto LABEL_45;
              }
            }

            *a3 = v31;
            goto LABEL_45;
          }

          if (a4)
          {
            v26 = MEMORY[0x1E696ABC0];
            v45 = *MEMORY[0x1E696A578];
            v46 = @"Size mismatch in message";
            v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
            *a4 = [v26 errorWithDomain:@"PCProtobufReader" code:6 userInfo:v27];
          }

          if (!a3)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (a4)
          {
            v24 = MEMORY[0x1E696ABC0];
            v47 = *MEMORY[0x1E696A578];
            v48 = @"Failed to decode length varint";
            v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
            *a4 = [v24 errorWithDomain:@"PCProtobufReader" code:5 userInfo:v25];
          }

          if (!a3)
          {
LABEL_27:
            v7 = 0;
            goto LABEL_47;
          }
        }

        v7 = 0;
        *a3 = 0;
LABEL_47:

        goto LABEL_48;
      }

      if (a4)
      {
        v28 = MEMORY[0x1E696ABC0];
        v49 = *MEMORY[0x1E696A578];
        v50 = @"No data after message start";
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        *a4 = [v28 errorWithDomain:@"PCProtobufReader" code:4 userInfo:v29];
      }

      if (!a3)
      {
        goto LABEL_31;
      }
    }

    else
    {
      self->_eofReached = 1;
      if (!a3)
      {
LABEL_31:
        v7 = 0;
        goto LABEL_48;
      }
    }

    v7 = 0;
    *a3 = 0;
LABEL_48:

    goto LABEL_49;
  }

  if (a3)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = 0;
LABEL_49:
  v36 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)closeFile
{
  fileHandle = self->_fileHandle;
  if (fileHandle)
  {
    [(NSFileHandle *)fileHandle closeFile];
    v4 = self->_fileHandle;
    self->_fileHandle = 0;
  }

  return 1;
}

- (id)findNextMessageStart
{
  v3 = [MEMORY[0x1E695DF88] dataWithCapacity:0x2000];
  v4 = [(NSFileHandle *)self->_fileHandle offsetInFile];
  v5 = [(NSFileHandle *)self->_fileHandle readDataOfLength:0x2000];
  if ([v5 length])
  {
    while (1)
    {
      [v3 appendData:v5];
      v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&kPCProtobufIOMessageStartSeq length:3];
      v7 = PCFindData(v6, v3);
      v9 = v8;

      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if ([v3 length] >= 3)
      {
        v10 = [v3 subdataWithRange:{objc_msgSend(v3, "length") - 2, 2}];
        v11 = [MEMORY[0x1E695DF88] dataWithData:v10];

        v12 = [(NSFileHandle *)self->_fileHandle offsetInFile];
        v4 = v12 - [v10 length];

        v3 = v11;
      }

      v5 = [(NSFileHandle *)self->_fileHandle readDataOfLength:0x2000];
      if (![v5 length])
      {
        goto LABEL_6;
      }
    }

    [(NSFileHandle *)self->_fileHandle seekToFileOffset:v9 + v4 + v7];
    v13 = [v3 subdataWithRange:{v7, v9}];
  }

  else
  {
LABEL_6:
    v13 = 0;
  }

  return v13;
}

- (id)readUntilNextMessageStart
{
  v3 = [MEMORY[0x1E695DF88] data];
  v4 = [(NSFileHandle *)self->_fileHandle offsetInFile];
  v5 = [(NSFileHandle *)self->_fileHandle readDataOfLength:0x2000];
  if ([v5 length])
  {
    while (1)
    {
      [v3 appendData:v5];
      v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&kPCProtobufIOMessageStartSeq length:3];
      v7 = PCFindData(v6, v3);

      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v5 = [(NSFileHandle *)self->_fileHandle readDataOfLength:0x2000];
      if (![v5 length])
      {
        goto LABEL_4;
      }
    }

    v8 = [v3 subdataWithRange:{0, v7}];
    [(NSFileHandle *)self->_fileHandle seekToFileOffset:v7 + v4];
  }

  else
  {
LABEL_4:
    if ([v3 length])
    {
      v8 = [v3 copy];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)readRemainingBytes
{
  v2 = [(NSFileHandle *)self->_fileHandle readDataToEndOfFile];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)unescapeMessage:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF88] data];
  v5 = [v3 bytes];
  v6 = [v3 length];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      if (v8 + 1 < v7 && *(v5 + v8) == 126 && *(v5 + v9) == 93)
      {
        [v4 appendBytes:&kPCProtobufIOUnescapedByte length:1];
        v9 = v8 + 2;
      }

      else
      {
        [v4 appendBytes:v5 + v8 length:1];
      }

      v8 = v9;
    }

    while (v9 < v7);
  }

  return v4;
}

@end