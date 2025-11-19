@interface TSWPHyperlinkField
+ (BOOL)schemeIsValidForURL:(id)a3;
+ (BOOL)schemeIsValidForURLReference:(id)a3;
+ (id)defaultFileURL;
+ (id)defaultURLFromDefaultsKey:(id)a3 defaultValue:(id)a4;
+ (id)defaultWebURL;
+ (id)newURLFromURLReference:(id)a3;
+ (id)urlReferenceFromURL:(id)a3;
+ (int)schemeFromURL:(id)a3;
- (BOOL)isFileURL;
- (NSString)displayText;
- (NSURL)url;
- (TSWPHyperlinkField)initWithContext:(id)a3 url:(id)a4;
- (id)canonicalRepresentationURL;
- (id)copyWithContext:(id)a3;
- (id)filePath;
- (id)fullPath;
- (id)urlPrefix;
- (id)urlReference;
- (int)scheme;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)dealloc;
- (void)setURL:(id)a3;
- (void)setURLReference:(id)a3;
@end

@implementation TSWPHyperlinkField

- (void)setURL:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->_url = a3;
}

- (NSString)displayText
{
  result = [(TSWPSmartField *)self parentStorage];
  if (result)
  {
    v4 = [(TSWPSmartField *)self parentStorage];
    v6 = [(TSWPSmartField *)self range];

    return [(TSWPStorage *)v4 substringWithRange:v6, v5];
  }

  return result;
}

+ (int)schemeFromURL:(id)a3
{
  if (!a3)
  {
    return 8;
  }

  v4 = [objc_msgSend(a3 "scheme")];
  if (v4)
  {
    v5 = v4;
    if ([v4 isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"https"))
    {
      return 0;
    }

    else if ([v5 isEqualToString:@"file"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"keynote"))
    {
      return 1;
    }

    else if ([v5 isEqualToString:@"mailto"])
    {
      return 2;
    }

    else if ([v5 isEqualToString:@"tel"])
    {
      return 7;
    }

    else if ([v5 isEqualToString:@"pages"])
    {
      return 4;
    }

    else
    {
      return 8;
    }
  }

  else
  {
    v7 = [a3 absoluteString];
    v6 = 8;
    if (v7)
    {
      v8 = v7;
      v9 = [v7 rangeOfString:@"#"] ? 8 : 3;
      v10 = [v8 rangeOfString:@"?slide="];
      v11 = [v8 rangeOfString:@"?action=retreat"];
      v12 = !v10 || v11 == 0;
      v6 = v12 ? 5 : v9;
      if (![v8 rangeOfString:@"?action=exitpresentation"])
      {
        return 6;
      }
    }
  }

  return v6;
}

- (id)canonicalRepresentationURL
{
  v3 = [(TSWPHyperlinkField *)self scheme];
  if (v3 > 7 || ((1 << v3) & 0x87) == 0)
  {
    return 0;
  }

  return [(TSWPHyperlinkField *)self url];
}

+ (BOOL)schemeIsValidForURL:(id)a3
{
  v4 = [+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")];
  v5 = [objc_msgSend(a3 "scheme")];
  if (v5)
  {
    LOBYTE(v5) = [v4 member:v5] == 0;
  }

  return v5;
}

+ (BOOL)schemeIsValidForURLReference:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:a3];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_class() schemeIsValidForURL:v3];

    LOBYTE(v3) = v5;
  }

  return v3;
}

+ (id)defaultURLFromDefaultsKey:(id)a3 defaultValue:(id)a4
{
  v5 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (!v5 || (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v6 length] || (result = objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v6)) == 0)
  {
    v8 = MEMORY[0x277CBEBC0];

    return [v8 URLWithString:a4];
  }

  return result;
}

+ (id)defaultWebURL
{
  v3 = [TSWPBundle() localizedStringForKey:@"http://www.apple.com" value:&stru_287D36338 table:@"TSText"];

  return [a1 defaultURLFromDefaultsKey:@"DefaultWebURL" defaultValue:v3];
}

+ (id)defaultFileURL
{
  v2 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v3 length])
  {
    return 0;
  }

  v4 = MEMORY[0x277CBEBC0];

  return [v4 fileURLWithPath:v3];
}

+ (id)urlReferenceFromURL:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 isFileURL])
  {
    v4 = CFURLCopyFileSystemPath(a3, kCFURLPOSIXPathStyle);
    if (v4 && (v5 = v4, v6 = [(__CFString *)v4 stringByAbbreviatingWithTildeInPath], CFRelease(v5), (v7 = CFURLCreateStringByAddingPercentEscapes(0, v6, 0, 0, 0x8000100u)) != 0))
    {
      v8 = v7;
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"file://%@", v7];
      CFRelease(v8);
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      return v9;
    }

    else
    {
      return @"file://";
    }
  }

  else
  {

    return [a3 absoluteString];
  }
}

+ (id)newURLFromURLReference:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (![a3 hasPrefix:@"file://"])
  {
    result = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:a3];
    if (result)
    {
      return result;
    }

    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPHyperlinkField newURLFromURLReference:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPHyperlinkField.mm"), 394, @"Failed to create an NSURL from %@", a3}];
    if ([a3 hasPrefix:@"mailto:"])
    {
      v12 = +[TSWPHyperlinkField defaultMailURL];
      goto LABEL_18;
    }

    return 0;
  }

  v4 = [a3 substringFromIndex:{objc_msgSend(@"file://", "length")}];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  if (![(__CFString *)v4 length])
  {
    goto LABEL_14;
  }

  v6 = CFURLCreateStringByReplacingPercentEscapes(0, v5, &stru_287D36338);
  if (v6)
  {
    v7 = v6;
    v8 = [(__CFString *)v6 stringByExpandingTildeInPath];
    CFRelease(v7);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = [(__CFString *)v5 stringByExpandingTildeInPath];
    if (!v8)
    {
LABEL_14:
      v8 = @"/";
      goto LABEL_15;
    }
  }

  if (![(__CFString *)v8 length])
  {
    goto LABEL_14;
  }

LABEL_15:
  result = MEMORY[0x26D6A7D20](0, v8, 0, 0, 0);
  if (result)
  {
    return result;
  }

  v13 = [MEMORY[0x277D6C290] currentHandler];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPHyperlinkField newURLFromURLReference:]"];
  [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPHyperlinkField.mm"), 384, @"Failed to create a CFURL from path %@", v8}];
  v12 = +[TSWPHyperlinkField defaultFileURL];
LABEL_18:

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPHyperlinkField;
  [(TSWPSmartField *)&v3 dealloc];
}

- (TSWPHyperlinkField)initWithContext:(id)a3 url:(id)a4
{
  v8.receiver = self;
  v8.super_class = TSWPHyperlinkField;
  v5 = [(TSWPSmartField *)&v8 initWithContext:a3];
  v6 = v5;
  if (v5)
  {
    [(TSWPHyperlinkField *)v5 setURL:a4];
  }

  return v6;
}

- (id)copyWithContext:(id)a3
{
  v5 = [objc_opt_class() allocWithZone:{-[TSWPHyperlinkField zone](self, "zone")}];
  url = self->_url;

  return [v5 initWithContext:a3 url:url];
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v4.receiver = self;
  v4.super_class = TSWPHyperlinkField;
  [(TSWPSmartField *)&v4 adoptStylesheet:a3 withMapper:a4];
}

- (NSURL)url
{
  result = self->_url;
  if (!result)
  {
    v4 = [(TSWPSmartField *)self range];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v6 = [objc_opt_class() newURLFromURLReference:{-[TSWPStorage substringWithRange:](-[TSWPSmartField parentStorage](self, "parentStorage"), "substringWithRange:", v4, v5)}];

      return v6;
    }
  }

  return result;
}

- (id)urlReference
{
  if (self->_url)
  {
    v3 = objc_opt_class();
    url = self->_url;

    return [v3 urlReferenceFromURL:url];
  }

  else
  {
    v6 = [(TSWPSmartField *)self range];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v8 = v6;
      v9 = v7;
      v10 = [(TSWPSmartField *)self parentStorage];

      return [(TSWPStorage *)v10 substringWithRange:v8, v9];
    }
  }
}

- (void)setURLReference:(id)a3
{
  v4 = [objc_opt_class() newURLFromURLReference:a3];
  if (v4)
  {
    v5 = v4;
    [(TSWPHyperlinkField *)self setURL:v4];
  }
}

- (int)scheme
{
  v3 = objc_opt_class();
  v4 = [(TSWPHyperlinkField *)self url];

  return [v3 schemeFromURL:v4];
}

- (id)urlPrefix
{
  v2 = [(NSURL *)[(TSWPHyperlinkField *)self url] absoluteString];
  if (!v2)
  {
    return &stru_287D36338;
  }

  v3 = v2;
  v4 = [(NSString *)v2 length];
  v5 = [(NSString *)v3 findIndexOfCharacter:58 range:0, v4];
  if (!v5)
  {
    return &stru_287D36338;
  }

  v6 = v5;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || v5 >= [(NSString *)v3 findIndexOfCharacter:47 range:0, v4]|| v6 >= [(NSString *)v3 findIndexOfCharacter:63 range:0, v4]|| v6 >= [(NSString *)v3 findIndexOfCharacter:35 range:0, v4])
  {
    return &stru_287D36338;
  }

  return [(NSString *)v3 substringWithRange:0, v6];
}

- (BOOL)isFileURL
{
  v2 = [(TSWPHyperlinkField *)self url];

  return [(NSURL *)v2 isFileURL];
}

- (id)filePath
{
  v2 = [(TSWPHyperlinkField *)self url];
  if (![(NSURL *)v2 isFileURL])
  {
    return 0;
  }

  v3 = CFURLCopyFileSystemPath(v2, kCFURLPOSIXPathStyle);
  v4 = v3;
  return v3;
}

- (id)fullPath
{
  v2 = [(TSWPHyperlinkField *)self filePath];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  if ([v2 isAbsolutePath])
  {
    return v3;
  }

  v4 = [@"~" stringByExpandingTildeInPath];
  if (!v4)
  {
    return v3;
  }

  return [v4 stringByAppendingPathComponent:v3];
}

@end