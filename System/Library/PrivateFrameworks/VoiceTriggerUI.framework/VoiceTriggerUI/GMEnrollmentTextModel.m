@interface GMEnrollmentTextModel
- (_TtC14VoiceTriggerUI21GMEnrollmentTextModel)init;
- (_TtC14VoiceTriggerUI21GMEnrollmentTextModel)initWithFont:(id)a3 label:(id)a4 hidden:(BOOL)a5;
@end

@implementation GMEnrollmentTextModel

- (_TtC14VoiceTriggerUI21GMEnrollmentTextModel)initWithFont:(id)a3 label:(id)a4 hidden:(BOOL)a5
{
  v8 = sub_27292E254();
  v10 = v9;
  v11 = a3;
  sub_27292D674();
  *(&self->super.isa + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font) = v11;
  v12 = (self + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label);
  *v12 = v8;
  v12[1] = v10;
  *(&self->super.isa + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden) = a5;
  v14.receiver = self;
  v14.super_class = type metadata accessor for GMEnrollmentTextModel(0);
  return [(GMEnrollmentTextModel *)&v14 init];
}

- (_TtC14VoiceTriggerUI21GMEnrollmentTextModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end