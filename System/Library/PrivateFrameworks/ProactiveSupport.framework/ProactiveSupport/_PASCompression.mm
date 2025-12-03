@interface _PASCompression
+ (id)_compress:(id)_compress fast:(BOOL)fast lowMemory:(BOOL)memory;
+ (id)decompress:(id)decompress maxLength:(int64_t)length;
@end

@implementation _PASCompression

+ (id)decompress:(id)decompress maxLength:(int64_t)length
{
  v26 = *MEMORY[0x1E69E9840];
  decompressCopy = decompress;
  if (!decompressCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_PASCompression decompress:maxLength:]"];
    [currentHandler handleFailureInFunction:v19 file:@"_PASCompression.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  if ([decompressCopy length] < 8)
  {
    goto LABEL_20;
  }

  bytes = [decompressCopy bytes];
  v7 = bytes + 1;
  v8 = *bytes;
  v9 = [decompressCopy length];
  if ((length & 0x8000000000000000) == 0 && v8 >> 2 > length)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v23 = v8 >> 2;
      v24 = 2048;
      lengthCopy = length;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Decompressed data size %u greater than limit %li", buf, 0x12u);
    }

    goto LABEL_20;
  }

  v10 = v9 - 8;
  if (HIDWORD(v8) == adler32(0xFFFFFFFFFFFFFFFFLL, v7, v9 - 8))
  {
    v11 = v8 >> 2;
    v12 = malloc_type_malloc(v11, 0xDE388F65uLL);
    if (v12)
    {
      v13 = v12;
      if ((v8 & 1) == 0)
      {
        if (v10 != v11)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_PASCompression decompress:maxLength:]"];
          [currentHandler2 handleFailureInFunction:v21 file:@"_PASCompression.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"compressedLen == hdr.length"}];
        }

        memcpy(v13, v7, v10);
        goto LABEL_18;
      }

      if ((v8 & 2) != 0)
      {
        v14 = COMPRESSION_LZ4;
      }

      else
      {
        v14 = COMPRESSION_LZFSE;
      }

      if (compression_decode_buffer(v12, v8 >> 2, v7, v10, 0, v14) == v11)
      {
LABEL_18:
        v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v13 length:v11 freeWhenDone:1];
        goto LABEL_21;
      }

      free(v13);
    }
  }

LABEL_20:
  v15 = 0;
LABEL_21:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)_compress:(id)_compress fast:(BOOL)fast lowMemory:(BOOL)memory
{
  memoryCopy = memory;
  fastCopy = fast;
  _compressCopy = _compress;
  if (!_compressCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_PASCompression _compress:fast:lowMemory:]"];
    [currentHandler handleFailureInFunction:v22 file:@"_PASCompression.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v8 = [_compressCopy length];
  if (v8 >= 0x3FFFFFFF)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_PASCompression _compress:fast:lowMemory:]"];
    [currentHandler2 handleFailureInFunction:v24 file:@"_PASCompression.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"uncompressedLen < 0x3fffffff"}];
  }

  v9 = v8 + 8;
  v10 = malloc_type_malloc(v8 + 8, 0xA92FAF72uLL);
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  if (memoryCopy)
  {
    v12 = 2050;
  }

  else
  {
    v12 = 2049;
  }

  if (fastCopy)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 & 0xFFFFFFFF00000003 | (4 * (v8 & 0x3FFFFFFF));
  if (fastCopy)
  {
    v15 = COMPRESSION_LZ4;
  }

  else
  {
    v15 = v12;
  }

  v16 = compression_encode_buffer(v10 + 8, v8, [_compressCopy bytes], v8, 0, v15);
  if (!v16)
  {
    v14 = v14 & 0xFFFFFFFE;
    memcpy(v11 + 1, [_compressCopy bytes], v8);
    goto LABEL_20;
  }

  v17 = v16;
  v9 = v16 + 8;
  v18 = reallocf(v11, v16 + 8);
  if (!v18)
  {
LABEL_18:
    v19 = 0;
    goto LABEL_21;
  }

  v11 = v18;
  LODWORD(v8) = v17;
LABEL_20:
  *v11 = v14 | (adler32(0xFFFFFFFFFFFFFFFFLL, v11 + 8, v8) << 32);
  v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v11 length:v9 freeWhenDone:1];
LABEL_21:

  return v19;
}

@end