@interface MCObjectLight
+ (id)objectWithImprint:(id)a3;
@end

@implementation MCObjectLight

+ (id)objectWithImprint:(id)a3
{
  result = NSClassFromString([a3 objectForKey:@"type"]);
  if (result)
  {
    v5 = [[result alloc] initWithImprint:a3];

    return v5;
  }

  return result;
}

@end