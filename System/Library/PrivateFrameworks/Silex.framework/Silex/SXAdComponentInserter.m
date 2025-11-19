@interface SXAdComponentInserter
- (BOOL)validateMarker:(id)a3 DOMObjectProvider:(id)a4 layoutProvider:(id)a5;
- (SXAdComponentInserter)initWithConditionEngine:(id)a3 advertisingSettingsFactory:(id)a4;
- (id)cacheValidatorForCache:(id)a3 DOMObjectProvider:(id)a4;
- (id)componentInsertForMarker:(id)a3 DOMObjectProvider:(id)a4 layoutProvider:(id)a5;
- (id)conditionsForDOMObjectProvider:(id)a3;
- (unint64_t)adTypeFromBannerType:(unint64_t)a3;
- (void)componentInsertionCompleted;
@end

@implementation SXAdComponentInserter

- (SXAdComponentInserter)initWithConditionEngine:(id)a3 advertisingSettingsFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXAdComponentInserter;
  v9 = [(SXAdComponentInserter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conditionEngine, a3);
    objc_storeStrong(&v10->_advertisingSettingsFactory, a4);
  }

  return v10;
}

- (id)conditionsForDOMObjectProvider:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  v7 = [(SXAdComponentInserter *)self advertisingSettingsFactory];
  v8 = [v7 createAdvertisingSettingsWithDOMObjectProvider:v5];

  v9 = [v8 distanceFromMedia];
  if (v10)
  {
    v11 = [[SXTraitDistanceComponentInsertionCondition alloc] initWithTrait:42 otherTrait:16 distance:v9, v10];
    [v6 addObject:v11];
  }

  v12 = [[SXTraitDistanceComponentInsertionCondition alloc] initWithTrait:16 otherTrait:16 distance:0x4059000000000000, 2];
  [v6 addObject:v12];
  v13 = objc_alloc_init(SXParentContentDisplayCondition);
  [v6 addObject:v13];

  return v6;
}

- (BOOL)validateMarker:(id)a3 DOMObjectProvider:(id)a4 layoutProvider:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SXAdComponentInserter *)self advertisingSettingsFactory];
  v12 = [v11 createAdvertisingSettingsWithDOMObjectProvider:v9];

  if (!v12 || ![v12 frequency] || objc_msgSend(v12, "frequency") == 1 && -[SXAdComponentInserter insertedCount](self, "insertedCount") > 0)
  {
    goto LABEL_17;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = [v8 path];
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v13);
        }

        if (![*(*(&v29 + 1) + 8 * i) allowAutoplacedAds])
        {

          goto LABEL_17;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  if (-[SXAdComponentInserter insertedCount](self, "insertedCount") < 1 || ([v10 documentSize], v19 = v18, -[SXAdComponentInserter lastInsertedYOffset](self, "lastInsertedYOffset"), v21 = v19 - v20, objc_msgSend(v10, "viewportSize"), v23 = v21 / (v21 / v22 * (objc_msgSend(v12, "frequency") / 10.0)), objc_msgSend(v8, "approximateLocation"), v25 = v24, -[SXAdComponentInserter lastInsertedYOffset](self, "lastInsertedYOffset"), v25 >= v26 + v23))
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

- (id)componentInsertForMarker:(id)a3 DOMObjectProvider:(id)a4 layoutProvider:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(SXAdComponentInserter *)self advertisingSettingsFactory];
  v12 = [v11 createAdvertisingSettingsWithDOMObjectProvider:v10];

  v13 = -[SXInsertedAdComponent initWithAdType:]([SXInsertedAdComponent alloc], "initWithAdType:", -[SXAdComponentInserter adTypeFromBannerType:](self, "adTypeFromBannerType:", [v12 bannerType]));
  v14 = [SXInsertComponentLayout alloc];
  v15 = [v9 columnLayout];
  v16 = [v15 documentLayout];
  v17 = -[SXInsertComponentLayout initWithColumnRange:](v14, "initWithColumnRange:", 0, [v16 columns]);

  [(SXInsertComponentLayout *)v17 setIgnoreDocumentMargin:3];
  v18 = [v12 layout];
  v19 = [v18 margin];

  if (!v19)
  {
    v19 = [v9 suggestedMarginForMarker:v8];
  }

  [(SXInsertComponentLayout *)v17 setMargin:v19];
  [v8 approximateLocation];
  [(SXAdComponentInserter *)self setLastInsertedYOffset:v20];
  [(SXAdComponentInserter *)self setInsertedCount:[(SXAdComponentInserter *)self insertedCount]+ 1];
  v21 = [[SXComponentInsert alloc] initWithComponent:v13 componentLayout:v17];

  return v21;
}

- (id)cacheValidatorForCache:(id)a3 DOMObjectProvider:(id)a4
{
  v5 = a4;
  v6 = [(SXAdComponentInserter *)self advertisingSettingsFactory];
  v7 = [v6 createAdvertisingSettingsWithDOMObjectProvider:v5];

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

- (unint64_t)adTypeFromBannerType:(unint64_t)a3
{
  if (a3 - 2 >= 3)
  {
    return 1;
  }

  else
  {
    return a3 + 2;
  }
}

@end