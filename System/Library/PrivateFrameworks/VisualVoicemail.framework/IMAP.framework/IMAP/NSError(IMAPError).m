@interface NSError(IMAPError)
+ (id)errorWithDomain:()IMAPError code:localizedDescription:techDetails:;
+ (id)errorWithDomain:()IMAPError code:localizedDescription:title:userInfo:;
+ (id)errorWithException:()IMAPError;
- (BOOL)mf_shouldFailDownload;
- (id)mf_shortDescription;
- (id)setLocalizedDescription:()IMAPError;
- (id)setShortDescription:()IMAPError;
- (id)useGenericDescription:()IMAPError;
- (uint64_t)mf_isSMIMEError;
- (uint64_t)mf_isUserCancelledError;
- (uint64_t)mf_shouldBeReportedToUser;
@end

@implementation NSError(IMAPError)

+ (id)errorWithDomain:()IMAPError code:localizedDescription:title:userInfo:
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (errorWithDomain_code_localizedDescription_title_userInfo__onceToken == -1)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  +[NSError(IMAPError) errorWithDomain:code:localizedDescription:title:userInfo:];
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v13 | v14)
  {
    if (v15)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v15);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v18 = MutableCopy;
    if (v13)
    {
      CFDictionarySetValue(MutableCopy, *MEMORY[0x277CCA450], v13);
    }

    if (v14)
    {
      CFDictionarySetValue(v18, @"_ShortDescription", v14);
    }

    v16 = [a1 errorWithDomain:v12 code:a4 localizedDescription:0 title:0 userInfo:v18];
    v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v20 = [v19 BOOLForKey:@"NoErrorLog"];

    if ((v20 & 1) == 0)
    {
      v21 = vm_imap_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [NSError(IMAPError) errorWithDomain:v16 code:v21 localizedDescription:? title:? userInfo:?];
      }
    }

    CFRelease(v18);
  }

  else
  {
    v16 = [a1 errorWithDomain:v12 code:a4 userInfo:v15];
  }

LABEL_19:

  return v16;
}

+ (id)errorWithException:()IMAPError
{
  v4 = [a3 reason];
  v5 = [a1 errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:v4 title:0 userInfo:0];

  return v5;
}

- (id)setLocalizedDescription:()IMAPError
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = a3;
  v6 = [a1 domain];
  v7 = [a1 code];
  v8 = [a1 userInfo];
  v9 = [v4 errorWithDomain:v6 code:v7 localizedDescription:v5 title:0 userInfo:v8];

  return v9;
}

- (id)setShortDescription:()IMAPError
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = a3;
  v6 = [a1 domain];
  v7 = [a1 code];
  v8 = [a1 userInfo];
  v9 = [v4 errorWithDomain:v6 code:v7 localizedDescription:0 title:v5 userInfo:v8];

  return v9;
}

+ (id)errorWithDomain:()IMAPError code:localizedDescription:techDetails:
{
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (a6)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\nThe server error encountered was: %@", v11, a6];
  }

  else
  {
    v13 = v11;
  }

  v14 = v13;
  v15 = [a1 errorWithDomain:v10 code:a4 localizedDescription:v13 title:0 userInfo:0];

  return v15;
}

- (id)useGenericDescription:()IMAPError
{
  v4 = a3;
  v5 = [a1 localizedDescription];
  v6 = v5;
  if (v5 && ([v5 isEqualToString:&stru_288159858] & 1) == 0)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithFormat:@"%@\n\nThe server error encountered was: %@", v4, v6];

    v4 = v7;
  }

  v8 = MEMORY[0x277CCA9B8];
  v9 = [a1 domain];
  v10 = [a1 code];
  v11 = [a1 userInfo];
  v12 = [v8 errorWithDomain:v9 code:v10 localizedDescription:v4 title:0 userInfo:v11];

  return v12;
}

- (uint64_t)mf_isUserCancelledError
{
  if ([a1 code] != 1028)
  {
    return 0;
  }

  v2 = [a1 domain];
  v3 = [@"MFMessageErrorDomain" isEqualToString:v2];

  return v3;
}

- (uint64_t)mf_isSMIMEError
{
  v2 = [a1 domain];
  v3 = [a1 code];
  v4 = [@"MFMessageErrorDomain" isEqualToString:v2];
  if ((v3 - 1035) < 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)mf_shouldBeReportedToUser
{
  if ([a1 mf_isUserCancelledError])
  {
    return 0;
  }

  if ([a1 code] != 1029)
  {
    return 1;
  }

  v3 = [a1 domain];
  v2 = [@"MFMessageErrorDomain" isEqualToString:v3] ^ 1;

  return v2;
}

- (id)mf_shortDescription
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"_ShortDescription"];

  return v2;
}

- (BOOL)mf_shouldFailDownload
{
  v2 = [a1 domain];
  if ([@"MFMessageErrorDomain" isEqualToString:v2])
  {
    v3 = [a1 code] != 1036 && objc_msgSend(a1, "code") != 1035;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

+ (void)errorWithDomain:()IMAPError code:localizedDescription:title:userInfo:.cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_2720B1000, a2, OS_LOG_TYPE_ERROR, "Created error: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end