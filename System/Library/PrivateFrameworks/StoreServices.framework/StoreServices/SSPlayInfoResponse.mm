@interface SSPlayInfoResponse
- (NSString)description;
- (SSPlayInfoResponse)initWithPlayInfoData:(id)a3 error:(id)a4;
- (SSPlayInfoResponse)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v5[2] = [(NSData *)self->_playInfoData copyWithZone:a3];
  v5[1] = [(NSError *)self->_error copyWithZone:a3];
  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_error);
  SSXPCDictionarySetCFObject(v3, "1", self->_playInfoData);
  return v3;
}

- (SSPlayInfoResponse)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSPlayInfoResponse;
    v5 = [(SSPlayInfoResponse *)&v7 init];
    if (v5)
    {
      v5->_error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a3, "0")}];
      objc_opt_class();
      v5->_playInfoData = SSXPCDictionaryCopyCFObjectWithClass(a3, "1");
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

- (SSPlayInfoResponse)initWithPlayInfoData:(id)a3 error:(id)a4
{
  v8.receiver = self;
  v8.super_class = SSPlayInfoResponse;
  v6 = [(SSPlayInfoResponse *)&v8 init];
  if (v6)
  {
    v6->_error = a4;
    v6->_playInfoData = [a3 copy];
  }

  return v6;
}

@end