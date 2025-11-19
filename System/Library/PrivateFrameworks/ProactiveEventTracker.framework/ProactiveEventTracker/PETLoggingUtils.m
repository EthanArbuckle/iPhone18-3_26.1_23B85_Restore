@interface PETLoggingUtils
+ (id)keyStringForEvent:(id)a3 featureId:(id)a4 stringifiedProperties:(id)a5 metaData:(id)a6;
+ (id)keyStringForStringifiedPairs:(id)a3;
+ (void)_pushToBuffer:(id)a3 keyStringForStringifiedPairs:(id)a4;
@end

@implementation PETLoggingUtils

+ (void)_pushToBuffer:(id)a3 keyStringForStringifiedPairs:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = v6 - 1;
    do
    {
      v10 = [v5 keyAtIndex:v8];
      [v12 appendString:v10];

      [v12 appendString:@":"];
      v11 = [v5 valueAtIndex:v8];
      [v12 appendString:v11];

      if (v8 < v9)
      {
        [v12 appendString:@":"];
      }

      ++v8;
    }

    while (v7 != v8);
  }
}

+ (id)keyStringForStringifiedPairs:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [a1 _pushToBuffer:v5 keyStringForStringifiedPairs:v4];

  return v5;
}

+ (id)keyStringForEvent:(id)a3 featureId:(id)a4 stringifiedProperties:(id)a5 metaData:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [@"com.apple.proactive." mutableCopy];
  [v14 appendString:v12];

  [v14 appendString:@"."];
  [v14 appendString:v13];

  if ([v10 count])
  {
    [v14 appendString:@"."];
    [a1 _pushToBuffer:v14 keyStringForStringifiedPairs:v10];
  }

  if ([v11 count])
  {
    [v14 appendString:@"."];
    [a1 _pushToBuffer:v14 keyStringForStringifiedPairs:v11];
  }

  v15 = [v14 copy];

  return v15;
}

@end