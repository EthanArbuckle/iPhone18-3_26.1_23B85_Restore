@interface PKDiscoveryCardViewTemplateInformation
- (PKDiscoveryCardViewTemplateInformation)initWithCardSize:(int64_t)size displayType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKDiscoveryCardViewTemplateInformation

- (PKDiscoveryCardViewTemplateInformation)initWithCardSize:(int64_t)size displayType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = PKDiscoveryCardViewTemplateInformation;
  result = [(PKDiscoveryCardViewTemplateInformation *)&v7 init];
  if (result)
  {
    result->_cardSize = size;
    result->_displayType = type;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  cardSize = self->_cardSize;
  displayType = self->_displayType;

  return [v4 initWithCardSize:cardSize displayType:displayType];
}

@end