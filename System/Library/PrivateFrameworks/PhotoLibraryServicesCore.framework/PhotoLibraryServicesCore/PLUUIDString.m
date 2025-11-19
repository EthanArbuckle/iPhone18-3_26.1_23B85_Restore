@interface PLUUIDString
+ (BOOL)parseUUIDString:(id)a3 uuidBuffer:(char *)a4;
+ (id)UUIDString;
- ($DCF20CAD073027CB89FDEFA7A9A33809)UUIDBytes;
- (BOOL)isEqualToString:(id)a3;
- (PLUUIDString)initWithCFUUID:(__CFUUID *)a3;
- (PLUUIDString)initWithUUID:(unsigned __int8)a3[16];
- (PLUUIDString)initWithUUIDData:(id)a3;
- (int64_t)compare:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5 locale:(id)a6;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
@end

@implementation PLUUIDString

- (int64_t)compare:(id)a3 options:(unint64_t)a4 range:(_NSRange)a5 locale:(id)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a3;
  v12 = a6;
  v13 = objc_opt_class();
  if (v13 == objc_opt_class())
  {
    v15 = uuid_compare(self->_uuid, v11 + 8);
    if (v15 < 0)
    {
      v14 = -1;
    }

    else
    {
      v14 = v15 != 0;
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PLUUIDString;
    v14 = [(PLUUIDString *)&v17 compare:v11 options:a4 range:location locale:length, v12];
  }

  return v14;
}

- (BOOL)isEqualToString:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = uuid_compare(self->_uuid, v4 + 8) == 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PLUUIDString;
    v6 = [(PLUUIDString *)&v8 isEqualToString:v4];
  }

  return v6;
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  if (a4.length)
  {
    v4 = &self->_uuidString[a4.location];
    do
    {
      v5 = *v4++;
      *a3++ = v5;
      --a4.length;
    }

    while (a4.length);
  }
}

- ($DCF20CAD073027CB89FDEFA7A9A33809)UUIDBytes
{
  v4 = 0;
  v5 = 0;
  uuid_copy(&v4, self->_uuid);
  v2 = v4;
  v3 = v5;
  result.var8 = v3;
  result.var9 = BYTE1(v3);
  result.var10 = BYTE2(v3);
  result.var11 = BYTE3(v3);
  result.var12 = BYTE4(v3);
  result.var13 = BYTE5(v3);
  result.var14 = BYTE6(v3);
  result.var15 = HIBYTE(v3);
  result.var0 = v2;
  result.var1 = BYTE1(v2);
  result.var2 = BYTE2(v2);
  result.var3 = BYTE3(v2);
  result.var4 = BYTE4(v2);
  result.var5 = BYTE5(v2);
  result.var6 = BYTE6(v2);
  result.var7 = HIBYTE(v2);
  return result;
}

- (PLUUIDString)initWithUUID:(unsigned __int8)a3[16]
{
  v8.receiver = self;
  v8.super_class = PLUUIDString;
  v4 = [(PLUUIDString *)&v8 init];
  v5 = v4;
  if (v4)
  {
    uuid = v4->_uuid;
    if (a3)
    {
      uuid_copy(uuid, a3);
    }

    else
    {
      MEMORY[0x1AC592C60](uuid);
    }

    uuid_unparse(v5->_uuid, v5->_uuidString);
  }

  return v5;
}

- (PLUUIDString)initWithCFUUID:(__CFUUID *)a3
{
  v8.receiver = self;
  v8.super_class = PLUUIDString;
  v4 = [(PLUUIDString *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      v7 = CFUUIDGetUUIDBytes(a3);
      uuid_copy(v5->_uuid, &v7.byte0);
    }

    else
    {
      MEMORY[0x1AC592C60](v4->_uuid);
    }

    uuid_unparse(v5->_uuid, v5->_uuidString);
  }

  return v5;
}

- (PLUUIDString)initWithUUIDData:(id)a3
{
  v4 = a3;
  if ([v4 length] == 16)
  {
    v7.receiver = self;
    v7.super_class = PLUUIDString;
    v5 = [(PLUUIDString *)&v7 init];
    if (v5)
    {
      uuid_copy(v5->_uuid, [v4 bytes]);
      uuid_unparse(v5->_uuid, v5->_uuidString);
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

+ (BOOL)parseUUIDString:(id)a3 uuidBuffer:(char *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [a3 cStringUsingEncoding:4];
  if (v5)
  {
    v6 = v5;
    memset(uu, 0, 16);
    v7 = uuid_parse(v5, uu);
    v8 = v7 == 0;
    if (v7)
    {
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315138;
        v13 = v6;
        _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_ERROR, "uuid_parse failed for assetUUIDCharString: %s", &v12, 0xCu);
      }
    }

    else
    {
      *a4 = *uu;
    }
  }

  else
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *uu = 0;
      _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_ERROR, "assetUUIDCharString is nil", uu, 2u);
    }

    return 0;
  }

  return v8;
}

+ (id)UUIDString
{
  v2 = [[a1 alloc] initWithUUID:0];

  return v2;
}

@end