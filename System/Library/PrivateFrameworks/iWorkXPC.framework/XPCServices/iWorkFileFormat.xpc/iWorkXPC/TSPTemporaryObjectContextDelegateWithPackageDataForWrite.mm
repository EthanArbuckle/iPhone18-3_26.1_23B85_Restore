@interface TSPTemporaryObjectContextDelegateWithPackageDataForWrite
- (TSPTemporaryObjectContextDelegateWithPackageDataForWrite)initWithPackageDataForWrite:(id)a3 additionalDocumentPropertiesForWrite:(id)a4;
@end

@implementation TSPTemporaryObjectContextDelegateWithPackageDataForWrite

- (TSPTemporaryObjectContextDelegateWithPackageDataForWrite)initWithPackageDataForWrite:(id)a3 additionalDocumentPropertiesForWrite:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TSPTemporaryObjectContextDelegateWithPackageDataForWrite;
  v8 = [(TSPTemporaryObjectContextDelegate *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    packageDataForWrite = v8->_packageDataForWrite;
    v8->_packageDataForWrite = v9;

    v11 = [v7 copy];
    additionalDocumentPropertiesForWrite = v8->_additionalDocumentPropertiesForWrite;
    v8->_additionalDocumentPropertiesForWrite = v11;
  }

  return v8;
}

@end