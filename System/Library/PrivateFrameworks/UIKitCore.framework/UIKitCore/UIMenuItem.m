@interface UIMenuItem
- (UIMenuItem)initWithTitle:(NSString *)title action:(SEL)action;
@end

@implementation UIMenuItem

- (UIMenuItem)initWithTitle:(NSString *)title action:(SEL)action
{
  v6 = title;
  v10.receiver = self;
  v10.super_class = UIMenuItem;
  v7 = [(UIMenuItem *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(UIMenuItem *)v7 setTitle:v6];
    [(UIMenuItem *)v8 setAction:action];
  }

  return v8;
}

@end