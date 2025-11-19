@interface MediaPlayerTimeJumpCoordinator
- (void)onCoordinatorTimeJumpCommandIssued:(id)a3;
@end

@implementation MediaPlayerTimeJumpCoordinator

- (void)onCoordinatorTimeJumpCommandIssued:(id)a3
{
  v3 = sub_20C59D1DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59D1AC();

  sub_20C49D9F8();

  (*(v4 + 8))(v6, v3);
}

@end