@interface _UISearchBarCompatibilityClippingView
- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5;
@end

@implementation _UISearchBarCompatibilityClippingView

- (void)_addSubview:(id)a3 positioned:(int64_t)a4 relativeTo:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == -2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [(UIView *)self subviews];
    for (i = [v10 indexOfObject:v9]; ; ++i)
    {
      if (i >= [v10 count])
      {

        goto LABEL_8;
      }

      v12 = [v10 objectAtIndexedSubscript:i];
      if ([v12 _isKnownUISearchBarComponentContainer])
      {
        break;
      }
    }

    v14.receiver = self;
    v14.super_class = _UISearchBarCompatibilityClippingView;
    [(UIView *)&v14 _addSubview:v8 positioned:-3 relativeTo:v12];
  }

  else
  {
LABEL_8:
    v13.receiver = self;
    v13.super_class = _UISearchBarCompatibilityClippingView;
    [(UIView *)&v13 _addSubview:v8 positioned:a4 relativeTo:v9];
  }
}

@end