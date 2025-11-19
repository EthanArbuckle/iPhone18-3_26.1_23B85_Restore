@interface _UITableViewContainerView
- (_UITableViewContainerView)init;
@end

@implementation _UITableViewContainerView

- (_UITableViewContainerView)init
{
  v5.receiver = self;
  v5.super_class = _UITableViewContainerView;
  v2 = [(UIView *)&v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(UIView *)v2 setAutoresizesSubviews:0];
    [(UIView *)v3 setEdgesPreservingSuperviewLayoutMargins:15];
    [(UIView *)v3 setLayoutMargins:0.0, 0.0, 0.0, 0.0];
  }

  return v3;
}

@end