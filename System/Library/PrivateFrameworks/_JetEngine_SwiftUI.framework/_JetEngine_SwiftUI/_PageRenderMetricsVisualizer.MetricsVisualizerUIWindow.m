@interface _PageRenderMetricsVisualizer.MetricsVisualizerUIWindow
- (BOOL)canBecomeKeyWindow;
- (_TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizer25MetricsVisualizerUIWindow)initWithCoder:(id)a3;
- (_TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizer25MetricsVisualizerUIWindow)initWithFrame:(CGRect)a3;
- (_TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizer25MetricsVisualizerUIWindow)initWithWindowScene:(id)a3;
- (void)hideDebugUIWindow;
@end

@implementation _PageRenderMetricsVisualizer.MetricsVisualizerUIWindow

- (BOOL)canBecomeKeyWindow
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

- (_TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizer25MetricsVisualizerUIWindow)initWithWindowScene:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11.receiver = self;
  v11.super_class = ObjectType;
  v6 = a3;
  v7 = [(_PageRenderMetricsVisualizer.MetricsVisualizerUIWindow *)&v11 initWithWindowScene:v6];
  v8 = *MEMORY[0x1E69DE7D8];
  v9 = v7;
  [(_PageRenderMetricsVisualizer.MetricsVisualizerUIWindow *)v9 setWindowLevel:v8, v11.receiver, v11.super_class];
  [(_PageRenderMetricsVisualizer.MetricsVisualizerUIWindow *)v9 setUserInteractionEnabled:0];

  return v9;
}

- (_TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizer25MetricsVisualizerUIWindow)initWithCoder:(id)a3
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_1B7A9AD70();
  __break(1u);
  return result;
}

- (void)hideDebugUIWindow
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [(_PageRenderMetricsVisualizer.MetricsVisualizerUIWindow *)self setHidden:1];
}

- (_TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizer25MetricsVisualizerUIWindow)initWithFrame:(CGRect)a3
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end