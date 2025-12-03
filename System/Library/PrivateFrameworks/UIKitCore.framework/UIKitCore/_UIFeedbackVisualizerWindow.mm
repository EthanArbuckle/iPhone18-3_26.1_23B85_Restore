@interface _UIFeedbackVisualizerWindow
- (_UIFeedbackVisualizerWindow)initWithWindowScene:(id)scene;
@end

@implementation _UIFeedbackVisualizerWindow

- (_UIFeedbackVisualizerWindow)initWithWindowScene:(id)scene
{
  v7.receiver = self;
  v7.super_class = _UIFeedbackVisualizerWindow;
  v3 = [(UIWindow *)&v7 initWithWindowScene:scene];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  engineLayers = v3->_engineLayers;
  v3->_engineLayers = strongToStrongObjectsMapTable;

  return v3;
}

@end