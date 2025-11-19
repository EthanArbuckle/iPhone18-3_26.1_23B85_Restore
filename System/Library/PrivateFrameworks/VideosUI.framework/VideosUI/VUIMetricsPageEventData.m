@interface VUIMetricsPageEventData
+ (id)createWithMetricsData:(id)a3 pageContext:(id)a4;
+ (id)createWithPageId:(id)a3 andPageType:(id)a4 andEventData:(id)a5;
- (id)generateMetricsDataDictionary;
@end

@implementation VUIMetricsPageEventData

+ (id)createWithPageId:(id)a3 andPageType:(id)a4 andEventData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  [v11 setPageId:v10];

  [v11 setPageType:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 setEventData:v8];
  }

  return v11;
}

+ (id)createWithMetricsData:(id)a3 pageContext:(id)a4
{
  v14[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"pageId"];
  v9 = [v7 objectForKeyedSubscript:@"pageType"];
  v10 = [v7 mutableCopy];

  v14[0] = @"pageId";
  v14[1] = @"pageType";
  v14[2] = @"eventType";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  [v10 removeObjectsForKeys:v11];

  if (v6)
  {
    [v10 setObject:v6 forKey:@"pageContext"];
  }

  v12 = [a1 createWithPageId:v8 andPageType:v9 andEventData:v10];

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