@interface PLUUIDString
+ (BOOL)parseUUIDString:(id)string uuidBuffer:(char *)buffer;
+ (id)UUIDString;
- ($DCF20CAD073027CB89FDEFA7A9A33809)UUIDBytes;
- (BOOL)isEqualToString:(id)string;
- (PLUUIDString)initWithCFUUID:(__CFUUID *)d;
- (PLUUIDString)initWithUUID:(unsigned __int8)d[16];
- (PLUUIDString)initWithUUIDData:(id)data;
- (int64_t)compare:(id)compare options:(unint64_t)options range:(_NSRange)range locale:(id)locale;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation PLUUIDString

- (int64_t)compare:(id)compare options:(unint64_t)options range:(_NSRange)range locale:(id)locale
{
  length = range.length;
  location = range.location;
  compareCopy = compare;
  localeCopy = locale;
  v13 = objc_opt_class();
  if (v13 == objc_opt_class())
  {
    v15 = uuid_compare(self->_uuid, compareCopy + 8);
    if (v15 < 0)
    {
      localeCopy = -1;
    }

    else
    {
      localeCopy = v15 != 0;
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PLUUIDString;
    localeCopy = [(PLUUIDString *)&v17 compare:compareCopy options:options range:location locale:length, localeCopy];
  }

  return localeCopy;
}

- (BOOL)isEqualToString:(id)string
{
  stringCopy = string;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = uuid_compare(self->_uuid, stringCopy + 8) == 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PLUUIDString;
    v6 = [(PLUUIDString *)&v8 isEqualToString:stringCopy];
  }

  return v6;
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  if (range.length)
  {
    v4 = &self->_uuidString[range.location];
    do
    {
      v5 = *v4++;
      *characters++ = v5;
      --range.length;
    }

    while (range.length);
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

- (PLUUIDString)initWithUUID:(unsigned __int8)d[16]
{
  v8.receiver = self;
  v8.super_class = PLUUIDString;
  v4 = [(PLUUIDString *)&v8 init];
  v5 = v4;
  if (v4)
  {
    uuid = v4->_uuid;
    if (d)
    {
      uuid_copy(uuid, d);
    }

    else
    {
      MEMORY[0x1AC592C60](uuid);
    }

    uuid_unparse(v5->_uuid, v5->_uuidString);
  }

  return v5;
}

- (PLUUIDString)initWithCFUUID:(__CFUUID *)d
{
  v8.receiver = self;
  v8.super_class = PLUUIDString;
  v4 = [(PLUUIDString *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (d)
    {
      v7 = CFUUIDGetUUIDBytes(d);
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

- (PLUUIDString)initWithUUIDData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] == 16)
  {
    v7.receiver = self;
    v7.super_class = PLUUIDString;
    v5 = [(PLUUIDString *)&v7 init];
    if (v5)
    {
      uuid_copy(v5->_uuid, [dataCopy bytes]);
      uuid_unparse(v5->_uuid, v5->_uuidString);
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

+ (BOOL)parseUUIDString:(id)string uuidBuffer:(char *)buffer
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [string cStringUsingEncoding:4];
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
      *buffer = *uu;
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
  v2 = [[self alloc] initWithUUID:0];

  return v2;
}

@end