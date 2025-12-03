@interface NSString(NSStringUtils)
+ (id)mf_UUID;
+ (id)mf_messageIDStringWithDomainHint:()NSStringUtils;
+ (id)mf_stringForMimeTypeFromFileName:()NSStringUtils;
+ (id)mf_stringWithAttachmentCharacter;
- (__CFString)mf_stringByEscapingHTMLCodes;
- (id)mf_fileSystemString;
- (id)mf_prefixToString:()NSStringUtils;
- (id)mf_stringByEscapingForXML;
- (id)mf_stringByLocalizingReOrFwdPrefix;
- (id)mf_stringByTrimmingWhitespaceAndNewlineCharacters;
- (id)mf_stringWithNoExtraSpaces;
- (id)mf_uniqueFilenameWithRespectToFilenames:()NSStringUtils;
@end

@implementation NSString(NSStringUtils)

+ (id)mf_UUID
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

+ (id)mf_messageIDStringWithDomainHint:()NSStringUtils
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a3;
  uUID = [v3 UUID];
  uUIDString = [uUID UUIDString];

  v7 = [VCIDNAEncoder stringByEncodingDomainName:v4];

  v8 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{objc_msgSend(uUIDString, "length") + objc_msgSend(v7, "length") + 3}];
  [v8 appendString:@"<"];
  [v8 appendString:uUIDString];
  if (v4)
  {
    [v8 appendString:@"@"];
    [v8 appendString:v7];
  }

  [v8 appendString:@">"];

  return v8;
}

- (id)mf_stringByLocalizingReOrFwdPrefix
{
  selfCopy = self;
  v2 = mf_stringByLocalizingReOrFwdPrefix_localizedRePrefix;
  if (mf_stringByLocalizingReOrFwdPrefix_localizedRePrefix == -1)
  {
    mf_stringByLocalizingReOrFwdPrefix_localizedRePrefix = [@"Re:" isEqualToString:@"Re:"] ^ 1;
    mf_stringByLocalizingReOrFwdPrefix_localizedFwdPrefix = [@"Fwd:" isEqualToString:@"Fwd:"] ^ 1;
    mf_stringByLocalizingReOrFwdPrefix_nonLocalizedReLength = [@"Re:" length];
    mf_stringByLocalizingReOrFwdPrefix_nonLocalizedFwdLength = [@"Fwd:" length];
    v2 = mf_stringByLocalizingReOrFwdPrefix_localizedRePrefix;
  }

  if (v2 == 1 && ![selfCopy compare:@"Re:" options:1 range:{0, mf_stringByLocalizingReOrFwdPrefix_nonLocalizedReLength}])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [selfCopy substringFromIndex:mf_stringByLocalizingReOrFwdPrefix_nonLocalizedReLength];
    v5 = [v3 stringWithFormat:@"%@⁨%@⁩", @"Re:", v4];

    selfCopy = v5;
  }

  if (mf_stringByLocalizingReOrFwdPrefix_localizedFwdPrefix == 1 && ![selfCopy compare:@"Fwd:" options:1 range:{0, mf_stringByLocalizingReOrFwdPrefix_nonLocalizedFwdLength}])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [selfCopy substringFromIndex:mf_stringByLocalizingReOrFwdPrefix_nonLocalizedFwdLength];
    v8 = [v6 stringWithFormat:@"%@⁨%@⁩", @"Fwd:", v7];

    selfCopy = v8;
  }

  return selfCopy;
}

- (id)mf_fileSystemString
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  if ([selfCopy length] && objc_msgSend(selfCopy, "getFileSystemRepresentation:maxLength:", v7, 1023))
  {
    v7[1023] = 0;
    v2 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithUTF8String:v7];
  }

  else
  {
    v2 = selfCopy;
  }

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = selfCopy;
  }

  v4 = v3;

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)mf_stringWithNoExtraSpaces
{
  v1 = [self mutableCopy];
  if ([v1 length])
  {
    v2 = 0;
    do
    {
      v3 = [v1 characterAtIndex:v2++];
      if (v3 == 32)
      {
        while (v2 < [v1 length] && objc_msgSend(v1, "characterAtIndex:", v2) == 32)
        {
          [v1 deleteCharactersInRange:{v2, 1}];
        }
      }
    }

    while (v2 < [v1 length]);
  }

  if ([v1 length] && objc_msgSend(v1, "characterAtIndex:", 0) == 32)
  {
    [v1 deleteCharactersInRange:{0, 1}];
  }

  v4 = [v1 length];
  if (v4)
  {
    v5 = v4 - 1;
    if ([v1 characterAtIndex:v4 - 1] == 32)
    {
      [v1 deleteCharactersInRange:{v5, 1}];
    }
  }

  return v1;
}

+ (id)mf_stringWithAttachmentCharacter
{
  v0 = mf_stringWithAttachmentCharacter_stringWithAttachmentCharacter;
  if (!mf_stringWithAttachmentCharacter_stringWithAttachmentCharacter)
  {
    v4 = -4;
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v4 length:1];
    v2 = mf_stringWithAttachmentCharacter_stringWithAttachmentCharacter;
    mf_stringWithAttachmentCharacter_stringWithAttachmentCharacter = v1;

    v0 = mf_stringWithAttachmentCharacter_stringWithAttachmentCharacter;
  }

  return v0;
}

- (id)mf_uniqueFilenameWithRespectToFilenames:()NSStringUtils
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  LODWORD(v5) = 0;
  pathExtension = 0;
  stringByDeletingPathExtension = 0;
  selfCopy = 0;
  do
  {
LABEL_2:
    if (!selfCopy)
    {
      selfCopy = self;
      goto LABEL_12;
    }

    if (stringByDeletingPathExtension)
    {
      if (!pathExtension)
      {
        goto LABEL_9;
      }
    }

    else
    {
      stringByDeletingPathExtension = [self stringByDeletingPathExtension];
      if (!pathExtension)
      {
LABEL_9:
        pathExtension = [self pathExtension];
      }
    }

    v5 = (v5 + 1);
    if ([pathExtension length])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%d.%@", stringByDeletingPathExtension, v5, pathExtension];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%d", stringByDeletingPathExtension, v5, v19];
    }
    v9 = ;

    selfCopy = v9;
LABEL_12:
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if ([*(*(&v20 + 1) + 8 * i) isEqualToString:selfCopy])
          {

            goto LABEL_2;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v15 = selfCopy;
  }

  while (!v15);
  v16 = selfCopy;

  v17 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)mf_stringByEscapingForXML
{
  v1 = [self mutableCopy];
  [v1 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"'" withString:@"&apos;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@" withString:@"&quot;" options:0 range:{0, objc_msgSend(v1, "length"")}];

  return v1;
}

- (__CFString)mf_stringByEscapingHTMLCodes
{
  v17 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  selfCopy = self;
  v3 = [self length];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = v4 - v5 >= 0x1FF ? 511 : v4 - v5;
      [selfCopy getCharacters:chars range:{v5, v7}];
      if (v4 != v5)
      {
        break;
      }

LABEL_7:
      v5 += v7;
      if (v5 >= v4)
      {
        goto LABEL_33;
      }
    }

    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = chars;
    while (1)
    {
      v10 = *v9;
      if (v10 > 0x25)
      {
        switch(v10)
        {
          case '&':
            v11 = string;
            v12 = @"&amp;";
            goto LABEL_28;
          case '>':
            v11 = string;
            v12 = @"&gt;";
            goto LABEL_28;
          case '<':
            v11 = string;
            v12 = @"&lt;";
LABEL_28:
            [(__CFString *)v11 appendString:v12];
            goto LABEL_29;
        }
      }

      else
      {
        switch(v10)
        {
          case 9u:
            v11 = string;
            v12 = @"&nbsp;&nbsp;&nbsp;&nbsp;";
            goto LABEL_28;
          case 0xAu:
            v11 = string;
            v12 = @"<br>";
            goto LABEL_28;
          case 0x20u:
            if (v6)
            {
              [(__CFString *)string appendString:@"&nbsp;"];
              v6 = 1;
            }

            else
            {
              v6 = 1;
              CFStringAppendCharacters(string, v9, 1);
            }

            goto LABEL_30;
        }
      }

      CFStringAppendCharacters(string, v9, 1);
LABEL_29:
      v6 = 0;
LABEL_30:
      ++v9;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_33:
  v13 = *MEMORY[0x277D85DE8];

  return string;
}

+ (id)mf_stringForMimeTypeFromFileName:()NSStringUtils
{
  v3 = MEMORY[0x277D24FB0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  pathExtension = [v4 pathExtension];
  [v5 setPathExtension:pathExtension];

  [v5 setFilename:v4];
  mimeType = [v5 mimeType];
  if (MFGetTypeInfo())
  {
    mimeType2 = [v5 mimeType];

    mimeType = mimeType2;
  }

  return mimeType;
}

- (id)mf_stringByTrimmingWhitespaceAndNewlineCharacters
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v3;
}

- (id)mf_prefixToString:()NSStringUtils
{
  v2 = [self rangeOfString:?];
  if (v3)
  {
    v4 = [self substringWithRange:{0, v2}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end