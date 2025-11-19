@interface _PXStoryConcreteSaliencyDataSource
- (_PXStoryConcreteSaliencyDataSource)initWithSaliencyAreasByUUID:(id)a3 rawSaliencyAreasByUUID:(id)a4;
- (id)rawSaliencyAreasForDisplayAsset:(id)a3;
- (id)saliencyAreasForDisplayAsset:(id)a3;
@end

@implementation _PXStoryConcreteSaliencyDataSource

- (id)rawSaliencyAreasForDisplayAsset:(id)a3
{
  rawSaliencyAreasByUUID = self->_rawSaliencyAreasByUUID;
  v4 = [a3 uuid];
  v5 = [(NSDictionary *)rawSaliencyAreasByUUID objectForKeyedSubscript:v4];

  return v5;
}

- (id)saliencyAreasForDisplayAsset:(id)a3
{
  saliencyAreasByUUID = self->_saliencyAreasByUUID;
  v4 = [a3 uuid];
  v5 = [(NSDictionary *)saliencyAreasByUUID objectForKeyedSubscript:v4];

  return v5;
}

- (_PXStoryConcreteSaliencyDataSource)initWithSaliencyAreasByUUID:(id)a3 rawSaliencyAreasByUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _PXStoryConcreteSaliencyDataSource;
  v8 = [(_PXStoryConcreteSaliencyDataSource *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    saliencyAreasByUUID = v8->_saliencyAreasByUUID;
    v8->_saliencyAreasByUUID = v9;

    v11 = [v7 copy];
    rawSaliencyAreasByUUID = v8->_rawSaliencyAreasByUUID;
    v8->_rawSaliencyAreasByUUID = v11;
  }

  return v8;
}

@end