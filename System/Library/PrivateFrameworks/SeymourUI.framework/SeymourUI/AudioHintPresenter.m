@interface AudioHintPresenter
- (void)handleMediaSelectionDidChangeWithItem:(id)a3;
@end

@implementation AudioHintPresenter

- (void)handleMediaSelectionDidChangeWithItem:(id)a3
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C13B574();
  sub_20C13BB64();
  (*(v4 + 8))(v6, v3);
  sub_20B93245C();
  sub_20B935BE8();
}

@end