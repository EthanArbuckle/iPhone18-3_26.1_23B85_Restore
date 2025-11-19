@interface _UIWindowSceneActivationInteraction
- (_UIWindowSceneActivationInteraction)initWithConfigurationProvider:(id)a3 errorHandler:(id)a4;
@end

@implementation _UIWindowSceneActivationInteraction

- (_UIWindowSceneActivationInteraction)initWithConfigurationProvider:(id)a3 errorHandler:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIWindowSceneActivationInteraction;
  return [(UIWindowSceneActivationInteraction *)&v5 initWithConfigurationProvider:a3 errorHandler:a4];
}

@end