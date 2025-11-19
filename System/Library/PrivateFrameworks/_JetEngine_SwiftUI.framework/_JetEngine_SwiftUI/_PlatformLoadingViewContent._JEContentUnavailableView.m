@interface _PlatformLoadingViewContent._JEContentUnavailableView
- (void)layoutSubviews;
@end

@implementation _PlatformLoadingViewContent._JEContentUnavailableView

- (void)layoutSubviews
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_1B7A49FDC();
}

@end