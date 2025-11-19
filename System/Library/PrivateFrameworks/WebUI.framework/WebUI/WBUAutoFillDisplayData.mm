@interface WBUAutoFillDisplayData
- (NSString)property;
- (NSString)valueString;
- (WBUAutoFillDisplayData)initWithCoder:(id)a3;
- (WBUAutoFillDisplayData)initWithLabel:(id)a3 fillMatches:(id)a4;
- (id)addressStringForLabel:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBUAutoFillDisplayData

- (WBUAutoFillDisplayData)initWithLabel:(id)a3 fillMatches:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WBUAutoFillDisplayData;
  v9 = [(WBUAutoFillDisplayData *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, a3);
    v11 = [v8 copy];
    fillMatches = v10->_fillMatches;
    v10->_fillMatches = v11;

    v13 = v10;
  }

  return v10;
}

- (id)addressStringForLabel:(id)a3
{
  v3 = [(NSArray *)self->_fillMatches safari_mapObjectsUsingBlock:&__block_literal_global_1];
  v4 = _WBSLocalizedString();
  v5 = [v3 componentsJoinedByString:v4];

  return v5;
}

- (NSString)valueString
{
  v3 = [(NSArray *)self->_fillMatches firstObject];
  v4 = [v3 property];
  v5 = [v4 isEqualToString:@"Address"];

  if (v5)
  {
    v6 = [v3 label];
    v7 = [(WBUAutoFillDisplayData *)self addressStringForLabel:v6];
  }

  else
  {
    v7 = [WBUFormDataController valueStringForMatch:v3];
  }

  return v7;
}

- (NSString)property
{
  v2 = [(NSArray *)self->_fillMatches firstObject];
  v3 = [v2 property];

  return v3;
}

- (WBUAutoFillDisplayData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"fillMatches"];

  v7 = [(WBUAutoFillDisplayData *)self initWithLabel:v5 fillMatches:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  label = self->_label;
  v5 = a3;
  [v5 encodeObject:label forKey:@"label"];
  [v5 encodeObject:self->_fillMatches forKey:@"fillMatches"];
}

@end