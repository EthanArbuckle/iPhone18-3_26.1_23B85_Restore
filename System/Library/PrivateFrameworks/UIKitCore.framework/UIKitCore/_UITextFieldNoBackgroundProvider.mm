@interface _UITextFieldNoBackgroundProvider
- (void)addToTextField:(id)field;
@end

@implementation _UITextFieldNoBackgroundProvider

- (void)addToTextField:(id)field
{
  fieldCopy = field;
  v6.receiver = self;
  v6.super_class = _UITextFieldNoBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v6 addToTextField:fieldCopy];
  if (dyld_program_sdk_at_least())
  {
    [fieldCopy setClipsToBounds:0];
    _contentView = [fieldCopy _contentView];
    [_contentView setClipsToBounds:0];
  }
}

@end