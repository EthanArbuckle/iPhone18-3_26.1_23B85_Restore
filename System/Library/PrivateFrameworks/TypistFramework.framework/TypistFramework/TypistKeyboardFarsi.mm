@interface TypistKeyboardFarsi
- (id)init:(id)init options:(id)options;
@end

@implementation TypistKeyboardFarsi

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardFarsi;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"fa"];
}

@end