@interface CSDecryptInfo
- (CSDecryptInfo)initWithPlistObject:(id *)object externalID:(id)d;
@end

@implementation CSDecryptInfo

- (CSDecryptInfo)initWithPlistObject:(id *)object externalID:(id)d
{
  dCopy = d;
  v16.receiver = self;
  v16.super_class = CSDecryptInfo;
  v8 = [(CSDecryptInfo *)&v16 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = *MEMORY[0x277CBECE8];
  v14 = *&object->var0;
  var2 = object->var2;
  v10 = _MDPlistContainerCopyObject();
  decryptInfo = v8->_decryptInfo;
  v8->_decryptInfo = v10;

  objc_storeStrong(&v8->_externalID, d);
  if (!v8->_decryptInfo)
  {
    goto LABEL_5;
  }

  if (v8->_externalID)
  {
    v12 = v8;
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

@end