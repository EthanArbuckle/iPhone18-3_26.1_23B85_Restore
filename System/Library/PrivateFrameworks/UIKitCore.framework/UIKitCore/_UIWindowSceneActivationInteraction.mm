@interface _UIWindowSceneActivationInteraction
- (_UIWindowSceneActivationInteraction)initWithConfigurationProvider:(id)provider errorHandler:(id)handler;
@end

@implementation _UIWindowSceneActivationInteraction

- (_UIWindowSceneActivationInteraction)initWithConfigurationProvider:(id)provider errorHandler:(id)handler
{
  v5.receiver = self;
  v5.super_class = _UIWindowSceneActivationInteraction;
  return [(UIWindowSceneActivationInteraction *)&v5 initWithConfigurationProvider:provider errorHandler:handler];
}

@end