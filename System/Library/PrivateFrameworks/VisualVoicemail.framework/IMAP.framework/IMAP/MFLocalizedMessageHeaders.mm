@interface MFLocalizedMessageHeaders
+ (id)englishHeadersFromLocalizedHeaders:(id)headers;
+ (id)localizedHeaders;
+ (id)localizedHeadersFromEnglishHeaders:(id)headers;
- (id)copyFormattedHeaderValueFromAddressList:(id)list;
- (id)markupString;
- (void)appendHeaderMarkupForKey:(id)key value:(id)value toString:(id)string;
@end

@implementation MFLocalizedMessageHeaders

- (id)copyFormattedHeaderValueFromAddressList:(id)list
{
  v3 = MEMORY[0x277CCAB68];
  listCopy = list;
  v5 = objc_alloc_init(v3);
  v6 = [listCopy componentsJoinedByString:{@", "}];

  [v5 appendString:v6];
  if ([v5 length])
  {
    sanitizeStringForMarkup(v5);
    [v5 appendString:@"<BR>"];
  }

  return v5;
}

- (void)appendHeaderMarkupForKey:(id)key value:(id)value toString:(id)string
{
  keyCopy = key;
  valueCopy = value;
  stringCopy = string;
  v25 = keyCopy;
  v11 = +[MFLocalizedMessageHeaders localizedHeaders];
  v12 = [v11 objectForKey:v25];

  if (!v12)
  {
    v12 = v25;
  }

  v13 = [v12 mutableCopy];
  sanitizeStringForMarkup(v13);
  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<B>%@:</B> ", v13];

  [stringCopy appendString:v14];
  if (v25)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = valueCopy;
      lowercaseString = [v25 lowercaseString];
      if ([lowercaseString isEqualToString:*MEMORY[0x277D07030]])
      {
        mf_stringByLocalizingReOrFwdPrefix = [v15 mf_stringByLocalizingReOrFwdPrefix];
        v18 = [mf_stringByLocalizingReOrFwdPrefix mutableCopy];

        sanitizeStringForMarkup(v18);
        v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<B>%@</B><BR>", v18];
      }

      else
      {
        if ([lowercaseString isEqualToString:*MEMORY[0x277D06F98]])
        {
          v21 = [MEMORY[0x277CBEAA8] mf_copyDateInCommonFormatsWithString:v15];
          if (v21)
          {
            cf = CFLocaleCopyCurrent();
            v22 = CFDateFormatterCreate(0, cf, kCFDateFormatterLongStyle, kCFDateFormatterLongStyle);
            StringWithDate = CFDateFormatterCreateStringWithDate(0, v22, v21);
            v18 = [(__CFString *)StringWithDate mutableCopy];
            sanitizeStringForMarkup(v18);
            v20 = [v18 stringByAppendingString:@"<BR>"];
            CFRelease(v22);
            CFRelease(cf);
          }

          else
          {
            v18 = 0;
            v20 = 0;
          }

LABEL_18:
          if (!v20)
          {
LABEL_20:

            goto LABEL_21;
          }

LABEL_19:
          [stringCopy appendString:v20];
          goto LABEL_20;
        }

        v18 = [v15 mutableCopy];
        sanitizeStringForMarkup(v18);
        v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@<BR>", v18];
      }

      v20 = v19;
      goto LABEL_18;
    }

    if ([objc_opt_class() isStructuredHeaderKey:v25])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [(MFLocalizedMessageHeaders *)self copyFormattedHeaderValueFromAddressList:valueCopy];
        if (!v20)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }
  }

LABEL_21:
}

- (id)markupString
{
  v30 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D24F40] basicHeaders];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  v3 = 0;
  if (v18)
  {
    v17 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v24 + 1) + 8 * i);
        v6 = [(MFMessageHeaders *)self headersForKey:v5];
        if (v6)
        {
          v7 = [(MFMessageHeaders *)self _capitalizedKeyForKey:v5];
          if (!v3)
          {
            v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
          }

          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v19 = v6;
          v8 = v6;
          v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v21;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v21 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v20 + 1) + 8 * j);
                if (([v13 isEqualToString:&stru_288159858] & 1) == 0)
                {
                  [(MFLocalizedMessageHeaders *)self appendHeaderMarkupForKey:v7 value:v13 toString:v3];
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v10);
          }

          v6 = v19;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v18);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)localizedHeaders
{
  v2 = localizedHeaders_headers;
  if (!localizedHeaders_headers)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{@"To", @"Reply-To", @"Reply-To", @"Subject", @"Subject", @"From", @"From", @"Cc", @"Cc", @"Bcc", @"Bcc", @"Date", @"Date", @"Attachments", @"Attachments", @"Resent-To", @"Resent-To", @"Resent-Cc", @"Resent-Cc", @"Resent-From", @"Resent-From", 0}];
    v4 = localizedHeaders_headers;
    localizedHeaders_headers = v3;

    v2 = localizedHeaders_headers;
  }

  return v2;
}

+ (id)localizedHeadersFromEnglishHeaders:(id)headers
{
  v22 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(headersCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = headersCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = +[MFLocalizedMessageHeaders localizedHeaders];
        v12 = [v11 objectForKey:v10];

        if (v12 && ([v12 isEqualToString:&stru_288159858] & 1) == 0)
        {
          v13 = v4;
          v14 = v12;
        }

        else
        {
          v13 = v4;
          v14 = v10;
        }

        [v13 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)englishHeadersFromLocalizedHeaders:(id)headers
{
  v23 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(headersCopy, "count")}];
  v5 = +[MFLocalizedMessageHeaders localizedHeaders];
  allValues = [v5 allValues];
  allKeys = [v5 allKeys];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = headersCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [allValues indexOfObject:{v13, v18}];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v4 addObject:v13];
        }

        else
        {
          v15 = [allKeys objectAtIndex:v14];
          [v4 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

@end