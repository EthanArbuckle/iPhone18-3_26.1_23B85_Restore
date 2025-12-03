@interface UISDisplayShape
- (UISDisplayShape)initWithXPCDictionary:(id)dictionary;
@end

@implementation UISDisplayShape

- (UISDisplayShape)initWithXPCDictionary:(id)dictionary
{
  v4.receiver = self;
  v4.super_class = UISDisplayShape;
  return [(UISDisplayShape *)&v4 init];
}

@end