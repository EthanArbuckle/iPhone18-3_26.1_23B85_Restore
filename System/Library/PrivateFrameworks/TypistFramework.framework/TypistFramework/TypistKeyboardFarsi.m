@interface TypistKeyboardFarsi
- (id)init:(id)a3 options:(id)a4;
@end

@implementation TypistKeyboardFarsi

- (id)init:(id)a3 options:(id)a4
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardFarsi;
  return [(TypistKeyboard *)&v5 init:a3 options:a4 locale:@"fa"];
}

@end