@interface PKDiscoveryCardViewTemplateInformation
- (PKDiscoveryCardViewTemplateInformation)initWithCardSize:(int64_t)a3 displayType:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKDiscoveryCardViewTemplateInformation

- (PKDiscoveryCardViewTemplateInformation)initWithCardSize:(int64_t)a3 displayType:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = PKDiscoveryCardViewTemplateInformation;
  result = [(PKDiscoveryCardViewTemplateInformation *)&v7 init];
  if (result)
  {
    result->_cardSize = a3;
    result->_displayType = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  cardSize = self->_cardSize;
  displayType = self->_displayType;

  return [v4 initWithCardSize:cardSize displayType:displayType];
}

@end