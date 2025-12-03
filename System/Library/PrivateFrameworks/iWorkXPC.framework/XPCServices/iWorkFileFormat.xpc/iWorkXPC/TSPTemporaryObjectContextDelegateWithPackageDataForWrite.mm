@interface TSPTemporaryObjectContextDelegateWithPackageDataForWrite
- (TSPTemporaryObjectContextDelegateWithPackageDataForWrite)initWithPackageDataForWrite:(id)write additionalDocumentPropertiesForWrite:(id)forWrite;
@end

@implementation TSPTemporaryObjectContextDelegateWithPackageDataForWrite

- (TSPTemporaryObjectContextDelegateWithPackageDataForWrite)initWithPackageDataForWrite:(id)write additionalDocumentPropertiesForWrite:(id)forWrite
{
  writeCopy = write;
  forWriteCopy = forWrite;
  v14.receiver = self;
  v14.super_class = TSPTemporaryObjectContextDelegateWithPackageDataForWrite;
  v8 = [(TSPTemporaryObjectContextDelegate *)&v14 init];
  if (v8)
  {
    v9 = [writeCopy copy];
    packageDataForWrite = v8->_packageDataForWrite;
    v8->_packageDataForWrite = v9;

    v11 = [forWriteCopy copy];
    additionalDocumentPropertiesForWrite = v8->_additionalDocumentPropertiesForWrite;
    v8->_additionalDocumentPropertiesForWrite = v11;
  }

  return v8;
}

@end