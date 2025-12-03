@interface PLSUUID
+ (id)generateUUIDAsString;
+ (id)photoBase64UUIDsFromUUIDs:(id)ds;
+ (id)uuid;
+ (id)uuidWithData:(id)data;
+ (id)uuidWithString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToData:(id)data;
- (NSString)photoBase64String;
- (NSString)stringValue;
- (PLSUUID)init;
- (PLSUUID)initWithBytes:(const void *)bytes length:(unint64_t)length;
- (PLSUUID)initWithCoder:(id)coder;
- (PLSUUID)initWithData:(id)data;
- (PLSUUID)initWithPhotoBase64String:(id)string;
- (PLSUUID)initWithString:(id)string;
- (void)_dataFromCFUUID:(__CFUUID *)d;
@end

@implementation PLSUUID

- (void)_dataFromCFUUID:(__CFUUID *)d
{
  v6 = CFUUIDGetUUIDBytes(d);
  v4 = [[NSData alloc] initWithBytes:&v6 length:16];
  data = self->_data;
  self->_data = v4;
}

- (PLSUUID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PLSUUID;
  v5 = [(PLSUUID *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLSUUIDDataKey"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PLSUUID *)self isEqualToData:equalCopy];
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

- (BOOL)isEqualToData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = dataCopy;
  }

  else
  {
    v5 = [PLSUUID uuidWithData:dataCopy];
  }

  v6 = v5;
  v9.receiver = self;
  v9.super_class = PLSUUID;
  v7 = [(PLSUUID *)&v9 isEqualToData:v5];

  return v7;
}

- (PLSUUID)initWithPhotoBase64String:(id)string
{
  stringCopy = string;
  if ([stringCopy length] == &dword_14 + 2)
  {
    v5 = +[PLSBase64Decoder decoderForPhotoUUID];
    v6 = [v5 decodeString:stringCopy];
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
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PLSUUID)initWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v10.receiver = self;
    v10.super_class = PLSUUID;
    v5 = [(PLSUUID *)&v10 init];
    if (v5)
    {
      v6 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [dataCopy bytes], objc_msgSend(dataCopy, "length"));
      data = v5->_data;
      v5->_data = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PLSUUID)initWithString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v9.receiver = self;
    v9.super_class = PLSUUID;
    v5 = [(PLSUUID *)&v9 init];
    if (v5)
    {
      v6 = CFUUIDCreateFromString(kCFAllocatorDefault, stringCopy);
      [(PLSUUID *)v5 _dataFromCFUUID:v6];
      CFRelease(v6);
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PLSUUID)initWithBytes:(const void *)bytes length:(unint64_t)length
{
  if (bytes)
  {
    v11.receiver = self;
    v11.super_class = PLSUUID;
    v6 = [(PLSUUID *)&v11 init];
    if (v6)
    {
      v7 = [[NSData alloc] initWithBytes:bytes length:length];
      data = v6->_data;
      v6->_data = v7;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
  stringValue = [v2 stringValue];

  return stringValue;
}

+ (id)photoBase64UUIDsFromUUIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dsCopy count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = dsCopy;
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
        photoBase64String = [v10 photoBase64String];
        [v4 addObject:photoBase64String];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)uuidWithString:(id)string
{
  stringCopy = string;
  v4 = [[PLSUUID alloc] initWithString:stringCopy];

  return v4;
}

+ (id)uuidWithData:(id)data
{
  dataCopy = data;
  v4 = [[PLSUUID alloc] initWithData:dataCopy];

  return v4;
}

+ (id)uuid
{
  v2 = objc_alloc_init(PLSUUID);

  return v2;
}

@end