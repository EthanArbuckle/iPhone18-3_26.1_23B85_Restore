@interface TUICapslockAccessory
- (TUICapslockAccessory)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUICapslockAccessory

- (TUICapslockAccessory)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = TUICapslockAccessory;
  return [(TUICursorAccessory *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = TUICapslockAccessory;
  [(TUICursorAccessory *)&v3 encodeWithCoder:coder];
}

@end