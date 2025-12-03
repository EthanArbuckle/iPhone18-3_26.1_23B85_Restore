@interface GQUSimpleURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
+ (void)setResourcesDictionary:(id)dictionary;
- (void)startLoading;
@end

@implementation GQUSimpleURLProtocol

+ (void)setResourcesDictionary:(id)dictionary
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_A4450;
  qword_A4450 = dictionary;

  objc_sync_exit(v4);
}

+ (BOOL)canInitWithRequest:(id)request
{
  v3 = [objc_msgSend(request "URL")];
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
  resourceSpecifier = [v5 resourceSpecifier];
  if (resourceSpecifier && (v7 = resourceSpecifier, (v8 = [v4 objectForKey:{objc_msgSend(resourceSpecifier, "lastPathComponent")}]) != 0))
  {
    v9 = v8;
    v10 = [v8 objectForKey:kQLPreviewPropertyAttachmentDataKey];
    v11 = [v9 objectForKey:kQLPreviewPropertyMIMETypeKey];
    v12 = [v9 objectForKey:kQLPreviewPropertyTextEncodingNameKey];
    if (!v11)
    {
      pathExtension = [v7 pathExtension];
      v11 = pathExtension;
      if (pathExtension)
      {
        if ([(__CFString *)pathExtension caseInsensitiveCompare:@"html"])
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
    client = [(GQUSimpleURLProtocol *)self client];

    [client URLProtocolDidFinishLoading:{self, v15}];
  }

  else
  {
    v16 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", NSURLErrorDomain, -1008, +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", [v5 absoluteString], NSURLErrorFailingURLStringErrorKey, 0));
    client2 = [(GQUSimpleURLProtocol *)self client];

    [client2 URLProtocol:self didFailWithError:v16];
  }
}

@end