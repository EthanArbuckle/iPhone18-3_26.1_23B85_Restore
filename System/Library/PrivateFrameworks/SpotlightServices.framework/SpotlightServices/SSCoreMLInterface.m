@interface SSCoreMLInterface
- (SSCoreMLInterface)initWithURL:(id)a3 error:(id *)a4;
- (float)predict:(id)a3 error:(id *)a4;
- (float)predictFromDictionaryFeatures:(id)a3 error:(id *)a4;
- (float)predictFromValues:(id)a3 error:(id *)a4;
- (id)getDescription;
- (id)getInputDescriptionsByName;
- (id)getVersionString;
- (id)initSpecificModel:(id)a3 error:(id *)a4;
@end

@implementation SSCoreMLInterface

- (SSCoreMLInterface)initWithURL:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E695FEA8] modelAssetWithURL:a3 error:?];
  asset = self->asset;
  self->asset = v6;

  if (a4 && *a4 || (v8 = self->asset) == 0 || ([(MLModelAsset *)v8 model], v9 = objc_claimAutoreleasedReturnValue(), model = self->model, self->model = v9, model, !self->model))
  {
    v11 = 0;
  }

  else
  {
    v11 = self;
  }

  return v11;
}

- (id)initSpecificModel:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.mlmodelc", a3];
  v7 = SSDefaultsGetAssetPath(v6);

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  v9 = [(SSCoreMLInterface *)self initWithURL:v8 error:a4];

  return v9;
}

- (float)predictFromValues:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 allKeys];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];

  v9 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v6 objectForKeyedSubscript:{*(*(&v29 + 1) + 8 * v14), v29}];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v12);
  }

  v16 = [v9 count];
  v17 = objc_alloc(MEMORY[0x1E695FED0]);
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
  v33[0] = v18;
  v33[1] = &unk_1F55B44D0;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v20 = [v17 initForFloat32TypeWithShape:v19];

  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      v22 = [v9 objectAtIndex:{i, v29}];
      [v22 doubleValue];
      v24 = v23;

      *&v24 = v24;
      *([v20 floatPointer] + 4 * i) = LODWORD(v24);
    }
  }

  [(SSCoreMLInterface *)self predict:v20 error:a4, v29];
  v26 = v25;

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (float)predict:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setObject:v7 forKeyedSubscript:@"x_in"];

  v9 = [objc_alloc(MEMORY[0x1E695FE48]) initWithDictionary:v8 error:a4];
  v10 = [(MLModel *)self->model predictionFromFeatures:v9 error:a4];
  v11 = [v10 featureValueForName:@"out"];
  v12 = v11;
  if (v11)
  {
    [v11 doubleValue];
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  return v14;
}

- (float)predictFromDictionaryFeatures:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695FE48];
  v7 = a3;
  v8 = [[v6 alloc] initWithDictionary:v7 error:a4];

  v9 = [(MLModel *)self->model predictionFromFeatures:v8 error:a4];
  v10 = [v9 featureValueForName:@"out"];
  v11 = v10;
  if (v10)
  {
    [v10 doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (id)getVersionString
{
  v2 = [(MLModelAsset *)self->asset regressor];
  v3 = [v2 modelDescription];
  v4 = [v3 metadata];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695FDB0]];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"version"];
    }

    else
    {
      v7 = 0;
    }

    if (![v7 length])
    {
      v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695FDD0]];

      v7 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getDescription
{
  v2 = [(MLModelAsset *)self->asset regressor];
  v3 = [v2 modelDescription];
  v4 = [v3 metadata];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695FDB8]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getInputDescriptionsByName
{
  v2 = [(MLModel *)self->model modelDescription];
  v3 = [v2 inputDescriptionsByName];

  return v3;
}

@end