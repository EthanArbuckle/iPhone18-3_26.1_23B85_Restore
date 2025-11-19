@interface PXGenerativeStoryFeatureEligibilityDataSource
+ (id)fullDescriptionWithFeatureEligibilityState:(id)a3 photoLibrary:(id)a4;
+ (void)generateFeatureEligibilityStateUsingProcessingAvailabilityReporter:(PHPhotoLibraryFeatureAvailabilityReporter *)a3 photoLibrary:(PHPhotoLibrary *)a4 completionHandler:(id)a5;
+ (void)renderImageWithFeatureAvailability:(id)a3 completionHandler:(id)a4;
- (PXGenerativeStoryFeatureEligibilityDataSource)init;
@end

@implementation PXGenerativeStoryFeatureEligibilityDataSource

+ (void)generateFeatureEligibilityStateUsingProcessingAvailabilityReporter:(PHPhotoLibraryFeatureAvailabilityReporter *)a3 photoLibrary:(PHPhotoLibrary *)a4 completionHandler:(id)a5
{
  sub_1A3C2A224(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = a1;
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
  v17 = a3;
  v18 = a4;
  sub_1A403AC74(0, 0, v11, &unk_1A5313E08, v16);
}

+ (void)renderImageWithFeatureAvailability:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_getObjCClassMetadata();
  v7 = a3;
  sub_1A403A290(a3, sub_1A3E79128, v6);
}

+ (id)fullDescriptionWithFeatureEligibilityState:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1A403C474(v5, v6);

  return v7;
}

- (PXGenerativeStoryFeatureEligibilityDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenerativeStoryFeatureEligibilityDataSource();
  return [(PXGenerativeStoryFeatureEligibilityDataSource *)&v3 init];
}

@end