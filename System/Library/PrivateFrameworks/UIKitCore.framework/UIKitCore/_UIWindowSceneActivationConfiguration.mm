@interface _UIWindowSceneActivationConfiguration
- (_UIWindowSceneActivationRequestOptions)options;
- (void)setOptions:(id)a3;
@end

@implementation _UIWindowSceneActivationConfiguration

- (_UIWindowSceneActivationRequestOptions)options
{
  v4.receiver = self;
  v4.super_class = _UIWindowSceneActivationConfiguration;
  v2 = [(UIWindowSceneActivationConfiguration *)&v4 options];

  return v2;
}

- (void)setOptions:(id)a3
{
  v3.receiver = self;
  v3.super_class = _UIWindowSceneActivationConfiguration;
  [(UIWindowSceneActivationConfiguration *)&v3 setOptions:a3];
}

@end