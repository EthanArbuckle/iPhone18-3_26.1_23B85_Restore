@interface _PSContactEmbeddingUtilities
+ (id)loadModelFromUrlResource:(id)resource;
+ (id)modelFeatures;
+ (id)prepareFeatureInputFromFeatureDict:(id)dict;
@end

@implementation _PSContactEmbeddingUtilities

+ (id)loadModelFromUrlResource:(id)resource
{
  resourceCopy = resource;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 URLForResource:resourceCopy withExtension:@"mlmodelc"];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v6 = getMLModelClass_softClass_1;
  v18 = getMLModelClass_softClass_1;
  if (!getMLModelClass_softClass_1)
  {
    v13[1] = MEMORY[0x1E69E9820];
    v13[2] = 3221225472;
    v13[3] = __getMLModelClass_block_invoke_1;
    v13[4] = &unk_1E7C23BF0;
    v14 = &v15;
    CoreMLLibraryCore_1();
    v16[3] = objc_getClass("MLModel");
    getMLModelClass_softClass_1 = *(v14[1] + 24);
    v6 = v16[3];
  }

  v7 = v6;
  _Block_object_dispose(&v15, 8);
  v13[0] = 0;
  v8 = [v6 modelWithContentsOfURL:v5 error:v13];
  v9 = v13[0];
  if (v9)
  {
    v10 = +[_PSLogging contactEmbeddingChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_PSContactEmbeddingUtilities *)v5 loadModelFromUrlResource:v9, v10];
    }

    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

+ (id)prepareFeatureInputFromFeatureDict:(id)dict
{
  v27[1] = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  modelFeatures = [self modelFeatures];
  v6 = [modelFeatures count];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v7 = getMLMultiArrayClass_softClass_0;
  v26 = getMLMultiArrayClass_softClass_0;
  if (!getMLMultiArrayClass_softClass_0)
  {
    v21[1] = MEMORY[0x1E69E9820];
    v21[2] = 3221225472;
    v21[3] = __getMLMultiArrayClass_block_invoke_0;
    v21[4] = &unk_1E7C23BF0;
    v22 = &v23;
    CoreMLLibraryCore_1();
    v24[3] = objc_getClass("MLMultiArray");
    getMLMultiArrayClass_softClass_0 = *(v22[1] + 24);
    v7 = v24[3];
  }

  v8 = v7;
  _Block_object_dispose(&v23, 8);
  v9 = [v7 alloc];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  v27[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v21[0] = 0;
  v12 = [v9 initWithShape:v11 dataType:65600 error:v21];
  v13 = v21[0];

  if (v13)
  {
    v14 = +[_PSLogging contactEmbeddingChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(_PSContactEmbeddingUtilities *)v13 prepareFeatureInputFromFeatureDict:v14];
    }

LABEL_7:
    v15 = 0;
    goto LABEL_13;
  }

  if (v6)
  {
    v16 = 0;
    do
    {
      v17 = [modelFeatures objectAtIndexedSubscript:v16];
      v18 = [dictCopy objectForKeyedSubscript:v17];

      if (!v18)
      {
        goto LABEL_7;
      }

      [v12 setObject:v18 atIndexedSubscript:v16];
    }

    while (v6 != ++v16);
  }

  v15 = v12;
LABEL_13:

  v19 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)modelFeatures
{
  v3 = +[_PSConfig contactEmbeddingConfig];
  v4 = [v3 objectForKeyedSubscript:@"_PSContactEmbeddingFeatures"];
  v5 = v4;
  if (v4)
  {
    modelFeaturesBackup = v4;
  }

  else
  {
    v7 = +[_PSLogging contactEmbeddingChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[(_PSContactEmbeddingUtilities *)v7];
    }

    modelFeaturesBackup = [self modelFeaturesBackup];
  }

  v8 = modelFeaturesBackup;

  return v8;
}

+ (void)loadModelFromUrlResource:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 absoluteString];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1B5ED1000, a3, OS_LOG_TYPE_ERROR, "Error loading compiled CoreML Model from path %@ : %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)prepareFeatureInputFromFeatureDict:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Error while creating input MultiArray : %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end