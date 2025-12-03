@interface WFContentSniffer
+ (BOOL)MIMETypeIsHTMLOrText:(id)text;
+ (BOOL)isGIF:(id)f;
+ (BOOL)isHTML:(id)l;
+ (BOOL)isJPEG:(id)g;
+ (BOOL)isOctetStream:(id)stream;
+ (BOOL)isSWF:(id)f;
+ (BOOL)isXHTML:(id)l;
+ (id)MIMETypeForData:(id)data;
+ (id)MIMETypeForData:(id)data andString:(id)string;
+ (id)MIMETypeForString:(id)string;
@end

@implementation WFContentSniffer

+ (id)MIMETypeForString:(id)string
{
  v4 = [string dataUsingEncoding:1];

  return [WFContentSniffer MIMETypeForData:v4 andString:string];
}

+ (id)MIMETypeForData:(id)data
{
  v4 = [data length];
  if (v4 >= 0x400)
  {
    v5 = 1024;
  }

  else
  {
    v5 = v4;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(data length:"bytes") encoding:{v5, 1}];
  v7 = [WFContentSniffer MIMETypeForData:data andString:v6];

  return v7;
}

+ (BOOL)MIMETypeIsHTMLOrText:(id)text
{
  if (!text)
  {
    return 0;
  }

  if ([text isEqualToString:@"text/html"] & 1) != 0 || (objc_msgSend(text, "isEqualToString:", @"application/xhtml+xml"))
  {
    return 1;
  }

  return [text isEqualToString:@"text/plain"];
}

+ (id)MIMETypeForData:(id)data andString:(id)string
{
  result = 0;
  if (data && string)
  {
    if ([WFContentSniffer isXML:string])
    {
      v7 = [WFContentSniffer isXHTML:string];
      v8 = @"application/xml";
      v9 = @"application/xhtml+xml";
    }

    else
    {
      if ([WFContentSniffer isHTML:string])
      {
        return @"text/html";
      }

      if ([WFContentSniffer isGIF:string])
      {
        return @"image/gif";
      }

      if ([WFContentSniffer isJPEG:data])
      {
        return @"image/jpeg";
      }

      if ([WFContentSniffer isPDF:string])
      {
        return @"application/pdf";
      }

      if ([WFContentSniffer isPNG:data])
      {
        return @"image/png";
      }

      if ([WFContentSniffer isSWF:string])
      {
        return @"application/x-shockwave-flash";
      }

      v7 = [WFContentSniffer isWord:data];
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

+ (BOOL)isHTML:(id)l
{
  if ([l WF_containsString:@"<html" options:1])
  {
    return 1;
  }

  return [l WF_containsString:@"</html" options:1];
}

+ (BOOL)isXHTML:(id)l
{
  if (([l WF_containsString:@"<html" options:1] & 1) == 0 && !objc_msgSend(l, "WF_containsString:options:", @"</html", 1))
  {
    return 0;
  }

  v4 = 1;
  if (([l WF_containsString:@"xmlns" options:1] & 1) == 0)
  {
    return 0;
  }

  return v4;
}

+ (BOOL)isGIF:(id)f
{
  if ([f hasPrefix:@"GIF87a"])
  {
    return 1;
  }

  return [f hasPrefix:@"GIF89a"];
}

+ (BOOL)isJPEG:(id)g
{
  if ([g length] < 3)
  {
    return 0;
  }

  bytes = [g bytes];
  return *bytes == 55551 && *(bytes + 2) == 255;
}

+ (BOOL)isSWF:(id)f
{
  if ([f hasPrefix:@"FWS"])
  {
    return 1;
  }

  return [f hasPrefix:@"CWS"];
}

+ (BOOL)isOctetStream:(id)stream
{
  bytes = [stream bytes];
  v5 = [stream length];
  if (v5)
  {
    v6 = *bytes;
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

        v6 = bytes[v8++];
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