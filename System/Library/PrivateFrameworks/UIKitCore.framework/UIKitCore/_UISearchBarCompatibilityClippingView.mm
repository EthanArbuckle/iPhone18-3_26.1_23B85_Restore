@interface _UISearchBarCompatibilityClippingView
- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to;
@end

@implementation _UISearchBarCompatibilityClippingView

- (void)_addSubview:(id)subview positioned:(int64_t)positioned relativeTo:(id)to
{
  subviewCopy = subview;
  toCopy = to;
  if (positioned == -2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    subviews = [(UIView *)self subviews];
    for (i = [subviews indexOfObject:toCopy]; ; ++i)
    {
      if (i >= [subviews count])
      {

        goto LABEL_8;
      }

      v12 = [subviews objectAtIndexedSubscript:i];
      if ([v12 _isKnownUISearchBarComponentContainer])
      {
        break;
      }
    }

    v14.receiver = self;
    v14.super_class = _UISearchBarCompatibilityClippingView;
    [(UIView *)&v14 _addSubview:subviewCopy positioned:-3 relativeTo:v12];
  }

  else
  {
LABEL_8:
    v13.receiver = self;
    v13.super_class = _UISearchBarCompatibilityClippingView;
    [(UIView *)&v13 _addSubview:subviewCopy positioned:positioned relativeTo:toCopy];
  }
}

@end