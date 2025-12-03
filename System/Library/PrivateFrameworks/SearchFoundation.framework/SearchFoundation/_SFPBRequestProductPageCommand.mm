@interface _SFPBRequestProductPageCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRequestProductPageCommand)initWithDictionary:(id)dictionary;
- (_SFPBRequestProductPageCommand)initWithFacade:(id)facade;
- (_SFPBRequestProductPageCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setDistributorBundleIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRequestProductPageCommand

- (_SFPBRequestProductPageCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRequestProductPageCommand *)self init];
  if (v5)
  {
    distributorBundleIdentifier = [facadeCopy distributorBundleIdentifier];

    if (distributorBundleIdentifier)
    {
      distributorBundleIdentifier2 = [facadeCopy distributorBundleIdentifier];
      [(_SFPBRequestProductPageCommand *)v5 setDistributorBundleIdentifier:distributorBundleIdentifier2];
    }

    if ([facadeCopy hasItemIdentifier])
    {
      -[_SFPBRequestProductPageCommand setItemIdentifier:](v5, "setItemIdentifier:", [facadeCopy itemIdentifier]);
    }

    if ([facadeCopy hasVersionIdentifier])
    {
      -[_SFPBRequestProductPageCommand setVersionIdentifier:](v5, "setVersionIdentifier:", [facadeCopy versionIdentifier]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRequestProductPageCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBRequestProductPageCommand;
  v5 = [(_SFPBRequestProductPageCommand *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"distributorBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRequestProductPageCommand *)v5 setDistributorBundleIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"itemIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRequestProductPageCommand setItemIdentifier:](v5, "setItemIdentifier:", [v8 unsignedLongLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"versionIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRequestProductPageCommand setVersionIdentifier:](v5, "setVersionIdentifier:", [v9 unsignedLongLongValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRequestProductPageCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRequestProductPageCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRequestProductPageCommand *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_distributorBundleIdentifier)
  {
    distributorBundleIdentifier = [(_SFPBRequestProductPageCommand *)self distributorBundleIdentifier];
    v5 = [distributorBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"distributorBundleIdentifier"];
  }

  if (self->_itemIdentifier)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBRequestProductPageCommand itemIdentifier](self, "itemIdentifier")}];
    [dictionary setObject:v6 forKeyedSubscript:@"itemIdentifier"];
  }

  if (self->_versionIdentifier)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBRequestProductPageCommand versionIdentifier](self, "versionIdentifier")}];
    [dictionary setObject:v7 forKeyedSubscript:@"versionIdentifier"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  distributorBundleIdentifier = [(_SFPBRequestProductPageCommand *)self distributorBundleIdentifier];
  distributorBundleIdentifier2 = [equalCopy distributorBundleIdentifier];
  v7 = distributorBundleIdentifier2;
  if ((distributorBundleIdentifier != 0) == (distributorBundleIdentifier2 == 0))
  {

    goto LABEL_10;
  }

  distributorBundleIdentifier3 = [(_SFPBRequestProductPageCommand *)self distributorBundleIdentifier];
  if (distributorBundleIdentifier3)
  {
    v9 = distributorBundleIdentifier3;
    distributorBundleIdentifier4 = [(_SFPBRequestProductPageCommand *)self distributorBundleIdentifier];
    distributorBundleIdentifier5 = [equalCopy distributorBundleIdentifier];
    v12 = [distributorBundleIdentifier4 isEqual:distributorBundleIdentifier5];

    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  itemIdentifier = self->_itemIdentifier;
  if (itemIdentifier != [equalCopy itemIdentifier])
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  versionIdentifier = self->_versionIdentifier;
  v15 = versionIdentifier == [equalCopy versionIdentifier];
LABEL_11:

  return v15;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  distributorBundleIdentifier = [(_SFPBRequestProductPageCommand *)self distributorBundleIdentifier];
  if (distributorBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRequestProductPageCommand *)self itemIdentifier])
  {
    PBDataWriterWriteUint64Field();
  }

  versionIdentifier = [(_SFPBRequestProductPageCommand *)self versionIdentifier];
  v6 = toCopy;
  if (versionIdentifier)
  {
    PBDataWriterWriteUint64Field();
    v6 = toCopy;
  }
}

- (void)setDistributorBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  distributorBundleIdentifier = self->_distributorBundleIdentifier;
  self->_distributorBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end