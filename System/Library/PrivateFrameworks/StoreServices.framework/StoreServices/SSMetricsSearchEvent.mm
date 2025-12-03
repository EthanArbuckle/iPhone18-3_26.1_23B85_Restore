@interface SSMetricsSearchEvent
- (SSMetricsSearchEvent)init;
- (void)setLocationWithEventLocations:(id)locations;
@end

@implementation SSMetricsSearchEvent

- (SSMetricsSearchEvent)init
{
  v5.receiver = self;
  v5.super_class = SSMetricsSearchEvent;
  v2 = [(SSMetricsBaseEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSMetricsMutableEvent *)v2 setEventType:@"search"];
  }

  return v3;
}

- (void)setLocationWithEventLocations:(id)locations
{
  v17 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = locationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        reportingDictionary = [*(*(&v12 + 1) + 8 * v10) reportingDictionary];
        if (reportingDictionary)
        {
          [v5 addObject:reportingDictionary];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(SSMetricsMutableEvent *)self setProperty:v5 forBodyKey:@"location"];
}

@end