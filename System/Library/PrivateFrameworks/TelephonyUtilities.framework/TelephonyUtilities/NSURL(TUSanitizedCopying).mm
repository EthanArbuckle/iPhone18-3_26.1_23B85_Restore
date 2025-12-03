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
  tu_defaultAllowedSchemes = [MEMORY[0x1E695DFF8] tu_defaultAllowedSchemes];
  v3 = [self sanitizedCopyWithZone:0 allowedSchemes:tu_defaultAllowedSchemes];

  return v3;
}

- (id)sanitizedCopyWithZone:()TUSanitizedCopying
{
  tu_defaultAllowedSchemes = [MEMORY[0x1E695DFF8] tu_defaultAllowedSchemes];
  v6 = [self sanitizedCopyWithZone:a3 allowedSchemes:tu_defaultAllowedSchemes];

  return v6;
}

- (id)sanitizedCopyWithZone:()TUSanitizedCopying allowedSchemes:
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  scheme = [self scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString length])
  {
    if ([v6 containsObject:lowercaseString])
    {
      v9 = [self copyWithZone:a3];
      goto LABEL_10;
    }

    v10 = TUDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      selfCopy2 = self;
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
      selfCopy2 = self;
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