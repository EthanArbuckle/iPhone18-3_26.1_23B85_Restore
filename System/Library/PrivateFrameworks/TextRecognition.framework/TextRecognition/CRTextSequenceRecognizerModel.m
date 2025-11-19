@interface CRTextSequenceRecognizerModel
+ (id)defaultURLOfModelInThisBundle;
- (CRTextSequenceRecognizerModel)initWithConfiguration:(id)a3 owner:(id)a4 error:(id *)a5;
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
- (void)preheatWithCompletionHandler:(id)a3;
@end

@implementation CRTextSequenceRecognizerModel

- (void)preheatWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_1B4105608(0, 0, v8, &unk_1B42ACF60, v13);
}

- (NSDictionary)outputShape
{
  outputShape = self->_outputShape;
  if (!outputShape)
  {
    v4 = MEMORY[0x1E696AAE8];
    v5 = [(CRTextSequenceRecognizerModel *)self modelURL];
    v6 = [v4 bundleWithURL:v5];

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
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_outputWidthDownscale)
  {
    v3 = [(CRTextSequenceRecognizerModel *)v2 outputShape];
    v4 = [v3 objectForKeyedSubscript:@"w_output_shape"];
    v5 = [v4 objectForKeyedSubscript:@"down_scale"];
    outputWidthDownscale = v2->_outputWidthDownscale;
    v2->_outputWidthDownscale = v5;

    if (!v2->_outputWidthDownscale)
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"No w_output_shape down_scale in model.output.shape" userInfo:0];
      objc_exception_throw(v9);
    }
  }

  objc_sync_exit(v2);

  v7 = v2->_outputWidthDownscale;

  return v7;
}

- (NSNumber)outputWidthOffset
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_outputWidthOffset)
  {
    v3 = [(CRTextSequenceRecognizerModel *)v2 outputShape];
    v4 = [v3 objectForKeyedSubscript:@"w_output_shape"];
    v5 = [v4 objectForKeyedSubscript:@"offset"];
    outputWidthOffset = v2->_outputWidthOffset;
    v2->_outputWidthOffset = v5;

    if (!v2->_outputWidthOffset)
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"No w_output_shape offset in model.output.shape" userInfo:0];
      objc_exception_throw(v9);
    }
  }

  objc_sync_exit(v2);

  v7 = v2->_outputWidthOffset;

  return v7;
}

- (NSNumber)outputFormatVersion
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_outputFormatVersion)
  {
    v3 = [(CRTextSequenceRecognizerModel *)v2 outputShape];
    v4 = [v3 objectForKeyedSubscript:@"output_format_version"];
    outputFormatVersion = v2->_outputFormatVersion;
    v2->_outputFormatVersion = v4;

    if (!v2->_outputFormatVersion)
    {
      v2->_outputFormatVersion = &unk_1F2BF86C8;
    }
  }

  objc_sync_exit(v2);

  v6 = v2->_outputFormatVersion;

  return v6;
}

- (int)codemapArray
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_codemapArray)
  {
LABEL_8:
    objc_sync_exit(v2);

    return v2->_codemapArray;
  }

  v3 = MEMORY[0x1E696AAE8];
  v4 = [(CRTextSequenceRecognizerModel *)v2 modelURL];
  v5 = [v3 bundleWithURL:v4];

  v6 = [v5 pathForResource:@"codemap" ofType:@"bin"];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
    v9 = [v8 componentsSeparatedByString:@"\n"];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", 65534];
    v2->_ctcBlankLabelIndex = [v9 indexOfObject:v10];

    if (v2->_ctcBlankLabelIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"No blank label in codemap" userInfo:0];
      objc_exception_throw(v17);
    }

    v2->_codemapArray = malloc_type_calloc([v9 count], 4uLL, 0x100004052888210uLL);
    v11 = 0;
    v2->_codemapSize = [v9 count];
    while ([v9 count] > v11)
    {
      v12 = [v9 objectAtIndexedSubscript:v11];
      v2->_codemapArray[v11] = [v12 intValue];

      ++v11;
    }

    goto LABEL_8;
  }

  v14 = CROSLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = [(CRTextSequenceRecognizerModel *)v2 modelURL];
    *buf = 138412290;
    v19 = v15;
    _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_ERROR, "No codemap in model: %@", buf, 0xCu);
  }

  v16 = CROSLogForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_FAULT, "Could not read codemap!", buf, 2u);
  }

  objc_sync_exit(v2);
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
  v3 = [(CRTextSequenceRecognizerModel *)self configuration];
  v4 = [v3 customModelURL];

  if (v4)
  {
    v5 = [(CRTextSequenceRecognizerModel *)self configuration];
    v6 = [v5 customModelURL];
  }

  else
  {
    v6 = [objc_opt_class() defaultURLOfModelInThisBundle];
  }

  return v6;
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

- (CRTextSequenceRecognizerModel)initWithConfiguration:(id)a3 owner:(id)a4 error:(id *)a5
{
  v6.receiver = self;
  v6.super_class = CRTextSequenceRecognizerModel;
  return [(CRTextSequenceRecognizerModel *)&v6 init:a3];
}

@end