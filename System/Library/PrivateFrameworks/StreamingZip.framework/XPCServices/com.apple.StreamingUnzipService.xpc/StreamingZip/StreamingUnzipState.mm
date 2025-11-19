@interface StreamingUnzipState
+ (id)unzipStateWithPath:(id)a3 options:(id)a4 error:(id *)a5;
- ($C22611018BC199C49300C24FA2540CE8)hashContext;
- (BOOL)resolveOwnershipWithExtraField:(id *)a3 outUID:(unsigned int *)a4 outGID:(unsigned int *)a5;
- (id)checkLastChunkPartialHash;
- (id)finishStream;
- (id)serializeState;
- (id)updateHashFromOffset:(unint64_t)a3 withBytes:(const void *)a4 length:(unint64_t)a5 onlyFinishCurrentChunk:(BOOL)a6;
- (void)clearSavedState;
- (void)dealloc;
- (void)setStreamState:(unsigned __int8)a3;
@end

@implementation StreamingUnzipState

- ($C22611018BC199C49300C24FA2540CE8)hashContext
{
  v3 = *self[1].var1.var5.wbuf;
  *&retstr->var1.var5.wbuf[9] = *&self[1].var1.var5.hash[6];
  *&retstr->var1.var5.wbuf[11] = v3;
  *&retstr->var1.var5.wbuf[13] = *&self[1].var1.var5.wbuf[2];
  retstr->var1.var4.wbuf[15] = self[1].var1.var4.wbuf[4];
  v4 = *self[1].var1.var5.hash;
  *&retstr->var1.var5.wbuf[1] = *&self[1].var1.var0.A;
  *&retstr->var1.var5.wbuf[3] = v4;
  v5 = *&self[1].var1.var5.hash[4];
  *&retstr->var1.var5.wbuf[5] = *&self[1].var1.var5.hash[2];
  *&retstr->var1.var5.wbuf[7] = v5;
  v6 = *&self->var1.var5.wbuf[11];
  *&retstr->var1.var5.hash[1] = *&self->var1.var5.wbuf[9];
  *&retstr->var1.var5.hash[3] = v6;
  v7 = *&self->var1.var5.wbuf[15];
  *&retstr->var1.var5.hash[5] = *&self->var1.var5.wbuf[13];
  *&retstr->var1.var5.hash[7] = v7;
  v8 = *&self->var1.var5.wbuf[7];
  *&retstr->var0 = *&self->var1.var5.wbuf[5];
  *&retstr->var1.var5.count[1] = v8;
  return self;
}

- (BOOL)resolveOwnershipWithExtraField:(id *)a3 outUID:(unsigned int *)a4 outGID:(unsigned int *)a5
{
  if (a3 && a3->var1.var0 >= 0xCu)
  {
    var0 = a3->var4.var0;
    v9 = a3->var5.var0;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 0xFFFFFFFFLL;
    var0 = -1;
  }

  v11 = [(StreamingUnzipState *)self overrideUID];
  v12 = [(StreamingUnzipState *)self overrideGID];
  v13 = v12;
  if (v11)
  {
    var0 = [v11 unsignedIntValue];
    if (!v13)
    {
      goto LABEL_10;
    }

LABEL_9:
    v9 = [v13 unsignedIntValue];
    goto LABEL_10;
  }

  if (v12)
  {
    goto LABEL_9;
  }

  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_10:
  v14 = [(StreamingUnzipState *)self cachedGIDs];
  v15 = getuid();
  if (v15)
  {
    if (var0 != -1 && v15 != var0)
    {
      goto LABEL_13;
    }

    if (v9 == -1)
    {
      v18 = 0;
    }

    else
    {
      v17 = [NSNumber numberWithUnsignedInt:v9];
      v18 = v17;
      if (v14 && v17 && ![v14 containsObject:v17])
      {

LABEL_13:
LABEL_14:
        v16 = 0;
        goto LABEL_32;
      }
    }
  }

  if (a4)
  {
    if (getuid())
    {
      v19 = -1;
    }

    else
    {
      v19 = var0;
    }

    *a4 = v19;
  }

  if (a5)
  {
    *a5 = v9;
  }

  v16 = 1;
LABEL_32:

  return v16;
}

- (id)finishStream
{
  [(StreamingUnzipState *)self clearSavedState];
  if (self->_streamState - 5 >= 3)
  {
    v4 = sub_100001194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v8 = 138412290;
      *&v8[4] = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Finishing an incomplete stream! This stream will not be resumable. : %@", v8, 0xCu);
    }

    v3 = sub_10000151C("[StreamingUnzipState finishStream]", 537, @"SZExtractorErrorDomain", 3, 0, 0, @"Finishing an incomplete stream! This stream will not be resumable.", v5, *v8);
    goto LABEL_7;
  }

  if (self->_bytesHashedInChunk)
  {
    v3 = sub_100011C60(self, self->_currentOffset);
LABEL_7:
    v6 = v3;
    goto LABEL_8;
  }

  v6 = 0;
LABEL_8:
  [(StreamingUnzipState *)self setStreamState:7];

  return v6;
}

- (id)updateHashFromOffset:(unint64_t)a3 withBytes:(const void *)a4 length:(unint64_t)a5 onlyFinishCurrentChunk:(BOOL)a6
{
  hashes = self->_hashes;
  if (hashes)
  {
    hashes = [hashes count];
    if (hashes)
    {
      if (self->_hashedChunkSize || [(NSArray *)self->_hashes count]< 2)
      {
        if (a5)
        {
          while (1)
          {
            hashedChunkSize = self->_hashedChunkSize;
            v16 = a5;
            if (hashedChunkSize && ((bytesHashedInChunk = self->_bytesHashedInChunk, a5 >= hashedChunkSize - bytesHashedInChunk) ? (v16 = hashedChunkSize - bytesHashedInChunk) : (v16 = a5), !v16))
            {
              self->_bytesHashedInChunk = bytesHashedInChunk;
            }

            else
            {
              v18 = v16;
              do
              {
                if (v18 >= 0xFFFFFFFF)
                {
                  v19 = 0xFFFFFFFFLL;
                }

                else
                {
                  v19 = v18;
                }

                hashType = self->_hashContext.hashType;
                if (hashType > 4)
                {
                  switch(hashType)
                  {
                    case 5:
                      CC_SHA256_Update(&self->_hashContext.context, a4, v19);
                      break;
                    case 6:
                      CC_SHA384_Update(&self->_hashContext.context, a4, v19);
                      break;
                    case 7:
                      CC_SHA512_Update(&self->_hashContext.context, a4, v19);
                      break;
                  }
                }

                else if (hashType)
                {
                  if (hashType == 1)
                  {
                    CC_SHA1_Update(&self->_hashContext.context, a4, v19);
                  }

                  else if (hashType == 4)
                  {
                    CC_SHA224_Update(&self->_hashContext.context, a4, v19);
                  }
                }

                else
                {
                  CC_MD5_Update(&self->_hashContext.context.md5, a4, v19);
                }

                v18 -= v19;
              }

              while (v18);
              hashedChunkSize = self->_hashedChunkSize;
              bytesHashedInChunk = self->_bytesHashedInChunk + v16;
              self->_bytesHashedInChunk = bytesHashedInChunk;
              if (!hashedChunkSize)
              {
                break;
              }

              a4 = a4 + v16;
              a5 -= v16;
              a3 += v16;
            }

            if (bytesHashedInChunk > hashedChunkSize)
            {
              __assert_rtn("[StreamingUnzipState updateHashFromOffset:withBytes:length:onlyFinishCurrentChunk:]", "StreamingUnzipState.m", 503, "_bytesHashedInChunk <= _hashedChunkSize");
            }

            if (bytesHashedInChunk == hashedChunkSize)
            {
              hashes = sub_100011C60(self, a3 - hashedChunkSize);
              if (hashes)
              {
                goto LABEL_43;
              }

              sub_1000016BC(&self->_hashContext, self->_hashContext.hashType);
              hashes = 0;
              self->_bytesHashedInChunk = 0;
              if (a6 || !a5)
              {
                goto LABEL_43;
              }
            }

            else if (!a5)
            {
              break;
            }
          }
        }

        hashes = 0;
      }

      else
      {
        v12 = sub_100001194();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v22 = self->_hashedChunkSize;
          v23 = [(NSArray *)self->_hashes count];
          *buf = 134218498;
          v25 = v22;
          v26 = 2048;
          v27 = v23;
          v28 = 2112;
          v29 = 0;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Ambiguous or missing hash chunk size: chunk size is %llu but have %lu hashes : %@", buf, 0x20u);
        }

        v13 = self->_hashedChunkSize;
        [(NSArray *)self->_hashes count];
        hashes = sub_10000151C("[StreamingUnzipState updateHashFromOffset:withBytes:length:onlyFinishCurrentChunk:]", 477, @"SZExtractorErrorDomain", 4, 0, 0, @"Ambiguous or missing hash chunk size: chunk size is %llu but have %lu hashes", v14, v13);
      }
    }
  }

LABEL_43:

  return hashes;
}

- (id)checkLastChunkPartialHash
{
  v3 = qword_10001A638[self->_hashContext.hashType];
  v4 = *&self->_hashContext.context.sha512.wbuf[11];
  v20[10] = *&self->_hashContext.context.sha512.wbuf[9];
  v20[11] = v4;
  v20[12] = *&self->_hashContext.context.sha512.wbuf[13];
  v21 = self->_hashContext.context.sha384.wbuf[15];
  v5 = *&self->_hashContext.context.sha512.wbuf[3];
  v20[6] = *&self->_hashContext.context.sha512.wbuf[1];
  v20[7] = v5;
  v6 = *&self->_hashContext.context.sha512.wbuf[7];
  v20[8] = *&self->_hashContext.context.sha512.wbuf[5];
  v20[9] = v6;
  v7 = *&self->_hashContext.context.sha512.hash[3];
  v20[2] = *&self->_hashContext.context.sha512.hash[1];
  v20[3] = v7;
  v8 = *&self->_hashContext.context.sha512.hash[7];
  v20[4] = *&self->_hashContext.context.sha512.hash[5];
  v20[5] = v8;
  v9 = *&self->_hashContext.context.sha512.count[1];
  v20[0] = *&self->_hashContext.hashType;
  v20[1] = v9;
  sub_100001764(v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v10 = sub_10000A350(v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v11 = [v10 caseInsensitiveCompare:self->_lastChunkPartialHash];
  v12 = sub_100001194();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      lastChunkPartialHash = self->_lastChunkPartialHash;
      *buf = 138412802;
      v25 = lastChunkPartialHash;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Hash mismatch for last partial chunk: expected %@, got %@ : %@", buf, 0x20u);
    }

    v22 = @"SZExtractorFileOffsetErrorKey";
    v14 = [NSNumber numberWithUnsignedLongLong:self->_currentOffset];
    v23 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17 = sub_10000151C("[StreamingUnzipState checkLastChunkPartialHash]", 460, @"SZExtractorErrorDomain", 2, 0, v15, @"Hash mismatch for last partial chunk: expected %@, got %@", v16, self->_lastChunkPartialHash);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Verified that last chunk partial hash matches: %@", buf, 0xCu);
    }

    v17 = 0;
    self->_bytesHashedInChunk = 0;
  }

  return v17;
}

- (id)serializeState
{
  if (!self->_currentOffset)
  {
    v2 = 0;
    goto LABEL_62;
  }

  fileWriter = self->_fileWriter;
  if (!fileWriter)
  {
    v5 = 0;
LABEL_7:
    if (self->_streamState == 5)
    {
      hashes = self->_hashes;
      if (hashes && [(NSArray *)hashes count])
      {
        v8 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
        [v8 setOutputFormat:200];
        [v8 encodeInt:8 forKey:@"SerializationVersion"];
        [v8 encodeBytes:&self->_hashContext.context length:qword_10001A5F8[self->_hashContext.hashType] forKey:@"HashContext"];
        if (v5)
        {
          [v8 encodeObject:v5 forKey:@"FileWriterData"];
        }

        [v8 encodeBool:self->_useFilesystemCompression forKey:@"WasUsingFSCompression"];
        v9 = [v8 encodedData];

        if (!v9)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = objc_opt_new();
        if (!v9)
        {
LABEL_13:
          v10 = sub_100001194();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            unzipPath = self->_unzipPath;
            *buf = 138412546;
            v76 = unzipPath;
            v77 = 2112;
            v78 = 0;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create archive for passthrough EA on path %@ : %@", buf, 0x16u);
          }

          v11 = self->_unzipPath;
          v83 = NSFilePathErrorKey;
          v84 = v11;
          v12 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          sub_10000151C("[StreamingUnzipState serializeState]", 331, @"SZExtractorErrorDomain", 1, 0, v12, @"Failed to create archive for passthrough EA on path %@", v13, self->_unzipPath);
          v2 = LABEL_46:;

LABEL_60:
          goto LABEL_61;
        }
      }

      if (setxattr(-[NSString fileSystemRepresentation](self->_unzipPath, "fileSystemRepresentation"), "com.apple.StreamingPassthroughResumptionData", [v9 bytes], objc_msgSend(v9, "length"), 0, 1))
      {
        v40 = *__error();
        v41 = sub_100001194();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v54 = self->_unzipPath;
          v55 = strerror(v40);
          *buf = 136315906;
          v76 = "com.apple.StreamingPassthroughResumptionData";
          v77 = 2112;
          v78 = v54;
          v79 = 2080;
          v80 = v55;
          v81 = 2112;
          v82 = 0;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Failed to set passthrough EA %s on path %@: %s : %@", buf, 0x2Au);
        }

        v42 = self->_unzipPath;
        v73 = NSFilePathErrorKey;
        v74 = v42;
        v12 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v61 = self->_unzipPath;
        strerror(v40);
        sub_10000151C("[StreamingUnzipState serializeState]", 336, NSPOSIXErrorDomain, v40, 0, v12, @"Failed to set passthrough EA %s on path %@: %s", v43, "com.apple.StreamingPassthroughResumptionData");
        goto LABEL_46;
      }

      goto LABEL_51;
    }

    v9 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v9 setOutputFormat:200];
    [v9 encodeInt:8 forKey:@"SerializationVersion"];
    v14 = self->_hashes;
    if (v14 && [(NSArray *)v14 count])
    {
      [v9 encodeBytes:&self->_hashContext.context length:qword_10001A5F8[self->_hashContext.hashType] forKey:@"HashContext"];
    }

    [v9 encodeObject:self->_streamInfoDict forKey:@"StreamInfoDict"];
    [v9 encodeObject:self->_lastChunkPartialHash forKey:@"LastChunkPartialHash"];
    [v9 encodeObject:self->_unsureData forKey:@"UnsureData"];
    [v9 encodeObject:self->_inMemoryFileData forKey:@"InMemoryFileData"];
    v15 = [(NSMutableSet *)self->_appleDoublePaths allObjects];
    [v9 encodeObject:v15 forKey:@"AppleDoublePaths"];

    currentLFRecord = self->_currentLFRecord;
    if (currentLFRecord)
    {
      if (HIWORD(currentLFRecord->var7.var0) + currentLFRecord->var8.var0 + 30 >= self->_currentLFRecordAllocationSize)
      {
        currentLFRecordAllocationSize = self->_currentLFRecordAllocationSize;
      }

      else
      {
        currentLFRecordAllocationSize = HIWORD(currentLFRecord->var7.var0) + currentLFRecord->var8.var0 + 30;
      }

      [v9 encodeBytes:currentLFRecord length:currentLFRecordAllocationSize forKey:@"LocalFileRecord"];
    }

    v18 = [NSNumber numberWithUnsignedLongLong:self->_thisStageBytesComplete];
    [v9 encodeObject:v18 forKey:@"StageBytesComplete"];

    v19 = [NSNumber numberWithUnsignedLongLong:self->_currentOffset];
    [v9 encodeObject:v19 forKey:@"CurrentOffset"];

    v20 = self->_fileWriter;
    if (!v20)
    {
      goto LABEL_28;
    }

    v63 = 0;
    v21 = [(StreamingFileWriter *)v20 currentOffsetWithError:&v63];
    v22 = v63;
    v23 = v22;
    if (v21 == -1)
    {
      v44 = sub_100001194();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v76 = v23;
        _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Unable to get current output offset from current output file : %@", buf, 0xCu);
      }

      v71 = NSFilePathErrorKey;
      v45 = [(StreamingFileWriter *)self->_fileWriter path];
      v72 = v45;
      v47 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v48 = @"Unable to get current output offset from current output file";
      v49 = 365;
    }

    else
    {
      if (v21 == self->_uncompressedBytesOutput)
      {

LABEL_28:
        v24 = [NSNumber numberWithUnsignedLongLong:self->_uncompressedBytesOutput];
        [v9 encodeObject:v24 forKey:@"CurrentOutputFileOffset"];

        v25 = [NSNumber numberWithUnsignedLongLong:self->_totalFileSizeWritten];
        [v9 encodeObject:v25 forKey:@"TotalFileSizeWritten"];

        v26 = [NSNumber numberWithUnsignedLong:self->_currentCRC32];
        [v9 encodeObject:v26 forKey:@"CurrentCRC32"];

        state = self->_cmpState.state;
        if (state)
        {
          v28 = [NSData dataWithBytesNoCopy:state length:compression_stream_get_state_size() freeWhenDone:0];
          [v9 encodeObject:v28 forKey:@"SerializedCompressionState"];
        }

        [v9 encodeBool:self->_fileWriter != 0 forKey:@"OpenCurrentOutputFile"];
        v29 = [NSNumber numberWithUnsignedLongLong:self->_recordsProcessed];
        [v9 encodeObject:v29 forKey:@"RecordsProcessed"];

        v30 = [NSNumber numberWithUnsignedShort:self->_currentLFMode];
        [v9 encodeObject:v30 forKey:@"LocalFileMode"];

        v31 = [NSNumber numberWithUnsignedChar:self->_streamState];
        [v9 encodeObject:v31 forKey:@"StreamState"];

        [v9 encodeBool:self->_storeCurrentFileInMemory forKey:@"StoreCurrentFileInMemory"];
        if (v5)
        {
          [v9 encodeObject:v5 forKey:@"FileWriterData"];
        }

        [v9 encodeBool:self->_useFilesystemCompression forKey:@"WasUsingFSCompression"];
        [v9 encodeBool:self->_expectAppleDoubleFiles forKey:@"ExpectAppleDoubleFiles"];
        v32 = [v9 encodedData];
        v23 = [(NSString *)self->_unzipPath stringByAppendingPathComponent:@"com.apple.StreamingUnzipResumptionData"];
        v33 = sub_100001194();
        v34 = v33;
        if (v32)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            v57 = [v32 length];
            currentOffset = self->_currentOffset;
            *buf = 134218240;
            v76 = v57;
            v77 = 2048;
            v78 = currentOffset;
            _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "Serializing %lu bytes of resumption data for offset %llu", buf, 0x16u);
          }

          v62 = 0;
          v35 = [v32 writeToFile:v23 options:1 error:&v62];
          v36 = v62;
          if ((v35 & 1) == 0)
          {
            v37 = sub_100001194();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v76 = v23;
              v77 = 2112;
              v78 = v36;
              v79 = 2112;
              v80 = v36;
              _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to save resumption data to path %@: %@ : %@", buf, 0x20u);
            }

            v65 = NSFilePathErrorKey;
            v66 = v23;
            v38 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
            v2 = sub_10000151C("[StreamingUnzipState serializeState]", 400, @"SZExtractorErrorDomain", 1, v36, v38, @"Failed to save resumption data to path %@: %@", v39, v23);
          }

          if (!v35)
          {
            goto LABEL_61;
          }

LABEL_51:
          v2 = 0;
          goto LABEL_61;
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v76 = v23;
          v77 = 2112;
          v78 = 0;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to create archive for resumption data to path %@ : %@", buf, 0x16u);
        }

        v67 = NSFilePathErrorKey;
        v68 = v23;
        v50 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v2 = sub_10000151C("[StreamingUnzipState serializeState]", 393, @"SZExtractorErrorDomain", 1, 0, v50, @"Failed to create archive for resumption data to path %@", v51, v23);

LABEL_59:
        goto LABEL_60;
      }

      v52 = sub_100001194();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        uncompressedBytesOutput = self->_uncompressedBytesOutput;
        *buf = 134218498;
        v76 = uncompressedBytesOutput;
        v77 = 2048;
        v78 = v21;
        v79 = 2112;
        v80 = v23;
        _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Mismatch between uncompressed bytes output (%llu) and output file offset (%lld) : %@", buf, 0x20u);
      }

      v69 = NSFilePathErrorKey;
      v45 = [(StreamingFileWriter *)self->_fileWriter path];
      v70 = v45;
      v47 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v60 = self->_uncompressedBytesOutput;
      v48 = @"Mismatch between uncompressed bytes output (%llu) and output file offset (%lld)";
      v49 = 367;
    }

    v2 = sub_10000151C("[StreamingUnzipState serializeState]", v49, @"SZExtractorErrorDomain", 1, v23, v47, v48, v46, v60);

    goto LABEL_59;
  }

  v64 = 0;
  v5 = [(StreamingFileWriter *)fileWriter suspendWithError:&v64];
  v6 = v64;
  v2 = v6;
  if (v5)
  {

    goto LABEL_7;
  }

LABEL_61:

LABEL_62:

  return v2;
}

- (void)clearSavedState
{
  if (!stat([(NSString *)self->_unzipPath fileSystemRepresentation:0], &v5))
  {
    unzipPath = self->_unzipPath;
    if ((v5.st_mode & 0xF000) == 0x4000)
    {
      v4 = [(NSString *)unzipPath stringByAppendingPathComponent:@"com.apple.StreamingUnzipResumptionData"];
      unlink([v4 fileSystemRepresentation]);
    }

    else
    {
      removexattr([(NSString *)unzipPath fileSystemRepresentation], "com.apple.StreamingPassthroughResumptionData", 1);
    }
  }
}

- (void)setStreamState:(unsigned __int8)a3
{
  v3 = a3;
  self->_thisStageBytesComplete = 0;
  v5 = sub_100001194();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    streamState = self->_streamState;
    if (streamState > 8)
    {
      v17 = @"Unknown";
    }

    else
    {
      v17 = off_100028790[streamState];
    }

    if (v3 > 8)
    {
      v18 = @"Unknown";
    }

    else
    {
      v18 = off_100028790[v3];
    }

    v19 = 138412546;
    v20 = v17;
    v21 = 2112;
    v22 = v18;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Updating stream state from %@ to %@", &v19, 0x16u);
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_29;
        }

        fileWriter = self->_fileWriter;
        if (fileWriter)
        {
          [(StreamingFileWriter *)fileWriter closeOutputFDWithError:0];
          v10 = self->_fileWriter;
          self->_fileWriter = 0;
        }
      }

      free(self->_currentLFRecord);
      self->_currentLFRecord = 0;
      goto LABEL_29;
    }

    if (v3 == 4)
    {
      if (self->_streamState - 1 >= 3)
      {
        __assert_rtn("[StreamingUnzipState setStreamState:]", "StreamingUnzipState.m", 226, "kStreamStateIncompleteDataDescriptor == _streamState|| kStreamStateIncompleteLFData == _streamState || kStreamStateIncompleteLFRecord == _streamState");
      }
    }

    else
    {
      streamInfoDict = self->_streamInfoDict;
      self->_streamInfoDict = 0;

      unsureData = self->_unsureData;
      self->_unsureData = 0;

      inMemoryFileData = self->_inMemoryFileData;
      self->_inMemoryFileData = 0;

      free(self->_currentLFRecord);
      self->_currentLFRecord = 0;
      self->_thisStageBytesComplete = 0;
      self->_currentCRC32 = 0;
      self->_currentLFMode = 0;
      self->_recordsProcessed = 0;
      self->_totalRecordCount = 0;
    }
  }

  else if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (self->_streamState != 1)
      {
        __assert_rtn("[StreamingUnzipState setStreamState:]", "StreamingUnzipState.m", 218, "kStreamStateIncompleteLFRecord == _streamState");
      }
    }

    else if (self->_streamState != 2)
    {
      __assert_rtn("[StreamingUnzipState setStreamState:]", "StreamingUnzipState.m", 222, "kStreamStateIncompleteLFData == _streamState");
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      if (self->_streamState)
      {
        __assert_rtn("[StreamingUnzipState setStreamState:]", "StreamingUnzipState.m", 213, "kStreamStateReadNextRecordSignature == _streamState");
      }

      self->_thisStageBytesComplete = 4;
    }
  }

  else
  {
    v11 = self->_streamState;
    if (v11 != 1 && v11 != 4)
    {
      __assert_rtn("[StreamingUnzipState setStreamState:]", "StreamingUnzipState.m", 193, "kStreamStateCompleteLFData == _streamState || kStreamStateIncompleteLFRecord == _streamState");
    }

    self->_currentCRC32 = 0;
    self->_uncompressedBytesOutput = 0;
    v12 = self->_fileWriter;
    if (v12)
    {
      [(StreamingFileWriter *)v12 closeOutputFDWithError:0];
      v13 = self->_fileWriter;
      self->_fileWriter = 0;
    }

    dataDescriptor = self->_dataDescriptor;
    if (dataDescriptor)
    {
      *dataDescriptor->var0 = 0;
      *&dataDescriptor->var1.var0.var0.var0 = 0;
      dataDescriptor->var1.var0.var1.var0 = 0;
    }

    currentLFRecord = self->_currentLFRecord;
    *currentLFRecord->var0 = 0;
    *&currentLFRecord->var3.var0 = 0;
    *(&currentLFRecord->var6.var0 + 2) = 0;
    *&currentLFRecord->var5.var0 = 0;
    *&self->_storeCurrentFileInMemory = 0;
    [(NSMutableData *)self->_inMemoryFileData setLength:0];
    self->_currentLFMode = 0;
    ++self->_recordsProcessed;
  }

LABEL_29:
  self->_streamState = v3;
  [(StreamingUnzipState *)self markResumptionPoint];
}

- (void)dealloc
{
  fileWriter = self->_fileWriter;
  if (fileWriter)
  {
    [(StreamingFileWriter *)fileWriter closeOutputFDWithError:0];
    v4 = self->_fileWriter;
    self->_fileWriter = 0;
  }

  free(self->_dataDescriptor);
  free(self->_currentLFRecord);
  compression_stream_destroy(&self->_cmpState);
  v5.receiver = self;
  v5.super_class = StreamingUnzipState;
  [(StreamingUnzipState *)&v5 dealloc];
}

+ (id)unzipStateWithPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = sub_1000136E0([StreamingUnzipState alloc], v7, v8, 0);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v16 = 0;
    v11 = sub_100015D64(v7, &v16);
    v10 = v16;
    if (v11)
    {
      v15 = v10;
      v9 = sub_1000136E0([StreamingUnzipState alloc], v7, v8, &v15);
      v12 = v15;

      v10 = v12;
    }

    if (a5 && !v9)
    {
      v13 = v10;
      *a5 = v10;
    }
  }

  return v9;
}

@end