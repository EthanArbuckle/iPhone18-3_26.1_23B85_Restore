@interface GMEnrollmentViewModel
- (_TtC14VoiceTriggerUI21GMEnrollmentViewModel)init;
- (_TtC14VoiceTriggerUI21GMEnrollmentViewModel)initWithPrelude:(id)prelude instruction:(id)instruction continuation:(id)continuation;
@end

@implementation GMEnrollmentViewModel

- (_TtC14VoiceTriggerUI21GMEnrollmentViewModel)initWithPrelude:(id)prelude instruction:(id)instruction continuation:(id)continuation
{
  preludeCopy = prelude;
  instructionCopy = instruction;
  continuationCopy = continuation;
  v10 = sub_27292C6B0(preludeCopy, instructionCopy, continuationCopy);

  return v10;
}

- (_TtC14VoiceTriggerUI21GMEnrollmentViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end