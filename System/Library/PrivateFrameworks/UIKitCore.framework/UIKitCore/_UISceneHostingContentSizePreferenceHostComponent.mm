@interface _UISceneHostingContentSizePreferenceHostComponent
- (CGSize)preferredContentSize;
- (_UISceneHostingContentSizePreferenceHostReceiving)contentSizePreferenceReceiver;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)setContentSizePreferenceReceiver:(id)receiver;
@end

@implementation _UISceneHostingContentSizePreferenceHostComponent

- (CGSize)preferredContentSize
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  [clientSettings preferredContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  transitionContext = [settingsCopy transitionContext];

  if ([settingsDiff containsProperty:sel_preferredContentSize])
  {
    hostScene = [(FBSSceneComponent *)self hostScene];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83___UISceneHostingContentSizePreferenceHostComponent_scene_didUpdateClientSettings___block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    [hostScene ui_performBlock:v9 withTransitionContext:transitionContext];
  }
}

- (void)setContentSizePreferenceReceiver:(id)receiver
{
  receiverCopy = receiver;
  objc_storeWeak(&self->_contentSizePreferenceReceiver, receiverCopy);
  [(_UISceneHostingContentSizePreferenceHostComponent *)self preferredContentSize];
  [receiverCopy setPreferredContentSize:?];
}

- (_UISceneHostingContentSizePreferenceHostReceiving)contentSizePreferenceReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_contentSizePreferenceReceiver);

  return WeakRetained;
}

@end