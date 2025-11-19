@interface NSURL(TUSanitizedCopying)
+ (id)tu_defaultAllowedSchemes;
- (id)sanitizedCopy;
- (id)sanitizedCopyWithZone:()TUSanitizedCopying;
- (id)sanitizedCopyWithZone:()TUSanitizedCopying allowedSchemes:;
@end

@implementation NSURL(TUSanitizedCopying)

+ (id)tu_defaultAllowedSchemes
{
  if (tu_defaultAllowedSchemes_onceToken != -1)
  {
    +[NSURL(TUSanitizedCopying) tu_defaultAllowedSchemes];
  }

  v1 = tu_defaultAllowedSchemes_defaultAllowedSchemes;

  return v1;
}

- (id)sanitizedCopy
{
  v2 = [MEMORY[0x1E695DFF8] tu_defaultAllowedSchemes];
  v3 = [a1 sanitizedCopyWithZone:0 allowedSchemes:v2];

  return v3;
}

- (id)sanitizedCopyWithZone:()TUSanitizedCopying
{
  v5 = [MEMORY[0x1E695DFF8] tu_defaultAllowedSchemes];
  v6 = [a1 sanitizedCopyWithZone:a3 allowedSchemes:v5];

  return v6;
}

- (id)sanitizedCopyWithZone:()TUSanitizedCopying allowedSchemes:
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a1 scheme];
  v8 = [v7 lowercaseString];

  if ([v8 length])
  {
    if ([v6 containsObject:v8])
    {
      v9 = [a1 copyWithZone:a3];
      goto LABEL_10;
    }

    v10 = TUDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = a1;
      v18 = 2112;
      v19 = v6;
      v11 = "[WARN] URL scheme is not in list of allowed schemes: %@ allowedSchemes: %@";
      v12 = v10;
      v13 = 22;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = TUDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = a1;
      v11 = "[WARN] URL does not contain a valid scheme: %@";
      v12 = v10;
      v13 = 12;
LABEL_8:
      _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, v11, &v16, v13);
    }
  }

  v9 = 0;
LABEL_10:

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

@end