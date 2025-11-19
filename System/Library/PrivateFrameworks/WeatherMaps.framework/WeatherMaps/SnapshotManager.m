@interface SnapshotManager
- (void)voiceOverStatusDidChangeWithNotification:(id)a3;
@end

@implementation SnapshotManager

- (void)voiceOverStatusDidChangeWithNotification:(id)a3
{
  v3 = sub_220FBFDC0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FBFD90();

  sub_220EB7434();

  (*(v4 + 8))(v7, v3);
}

@end