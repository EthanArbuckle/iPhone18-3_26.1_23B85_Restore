@interface IPPBrowseInfo
- (IPPBrowseInfo)initWithSession:(id)a3 browseInfo:(id)a4;
- (IPPURL)printerSessionURL;
- (void)withPrinterSessionURL:(id)a3;
@end

@implementation IPPBrowseInfo

- (IPPBrowseInfo)initWithSession:(id)a3 browseInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IPPBrowseInfo;
  v9 = [(IPPBrowseInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, a3);
    objc_storeStrong(&v10->_info, a4);
  }

  return v10;
}

- (IPPURL)printerSessionURL
{
  v2 = self;
  if (object_isClass(v2))
  {
    [NSString stringWithUTF8String:"[IPPBrowseInfo printerSessionURL]"];
  }

  else
  {
    [NSString stringWithFormat:@"%@<%p>: %s", objc_opt_class(), v2, "[IPPBrowseInfo printerSessionURL]"];
  }
  v3 = ;

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005560;
  v6[3] = &unk_1000952A8;
  v6[4] = v2;
  v4 = sub_10000541C(v3, v6, 10.0);

  return v4;
}

- (void)withPrinterSessionURL:(id)a3
{
  v4 = a3;
  v5 = [(PKPrinterBrowseInfo *)self->_info bonjourName];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005644;
  v7[3] = &unk_1000952D0;
  v6 = v4;
  v7[4] = self;
  v8 = v6;
  [v5 withResolvedURL:v7];
}

@end