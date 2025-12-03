@interface WBUAutoFillDisplayData
- (NSString)property;
- (NSString)valueString;
- (WBUAutoFillDisplayData)initWithCoder:(id)coder;
- (WBUAutoFillDisplayData)initWithLabel:(id)label fillMatches:(id)matches;
- (id)addressStringForLabel:(id)label;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBUAutoFillDisplayData

- (WBUAutoFillDisplayData)initWithLabel:(id)label fillMatches:(id)matches
{
  labelCopy = label;
  matchesCopy = matches;
  v15.receiver = self;
  v15.super_class = WBUAutoFillDisplayData;
  v9 = [(WBUAutoFillDisplayData *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, label);
    v11 = [matchesCopy copy];
    fillMatches = v10->_fillMatches;
    v10->_fillMatches = v11;

    v13 = v10;
  }

  return v10;
}

- (id)addressStringForLabel:(id)label
{
  v3 = [(NSArray *)self->_fillMatches safari_mapObjectsUsingBlock:&__block_literal_global_1];
  v4 = _WBSLocalizedString();
  v5 = [v3 componentsJoinedByString:v4];

  return v5;
}

- (NSString)valueString
{
  firstObject = [(NSArray *)self->_fillMatches firstObject];
  property = [firstObject property];
  v5 = [property isEqualToString:@"Address"];

  if (v5)
  {
    label = [firstObject label];
    v7 = [(WBUAutoFillDisplayData *)self addressStringForLabel:label];
  }

  else
  {
    v7 = [WBUFormDataController valueStringForMatch:firstObject];
  }

  return v7;
}

- (NSString)property
{
  firstObject = [(NSArray *)self->_fillMatches firstObject];
  property = [firstObject property];

  return property;
}

- (WBUAutoFillDisplayData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"fillMatches"];

  v7 = [(WBUAutoFillDisplayData *)self initWithLabel:v5 fillMatches:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  label = self->_label;
  coderCopy = coder;
  [coderCopy encodeObject:label forKey:@"label"];
  [coderCopy encodeObject:self->_fillMatches forKey:@"fillMatches"];
}

@end