@interface NSData(SafariCoreExtras)
+ (id)safari_dataWithHexString:()SafariCoreExtras;
- (BOOL)safari_dataAppearsToBeCompressed;
- (id)safari_SHA1Hash;
- (id)safari_dataByAppendingData:()SafariCoreExtras;
- (id)safari_dataByCompressingData;
- (id)safari_dataByDecompressingData;
- (id)safari_descriptionWithoutSpaces;
- (id)safari_scryptHashWithSalt:()SafariCoreExtras N:r:p:keyLength:;
- (uint64_t)safari_hashMD5;
@end

@implementation NSData(SafariCoreExtras)

- (id)safari_dataByCompressingData
{
  if ([a1 length])
  {
    v7.avail_in = [a1 length];
    v2 = 0;
    if (!deflateInit_(&v7, 9, "1.2.12", 112))
    {
      v3 = [MEMORY[0x1E695DF88] dataWithLength:{deflateBound(&v7, objc_msgSend(a1, "length"))}];
      v7.next_out = [v3 mutableBytes];
      v7.avail_out = [v3 length];
      v4 = deflate(&v7, 4);
      deflateEnd(&v7);
      if (v4 == 1)
      {
        v5 = [v3 length];
        [v3 setLength:v5 - v7.avail_out];
        v2 = v3;
      }

      else
      {
        v2 = 0;
      }
    }
  }

  else
  {
    v2 = [MEMORY[0x1E695DEF0] data];
  }

  return v2;
}

- (id)safari_dataByDecompressingData
{
  v8 = *MEMORY[0x1E69E9840];
  if ([a1 length])
  {
    memset(&strm.avail_in, 0, 104);
    strm.next_in = [a1 bytes];
    strm.avail_in = [a1 length];
    v2 = 0;
    if (!inflateInit_(&strm, "1.2.12", 112))
    {
      v3 = [MEMORY[0x1E695DF88] data];
      while (1)
      {
        strm.avail_out = 0x10000;
        strm.next_out = v7;
        if (inflate(&strm, 0) >= 2)
        {
          break;
        }

        [v3 appendBytes:v7 length:0x10000 - strm.avail_out];
        if (strm.avail_out)
        {
          inflateEnd(&strm);
          v2 = v3;
          goto LABEL_9;
        }
      }

      inflateEnd(&strm);
      v2 = 0;
LABEL_9:
    }
  }

  else
  {
    v2 = [MEMORY[0x1E695DEF0] data];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)safari_dataAppearsToBeCompressed
{
  if ([a1 length] >= 2 && (objc_msgSend(a1, "getBytes:length:", &v3, 2), (v3 & 0x8F) == 8))
  {
    return (31711 * (bswap32(v3) >> 16)) < 0x843u;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)safari_hashMD5
{
  v5 = *MEMORY[0x1E69E9840];
  CC_MD5([a1 bytes], objc_msgSend(a1, "length"), md);
  if (v4 >= 0)
  {
    result = v4;
  }

  else
  {
    result = -v4;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)safari_SHA1Hash
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = CC_SHA1([a1 bytes], objc_msgSend(a1, "length"), md);
  if (v1)
  {
    v1 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:20];
  }

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (id)safari_scryptHashWithSalt:()SafariCoreExtras N:r:p:keyLength:
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = ccscrypt_storage_size();
  if (v13 <= 0)
  {
    v21 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349568;
      v27 = a4;
      v28 = 1026;
      v29 = a5;
      v30 = 1026;
      v31 = a6;
      _os_log_error_impl(&dword_1B8447000, v21, OS_LOG_TYPE_ERROR, "Invalid scrypt parameters N: %{public}llu, r: %{public}u, p: %{public}u.", buf, 0x18u);
    }

    v20 = 0;
  }

  else
  {
    v14 = malloc_type_malloc(v13, 0x6FC353A4uLL);
    v15 = malloc_type_malloc(a7, 0x44A4AFCBuLL);
    v16 = objc_alloc_init(WBSScopeExitHandler);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __70__NSData_SafariCoreExtras__safari_scryptHashWithSalt_N_r_p_keyLength___block_invoke;
    v25[3] = &__block_descriptor_48_e5_v8__0l;
    v25[4] = v14;
    v25[5] = v15;
    v24 = v16;
    [(WBSScopeExitHandler *)v16 setHandler:v25];
    [a1 length];
    [a1 bytes];
    [v12 length];
    [v12 bytes];
    v17 = ccscrypt();
    if (v17)
    {
      v18 = v17;
      v19 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [NSData(SafariCoreExtras) safari_scryptHashWithSalt:v18 N:v19 r:? p:? keyLength:?];
      }

      v20 = 0;
    }

    else
    {
      v20 = [MEMORY[0x1E695DEF0] dataWithBytes:v15 length:{a7, a7, v15}];
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)safari_descriptionWithoutSpaces
{
  v1 = [MEMORY[0x1E696AEC0] safari_stringAsHexWithData:a1];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@>", v1];
  v3 = [v2 lowercaseString];

  return v3;
}

- (id)safari_dataByAppendingData:()SafariCoreExtras
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 appendData:v4];

  return v5;
}

+ (id)safari_dataWithHexString:()SafariCoreExtras
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 characterSetWithCharactersInString:@"0123456789abcdefABCDEF"];
  v6 = [v5 invertedSet];

  v7 = [v4 safari_stringByRemovingCharactersInSet:v6];

  v8 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [v7 UTF8String];
  if ([v7 length] != 1)
  {
    v9 = 0;
    do
    {
      __strlcpy_chk();
      v11 = strtol(__str, 0, 16);
      [v8 appendBytes:&v11 length:1];
      v9 += 2;
    }

    while (v9 < [v7 length] - 1);
  }

  return v8;
}

- (void)safari_scryptHashWithSalt:()SafariCoreExtras N:r:p:keyLength:.cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67240192;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Scrypt failed with error: %{public}d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end