@interface TSPTemporaryObjectContextDelegate
+ (id)temporaryObjectContextDelegateWithPackageDataForWrite:(id)a3 additionalDocumentPropertiesForWrite:(id)a4;
- (TSPTemporaryObjectContextDelegate)init;
- (id)persistenceWarningsForData:(id)a3 flags:(unint64_t)a4;
- (void)context:(id)a3 canPerformUserActionUsingBlock:(id)a4;
@end

@implementation TSPTemporaryObjectContextDelegate

- (TSPTemporaryObjectContextDelegate)init
{
  v6.receiver = self;
  v6.super_class = TSPTemporaryObjectContextDelegate;
  v2 = [(TSPTemporaryObjectContextDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    persistenceWarnings = v2->_persistenceWarnings;
    v2->_persistenceWarnings = v3;

    v2->_ignoreDocumentSupport = 1;
  }

  return v2;
}

+ (id)temporaryObjectContextDelegateWithPackageDataForWrite:(id)a3 additionalDocumentPropertiesForWrite:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [TSPTemporaryObjectContextDelegateWithPackageDataForWrite alloc];
  v9 = objc_msgSend_initWithPackageDataForWrite_additionalDocumentPropertiesForWrite_(v7, v8, v5, v6);

  return v9;
}

- (id)persistenceWarningsForData:(id)a3 flags:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v8 = v5;
  if (v4)
  {
    v18 = objc_msgSend_set(MEMORY[0x277CBEB98], v6, v7);
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_msgSend_filename(v5, v6, v7);
    v12 = v10;
    v13 = @"External";
    if ((v4 & 2) == 0)
    {
      v13 = @"Package";
    }

    v14 = objc_msgSend_stringWithFormat_(v9, v11, @"%@ data %@ is missing.", v13, v10);

    v16 = objc_msgSend_warningWithMessage_(MEMORY[0x277D81368], v15, v14);
    v18 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v17, v16);
  }

  return v18;
}

- (void)context:(id)a3 canPerformUserActionUsingBlock:(id)a4
{
  v4 = a4;
  if (v4)
  {
    v4[2](v4, 1);
  }
}

@end