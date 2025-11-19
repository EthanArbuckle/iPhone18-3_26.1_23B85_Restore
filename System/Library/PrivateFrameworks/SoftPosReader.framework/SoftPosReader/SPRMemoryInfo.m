@interface SPRMemoryInfo
- (SPRMemoryInfo)initWithCoder:(id)a3;
- (SPRMemoryInfo)initWithNvm:(int64_t)a3 cor:(int64_t)a4 cod:(int64_t)a5 idx:(int64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPRMemoryInfo

- (SPRMemoryInfo)initWithNvm:(int64_t)a3 cor:(int64_t)a4 cod:(int64_t)a5 idx:(int64_t)a6
{
  self->_nvm = a3;
  self->_cor = a4;
  self->_cod = a5;
  self->_idx = a6;
  return self;
}

- (SPRMemoryInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SPRMemoryInfo;
  v8 = [(SPRMemoryInfo *)&v19 init];
  if (v8)
  {
    v8->_nvm = objc_msgSend_decodeIntegerForKey_(v4, v5, @"nvm", v6, v7);
    v8->_cor = objc_msgSend_decodeIntegerForKey_(v4, v9, @"cor", v10, v11);
    v8->_cod = objc_msgSend_decodeIntegerForKey_(v4, v12, @"cod", v13, v14);
    v8->_idx = objc_msgSend_decodeIntegerForKey_(v4, v15, @"idx", v16, v17);
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  nvm = self->_nvm;
  v13 = a3;
  objc_msgSend_encodeInteger_forKey_(v13, v5, nvm, @"nvm", v6);
  objc_msgSend_encodeInteger_forKey_(v13, v7, self->_cor, @"cor", v8);
  objc_msgSend_encodeInteger_forKey_(v13, v9, self->_cod, @"cod", v10);
  objc_msgSend_encodeInteger_forKey_(v13, v11, self->_idx, @"idx", v12);
}

@end