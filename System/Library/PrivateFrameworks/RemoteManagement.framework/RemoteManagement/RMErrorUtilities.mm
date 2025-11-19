@interface RMErrorUtilities
+ (BOOL)convertSwiftErrorReference:(id *)a3;
+ (id)_englishDescriptionFormatWithKey:(id)a3;
+ (id)_localizedDescriptionFormatWithKey:(id)a3;
+ (id)_populateDescriptionInUserInfo:(id)a3 descriptionKey:(id)a4;
+ (id)_populateDescriptionInUserInfo:(id)a3 descriptionKey:(id)a4 arguments:(char *)a5;
+ (id)convertSwiftError:(id)a3;
+ (id)createAssetCannotBeDownloadedErrorWithUnderlyingError:(id)a3;
+ (id)createAssetCannotProcessFileErrorWithUnderlyingError:(id)a3;
+ (id)createAssetInvalidURLError:(id)a3;
+ (id)createCannotChangeValueErrorForPropertyNamed:(id)a3 onObject:(id)a4;
+ (id)createCouldNotInstallAppWithUnderlyingError:(id)a3;
+ (id)createErrorWithCode:(int64_t)a3 userInfo:(id)a4 descriptionKey:(id)a5;
+ (id)createHTTPErrorWithStatusCode:(int64_t)a3 reason:(id)a4;
+ (id)createInternalErrorWithUnderlyingError:(id)a3;
+ (id)createMismatchedValuesErrorForPropertyNamed:(id)a3 onObject:(id)a4 expected:(id)a5 actual:(id)a6;
+ (id)createMissingMandatoryPropertyErrorWithPropertyNamed:(id)a3 onObject:(id)a4;
+ (id)createMobileKeyBagErrorWithCode:(int64_t)a3;
+ (id)createMultipleErrorOrReturnTheSingleErrorWithErrors:(id)a3;
+ (id)createMultipleValidationErrorOrReturnTheSingleErrorWithErrors:(id)a3;
+ (id)createProfileInvalidErrorWithUnderlyingError:(id)a3;
+ (id)createUnverifiedDownloadHashErrorWithURL:(id)a3;
+ (id)createUnverifiedDownloadSizeErrorWithURL:(id)a3;
@end

@implementation RMErrorUtilities

+ (id)createErrorWithCode:(int64_t)a3 userInfo:(id)a4 descriptionKey:(id)a5
{
  v6 = [a1 _populateDescriptionInUserInfo:a4 descriptionKey:a5 arguments:&v10];
  v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"RMErrorDomain" code:a3 userInfo:v6];

  return v7;
}

+ (id)_populateDescriptionInUserInfo:(id)a3 descriptionKey:(id)a4
{
  v4 = [a1 _populateDescriptionInUserInfo:a3 descriptionKey:a4 arguments:&v7];

  return v4;
}

+ (id)_populateDescriptionInUserInfo:(id)a3 descriptionKey:(id)a4 arguments:(char *)a5
{
  v31[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v29 = a5;
  v10 = [a1 _localizedDescriptionFormatWithKey:v9];
  v11 = [a1 _englishDescriptionFormatWithKey:v9];
  v12 = MEMORY[0x1E696AEC0];
  v13 = v10;
  v14 = [v12 alloc];
  v15 = [MEMORY[0x1E695DF58] currentLocale];
  v16 = [v14 initWithFormat:v13 locale:v15 arguments:v29];

  v17 = getEnglishDescription_onceToken;
  v18 = v11;
  if (v17 != -1)
  {
    +[RMErrorUtilities _populateDescriptionInUserInfo:descriptionKey:arguments:];
  }

  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  v20 = [v19 initWithFormat:v18 locale:getEnglishDescription_enUSPosixLocale arguments:v29];

  v21 = [v9 stringByReplacingOccurrencesOfString:@"_%@" withString:&stru_1F5C08D00];
  v22 = MEMORY[0x1E695DF90];
  v23 = *MEMORY[0x1E696A278];
  v30[0] = *MEMORY[0x1E696A578];
  v30[1] = v23;
  v31[0] = v16;
  v31[1] = v20;
  v30[2] = @"RMErrorUserInfoKeyDescriptionKey";
  v31[2] = v21;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v25 = [v22 dictionaryWithDictionary:v24];

  if (v8)
  {
    [v25 setValuesForKeysWithDictionary:v8];
  }

  v26 = [v25 copy];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)_localizedDescriptionFormatWithKey:(id)a3
{
  v3 = a3;
  v4 = +[RMBundle remoteManagementBundle];
  v5 = [v4 localizedStringForKey:v3 value:&stru_1F5C08D00 table:0];

  return v5;
}

+ (id)_englishDescriptionFormatWithKey:(id)a3
{
  v3 = a3;
  v4 = +[RMBundle remoteManagementBundle];
  v5 = [v4 localizedStringForKey:v3 value:&stru_1F5C08D00 table:0 localization:@"en"];

  return v5;
}

+ (id)createAssetCannotBeDownloadedErrorWithUnderlyingError:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10 = *MEMORY[0x1E696AA08];
    v11[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [a1 createErrorWithCode:2200 userInfo:v6 descriptionKey:@"Error.AssetCannotBeDownloaded"];
  }

  else
  {
    v7 = [a1 createErrorWithCode:2200 userInfo:0 descriptionKey:@"Error.AssetCannotBeDownloaded"];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)createAssetCannotProcessFileErrorWithUnderlyingError:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10 = *MEMORY[0x1E696AA08];
    v11[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [a1 createErrorWithCode:2204 userInfo:v6 descriptionKey:@"Error.AssetCannotProcessFile"];
  }

  else
  {
    v7 = [a1 createErrorWithCode:2204 userInfo:0 descriptionKey:@"Error.AssetCannotProcessFile"];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)createAssetInvalidURLError:(id)a3
{
  v4 = [a3 absoluteString];
  v5 = [a1 createErrorWithCode:2206 userInfo:0 descriptionKey:{@"Error.AssetInvalidURL_%@", v4}];

  return v5;
}

+ (id)createCannotChangeValueErrorForPropertyNamed:(id)a3 onObject:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A250];
  v16 = *MEMORY[0x1E695D4E0];
  v17 = a4;
  v8 = MEMORY[0x1E695DF20];
  v9 = a4;
  v10 = a3;
  v11 = [v8 dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v12 = [a1 _populateDescriptionInUserInfo:v11 descriptionKey:{@"Error.CannotChangeValue_%@", v10, v16, v17, v18}];

  v13 = [v6 errorWithDomain:v7 code:1550 userInfo:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)createCouldNotInstallAppWithUnderlyingError:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10 = *MEMORY[0x1E696AA08];
    v11[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [a1 createErrorWithCode:3000 userInfo:v6 descriptionKey:@"Error.CouldNotInstallApp"];
  }

  else
  {
    v7 = [a1 createErrorWithCode:3000 userInfo:0 descriptionKey:@"Error.CouldNotInstallApp"];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)createHTTPErrorWithStatusCode:(int64_t)a3 reason:(id)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14[0] = @"RMHTTPStatusCodeKey";
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  v14[1] = *MEMORY[0x1E696A588];
  v15[0] = v8;
  v15[1] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  v11 = [a1 createErrorWithCode:1000 userInfo:v9 descriptionKey:{@"Error.HTTPStatus_%@", v10, v14[0]}];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)createInternalErrorWithUnderlyingError:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10 = *MEMORY[0x1E696AA08];
    v11[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [a1 createErrorWithCode:0 userInfo:v6 descriptionKey:@"Error.Internal"];
  }

  else
  {
    v7 = [a1 createErrorWithCode:0 userInfo:0 descriptionKey:@"Error.Internal"];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)createMismatchedValuesErrorForPropertyNamed:(id)a3 onObject:(id)a4 expected:(id)a5 actual:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E695D4D8];
  v23 = *MEMORY[0x1E695D4E0];
  v24 = v10;
  v26 = a4;
  v27 = a3;
  v25 = *MEMORY[0x1E695D4E8];
  v28 = a5;
  v11 = MEMORY[0x1E695DF20];
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v11 dictionaryWithObjects:&v26 forKeys:&v23 count:3];
  v17 = MEMORY[0x1E696ABC0];
  v18 = *MEMORY[0x1E696A250];
  v19 = [a1 _populateDescriptionInUserInfo:v16 descriptionKey:{@"Error.MismatchedValues_%@_%@_%@", v15, v13, v12, v23, v24, v25, v26, v27, v28, v29}];

  v20 = [v17 errorWithDomain:v18 code:1550 userInfo:v19];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)createMissingMandatoryPropertyErrorWithPropertyNamed:(id)a3 onObject:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695D4D8];
  v17 = *MEMORY[0x1E695D4E0];
  v18 = v6;
  v19 = a4;
  v20 = a3;
  v7 = MEMORY[0x1E695DF20];
  v8 = a4;
  v9 = a3;
  v10 = [v7 dictionaryWithObjects:&v19 forKeys:&v17 count:2];
  v11 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A250];
  v13 = [a1 _populateDescriptionInUserInfo:v10 descriptionKey:{@"Error.MissingMandatoryProperty_%@", v9, v17, v18, v19, v20, v21}];
  v14 = [v11 errorWithDomain:v12 code:1570 userInfo:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)createMobileKeyBagErrorWithCode:(int64_t)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"RMMobileKeyBagErrorCodeKey";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [a1 createErrorWithCode:101 userInfo:v6 descriptionKey:{@"Error.MobileKeyBagError_%@", v7}];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)createMultipleErrorOrReturnTheSingleErrorWithErrors:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] > 1)
  {
    v10 = *MEMORY[0x1E695D300];
    v6 = [v4 copy];

    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5 = [a1 createErrorWithCode:3 userInfo:v7 descriptionKey:@"Error.Multiple"];
  }

  else
  {
    v5 = [v4 firstObject];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)createMultipleValidationErrorOrReturnTheSingleErrorWithErrors:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count] > 1)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A250];
    v7 = *MEMORY[0x1E696A278];
    v14[0] = @"Multiple validation errors occurred.";
    v8 = *MEMORY[0x1E695D300];
    v13[0] = v7;
    v13[1] = v8;
    v9 = [v3 copy];

    v14[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v4 = [v5 errorWithDomain:v6 code:1560 userInfo:v10];
  }

  else
  {
    v4 = [v3 firstObject];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)createProfileInvalidErrorWithUnderlyingError:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10 = *MEMORY[0x1E696AA08];
    v11[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [a1 createErrorWithCode:1200 userInfo:v6 descriptionKey:@"Error.ProfileInvalid"];
  }

  else
  {
    v7 = [a1 createErrorWithCode:1200 userInfo:0 descriptionKey:@"Error.ProfileInvalid"];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)createUnverifiedDownloadHashErrorWithURL:(id)a3
{
  v4 = [a3 absoluteString];
  v5 = [a1 createErrorWithCode:1004 userInfo:0 descriptionKey:{@"Error.UnverifiedDownloadHash_%@", v4}];

  return v5;
}

+ (id)createUnverifiedDownloadSizeErrorWithURL:(id)a3
{
  v4 = [a3 absoluteString];
  v5 = [a1 createErrorWithCode:1005 userInfo:0 descriptionKey:{@"Error.UnverifiedDownloadSize_%@", v4}];

  return v5;
}

+ (id)convertSwiftError:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 localizedDescription];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696A578]];

  v6 = MEMORY[0x1E696ABC0];
  v7 = [v3 domain];
  v8 = [v3 code];

  v9 = [v6 errorWithDomain:v7 code:v8 userInfo:v4];

  return v9;
}

+ (BOOL)convertSwiftErrorReference:(id *)a3
{
  if (a3 && *a3)
  {
    *a3 = [RMErrorUtilities convertSwiftError:?];
  }

  return 1;
}

@end