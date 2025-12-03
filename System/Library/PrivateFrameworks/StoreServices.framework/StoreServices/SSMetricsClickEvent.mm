@interface SSMetricsClickEvent
- (SSMetricsClickEvent)init;
- (id)description;
- (void)setLocationWithEventLocations:(id)locations;
@end

@implementation SSMetricsClickEvent

- (SSMetricsClickEvent)init
{
  v5.receiver = self;
  v5.super_class = SSMetricsClickEvent;
  v2 = [(SSMetricsBaseEvent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSMetricsMutableEvent *)v2 setEventType:@"click"];
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = SSMetricsClickEvent;
  v4 = [(SSMetricsBaseEvent *)&v13 description];
  actionType = [(SSMetricsClickEvent *)self actionType];
  targetType = [(SSMetricsClickEvent *)self targetType];
  targetIdentifier = [(SSMetricsClickEvent *)self targetIdentifier];
  positionX = [(SSMetricsClickEvent *)self positionX];
  positionY = [(SSMetricsClickEvent *)self positionY];
  impressions = [(SSMetricsClickEvent *)self impressions];
  v11 = [v3 stringWithFormat:@"%@: %@ [%@, %@]; [%@, %@]; %@", v4, actionType, targetType, targetIdentifier, positionX, positionY, impressions];;

  return v11;
}

@end