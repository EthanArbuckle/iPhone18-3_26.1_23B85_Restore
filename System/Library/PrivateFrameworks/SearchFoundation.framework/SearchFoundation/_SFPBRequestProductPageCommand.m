@interface _SFPBRequestProductPageCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRequestProductPageCommand)initWithDictionary:(id)a3;
- (_SFPBRequestProductPageCommand)initWithFacade:(id)a3;
- (_SFPBRequestProductPageCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setDistributorBundleIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRequestProductPageCommand

- (_SFPBRequestProductPageCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRequestProductPageCommand *)self init];
  if (v5)
  {
    v6 = [v4 distributorBundleIdentifier];

    if (v6)
    {
      v7 = [v4 distributorBundleIdentifier];
      [(_SFPBRequestProductPageCommand *)v5 setDistributorBundleIdentifier:v7];
    }

    if ([v4 hasItemIdentifier])
    {
      -[_SFPBRequestProductPageCommand setItemIdentifier:](v5, "setItemIdentifier:", [v4 itemIdentifier]);
    }

    if ([v4 hasVersionIdentifier])
    {
      -[_SFPBRequestProductPageCommand setVersionIdentifier:](v5, "setVersionIdentifier:", [v4 versionIdentifier]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRequestProductPageCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBRequestProductPageCommand;
  v5 = [(_SFPBRequestProductPageCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"distributorBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRequestProductPageCommand *)v5 setDistributorBundleIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"itemIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRequestProductPageCommand setItemIdentifier:](v5, "setItemIdentifier:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"versionIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRequestProductPageCommand setVersionIdentifier:](v5, "setVersionIdentifier:", [v9 unsignedLongLongValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRequestProductPageCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRequestProductPageCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRequestProductPageCommand *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_distributorBundleIdentifier)
  {
    v4 = [(_SFPBRequestProductPageCommand *)self distributorBundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"distributorBundleIdentifier"];
  }

  if (self->_itemIdentifier)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBRequestProductPageCommand itemIdentifier](self, "itemIdentifier")}];
    [v3 setObject:v6 forKeyedSubscript:@"itemIdentifier"];
  }

  if (self->_versionIdentifier)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBRequestProductPageCommand versionIdentifier](self, "versionIdentifier")}];
    [v3 setObject:v7 forKeyedSubscript:@"versionIdentifier"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = [(_SFPBRequestProductPageCommand *)self distributorBundleIdentifier];
  v6 = [v4 distributorBundleIdentifier];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_10;
  }

  v8 = [(_SFPBRequestProductPageCommand *)self distributorBundleIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = [(_SFPBRequestProductPageCommand *)self distributorBundleIdentifier];
    v11 = [v4 distributorBundleIdentifier];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  itemIdentifier = self->_itemIdentifier;
  if (itemIdentifier != [v4 itemIdentifier])
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  versionIdentifier = self->_versionIdentifier;
  v15 = versionIdentifier == [v4 versionIdentifier];
LABEL_11:

  return v15;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_SFPBRequestProductPageCommand *)self distributorBundleIdentifier];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRequestProductPageCommand *)self itemIdentifier])
  {
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_SFPBRequestProductPageCommand *)self versionIdentifier];
  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteUint64Field();
    v6 = v7;
  }
}

- (void)setDistributorBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  distributorBundleIdentifier = self->_distributorBundleIdentifier;
  self->_distributorBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end