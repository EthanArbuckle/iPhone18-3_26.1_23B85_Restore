@interface CRImageReader
+ (BOOL)languageIsChinese:(id)a3;
+ (BOOL)languageSupportsFullWidthPunctuation:(id)a3;
+ (BOOL)preheatModelsForOptions:(id)a3 revision:(int64_t)a4 error:(id *)a5;
+ (BOOL)preheatModelsForOptions:(id)a3 revision:(int64_t)a4 extendedTimeoutBlock:(id)a5 error:(id *)a6;
+ (CGSize)detectorImageSizeForOptions:(id)a3 imageSize:(CGSize)a4;
+ (id)descriptionForErrorCode:(int64_t)a3;
+ (id)errorWithErrorCode:(int64_t)a3;
+ (id)languageSetFromOptionsDictionary:(id)a3;
+ (id)prioritizationForOptions:(id)a3;
+ (id)supportedChineseLanguages;
+ (id)supportedComputeDevicesForOptions:(id)a3 revision:(int64_t)a4 error:(id *)a5;
+ (id)supportedLanguagesForOptions:(id)a3 revision:(int64_t)a4 error:(id *)a5;
- (BOOL)configureImageReaderWithOptions:(id)a3 error:(id *)a4;
- (CGSize)smallestImageSizeForTextWithRelativeHeight:(double)a3 originalImageSize:(CGSize)a4;
- (CRImageReader)initWithOptions:(id)a3 error:(id *)a4;
- (CRPerformanceStatistics)formAnalyzerStats;
- (CRPerformanceStatistics)formDetectionStats;
- (CRPerformanceStatistics)formPostProcessingStats;
- (CRPerformanceStatistics)lineWrappingStats;
- (CRPerformanceStatistics)orientationCorrectionStats;
- (CRPerformanceStatistics)recognizerStats;
- (CRPerformanceStatistics)tableStructureRecognitionStats;
- (NSArray)outputObjectTypes;
- (id)computeDevice;
- (id)confidenceThresholdProvider;
- (id)documentOutputRegionForImage:(id)a3 options:(id)a4 roi:(CGRect)a5 error:(id *)a6 withProgressHandler:(id)a7;
- (id)documentOutputRegionForImage:(id)a3 options:(id)a4 roi:(CGRect)a5 trackingSession:(id)a6 error:(id *)a7 withProgressHandler:(id)a8;
- (id)documentOutputRegionForImage:(id)a3 roi:(CGRect)a4 error:(id *)a5 withProgressHandler:(id)a6;
- (id)documentOutputRegionForTextFeatures:(id)a3 image:(id)a4;
- (id)recognizeDetectedBlocks:(id)a3 inImage:(id)a4 error:(id *)a5 withProgressHandler:(id)a6;
- (id)resultsForPixelBuffer:(__CVBuffer *)a3 options:(id)a4 error:(id *)a5;
- (id)resultsForPixelBuffer:(__CVBuffer *)a3 roi:(CGRect)a4 options:(id)a5 error:(id *)a6;
- (id)resultsForPixelBuffer:(__CVBuffer *)a3 roi:(CGRect)a4 options:(id)a5 error:(id *)a6 withProgressHandler:(id)a7;
- (id)textDetectorResultsForImage:(id)a3 error:(id *)a4;
- (void)cancel;
- (void)setOutputObjectTypes:(id)a3;
@end

@implementation CRImageReader

+ (id)supportedChineseLanguages
{
  if (qword_1ED95F5F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B429FDE8();

  return v2;
}

+ (BOOL)languageIsChinese:(id)a3
{
  v3 = sub_1B429FB98();
  v5 = v4;
  if (qword_1ED95F5F8 != -1)
  {
    v9 = v3;
    swift_once();
    v3 = v9;
  }

  v11[0] = v3;
  v11[1] = v5;
  MEMORY[0x1EEE9AC00](v3, v4);
  v10[2] = v11;
  v7 = sub_1B410CD54(sub_1B410D55C, v10, v6);

  return v7 & 1;
}

+ (BOOL)languageSupportsFullWidthPunctuation:(id)a3
{
  v4 = a3;
  if ([a1 languageIsChinese_])
  {
    v5 = 1;
  }

  else
  {
    v5 = [a1 languageIsJapanese_];
  }

  return v5;
}

- (void)cancel
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = sub_1B429FEE8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  v9 = self;
  sub_1B40E6C14(v6, &unk_1B42AE840, v8, MEMORY[0x1E69E7CA8] + 8);

  sub_1B40E26E8(v6, &unk_1EB884C70);
}

+ (id)supportedLanguagesForOptions:(id)a3 revision:(int64_t)a4 error:(id *)a5
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v6 = sub_1B429FAF8();
  v7 = sub_1B41536B4(v6);
  v8 = sub_1B4152D78(v7);
  v10 = v9;

  (*(v10 + 48))(a4, v8, v10);

  v11 = sub_1B429FDE8();

  return v11;
}

+ (id)supportedComputeDevicesForOptions:(id)a3 revision:(int64_t)a4 error:(id *)a5
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v6 = sub_1B429FAF8();
  v7 = sub_1B41536B4(v6);
  v8 = sub_1B4152D78(v7);
  v10 = v9;

  (*(v10 + 56))(a4, v8, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0);
  v11 = sub_1B429FDE8();

  return v11;
}

- (id)computeDevice
{
  v2 = self;
  v3 = [(CRImageReader *)v2 engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855D8);
  swift_dynamicCast();
  ObjectType = swift_getObjectType();
  v5 = (*(v7 + 32))(ObjectType);

  swift_unknownObjectRelease();

  return v5;
}

- (CGSize)smallestImageSizeForTextWithRelativeHeight:(double)a3 originalImageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = self;
  sub_1B4148B58(a3, width, height);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (id)resultsForPixelBuffer:(__CVBuffer *)a3 options:(id)a4 error:(id *)a5
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  sub_1B429FAF8();
  v7 = a3;
  v8 = self;
  sub_1B4148CB8(a3);

  sub_1B40E27B4(0, &qword_1EB884820);
  v9 = sub_1B429FDE8();

  return v9;
}

- (id)resultsForPixelBuffer:(__CVBuffer *)a3 roi:(CGRect)a4 options:(id)a5 error:(id *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  sub_1B429FAF8();
  v12 = a3;
  v13 = self;
  sub_1B4148F60(a3, x, y, width, height);

  sub_1B40E27B4(0, &qword_1EB884820);
  v14 = sub_1B429FDE8();

  return v14;
}

- (id)resultsForPixelBuffer:(__CVBuffer *)a3 roi:(CGRect)a4 options:(id)a5 error:(id *)a6 withProgressHandler:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = _Block_copy(a7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v14 = sub_1B429FAF8();
  if (v13)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    v13 = sub_1B4155240;
  }

  else
  {
    v15 = 0;
  }

  v16 = a3;
  v17 = self;
  sub_1B414925C(a3, v14, v13, v15, x, y, width, height);

  sub_1B40D6000(v13);

  sub_1B40E27B4(0, &qword_1EB884820);
  v18 = sub_1B429FDE8();

  return v18;
}

- (NSArray)outputObjectTypes
{
  v2 = self;
  v3 = [(CRImageReader *)v2 _outputObjectTypes];
  if (v3)
  {
    v4 = v3;
    sub_1B429FDF8();

    v5 = sub_1B429FDE8();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setOutputObjectTypes:(id)a3
{
  if (a3)
  {
    v4 = sub_1B429FDF8();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1B414BE4C(v4);
}

- (BOOL)configureImageReaderWithOptions:(id)a3 error:(id *)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v5 = sub_1B429FAF8();
  v6 = self;
  sub_1B414C178(v5);

  return 1;
}

+ (id)prioritizationForOptions:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v3 = sub_1B429FAF8();
  sub_1B4154508(v3);

  v4 = sub_1B429FB88();

  return v4;
}

+ (BOOL)preheatModelsForOptions:(id)a3 revision:(int64_t)a4 error:(id *)a5
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v6 = sub_1B429FAF8();
  swift_getObjCClassMetadata();
  sub_1B414CC10(v6, a4);

  return 1;
}

+ (BOOL)preheatModelsForOptions:(id)a3 revision:(int64_t)a4 extendedTimeoutBlock:(id)a5 error:(id *)a6
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v25 - v10;
  v12 = _Block_copy(a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v13 = sub_1B429FAF8();
  if (v12)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v15 = sub_1B4154F50;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v16 = sub_1B41536B4(v13);
  v17 = sub_1B4152D78(v16);
  v19 = v18;
  v20 = sub_1B429FEE8();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = swift_allocObject();
  v22 = a4;
  v23 = v21;
  v21[2] = v17;
  v21[3] = v19;
  v21[4] = v16;
  v21[5] = v22;
  v21[6] = v15;
  v21[7] = v14;
  sub_1B40D5FF0(v15);
  sub_1B40E6C14(v11, &unk_1B42AE828, v23, MEMORY[0x1E69E7CA8] + 8);
  sub_1B40E26E8(v11, &unk_1EB884C70);

  sub_1B40D6000(v15);

  return 1;
}

+ (CGSize)detectorImageSizeForOptions:(id)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v6 = sub_1B429FAF8();
  sub_1B41546F4(v6, width, height);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)confidenceThresholdProvider
{
  v2 = self;
  v3 = [(CRImageReader *)v2 engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855D8);
  swift_dynamicCast();
  v4 = [v6 confidenceThresholdProvider];

  swift_unknownObjectRelease();

  return v4;
}

- (id)documentOutputRegionForImage:(id)a3 roi:(CGRect)a4 error:(id *)a5 withProgressHandler:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = _Block_copy(a6);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_1B4155240;
  }

  else
  {
    v13 = 0;
  }

  v14 = a3;
  v15 = self;
  v16 = sub_1B414D4E8(v14, v12, v13, x, y, width, height);

  sub_1B40D6000(v12);

  return v16;
}

- (id)documentOutputRegionForImage:(id)a3 options:(id)a4 roi:(CGRect)a5 error:(id *)a6 withProgressHandler:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = _Block_copy(a7);
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
    a4 = sub_1B429FAF8();
  }

  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v14 = sub_1B4155240;
  }

  else
  {
    v15 = 0;
  }

  v16 = a3;
  v17 = self;
  v18 = sub_1B414D918(v16, a4, v14, v15, x, y, width, height);

  sub_1B40D6000(v14);

  return v18;
}

- (id)documentOutputRegionForImage:(id)a3 options:(id)a4 roi:(CGRect)a5 trackingSession:(id)a6 error:(id *)a7 withProgressHandler:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16 = _Block_copy(a8);
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
    a4 = sub_1B429FAF8();
  }

  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1B4155240;
  }

  else
  {
    v17 = 0;
  }

  v18 = a3;
  v19 = a6;
  v20 = self;
  v21 = sub_1B414DC98(v18, a4, a6, v16, v17, x, y, width, height);

  sub_1B40D6000(v16);

  return v21;
}

- (id)documentOutputRegionForTextFeatures:(id)a3 image:(id)a4
{
  sub_1B40E27B4(0, &qword_1ED95E6D8);
  v6 = sub_1B429FDF8();
  v7 = a4;
  v8 = self;
  v9 = sub_1B414E61C(v6, v7);

  return v9;
}

- (id)recognizeDetectedBlocks:(id)a3 inImage:(id)a4 error:(id *)a5 withProgressHandler:(id)a6
{
  v8 = _Block_copy(a6);
  sub_1B40E27B4(0, &qword_1ED95EE70);
  v9 = sub_1B429FDF8();
  if (v8)
  {
    v10 = swift_allocObject();
    v10[2] = v8;
    v8 = sub_1B4154F74;
  }

  else
  {
    v10 = 0;
  }

  v11 = a4;
  v12 = self;
  sub_1B414F310(v9, v11, v8, v10);

  sub_1B40D6000(v8);

  v13 = sub_1B429FDE8();

  return v13;
}

- (CRPerformanceStatistics)recognizerStats
{
  v2 = self;
  v3 = sub_1B41507EC();

  return v3;
}

- (CRPerformanceStatistics)orientationCorrectionStats
{
  v2 = self;
  v3 = [(CRImageReader *)v2 engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  type metadata accessor for CREngineAccurate();
  if (swift_dynamicCast())
  {
    v4 = sub_1B40F34A4();

    v5 = v4;
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (CRPerformanceStatistics)lineWrappingStats
{
  v2 = self;
  v3 = sub_1B4150ACC();

  return v3;
}

- (CRPerformanceStatistics)tableStructureRecognitionStats
{
  v2 = self;
  v3 = sub_1B4150BC0();

  return v3;
}

- (CRPerformanceStatistics)formAnalyzerStats
{
  v2 = self;
  v3 = sub_1B4150CB4();

  return v3;
}

- (CRPerformanceStatistics)formDetectionStats
{
  v2 = self;
  v3 = sub_1B4150DA8();

  return v3;
}

- (CRPerformanceStatistics)formPostProcessingStats
{
  v2 = self;
  v3 = sub_1B4150E9C();

  return v3;
}

+ (id)languageSetFromOptionsDictionary:(id)a3
{
  v3 = a3;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
    v3 = sub_1B429FAF8();
  }

  swift_getObjCClassMetadata();
  v4 = sub_1B4150F4C(v3);

  return v4;
}

- (id)textDetectorResultsForImage:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1B41517E0(v5);

  return v7;
}

- (CRImageReader)initWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CRImageReader;
  v7 = [(CRImageReader *)&v13 init];
  v8 = v7;
  if (v7 && (v12 = 0, [(CRImageReader *)v7 configureImageReaderWithOptions:v6 error:&v12], (v9 = v12) != 0))
  {
    if (a4)
    {
      v9 = v9;
      *a4 = v9;
    }

    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

+ (id)errorWithErrorCode:(int64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [CRImageReader descriptionForErrorCode:?];
  v5 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 errorWithDomain:@"CRImageReaderErrorDomain" code:a3 userInfo:v6];

  return v7;
}

+ (id)descriptionForErrorCode:(int64_t)a3
{
  if (a3 < 0xFFFFFFFFFFFFFFF8)
  {
    return @"Unknown error";
  }

  else
  {
    return off_1E7BC2530[a3 + 8];
  }
}

@end