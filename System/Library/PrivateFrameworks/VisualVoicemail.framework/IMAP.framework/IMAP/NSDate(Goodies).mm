@interface NSDate(Goodies)
- (id)mf_descriptionForMimeHeaders;
- (id)mf_replyPrefixForSender:()Goodies;
@end

@implementation NSDate(Goodies)

- (id)mf_descriptionForMimeHeaders
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateFormat:@"EEE, d MMM yyyy HH:mm:ss ZZ"];
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  v4 = [v2 stringFromDate:self];

  return v4;
}

- (id)mf_replyPrefixForSender:()Goodies
{
  v4 = a3;
  v5 = CFLocaleCopyCurrent();
  if (![@"ja_JP_TRADITIONAL" caseInsensitiveCompare:MEMORY[0x2743C1E50]()])
  {
    v6 = CFLocaleCreate(0, @"ja");
    if (v6)
    {
      v7 = v6;
      CFRelease(v5);
      v5 = v7;
    }
  }

  v8 = CFDateFormatterCreate(0, v5, kCFDateFormatterMediumStyle, kCFDateFormatterNoStyle);
  if (v8)
  {
    v9 = v8;
    StringWithDate = CFDateFormatterCreateStringWithDate(0, v8, self);
    CFRelease(v9);
  }

  else
  {
    v11 = vm_imap_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2720B1000, v11, OS_LOG_TYPE_DEFAULT, "failed to create date formatter", buf, 2u);
    }

    StringWithDate = 0;
  }

  v12 = CFDateFormatterCreate(0, v5, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
  if (v12)
  {
    v13 = v12;
    v14 = CFDateFormatterCreateStringWithDate(0, v12, self);
    CFRelease(v13);
  }

  else
  {
    v15 = vm_imap_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_2720B1000, v15, OS_LOG_TYPE_DEFAULT, "failed to create time formatter", v23, 2u);
    }

    v14 = 0;
  }

  v16 = v4;
  mf_addressComment = [v16 mf_addressComment];
  mf_uncommentedAddress = [v16 mf_uncommentedAddress];
  v19 = mf_uncommentedAddress;
  v20 = v16;
  if (mf_addressComment)
  {
    v20 = v16;
    if (mf_uncommentedAddress)
    {
      v20 = v16;
      if (([mf_addressComment isEqual:mf_uncommentedAddress] & 1) == 0)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ <%@>", mf_addressComment, v19];
      }
    }
  }

  v21 = 0;
  if (StringWithDate && v14)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"On %@, at %@, %@ wrote:\n\n", StringWithDate, v14, v20];
  }

  CFRelease(v5);

  return v21;
}

@end