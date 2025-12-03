@interface _UITextFieldVisualStyle_iOS
- (id)parentViewForTextContentView;
@end

@implementation _UITextFieldVisualStyle_iOS

- (id)parentViewForTextContentView
{
  styleSubject = [(_UITextFieldVisualStyle *)self styleSubject];
  _contentView = [styleSubject _contentView];

  return _contentView;
}

@end