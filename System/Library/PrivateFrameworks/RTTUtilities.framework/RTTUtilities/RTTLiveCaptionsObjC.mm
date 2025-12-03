@interface RTTLiveCaptionsObjC
+ (RTTLiveCaptionsObjC)shared;
- (BOOL)startWithSource:(int64_t)source locale:(id)locale sharedRoute:(BOOL)route excludePIDs:(id)ds error:(id *)error transcriptionResult:(id)result;
- (BOOL)stop:(int64_t)stop error:(id *)error;
- (RTTLiveCaptionsObjC)init;
@end

@implementation RTTLiveCaptionsObjC

+ (RTTLiveCaptionsObjC)shared
{
  if (qword_27FEB9370 != -1)
  {
    swift_once();
  }

  v3 = qword_27FEB9378;

  return v3;
}

- (BOOL)startWithSource:(int64_t)source locale:(id)locale sharedRoute:(BOOL)route excludePIDs:(id)ds error:(id *)error transcriptionResult:(id)result
{
  v11 = sub_26177D490();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB92C8, &qword_26177FCD8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v25[-v17];
  v19 = _Block_copy(result);
  if (locale)
  {
    sub_26177D480();
    (*(v12 + 32))(v18, v15, v11);
    (*(v12 + 56))(v18, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v18, 1, 1, v11);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = *(&self->super.isa + OBJC_IVAR___RTTLiveCaptionsObjC_rootObject);
  selfCopy = self;
  sub_26177D510();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26177C0CC;
  *(v23 + 24) = v20;

  sub_26177D4D0();

  sub_26177C0E0(v18);

  return 1;
}

- (BOOL)stop:(int64_t)stop error:(id *)error
{
  v4 = *(&self->super.isa + OBJC_IVAR___RTTLiveCaptionsObjC_rootObject);
  selfCopy = self;
  sub_26177D510();
  sub_26177D4C0();

  return 1;
}

- (RTTLiveCaptionsObjC)init
{
  v3 = OBJC_IVAR___RTTLiveCaptionsObjC_rootObject;
  sub_26177D4F0();
  *(&self->super.isa + v3) = sub_26177D4E0();
  v5.receiver = self;
  v5.super_class = type metadata accessor for RTTLiveCaptionsObjC();
  return [(RTTLiveCaptionsObjC *)&v5 init];
}

@end