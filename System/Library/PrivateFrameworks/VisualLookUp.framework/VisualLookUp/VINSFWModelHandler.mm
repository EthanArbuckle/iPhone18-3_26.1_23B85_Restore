@interface VINSFWModelHandler
- (VINSFWModelHandler)initWithPreferredMetalDevice:(id)device;
- (id)generateClassificationScoresForPixelBuffer:(__CVBuffer *)buffer;
@end

@implementation VINSFWModelHandler

- (VINSFWModelHandler)initWithPreferredMetalDevice:(id)device
{
  v18[1] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = VINSFWModelHandler;
  v5 = [(VINSFWModelHandler *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69CA708]);
    if (deviceCopy)
    {
      v17 = *MEMORY[0x1E69CA838];
      v18[0] = deviceCopy;
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

- (id)generateClassificationScoresForPixelBuffer:(__CVBuffer *)buffer
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(SCMLHandler *)self->_scmlHandler analyzePixelBuffer:buffer error:0];
  scoresForLabels = [v3 scoresForLabels];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = scoresForLabels;
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
            [dictionary setObject:v12 forKeyedSubscript:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [dictionary copy];

  return v13;
}

@end