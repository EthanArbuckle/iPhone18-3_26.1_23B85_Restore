@interface CNVCardReadingOptions
- (CNVCardReadingOptions)init;
- (id)description;
@end

@implementation CNVCardReadingOptions

- (CNVCardReadingOptions)init
{
  v6.receiver = self;
  v6.super_class = CNVCardReadingOptions;
  v2 = [(CNVCardReadingOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_contactLimit = -1;
    v2->_maximumValueLength = -1;
    v2->_useConcurrentParsing = 1;
    v4 = v2;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  if ([(CNVCardReadingOptions *)self contactLimit]== -1)
  {
    v6 = [v3 appendName:@"contactLimit" object:@"unlimited"];
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CNVCardReadingOptions contactLimit](self, "contactLimit")}];
    v5 = [v3 appendName:@"contactLimit" object:v4];
  }

  v7 = [(CNVCardReadingOptions *)self propertiesToFetch];
  v8 = [v3 appendName:@"propertiesToFetch" object:v7];

  if ([(CNVCardReadingOptions *)self maximumValueLength]== -1)
  {
    v11 = [v3 appendName:@"maximumValueLength" object:@"unlimited"];
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CNVCardReadingOptions maximumValueLength](self, "maximumValueLength")}];
    v10 = [v3 appendName:@"maximumValueLength" object:v9];
  }

  v12 = [v3 appendName:@"useConcurrentParsing" BOOLValue:{-[CNVCardReadingOptions useConcurrentParsing](self, "useConcurrentParsing")}];
  v13 = [v3 build];

  return v13;
}

@end