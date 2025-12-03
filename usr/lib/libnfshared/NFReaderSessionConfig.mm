@interface NFReaderSessionConfig
+ (id)sessionConfigWithUIMode:(unint64_t)mode sessionType:(unint64_t)type initialScanText:(id)text vasPass:(id)pass;
+ (id)sessionTypeString:(unint64_t)string;
- (NFReaderSessionConfig)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFReaderSessionConfig

+ (id)sessionConfigWithUIMode:(unint64_t)mode sessionType:(unint64_t)type initialScanText:(id)text vasPass:(id)pass
{
  textCopy = text;
  passCopy = pass;
  v11 = objc_opt_new();
  v14 = v11;
  if (v11)
  {
    *(v11 + 8) = mode;
    *(v11 + 16) = type;
    v15 = objc_msgSend_copy(textCopy, v12, v13);
    v16 = v14[3];
    v14[3] = v15;

    v19 = objc_msgSend_copy(passCopy, v17, v18);
    v20 = v14[4];
    v14[4] = v19;
  }

  return v14;
}

+ (id)sessionTypeString:(unint64_t)string
{
  if (string > 5)
  {
    return @"NDEFReader";
  }

  else
  {
    return off_278872A68[string];
  }
}

- (void)encodeWithCoder:(id)coder
{
  uiMode = self->_uiMode;
  coderCopy = coder;
  objc_msgSend_encodeInteger_forKey_(coderCopy, v5, uiMode, @"uiMode");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v6, self->_sessionType, @"sessionType");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_initialScanText, @"initialScanText");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_vasPasses, @"vasPasses");
}

- (NFReaderSessionConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = NFReaderSessionConfig;
  v6 = [(NFReaderSessionConfig *)&v17 init];
  if (v6)
  {
    v6->_uiMode = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"uiMode");
    v6->_sessionType = objc_msgSend_decodeIntegerForKey_(coderCopy, v7, @"sessionType");
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"initialScanText");
    initialScanText = v6->_initialScanText;
    v6->_initialScanText = v10;

    v12 = objc_opt_class();
    v14 = objc_msgSend_coder_decodeArrayOfClass_forKey_(NFNSCheckedDecoder, v13, coderCopy, v12, @"vasPasses");
    vasPasses = v6->_vasPasses;
    v6->_vasPasses = v14;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_new();
  v7 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_uiMode;
    *(v5 + 16) = self->_sessionType;
    v8 = objc_msgSend_copyWithZone_(self->_initialScanText, v6, zone);
    v9 = v7[3];
    v7[3] = v8;

    v11 = objc_msgSend_copyWithZone_(self->_vasPasses, v10, zone);
    v12 = v7[4];
    v7[4] = v11;
  }

  return v7;
}

@end