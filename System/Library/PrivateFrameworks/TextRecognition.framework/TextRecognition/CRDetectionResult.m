@interface CRDetectionResult
- (CRDetectionResult)init;
- (CRDetectionResult)initWithLines:(id)a3;
- (NSArray)lines;
- (NSArray)pyramidPreIntraScaleNMSTextFeatures;
- (NSArray)tableRegions;
- (void)setPyramidPreIntraScaleNMSTextFeatures:(id)a3;
- (void)setTableRegions:(id)a3;
@end

@implementation CRDetectionResult

- (NSArray)lines
{
  sub_1B40E27B4(0, &unk_1ED95E680);

  v2 = sub_1B429FDE8();

  return v2;
}

- (NSArray)tableRegions
{
  v2 = (self + OBJC_IVAR___CRDetectionResult_tableRegionsMutex);
  v3 = self;
  os_unfair_lock_lock(v2);

  os_unfair_lock_unlock(v2);

  sub_1B40E27B4(0, &qword_1ED95E6D0);
  v4 = sub_1B429FDE8();

  return v4;
}

- (void)setTableRegions:(id)a3
{
  sub_1B40E27B4(0, &qword_1ED95E6D0);
  v4 = sub_1B429FDF8();
  v5 = (self + OBJC_IVAR___CRDetectionResult_tableRegionsMutex);
  v6 = self;
  os_unfair_lock_lock(v5);

  *&v5[2]._os_unfair_lock_opaque = v4;
  os_unfair_lock_unlock(v5);
}

- (NSArray)pyramidPreIntraScaleNMSTextFeatures
{
  v3 = OBJC_IVAR___CRDetectionResult_pyramidPreIntraScaleNMSTextFeatures;
  swift_beginAccess();
  if (*(self + v3))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853B0);
    v4 = sub_1B429FDE8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPyramidPreIntraScaleNMSTextFeatures:(id)a3
{
  v3 = a3;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853B0);
    v3 = sub_1B429FDF8();
  }

  v5 = OBJC_IVAR___CRDetectionResult_pyramidPreIntraScaleNMSTextFeatures;
  swift_beginAccess();
  *(self + v5) = v3;
}

- (CRDetectionResult)initWithLines:(id)a3
{
  sub_1B40E27B4(0, &unk_1ED95E680);
  v3 = sub_1B429FDF8();
  return sub_1B4143978(v3);
}

- (CRDetectionResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end