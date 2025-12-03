@interface TSPTemporaryObjectContextDelegateWithPackageDataForWrite
- (TSPTemporaryObjectContextDelegateWithPackageDataForWrite)initWithPackageDataForWrite:(id)write additionalDocumentPropertiesForWrite:(id)forWrite;
@end

@implementation TSPTemporaryObjectContextDelegateWithPackageDataForWrite

- (TSPTemporaryObjectContextDelegateWithPackageDataForWrite)initWithPackageDataForWrite:(id)write additionalDocumentPropertiesForWrite:(id)forWrite
{
  writeCopy = write;
  forWriteCopy = forWrite;
  v18.receiver = self;
  v18.super_class = TSPTemporaryObjectContextDelegateWithPackageDataForWrite;
  v10 = [(TSPTemporaryObjectContextDelegate *)&v18 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(writeCopy, v8, v9);
    packageDataForWrite = v10->_packageDataForWrite;
    v10->_packageDataForWrite = v11;

    v15 = objc_msgSend_copy(forWriteCopy, v13, v14);
    additionalDocumentPropertiesForWrite = v10->_additionalDocumentPropertiesForWrite;
    v10->_additionalDocumentPropertiesForWrite = v15;
  }

  return v10;
}

@end