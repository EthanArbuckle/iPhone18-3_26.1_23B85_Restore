@interface SXAdComponentInserter
- (BOOL)validateMarker:(id)marker DOMObjectProvider:(id)provider layoutProvider:(id)layoutProvider;
- (SXAdComponentInserter)initWithConditionEngine:(id)engine advertisingSettingsFactory:(id)factory;
- (id)cacheValidatorForCache:(id)cache DOMObjectProvider:(id)provider;
- (id)componentInsertForMarker:(id)marker DOMObjectProvider:(id)provider layoutProvider:(id)layoutProvider;
- (id)conditionsForDOMObjectProvider:(id)provider;
- (unint64_t)adTypeFromBannerType:(unint64_t)type;
- (void)componentInsertionCompleted;
@end

@implementation SXAdComponentInserter

- (SXAdComponentInserter)initWithConditionEngine:(id)engine advertisingSettingsFactory:(id)factory
{
  engineCopy = engine;
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = SXAdComponentInserter;
  v9 = [(SXAdComponentInserter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conditionEngine, engine);
    objc_storeStrong(&v10->_advertisingSettingsFactory, factory);
  }

  return v10;
}

- (id)conditionsForDOMObjectProvider:(id)provider
{
  v4 = MEMORY[0x1E695DF70];
  providerCopy = provider;
  array = [v4 array];
  advertisingSettingsFactory = [(SXAdComponentInserter *)self advertisingSettingsFactory];
  v8 = [advertisingSettingsFactory createAdvertisingSettingsWithDOMObjectProvider:providerCopy];

  distanceFromMedia = [v8 distanceFromMedia];
  if (v10)
  {
    v11 = [[SXTraitDistanceComponentInsertionCondition alloc] initWithTrait:42 otherTrait:16 distance:distanceFromMedia, v10];
    [array addObject:v11];
  }

  v12 = [[SXTraitDistanceComponentInsertionCondition alloc] initWithTrait:16 otherTrait:16 distance:0x4059000000000000, 2];
  [array addObject:v12];
  v13 = objc_alloc_init(SXParentContentDisplayCondition);
  [array addObject:v13];

  return array;
}

- (BOOL)validateMarker:(id)marker DOMObjectProvider:(id)provider layoutProvider:(id)layoutProvider
{
  v34 = *MEMORY[0x1E69E9840];
  markerCopy = marker;
  providerCopy = provider;
  layoutProviderCopy = layoutProvider;
  advertisingSettingsFactory = [(SXAdComponentInserter *)self advertisingSettingsFactory];
  v12 = [advertisingSettingsFactory createAdvertisingSettingsWithDOMObjectProvider:providerCopy];

  if (!v12 || ![v12 frequency] || objc_msgSend(v12, "frequency") == 1 && -[SXAdComponentInserter insertedCount](self, "insertedCount") > 0)
  {
    goto LABEL_17;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  path = [markerCopy path];
  v14 = [path countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(path);
        }

        if (![*(*(&v29 + 1) + 8 * i) allowAutoplacedAds])
        {

          goto LABEL_17;
        }
      }

      v15 = [path countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  if (-[SXAdComponentInserter insertedCount](self, "insertedCount") < 1 || ([layoutProviderCopy documentSize], v19 = v18, -[SXAdComponentInserter lastInsertedYOffset](self, "lastInsertedYOffset"), v21 = v19 - v20, objc_msgSend(layoutProviderCopy, "viewportSize"), v23 = v21 / (v21 / v22 * (objc_msgSend(v12, "frequency") / 10.0)), objc_msgSend(markerCopy, "approximateLocation"), v25 = v24, -[SXAdComponentInserter lastInsertedYOffset](self, "lastInsertedYOffset"), v25 >= v26 + v23))
  {
    v27 = 1;
  }

  else
  {
LABEL_17:
    v27 = 0;
  }

  return v27;
}

- (id)componentInsertForMarker:(id)marker DOMObjectProvider:(id)provider layoutProvider:(id)layoutProvider
{
  markerCopy = marker;
  layoutProviderCopy = layoutProvider;
  providerCopy = provider;
  advertisingSettingsFactory = [(SXAdComponentInserter *)self advertisingSettingsFactory];
  v12 = [advertisingSettingsFactory createAdvertisingSettingsWithDOMObjectProvider:providerCopy];

  v13 = -[SXInsertedAdComponent initWithAdType:]([SXInsertedAdComponent alloc], "initWithAdType:", -[SXAdComponentInserter adTypeFromBannerType:](self, "adTypeFromBannerType:", [v12 bannerType]));
  v14 = [SXInsertComponentLayout alloc];
  columnLayout = [layoutProviderCopy columnLayout];
  documentLayout = [columnLayout documentLayout];
  v17 = -[SXInsertComponentLayout initWithColumnRange:](v14, "initWithColumnRange:", 0, [documentLayout columns]);

  [(SXInsertComponentLayout *)v17 setIgnoreDocumentMargin:3];
  layout = [v12 layout];
  margin = [layout margin];

  if (!margin)
  {
    margin = [layoutProviderCopy suggestedMarginForMarker:markerCopy];
  }

  [(SXInsertComponentLayout *)v17 setMargin:margin];
  [markerCopy approximateLocation];
  [(SXAdComponentInserter *)self setLastInsertedYOffset:v20];
  [(SXAdComponentInserter *)self setInsertedCount:[(SXAdComponentInserter *)self insertedCount]+ 1];
  v21 = [[SXComponentInsert alloc] initWithComponent:v13 componentLayout:v17];

  return v21;
}

- (id)cacheValidatorForCache:(id)cache DOMObjectProvider:(id)provider
{
  providerCopy = provider;
  advertisingSettingsFactory = [(SXAdComponentInserter *)self advertisingSettingsFactory];
  v7 = [advertisingSettingsFactory createAdvertisingSettingsWithDOMObjectProvider:providerCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__SXAdComponentInserter_cacheValidatorForCache_DOMObjectProvider___block_invoke;
  v11[3] = &unk_1E84FFFE8;
  v11[4] = self;
  v12 = v7;
  v8 = v7;
  v9 = [SXBlockComponentInsertionCacheValidator validatorWithBlock:v11];

  return v9;
}

uint64_t __66__SXAdComponentInserter_cacheValidatorForCache_DOMObjectProvider___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 advertisingSettingsFactory];
  v7 = [v6 createAdvertisingSettingsWithDOMObjectProvider:v5];

  v8 = [*(a1 + 40) isEqual:v7];
  return v8;
}

- (void)componentInsertionCompleted
{
  [(SXAdComponentInserter *)self setLastInsertedYOffset:0.0];

  [(SXAdComponentInserter *)self setInsertedCount:0];
}

- (unint64_t)adTypeFromBannerType:(unint64_t)type
{
  if (type - 2 >= 3)
  {
    return 1;
  }

  else
  {
    return type + 2;
  }
}

@end