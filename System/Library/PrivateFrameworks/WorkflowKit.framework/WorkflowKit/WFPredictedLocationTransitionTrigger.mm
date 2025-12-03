@interface WFPredictedLocationTransitionTrigger
+ (id)displayGlyph;
+ (id)localizedDisplayNameWithContext:(id)context;
- (WFPredictedLocationTransitionTrigger)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFPredictedLocationTransitionTrigger

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = WFPredictedLocationTransitionTrigger;
  v4 = [(WFTrigger *)&v6 copyWithZone:zone];
  [v4 setDestinationType:{-[WFPredictedLocationTransitionTrigger destinationType](self, "destinationType")}];
  [v4 setMinutesBefore:{-[WFPredictedLocationTransitionTrigger minutesBefore](self, "minutesBefore")}];
  return v4;
}

- (WFPredictedLocationTransitionTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFPredictedLocationTransitionTrigger;
  v5 = [(WFTrigger *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationType"];
    v7 = v6;
    if (v6)
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    [(WFPredictedLocationTransitionTrigger *)v5 setDestinationType:unsignedIntegerValue];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minutesBefore"];
    v10 = v9;
    if (v9)
    {
      unsignedIntegerValue2 = [v9 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 0;
    }

    [(WFPredictedLocationTransitionTrigger *)v5 setMinutesBefore:unsignedIntegerValue2];
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFPredictedLocationTransitionTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFPredictedLocationTransitionTrigger destinationType](self, "destinationType", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"destinationType"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFPredictedLocationTransitionTrigger minutesBefore](self, "minutesBefore")}];
  [coderCopy encodeObject:v6 forKey:@"minutesBefore"];
}

- (id)localizedDescriptionWithConfigurationSummary
{
  destinationType = [(WFPredictedLocationTransitionTrigger *)self destinationType];
  if (!destinationType)
  {
    goto LABEL_5;
  }

  if (destinationType != 1)
  {
    goto LABEL_8;
  }

  minutesBefore = [(WFPredictedLocationTransitionTrigger *)self minutesBefore];
  if (minutesBefore < 6)
  {
    v5 = &off_1E83757D0[minutesBefore];
  }

  else
  {
LABEL_5:
    destinationType = [(WFPredictedLocationTransitionTrigger *)self minutesBefore];
    if (destinationType >= 6)
    {
      goto LABEL_8;
    }

    v5 = &off_1E8375800[destinationType];
  }

  destinationType = WFLocalizedString(*v5);
LABEL_8:

  return destinationType;
}

+ (id)displayGlyph
{
  v2 = MEMORY[0x1E69E0B58];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:self];
  v4 = [v2 imageNamed:@"LeaveTriggerIcon" inBundle:v3];

  return v4;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Before I Commute", @"Before I Commute");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end