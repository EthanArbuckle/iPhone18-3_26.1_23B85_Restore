@interface WOEffortSampleCollection
- (HKQuantity)preferredQuantity;
- (HKQuantitySample)preferredSample;
- (WOEffortSampleCollection)init;
- (WOEffortSampleCollection)initWithEffortSample:(id)a3 estimatedEffortSample:(id)a4;
@end

@implementation WOEffortSampleCollection

- (WOEffortSampleCollection)initWithEffortSample:(id)a3 estimatedEffortSample:(id)a4
{
  *(&self->super.isa + OBJC_IVAR___WOEffortSampleCollection_effortSample) = a3;
  *(&self->super.isa + OBJC_IVAR___WOEffortSampleCollection_estimatedEffortSample) = a4;
  v9.receiver = self;
  v9.super_class = type metadata accessor for EffortSampleCollection();
  v6 = a3;
  v7 = a4;
  return [(WOEffortSampleCollection *)&v9 init];
}

- (HKQuantitySample)preferredSample
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOEffortSampleCollection_effortSample);
  v3 = v2;
  if (!v2)
  {
    v3 = *(&self->super.isa + OBJC_IVAR___WOEffortSampleCollection_estimatedEffortSample);
    if (v3)
    {
      v4 = v3;
    }
  }

  v5 = v2;

  return v3;
}

- (HKQuantity)preferredQuantity
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOEffortSampleCollection_effortSample);
  if (v2)
  {
    v3 = *(&self->super.isa + OBJC_IVAR___WOEffortSampleCollection_effortSample);
LABEL_5:
    v5 = v2;
    v6 = [v3 quantity];

    goto LABEL_6;
  }

  v4 = *(&self->super.isa + OBJC_IVAR___WOEffortSampleCollection_estimatedEffortSample);
  if (v4)
  {
    v3 = v4;
    v2 = 0;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (WOEffortSampleCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end