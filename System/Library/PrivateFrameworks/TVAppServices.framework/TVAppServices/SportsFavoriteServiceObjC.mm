@interface SportsFavoriteServiceObjC
+ (uint64_t)accountDidChange;
- (SportsFavoriteServiceObjC)init;
@end

@implementation SportsFavoriteServiceObjC

- (SportsFavoriteServiceObjC)init
{
  v3.receiver = self;
  v3.super_class = SportsFavoriteServiceObjC;
  return [(SportsFavoriteServiceObjC *)&v3 init];
}

+ (uint64_t)accountDidChange
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26CD3C1E0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_26CC19E10();
  *(v0 + 32) = 0xD000000000000038;
  *(v0 + 40) = 0x800000026CD4E6D0;
  sub_26CD3A3DC();

  if (qword_280BBB2D0 != -1)
  {
    swift_once();
  }

  sub_26CCA27A0();
  sub_26CCA27A0();

  if (qword_280BBB460 != -1)
  {
    swift_once();
  }

  return sub_26CC96AB0(2);
}

@end