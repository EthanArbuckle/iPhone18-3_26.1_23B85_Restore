@interface ISOKey
- (ISOKey)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISOKey

- (void)encodeWithCoder:(id)coder
{
  keyType_low = LODWORD(self->_keyType);
  coderCopy = coder;
  [coderCopy encodeInt:keyType_low forKey:@"keyType"];
  [coderCopy encodeObject:self->_keyStorage forKey:@"privateKey"];
}

- (ISOKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_new();
  v5[1] = [coderCopy decodeIntegerForKey:@"keyType"];
  v6 = objc_opt_class();
  v19 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"privateKey"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = @"Key unarchive error, invalidate data type";
    v17 = 1032;
LABEL_8:
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISOKey initWithCoder:]", v17, self, v16, v9, v10, v19);
    v15 = 0;
    goto LABEL_9;
  }

  v11 = [[NSMutableData alloc] initWithData:v8];
  v12 = v5[2];
  v5[2] = v11;

  v13 = v5[2];
  if (!v13)
  {
    v16 = @"Key unarchive error, missing storage";
    v17 = 1039;
    goto LABEL_8;
  }

  if (!v5[1])
  {
    mutableBytes = [v13 mutableBytes];
    v5[3] = mutableBytes;
    *mutableBytes = ccec_cp_256();
  }

  v15 = v5;
LABEL_9:

  return v15;
}

@end