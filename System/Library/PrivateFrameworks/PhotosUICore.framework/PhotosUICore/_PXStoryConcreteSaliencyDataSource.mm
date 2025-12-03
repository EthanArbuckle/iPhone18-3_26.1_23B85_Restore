@interface _PXStoryConcreteSaliencyDataSource
- (_PXStoryConcreteSaliencyDataSource)initWithSaliencyAreasByUUID:(id)d rawSaliencyAreasByUUID:(id)iD;
- (id)rawSaliencyAreasForDisplayAsset:(id)asset;
- (id)saliencyAreasForDisplayAsset:(id)asset;
@end

@implementation _PXStoryConcreteSaliencyDataSource

- (id)rawSaliencyAreasForDisplayAsset:(id)asset
{
  rawSaliencyAreasByUUID = self->_rawSaliencyAreasByUUID;
  uuid = [asset uuid];
  v5 = [(NSDictionary *)rawSaliencyAreasByUUID objectForKeyedSubscript:uuid];

  return v5;
}

- (id)saliencyAreasForDisplayAsset:(id)asset
{
  saliencyAreasByUUID = self->_saliencyAreasByUUID;
  uuid = [asset uuid];
  v5 = [(NSDictionary *)saliencyAreasByUUID objectForKeyedSubscript:uuid];

  return v5;
}

- (_PXStoryConcreteSaliencyDataSource)initWithSaliencyAreasByUUID:(id)d rawSaliencyAreasByUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = _PXStoryConcreteSaliencyDataSource;
  v8 = [(_PXStoryConcreteSaliencyDataSource *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    saliencyAreasByUUID = v8->_saliencyAreasByUUID;
    v8->_saliencyAreasByUUID = v9;

    v11 = [iDCopy copy];
    rawSaliencyAreasByUUID = v8->_rawSaliencyAreasByUUID;
    v8->_rawSaliencyAreasByUUID = v11;
  }

  return v8;
}

@end