@interface WFEvent
- (Class)codableEventClass;
- (id)coreAnalyticsKey;
- (id)debugDescription;
- (id)description;
- (id)dictionaryRepresentation;
- (id)propertyNames;
- (id)serializableEvent;
- (void)track;
@end

@implementation WFEvent

- (void)track
{
  v3 = +[WFEventTracker sharedTracker];
  [v3 trackEvent:self];
}

- (id)propertyNames
{
  outCount = 0;
  v2 = objc_opt_class();
  v3 = class_copyPropertyList(v2, &outCount);
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:outCount];
  if (v3)
  {
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:property_getName(v3[i])];
        [v4 addObject:v6];
      }
    }

    free(v3);
  }

  return v4;
}

- (id)serializableEvent
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init([(WFEvent *)self codableEventClass]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  propertyNames = [(WFEvent *)self propertyNames];
  v5 = [propertyNames countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(propertyNames);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(WFEvent *)self valueForKey:v9];
        serializablePropertyTransformers = [objc_opt_class() serializablePropertyTransformers];
        v12 = [serializablePropertyTransformers objectForKey:v9];

        if (v12)
        {
          v13 = [v12 transformedValue:v10];

          v10 = v13;
        }

        if (!v10)
        {
          v10 = [v3 valueForKey:v9];
        }

        [v3 setValue:v10 forKey:v9];
      }

      v6 = [propertyNames countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)dictionaryRepresentation
{
  serializableEvent = [(WFEvent *)self serializableEvent];
  dictionaryRepresentation = [serializableEvent dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)coreAnalyticsKey
{
  dictionaryRepresentation = [(WFEvent *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation objectForKey:@"key"];

  if (v3)
  {
    v4 = [@"com.apple.shortcuts." stringByAppendingString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Class)codableEventClass
{
  v2 = objc_opt_class();

  return [v2 codableEventClass];
}

- (id)debugDescription
{
  serializableEvent = [(WFEvent *)self serializableEvent];
  v3 = [serializableEvent debugDescription];

  return v3;
}

- (id)description
{
  serializableEvent = [(WFEvent *)self serializableEvent];
  v3 = [serializableEvent description];

  return v3;
}

@end