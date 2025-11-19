@interface _UIPreviewInteractionTransitionWindow
- (_UIPreviewInteractionTransitionWindow)init;
@end

@implementation _UIPreviewInteractionTransitionWindow

- (_UIPreviewInteractionTransitionWindow)init
{
  v7.receiver = self;
  v7.super_class = _UIPreviewInteractionTransitionWindow;
  v2 = [(UIWindow *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(UIWindow *)v2 setWindowLevel:2150.0];
    v4 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v4];

    [(UIView *)v3 setUserInteractionEnabled:0];
    v5 = v3;
  }

  return v3;
}

@end