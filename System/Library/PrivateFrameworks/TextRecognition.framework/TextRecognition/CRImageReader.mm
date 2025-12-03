@interface CRImageReader
+ (BOOL)languageIsChinese:(id)chinese;
+ (BOOL)languageSupportsFullWidthPunctuation:(id)punctuation;
+ (BOOL)preheatModelsForOptions:(id)options revision:(int64_t)revision error:(id *)error;
+ (BOOL)preheatModelsForOptions:(id)options revision:(int64_t)revision extendedTimeoutBlock:(id)block error:(id *)error;
+ (CGSize)detectorImageSizeForOptions:(id)options imageSize:(CGSize)size;
+ (id)descriptionForErrorCode:(int64_t)code;
+ (id)errorWithErrorCode:(int64_t)code;
+ (id)languageSetFromOptionsDictionary:(id)dictionary;
+ (id)prioritizationForOptions:(id)options;
+ (id)supportedChineseLanguages;
+ (id)supportedComputeDevicesForOptions:(id)options revision:(int64_t)revision error:(id *)error;
+ (id)supportedLanguagesForOptions:(id)options revision:(int64_t)revision error:(id *)error;
- (BOOL)configureImageReaderWithOptions:(id)options error:(id *)error;
- (CGSize)smallestImageSizeForTextWithRelativeHeight:(double)height originalImageSize:(CGSize)size;
- (CRImageReader)initWithOptions:(id)options error:(id *)error;
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
- (id)documentOutputRegionForImage:(id)image options:(id)options roi:(CGRect)roi error:(id *)error withProgressHandler:(id)handler;
- (id)documentOutputRegionForImage:(id)image options:(id)options roi:(CGRect)roi trackingSession:(id)session error:(id *)error withProgressHandler:(id)handler;
- (id)documentOutputRegionForImage:(id)image roi:(CGRect)roi error:(id *)error withProgressHandler:(id)handler;
- (id)documentOutputRegionForTextFeatures:(id)features image:(id)image;
- (id)recognizeDetectedBlocks:(id)blocks inImage:(id)image error:(id *)error withProgressHandler:(id)handler;
- (id)resultsForPixelBuffer:(__CVBuffer *)buffer options:(id)options error:(id *)error;
- (id)resultsForPixelBuffer:(__CVBuffer *)buffer roi:(CGRect)roi options:(id)options error:(id *)error;
- (id)resultsForPixelBuffer:(__CVBuffer *)buffer roi:(CGRect)roi options:(id)options error:(id *)error withProgressHandler:(id)handler;
- (id)textDetectorResultsForImage:(id)image error:(id *)error;
- (void)cancel;
- (void)setOutputObjectTypes:(id)types;
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

+ (BOOL)languageIsChinese:(id)chinese
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

+ (BOOL)languageSupportsFullWidthPunctuation:(id)punctuation
{
  punctuationCopy = punctuation;
  if ([self languageIsChinese_])
  {
    languageIsJapanese_ = 1;
  }

  else
  {
    languageIsJapanese_ = [self languageIsJapanese_];
  }

  return languageIsJapanese_;
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
  selfCopy = self;
  sub_1B40E6C14(v6, &unk_1B42AE840, v8, MEMORY[0x1E69E7CA8] + 8);

  sub_1B40E26E8(v6, &unk_1EB884C70);
}

+ (id)supportedLanguagesForOptions:(id)options revision:(int64_t)revision error:(id *)error
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v6 = sub_1B429FAF8();
  v7 = sub_1B41536B4(v6);
  v8 = sub_1B4152D78(v7);
  v10 = v9;

  (*(v10 + 48))(revision, v8, v10);

  v11 = sub_1B429FDE8();

  return v11;
}

+ (id)supportedComputeDevicesForOptions:(id)options revision:(int64_t)revision error:(id *)error
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v6 = sub_1B429FAF8();
  v7 = sub_1B41536B4(v6);
  v8 = sub_1B4152D78(v7);
  v10 = v9;

  (*(v10 + 56))(revision, v8, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853A0);
  v11 = sub_1B429FDE8();

  return v11;
}

- (id)computeDevice
{
  selfCopy = self;
  engine = [(CRImageReader *)selfCopy engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855D8);
  swift_dynamicCast();
  ObjectType = swift_getObjectType();
  v5 = (*(v7 + 32))(ObjectType);

  swift_unknownObjectRelease();

  return v5;
}

- (CGSize)smallestImageSizeForTextWithRelativeHeight:(double)height originalImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_1B4148B58(height, width, height);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (id)resultsForPixelBuffer:(__CVBuffer *)buffer options:(id)options error:(id *)error
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  sub_1B429FAF8();
  bufferCopy = buffer;
  selfCopy = self;
  sub_1B4148CB8(buffer);

  sub_1B40E27B4(0, &qword_1EB884820);
  v9 = sub_1B429FDE8();

  return v9;
}

- (id)resultsForPixelBuffer:(__CVBuffer *)buffer roi:(CGRect)roi options:(id)options error:(id *)error
{
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  sub_1B429FAF8();
  bufferCopy = buffer;
  selfCopy = self;
  sub_1B4148F60(buffer, x, y, width, height);

  sub_1B40E27B4(0, &qword_1EB884820);
  v14 = sub_1B429FDE8();

  return v14;
}

- (id)resultsForPixelBuffer:(__CVBuffer *)buffer roi:(CGRect)roi options:(id)options error:(id *)error withProgressHandler:(id)handler
{
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  v13 = _Block_copy(handler);
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

  bufferCopy = buffer;
  selfCopy = self;
  sub_1B414925C(buffer, v14, v13, v15, x, y, width, height);

  sub_1B40D6000(v13);

  sub_1B40E27B4(0, &qword_1EB884820);
  v18 = sub_1B429FDE8();

  return v18;
}

- (NSArray)outputObjectTypes
{
  selfCopy = self;
  _outputObjectTypes = [(CRImageReader *)selfCopy _outputObjectTypes];
  if (_outputObjectTypes)
  {
    v4 = _outputObjectTypes;
    sub_1B429FDF8();

    v5 = sub_1B429FDE8();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setOutputObjectTypes:(id)types
{
  if (types)
  {
    v4 = sub_1B429FDF8();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1B414BE4C(v4);
}

- (BOOL)configureImageReaderWithOptions:(id)options error:(id *)error
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v5 = sub_1B429FAF8();
  selfCopy = self;
  sub_1B414C178(v5);

  return 1;
}

+ (id)prioritizationForOptions:(id)options
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v3 = sub_1B429FAF8();
  sub_1B4154508(v3);

  v4 = sub_1B429FB88();

  return v4;
}

+ (BOOL)preheatModelsForOptions:(id)options revision:(int64_t)revision error:(id *)error
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v6 = sub_1B429FAF8();
  swift_getObjCClassMetadata();
  sub_1B414CC10(v6, revision);

  return 1;
}

+ (BOOL)preheatModelsForOptions:(id)options revision:(int64_t)revision extendedTimeoutBlock:(id)block error:(id *)error
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v25 - v10;
  v12 = _Block_copy(block);
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
  revisionCopy = revision;
  v23 = v21;
  v21[2] = v17;
  v21[3] = v19;
  v21[4] = v16;
  v21[5] = revisionCopy;
  v21[6] = v15;
  v21[7] = v14;
  sub_1B40D5FF0(v15);
  sub_1B40E6C14(v11, &unk_1B42AE828, v23, MEMORY[0x1E69E7CA8] + 8);
  sub_1B40E26E8(v11, &unk_1EB884C70);

  sub_1B40D6000(v15);

  return 1;
}

+ (CGSize)detectorImageSizeForOptions:(id)options imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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
  selfCopy = self;
  engine = [(CRImageReader *)selfCopy engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855D8);
  swift_dynamicCast();
  confidenceThresholdProvider = [v6 confidenceThresholdProvider];

  swift_unknownObjectRelease();

  return confidenceThresholdProvider;
}

- (id)documentOutputRegionForImage:(id)image roi:(CGRect)roi error:(id *)error withProgressHandler:(id)handler
{
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  v12 = _Block_copy(handler);
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

  imageCopy = image;
  selfCopy = self;
  v16 = sub_1B414D4E8(imageCopy, v12, v13, x, y, width, height);

  sub_1B40D6000(v12);

  return v16;
}

- (id)documentOutputRegionForImage:(id)image options:(id)options roi:(CGRect)roi error:(id *)error withProgressHandler:(id)handler
{
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  v14 = _Block_copy(handler);
  if (options)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
    options = sub_1B429FAF8();
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

  imageCopy = image;
  selfCopy = self;
  v18 = sub_1B414D918(imageCopy, options, v14, v15, x, y, width, height);

  sub_1B40D6000(v14);

  return v18;
}

- (id)documentOutputRegionForImage:(id)image options:(id)options roi:(CGRect)roi trackingSession:(id)session error:(id *)error withProgressHandler:(id)handler
{
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  v16 = _Block_copy(handler);
  if (options)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
    options = sub_1B429FAF8();
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

  imageCopy = image;
  sessionCopy = session;
  selfCopy = self;
  v21 = sub_1B414DC98(imageCopy, options, session, v16, v17, x, y, width, height);

  sub_1B40D6000(v16);

  return v21;
}

- (id)documentOutputRegionForTextFeatures:(id)features image:(id)image
{
  sub_1B40E27B4(0, &qword_1ED95E6D8);
  v6 = sub_1B429FDF8();
  imageCopy = image;
  selfCopy = self;
  v9 = sub_1B414E61C(v6, imageCopy);

  return v9;
}

- (id)recognizeDetectedBlocks:(id)blocks inImage:(id)image error:(id *)error withProgressHandler:(id)handler
{
  v8 = _Block_copy(handler);
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

  imageCopy = image;
  selfCopy = self;
  sub_1B414F310(v9, imageCopy, v8, v10);

  sub_1B40D6000(v8);

  v13 = sub_1B429FDE8();

  return v13;
}

- (CRPerformanceStatistics)recognizerStats
{
  selfCopy = self;
  v3 = sub_1B41507EC();

  return v3;
}

- (CRPerformanceStatistics)orientationCorrectionStats
{
  selfCopy = self;
  engine = [(CRImageReader *)selfCopy engine];
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
  selfCopy = self;
  v3 = sub_1B4150ACC();

  return v3;
}

- (CRPerformanceStatistics)tableStructureRecognitionStats
{
  selfCopy = self;
  v3 = sub_1B4150BC0();

  return v3;
}

- (CRPerformanceStatistics)formAnalyzerStats
{
  selfCopy = self;
  v3 = sub_1B4150CB4();

  return v3;
}

- (CRPerformanceStatistics)formDetectionStats
{
  selfCopy = self;
  v3 = sub_1B4150DA8();

  return v3;
}

- (CRPerformanceStatistics)formPostProcessingStats
{
  selfCopy = self;
  v3 = sub_1B4150E9C();

  return v3;
}

+ (id)languageSetFromOptionsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionary)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
    dictionaryCopy = sub_1B429FAF8();
  }

  swift_getObjCClassMetadata();
  v4 = sub_1B4150F4C(dictionaryCopy);

  return v4;
}

- (id)textDetectorResultsForImage:(id)image error:(id *)error
{
  imageCopy = image;
  selfCopy = self;
  v7 = sub_1B41517E0(imageCopy);

  return v7;
}

- (CRImageReader)initWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = CRImageReader;
  v7 = [(CRImageReader *)&v13 init];
  v8 = v7;
  if (v7 && (v12 = 0, [(CRImageReader *)v7 configureImageReaderWithOptions:optionsCopy error:&v12], (v9 = v12) != 0))
  {
    if (error)
    {
      v9 = v9;
      *error = v9;
    }

    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

+ (id)errorWithErrorCode:(int64_t)code
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [CRImageReader descriptionForErrorCode:?];
  v5 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 errorWithDomain:@"CRImageReaderErrorDomain" code:code userInfo:v6];

  return v7;
}

+ (id)descriptionForErrorCode:(int64_t)code
{
  if (code < 0xFFFFFFFFFFFFFFF8)
  {
    return @"Unknown error";
  }

  else
  {
    return off_1E7BC2530[code + 8];
  }
}

@end