@interface AssetAccessSession
- (AssetAccessSession)initWithAccessToken:(id)token compositionAVURL:(id)l xpcConnection:(id)connection xpcTransaction:(id)transaction;
- (id)debugDescription;
@end

@implementation AssetAccessSession

- (AssetAccessSession)initWithAccessToken:(id)token compositionAVURL:(id)l xpcConnection:(id)connection xpcTransaction:(id)transaction
{
  tokenCopy = token;
  lCopy = l;
  connectionCopy = connection;
  transactionCopy = transaction;
  v18.receiver = self;
  v18.super_class = AssetAccessSession;
  v15 = [(AssetAccessSession *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accessToken, token);
    objc_storeStrong(&v16->_compositionAVURL, l);
    objc_storeStrong(&v16->_xpcConnection, connection);
    objc_storeStrong(&v16->_xpcTransaction, transaction);
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