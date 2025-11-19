@interface WFPredictedLocationTransitionTrigger
+ (id)displayGlyph;
+ (id)localizedDisplayNameWithContext:(id)a3;
- (WFPredictedLocationTransitionTrigger)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localizedDescriptionWithConfigurationSummary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFPredictedLocationTransitionTrigger

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = WFPredictedLocationTransitionTrigger;
  v4 = [(WFTrigger *)&v6 copyWithZone:a3];
  [v4 setDestinationType:{-[WFPredictedLocationTransitionTrigger destinationType](self, "destinationType")}];
  [v4 setMinutesBefore:{-[WFPredictedLocationTransitionTrigger minutesBefore](self, "minutesBefore")}];
  return v4;
}

- (WFPredictedLocationTransitionTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFPredictedLocationTransitionTrigger;
  v5 = [(WFTrigger *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationType"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 unsignedIntegerValue];
    }

    else
    {
      v8 = 0;
    }

    [(WFPredictedLocationTransitionTrigger *)v5 setDestinationType:v8];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minutesBefore"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 unsignedIntegerValue];
    }

    else
    {
      v11 = 0;
    }

    [(WFPredictedLocationTransitionTrigger *)v5 setMinutesBefore:v11];
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFPredictedLocationTransitionTrigger;
  v4 = a3;
  [(WFTrigger *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFPredictedLocationTransitionTrigger destinationType](self, "destinationType", v7.receiver, v7.super_class)}];
  [v4 encodeObject:v5 forKey:@"destinationType"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFPredictedLocationTransitionTrigger minutesBefore](self, "minutesBefore")}];
  [v4 encodeObject:v6 forKey:@"minutesBefore"];
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v3 = [(WFPredictedLocationTransitionTrigger *)self destinationType];
  if (!v3)
  {
    goto LABEL_5;
  }

  if (v3 != 1)
  {
    goto LABEL_8;
  }

  v4 = [(WFPredictedLocationTransitionTrigger *)self minutesBefore];
  if (v4 < 6)
  {
    v5 = &off_1E83757D0[v4];
  }

  else
  {
LABEL_5:
    v3 = [(WFPredictedLocationTransitionTrigger *)self minutesBefore];
    if (v3 >= 6)
    {
      goto LABEL_8;
    }

    v5 = &off_1E8375800[v3];
  }

  v3 = WFLocalizedString(*v5);
LABEL_8:

  return v3;
}

+ (id)displayGlyph
{
  v2 = MEMORY[0x1E69E0B58];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  v4 = [v2 imageNamed:@"LeaveTriggerIcon" inBundle:v3];

  return v4;
}

+ (id)localizedDisplayNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Before I Commute", @"Before I Commute");
  v5 = [v3 localize:v4];

  return v5;
}

@end