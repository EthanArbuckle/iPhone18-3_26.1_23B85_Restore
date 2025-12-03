@interface TSPTemporaryObjectContextDelegate
+ (id)temporaryObjectContextDelegateWithPackageDataForWrite:(id)write additionalDocumentPropertiesForWrite:(id)forWrite;
- (TSPTemporaryObjectContextDelegate)init;
- (id)persistenceWarningsForData:(id)data flags:(unint64_t)flags;
- (void)context:(id)context canPerformUserActionUsingBlock:(id)block;
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

+ (id)temporaryObjectContextDelegateWithPackageDataForWrite:(id)write additionalDocumentPropertiesForWrite:(id)forWrite
{
  writeCopy = write;
  forWriteCopy = forWrite;
  v7 = [TSPTemporaryObjectContextDelegateWithPackageDataForWrite alloc];
  v9 = objc_msgSend_initWithPackageDataForWrite_additionalDocumentPropertiesForWrite_(v7, v8, writeCopy, forWriteCopy);

  return v9;
}

- (id)persistenceWarningsForData:(id)data flags:(unint64_t)flags
{
  flagsCopy = flags;
  dataCopy = data;
  v8 = dataCopy;
  if (flagsCopy)
  {
    v18 = objc_msgSend_set(MEMORY[0x277CBEB98], v6, v7);
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_msgSend_filename(dataCopy, v6, v7);
    v12 = v10;
    v13 = @"External";
    if ((flagsCopy & 2) == 0)
    {
      v13 = @"Package";
    }

    v14 = objc_msgSend_stringWithFormat_(v9, v11, @"%@ data %@ is missing.", v13, v10);

    v16 = objc_msgSend_warningWithMessage_(MEMORY[0x277D81368], v15, v14);
    v18 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v17, v16);
  }

  return v18;
}

- (void)context:(id)context canPerformUserActionUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    blockCopy[2](blockCopy, 1);
  }
}

@end