@interface SSPlayInfoResponse
- (NSString)description;
- (SSPlayInfoResponse)initWithPlayInfoData:(id)data error:(id)error;
- (SSPlayInfoResponse)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (void)dealloc;
@end

@implementation SSPlayInfoResponse

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSPlayInfoResponse;
  [(SSPlayInfoResponse *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v5[2] = [(NSData *)self->_playInfoData copyWithZone:zone];
  v5[1] = [(NSError *)self->_error copyWithZone:zone];
  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_error);
  SSXPCDictionarySetCFObject(v3, "1", self->_playInfoData);
  return v3;
}

- (SSPlayInfoResponse)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSPlayInfoResponse;
    v5 = [(SSPlayInfoResponse *)&v7 init];
    if (v5)
    {
      v5->_error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(encoding, "0")}];
      objc_opt_class();
      v5->_playInfoData = SSXPCDictionaryCopyCFObjectWithClass(encoding, "1");
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (NSString)description
{
  if (self->_error)
  {
    v5.receiver = self;
    v5.super_class = SSPlayInfoResponse;
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Failed with error: %@", -[SSPlayInfoResponse description](&v5, sel_description), self->_error, v3];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SSPlayInfoResponse;
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Succeeded with info: %ld bytes @ %p", -[SSPlayInfoResponse description](&v4, sel_description), -[NSData length](self->_playInfoData, "length"), self->_playInfoData];
  }
}

- (SSPlayInfoResponse)initWithPlayInfoData:(id)data error:(id)error
{
  v8.receiver = self;
  v8.super_class = SSPlayInfoResponse;
  v6 = [(SSPlayInfoResponse *)&v8 init];
  if (v6)
  {
    v6->_error = error;
    v6->_playInfoData = [data copy];
  }

  return v6;
}

@end