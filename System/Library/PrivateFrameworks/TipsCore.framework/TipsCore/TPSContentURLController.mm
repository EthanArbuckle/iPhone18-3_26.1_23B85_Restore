@interface TPSContentURLController
+ (id)_boardIDOrProductHash;
+ (id)_platformString;
+ (id)_productHash;
+ (id)_uiTestLocalBaseURL;
+ (id)_uiTestLocalURLForIdentifier:(id)a3;
+ (id)assetPathFromAssetConfiguration:(id)a3 type:(int64_t)a4;
+ (id)contentRequestURLWithContentMapHash:(id)a3;
+ (id)defaultHost;
+ (id)effectiveHost;
+ (id)languageStringWithLanguageDefault:(BOOL)a3 count:(unint64_t)a4;
+ (id)metaRequestURL;
+ (id)modelQueryItem;
+ (id)platformQueryItem;
+ (id)preferredLocalizations;
+ (id)preferredLocalizationsWithCount:(unint64_t)a3;
+ (id)supportFlowRequestURL;
+ (id)userGuideURLForIdentifier:(id)a3 version:(id)a4 platformIndependent:(BOOL)a5 subPath:(id)a6;
+ (int64_t)majorVersionForVersionString:(id)a3;
@end

@implementation TPSContentURLController

+ (id)preferredLocalizations
{
  v2 = objc_opt_class();

  return [v2 preferredLocalizationsWithCount:3];
}

+ (id)preferredLocalizationsWithCount:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695DFA0] orderedSet];
  v5 = MEMORY[0x1E695DF70];
  v6 = [MEMORY[0x1E695DF58] preferredLanguages];
  v7 = [v5 arrayWithArray:v6];

  v8 = +[TPSDefaultsManager requestLanguage];
  if ([v8 length])
  {
    [v7 insertObject:v8 atIndex:0];
  }

  do
  {
    if ([v4 count] >= a3 || !objc_msgSend(v7, "count"))
    {
      break;
    }

    v9 = [MEMORY[0x1E695DF58] tps_userPreferredLocalizationsForLanguages:v7];
    if ([v9 count])
    {
      [v4 addObjectsFromArray:v9];
    }

    [v7 removeObjectAtIndex:0];
    v10 = [v4 containsObject:@"en"];
  }

  while (!v10);
  v11 = [v4 copy];

  return v11;
}

+ (int64_t)majorVersionForVersionString:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"."];
  v4 = [v3 firstObject];
  v5 = [v4 integerValue];

  return v5;
}

+ (id)metaRequestURL
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [a1 requestURLForAPI:@"meta" type:@"tips" additionalQueryItems:0 useLanguageDefault:1 apiVersion:0];
  v3 = +[TPSLogger default];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_1C00A7000, v3, OS_LOG_TYPE_DEFAULT, "Meta URL %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)supportFlowRequestURL
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [a1 requestURLForAPI:@"config" type:@"support" additionalQueryItems:0 useLanguageDefault:1 apiVersion:@"v1"];
  v3 = +[TPSLogger default];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_1C00A7000, v3, OS_LOG_TYPE_DEFAULT, "Support Flow URL %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)userGuideURLForIdentifier:(id)a3 version:(id)a4 platformIndependent:(BOOL)a5 subPath:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [MEMORY[0x1E695DF70] array];
  v13 = MGCopyAnswer();
  v14 = +[TPSCommonDefines isPadUI];
  v15 = @"ios";
  if (v14)
  {
    v15 = @"ipados";
  }

  v16 = v15;
  v37 = v11;
  if ([v9 containsString:@"watch"])
  {

    v17 = v10;
    v16 = @"watchos";
    goto LABEL_8;
  }

  if ([v9 hasPrefix:@"iphone"] & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", @"ipad"))
  {
    v17 = v13;
LABEL_8:
    if (a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([v11 length])
  {
    v32 = [v9 stringByAppendingFormat:@"-%@", v11];

    v9 = v32;
  }

  if (!a5)
  {
    v33 = +[TPSCommonDefines isPadUI];
    v34 = @"ipad";
    if (!v33)
    {
      v34 = @"iphone";
    }

    v35 = [v9 stringByAppendingFormat:@"-%@", v34];

    v9 = v35;
    v17 = v13;
LABEL_9:
    v18 = [MEMORY[0x1E696AF60] queryItemWithName:@"platform" value:v16];
    [v12 addObject:v18];
    v19 = [MEMORY[0x1E696AF60] queryItemWithName:@"pOSv" value:v17];
    [v12 addObject:v19];

    goto LABEL_10;
  }

  v17 = v13;
LABEL_10:
  v36 = v9;
  v20 = [objc_opt_class() languageStringWithLanguageDefault:1 count:3];
  v21 = [MEMORY[0x1E696AF60] queryItemWithName:@"locale" value:v20];
  [v12 addObject:v21];
  if (v10)
  {
    v22 = v10;
  }

  else
  {
    v22 = @"1000";
  }

  v23 = [MEMORY[0x1E696AF60] queryItemWithName:@"productVersion" value:v22];
  [v12 addObject:v23];
  v24 = [MEMORY[0x1E696AF60] queryItemWithName:@"product" value:v9];
  [v12 addObject:v24];
  v25 = objc_alloc(MEMORY[0x1E696AF20]);
  [MEMORY[0x1E695DFF8] URLWithString:@"https://cds.apple.com"];
  v26 = v10;
  v28 = v27 = v17;
  v29 = [v25 initWithURL:v28 resolvingAgainstBaseURL:0];

  [v29 setPath:@"/content/services/book"];
  [v29 setQueryItems:v12];
  v30 = [v29 URL];

  return v30;
}

+ (id)contentRequestURLWithContentMapHash:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() contentRequestURLWithContentMapHash:v3 variantIdentifiers:0 useLanguageDefault:1];

  return v4;
}

+ (id)modelQueryItem
{
  v2 = MGCopyAnswer();
  v3 = +[TPSDefaultsManager requestModel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  if (v6 && ([MEMORY[0x1E696AF60] queryItemWithName:@"model" value:v6], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
  }

  else
  {
    v9 = MGCopyAnswer();
    if (!v9 || (v10 = v9, [MEMORY[0x1E696AF60] queryItemWithName:@"deviceClass" value:v9], v8 = objc_claimAutoreleasedReturnValue(), v10, !v8))
    {
      v11 = MEMORY[0x1E696AF60];
      v12 = +[TPSCommonDefines deviceFamily];
      v8 = [v11 queryItemWithName:@"deviceFamily" value:v12];
    }
  }

  return v8;
}

+ (id)platformQueryItem
{
  v2 = [a1 _platformString];
  v3 = +[TPSDefaultsManager requestPlatform];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [MEMORY[0x1E696AF60] queryItemWithName:@"platform" value:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)languageStringWithLanguageDefault:(BOOL)a3 count:(unint64_t)a4
{
  v5 = a3;
  v6 = [objc_opt_class() preferredLocalizationsWithCount:a4];
  v7 = [v6 mutableCopy];

  v8 = [v7 count] - a4;
  if (v5)
  {
    v5 = [v7 containsObject:@"en"] ^ 1;
  }

  if (v8 >= 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (v8 > 0 || v9 != 0)
  {
    [v7 removeObjectsInRange:{a4 - v9, v8 + v9}];
  }

  if (v5)
  {
    [v7 addObject:@"en"];
  }

  v11 = [v7 array];
  v12 = [v11 componentsJoinedByString:{@", "}];

  return v12;
}

+ (id)defaultHost
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [a1 defaultHostPath];
  v4 = [v2 URLWithString:v3];

  return v4;
}

+ (id)effectiveHost
{
  v3 = +[TPSDefaultsManager requestHostURL];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 defaultHostPath];
  }

  v6 = v5;

  v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];

  return v7;
}

+ (id)assetPathFromAssetConfiguration:(id)a3 type:(int64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 identifierForType:a4];
  if (!v7)
  {
    v14 = 0;
    goto LABEL_16;
  }

  v8 = +[TPSDefaultsManager assetURL];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 cacheIdentifierForType:a4];
    v11 = [v9 stringByAppendingPathComponent:@"asset"];

    v12 = [v11 stringByAppendingPathComponent:v10];

    v13 = [MEMORY[0x1E695DFF8] URLWithString:v12];
  }

  else
  {
    v15 = [v6 assets];
    v10 = [v15 baseURL];

    v12 = +[TPSDefaultsManager assetRequestHostURL];
    if (v12)
    {
      v16 = [MEMORY[0x1E695DFF8] URLWithString:v12];

      v10 = v16;
    }

    v17 = +[TPSDefaultsManager requestURL];
    if ([v17 isAbsolutePath])
    {
      v18 = [a1 _uiTestLocalBaseURL];
      v19 = [v18 URLByAppendingPathComponent:v7 isDirectory:0];

      v14 = [v19 absoluteString];
      v20 = +[TPSLogger default];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = v14;
        _os_log_impl(&dword_1C00A7000, v20, OS_LOG_TYPE_DEFAULT, "Generated loaded assets URL %@", &v25, 0xCu);
      }

      goto LABEL_15;
    }

    v21 = [@"v2" stringByAppendingPathComponent:@"tips"];
    v22 = [v21 stringByAppendingPathComponent:v7];

    v13 = [v10 URLByAppendingPathComponent:v22];

    v12 = v22;
  }

  v14 = [v13 absoluteString];
  v17 = +[TPSLogger default];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v14;
    _os_log_impl(&dword_1C00A7000, v17, OS_LOG_TYPE_DEFAULT, "Generated asset URL %@", &v25, 0xCu);
  }

  v10 = v13;
LABEL_15:

LABEL_16:
  v23 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)_platformString
{
  v2 = +[TPSDefaultsManager platform];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"ios";
  }

  return v4;
}

+ (id)_boardIDOrProductHash
{
  v3 = [a1 _boardID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 _productHash];
  }

  v6 = v5;

  return v6;
}

+ (id)_productHash
{
  v2 = MGCopyAnswer();
  v3 = [v2 bytes];
  if (v3)
  {
    v4 = [v2 length];
    for (i = [MEMORY[0x1E696AD60] stringWithCapacity:2 * v4];
    {
      v6 = *v3++;
      [i appendFormat:@"%02lx", v6];
    }

    v3 = [MEMORY[0x1E696AEC0] stringWithString:i];
  }

  return v3;
}

+ (id)_uiTestLocalBaseURL
{
  if (_uiTestLocalBaseURL_predicate != -1)
  {
    +[TPSContentURLController _uiTestLocalBaseURL];
  }

  v3 = _uiTestLocalBaseURL_gOfflineContentURL;

  return v3;
}

void __46__TPSContentURLController__uiTestLocalBaseURL__block_invoke()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v0 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.tips"];

  v1 = MGCopyAnswer();
  v2 = [v6 URLByAppendingPathComponent:@"UITestOfflineContent" isDirectory:1];
  v3 = _uiTestLocalBaseURL_gOfflineContentURL;
  _uiTestLocalBaseURL_gOfflineContentURL = v2;

  v4 = [_uiTestLocalBaseURL_gOfflineContentURL URLByAppendingPathComponent:v1 isDirectory:0];
  v5 = _uiTestLocalBaseURL_gOfflineContentURL;
  _uiTestLocalBaseURL_gOfflineContentURL = v4;
}

+ (id)_uiTestLocalURLForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _uiTestLocalBaseURL];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.json", v4];

  v7 = [v5 URLByAppendingPathComponent:v6 isDirectory:0];

  return v7;
}

@end