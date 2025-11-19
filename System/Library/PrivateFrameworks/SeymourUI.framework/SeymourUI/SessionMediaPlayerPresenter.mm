@interface SessionMediaPlayerPresenter
- (void)handleAudioInterruptionWithNotification:(id)a3;
@end

@implementation SessionMediaPlayerPresenter

- (void)handleAudioInterruptionWithNotification:(id)a3
{
  v3 = sub_20C132614();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1325E4();

  sub_20B67D354(v6);

  (*(v4 + 8))(v6, v3);
}

@end