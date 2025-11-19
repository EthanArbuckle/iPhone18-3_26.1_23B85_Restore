@interface _UIDynamicCaretNoContentView
- (_UIDynamicCaretNoContentView)initWithImage:(id)a3;
@end

@implementation _UIDynamicCaretNoContentView

- (_UIDynamicCaretNoContentView)initWithImage:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIDynamicCaretNoContentView;
  v3 = [(UIImageView *)&v6 initWithImage:a3];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setOpaque:0];
    [(UIView *)v4 setUserInteractionEnabled:0];
    [(UIView *)v4 setAutoresizingMask:18];
  }

  return v4;
}

@end