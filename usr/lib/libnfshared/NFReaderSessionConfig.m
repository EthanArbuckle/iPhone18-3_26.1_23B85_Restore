@interface NFReaderSessionConfig
+ (id)sessionConfigWithUIMode:(unint64_t)a3 sessionType:(unint64_t)a4 initialScanText:(id)a5 vasPass:(id)a6;
+ (id)sessionTypeString:(unint64_t)a3;
- (NFReaderSessionConfig)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFReaderSessionConfig

+ (id)sessionConfigWithUIMode:(unint64_t)a3 sessionType:(unint64_t)a4 initialScanText:(id)a5 vasPass:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = objc_opt_new();
  v14 = v11;
  if (v11)
  {
    *(v11 + 8) = a3;
    *(v11 + 16) = a4;
    v15 = objc_msgSend_copy(v9, v12, v13);
    v16 = v14[3];
    v14[3] = v15;

    v19 = objc_msgSend_copy(v10, v17, v18);
    v20 = v14[4];
    v14[4] = v19;
  }

  return v14;
}

+ (id)sessionTypeString:(unint64_t)a3
{
  if (a3 > 5)
  {
    return @"NDEFReader";
  }

  else
  {
    return off_278872A68[a3];
  }
}

- (void)encodeWithCoder:(id)a3
{
  uiMode = self->_uiMode;
  v9 = a3;
  objc_msgSend_encodeInteger_forKey_(v9, v5, uiMode, @"uiMode");
  objc_msgSend_encodeInteger_forKey_(v9, v6, self->_sessionType, @"sessionType");
  objc_msgSend_encodeObject_forKey_(v9, v7, self->_initialScanText, @"initialScanText");
  objc_msgSend_encodeObject_forKey_(v9, v8, self->_vasPasses, @"vasPasses");
}

- (NFReaderSessionConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NFReaderSessionConfig;
  v6 = [(NFReaderSessionConfig *)&v17 init];
  if (v6)
  {
    v6->_uiMode = objc_msgSend_decodeIntegerForKey_(v4, v5, @"uiMode");
    v6->_sessionType = objc_msgSend_decodeIntegerForKey_(v4, v7, @"sessionType");
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v9, v8, @"initialScanText");
    initialScanText = v6->_initialScanText;
    v6->_initialScanText = v10;

    v12 = objc_opt_class();
    v14 = objc_msgSend_coder_decodeArrayOfClass_forKey_(NFNSCheckedDecoder, v13, v4, v12, @"vasPasses");
    vasPasses = v6->_vasPasses;
    v6->_vasPasses = v14;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_new();
  v7 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_uiMode;
    *(v5 + 16) = self->_sessionType;
    v8 = objc_msgSend_copyWithZone_(self->_initialScanText, v6, a3);
    v9 = v7[3];
    v7[3] = v8;

    v11 = objc_msgSend_copyWithZone_(self->_vasPasses, v10, a3);
    v12 = v7[4];
    v7[4] = v11;
  }

  return v7;
}

@end