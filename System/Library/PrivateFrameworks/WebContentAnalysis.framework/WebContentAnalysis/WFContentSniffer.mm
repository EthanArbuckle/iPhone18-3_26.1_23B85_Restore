@interface WFContentSniffer
+ (BOOL)MIMETypeIsHTMLOrText:(id)a3;
+ (BOOL)isGIF:(id)a3;
+ (BOOL)isHTML:(id)a3;
+ (BOOL)isJPEG:(id)a3;
+ (BOOL)isOctetStream:(id)a3;
+ (BOOL)isSWF:(id)a3;
+ (BOOL)isXHTML:(id)a3;
+ (id)MIMETypeForData:(id)a3;
+ (id)MIMETypeForData:(id)a3 andString:(id)a4;
+ (id)MIMETypeForString:(id)a3;
@end

@implementation WFContentSniffer

+ (id)MIMETypeForString:(id)a3
{
  v4 = [a3 dataUsingEncoding:1];

  return [WFContentSniffer MIMETypeForData:v4 andString:a3];
}

+ (id)MIMETypeForData:(id)a3
{
  v4 = [a3 length];
  if (v4 >= 0x400)
  {
    v5 = 1024;
  }

  else
  {
    v5 = v4;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(a3 length:"bytes") encoding:{v5, 1}];
  v7 = [WFContentSniffer MIMETypeForData:a3 andString:v6];

  return v7;
}

+ (BOOL)MIMETypeIsHTMLOrText:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 isEqualToString:@"text/html"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"application/xhtml+xml"))
  {
    return 1;
  }

  return [a3 isEqualToString:@"text/plain"];
}

+ (id)MIMETypeForData:(id)a3 andString:(id)a4
{
  result = 0;
  if (a3 && a4)
  {
    if ([WFContentSniffer isXML:a4])
    {
      v7 = [WFContentSniffer isXHTML:a4];
      v8 = @"application/xml";
      v9 = @"application/xhtml+xml";
    }

    else
    {
      if ([WFContentSniffer isHTML:a4])
      {
        return @"text/html";
      }

      if ([WFContentSniffer isGIF:a4])
      {
        return @"image/gif";
      }

      if ([WFContentSniffer isJPEG:a3])
      {
        return @"image/jpeg";
      }

      if ([WFContentSniffer isPDF:a4])
      {
        return @"application/pdf";
      }

      if ([WFContentSniffer isPNG:a3])
      {
        return @"image/png";
      }

      if ([WFContentSniffer isSWF:a4])
      {
        return @"application/x-shockwave-flash";
      }

      v7 = [WFContentSniffer isWord:a3];
      v8 = @"text/plain";
      v9 = @"application/msword";
    }

    if (v7)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

+ (BOOL)isHTML:(id)a3
{
  if ([a3 WF_containsString:@"<html" options:1])
  {
    return 1;
  }

  return [a3 WF_containsString:@"</html" options:1];
}

+ (BOOL)isXHTML:(id)a3
{
  if (([a3 WF_containsString:@"<html" options:1] & 1) == 0 && !objc_msgSend(a3, "WF_containsString:options:", @"</html", 1))
  {
    return 0;
  }

  v4 = 1;
  if (([a3 WF_containsString:@"xmlns" options:1] & 1) == 0)
  {
    return 0;
  }

  return v4;
}

+ (BOOL)isGIF:(id)a3
{
  if ([a3 hasPrefix:@"GIF87a"])
  {
    return 1;
  }

  return [a3 hasPrefix:@"GIF89a"];
}

+ (BOOL)isJPEG:(id)a3
{
  if ([a3 length] < 3)
  {
    return 0;
  }

  v5 = [a3 bytes];
  return *v5 == 55551 && *(v5 + 2) == 255;
}

+ (BOOL)isSWF:(id)a3
{
  if ([a3 hasPrefix:@"FWS"])
  {
    return 1;
  }

  return [a3 hasPrefix:@"CWS"];
}

+ (BOOL)isOctetStream:(id)a3
{
  v4 = [a3 bytes];
  v5 = [a3 length];
  if (v5)
  {
    v6 = *v4;
    if ((v6 - 1) >= 8)
    {
      v8 = 1;
      v7 = 1;
      do
      {
        if (v6 == 127)
        {
          break;
        }

        if ((v6 - 11) <= 0x14)
        {
          break;
        }

        v7 = v5 > v8;
        if (v5 == v8)
        {
          break;
        }

        v6 = v4[v8++];
      }

      while ((v6 - 1) >= 8);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

@end