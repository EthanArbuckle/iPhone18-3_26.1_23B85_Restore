@interface TSWPHyperlinkField
+ (BOOL)schemeIsValidForURL:(id)l;
+ (BOOL)schemeIsValidForURLReference:(id)reference;
+ (id)defaultFileURL;
+ (id)defaultURLFromDefaultsKey:(id)key defaultValue:(id)value;
+ (id)defaultWebURL;
+ (id)newURLFromURLReference:(id)reference;
+ (id)urlReferenceFromURL:(id)l;
+ (int)schemeFromURL:(id)l;
- (BOOL)isFileURL;
- (NSString)displayText;
- (NSURL)url;
- (TSWPHyperlinkField)initWithContext:(id)context url:(id)url;
- (id)canonicalRepresentationURL;
- (id)copyWithContext:(id)context;
- (id)filePath;
- (id)fullPath;
- (id)urlPrefix;
- (id)urlReference;
- (int)scheme;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)dealloc;
- (void)setURL:(id)l;
- (void)setURLReference:(id)reference;
@end

@implementation TSWPHyperlinkField

- (void)setURL:(id)l
{
  [(TSPObject *)self willModify];
  lCopy = l;

  self->_url = l;
}

- (NSString)displayText
{
  result = [(TSWPSmartField *)self parentStorage];
  if (result)
  {
    parentStorage = [(TSWPSmartField *)self parentStorage];
    range = [(TSWPSmartField *)self range];

    return [(TSWPStorage *)parentStorage substringWithRange:range, v5];
  }

  return result;
}

+ (int)schemeFromURL:(id)l
{
  if (!l)
  {
    return 8;
  }

  v4 = [objc_msgSend(l "scheme")];
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
    absoluteString = [l absoluteString];
    v6 = 8;
    if (absoluteString)
    {
      v8 = absoluteString;
      v9 = [absoluteString rangeOfString:@"#"] ? 8 : 3;
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
  scheme = [(TSWPHyperlinkField *)self scheme];
  if (scheme > 7 || ((1 << scheme) & 0x87) == 0)
  {
    return 0;
  }

  return [(TSWPHyperlinkField *)self url];
}

+ (BOOL)schemeIsValidForURL:(id)l
{
  v4 = [+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")];
  v5 = [objc_msgSend(l "scheme")];
  if (v5)
  {
    LOBYTE(v5) = [v4 member:v5] == 0;
  }

  return v5;
}

+ (BOOL)schemeIsValidForURLReference:(id)reference
{
  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:reference];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_class() schemeIsValidForURL:v3];

    LOBYTE(v3) = v5;
  }

  return v3;
}

+ (id)defaultURLFromDefaultsKey:(id)key defaultValue:(id)value
{
  v5 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (!v5 || (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v6 length] || (result = objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v6)) == 0)
  {
    v8 = MEMORY[0x277CBEBC0];

    return [v8 URLWithString:value];
  }

  return result;
}

+ (id)defaultWebURL
{
  v3 = [TSWPBundle() localizedStringForKey:@"http://www.apple.com" value:&stru_287D36338 table:@"TSText"];

  return [self defaultURLFromDefaultsKey:@"DefaultWebURL" defaultValue:v3];
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

+ (id)urlReferenceFromURL:(id)l
{
  if (!l)
  {
    return 0;
  }

  if ([l isFileURL])
  {
    v4 = CFURLCopyFileSystemPath(l, kCFURLPOSIXPathStyle);
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

    return [l absoluteString];
  }
}

+ (id)newURLFromURLReference:(id)reference
{
  if (!reference)
  {
    return 0;
  }

  if (![reference hasPrefix:@"file://"])
  {
    result = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:reference];
    if (result)
    {
      return result;
    }

    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPHyperlinkField newURLFromURLReference:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPHyperlinkField.mm"), 394, @"Failed to create an NSURL from %@", reference}];
    if ([reference hasPrefix:@"mailto:"])
    {
      v12 = +[TSWPHyperlinkField defaultMailURL];
      goto LABEL_18;
    }

    return 0;
  }

  v4 = [reference substringFromIndex:{objc_msgSend(@"file://", "length")}];
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
    stringByExpandingTildeInPath = [(__CFString *)v6 stringByExpandingTildeInPath];
    CFRelease(v7);
    if (!stringByExpandingTildeInPath)
    {
      goto LABEL_14;
    }
  }

  else
  {
    stringByExpandingTildeInPath = [(__CFString *)v5 stringByExpandingTildeInPath];
    if (!stringByExpandingTildeInPath)
    {
LABEL_14:
      stringByExpandingTildeInPath = @"/";
      goto LABEL_15;
    }
  }

  if (![(__CFString *)stringByExpandingTildeInPath length])
  {
    goto LABEL_14;
  }

LABEL_15:
  result = MEMORY[0x26D6A7D20](0, stringByExpandingTildeInPath, 0, 0, 0);
  if (result)
  {
    return result;
  }

  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPHyperlinkField newURLFromURLReference:]"];
  [currentHandler2 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPHyperlinkField.mm"), 384, @"Failed to create a CFURL from path %@", stringByExpandingTildeInPath}];
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

- (TSWPHyperlinkField)initWithContext:(id)context url:(id)url
{
  v8.receiver = self;
  v8.super_class = TSWPHyperlinkField;
  v5 = [(TSWPSmartField *)&v8 initWithContext:context];
  v6 = v5;
  if (v5)
  {
    [(TSWPHyperlinkField *)v5 setURL:url];
  }

  return v6;
}

- (id)copyWithContext:(id)context
{
  v5 = [objc_opt_class() allocWithZone:{-[TSWPHyperlinkField zone](self, "zone")}];
  url = self->_url;

  return [v5 initWithContext:context url:url];
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  v4.receiver = self;
  v4.super_class = TSWPHyperlinkField;
  [(TSWPSmartField *)&v4 adoptStylesheet:stylesheet withMapper:mapper];
}

- (NSURL)url
{
  result = self->_url;
  if (!result)
  {
    range = [(TSWPSmartField *)self range];
    if (range == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v6 = [objc_opt_class() newURLFromURLReference:{-[TSWPStorage substringWithRange:](-[TSWPSmartField parentStorage](self, "parentStorage"), "substringWithRange:", range, v5)}];

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
    range = [(TSWPSmartField *)self range];
    if (range == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v8 = range;
      v9 = v7;
      parentStorage = [(TSWPSmartField *)self parentStorage];

      return [(TSWPStorage *)parentStorage substringWithRange:v8, v9];
    }
  }
}

- (void)setURLReference:(id)reference
{
  v4 = [objc_opt_class() newURLFromURLReference:reference];
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
  absoluteString = [(NSURL *)[(TSWPHyperlinkField *)self url] absoluteString];
  if (!absoluteString)
  {
    return &stru_287D36338;
  }

  v3 = absoluteString;
  v4 = [(NSString *)absoluteString length];
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
  filePath = [(TSWPHyperlinkField *)self filePath];
  v3 = filePath;
  if (!filePath)
  {
    return v3;
  }

  if ([filePath isAbsolutePath])
  {
    return v3;
  }

  stringByExpandingTildeInPath = [@"~" stringByExpandingTildeInPath];
  if (!stringByExpandingTildeInPath)
  {
    return v3;
  }

  return [stringByExpandingTildeInPath stringByAppendingPathComponent:v3];
}

@end