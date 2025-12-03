@interface DownloadTask
- (void)cancel;
@end

@implementation DownloadTask

- (void)cancel
{
  selfCopy = self;
  sub_1C6FF4144();
}

@end