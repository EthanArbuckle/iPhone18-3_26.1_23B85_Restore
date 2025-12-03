@interface PCProtobufWriter
+ (id)convertData:(id)data error:(id *)error;
+ (id)insertEscapeSequenceTo:(id)to;
- (BOOL)closeFile;
- (BOOL)openFileWithName:(id)name append:(BOOL)append error:(id *)error;
- (BOOL)writeRecord:(id)record error:(id *)error;
- (PCProtobufWriter)init;
@end

@implementation PCProtobufWriter

- (PCProtobufWriter)init
{
  v6.receiver = self;
  v6.super_class = PCProtobufWriter;
  v2 = [(PCProtobufWriter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    fileHandle = v2->_fileHandle;
    v2->_fileHandle = 0;
  }

  return v3;
}

- (BOOL)openFileWithName:(id)name append:(BOOL)append error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (self->_fileHandle)
  {
    [(PCProtobufWriter *)self closeFile];
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:nameCopy] & 1) != 0 || (objc_msgSend(defaultManager, "createFileAtPath:contents:attributes:", nameCopy, 0, 0))
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:nameCopy];
    v22 = 0;
    v11 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:v10 error:&v22];
    v12 = v22;
    fileHandle = self->_fileHandle;
    self->_fileHandle = v11;

    v14 = self->_fileHandle;
    v15 = v14 != 0;
    if (v14)
    {
      if (append)
      {
        [(NSFileHandle *)v14 seekToEndOfFile];
      }

      else
      {
        [(NSFileHandle *)v14 truncateFileAtOffset:0];
      }
    }

    else if (error)
    {
      if (v12)
      {
        v16 = v12;
        *error = v12;
      }

      else
      {
        v18 = MEMORY[0x1E696ABC0];
        v23 = *MEMORY[0x1E696A578];
        v24 = @"Failed to open file for writing";
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        *error = [v18 errorWithDomain:@"PCProtobufWriter" code:2 userInfo:v19];
      }
    }

    goto LABEL_17;
  }

  if (error)
  {
    v17 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"Failed to create output file";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    [v17 errorWithDomain:@"PCProtobufWriter" code:1 userInfo:v10];
    *error = v15 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v15 = 0;
LABEL_18:

  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)convertData:(id)data error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy)
  {
    v7 = PCEncodeVarint([dataCopy length]);
    v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithData:v7];
    [v8 appendData:v6];
    bytes = [v6 bytes];
    v10 = [v6 length];
    if (v10)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = *bytes++;
        v12 = (v12 + v13) % 0xFFF1;
        v11 = (v12 + v11) % 0xFFF1;
        --v10;
      }

      while (v10);
      v14 = v12 | (v11 << 16);
    }

    else
    {
      v14 = 1;
    }

    v18 = PCEncodeLittleEndianUInt32(v14);
    [v8 appendData:v18];
    v19 = [objc_opt_class() insertEscapeSequenceTo:v8];
    v20 = MEMORY[0x1E695DF88];
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&kPCProtobufIOMessageStartSeq length:3];
    v17 = [v20 dataWithData:v21];

    [v17 appendData:v19];
  }

  else
  {
    if (error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A578];
      v25[0] = @"Failed to serialize record";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      *error = [v15 errorWithDomain:@"PCProtobufWriter" code:4 userInfo:v16];
    }

    v17 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)insertEscapeSequenceTo:(id)to
{
  toCopy = to;
  bytes = [toCopy bytes];
  v5 = [toCopy length];
  data = [MEMORY[0x1E695DF88] data];
  if (v5)
  {
    v7 = 0;
    do
    {
      v9 = *bytes++;
      v8 = v9;
      v14 = v9;
      if (v7 && (v8 & 0xFFFFFFDF) == 0x5D)
      {
        v13 = 93;
        v10 = [MEMORY[0x1E695DEF0] dataWithBytes:&v13 length:1];
        [data appendData:v10];
      }

      v11 = [MEMORY[0x1E695DEF0] dataWithBytes:&v14 length:1];
      [data appendData:v11];

      v7 = v14 == 126;
      --v5;
    }

    while (v5);
  }

  return data;
}

- (BOOL)writeRecord:(id)record error:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v7 = recordCopy;
  if (self->_fileHandle)
  {
    data = [recordCopy data];
    v9 = data;
    v10 = data != 0;
    if (data)
    {
      bytes = [data bytes];
      v12 = [v9 length];
      v36 = v10;
      if (v12)
      {
        v13 = 0;
        v14 = 1;
        do
        {
          v15 = *bytes++;
          v14 = (v14 + v15) % 0xFFF1;
          v13 = (v14 + v13) % 0xFFF1;
          --v12;
        }

        while (v12);
        v16 = v14 | (v13 << 16);
      }

      else
      {
        v16 = 1;
      }

      v19 = PCEncodeLittleEndianUInt32(v16);
      v35 = PCEncodeVarint([v9 length]);
      v20 = [MEMORY[0x1E695DF88] dataWithData:?];
      [v20 appendData:v9];
      [v20 appendData:v19];
      fileHandle = self->_fileHandle;
      v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&kPCProtobufIOMessageStartSeq length:3];
      [(NSFileHandle *)fileHandle writeData:v22];

      bytes2 = [v20 bytes];
      v24 = [v20 length];
      if (v24)
      {
        v25 = v24;
        v26 = 0;
        do
        {
          v28 = *bytes2++;
          v27 = v28;
          v38 = v28;
          if (v26 && (v27 & 0xFFFFFFDF) == 0x5D)
          {
            v37 = 93;
            v29 = self->_fileHandle;
            v30 = [MEMORY[0x1E695DEF0] dataWithBytes:&v37 length:1];
            [(NSFileHandle *)v29 writeData:v30];
          }

          v31 = self->_fileHandle;
          v32 = [MEMORY[0x1E695DEF0] dataWithBytes:&v38 length:1];
          [(NSFileHandle *)v31 writeData:v32];

          v26 = v38 == 126;
          --v25;
        }

        while (v25);
      }

      v10 = v36;
    }

    else
    {
      if (!error)
      {
        v9 = 0;
        v10 = 0;
        goto LABEL_20;
      }

      v18 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A578];
      v40 = @"Failed to serialize record";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      *error = [v18 errorWithDomain:@"PCProtobufWriter" code:4 userInfo:v19];
    }
  }

  else
  {
    if (!error)
    {
      v10 = 0;
      goto LABEL_21;
    }

    v17 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v42[0] = @"File not open";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    [v17 errorWithDomain:@"PCProtobufWriter" code:3 userInfo:v9];
    *error = v10 = 0;
  }

LABEL_20:

LABEL_21:
  v33 = *MEMORY[0x1E69E9840];
  return v10;
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

@end