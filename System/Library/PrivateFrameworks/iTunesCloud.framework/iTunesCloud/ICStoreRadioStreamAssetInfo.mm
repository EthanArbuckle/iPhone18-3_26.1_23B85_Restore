@interface ICStoreRadioStreamAssetInfo
- (BOOL)isiTunesStoreStream;
- (ICStoreRadioStreamAssetInfo)initWithItemResponseDictionary:(id)dictionary;
- (NSURL)keyCertificateURL;
- (NSURL)keyServerURL;
- (NSURL)streamURL;
- (int64_t)ICStoreRadioStreamFlavorWithString:(id)string;
- (int64_t)ICStoreRadioStreamProtocolWithString:(id)string;
- (int64_t)flavor;
- (int64_t)streamProtocol;
@end

@implementation ICStoreRadioStreamAssetInfo

- (int64_t)ICStoreRadioStreamProtocolWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy caseInsensitiveCompare:@"HLS"])
  {
    v4 = 2 * ([stringCopy caseInsensitiveCompare:@"SHOUTCAST"] == 0);
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)ICStoreRadioStreamFlavorWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy caseInsensitiveCompare:@"LWHQ"])
  {
    v4 = [stringCopy caseInsensitiveCompare:@"SLW"] == 0;
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
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
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

- (ICStoreRadioStreamAssetInfo)initWithItemResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ICStoreRadioStreamAssetInfo;
  v5 = [(ICStoreRadioStreamAssetInfo *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    itemResponseDictionary = v5->_itemResponseDictionary;
    v5->_itemResponseDictionary = v6;
  }

  return v5;
}

@end