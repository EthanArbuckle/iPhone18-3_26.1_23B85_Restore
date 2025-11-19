@interface RPTapToRadarContext
- (RPTapToRadarContext)initWithDictionary:(id)a3;
- (RPTapToRadarContext)initWithTitle:(id)a3 problemDescription:(id)a4;
- (id)getTapToRadarURL;
@end

@implementation RPTapToRadarContext

- (RPTapToRadarContext)initWithTitle:(id)a3 problemDescription:(id)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = RPTapToRadarContext;
  v8 = [(RPTapToRadarContext *)&v13 init];
  if (v8)
  {
    v14[0] = @"Title";
    v14[1] = @"Description";
    v15[0] = v6;
    v15[1] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    rawContext = v8->_rawContext;
    v8->_rawContext = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (RPTapToRadarContext)initWithDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RPTapToRadarContext;
  v6 = [(RPTapToRadarContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawContext, a3);
  }

  return v7;
}

- (id)getTapToRadarURL
{
  v45 = *MEMORY[0x1E69E9840];
  v39 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:@"tap-to-radar://new"];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"ComponentID"];
  if (v4)
  {
    v5 = v4;
    v6 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"ComponentName"];
    if (v6)
    {
      v7 = v6;
      v8 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"ComponentVersion"];

      if (v8)
      {
        v9 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"ComponentID"];
        [v3 setObject:v9 forKeyedSubscript:@"ComponentID"];

        v10 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"ComponentName"];
        [v3 setObject:v10 forKeyedSubscript:@"ComponentName"];

        v11 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"ComponentVersion"];
        [v3 setObject:v11 forKeyedSubscript:@"ComponentVersion"];

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  [v3 setObject:@"800892" forKeyedSubscript:@"ComponentID"];
  [v3 setObject:@"Rapport" forKeyedSubscript:@"ComponentName"];
  [v3 setObject:@"all" forKeyedSubscript:@"ComponentVersion"];
LABEL_7:
  v12 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"Title"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"Tap-to-Radar: Internal Rapport error detected";
  }

  [v3 setObject:v14 forKeyedSubscript:@"Title"];

  v15 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"Description"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"An internal Rapport error was detected; please ensure that a sysdiagnose is attached from this device along with other devices that are nearby.";
  }

  [v3 setObject:v17 forKeyedSubscript:@"Description"];

  v18 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"Classification"];
  v19 = @"Serious Bug";
  if (v18 && [(RPTapToRadarContext *)self _isValidClassification:v18])
  {
    v19 = v18;
  }

  [v3 setObject:v19 forKeyedSubscript:@"Classification"];
  v20 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"Reproducibility"];
  v21 = @"I Didn't Try";
  if (v20 && [(RPTapToRadarContext *)self _isValidReproducibility:v20])
  {
    v21 = v20;
  }

  [v3 setObject:v21 forKeyedSubscript:{@"Reproducibility", v18}];
  v22 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"Keywords"];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = @"212336";
  }

  [v3 setObject:v24 forKeyedSubscript:@"Keywords"];

  v25 = [MEMORY[0x1E695DF70] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = v3;
  v27 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v41;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v40 + 1) + 8 * i);
        v32 = MEMORY[0x1E696AF60];
        v33 = [v26 objectForKeyedSubscript:v31];
        v34 = [v32 queryItemWithName:v31 value:v33];
        [v25 addObject:v34];
      }

      v28 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v28);
  }

  [v39 setQueryItems:v25];
  v35 = [v39 URL];

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

@end