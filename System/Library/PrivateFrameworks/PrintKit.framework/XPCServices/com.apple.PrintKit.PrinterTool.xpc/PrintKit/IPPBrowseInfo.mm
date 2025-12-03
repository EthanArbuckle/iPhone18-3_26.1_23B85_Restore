@interface IPPBrowseInfo
- (IPPBrowseInfo)initWithSession:(id)session browseInfo:(id)info;
- (IPPURL)printerSessionURL;
- (void)withPrinterSessionURL:(id)l;
@end

@implementation IPPBrowseInfo

- (IPPBrowseInfo)initWithSession:(id)session browseInfo:(id)info
{
  sessionCopy = session;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = IPPBrowseInfo;
  v9 = [(IPPBrowseInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, session);
    objc_storeStrong(&v10->_info, info);
  }

  return v10;
}

- (IPPURL)printerSessionURL
{
  selfCopy = self;
  if (object_isClass(selfCopy))
  {
    [NSString stringWithUTF8String:"[IPPBrowseInfo printerSessionURL]"];
  }

  else
  {
    [NSString stringWithFormat:@"%@<%p>: %s", objc_opt_class(), selfCopy, "[IPPBrowseInfo printerSessionURL]"];
  }
  v3 = ;

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005560;
  v6[3] = &unk_1000952A8;
  v6[4] = selfCopy;
  v4 = sub_10000541C(v3, v6, 10.0);

  return v4;
}

- (void)withPrinterSessionURL:(id)l
{
  lCopy = l;
  bonjourName = [(PKPrinterBrowseInfo *)self->_info bonjourName];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005644;
  v7[3] = &unk_1000952D0;
  v6 = lCopy;
  v7[4] = self;
  v8 = v6;
  [bonjourName withResolvedURL:v7];
}

@end