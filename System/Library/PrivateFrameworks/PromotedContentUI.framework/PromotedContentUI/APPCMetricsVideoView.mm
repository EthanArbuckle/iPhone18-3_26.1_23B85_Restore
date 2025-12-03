@interface APPCMetricsVideoView
- (void)beginAction;
- (void)didAddSubview:(id)subview;
@end

@implementation APPCMetricsVideoView

- (void)didAddSubview:(id)subview
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MetricsVideoView();
  subviewCopy = subview;
  v5 = v6.receiver;
  [(APPCMetricsVideoView *)&v6 didAddSubview:subviewCopy];
  sub_1C19DB7AC(0, 0, 0);
}

- (void)beginAction
{
  selfCopy = self;
  sub_1C1A39934();
}

@end