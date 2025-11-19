@interface _UISceneHostingContentSizePreferenceHostComponent
- (CGSize)preferredContentSize;
- (_UISceneHostingContentSizePreferenceHostReceiving)contentSizePreferenceReceiver;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)setContentSizePreferenceReceiver:(id)a3;
@end

@implementation _UISceneHostingContentSizePreferenceHostComponent

- (CGSize)preferredContentSize
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  [v3 preferredContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v5 = a4;
  v6 = [v5 settingsDiff];
  v7 = [v5 transitionContext];

  if ([v6 containsProperty:sel_preferredContentSize])
  {
    v8 = [(FBSSceneComponent *)self hostScene];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83___UISceneHostingContentSizePreferenceHostComponent_scene_didUpdateClientSettings___block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    [v8 ui_performBlock:v9 withTransitionContext:v7];
  }
}

- (void)setContentSizePreferenceReceiver:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_contentSizePreferenceReceiver, v4);
  [(_UISceneHostingContentSizePreferenceHostComponent *)self preferredContentSize];
  [v4 setPreferredContentSize:?];
}

- (_UISceneHostingContentSizePreferenceHostReceiving)contentSizePreferenceReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_contentSizePreferenceReceiver);

  return WeakRetained;
}

@end