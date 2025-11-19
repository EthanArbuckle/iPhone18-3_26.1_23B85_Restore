@interface PGTripFeatureProcessor
- (id)frequencyPerLocationWithError:(id *)a3;
- (id)getScorePerMoment;
- (id)processTripLocationsWithReporter:(id)a3 error:(id *)a4;
- (void)sendAnalyticsEvent;
@end

@implementation PGTripFeatureProcessor

- (id)getScorePerMoment
{
  v2 = self;
  sub_22F2FCFC4();

  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  sub_22F11FA28(&qword_2810A90D0, &qword_2810A90E0, off_27887B100);
  v3 = sub_22F740C80();

  return v3;
}

- (id)frequencyPerLocationWithError:(id *)a3
{
  if (*(&self->super.isa + OBJC_IVAR___PGTripFeatureProcessor_locationFrequency))
  {
    sub_22F120634(0, &qword_2810A9020, off_27887B138);
    sub_22F11FA28(&qword_27DAB35D8, &qword_2810A9020, off_27887B138);

    v3 = sub_22F740C80();
  }

  else
  {
    sub_22F2FCEA4();
    v5 = swift_allocError();
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 3;
    swift_willThrow();
    if (a3)
    {
      v7 = sub_22F73F360();

      v8 = v7;
      v3 = 0;
      *a3 = v7;
    }

    else
    {

      v3 = 0;
    }
  }

  return v3;
}

- (void)sendAnalyticsEvent
{
  v3 = objc_opt_self();
  v6 = self;
  v4 = sub_22F740DF0();
  _s11PhotosGraph24TripTitleAnalyticsHelperC16analyticsPayload3forSDySSSo8NSObjectCGAA0C16FeatureProcessorC_tFZ_0(v6);
  sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
  v5 = sub_22F740C80();

  [v3 sendEvent:v4 withPayload:v5];
}

- (id)processTripLocationsWithReporter:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_22F2FD92C(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35C8, &qword_22F784738);
  v7 = sub_22F741160();

  return v7;
}

@end