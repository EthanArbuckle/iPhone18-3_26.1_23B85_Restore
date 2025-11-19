@interface _PASCompression
+ (id)_compress:(id)a3 fast:(BOOL)a4 lowMemory:(BOOL)a5;
+ (id)decompress:(id)a3 maxLength:(int64_t)a4;
@end

@implementation _PASCompression

+ (id)decompress:(id)a3 maxLength:(int64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_PASCompression decompress:maxLength:]"];
    [v18 handleFailureInFunction:v19 file:@"_PASCompression.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  if ([v5 length] < 8)
  {
    goto LABEL_20;
  }

  v6 = [v5 bytes];
  v7 = v6 + 1;
  v8 = *v6;
  v9 = [v5 length];
  if ((a4 & 0x8000000000000000) == 0 && v8 >> 2 > a4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v23 = v8 >> 2;
      v24 = 2048;
      v25 = a4;
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
          v20 = [MEMORY[0x1E696AAA8] currentHandler];
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_PASCompression decompress:maxLength:]"];
          [v20 handleFailureInFunction:v21 file:@"_PASCompression.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"compressedLen == hdr.length"}];
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

+ (id)_compress:(id)a3 fast:(BOOL)a4 lowMemory:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (!v7)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_PASCompression _compress:fast:lowMemory:]"];
    [v21 handleFailureInFunction:v22 file:@"_PASCompression.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v8 = [v7 length];
  if (v8 >= 0x3FFFFFFF)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_PASCompression _compress:fast:lowMemory:]"];
    [v23 handleFailureInFunction:v24 file:@"_PASCompression.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"uncompressedLen < 0x3fffffff"}];
  }

  v9 = v8 + 8;
  v10 = malloc_type_malloc(v8 + 8, 0xA92FAF72uLL);
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  if (v5)
  {
    v12 = 2050;
  }

  else
  {
    v12 = 2049;
  }

  if (v6)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 & 0xFFFFFFFF00000003 | (4 * (v8 & 0x3FFFFFFF));
  if (v6)
  {
    v15 = COMPRESSION_LZ4;
  }

  else
  {
    v15 = v12;
  }

  v16 = compression_encode_buffer(v10 + 8, v8, [v7 bytes], v8, 0, v15);
  if (!v16)
  {
    v14 = v14 & 0xFFFFFFFE;
    memcpy(v11 + 1, [v7 bytes], v8);
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