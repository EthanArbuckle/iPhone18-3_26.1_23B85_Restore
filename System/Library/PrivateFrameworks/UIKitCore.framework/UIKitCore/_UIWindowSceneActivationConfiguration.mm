@interface _UIWindowSceneActivationConfiguration
- (_UIWindowSceneActivationRequestOptions)options;
- (void)setOptions:(id)options;
@end

@implementation _UIWindowSceneActivationConfiguration

- (_UIWindowSceneActivationRequestOptions)options
{
  v4.receiver = self;
  v4.super_class = _UIWindowSceneActivationConfiguration;
  options = [(UIWindowSceneActivationConfiguration *)&v4 options];

  return options;
}

- (void)setOptions:(id)options
{
  v3.receiver = self;
  v3.super_class = _UIWindowSceneActivationConfiguration;
  [(UIWindowSceneActivationConfiguration *)&v3 setOptions:options];
}

@end