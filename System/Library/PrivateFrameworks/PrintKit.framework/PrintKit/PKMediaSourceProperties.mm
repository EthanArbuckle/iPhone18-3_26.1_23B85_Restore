@interface PKMediaSourceProperties
- (NSNumber)feedOrientation;
- (NSString)feedDirection;
- (id)userCodableDictionary;
@end

@implementation PKMediaSourceProperties

- (id)userCodableDictionary
{
  v3 = objc_opt_new();
  feedDirection = [(PKMediaSourceProperties *)self feedDirection];
  [v3 setObject:feedDirection forKeyedSubscript:@"media-source-feed-direction"];

  feedOrientation = [(PKMediaSourceProperties *)self feedOrientation];
  [v3 setObject:feedOrientation forKeyedSubscript:@"media-source-feed-orientation"];

  return v3;
}

- (NSString)feedDirection
{
  params = [(PKCollectionSpecialization *)self params];

  return Printd_Parameters::_get_FeedDirection(&params->var0);
}

- (NSNumber)feedOrientation
{
  v2 = MEMORY[0x277CCABB0];
  FeedOrientation = Printd_Parameters::_get_FeedOrientation([(PKCollectionSpecialization *)self params]);

  return [v2 numberWithUnsignedInt:FeedOrientation];
}

@end