@interface ORCHSchemaORCHNLClassicDeprecationFlags
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHNLClassicDeprecationFlags)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHNLClassicDeprecationFlags)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsDomainServerFallbackDisabled:(BOOL)disabled;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHNLClassicDeprecationFlags

- (ORCHSchemaORCHNLClassicDeprecationFlags)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ORCHSchemaORCHNLClassicDeprecationFlags;
  v5 = [(ORCHSchemaORCHNLClassicDeprecationFlags *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isNLServerFallbackDisabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHNLClassicDeprecationFlags setIsNLServerFallbackDisabled:](v5, "setIsNLServerFallbackDisabled:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isDomainServerFallbackDisabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHNLClassicDeprecationFlags setIsDomainServerFallbackDisabled:](v5, "setIsDomainServerFallbackDisabled:", [v7 BOOLValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHNLClassicDeprecationFlags)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHNLClassicDeprecationFlags *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHNLClassicDeprecationFlags *)self dictionaryRepresentation];
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
  v4 = *(&self->_isDomainServerFallbackDisabled + 1);
  if ((v4 & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHNLClassicDeprecationFlags isDomainServerFallbackDisabled](self, "isDomainServerFallbackDisabled")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isDomainServerFallbackDisabled"];

    v4 = *(&self->_isDomainServerFallbackDisabled + 1);
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHNLClassicDeprecationFlags isNLServerFallbackDisabled](self, "isNLServerFallbackDisabled")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isNLServerFallbackDisabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isDomainServerFallbackDisabled + 1))
  {
    v2 = 2654435761 * self->_isNLServerFallbackDisabled;
    if ((*(&self->_isDomainServerFallbackDisabled + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*(&self->_isDomainServerFallbackDisabled + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_isDomainServerFallbackDisabled;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = *(&self->_isDomainServerFallbackDisabled + 1);
  v6 = equalCopy[10];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (v5)
  {
    isNLServerFallbackDisabled = self->_isNLServerFallbackDisabled;
    if (isNLServerFallbackDisabled != [equalCopy isNLServerFallbackDisabled])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v5 = *(&self->_isDomainServerFallbackDisabled + 1);
    v6 = equalCopy[10];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    isDomainServerFallbackDisabled = self->_isDomainServerFallbackDisabled;
    if (isDomainServerFallbackDisabled != [equalCopy isDomainServerFallbackDisabled])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = *(&self->_isDomainServerFallbackDisabled + 1);
  v6 = toCopy;
  if (v5)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
    v5 = *(&self->_isDomainServerFallbackDisabled + 1);
  }

  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)setHasIsDomainServerFallbackDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isDomainServerFallbackDisabled + 1) = *(&self->_isDomainServerFallbackDisabled + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end