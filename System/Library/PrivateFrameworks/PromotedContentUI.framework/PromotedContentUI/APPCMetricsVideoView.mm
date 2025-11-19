@interface APPCMetricsVideoView
- (void)beginAction;
- (void)didAddSubview:(id)a3;
@end

@implementation APPCMetricsVideoView

- (void)didAddSubview:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MetricsVideoView();
  v4 = a3;
  v5 = v6.receiver;
  [(APPCMetricsVideoView *)&v6 didAddSubview:v4];
  sub_1C19DB7AC(0, 0, 0);
}

- (void)beginAction
{
  v2 = self;
  sub_1C1A39934();
}

@end