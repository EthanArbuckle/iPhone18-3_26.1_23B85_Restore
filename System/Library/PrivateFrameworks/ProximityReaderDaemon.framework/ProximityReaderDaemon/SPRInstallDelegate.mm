@interface SPRInstallDelegate
- (void)onUpdateWithEvent:(int64_t)event progress:(int64_t)progress;
@end

@implementation SPRInstallDelegate

- (void)onUpdateWithEvent:(int64_t)event progress:(int64_t)progress
{
  if (event == 3)
  {
    v7 = *self->installProgress;
    v6 = *&self->installProgress[8];

    v7(progress);
  }
}

@end