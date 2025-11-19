@interface AssetAccessSession
- (AssetAccessSession)initWithAccessToken:(id)a3 compositionAVURL:(id)a4 xpcConnection:(id)a5 xpcTransaction:(id)a6;
- (id)debugDescription;
@end

@implementation AssetAccessSession

- (AssetAccessSession)initWithAccessToken:(id)a3 compositionAVURL:(id)a4 xpcConnection:(id)a5 xpcTransaction:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = AssetAccessSession;
  v15 = [(AssetAccessSession *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accessToken, a3);
    objc_storeStrong(&v16->_compositionAVURL, a4);
    objc_storeStrong(&v16->_xpcConnection, a5);
    objc_storeStrong(&v16->_xpcTransaction, a6);
  }

  return v16;
}

- (id)debugDescription
{
  v7.receiver = self;
  v7.super_class = AssetAccessSession;
  v3 = [(AssetAccessSession *)&v7 debugDescription];
  v4 = [(RCSSavedRecordingAccessToken *)self->_accessToken debugDescription];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end