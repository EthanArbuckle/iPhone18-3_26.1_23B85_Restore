@interface ACTUserActionStreamFactory
+ (id)userActionStreamWithParameters:(id)a3 delegate:(id)a4;
@end

@implementation ACTUserActionStreamFactory

+ (id)userActionStreamWithParameters:(id)a3 delegate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:@"UserActionStream"];
  v8 = v7;
  if (v7)
  {
    v9 = NSClassFromString(v7);
  }

  else
  {
    v9 = _ACTUserActionStream;
  }

  v10 = [(objc_class *)v9 userActionStreamWithParameters:v5 delegate:v6];

  return v10;
}

@end