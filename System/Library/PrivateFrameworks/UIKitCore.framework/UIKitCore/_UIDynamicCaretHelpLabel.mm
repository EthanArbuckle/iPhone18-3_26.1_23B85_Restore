@interface _UIDynamicCaretHelpLabel
- (_UIDynamicCaretHelpLabel)initWithImage:(id)image;
@end

@implementation _UIDynamicCaretHelpLabel

- (_UIDynamicCaretHelpLabel)initWithImage:(id)image
{
  v6.receiver = self;
  v6.super_class = _UIDynamicCaretHelpLabel;
  v3 = [(UIImageView *)&v6 initWithImage:image];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setOpaque:0];
    [(UIView *)v4 setUserInteractionEnabled:0];
    [(UIView *)v4 setAutoresizingMask:2];
  }

  return v4;
}

@end