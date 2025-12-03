@interface PKWebServiceTicketingFeature
- (BOOL)isIntegrationTypeSupported:(int64_t)supported;
- (PKWebServiceTicketingFeature)initWithDictionary:(id)dictionary region:(id)region;
@end

@implementation PKWebServiceTicketingFeature

- (PKWebServiceTicketingFeature)initWithDictionary:(id)dictionary region:(id)region
{
  dictionaryCopy = dictionary;
  regionCopy = region;
  v17.receiver = self;
  v17.super_class = PKWebServiceTicketingFeature;
  v8 = [(PKWebServiceRegionFeature *)&v17 initWithFeatureType:18 dictionary:dictionaryCopy region:regionCopy];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    for (i = 0; i != 4; ++i)
    {
      v11 = [dictionaryCopy objectForKey:off_1E79C9948[i]];
      v12 = v11;
      if (!v11 || [v11 PKBoolForKey:@"enabled"])
      {
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:i];
        [v9 addObject:v13];
      }
    }

    v14 = [v9 copy];
    supportedFeatures = v8->_supportedFeatures;
    v8->_supportedFeatures = v14;
  }

  return v8;
}

- (BOOL)isIntegrationTypeSupported:(int64_t)supported
{
  supportedFeatures = self->_supportedFeatures;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:supported];
  LOBYTE(supportedFeatures) = [(NSSet *)supportedFeatures containsObject:v4];

  return supportedFeatures;
}

@end