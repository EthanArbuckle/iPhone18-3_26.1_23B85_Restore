@interface VINSFWModelHandler
- (VINSFWModelHandler)initWithPreferredMetalDevice:(id)a3;
- (id)generateClassificationScoresForPixelBuffer:(__CVBuffer *)a3;
@end

@implementation VINSFWModelHandler

- (VINSFWModelHandler)initWithPreferredMetalDevice:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = VINSFWModelHandler;
  v5 = [(VINSFWModelHandler *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69CA708]);
    if (v4)
    {
      v17 = *MEMORY[0x1E69CA838];
      v18[0] = v4;
      v7 = MEMORY[0x1E695DF20];
      v8 = v18;
      v9 = &v17;
    }

    else
    {
      v15 = *MEMORY[0x1E69CA828];
      v16 = MEMORY[0x1E695E118];
      v7 = MEMORY[0x1E695DF20];
      v8 = &v16;
      v9 = &v15;
    }

    v10 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:1];
    v11 = [v6 initWithOptions:v10 error:0];
    scmlHandler = v5->_scmlHandler;
    v5->_scmlHandler = v11;
  }

  return v5;
}

- (id)generateClassificationScoresForPixelBuffer:(__CVBuffer *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(SCMLHandler *)self->_scmlHandler analyzePixelBuffer:a3 error:0];
  v4 = [v3 scoresForLabels];

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v15}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v5 setObject:v12 forKeyedSubscript:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

@end