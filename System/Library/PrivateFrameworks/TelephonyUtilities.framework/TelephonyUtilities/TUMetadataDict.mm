@interface TUMetadataDict
- (TUMetadataDict)initWithSource:(id)a3 identificationLabel:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TUMetadataDict

- (TUMetadataDict)initWithSource:(id)a3 identificationLabel:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TUMetadataDict;
  v9 = [(TUMetadataDict *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_source, a3);
    objc_storeStrong(&v10->_identificationLabel, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUMetadataDict alloc];
  source = self->_source;
  identificationLabel = self->_identificationLabel;

  return [(TUMetadataDict *)v4 initWithSource:source identificationLabel:identificationLabel];
}

@end