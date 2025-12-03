@interface TypistKeyboardBurmese
- (id)init:(id)init options:(id)options;
@end

@implementation TypistKeyboardBurmese

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardBurmese;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"my"];
}

@end