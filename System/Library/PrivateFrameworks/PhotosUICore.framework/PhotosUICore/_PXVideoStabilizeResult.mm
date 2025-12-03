@interface _PXVideoStabilizeResult
- (NSDictionary)dictionaryRepresentation;
@end

@implementation _PXVideoStabilizeResult

- (NSDictionary)dictionaryRepresentation
{
  v37[4] = *MEMORY[0x1E69E9840];
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36[0] = @"Device Type";
  v3 = MGCopyAnswer();
  v4 = v3;
  v5 = @"Unknown";
  if (v3)
  {
    v5 = v3;
  }

  v37[0] = v5;
  v36[1] = @"Video URL";
  spec = [(_PXVideoStabilizeResult *)self spec];
  inputVideoURL = [spec inputVideoURL];
  v6 = [inputVideoURL description];
  v37[1] = v6;
  v36[2] = @"Start Time";
  spec2 = [(_PXVideoStabilizeResult *)self spec];
  v8 = spec2;
  if (spec2)
  {
    [spec2 startTime];
  }

  else
  {
    memset(&time, 0, 24);
  }

  v9 = CMTimeCopyDescription(0, &time.start);
  v37[2] = v9;
  v36[3] = @"Trim Range";
  spec3 = [(_PXVideoStabilizeResult *)self spec];
  v11 = spec3;
  if (spec3)
  {
    [spec3 timeRange];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v12 = CMTimeRangeCopyDescription(0, &time);
  v37[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:4];
  [v30 setObject:v13 forKeyedSubscript:@"input"];

  v34[0] = @"Error";
  error = [(_PXVideoStabilizeResult *)self error];
  v15 = [error description];
  v16 = v15;
  v17 = @"None";
  if (v15)
  {
    v17 = v15;
  }

  v35[0] = v17;
  v34[1] = @"Analysis Type";
  v18 = PXVideoStabilizeAnalysisTypeDescription([(_PXVideoStabilizeResult *)self analysisType]);
  v35[1] = v18;
  v34[2] = @"Recipe Source Info";
  debugInfo = [(_PXVideoStabilizeResult *)self debugInfo];
  v20 = debugInfo;
  v21 = MEMORY[0x1E695E0F8];
  if (debugInfo)
  {
    v21 = debugInfo;
  }

  v35[2] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
  [v30 setObject:v22 forKeyedSubscript:@"output"];

  stabilizationRecipe = [(_PXVideoStabilizeResult *)self stabilizationRecipe];

  if (stabilizationRecipe)
  {
    v32 = @"InertiaCam Output";
    stabilizationRecipe2 = [(_PXVideoStabilizeResult *)self stabilizationRecipe];
    v33 = stabilizationRecipe2;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [v30 setObject:v25 forKeyedSubscript:@"recipe"];
  }

  v26 = [v30 copy];

  return v26;
}

@end