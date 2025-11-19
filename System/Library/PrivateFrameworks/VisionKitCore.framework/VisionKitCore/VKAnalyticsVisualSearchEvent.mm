@interface VKAnalyticsVisualSearchEvent
- (BOOL)itemHasFocalPoint;
- (NSString)itemDomain;
- (VKAnalyticsVisualSearchEvent)initWithType:(int64_t)a3 items:(id)a4 interactedItem:(id)a5 serverProcessingTime:(double)a6 customIdentifier:(id)a7;
- (id)coreAnalyticsDictionary;
- (id)description;
- (id)eventKey;
- (void)processItems:(id)a3;
@end

@implementation VKAnalyticsVisualSearchEvent

- (VKAnalyticsVisualSearchEvent)initWithType:(int64_t)a3 items:(id)a4 interactedItem:(id)a5 serverProcessingTime:(double)a6 customIdentifier:(id)a7
{
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = VKAnalyticsVisualSearchEvent;
  v14 = [(VKAnalyticsEvent *)&v19 initWithCustomIdentifier:a7];
  v15 = v14;
  if (v14)
  {
    v14->_eventType = a3;
    v14->_serverProcessingTime = a6;
    objc_storeStrong(&v14->_interactedItem, a5);
    v17 = a6 == 0.0 && v15->_eventType == 2;
    v15->_serverResultWasCached = v17;
    [(VKAnalyticsVisualSearchEvent *)v15 processItems:v12];
  }

  return v15;
}

- (id)eventKey
{
  v2 = [(VKAnalyticsVisualSearchEvent *)self eventType];
  v3 = @"VisualSearchEvent.items.activated";
  if (v2 != 2)
  {
    v3 = 0;
  }

  if (v2 == 1)
  {
    return @"VisualSearchEvent.items.hidden";
  }

  else
  {
    return v3;
  }
}

- (id)coreAnalyticsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = VKMUIStringForVKAnalyticsVisualSearchEventType([(VKAnalyticsVisualSearchEvent *)self eventType]);
  [v3 vk_addKey:@"eventType" forNonNilObject:v4];

  v5 = [(VKAnalyticsEvent *)self bundleIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"bundleIdentifier"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsEvent isPerformingAutomatedTest](self, "isPerformingAutomatedTest")}];
  [v3 setObject:v6 forKeyedSubscript:@"automatedTest"];

  v7 = [(VKAnalyticsVisualSearchEvent *)self eventType];
  if (v7 == 2)
  {
    v14 = [(VKAnalyticsVisualSearchEvent *)self itemDomain];
    [v3 vk_addKey:@"domain" forNonNilObject:v14];

    v15 = MEMORY[0x1E696AD98];
    [(VKAnalyticsVisualSearchEvent *)self serverProcessingTime];
    v16 = [v15 numberWithDouble:?];
    [v3 vk_addKey:@"serverProcessingTime" forNonNilObject:v16];

    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsVisualSearchEvent serverResultWasCached](self, "serverResultWasCached")}];
    [v3 vk_addKey:@"serverResultWasCached" forNonNilObject:v17];

    v11 = [(VKAnalyticsVisualSearchEvent *)self itemDomain];
    v13 = v3;
    v12 = @"domain";
  }

  else
  {
    if (v7 != 1)
    {
      goto LABEL_6;
    }

    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsVisualSearchEvent didInteractWithResultItem](self, "didInteractWithResultItem")}];
    [v3 vk_addKey:@"didInteractWithItem" forNonNilObject:v8];

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsVisualSearchEvent itemCount](self, "itemCount")}];
    [v3 vk_addKey:@"itemCount" forNonNilObject:v9];

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsVisualSearchEvent focalPointItemCount](self, "focalPointItemCount")}];
    [v3 vk_addKey:@"focalPointItemCount" forNonNilObject:v10];

    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsVisualSearchEvent itemCount](self, "itemCount") - -[VKAnalyticsVisualSearchEvent focalPointItemCount](self, "focalPointItemCount")}];
    v12 = @"nonFocalPointItemCount";
    v13 = v3;
  }

  [v13 vk_addKey:v12 forNonNilObject:v11];

LABEL_6:

  return v3;
}

- (void)processItems:(id)a3
{
  v4 = a3;
  -[VKAnalyticsVisualSearchEvent setItemCount:](self, "setItemCount:", [v4 count]);
  v5 = objc_alloc(MEMORY[0x1E696AB50]);
  v6 = [v4 vk_compactMap:&__block_literal_global_19];
  v7 = [v5 initWithArray:v6];
  [(VKAnalyticsVisualSearchEvent *)self setAllItemDomains:v7];

  v8 = [v4 vk_countOfObjectsPassingTest:&__block_literal_global_183];

  [(VKAnalyticsVisualSearchEvent *)self setFocalPointItemCount:v8];
}

id __45__VKAnalyticsVisualSearchEvent_processItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 domainInfo];
  v3 = [v2 domain];

  return v3;
}

uint64_t __45__VKAnalyticsVisualSearchEvent_processItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 domainInfo];
  v3 = [v2 hasFocalPoint];

  return v3;
}

- (NSString)itemDomain
{
  v2 = [(VKAnalyticsVisualSearchEvent *)self interactedItem];
  v3 = [v2 domainInfo];
  v4 = [v3 domain];

  return v4;
}

- (BOOL)itemHasFocalPoint
{
  v2 = [(VKAnalyticsVisualSearchEvent *)self interactedItem];
  v3 = [v2 domainInfo];
  v4 = [v3 hasFocalPoint];

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(VKAnalyticsVisualSearchEvent *)self allItemDomains];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __43__VKAnalyticsVisualSearchEvent_description__block_invoke;
  v24[3] = &unk_1E7BE5D60;
  v25 = v3;
  v26 = v4;
  v22 = v4;
  v5 = v3;
  [v22 enumerateObjectsUsingBlock:v24];
  v21 = MEMORY[0x1E696AEC0];
  v23.receiver = self;
  v23.super_class = VKAnalyticsVisualSearchEvent;
  v20 = [(VKAnalyticsVisualSearchEvent *)&v23 description];
  v6 = VKMUIStringForVKAnalyticsVisualSearchEventType([(VKAnalyticsVisualSearchEvent *)self eventType]);
  v19 = [(VKAnalyticsVisualSearchEvent *)self itemCount];
  v7 = [(VKAnalyticsVisualSearchEvent *)self focalPointItemCount];
  v8 = [(VKAnalyticsVisualSearchEvent *)self nonFocalPointItemCount];
  v9 = VKMUIStringForBool([(VKAnalyticsVisualSearchEvent *)self didInteractWithResultItem]);
  v10 = [(VKAnalyticsVisualSearchEvent *)self itemDomain];
  v11 = VKMUIStringForBool([(VKAnalyticsVisualSearchEvent *)self itemHasFocalPoint]);
  [(VKAnalyticsVisualSearchEvent *)self serverProcessingTime];
  v13 = v12;
  v14 = VKMUIStringForBool([(VKAnalyticsVisualSearchEvent *)self serverResultWasCached]);
  v15 = VKMUIStringForBool([(VKAnalyticsEvent *)self isPerformingAutomatedTest]);
  v16 = [(VKAnalyticsEvent *)self bundleIdentifier];
  v17 = [v21 stringWithFormat:@"%@ \n eventType: %@ \n itemCount: %lu \n focalPointItemCount: %ld \n nonFocalPointItemCount: %ld \n didInteractWithResultItem: %@ \n allDomains: \n %@itemDomain: %@ \n itemHasFocalPoint: %@ \n serverProcessingTime: %f \n serverResultWasCached: %@ \n automatedTest: %@ \n bundleIdentifier: %@ \n ", v20, v6, v19, v7, v8, v9, v5, v10, v11, v13, v14, v15, v16];

  return v17;
}

void __43__VKAnalyticsVisualSearchEvent_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 appendFormat:@"\t%@: %ld\n ", v4, objc_msgSend(v3, "countForObject:", v4)];
}

@end