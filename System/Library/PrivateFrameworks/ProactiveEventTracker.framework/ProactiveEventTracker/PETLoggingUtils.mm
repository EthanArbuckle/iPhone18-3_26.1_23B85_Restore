@interface PETLoggingUtils
+ (id)keyStringForEvent:(id)event featureId:(id)id stringifiedProperties:(id)properties metaData:(id)data;
+ (id)keyStringForStringifiedPairs:(id)pairs;
+ (void)_pushToBuffer:(id)buffer keyStringForStringifiedPairs:(id)pairs;
@end

@implementation PETLoggingUtils

+ (void)_pushToBuffer:(id)buffer keyStringForStringifiedPairs:(id)pairs
{
  bufferCopy = buffer;
  pairsCopy = pairs;
  v6 = [pairsCopy count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = v6 - 1;
    do
    {
      v10 = [pairsCopy keyAtIndex:v8];
      [bufferCopy appendString:v10];

      [bufferCopy appendString:@":"];
      v11 = [pairsCopy valueAtIndex:v8];
      [bufferCopy appendString:v11];

      if (v8 < v9)
      {
        [bufferCopy appendString:@":"];
      }

      ++v8;
    }

    while (v7 != v8);
  }
}

+ (id)keyStringForStringifiedPairs:(id)pairs
{
  pairsCopy = pairs;
  v5 = objc_opt_new();
  [self _pushToBuffer:v5 keyStringForStringifiedPairs:pairsCopy];

  return v5;
}

+ (id)keyStringForEvent:(id)event featureId:(id)id stringifiedProperties:(id)properties metaData:(id)data
{
  propertiesCopy = properties;
  dataCopy = data;
  idCopy = id;
  eventCopy = event;
  v14 = [@"com.apple.proactive." mutableCopy];
  [v14 appendString:idCopy];

  [v14 appendString:@"."];
  [v14 appendString:eventCopy];

  if ([propertiesCopy count])
  {
    [v14 appendString:@"."];
    [self _pushToBuffer:v14 keyStringForStringifiedPairs:propertiesCopy];
  }

  if ([dataCopy count])
  {
    [v14 appendString:@"."];
    [self _pushToBuffer:v14 keyStringForStringifiedPairs:dataCopy];
  }

  v15 = [v14 copy];

  return v15;
}

@end