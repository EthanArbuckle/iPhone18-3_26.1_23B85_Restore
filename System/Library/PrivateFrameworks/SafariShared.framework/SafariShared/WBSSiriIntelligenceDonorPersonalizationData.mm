@interface WBSSiriIntelligenceDonorPersonalizationData
- (id)copyWithZone:(_NSZone *)a3;
- (void)clearData;
@end

@implementation WBSSiriIntelligenceDonorPersonalizationData

- (void)clearData
{
  [(WBSSiriIntelligenceDonorPersonalizationData *)self setSearchQuery:0];

  [(WBSSiriIntelligenceDonorPersonalizationData *)self setPosition:0];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSearchQuery:self->_searchQuery];
  [v4 setPosition:self->_position];
  return v4;
}

@end