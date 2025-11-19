@interface PLSUUID
+ (id)generateUUIDAsString;
+ (id)photoBase64UUIDsFromUUIDs:(id)a3;
+ (id)uuid;
+ (id)uuidWithData:(id)a3;
+ (id)uuidWithString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToData:(id)a3;
- (NSString)photoBase64String;
- (NSString)stringValue;
- (PLSUUID)init;
- (PLSUUID)initWithBytes:(const void *)a3 length:(unint64_t)a4;
- (PLSUUID)initWithCoder:(id)a3;
- (PLSUUID)initWithData:(id)a3;
- (PLSUUID)initWithPhotoBase64String:(id)a3;
- (PLSUUID)initWithString:(id)a3;
- (void)_dataFromCFUUID:(__CFUUID *)a3;
@end

@implementation PLSUUID

- (void)_dataFromCFUUID:(__CFUUID *)a3
{
  v6 = CFUUIDGetUUIDBytes(a3);
  v4 = [[NSData alloc] initWithBytes:&v6 length:16];
  data = self->_data;
  self->_data = v4;
}

- (PLSUUID)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLSUUID;
  v5 = [(PLSUUID *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PLSUUIDDataKey"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PLSUUID *)self isEqualToData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)photoBase64String
{
  v3 = +[PLSBase64Encoder encoderForPhotoUUID];
  v4 = [v3 encodeData:self->_data];

  return v4;
}

- (NSString)stringValue
{
  *&v5.byte0 = 0;
  *&v5.byte8 = 0;
  [(NSData *)self->_data getBytes:&v5 length:16];
  v2 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, v5);
  v3 = CFUUIDCreateString(kCFAllocatorDefault, v2);
  CFRelease(v2);

  return v3;
}

- (BOOL)isEqualToData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = [PLSUUID uuidWithData:v4];
  }

  v6 = v5;
  v9.receiver = self;
  v9.super_class = PLSUUID;
  v7 = [(PLSUUID *)&v9 isEqualToData:v5];

  return v7;
}

- (PLSUUID)initWithPhotoBase64String:(id)a3
{
  v4 = a3;
  if ([v4 length] == &dword_14 + 2)
  {
    v5 = +[PLSBase64Decoder decoderForPhotoUUID];
    v6 = [v5 decodeString:v4];
    if (v6)
    {
      v12.receiver = self;
      v12.super_class = PLSUUID;
      v7 = [(PLSUUID *)&v12 init];
      if (v7)
      {
        v8 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v6 bytes], objc_msgSend(v6, "length"));
        data = v7->_data;
        v7->_data = v8;
      }

      self = v7;
      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PLSUUID)initWithData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = PLSUUID;
    v5 = [(PLSUUID *)&v10 init];
    if (v5)
    {
      v6 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v4 bytes], objc_msgSend(v4, "length"));
      data = v5->_data;
      v5->_data = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PLSUUID)initWithString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9.receiver = self;
    v9.super_class = PLSUUID;
    v5 = [(PLSUUID *)&v9 init];
    if (v5)
    {
      v6 = CFUUIDCreateFromString(kCFAllocatorDefault, v4);
      [(PLSUUID *)v5 _dataFromCFUUID:v6];
      CFRelease(v6);
    }

    self = v5;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PLSUUID)initWithBytes:(const void *)a3 length:(unint64_t)a4
{
  if (a3)
  {
    v11.receiver = self;
    v11.super_class = PLSUUID;
    v6 = [(PLSUUID *)&v11 init];
    if (v6)
    {
      v7 = [[NSData alloc] initWithBytes:a3 length:a4];
      data = v6->_data;
      v6->_data = v7;
    }

    self = v6;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PLSUUID)init
{
  v5.receiver = self;
  v5.super_class = PLSUUID;
  v2 = [(PLSUUID *)&v5 init];
  if (v2)
  {
    v3 = CFUUIDCreate(kCFAllocatorDefault);
    [(PLSUUID *)v2 _dataFromCFUUID:v3];
    CFRelease(v3);
  }

  return v2;
}

+ (id)generateUUIDAsString
{
  v2 = +[PLSUUID uuid];
  v3 = [v2 stringValue];

  return v3;
}

+ (id)photoBase64UUIDsFromUUIDs:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [PLSUUID uuidWithString:*(*(&v13 + 1) + 8 * i), v13];
        v11 = [v10 photoBase64String];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)uuidWithString:(id)a3
{
  v3 = a3;
  v4 = [[PLSUUID alloc] initWithString:v3];

  return v4;
}

+ (id)uuidWithData:(id)a3
{
  v3 = a3;
  v4 = [[PLSUUID alloc] initWithData:v3];

  return v4;
}

+ (id)uuid
{
  v2 = objc_alloc_init(PLSUUID);

  return v2;
}

@end