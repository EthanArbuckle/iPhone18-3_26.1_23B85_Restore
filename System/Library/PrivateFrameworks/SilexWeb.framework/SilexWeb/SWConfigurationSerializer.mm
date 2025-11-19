@interface SWConfigurationSerializer
- (id)serializeWebContentConfiguration:(id)a3;
- (id)serializedRectFromCGRect:(CGRect)a3;
@end

@implementation SWConfigurationSerializer

- (id)serializeWebContentConfiguration:(id)a3
{
  v106[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v97 = self;
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v6 = [v4 identifier];

    if (v6)
    {
      v7 = [v4 identifier];
      [v5 setObject:v7 forKey:@"identifier"];
    }

    v8 = [v4 storeFront];

    if (v8)
    {
      v9 = [v4 storeFront];
      [v5 setObject:v9 forKey:@"storeFront"];
    }

    v10 = [v4 locale];

    if (v10)
    {
      v11 = [v4 locale];
      v12 = [v11 localeIdentifier];
      [v5 setObject:v12 forKey:@"locale"];
    }

    v13 = [v4 contentEnvironment];

    if (v13)
    {
      v14 = [v4 contentEnvironment];
      [v5 setObject:v14 forKey:@"environment"];
    }

    v15 = [v4 contentSizeCategory];

    if (v15)
    {
      v16 = [v4 contentSizeCategory];
      [v5 setObject:v16 forKey:@"dynamicType"];
    }

    v17 = [v4 location];

    if (v17)
    {
      v18 = [MEMORY[0x1E695DF90] dictionary];
      v19 = [v4 location];
      v20 = [v19 URL];
      v21 = [v20 absoluteString];

      if (v21)
      {
        v22 = [v4 location];
        v23 = [v22 URL];
        v24 = [v23 absoluteString];
        [v18 setObject:v24 forKey:@"URL"];
      }

      v25 = [v4 location];
      v26 = [v25 context];

      if (v26)
      {
        v27 = [v4 location];
        v28 = [v27 context];
        [v18 setObject:v28 forKey:@"context"];
      }

      [v5 setObject:v18 forKey:@"location"];
    }

    v29 = [v4 sourceURL];
    v30 = [v29 absoluteString];

    if (v30)
    {
      v31 = [v4 sourceURL];
      v32 = [v31 absoluteString];
      [v5 setObject:v32 forKey:@"sourceURL"];
    }

    v33 = [v4 systemVersion];

    if (v33)
    {
      v34 = [v4 systemVersion];
      [v5 setObject:v34 forKey:@"systemVersion"];
    }

    v35 = [v4 appVersion];

    if (v35)
    {
      v36 = [v4 appVersion];
      [v5 setObject:v36 forKey:@"appVersion"];
    }

    v37 = [v4 dataSources];
    v38 = [v37 count];

    if (v38)
    {
      v39 = [MEMORY[0x1E695DF90] dictionary];
      v40 = [v4 dataSources];
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __62__SWConfigurationSerializer_serializeWebContentConfiguration___block_invoke;
      v99[3] = &unk_1E84DB658;
      v100 = v39;
      v41 = v39;
      [v40 enumerateKeysAndObjectsUsingBlock:v99];

      [v5 setObject:v41 forKey:@"dataSources"];
    }

    v105[0] = @"width";
    v42 = MEMORY[0x1E696AD98];
    v43 = [v4 layoutGuide];
    [v43 bounds];
    v45 = [v42 numberWithDouble:v44];
    v105[1] = @"height";
    v106[0] = v45;
    v46 = MEMORY[0x1E696AD98];
    v47 = [v4 layoutGuide];
    [v47 bounds];
    v49 = [v46 numberWithDouble:v48];
    v106[1] = v49;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:2];

    [v5 setObject:v50 forKey:@"canvasSize"];
    v96 = v50;
    v104[0] = v50;
    v103[0] = @"canvasSize";
    v103[1] = @"contentFrame";
    v51 = [v4 layoutGuide];
    [v51 contentFrame];
    v52 = v97;
    v53 = [(SWConfigurationSerializer *)v97 serializedRectFromCGRect:?];
    v104[1] = v53;
    v103[2] = @"contentSafeAreaFrame";
    v54 = [v4 layoutGuide];
    [v54 contentSafeAreaFrame];
    v55 = [(SWConfigurationSerializer *)v97 serializedRectFromCGRect:?];
    v104[2] = v55;
    v103[3] = @"systemSafeAreaFrame";
    v56 = [v4 layoutGuide];
    [v56 systemSafeAreaFrame];
    v57 = [(SWConfigurationSerializer *)v97 serializedRectFromCGRect:?];
    v104[3] = v57;
    v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:4];

    v95 = v58;
    [v5 setObject:v58 forKey:@"layoutGuide"];
    v59 = [v4 layoutGuide];
    [v59 contentFrame];
    v60 = [(SWConfigurationSerializer *)v97 serializedRectFromCGRect:?];

    [v5 setObject:v60 forKey:@"contentFrame"];
    v61 = [v4 keyboardConfiguration];

    if (v61)
    {
      [v4 keyboardConfiguration];
      v62 = v94 = v60;
      v101[0] = @"keyboardFrame";
      [v62 keyboardFrame];
      v93 = [(SWConfigurationSerializer *)v97 serializedRectFromCGRect:?];
      v102[0] = v93;
      v101[1] = @"inputAccessoryViewFrame";
      [v62 inputAccessoryViewFrame];
      v63 = [(SWConfigurationSerializer *)v97 serializedRectFromCGRect:?];
      v102[1] = v63;
      v101[2] = @"isKeyboardSplit";
      v64 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v62, "isKeyboardSplit")}];
      v102[2] = v64;
      v101[3] = @"isKeyboardFloating";
      v65 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v62, "isKeyboardFloating")}];
      v102[3] = v65;
      v101[4] = @"isHardwareKeyboard";
      v66 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v62, "isHardwareKeyboard")}];
      v102[4] = v66;
      v101[5] = @"isKeyboardVisible";
      v67 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v62, "isKeyboardVisible")}];
      v102[5] = v67;
      v101[6] = @"isPencilInputExpected";
      v68 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v62, "isPencilInputExpected")}];
      v102[6] = v68;
      v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:7];

      v52 = v97;
      [v5 setObject:v69 forKey:@"keyboardInfo"];

      v60 = v94;
    }

    v70 = -[SWConfigurationSerializer isNetworkReachableForStatus:](v52, "isNetworkReachableForStatus:", [v4 networkStatus]);
    v71 = [MEMORY[0x1E696AD98] numberWithBool:v70];
    [v5 setObject:v71 forKey:@"isNetworkReachable"];

    v72 = [v4 activePictureInPictureURL];
    v73 = [v72 absoluteString];

    if (v73)
    {
      v74 = [v4 activePictureInPictureURL];
      v75 = [v74 absoluteString];
      [v5 setObject:v75 forKey:@"activePictureInPictureURL"];
    }

    v76 = [v4 feedConfiguration];

    if (v76)
    {
      v77 = [v4 feedConfiguration];
      v78 = [v77 selectors];

      if (v78)
      {
        v79 = [v4 feedConfiguration];
        v80 = [v79 selectors];
        v81 = [v80 allObjects];
        [v5 setObject:v81 forKey:@"selectors"];
      }

      v82 = [v4 feedConfiguration];
      v83 = [v82 configuration];

      if (v83)
      {
        v84 = [v4 feedConfiguration];
        v85 = [v84 configuration];
        [v5 setObject:v85 forKey:@"feed"];
      }
    }

    v86 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "is24HourTime")}];
    [v5 setObject:v86 forKey:@"is24HourTime"];

    v87 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isTransitioning")}];
    [v5 setObject:v87 forKey:@"isTransitioning"];

    v88 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "supportsLiveActivities")}];
    [v5 setObject:v88 forKey:@"supportsLiveActivities"];

    v98 = 0;
    v89 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:&v98];
    if (v89)
    {
      v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v89 encoding:4];
    }

    else
    {
      v90 = 0;
    }
  }

  else
  {
    v5 = 0;
    v90 = 0;
  }

  v91 = *MEMORY[0x1E69E9840];

  return v90;
}

void __62__SWConfigurationSerializer_serializeWebContentConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 absoluteString];
  [v4 setObject:v6 forKey:v5];
}

- (id)serializedRectFromCGRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"x";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3.origin.x];
  v14[0] = v6;
  v13[1] = @"y";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:y];
  v14[1] = v7;
  v13[2] = @"width";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:width];
  v14[2] = v8;
  v13[3] = @"height";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  v14[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end