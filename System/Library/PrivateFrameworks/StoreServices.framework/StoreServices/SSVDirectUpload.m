@interface SSVDirectUpload
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SSVDirectUpload)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (void)_adoptStatusFromUpload:(id)a3;
@end

@implementation SSVDirectUpload

- (void)_adoptStatusFromUpload:(id)a3
{
  v4 = a3;
  self->_countOfBytesExpectedToSend = [v4 countOfBytesExpectedToSend];
  self->_countOfBytesSent = [v4 countOfBytesSent];
  v5 = [v4 error];
  error = self->_error;
  self->_error = v5;

  v7 = [v4 state];
  self->_state = v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = SSVDirectUpload;
  v4 = [(SSVDirectUpload *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ [PID: %lld]", v4, self->_persistentIdentifier];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(SSVDirectUpload *)self persistentIdentifier];
    v6 = v7 == [v4 persistentIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SSVDirectUpload)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v25.receiver = self;
    v25.super_class = SSVDirectUpload;
    v6 = [(SSVDirectUpload *)&v25 init];
    if (v6)
    {
      objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(v5, "2");
      categoryName = v6->_categoryName;
      v6->_categoryName = v8;

      v6->_countOfBytesExpectedToSend = xpc_dictionary_get_int64(v5, "0");
      v6->_countOfBytesSent = xpc_dictionary_get_int64(v5, "1");
      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v11 = xpc_dictionary_get_value(v5, "3");
      v12 = [v10 initWithXPCEncoding:v11];
      error = v6->_error;
      v6->_error = v12;

      v6->_explicitContent = xpc_dictionary_get_BOOL(v5, "4");
      v6->_persistentIdentifier = xpc_dictionary_get_int64(v5, "5");
      v6->_state = xpc_dictionary_get_int64(v5, "6");
      objc_opt_class();
      v14 = SSXPCDictionaryCopyCFObjectWithClass(v5, "7");
      subtitle = v6->_subtitle;
      v6->_subtitle = v14;

      objc_opt_class();
      v16 = SSXPCDictionaryCopyCFObjectWithClass(v5, "9");
      title = v6->_title;
      v6->_title = v16;

      objc_opt_class();
      v18 = SSXPCDictionaryCopyCFObjectWithClass(v5, "A");
      uploadKind = v6->_uploadKind;
      v6->_uploadKind = v18;

      objc_opt_class();
      v20 = SSXPCDictionaryCopyCFObjectWithClass(v5, "B");
      uti = v6->_uti;
      v6->_uti = v20;

      objc_opt_class();
      v22 = SSXPCDictionaryCopyCFObjectWithClass(v5, "8");
      if (v22)
      {
        v23 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v22];
        thumbnailImageURL = v6->_thumbnailImageURL;
        v6->_thumbnailImageURL = v23;
      }
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "2", self->_categoryName);
  xpc_dictionary_set_int64(v3, "0", self->_countOfBytesExpectedToSend);
  xpc_dictionary_set_int64(v3, "1", self->_countOfBytesSent);
  SSXPCDictionarySetObject(v3, "3", self->_error);
  xpc_dictionary_set_BOOL(v3, "4", self->_explicitContent);
  xpc_dictionary_set_int64(v3, "5", self->_persistentIdentifier);
  xpc_dictionary_set_int64(v3, "6", self->_state);
  SSXPCDictionarySetObject(v3, "7", self->_subtitle);
  v4 = [(NSURL *)self->_thumbnailImageURL absoluteString];
  SSXPCDictionarySetObject(v3, "8", v4);

  SSXPCDictionarySetObject(v3, "9", self->_title);
  SSXPCDictionarySetObject(v3, "A", self->_uploadKind);
  SSXPCDictionarySetObject(v3, "B", self->_uti);
  return v3;
}

@end