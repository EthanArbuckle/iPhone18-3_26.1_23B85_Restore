@interface CloudArtworkImportAsset
- (CloudArtworkImportAsset)initWithAssertURL:(id)l artworkMediaType:(unsigned int)type artworkType:(int64_t)artworkType artworkToken:(id)token;
@end

@implementation CloudArtworkImportAsset

- (CloudArtworkImportAsset)initWithAssertURL:(id)l artworkMediaType:(unsigned int)type artworkType:(int64_t)artworkType artworkToken:(id)token
{
  lCopy = l;
  tokenCopy = token;
  v16.receiver = self;
  v16.super_class = CloudArtworkImportAsset;
  v13 = [(CloudArtworkImportAsset *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_assetURL, l);
    v14->_artworkMediaType = type;
    v14->_artworkType = artworkType;
    objc_storeStrong(&v14->_artworkToken, token);
  }

  return v14;
}

@end