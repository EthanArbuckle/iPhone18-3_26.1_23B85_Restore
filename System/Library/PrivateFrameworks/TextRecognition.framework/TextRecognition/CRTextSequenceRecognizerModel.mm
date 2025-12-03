@interface CRTextSequenceRecognizerModel
+ (id)defaultURLOfModelInThisBundle;
- (CRTextSequenceRecognizerModel)initWithConfiguration:(id)configuration owner:(id)owner error:(id *)error;
- (NSDictionary)outputShape;
- (NSNumber)outputFormatVersion;
- (NSNumber)outputWidthDownscale;
- (NSNumber)outputWidthOffset;
- (NSURL)modelURL;
- (TextBoxesOffsets)characterBoxesOffsets;
- (TextBoxesOffsets)wordBoxesOffsets;
- (int)codemapArray;
- (unint64_t)codemapSize;
- (void)dealloc;
- (void)preheatWithCompletionHandler:(id)handler;
@end

@implementation CRTextSequenceRecognizerModel

- (void)preheatWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1B429FEE8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B42ACF50;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B42ACF58;
  v13[5] = v12;
  selfCopy = self;
  sub_1B4105608(0, 0, v8, &unk_1B42ACF60, v13);
}

- (NSDictionary)outputShape
{
  outputShape = self->_outputShape;
  if (!outputShape)
  {
    v4 = MEMORY[0x1E696AAE8];
    modelURL = [(CRTextSequenceRecognizerModel *)self modelURL];
    v6 = [v4 bundleWithURL:modelURL];

    v7 = MEMORY[0x1E695DEF0];
    v8 = [v6 pathForResource:@"model.output" ofType:@"shape"];
    v9 = [v7 dataWithContentsOfFile:v8];

    if (!v9)
    {
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"No model.output.shape in model" userInfo:0];
      objc_exception_throw(v13);
    }

    v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:0];
    v11 = self->_outputShape;
    self->_outputShape = v10;

    outputShape = self->_outputShape;
  }

  return outputShape;
}

- (NSNumber)outputWidthDownscale
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_outputWidthDownscale)
  {
    outputShape = [(CRTextSequenceRecognizerModel *)selfCopy outputShape];
    v4 = [outputShape objectForKeyedSubscript:@"w_output_shape"];
    v5 = [v4 objectForKeyedSubscript:@"down_scale"];
    outputWidthDownscale = selfCopy->_outputWidthDownscale;
    selfCopy->_outputWidthDownscale = v5;

    if (!selfCopy->_outputWidthDownscale)
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"No w_output_shape down_scale in model.output.shape" userInfo:0];
      objc_exception_throw(v9);
    }
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_outputWidthDownscale;

  return v7;
}

- (NSNumber)outputWidthOffset
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_outputWidthOffset)
  {
    outputShape = [(CRTextSequenceRecognizerModel *)selfCopy outputShape];
    v4 = [outputShape objectForKeyedSubscript:@"w_output_shape"];
    v5 = [v4 objectForKeyedSubscript:@"offset"];
    outputWidthOffset = selfCopy->_outputWidthOffset;
    selfCopy->_outputWidthOffset = v5;

    if (!selfCopy->_outputWidthOffset)
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"No w_output_shape offset in model.output.shape" userInfo:0];
      objc_exception_throw(v9);
    }
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_outputWidthOffset;

  return v7;
}

- (NSNumber)outputFormatVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_outputFormatVersion)
  {
    outputShape = [(CRTextSequenceRecognizerModel *)selfCopy outputShape];
    v4 = [outputShape objectForKeyedSubscript:@"output_format_version"];
    outputFormatVersion = selfCopy->_outputFormatVersion;
    selfCopy->_outputFormatVersion = v4;

    if (!selfCopy->_outputFormatVersion)
    {
      selfCopy->_outputFormatVersion = &unk_1F2BF86C8;
    }
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_outputFormatVersion;

  return v6;
}

- (int)codemapArray
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_codemapArray)
  {
LABEL_8:
    objc_sync_exit(selfCopy);

    return selfCopy->_codemapArray;
  }

  v3 = MEMORY[0x1E696AAE8];
  modelURL = [(CRTextSequenceRecognizerModel *)selfCopy modelURL];
  v5 = [v3 bundleWithURL:modelURL];

  v6 = [v5 pathForResource:@"codemap" ofType:@"bin"];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
    v9 = [v8 componentsSeparatedByString:@"\n"];
    65534 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 65534];
    selfCopy->_ctcBlankLabelIndex = [v9 indexOfObject:65534];

    if (selfCopy->_ctcBlankLabelIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"No blank label in codemap" userInfo:0];
      objc_exception_throw(v17);
    }

    selfCopy->_codemapArray = malloc_type_calloc([v9 count], 4uLL, 0x100004052888210uLL);
    v11 = 0;
    selfCopy->_codemapSize = [v9 count];
    while ([v9 count] > v11)
    {
      v12 = [v9 objectAtIndexedSubscript:v11];
      selfCopy->_codemapArray[v11] = [v12 intValue];

      ++v11;
    }

    goto LABEL_8;
  }

  v14 = CROSLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    modelURL2 = [(CRTextSequenceRecognizerModel *)selfCopy modelURL];
    *buf = 138412290;
    v19 = modelURL2;
    _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_ERROR, "No codemap in model: %@", buf, 0xCu);
  }

  v16 = CROSLogForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_FAULT, "Could not read codemap!", buf, 2u);
  }

  objc_sync_exit(selfCopy);
  return 0;
}

- (unint64_t)codemapSize
{
  result = [(CRTextSequenceRecognizerModel *)self codemapArray];
  if (result)
  {
    return self->_codemapSize;
  }

  return result;
}

- (void)dealloc
{
  codemapArray = self->_codemapArray;
  if (codemapArray)
  {
    free(codemapArray);
    self->_codemapArray = 0;
  }

  v4.receiver = self;
  v4.super_class = CRTextSequenceRecognizerModel;
  [(CRTextSequenceRecognizerModel *)&v4 dealloc];
}

+ (id)defaultURLOfModelInThisBundle
{
  v2 = CROSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B40D2000, v2, OS_LOG_TYPE_FAULT, "CRTextSequenceRecognizerModel unexpectedly called directly", v7, 2u);
  }

  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"cr_tr_model_latin_v2.mlmodelc" ofType:@"bundle"];

  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];

  return v5;
}

- (NSURL)modelURL
{
  configuration = [(CRTextSequenceRecognizerModel *)self configuration];
  customModelURL = [configuration customModelURL];

  if (customModelURL)
  {
    configuration2 = [(CRTextSequenceRecognizerModel *)self configuration];
    customModelURL2 = [configuration2 customModelURL];
  }

  else
  {
    customModelURL2 = [objc_opt_class() defaultURLOfModelInThisBundle];
  }

  return customModelURL2;
}

- (TextBoxesOffsets)characterBoxesOffsets
{
  v2 = 0.0;
  v3 = 4.0;
  v4 = 0.0;
  v5 = 0.0;
  result.var3 = v5;
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (TextBoxesOffsets)wordBoxesOffsets
{
  v2 = 0.0;
  v3 = 4.0;
  v4 = 2.0;
  v5 = -2.0;
  result.var3 = v5;
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (CRTextSequenceRecognizerModel)initWithConfiguration:(id)configuration owner:(id)owner error:(id *)error
{
  v6.receiver = self;
  v6.super_class = CRTextSequenceRecognizerModel;
  return [(CRTextSequenceRecognizerModel *)&v6 init:configuration];
}

@end