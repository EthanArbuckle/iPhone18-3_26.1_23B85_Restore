@interface WCRBlockPage
+ (id)_allowedWebSitesHTML:(id)l;
+ (id)_css:(id)_css;
+ (id)_fileContentWithName:(id)name inLanguage:(id)language extension:(id)extension;
+ (id)_javascript:(id)_javascript;
+ (id)_xssSafeStringFromString:(id)string;
+ (id)blockPageForUser:(id)user inLanguage:(id)language withUserVisibleURLString:(id)string withFormPostToURLString:(id)lString withFormRestrictedPageURLString:(id)rLString withFormRestrictedPageTitle:(id)title withAllowedWebsites:(id)websites isAllowedWebsitesOnlyBlock:(BOOL)self0 isNetworkAccount:(BOOL)self1 allowsOverrides:(BOOL)self2;
+ (id)createBlockPageFromTemplate:(id)template inLanguage:(id)language withUserVisibleURLString:(id)string isAllowedWebsitesOnlyBlock:(BOOL)block withAllowedWebsites:(id)websites withFormPostToURLString:(id)lString withFormRestrictedPageURLString:(id)rLString withFormRestrictedPageTitle:(id)self0;
@end

@implementation WCRBlockPage

+ (id)blockPageForUser:(id)user inLanguage:(id)language withUserVisibleURLString:(id)string withFormPostToURLString:(id)lString withFormRestrictedPageURLString:(id)rLString withFormRestrictedPageTitle:(id)title withAllowedWebsites:(id)websites isAllowedWebsitesOnlyBlock:(BOOL)self0 isNetworkAccount:(BOOL)self1 allowsOverrides:(BOOL)self2
{
  languageCopy = language;
  stringCopy = string;
  lStringCopy = lString;
  rLStringCopy = rLString;
  titleCopy = title;
  websitesCopy = websites;
  if (languageCopy)
  {
    v18 = languageCopy;
  }

  else
  {
    v18 = @"en";
  }

  v19 = [MEMORY[0x277CCAB68] stringWithString:@"blockpage-macOS"];
  v20 = v19;
  if (account)
  {
    [v19 appendString:@"-net"];
    if (!block)
    {
LABEL_6:
      if (overrides)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if (!block)
  {
    goto LABEL_6;
  }

  [v20 appendString:@"-wl"];
  if (!overrides)
  {
LABEL_7:
    v21 = [MEMORY[0x277CCAB68] stringWithString:@"blockpage-macOS-nooverride"];

    v20 = v21;
  }

LABEL_8:
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v20 copy];
  v24 = [v22 URLForResource:v23 withExtension:@"html" subdirectory:0 localization:v18];

  if (v24)
  {
    v37 = 0;
    v25 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v24 encoding:4 error:&v37];
    v26 = v37;
    if (v25)
    {
      v28 = lStringCopy;
      v27 = stringCopy;
      v29 = [objc_opt_class() createBlockPageFromTemplate:v25 inLanguage:v18 withUserVisibleURLString:stringCopy isAllowedWebsitesOnlyBlock:block withAllowedWebsites:websitesCopy withFormPostToURLString:lStringCopy withFormRestrictedPageURLString:rLStringCopy withFormRestrictedPageTitle:titleCopy];
    }

    else
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error loading block page: %@", v26];
      [WCRLogging log:v31 withType:1];

      v29 = 0;
      v28 = lStringCopy;
      v27 = stringCopy;
    }
  }

  else
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"BlockPageURL was nil"];
    [WCRLogging log:v30 withType:1];

    v29 = 0;
    v28 = lStringCopy;
    v27 = stringCopy;
  }

  return v29;
}

+ (id)_fileContentWithName:(id)name inLanguage:(id)language extension:(id)extension
{
  nameCopy = name;
  v8 = MEMORY[0x277CCA8D8];
  extensionCopy = extension;
  languageCopy = language;
  v11 = [v8 bundleForClass:objc_opt_class()];
  v12 = [v11 URLForResource:nameCopy withExtension:extensionCopy subdirectory:0 localization:languageCopy];

  if (v12)
  {
    v18 = 0;
    v13 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v12 encoding:4 error:&v18];
    v14 = v18;
    if (!v13)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"error loading file with name %@. Error: %@", nameCopy, v14];
      [WCRLogging log:v15 withType:1];
    }
  }

  else
  {
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Error finding file with name %@", nameCopy];
    [WCRLogging log:nameCopy withType:1];

    v13 = 0;
  }

  return v13;
}

+ (id)_css:(id)_css
{
  _cssCopy = _css;
  v4 = [objc_opt_class() _fileContentWithName:@"blockpage_style-macOS" inLanguage:_cssCopy extension:@"css"];

  return v4;
}

+ (id)_javascript:(id)_javascript
{
  _javascriptCopy = _javascript;
  v4 = [objc_opt_class() _fileContentWithName:@"blockpage_script" inLanguage:_javascriptCopy extension:@"js"];

  return v4;
}

+ (id)_xssSafeStringFromString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy stringByReplacingOccurrencesOfString:@"&" withString:@"&amp" options:2 range:{0, objc_msgSend(stringCopy, "length")}];;

  v5 = [v4 stringByReplacingOccurrencesOfString:@"<" withString:@"&lt" options:2 range:{0, objc_msgSend(v4, "length")}];;

  v6 = [v5 stringByReplacingOccurrencesOfString:@">" withString:@"&gt" options:2 range:{0, objc_msgSend(v5, "length")}];;

  v7 = [v6 stringByReplacingOccurrencesOfString:@" withString:@"&quot" options:2 range:{0, objc_msgSend(v6, "length"")}];;

  v8 = [v7 stringByReplacingOccurrencesOfString:@"'" withString:@"&apos" options:2 range:{0, objc_msgSend(v7, "length")}];;

  return v8;
}

+ (id)_allowedWebSitesHTML:(id)l
{
  v26 = *MEMORY[0x277D85DE8];
  lCopy = l;
  string = [MEMORY[0x277CCAB68] string];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = lCopy;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 objectForKey:@"address"];
        v11 = [v9 objectForKey:@"pageTitle"];
        v12 = v11;
        if (v10)
        {
          if (v11)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error getting address from websiteInfo"];
          [WCRLogging log:v14 withType:1];

          v10 = @"http://www.error.com";
          if (v12)
          {
LABEL_8:
            v13 = [objc_opt_class() _xssSafeStringFromString:v12];
            goto LABEL_11;
          }
        }

        v13 = v10;
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error getting title from websiteInfo"];
        [WCRLogging log:v12 withType:1];
LABEL_11:

        if ([(__CFString *)v13 length]>= 0x29)
        {
          v15 = MEMORY[0x277CCACA8];
          v16 = [(__CFString *)v13 substringToIndex:40];
          v17 = [v15 stringWithFormat:@"%@...", v16];

          v13 = v17;
        }

        [string appendFormat:@"<a href=%@>%@</a><br>", v10, v13];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = *MEMORY[0x277D85DE8];

  return string;
}

+ (id)createBlockPageFromTemplate:(id)template inLanguage:(id)language withUserVisibleURLString:(id)string isAllowedWebsitesOnlyBlock:(BOOL)block withAllowedWebsites:(id)websites withFormPostToURLString:(id)lString withFormRestrictedPageURLString:(id)rLString withFormRestrictedPageTitle:(id)self0
{
  blockCopy = block;
  templateCopy = template;
  languageCopy = language;
  stringCopy = string;
  websitesCopy = websites;
  lStringCopy = lString;
  rLStringCopy = rLString;
  titleCopy = title;
  if (!templateCopy)
  {
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"block page is nil"];
    [WCRLogging log:v35 withType:1];
    v32 = 0;
    goto LABEL_22;
  }

  v40 = blockCopy;
  v41 = websitesCopy;
  v23 = templateCopy;
  if (stringCopy)
    v24 = {;
    v25 = [self _xssSafeStringFromString:v24];

    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = @"Impossible to determine URL";
    }

    v27 = [v23 stringByReplacingOccurrencesOfString:@"USER_VISIBLE_RESTRICTED_URL_NO_LOC" withString:v26];

    v23 = v27;
    if (!lStringCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    stringCopy = 0;
    if (!lStringCopy)
    {
      goto LABEL_8;
    }
  }

  v28 = [v23 stringByReplacingOccurrencesOfString:@"SEND_FORM_TO_URL_NO_LOC" withString:lStringCopy];

  v23 = v28;
LABEL_8:
  if (rLStringCopy)
  {
    v29 = rLStringCopy;
  }

  else
  {
    v29 = &stru_288271F70;
  }

  v30 = [v23 stringByReplacingOccurrencesOfString:@"PAGE_TO_OVERRIDE_URL_NO_LOC" withString:v29];

  if (titleCopy)
  {
    v31 = titleCopy;
  }

  else
  {
    v31 = &stru_288271F70;
  }

  v32 = [v30 stringByReplacingOccurrencesOfString:@"PAGE_TO_OVERRIDE_TITLE_NO_LOC" withString:v31];

  if (v40)
  {
    v33 = [objc_opt_class() _allowedWebSitesHTML:v41];
    v34 = [v32 stringByReplacingOccurrencesOfString:@"ALLOWED_LIST_OF_WEBSITES_NO_LOC" withString:v33];

    v32 = v34;
  }

  v35 = [objc_opt_class() _javascript:languageCopy];
  v36 = [objc_opt_class() _css:languageCopy];
  if (v35)
  {
    v37 = [v32 stringByReplacingOccurrencesOfString:@"INCLUDE_JAVASCRIPT_FILE_NO_LOC" withString:v35];

    v32 = v37;
  }

  if (v36)
  {
    v38 = [v32 stringByReplacingOccurrencesOfString:@"INCLUDE_CSS_FILE_NO_LOC" withString:v36];

    v32 = v38;
  }

  websitesCopy = v41;

LABEL_22:

  return v32;
}

@end