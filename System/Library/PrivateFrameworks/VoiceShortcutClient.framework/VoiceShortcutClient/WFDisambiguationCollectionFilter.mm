@interface WFDisambiguationCollectionFilter
- (WFDisambiguationCollectionFilter)initWithCoder:(id)coder;
- (WFDisambiguationCollectionFilter)initWithSerializedRepresentation:(id)representation;
- (WFDisambiguationCollectionFilter)initWithSystemEntityCollectionIdentifier:(id)identifier namedQueryReference:(id)reference;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializableRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFDisambiguationCollectionFilter

- (void)encodeWithCoder:(id)coder
{
  systemEntityCollectionIdentifier = self->_systemEntityCollectionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:systemEntityCollectionIdentifier forKey:@"systemEntityCollectionIdentifier"];
  [coderCopy encodeObject:self->_namedQueryReference forKey:@"namedQueryReference"];
}

- (WFDisambiguationCollectionFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemEntityCollectionIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"namedQueryReference"];

  v7 = [(WFDisambiguationCollectionFilter *)self initWithSystemEntityCollectionIdentifier:v5 namedQueryReference:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  systemEntityCollectionIdentifier = [(WFDisambiguationCollectionFilter *)self systemEntityCollectionIdentifier];
  namedQueryReference = [(WFDisambiguationCollectionFilter *)self namedQueryReference];
  v7 = [v4 initWithSystemEntityCollectionIdentifier:systemEntityCollectionIdentifier namedQueryReference:namedQueryReference];

  return v7;
}

- (id)serializableRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  systemEntityCollectionIdentifier = [(WFDisambiguationCollectionFilter *)self systemEntityCollectionIdentifier];

  if (systemEntityCollectionIdentifier)
  {
    systemEntityCollectionIdentifier2 = [(WFDisambiguationCollectionFilter *)self systemEntityCollectionIdentifier];
    v6 = [systemEntityCollectionIdentifier2 copy];
    [v3 setObject:v6 forKeyedSubscript:@"systemEntityCollectionIdentifier"];
  }

  namedQueryReference = [(WFDisambiguationCollectionFilter *)self namedQueryReference];

  if (namedQueryReference)
  {
    namedQueryReference2 = [(WFDisambiguationCollectionFilter *)self namedQueryReference];
    serializableRepresentation = [namedQueryReference2 serializableRepresentation];
    [v3 setObject:serializableRepresentation forKeyedSubscript:@"namedQueryReference"];
  }

  v10 = [v3 copy];

  return v10;
}

- (WFDisambiguationCollectionFilter)initWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = representationCopy;
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

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFDisambiguationCollectionFilter)initWithSystemEntityCollectionIdentifier:(id)identifier namedQueryReference:(id)reference
{
  identifierCopy = identifier;
  referenceCopy = reference;
  v15.receiver = self;
  v15.super_class = WFDisambiguationCollectionFilter;
  v8 = [(WFDisambiguationCollectionFilter *)&v15 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    systemEntityCollectionIdentifier = v8->_systemEntityCollectionIdentifier;
    v8->_systemEntityCollectionIdentifier = v9;

    v11 = [referenceCopy copy];
    namedQueryReference = v8->_namedQueryReference;
    v8->_namedQueryReference = v11;

    v13 = v8;
  }

  return v8;
}

@end