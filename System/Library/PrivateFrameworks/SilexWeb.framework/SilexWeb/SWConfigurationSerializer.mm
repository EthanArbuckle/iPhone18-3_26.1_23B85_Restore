@interface SWConfigurationSerializer
- (id)serializeWebContentConfiguration:(id)configuration;
- (id)serializedRectFromCGRect:(CGRect)rect;
@end

@implementation SWConfigurationSerializer

- (id)serializeWebContentConfiguration:(id)configuration
{
  v106[2] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (configurationCopy)
  {
    selfCopy = self;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    identifier = [configurationCopy identifier];

    if (identifier)
    {
      identifier2 = [configurationCopy identifier];
      [dictionary setObject:identifier2 forKey:@"identifier"];
    }

    storeFront = [configurationCopy storeFront];

    if (storeFront)
    {
      storeFront2 = [configurationCopy storeFront];
      [dictionary setObject:storeFront2 forKey:@"storeFront"];
    }

    locale = [configurationCopy locale];

    if (locale)
    {
      locale2 = [configurationCopy locale];
      localeIdentifier = [locale2 localeIdentifier];
      [dictionary setObject:localeIdentifier forKey:@"locale"];
    }

    contentEnvironment = [configurationCopy contentEnvironment];

    if (contentEnvironment)
    {
      contentEnvironment2 = [configurationCopy contentEnvironment];
      [dictionary setObject:contentEnvironment2 forKey:@"environment"];
    }

    contentSizeCategory = [configurationCopy contentSizeCategory];

    if (contentSizeCategory)
    {
      contentSizeCategory2 = [configurationCopy contentSizeCategory];
      [dictionary setObject:contentSizeCategory2 forKey:@"dynamicType"];
    }

    location = [configurationCopy location];

    if (location)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      location2 = [configurationCopy location];
      v20 = [location2 URL];
      absoluteString = [v20 absoluteString];

      if (absoluteString)
      {
        location3 = [configurationCopy location];
        v23 = [location3 URL];
        absoluteString2 = [v23 absoluteString];
        [dictionary2 setObject:absoluteString2 forKey:@"URL"];
      }

      location4 = [configurationCopy location];
      context = [location4 context];

      if (context)
      {
        location5 = [configurationCopy location];
        context2 = [location5 context];
        [dictionary2 setObject:context2 forKey:@"context"];
      }

      [dictionary setObject:dictionary2 forKey:@"location"];
    }

    sourceURL = [configurationCopy sourceURL];
    absoluteString3 = [sourceURL absoluteString];

    if (absoluteString3)
    {
      sourceURL2 = [configurationCopy sourceURL];
      absoluteString4 = [sourceURL2 absoluteString];
      [dictionary setObject:absoluteString4 forKey:@"sourceURL"];
    }

    systemVersion = [configurationCopy systemVersion];

    if (systemVersion)
    {
      systemVersion2 = [configurationCopy systemVersion];
      [dictionary setObject:systemVersion2 forKey:@"systemVersion"];
    }

    appVersion = [configurationCopy appVersion];

    if (appVersion)
    {
      appVersion2 = [configurationCopy appVersion];
      [dictionary setObject:appVersion2 forKey:@"appVersion"];
    }

    dataSources = [configurationCopy dataSources];
    v38 = [dataSources count];

    if (v38)
    {
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      dataSources2 = [configurationCopy dataSources];
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __62__SWConfigurationSerializer_serializeWebContentConfiguration___block_invoke;
      v99[3] = &unk_1E84DB658;
      v100 = dictionary3;
      v41 = dictionary3;
      [dataSources2 enumerateKeysAndObjectsUsingBlock:v99];

      [dictionary setObject:v41 forKey:@"dataSources"];
    }

    v105[0] = @"width";
    v42 = MEMORY[0x1E696AD98];
    layoutGuide = [configurationCopy layoutGuide];
    [layoutGuide bounds];
    v45 = [v42 numberWithDouble:v44];
    v105[1] = @"height";
    v106[0] = v45;
    v46 = MEMORY[0x1E696AD98];
    layoutGuide2 = [configurationCopy layoutGuide];
    [layoutGuide2 bounds];
    v49 = [v46 numberWithDouble:v48];
    v106[1] = v49;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:2];

    [dictionary setObject:v50 forKey:@"canvasSize"];
    v96 = v50;
    v104[0] = v50;
    v103[0] = @"canvasSize";
    v103[1] = @"contentFrame";
    layoutGuide3 = [configurationCopy layoutGuide];
    [layoutGuide3 contentFrame];
    v52 = selfCopy;
    v53 = [(SWConfigurationSerializer *)selfCopy serializedRectFromCGRect:?];
    v104[1] = v53;
    v103[2] = @"contentSafeAreaFrame";
    layoutGuide4 = [configurationCopy layoutGuide];
    [layoutGuide4 contentSafeAreaFrame];
    v55 = [(SWConfigurationSerializer *)selfCopy serializedRectFromCGRect:?];
    v104[2] = v55;
    v103[3] = @"systemSafeAreaFrame";
    layoutGuide5 = [configurationCopy layoutGuide];
    [layoutGuide5 systemSafeAreaFrame];
    v57 = [(SWConfigurationSerializer *)selfCopy serializedRectFromCGRect:?];
    v104[3] = v57;
    v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:4];

    v95 = v58;
    [dictionary setObject:v58 forKey:@"layoutGuide"];
    layoutGuide6 = [configurationCopy layoutGuide];
    [layoutGuide6 contentFrame];
    v60 = [(SWConfigurationSerializer *)selfCopy serializedRectFromCGRect:?];

    [dictionary setObject:v60 forKey:@"contentFrame"];
    keyboardConfiguration = [configurationCopy keyboardConfiguration];

    if (keyboardConfiguration)
    {
      [configurationCopy keyboardConfiguration];
      v62 = v94 = v60;
      v101[0] = @"keyboardFrame";
      [v62 keyboardFrame];
      v93 = [(SWConfigurationSerializer *)selfCopy serializedRectFromCGRect:?];
      v102[0] = v93;
      v101[1] = @"inputAccessoryViewFrame";
      [v62 inputAccessoryViewFrame];
      v63 = [(SWConfigurationSerializer *)selfCopy serializedRectFromCGRect:?];
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

      v52 = selfCopy;
      [dictionary setObject:v69 forKey:@"keyboardInfo"];

      v60 = v94;
    }

    v70 = -[SWConfigurationSerializer isNetworkReachableForStatus:](v52, "isNetworkReachableForStatus:", [configurationCopy networkStatus]);
    v71 = [MEMORY[0x1E696AD98] numberWithBool:v70];
    [dictionary setObject:v71 forKey:@"isNetworkReachable"];

    activePictureInPictureURL = [configurationCopy activePictureInPictureURL];
    absoluteString5 = [activePictureInPictureURL absoluteString];

    if (absoluteString5)
    {
      activePictureInPictureURL2 = [configurationCopy activePictureInPictureURL];
      absoluteString6 = [activePictureInPictureURL2 absoluteString];
      [dictionary setObject:absoluteString6 forKey:@"activePictureInPictureURL"];
    }

    feedConfiguration = [configurationCopy feedConfiguration];

    if (feedConfiguration)
    {
      feedConfiguration2 = [configurationCopy feedConfiguration];
      selectors = [feedConfiguration2 selectors];

      if (selectors)
      {
        feedConfiguration3 = [configurationCopy feedConfiguration];
        selectors2 = [feedConfiguration3 selectors];
        allObjects = [selectors2 allObjects];
        [dictionary setObject:allObjects forKey:@"selectors"];
      }

      feedConfiguration4 = [configurationCopy feedConfiguration];
      configuration = [feedConfiguration4 configuration];

      if (configuration)
      {
        feedConfiguration5 = [configurationCopy feedConfiguration];
        configuration2 = [feedConfiguration5 configuration];
        [dictionary setObject:configuration2 forKey:@"feed"];
      }
    }

    v86 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(configurationCopy, "is24HourTime")}];
    [dictionary setObject:v86 forKey:@"is24HourTime"];

    v87 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(configurationCopy, "isTransitioning")}];
    [dictionary setObject:v87 forKey:@"isTransitioning"];

    v88 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(configurationCopy, "supportsLiveActivities")}];
    [dictionary setObject:v88 forKey:@"supportsLiveActivities"];

    v98 = 0;
    v89 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:&v98];
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
    dictionary = 0;
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

- (id)serializedRectFromCGRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"x";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:rect.origin.x];
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