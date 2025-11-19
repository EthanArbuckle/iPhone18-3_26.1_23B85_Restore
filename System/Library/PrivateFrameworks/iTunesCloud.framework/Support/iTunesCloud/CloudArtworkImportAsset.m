@interface CloudArtworkImportAsset
- (CloudArtworkImportAsset)initWithAssertURL:(id)a3 artworkMediaType:(unsigned int)a4 artworkType:(int64_t)a5 artworkToken:(id)a6;
@end

@implementation CloudArtworkImportAsset

- (CloudArtworkImportAsset)initWithAssertURL:(id)a3 artworkMediaType:(unsigned int)a4 artworkType:(int64_t)a5 artworkToken:(id)a6
{
  v11 = a3;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = CloudArtworkImportAsset;
  v13 = [(CloudArtworkImportAsset *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_assetURL, a3);
    v14->_artworkMediaType = a4;
    v14->_artworkType = a5;
    objc_storeStrong(&v14->_artworkToken, a6);
  }

  return v14;
}

@end