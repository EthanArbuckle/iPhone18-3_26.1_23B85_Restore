@interface _UIBarSection
- (NSArray)groups;
- (NSArray)itemGroups;
- (NSString)description;
- (NSString)identifier;
- (_UIBarSection)init;
- (_UIBarSection)initWithPreferredPlacement:(int64_t)placement item:(id)item;
- (_UIBarSection)initWithPreferredPlacement:(int64_t)placement items:(id)items;
- (_UIBarSectionOwner)_owner;
- (void)setGroups:(id)groups;
- (void)setIdentifier:(id)identifier;
- (void)setItemGroups:(id)groups;
@end

@implementation _UIBarSection

- (NSString)identifier
{
  if (*(self + OBJC_IVAR____UIBarSection_identifier + 8))
  {

    v2 = sub_18A4A7258();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSArray)groups
{
  sub_188A34624(0, &qword_1ED48C698);

  v2 = sub_18A4A7518();

  return v2;
}

- (_UIBarSection)initWithPreferredPlacement:(int64_t)placement items:(id)items
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18A64B710;
  *(v7 + 32) = [objc_allocWithZone(_UIBarSectionItemGroup) initWithItems_];
  sub_188A34624(0, &qword_1ED48C698);
  v8 = sub_18A4A7518();

  v9 = [(_UIBarSection *)self initWithPreferredPlacement:placement groups:v8];

  return v9;
}

- (void)setGroups:(id)groups
{
  sub_188A34624(0, &qword_1ED48C698);
  *(self + OBJC_IVAR____UIBarSection_groups) = sub_18A4A7548();
  selfCopy = self;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong _sectionDidUpdateGroups_];
    swift_unknownObjectRelease();
  }
}

- (_UIBarSectionOwner)_owner
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSArray)itemGroups
{
  selfCopy = self;
  sub_188E7EE68();

  sub_188A34624(0, &unk_1ED48DBD0);
  v3 = sub_18A4A7518();

  return v3;
}

- (void)setItemGroups:(id)groups
{
  sub_188A34624(0, &unk_1ED48DBD0);
  v4 = sub_18A4A7548();
  selfCopy = self;
  sub_188E7F08C(v4);
}

- (void)setIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_18A4A7288();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____UIBarSection_identifier);
  *v6 = v4;
  v6[1] = v5;
}

- (_UIBarSection)initWithPreferredPlacement:(int64_t)placement item:(id)item
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18A64B710;
  *(v7 + 32) = item;
  sub_188A34624(0, &qword_1ED48E8C0);
  itemCopy = item;
  v9 = sub_18A4A7518();

  v10 = [(_UIBarSection *)self initWithPreferredPlacement:placement items:v9];

  return v10;
}

- (NSString)description
{
  selfCopy = self;
  sub_188E7F3CC();

  v3 = sub_18A4A7258();

  return v3;
}

- (_UIBarSection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end