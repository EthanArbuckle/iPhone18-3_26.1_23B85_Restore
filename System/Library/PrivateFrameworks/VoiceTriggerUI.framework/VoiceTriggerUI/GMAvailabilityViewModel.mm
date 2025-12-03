@interface GMAvailabilityViewModel
+ (BOOL)shouldShowGM;
- (BOOL)hasCameraButton;
- (BOOL)isBuddyOrCFU;
- (BOOL)shouldShowVisualIntelligenceIntro;
- (id)continueButtonTitleKeyWithEnrollmentType:(unint64_t)type;
- (id)subtitleKeyWithEnrollmentType:(unint64_t)type;
- (id)titleKeyWithEnrollmentType:(unint64_t)type;
- (unint64_t)enrollmentType;
- (void)optInGM;
- (void)sendViewDidLoadEventWithEnrollmentType:(unint64_t)type;
@end

@implementation GMAvailabilityViewModel

- (BOOL)isBuddyOrCFU
{
  selfCopy = self;
  if (_s14VoiceTriggerUI23GMAvailabilityViewModelC7isBuddySbvgZ_0())
  {
    isBuddyOrFollowUp = 1;
  }

  else
  {
    isBuddyOrFollowUp = [*(&selfCopy->super.isa + OBJC_IVAR____TtC14VoiceTriggerUI23GMAvailabilityViewModel_vtuiStyle) isBuddyOrFollowUp];
  }

  return isBuddyOrFollowUp;
}

- (BOOL)hasCameraButton
{
  v2 = sub_27292E224();
  v3 = MGGetBoolAnswer();

  return v3;
}

- (BOOL)shouldShowVisualIntelligenceIntro
{
  v2 = sub_27292E224();
  v3 = MGGetBoolAnswer();

  return v3 ^ 1;
}

- (unint64_t)enrollmentType
{
  selfCopy = self;
  v3 = sub_272905E14();

  return v3;
}

+ (BOOL)shouldShowGM
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = sub_27292D754();
  v3 = *MEMORY[0x277D85DE8];
  return v2 & 1;
}

- (id)titleKeyWithEnrollmentType:(unint64_t)type
{
  if (type - 2 >= 3 && type > 1)
  {
    type metadata accessor for VTUIGMEnrollmentType(0);
    result = sub_27292E4A4();
    __break(1u);
  }

  else
  {
    v3 = sub_27292E224();

    return v3;
  }

  return result;
}

- (id)subtitleKeyWithEnrollmentType:(unint64_t)type
{
  sub_2729077E0(type);
  v3 = sub_27292E224();

  return v3;
}

- (id)continueButtonTitleKeyWithEnrollmentType:(unint64_t)type
{
  v3 = sub_27292E224();

  return v3;
}

- (void)sendViewDidLoadEventWithEnrollmentType:(unint64_t)type
{
  selfCopy = self;
  sub_272906784(type);
}

- (void)optInGM
{
  sub_27292D7B4();
  v2 = MEMORY[0x2743CF680]();
  sub_27292D794();
}

@end