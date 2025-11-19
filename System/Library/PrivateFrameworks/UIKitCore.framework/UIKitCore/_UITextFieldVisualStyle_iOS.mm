@interface _UITextFieldVisualStyle_iOS
- (id)parentViewForTextContentView;
@end

@implementation _UITextFieldVisualStyle_iOS

- (id)parentViewForTextContentView
{
  v2 = [(_UITextFieldVisualStyle *)self styleSubject];
  v3 = [v2 _contentView];

  return v3;
}

@end