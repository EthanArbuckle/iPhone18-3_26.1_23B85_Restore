@interface SPRInstallDelegate
- (void)onUpdateWithEvent:(int64_t)a3 progress:(int64_t)a4;
@end

@implementation SPRInstallDelegate

- (void)onUpdateWithEvent:(int64_t)a3 progress:(int64_t)a4
{
  if (a3 == 3)
  {
    v7 = *self->installProgress;
    v6 = *&self->installProgress[8];

    v7(a4);
  }
}

@end