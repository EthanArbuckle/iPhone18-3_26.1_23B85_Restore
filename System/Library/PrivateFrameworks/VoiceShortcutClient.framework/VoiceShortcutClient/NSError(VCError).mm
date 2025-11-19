@interface NSError(VCError)
+ (id)_vc_voiceShortcutErrorWithCode:()VCError extraUserInfo:reason:;
+ (id)vc_partialPersistenceErrorWithPartialErrors:()VCError;
+ (id)vc_voiceShortcutErrorWithCode:()VCError extraUserInfo:reason:;
+ (id)vc_voiceShortcutErrorWithCode:()VCError reason:;
+ (id)vc_voiceShortcutErrorWithCode:()VCError underlyingError:reason:;
- (BOOL)vc_isFileAlreadyExists;
- (BOOL)vc_isFileNotFound;
@end

@implementation NSError(VCError)

- (BOOL)vc_isFileNotFound
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696A250]];

  result = 1;
  if (!v3 || [a1 code] != 260 && objc_msgSend(a1, "code") != 4)
  {
    v4 = [a1 domain];
    v5 = [v4 isEqualToString:*MEMORY[0x1E696A798]];

    if (!v5 || [a1 code] != 2)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)vc_isFileAlreadyExists
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696A250]];

  result = 1;
  if (!v3 || [a1 code] != 516)
  {
    v4 = [a1 domain];
    v5 = [v4 isEqualToString:*MEMORY[0x1E696A798]];

    if (!v5 || [a1 code] != 17)
    {
      return 0;
    }
  }

  return result;
}

+ (id)vc_partialPersistenceErrorWithPartialErrors:()VCError
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v9 = @"VCPartialErrorsByItemIDKey";
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCVoiceShortcutsErrorDomain" code:1006 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_vc_voiceShortcutErrorWithCode:()VCError extraUserInfo:reason:
{
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    v9 = [v7 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v10 = v9;
  if (v8)
  {
    [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A588]];
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCVoiceShortcutsErrorDomain" code:a3 userInfo:v10];

  return v11;
}

+ (id)vc_voiceShortcutErrorWithCode:()VCError extraUserInfo:reason:
{
  v12 = a4;
  if (a5)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = a5;
    a5 = [[v13 alloc] initWithFormat:v14 arguments:&a9];
  }

  v15 = [a1 _vc_voiceShortcutErrorWithCode:a3 extraUserInfo:v12 reason:a5];

  return v15;
}

+ (id)vc_voiceShortcutErrorWithCode:()VCError reason:
{
  if (a4)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = a4;
    v13 = [[v11 alloc] initWithFormat:v12 arguments:&a9];
  }

  else
  {
    v13 = 0;
  }

  v14 = [a1 _vc_voiceShortcutErrorWithCode:a3 extraUserInfo:0 reason:v13];

  return v14;
}

+ (id)vc_voiceShortcutErrorWithCode:()VCError underlyingError:reason:
{
  v21[1] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v19 = &a9;
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v13 arguments:&a9];
    if (v12)
    {
LABEL_3:
      v20 = *MEMORY[0x1E696AA08];
      v21[0] = v12;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:{1, &a9}];
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  v16 = [a1 _vc_voiceShortcutErrorWithCode:a3 extraUserInfo:v15 reason:{v14, v19}];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

@end