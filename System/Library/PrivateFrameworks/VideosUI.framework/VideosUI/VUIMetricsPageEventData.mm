@interface VUIMetricsPageEventData
+ (id)createWithMetricsData:(id)data pageContext:(id)context;
+ (id)createWithPageId:(id)id andPageType:(id)type andEventData:(id)data;
- (id)generateMetricsDataDictionary;
@end

@implementation VUIMetricsPageEventData

+ (id)createWithPageId:(id)id andPageType:(id)type andEventData:(id)data
{
  dataCopy = data;
  typeCopy = type;
  idCopy = id;
  v11 = objc_alloc_init(self);
  [v11 setPageId:idCopy];

  [v11 setPageType:typeCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 setEventData:dataCopy];
  }

  return v11;
}

+ (id)createWithMetricsData:(id)data pageContext:(id)context
{
  v14[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dataCopy = data;
  v8 = [dataCopy objectForKeyedSubscript:@"pageId"];
  v9 = [dataCopy objectForKeyedSubscript:@"pageType"];
  v10 = [dataCopy mutableCopy];

  v14[0] = @"pageId";
  v14[1] = @"pageType";
  v14[2] = @"eventType";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  [v10 removeObjectsForKeys:v11];

  if (contextCopy)
  {
    [v10 setObject:contextCopy forKey:@"pageContext"];
  }

  v12 = [self createWithPageId:v8 andPageType:v9 andEventData:v10];

  return v12;
}

- (id)generateMetricsDataDictionary
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = @"pageId";
  v7[1] = @"pageType";
  v8 = vbslq_s8(vceqzq_s64(*&self->_pageId), vdupq_n_s64(&stru_1F5DB25C0), *&self->_pageId);
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:v7 count:2];
  if (self->_eventData)
  {
    v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
    [v4 addEntriesFromDictionary:v3];
    v5 = [v4 copy];

    v3 = v5;
  }

  return v3;
}

@end