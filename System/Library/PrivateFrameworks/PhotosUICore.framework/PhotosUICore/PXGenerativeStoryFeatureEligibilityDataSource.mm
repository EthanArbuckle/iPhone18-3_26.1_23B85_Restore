@interface PXGenerativeStoryFeatureEligibilityDataSource
+ (id)fullDescriptionWithFeatureEligibilityState:(id)state photoLibrary:(id)library;
+ (void)generateFeatureEligibilityStateUsingProcessingAvailabilityReporter:(PHPhotoLibraryFeatureAvailabilityReporter *)reporter photoLibrary:(PHPhotoLibrary *)library completionHandler:(id)handler;
+ (void)renderImageWithFeatureAvailability:(id)availability completionHandler:(id)handler;
- (PXGenerativeStoryFeatureEligibilityDataSource)init;
@end

@implementation PXGenerativeStoryFeatureEligibilityDataSource

+ (void)generateFeatureEligibilityStateUsingProcessingAvailabilityReporter:(PHPhotoLibraryFeatureAvailabilityReporter *)reporter photoLibrary:(PHPhotoLibrary *)library completionHandler:(id)handler
{
  sub_1A3C2A224(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = reporter;
  v13[3] = library;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A5313DE8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A5313DF8;
  v16[5] = v15;
  reporterCopy = reporter;
  libraryCopy = library;
  sub_1A403AC74(0, 0, v11, &unk_1A5313E08, v16);
}

+ (void)renderImageWithFeatureAvailability:(id)availability completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_getObjCClassMetadata();
  availabilityCopy = availability;
  sub_1A403A290(availability, sub_1A3E79128, v6);
}

+ (id)fullDescriptionWithFeatureEligibilityState:(id)state photoLibrary:(id)library
{
  stateCopy = state;
  libraryCopy = library;
  v7 = sub_1A403C474(stateCopy, libraryCopy);

  return v7;
}

- (PXGenerativeStoryFeatureEligibilityDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenerativeStoryFeatureEligibilityDataSource();
  return [(PXGenerativeStoryFeatureEligibilityDataSource *)&v3 init];
}

@end