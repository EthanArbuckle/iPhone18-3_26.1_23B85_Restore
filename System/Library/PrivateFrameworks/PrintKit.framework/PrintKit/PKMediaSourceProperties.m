@interface PKMediaSourceProperties
- (NSNumber)feedOrientation;
- (NSString)feedDirection;
- (id)userCodableDictionary;
@end

@implementation PKMediaSourceProperties

- (id)userCodableDictionary
{
  v3 = objc_opt_new();
  v4 = [(PKMediaSourceProperties *)self feedDirection];
  [v3 setObject:v4 forKeyedSubscript:@"media-source-feed-direction"];

  v5 = [(PKMediaSourceProperties *)self feedOrientation];
  [v3 setObject:v5 forKeyedSubscript:@"media-source-feed-orientation"];

  return v3;
}

- (NSString)feedDirection
{
  v2 = [(PKCollectionSpecialization *)self params];

  return Printd_Parameters::_get_FeedDirection(&v2->var0);
}

- (NSNumber)feedOrientation
{
  v2 = MEMORY[0x277CCABB0];
  FeedOrientation = Printd_Parameters::_get_FeedOrientation([(PKCollectionSpecialization *)self params]);

  return [v2 numberWithUnsignedInt:FeedOrientation];
}

@end