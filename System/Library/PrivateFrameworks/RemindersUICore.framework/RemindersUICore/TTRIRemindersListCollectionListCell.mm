@interface TTRIRemindersListCollectionListCell
- (_TtC15RemindersUICore35TTRIRemindersListCollectionListCell)initWithCoder:(id)a3;
- (_TtC15RemindersUICore35TTRIRemindersListCollectionListCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)invalidateIntrinsicContentSize;
@end

@implementation TTRIRemindersListCollectionListCell

- (void)invalidateIntrinsicContentSize
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21D5774E8;
  *(v5 + 24) = v4;
  v8[4] = sub_21D0E622C;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21D0E6204;
  v8[3] = &block_descriptor_17_1;
  v6 = _Block_copy(v8);
  v7 = self;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_21DBF87CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF879C();
  v8 = self;
  v9 = sub_21DBF878C();
  v10 = type metadata accessor for TTRIRemindersListCollectionListCell();
  v11.receiver = v8;
  v11.super_class = v10;
  [(TTRIRemindersListCollectionListCell *)&v11 _bridgedUpdateConfigurationUsingState:v9];

  sub_21D576E14(v7);
  (*(v5 + 8))(v7, v4);
}

- (_TtC15RemindersUICore35TTRIRemindersListCollectionListCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore35TTRIRemindersListCollectionListCell_lastAppliedBackground) = 4;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRIRemindersListCollectionListCell();
  return [(TTRIRemindersListCollectionListCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICore35TTRIRemindersListCollectionListCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore35TTRIRemindersListCollectionListCell_lastAppliedBackground) = 4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRIRemindersListCollectionListCell();
  v4 = a3;
  v5 = [(TTRIRemindersListCollectionListCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end