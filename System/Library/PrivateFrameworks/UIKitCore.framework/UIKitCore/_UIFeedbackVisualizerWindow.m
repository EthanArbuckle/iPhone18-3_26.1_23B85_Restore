@interface _UIFeedbackVisualizerWindow
- (_UIFeedbackVisualizerWindow)initWithWindowScene:(id)a3;
@end

@implementation _UIFeedbackVisualizerWindow

- (_UIFeedbackVisualizerWindow)initWithWindowScene:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIFeedbackVisualizerWindow;
  v3 = [(UIWindow *)&v7 initWithWindowScene:a3];
  v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  engineLayers = v3->_engineLayers;
  v3->_engineLayers = v4;

  return v3;
}

@end