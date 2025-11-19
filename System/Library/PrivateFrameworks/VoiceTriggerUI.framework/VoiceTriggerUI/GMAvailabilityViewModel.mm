@interface GMAvailabilityViewModel
+ (BOOL)shouldShowGM;
- (BOOL)hasCameraButton;
- (BOOL)isBuddyOrCFU;
- (BOOL)shouldShowVisualIntelligenceIntro;
- (id)continueButtonTitleKeyWithEnrollmentType:(unint64_t)a3;
- (id)subtitleKeyWithEnrollmentType:(unint64_t)a3;
- (id)titleKeyWithEnrollmentType:(unint64_t)a3;
- (unint64_t)enrollmentType;
- (void)optInGM;
- (void)sendViewDidLoadEventWithEnrollmentType:(unint64_t)a3;
@end

@implementation GMAvailabilityViewModel

- (BOOL)isBuddyOrCFU
{
  v2 = self;
  if (_s14VoiceTriggerUI23GMAvailabilityViewModelC7isBuddySbvgZ_0())
  {
    v3 = 1;
  }

  else
  {
    v3 = [*(&v2->super.isa + OBJC_IVAR____TtC14VoiceTriggerUI23GMAvailabilityViewModel_vtuiStyle) isBuddyOrFollowUp];
  }

  return v3;
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
  v2 = self;
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

- (id)titleKeyWithEnrollmentType:(unint64_t)a3
{
  if (a3 - 2 >= 3 && a3 > 1)
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

- (id)subtitleKeyWithEnrollmentType:(unint64_t)a3
{
  sub_2729077E0(a3);
  v3 = sub_27292E224();

  return v3;
}

- (id)continueButtonTitleKeyWithEnrollmentType:(unint64_t)a3
{
  v3 = sub_27292E224();

  return v3;
}

- (void)sendViewDidLoadEventWithEnrollmentType:(unint64_t)a3
{
  v4 = self;
  sub_272906784(a3);
}

- (void)optInGM
{
  sub_27292D7B4();
  v2 = MEMORY[0x2743CF680]();
  sub_27292D794();
}

@end