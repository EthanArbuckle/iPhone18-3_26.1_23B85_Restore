@interface TUMetadataDict
- (TUMetadataDict)initWithSource:(id)source identificationLabel:(id)label;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TUMetadataDict

- (TUMetadataDict)initWithSource:(id)source identificationLabel:(id)label
{
  sourceCopy = source;
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = TUMetadataDict;
  v9 = [(TUMetadataDict *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_source, source);
    objc_storeStrong(&v10->_identificationLabel, label);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUMetadataDict alloc];
  source = self->_source;
  identificationLabel = self->_identificationLabel;

  return [(TUMetadataDict *)v4 initWithSource:source identificationLabel:identificationLabel];
}

@end