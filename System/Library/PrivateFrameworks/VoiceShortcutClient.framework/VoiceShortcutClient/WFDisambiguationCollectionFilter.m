@interface WFDisambiguationCollectionFilter
- (WFDisambiguationCollectionFilter)initWithCoder:(id)a3;
- (WFDisambiguationCollectionFilter)initWithSerializedRepresentation:(id)a3;
- (WFDisambiguationCollectionFilter)initWithSystemEntityCollectionIdentifier:(id)a3 namedQueryReference:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializableRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFDisambiguationCollectionFilter

- (void)encodeWithCoder:(id)a3
{
  systemEntityCollectionIdentifier = self->_systemEntityCollectionIdentifier;
  v5 = a3;
  [v5 encodeObject:systemEntityCollectionIdentifier forKey:@"systemEntityCollectionIdentifier"];
  [v5 encodeObject:self->_namedQueryReference forKey:@"namedQueryReference"];
}

- (WFDisambiguationCollectionFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemEntityCollectionIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"namedQueryReference"];

  v7 = [(WFDisambiguationCollectionFilter *)self initWithSystemEntityCollectionIdentifier:v5 namedQueryReference:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WFDisambiguationCollectionFilter *)self systemEntityCollectionIdentifier];
  v6 = [(WFDisambiguationCollectionFilter *)self namedQueryReference];
  v7 = [v4 initWithSystemEntityCollectionIdentifier:v5 namedQueryReference:v6];

  return v7;
}

- (id)serializableRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(WFDisambiguationCollectionFilter *)self systemEntityCollectionIdentifier];

  if (v4)
  {
    v5 = [(WFDisambiguationCollectionFilter *)self systemEntityCollectionIdentifier];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"systemEntityCollectionIdentifier"];
  }

  v7 = [(WFDisambiguationCollectionFilter *)self namedQueryReference];

  if (v7)
  {
    v8 = [(WFDisambiguationCollectionFilter *)self namedQueryReference];
    v9 = [v8 serializableRepresentation];
    [v3 setObject:v9 forKeyedSubscript:@"namedQueryReference"];
  }

  v10 = [v3 copy];

  return v10;
}

- (WFDisambiguationCollectionFilter)initWithSerializedRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 valueForKey:@"systemEntityCollectionIdentifier"];
    v7 = [v5 valueForKey:@"namedQueryReference"];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E69ACD60]) initWithSerializedRepresentation:v7];
    }

    else
    {
      v8 = 0;
    }

    self = [(WFDisambiguationCollectionFilter *)self initWithSystemEntityCollectionIdentifier:v6 namedQueryReference:v8];

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (WFDisambiguationCollectionFilter)initWithSystemEntityCollectionIdentifier:(id)a3 namedQueryReference:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WFDisambiguationCollectionFilter;
  v8 = [(WFDisambiguationCollectionFilter *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    systemEntityCollectionIdentifier = v8->_systemEntityCollectionIdentifier;
    v8->_systemEntityCollectionIdentifier = v9;

    v11 = [v7 copy];
    namedQueryReference = v8->_namedQueryReference;
    v8->_namedQueryReference = v11;

    v13 = v8;
  }

  return v8;
}

@end