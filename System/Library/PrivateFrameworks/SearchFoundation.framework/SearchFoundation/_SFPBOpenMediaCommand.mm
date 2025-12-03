@interface _SFPBOpenMediaCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBOpenMediaCommand)initWithDictionary:(id)dictionary;
- (_SFPBOpenMediaCommand)initWithFacade:(id)facade;
- (_SFPBOpenMediaCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setClientSelectedBundleIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBOpenMediaCommand

- (_SFPBOpenMediaCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBOpenMediaCommand *)self init];
  if (v5)
  {
    mediaMetadata = [facadeCopy mediaMetadata];

    if (mediaMetadata)
    {
      v7 = [_SFPBMediaMetadata alloc];
      mediaMetadata2 = [facadeCopy mediaMetadata];
      v9 = [(_SFPBMediaMetadata *)v7 initWithFacade:mediaMetadata2];
      [(_SFPBOpenMediaCommand *)v5 setMediaMetadata:v9];
    }

    clientSelectedBundleIdentifier = [facadeCopy clientSelectedBundleIdentifier];

    if (clientSelectedBundleIdentifier)
    {
      clientSelectedBundleIdentifier2 = [facadeCopy clientSelectedBundleIdentifier];
      [(_SFPBOpenMediaCommand *)v5 setClientSelectedBundleIdentifier:clientSelectedBundleIdentifier2];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBOpenMediaCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBOpenMediaCommand;
  v5 = [(_SFPBOpenMediaCommand *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"mediaMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBMediaMetadata alloc] initWithDictionary:v6];
      [(_SFPBOpenMediaCommand *)v5 setMediaMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"clientSelectedBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBOpenMediaCommand *)v5 setClientSelectedBundleIdentifier:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBOpenMediaCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBOpenMediaCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBOpenMediaCommand *)self dictionaryRepresentation];
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
  if (self->_clientSelectedBundleIdentifier)
  {
    clientSelectedBundleIdentifier = [(_SFPBOpenMediaCommand *)self clientSelectedBundleIdentifier];
    v5 = [clientSelectedBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"clientSelectedBundleIdentifier"];
  }

  if (self->_mediaMetadata)
  {
    mediaMetadata = [(_SFPBOpenMediaCommand *)self mediaMetadata];
    dictionaryRepresentation = [mediaMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"mediaMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"mediaMetadata"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  mediaMetadata = [(_SFPBOpenMediaCommand *)self mediaMetadata];
  mediaMetadata2 = [equalCopy mediaMetadata];
  if ((mediaMetadata != 0) == (mediaMetadata2 == 0))
  {
    goto LABEL_11;
  }

  mediaMetadata3 = [(_SFPBOpenMediaCommand *)self mediaMetadata];
  if (mediaMetadata3)
  {
    v8 = mediaMetadata3;
    mediaMetadata4 = [(_SFPBOpenMediaCommand *)self mediaMetadata];
    mediaMetadata5 = [equalCopy mediaMetadata];
    v11 = [mediaMetadata4 isEqual:mediaMetadata5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  mediaMetadata = [(_SFPBOpenMediaCommand *)self clientSelectedBundleIdentifier];
  mediaMetadata2 = [equalCopy clientSelectedBundleIdentifier];
  if ((mediaMetadata != 0) != (mediaMetadata2 == 0))
  {
    clientSelectedBundleIdentifier = [(_SFPBOpenMediaCommand *)self clientSelectedBundleIdentifier];
    if (!clientSelectedBundleIdentifier)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = clientSelectedBundleIdentifier;
    clientSelectedBundleIdentifier2 = [(_SFPBOpenMediaCommand *)self clientSelectedBundleIdentifier];
    clientSelectedBundleIdentifier3 = [equalCopy clientSelectedBundleIdentifier];
    v16 = [clientSelectedBundleIdentifier2 isEqual:clientSelectedBundleIdentifier3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  mediaMetadata = [(_SFPBOpenMediaCommand *)self mediaMetadata];
  if (mediaMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  clientSelectedBundleIdentifier = [(_SFPBOpenMediaCommand *)self clientSelectedBundleIdentifier];
  if (clientSelectedBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setClientSelectedBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  clientSelectedBundleIdentifier = self->_clientSelectedBundleIdentifier;
  self->_clientSelectedBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end