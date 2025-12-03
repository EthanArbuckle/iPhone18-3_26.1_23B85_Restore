@interface SPRMemoryInfo
- (SPRMemoryInfo)initWithCoder:(id)coder;
- (SPRMemoryInfo)initWithNvm:(int64_t)nvm cor:(int64_t)cor cod:(int64_t)cod idx:(int64_t)idx;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPRMemoryInfo

- (SPRMemoryInfo)initWithNvm:(int64_t)nvm cor:(int64_t)cor cod:(int64_t)cod idx:(int64_t)idx
{
  self->_nvm = nvm;
  self->_cor = cor;
  self->_cod = cod;
  self->_idx = idx;
  return self;
}

- (SPRMemoryInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = SPRMemoryInfo;
  v8 = [(SPRMemoryInfo *)&v19 init];
  if (v8)
  {
    v8->_nvm = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"nvm", v6, v7);
    v8->_cor = objc_msgSend_decodeIntegerForKey_(coderCopy, v9, @"cor", v10, v11);
    v8->_cod = objc_msgSend_decodeIntegerForKey_(coderCopy, v12, @"cod", v13, v14);
    v8->_idx = objc_msgSend_decodeIntegerForKey_(coderCopy, v15, @"idx", v16, v17);
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  nvm = self->_nvm;
  coderCopy = coder;
  objc_msgSend_encodeInteger_forKey_(coderCopy, v5, nvm, @"nvm", v6);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v7, self->_cor, @"cor", v8);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v9, self->_cod, @"cod", v10);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v11, self->_idx, @"idx", v12);
}

@end