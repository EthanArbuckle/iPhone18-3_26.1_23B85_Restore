@interface ICStoreRadioStreamAssetInfo
- (BOOL)isiTunesStoreStream;
- (ICStoreRadioStreamAssetInfo)initWithItemResponseDictionary:(id)a3;
- (NSURL)keyCertificateURL;
- (NSURL)keyServerURL;
- (NSURL)streamURL;
- (int64_t)ICStoreRadioStreamFlavorWithString:(id)a3;
- (int64_t)ICStoreRadioStreamProtocolWithString:(id)a3;
- (int64_t)flavor;
- (int64_t)streamProtocol;
@end

@implementation ICStoreRadioStreamAssetInfo

- (int64_t)ICStoreRadioStreamProtocolWithString:(id)a3
{
  v3 = a3;
  if ([v3 caseInsensitiveCompare:@"HLS"])
  {
    v4 = 2 * ([v3 caseInsensitiveCompare:@"SHOUTCAST"] == 0);
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)ICStoreRadioStreamFlavorWithString:(id)a3
{
  v3 = a3;
  if ([v3 caseInsensitiveCompare:@"LWHQ"])
  {
    v4 = [v3 caseInsensitiveCompare:@"SLW"] == 0;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (BOOL)isiTunesStoreStream
{
  v2 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"is-itunes-stream"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSURL)keyServerURL
{
  v2 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"stream-key-server-url"];
  if (_NSIsNSString() && [v2 length])
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSURL)keyCertificateURL
{
  v2 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"stream-key-cert-url"];
  if (_NSIsNSString() && [v2 length])
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSURL)streamURL
{
  v2 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"stream-url"];
  if (_NSIsNSString() && [v2 length])
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)streamProtocol
{
  v3 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"stream-protocol"];
  if (_NSIsNSString() && [v3 length])
  {
    v4 = [(ICStoreRadioStreamAssetInfo *)self ICStoreRadioStreamProtocolWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)flavor
{
  v3 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"flavor"];
  if (_NSIsNSString() && [v3 length])
  {
    v4 = [(ICStoreRadioStreamAssetInfo *)self ICStoreRadioStreamFlavorWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ICStoreRadioStreamAssetInfo)initWithItemResponseDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICStoreRadioStreamAssetInfo;
  v5 = [(ICStoreRadioStreamAssetInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    itemResponseDictionary = v5->_itemResponseDictionary;
    v5->_itemResponseDictionary = v6;
  }

  return v5;
}

@end