@interface PFAppleArchiveStream
- (AAByteStream_impl)_byteStreamToBeReadByArchiveDecodingStream;
- (AAByteStream_impl)_byteStreamToBeTargetedByArchiveEncodingStream;
- (BOOL)_openForReadingEncryptionStreamWithError:(id *)error;
- (BOOL)_openForWritingCompressionStreamShouldAppend:(BOOL)append error:(id *)error;
- (BOOL)_openForWritingEncryptionStreamWithError:(id *)error;
- (BOOL)_setupEncryptionContextForWritingWithError:(id *)error;
- (BOOL)close:(id *)close;
- (BOOL)openForReading:(id *)reading;
- (BOOL)openForWriting:(id *)writing;
- (PFAppleArchiveStream)init;
- (PFAppleArchiveStream)initWithArchiveURL:(id)l;
- (id)description;
- (unsigned)aaCompressionAlgorithm;
- (void)dealloc;
@end

@implementation PFAppleArchiveStream

- (unsigned)aaCompressionAlgorithm
{
  compression = [(PFAppleArchiveStream *)self compression];
  if (compression > 3)
  {
    return 0;
  }

  else
  {
    return dword_1B36A1F60[compression];
  }
}

- (void)dealloc
{
  encryptionStream = self->_encryptionStream;
  if (encryptionStream)
  {
    AAByteStreamCancel(encryptionStream);
    AAByteStreamClose(self->_encryptionStream);
  }

  compressionStream = self->_compressionStream;
  if (compressionStream)
  {
    AAByteStreamCancel(compressionStream);
    AAByteStreamClose(self->_compressionStream);
  }

  outputStream = self->_outputStream;
  if (outputStream)
  {
    AAByteStreamCancel(outputStream);
    AAByteStreamClose(self->_outputStream);
  }

  inputStream = self->_inputStream;
  if (inputStream)
  {
    AAByteStreamCancel(inputStream);
    AAByteStreamClose(self->_inputStream);
  }

  encryptionContext = self->_encryptionContext;
  if (encryptionContext)
  {
    AEAContextDestroy(encryptionContext);
  }

  v8.receiver = self;
  v8.super_class = PFAppleArchiveStream;
  [(PFAppleArchiveStream *)&v8 dealloc];
}

- (BOOL)close:(id *)close
{
  v28[1] = *MEMORY[0x1E69E9840];
  encryptionStream = self->_encryptionStream;
  if (!encryptionStream)
  {
    goto LABEL_6;
  }

  v6 = AAByteStreamClose(encryptionStream);
  self->_encryptionStream = 0;
  if (close && v6)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = v6;
    v27 = *MEMORY[0x1E696A278];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to close encryption stream"];
    v28[0] = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = v28;
    v12 = &v27;
LABEL_20:
    v19 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
    *close = [v7 errorWithDomain:@"com.apple.PhotosFormats" code:v8 userInfo:v19];

    return 0;
  }

  if (!v6)
  {
LABEL_6:
    compressionStream = self->_compressionStream;
    if (!compressionStream)
    {
      goto LABEL_11;
    }

    v14 = AAByteStreamClose(compressionStream);
    self->_compressionStream = 0;
    if (close && v14)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = v14;
      v25 = *MEMORY[0x1E696A278];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to close compression stream"];
      v26 = v9;
      v10 = MEMORY[0x1E695DF20];
      v11 = &v26;
      v12 = &v25;
      goto LABEL_20;
    }

    if (!v14)
    {
LABEL_11:
      inputStream = self->_inputStream;
      if (!inputStream)
      {
        goto LABEL_16;
      }

      v16 = AAByteStreamClose(inputStream);
      self->_inputStream = 0;
      if (close && v16)
      {
        v7 = MEMORY[0x1E696ABC0];
        v8 = v16;
        v23 = *MEMORY[0x1E696A278];
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to close input stream"];
        v24 = v9;
        v10 = MEMORY[0x1E695DF20];
        v11 = &v24;
        v12 = &v23;
        goto LABEL_20;
      }

      if (!v16)
      {
LABEL_16:
        outputStream = self->_outputStream;
        if (outputStream)
        {
          v18 = AAByteStreamClose(outputStream);
          self->_outputStream = 0;
          if (close && v18)
          {
            v7 = MEMORY[0x1E696ABC0];
            v8 = v18;
            v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to close output stream", *MEMORY[0x1E696A278]];
            v22 = v9;
            v10 = MEMORY[0x1E695DF20];
            v11 = &v22;
            v12 = &v21;
            goto LABEL_20;
          }

          if (v18)
          {
            return 0;
          }
        }

        return 1;
      }
    }
  }

  return 0;
}

- (BOOL)_openForReadingEncryptionStreamWithError:(id *)error
{
  v59[1] = *MEMORY[0x1E69E9840];
  v5 = AEAContextCreateWithEncryptedStream(self->_inputStream);
  self->_encryptionContext = v5;
  if (!v5)
  {
    if (!error)
    {
      return error;
    }

    v14 = MEMORY[0x1E696ABC0];
    v58 = *MEMORY[0x1E696A278];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to get encryption context from input stream"];
    v59[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v17 = 500003;
    goto LABEL_7;
  }

  v6 = v5;
  encryptionKey = [(PFAppleArchiveStream *)self encryptionKey];
  bytes = [encryptionKey bytes];
  encryptionKey2 = [(PFAppleArchiveStream *)self encryptionKey];
  v10 = AEAContextSetFieldBlob(v6, 9u, 0, bytes, [encryptionKey2 length]);

  if (!v10)
  {
    v18 = AEAAuthDataCreateWithContext(self->_encryptionContext);
    if (v18)
    {
      v19 = v18;
      EntryCount = AEAAuthDataGetEntryCount(v18);
      if (EntryCount <= 1)
      {
        if (error)
        {
          v21 = MEMORY[0x1E696ABC0];
          v52 = *MEMORY[0x1E696A278];
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected entry count %u, expected at least %u", EntryCount, 2];
          v53 = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          *error = [v21 errorWithDomain:@"com.apple.PhotosFormats" code:500008 userInfo:v23];
        }

        AEAAuthDataDestroy(v19);
        goto LABEL_13;
      }

      v25 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:EntryCount];
      v26 = 0;
      do
      {
        data_size = 0;
        Entry = AEAAuthDataGetEntry(v19, v26, 0x64uLL, key, 0, 0x64uLL, data, &data_size);
        if (Entry)
        {
          if (error)
          {
            v32 = MEMORY[0x1E696ABC0];
            v48 = *MEMORY[0x1E696A278];
            entry = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to get auth data entry %d: %d", v26, Entry];
            v49 = entry;
            v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
            *error = [v32 errorWithDomain:@"com.apple.PhotosFormats" code:500009 userInfo:v34];
          }

          AEAAuthDataDestroy(v19);
          goto LABEL_27;
        }

        v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:key];
        v29 = objc_alloc(MEMORY[0x1E696AEC0]);
        v30 = [v29 initWithBytes:data length:data_size encoding:4];
        v31 = [v25 objectForKeyedSubscript:v28];
        if (v31 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v43 = v28;
          v44 = 2112;
          v45 = v31;
          v46 = 2112;
          v47 = v30;
          _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Overwriting existing auth data value for key %@: %@/%@", buf, 0x20u);
        }

        [v25 setObject:v30 forKeyedSubscript:v28];

        v26 = (v26 + 1);
      }

      while (EntryCount != v26);
      AEAAuthDataDestroy(v19);
      objc_storeStrong(&self->_encryptedArchiveMetadata, v25);
      v35 = AEADecryptionInputStreamOpen(self->_inputStream, self->_encryptionContext, 0, 0);
      self->_encryptionStream = v35;
      if (v35)
      {
        LOBYTE(error) = 1;
        goto LABEL_30;
      }

      if (error)
      {
        v36 = MEMORY[0x1E696ABC0];
        v40 = *MEMORY[0x1E696A278];
        v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to open decryption input stream"];
        v41 = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        *error = [v36 errorWithDomain:@"com.apple.PhotosFormats" code:500002 userInfo:v38];

LABEL_27:
        LOBYTE(error) = 0;
      }

LABEL_30:

      return error;
    }

    if (!error)
    {
      return error;
    }

    v14 = MEMORY[0x1E696ABC0];
    v54 = *MEMORY[0x1E696A278];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to query auth data from encrypted archive context"];
    v55 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v17 = 500007;
LABEL_7:
    *error = [v14 errorWithDomain:@"com.apple.PhotosFormats" code:v17 userInfo:v16];

    goto LABEL_13;
  }

  if (error)
  {
    v11 = MEMORY[0x1E696ABC0];
    v56 = *MEMORY[0x1E696A278];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to set symmetric key for decryption: %d", v10];
    v57 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    *error = [v11 errorWithDomain:@"com.apple.PhotosFormats" code:500005 userInfo:v13];

LABEL_13:
    LOBYTE(error) = 0;
  }

  return error;
}

- (BOOL)openForReading:(id *)reading
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (self->_inputStream || self->_outputStream)
  {
    _PFAssertFailHandler();
  }

  archiveURL = [(PFAppleArchiveStream *)self archiveURL];
  self->_inputStream = AAFileStreamOpenWithPath([archiveURL fileSystemRepresentation], 0, 0x1A4u);

  if (!self->_inputStream)
  {
    if (reading)
    {
      v8 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A278];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to open input file stream"];
      v18[0] = v9;
      v10 = MEMORY[0x1E695DF20];
      v11 = v18;
      v12 = &v17;
LABEL_10:
      v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
      *reading = [v8 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v13];
    }

    return 0;
  }

  encryptionKey = [(PFAppleArchiveStream *)self encryptionKey];

  if (!encryptionKey)
  {
    if ([(PFAppleArchiveStream *)self compression]== -1)
    {
      return 1;
    }

    v14 = AADecompressionInputStreamOpen(self->_inputStream, 0, 0);
    self->_compressionStream = v14;
    if (v14)
    {
      return 1;
    }

    if (reading)
    {
      v8 = MEMORY[0x1E696ABC0];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to open decompression stream", *MEMORY[0x1E696A278]];
      v16 = v9;
      v10 = MEMORY[0x1E695DF20];
      v11 = &v16;
      v12 = &v15;
      goto LABEL_10;
    }

    return 0;
  }

  return [(PFAppleArchiveStream *)self _openForReadingEncryptionStreamWithError:reading];
}

- (AAByteStream_impl)_byteStreamToBeReadByArchiveDecodingStream
{
  result = self->_encryptionStream;
  if (!result)
  {
    result = self->_compressionStream;
    if (!result)
    {
      return self->_inputStream;
    }
  }

  return result;
}

- (AAByteStream_impl)_byteStreamToBeTargetedByArchiveEncodingStream
{
  result = self->_encryptionStream;
  if (!result)
  {
    result = self->_compressionStream;
    if (!result)
    {
      return self->_outputStream;
    }
  }

  return result;
}

- (BOOL)_openForWritingCompressionStreamShouldAppend:(BOOL)append error:(id *)error
{
  appendCopy = append;
  v26[1] = *MEMORY[0x1E69E9840];
  aaCompressionAlgorithm = [(PFAppleArchiveStream *)self aaCompressionAlgorithm];
  if (!aaCompressionAlgorithm)
  {
    return 1;
  }

  v8 = appendCopy ? AACompressionOutputStreamOpenExisting(self->_outputStream, 0, 0) : AACompressionOutputStreamOpen(self->_outputStream, aaCompressionAlgorithm, [(PFAppleArchiveStream *)self blockSize], 0, 0);
  self->_compressionStream = v8;
  if (v8)
  {
    return 1;
  }

  v10 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A798];
  v12 = *__error();
  v25 = *MEMORY[0x1E696A278];
  v13 = v25;
  v14 = MEMORY[0x1E696AEC0];
  v15 = __error();
  v16 = [v14 stringWithUTF8String:strerror(*v15)];
  v26[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v18 = [v10 errorWithDomain:v11 code:v12 userInfo:v17];

  v19 = MEMORY[0x1E696ABC0];
  v20 = *MEMORY[0x1E696AA08];
  v23[0] = v13;
  v23[1] = v20;
  v24[0] = @"Failed to open compression stream";
  v24[1] = v18;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v22 = [v19 errorWithDomain:@"com.apple.PhotosFormats" code:500300 userInfo:v21];
  if (error)
  {
    v22 = v22;
    *error = v22;
  }

  return 0;
}

- (BOOL)_setupEncryptionContextForWritingWithError:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  if (self->_encryptionContext)
  {
    _PFAssertFailHandler();
  }

  v5 = AEAContextCreateWithProfile(1u);
  self->_encryptionContext = v5;
  if (v5)
  {
    aaCompressionAlgorithm = [(PFAppleArchiveStream *)self aaCompressionAlgorithm];
    if (aaCompressionAlgorithm && (v7 = aaCompressionAlgorithm, v8 = AEAContextSetFieldUInt(self->_encryptionContext, 3u, aaCompressionAlgorithm), v8))
    {
      if (error)
      {
        v9 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A278];
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to set compression algorithm %u: %d", v7, v8];
        v38 = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v12 = 500004;
LABEL_10:
        v18 = v9;
LABEL_13:
        *error = [v18 errorWithDomain:@"com.apple.PhotosFormats" code:v12 userInfo:v11];
      }
    }

    else
    {
      encryptionContext = self->_encryptionContext;
      encryptionKey = [(PFAppleArchiveStream *)self encryptionKey];
      bytes = [encryptionKey bytes];
      encryptionKey2 = [(PFAppleArchiveStream *)self encryptionKey];
      v17 = AEAContextSetFieldBlob(encryptionContext, 9u, 0, bytes, [encryptionKey2 length]);

      if (!v17)
      {
        encryptedArchiveMetadata = [(PFAppleArchiveStream *)self encryptedArchiveMetadata];
        v22 = [encryptedArchiveMetadata count];

        if (v22)
        {
          v23 = AEAAuthDataCreate();
          if (!v23)
          {
            if (!error)
            {
              return 0;
            }

            v9 = MEMORY[0x1E696ABC0];
            v33 = *MEMORY[0x1E696A278];
            v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to create auth data blob"];
            v34 = v10;
            v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            v12 = 500007;
            goto LABEL_10;
          }

          v24 = v23;
          encryptedArchiveMetadata2 = [(PFAppleArchiveStream *)self encryptedArchiveMetadata];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __67__PFAppleArchiveStream__setupEncryptionContextForWritingWithError___block_invoke;
          v30[3] = &__block_descriptor_40_e35_v32__0__NSString_8__NSString_16_B24l;
          v30[4] = v24;
          [encryptedArchiveMetadata2 enumerateKeysAndObjectsUsingBlock:v30];

          v26 = self->_encryptionContext;
          EncodedData = AEAAuthDataGetEncodedData(v24);
          EncodedSize = AEAAuthDataGetEncodedSize(v24);
          v29 = AEAContextSetFieldBlob(v26, 5u, 0, EncodedData, EncodedSize);
          AEAAuthDataDestroy(v24);
          if (v29)
          {
            if (!error)
            {
              return 0;
            }

            v9 = MEMORY[0x1E696ABC0];
            v31 = *MEMORY[0x1E696A278];
            v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to set auth data on encrypted archive context: %d", v29];
            v32 = v10;
            v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            v12 = 500006;
            goto LABEL_10;
          }
        }

        return 1;
      }

      if (error)
      {
        v9 = MEMORY[0x1E696ABC0];
        v35 = *MEMORY[0x1E696A278];
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to set symmetric key for encryption: %d", v17];
        v36 = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v12 = 500005;
        goto LABEL_10;
      }
    }
  }

  else if (error)
  {
    v19 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A278];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Unable to create encryption context"];
    v40[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v18 = v19;
    v12 = 500003;
    goto LABEL_13;
  }

  return 0;
}

uint64_t __67__PFAppleArchiveStream__setupEncryptionContextForWritingWithError___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = a3;
  v8 = [a2 UTF8String];
  v9 = [v7 UTF8String];
  v10 = [v7 lengthOfBytesUsingEncoding:4];

  return AEAAuthDataAppendEntry(v5, v8, v9, v10);
}

- (BOOL)_openForWritingEncryptionStreamWithError:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = [(PFAppleArchiveStream *)self _setupEncryptionContextForWritingWithError:?];
  if (v5)
  {
    v6 = AEAEncryptionOutputStreamOpen(self->_outputStream, self->_encryptionContext, 0, 0);
    self->_encryptionStream = v6;
    if (v6)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      if (error)
      {
        v7 = MEMORY[0x1E696ABC0];
        v11 = *MEMORY[0x1E696A278];
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to open encryption output stream"];
        v12[0] = v8;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
        *error = [v7 errorWithDomain:@"com.apple.PhotosFormats" code:500001 userInfo:v9];
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)openForWriting:(id *)writing
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (self->_inputStream || self->_outputStream)
  {
    _PFAssertFailHandler();
  }

  appendToExistingArchive = [(PFAppleArchiveStream *)self appendToExistingArchive];
  if (appendToExistingArchive)
  {
    v6 = 2561;
  }

  else
  {
    v6 = 1537;
  }

  archiveURL = [(PFAppleArchiveStream *)self archiveURL];
  v8 = open([archiveURL fileSystemRepresentation], v6, 420);

  if ((v8 & 0x80000000) != 0)
  {
    if (!appendToExistingArchive || *__error() != 17 || (-[PFAppleArchiveStream archiveURL](self, "archiveURL"), v13 = objc_claimAutoreleasedReturnValue(), v9 = open([v13 fileSystemRepresentation], 2, 420), v13, v9 < 0))
    {
      if (writing)
      {
        v14 = MEMORY[0x1E696ABC0];
        v22 = *MEMORY[0x1E696A278];
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to open output file stream"];
        v23[0] = v15;
        v16 = MEMORY[0x1E695DF20];
        v17 = v23;
        v18 = &v22;
LABEL_20:
        v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
        *writing = [v14 errorWithDomain:@"com.apple.PhotosFormats" code:8 userInfo:v19];
      }

      return 0;
    }
  }

  else
  {
    v9 = v8;
  }

  v10 = AAFileStreamOpenWithFD(v9, 1);
  self->_outputStream = v10;
  if (!v10)
  {
    if (writing)
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"Failed to open output file stream", *MEMORY[0x1E696A278]];
      v21 = v15;
      v16 = MEMORY[0x1E695DF20];
      v17 = &v21;
      v18 = &v20;
      goto LABEL_20;
    }

    return 0;
  }

  encryptionKey = [(PFAppleArchiveStream *)self encryptionKey];

  if (encryptionKey)
  {

    return [(PFAppleArchiveStream *)self _openForWritingEncryptionStreamWithError:writing];
  }

  else
  {

    return [(PFAppleArchiveStream *)self _openForWritingCompressionStreamShouldAppend:v8 >> 31 error:writing];
  }
}

- (id)description
{
  compression = [(PFAppleArchiveStream *)self compression];
  if ((compression + 1) > 4)
  {
    v4 = @"???";
  }

  else
  {
    v4 = off_1E7B65A08[compression + 1];
  }

  if (self->_inputStream)
  {
    v5 = @"R";
  }

  else if (self->_outputStream)
  {
    v5 = @"W";
  }

  else
  {
    v5 = @"-";
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = v5;
  v8 = objc_opt_class();
  archiveURL = [(PFAppleArchiveStream *)self archiveURL];
  v10 = [v6 stringWithFormat:@"<%@:%p %@ append=%d block_size=%ld compression=%@ open:%@>", v8, self, archiveURL, -[PFAppleArchiveStream appendToExistingArchive](self, "appendToExistingArchive"), -[PFAppleArchiveStream blockSize](self, "blockSize"), v4, v7];

  return v10;
}

- (PFAppleArchiveStream)initWithArchiveURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v6 = lCopy;
    v12.receiver = self;
    v12.super_class = PFAppleArchiveStream;
    v7 = [(PFAppleArchiveStream *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_archiveURL, l);
      v8->_blockSize = 0x100000;
    }

    return v8;
  }

  else
  {
    v10 = _PFAssertFailHandler();
    return [(PFAppleArchiveStream *)v10 init];
  }
}

- (PFAppleArchiveStream)init
{
  v2 = _PFAssertFailHandler();
  [(PFAppleArchive *)v2 dealloc];
  return result;
}

@end