@interface IPPURL
- (IPPURL)initWithSession:(id)session url:(id)url;
@end

@implementation IPPURL

- (IPPURL)initWithSession:(id)session url:(id)url
{
  sessionCopy = session;
  urlCopy = url;
  v12.receiver = self;
  v12.super_class = IPPURL;
  v9 = [(IPPURL *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, session);
    objc_storeStrong(&v10->_url, url);
  }

  return v10;
}

@end