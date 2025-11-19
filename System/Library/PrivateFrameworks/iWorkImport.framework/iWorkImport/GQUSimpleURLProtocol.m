@interface GQUSimpleURLProtocol
+ (BOOL)canInitWithRequest:(id)a3;
+ (void)setResourcesDictionary:(id)a3;
- (void)startLoading;
@end

@implementation GQUSimpleURLProtocol

+ (void)setResourcesDictionary:(id)a3
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_A4450;
  qword_A4450 = a3;

  objc_sync_exit(v4);
}

+ (BOOL)canInitWithRequest:(id)a3
{
  v3 = [objc_msgSend(a3 "URL")];
  v4 = off_9CBA0;

  return [v3 isEqual:v4];
}

- (void)startLoading
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  v4 = qword_A4450;
  objc_sync_exit(v3);
  v5 = [-[GQUSimpleURLProtocol request](self "request")];
  v6 = [v5 resourceSpecifier];
  if (v6 && (v7 = v6, (v8 = [v4 objectForKey:{objc_msgSend(v6, "lastPathComponent")}]) != 0))
  {
    v9 = v8;
    v10 = [v8 objectForKey:kQLPreviewPropertyAttachmentDataKey];
    v11 = [v9 objectForKey:kQLPreviewPropertyMIMETypeKey];
    v12 = [v9 objectForKey:kQLPreviewPropertyTextEncodingNameKey];
    if (!v11)
    {
      v18 = [v7 pathExtension];
      v11 = v18;
      if (v18)
      {
        if ([(__CFString *)v18 caseInsensitiveCompare:@"html"])
        {
          if ([(__CFString *)v11 caseInsensitiveCompare:@"xhtml"])
          {
            if ([(__CFString *)v11 caseInsensitiveCompare:@"pdf"])
            {
              v11 = 0;
            }

            else
            {
              v11 = @"application/pdf";
            }
          }

          else
          {
            v11 = @"text/xhtml";
          }
        }

        else
        {
          v11 = @"text/html";
        }
      }
    }

    if (!v10)
    {
      v10 = +[NSData data];
    }

    v13 = [[NSURLResponse alloc] initWithURL:v5 MIMEType:v11 expectedContentLength:-[NSData length](v10 textEncodingName:{"length"), v12}];
    [-[GQUSimpleURLProtocol client](self "client")];

    [-[GQUSimpleURLProtocol client](self "client")];
    v14 = [(GQUSimpleURLProtocol *)self client];

    [v14 URLProtocolDidFinishLoading:{self, v15}];
  }

  else
  {
    v16 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", NSURLErrorDomain, -1008, +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", [v5 absoluteString], NSURLErrorFailingURLStringErrorKey, 0));
    v17 = [(GQUSimpleURLProtocol *)self client];

    [v17 URLProtocol:self didFailWithError:v16];
  }
}

@end