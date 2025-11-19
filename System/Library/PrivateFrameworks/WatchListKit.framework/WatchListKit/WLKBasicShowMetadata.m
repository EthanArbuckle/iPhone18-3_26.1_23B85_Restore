@interface WLKBasicShowMetadata
- (WLKBasicShowMetadata)initWithDictionary:(id)a3;
@end

@implementation WLKBasicShowMetadata

- (WLKBasicShowMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WLKBasicShowMetadata;
  v5 = [(WLKBasicContentMetadata *)&v14 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 wlk_dateFromMillisecondsSince1970ForKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v6;

    v8 = [v4 wlk_dateFromMillisecondsSince1970ForKey:@"finaleDate"];
    finaleDate = v5->_finaleDate;
    v5->_finaleDate = v8;

    v10 = [v4 wlk_stringForKey:@"network"];
    v11 = [v10 copy];
    network = v5->_network;
    v5->_network = v11;
  }

  return v5;
}

@end