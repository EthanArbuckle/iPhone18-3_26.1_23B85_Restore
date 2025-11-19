@interface _UITextFieldNoBackgroundProvider
- (void)addToTextField:(id)a3;
@end

@implementation _UITextFieldNoBackgroundProvider

- (void)addToTextField:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _UITextFieldNoBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v6 addToTextField:v4];
  if (dyld_program_sdk_at_least())
  {
    [v4 setClipsToBounds:0];
    v5 = [v4 _contentView];
    [v5 setClipsToBounds:0];
  }
}

@end