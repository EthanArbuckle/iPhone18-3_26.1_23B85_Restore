@interface ACTUserActionStreamFactory
+ (id)userActionStreamWithParameters:(id)parameters delegate:(id)delegate;
@end

@implementation ACTUserActionStreamFactory

+ (id)userActionStreamWithParameters:(id)parameters delegate:(id)delegate
{
  parametersCopy = parameters;
  delegateCopy = delegate;
  v7 = [parametersCopy objectForKey:@"UserActionStream"];
  v8 = v7;
  if (v7)
  {
    v9 = NSClassFromString(v7);
  }

  else
  {
    v9 = _ACTUserActionStream;
  }

  v10 = [(objc_class *)v9 userActionStreamWithParameters:parametersCopy delegate:delegateCopy];

  return v10;
}

@end