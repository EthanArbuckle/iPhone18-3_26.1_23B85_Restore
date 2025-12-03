@interface WFWebPageToFilterText
- (BOOL)isWorthAnalyzingWithEvidence:(int *)evidence message:(id *)message;
- (BOOL)selfRestricted;
- (id)URLFuzzyForFilter;
- (id)rawPlainText;
@end

@implementation WFWebPageToFilterText

- (id)rawPlainText
{
  v3 = objc_opt_new();
  [v3 appendString:kWFWebPageToFilterText_Signature];
  [v3 appendString:@"\n"];
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"%@\n%@\n", kWFWebPageToFilterText_AdWord, WFWebPageToTrainingText_Category1];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:weight:](self, "plainTextAttributeWithSelector:title:weight:", sel_pageTitle, kWFWebPageToFilterText_Title, 15)}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:weight:](self, "plainTextAttributeWithSelector:title:weight:", sel_tags, kWFWebPageToFilterText_Tags, 5)}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:weight:](self, "plainTextAttributeWithSelector:title:weight:", sel_metaTagDescription, kWFWebPageToFilterText_Description, 10)}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:weight:](self, "plainTextAttributeWithSelector:title:weight:", sel_metaTagKeywords, kWFWebPageToFilterText_Keywords, 10)}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:](self, "plainTextAttributeWithSelector:title:", sel_imageAltsText, kWFWebPageToFilterText_ImageAlts)}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:](self, "plainTextAttributeWithSelector:title:", sel_linkTitlesText, kWFWebPageToFilterText_LinkTitles)}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:](self, "plainTextAttributeWithSelector:title:", sel_pageContent, kWFWebPageToFilterText_PageContent)}];

  return v3;
}

- (BOOL)isWorthAnalyzingWithEvidence:(int *)evidence message:(id *)message
{
  v20 = *MEMORY[0x277D85DE8];
  *message = 0;
  pageContent = [(WFWebPageDecorator *)self pageContent];
  v8 = [pageContent length];
  if (v8 <= 0x3B && ![-[WFWebPageDecorator images](self "images")] && objc_msgSend(-[WFWebPageDecorator scriptBlocks](self, "scriptBlocks"), "count") <= 3 && objc_msgSend(-[WFWebPageDecorator metaTagKeywords](self, "metaTagKeywords"), "length") <= 4 && objc_msgSend(-[WFWebPageDecorator metaTagDescription](self, "metaTagDescription"), "length") <= 4)
  {
    v9 = [pageContent stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")}];
    v10 = __WFDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v17 = [pageContent length];
      v18 = 2048;
      v19 = [-[WFWebPageDecorator scriptBlocks](self "scriptBlocks")];
      _os_log_impl(&dword_272D73000, v10, OS_LOG_TYPE_INFO, "Page not worth analyzing [pageContent length]:%lu [[self images] count]==0 [[self scriptBlocks] count]:%lu", buf, 0x16u);
    }

    if ([v9 length] <= 0xF)
    {
      result = 0;
      *evidence = 5;
      v12 = @"too little content found";
      goto LABEL_20;
    }
  }

  if ([(WFWebPageDecorator *)self hasFrameset])
  {
    if (v8 <= 0x7F)
    {
      *evidence = 6;
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"it has a frameset (length:%lu)", v8];
LABEL_15:
      v12 = v11;
      result = 0;
LABEL_20:
      *message = v12;
      goto LABEL_21;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"it has a frameset, but there is a lot of content! (length:%lu)", v8];
    goto LABEL_19;
  }

  if ([(WFWebPageDecorator *)self hasShortRefresh])
  {
    if (v8 <= 0x7F)
    {
      *evidence = 7;
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"it has a short refresh (length:%lu)", v8];
      goto LABEL_15;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"it has a short refresh, but there is a lot of content! (length:%lu)", v8];
LABEL_19:
    v12 = v14;
    result = 1;
    goto LABEL_20;
  }

  result = 1;
LABEL_21:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)selfRestricted
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [-[WFWebPageDecorator metaTagsLabeled](self "metaTagsLabeled")];
  if (v3 && ![v3 caseInsensitiveCompare:@"RTA-5042-1996-1400-1577-RTA"])
  {
LABEL_30:
    result = 1;
  }

  else
  {
    metaTagsUnlabeled = [(WFWebPageDecorator *)self metaTagsUnlabeled];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [metaTagsUnlabeled countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
LABEL_5:
      v8 = 0;
      while (1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(metaTagsUnlabeled);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        [v9 rangeOfString:@"SS~~" options:1];
        if (v10)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [metaTagsUnlabeled countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v6)
          {
            goto LABEL_5;
          }

          goto LABEL_29;
        }
      }

      if (v9)
      {
        v11 = [MEMORY[0x277CCAC80] scannerWithString:v9];
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v17 = 0;
        v16 = 0;
        while (([v11 scanUpToString:@"SS~~" intoString:0] & 1) != 0 || objc_msgSend(v11, "scanString:intoString:", @"SS~~", 0))
        {
          [v11 scanString:@"SS~~" intoString:0];
          if (![v11 scanUpToString:@" " intoString:&v17] || !objc_msgSend(v11, "scanInt:", &v16))
          {
            break;
          }

          v13 = [MEMORY[0x277CCABB0] numberWithInt:v16];
          [dictionary setObject:v13 forKey:v17];
        }

        if ([objc_msgSend(dictionary objectForKey:{@"000", "intValue"}] > 4 || objc_msgSend(objc_msgSend(dictionary, "objectForKey:", @"001"), "intValue") > 5 || objc_msgSend(objc_msgSend(dictionary, "objectForKey:", @"002"), "intValue") > 5 || objc_msgSend(objc_msgSend(dictionary, "objectForKey:", @"003"), "intValue") > 5 || objc_msgSend(objc_msgSend(dictionary, "objectForKey:", @"004"), "intValue") > 5 || objc_msgSend(objc_msgSend(dictionary, "objectForKey:", @"005"), "intValue") > 5 || objc_msgSend(objc_msgSend(dictionary, "objectForKey:", @"007"), "intValue") > 4 || objc_msgSend(objc_msgSend(dictionary, "objectForKey:", @"008"), "intValue") > 5 || objc_msgSend(objc_msgSend(dictionary, "objectForKey:", @"009"), "intValue") > 5 || objc_msgSend(objc_msgSend(dictionary, "objectForKey:", @"00A"), "intValue") > 5)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_29:
    result = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)URLFuzzyForFilter
{
  v3 = objc_opt_new();
  v4 = 3;
  do
  {
    [v3 appendString:{-[WFWebPageToFilterText URLFuzzyWithWordLength:](self, "URLFuzzyWithWordLength:", v4)}];
    [v3 appendString:@"\n"];
    v4 = (v4 + 1);
  }

  while (v4 != 7);

  return v3;
}

@end