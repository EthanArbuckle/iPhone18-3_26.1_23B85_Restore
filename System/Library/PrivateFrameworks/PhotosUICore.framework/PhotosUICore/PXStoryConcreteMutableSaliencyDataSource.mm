@interface PXStoryConcreteMutableSaliencyDataSource
- (PXStoryConcreteMutableSaliencyDataSource)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)rawSaliencyAreasForDisplayAsset:(id)asset;
- (id)saliencyAreasForDisplayAsset:(id)asset;
- (void)setSaliencyAreas:(id)areas rawSaliencyAreas:(id)saliencyAreas forDisplayAsset:(id)asset;
@end

@implementation PXStoryConcreteMutableSaliencyDataSource

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_PXStoryConcreteSaliencyDataSource alloc];
  saliencyAreasByUUID = self->_saliencyAreasByUUID;
  rawSaliencyAreasByUUID = self->_rawSaliencyAreasByUUID;

  return [(_PXStoryConcreteSaliencyDataSource *)v4 initWithSaliencyAreasByUUID:saliencyAreasByUUID rawSaliencyAreasByUUID:rawSaliencyAreasByUUID];
}

- (id)rawSaliencyAreasForDisplayAsset:(id)asset
{
  rawSaliencyAreasByUUID = self->_rawSaliencyAreasByUUID;
  uuid = [asset uuid];
  v5 = [(NSMutableDictionary *)rawSaliencyAreasByUUID objectForKeyedSubscript:uuid];

  return v5;
}

- (id)saliencyAreasForDisplayAsset:(id)asset
{
  saliencyAreasByUUID = self->_saliencyAreasByUUID;
  uuid = [asset uuid];
  v5 = [(NSMutableDictionary *)saliencyAreasByUUID objectForKeyedSubscript:uuid];

  return v5;
}

- (void)setSaliencyAreas:(id)areas rawSaliencyAreas:(id)saliencyAreas forDisplayAsset:(id)asset
{
  saliencyAreasCopy = saliencyAreas;
  areasCopy = areas;
  uuid = [asset uuid];
  v10 = [areasCopy copy];

  [(NSMutableDictionary *)self->_saliencyAreasByUUID setObject:v10 forKeyedSubscript:uuid];
  v11 = [saliencyAreasCopy copy];

  [(NSMutableDictionary *)self->_rawSaliencyAreasByUUID setObject:v11 forKeyedSubscript:uuid];
}

- (PXStoryConcreteMutableSaliencyDataSource)init
{
  v8.receiver = self;
  v8.super_class = PXStoryConcreteMutableSaliencyDataSource;
  v2 = [(PXStoryConcreteMutableSaliencyDataSource *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    saliencyAreasByUUID = v2->_saliencyAreasByUUID;
    v2->_saliencyAreasByUUID = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    rawSaliencyAreasByUUID = v2->_rawSaliencyAreasByUUID;
    v2->_rawSaliencyAreasByUUID = v5;
  }

  return v2;
}

@end