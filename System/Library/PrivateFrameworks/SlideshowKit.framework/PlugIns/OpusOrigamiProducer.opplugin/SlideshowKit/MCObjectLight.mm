@interface MCObjectLight
+ (id)objectWithImprint:(id)imprint;
@end

@implementation MCObjectLight

+ (id)objectWithImprint:(id)imprint
{
  result = NSClassFromString([imprint objectForKey:@"type"]);
  if (result)
  {
    v5 = [[result alloc] initWithImprint:imprint];

    return v5;
  }

  return result;
}

@end