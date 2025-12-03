@interface IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsExplicit:(BOOL)explicit;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement

- (IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement;
  v5 = [(IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement *)v5 setBundleId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement setSource:](v5, "setSource:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isExplicit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement setIsExplicit:](v5, "setIsExplicit:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement *)self dictionaryRepresentation];
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
  if (self->_bundleId)
  {
    bundleId = [(IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement *)self bundleId];
    v5 = [bundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  v6 = *(&self->_isExplicit + 1);
  if ((v6 & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement isExplicit](self, "isExplicit")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isExplicit"];

    v6 = *(&self->_isExplicit + 1);
  }

  if (v6)
  {
    v8 = [(IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement *)self source]- 1;
    if (v8 > 3)
    {
      v9 = @"IFTACTIONCONFIRMATIONSYSTEMSTYLEGENERATIVEAIENABLEMENTSOURCE_UNKNOWN";
    }

    else
    {
      v9 = off_1E78D81A0[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"source"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  if (*(&self->_isExplicit + 1))
  {
    v4 = 2654435761 * self->_source;
    if ((*(&self->_isExplicit + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*(&self->_isExplicit + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_isExplicit;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  bundleId = [(IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement *)self bundleId];
  bundleId2 = [equalCopy bundleId];
  v7 = bundleId2;
  if ((bundleId != 0) == (bundleId2 == 0))
  {

    goto LABEL_16;
  }

  bundleId3 = [(IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement *)self bundleId];
  if (bundleId3)
  {
    v9 = bundleId3;
    bundleId4 = [(IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement *)self bundleId];
    bundleId5 = [equalCopy bundleId];
    v12 = [bundleId4 isEqual:bundleId5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v13 = *(&self->_isExplicit + 1);
  v14 = equalCopy[21];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (v13)
  {
    source = self->_source;
    if (source == [equalCopy source])
    {
      v13 = *(&self->_isExplicit + 1);
      v14 = equalCopy[21];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (v13 >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    isExplicit = self->_isExplicit;
    if (isExplicit != [equalCopy isExplicit])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  bundleId = [(IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement *)self bundleId];

  if (bundleId)
  {
    PBDataWriterWriteStringField();
  }

  v5 = *(&self->_isExplicit + 1);
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    v5 = *(&self->_isExplicit + 1);
  }

  v6 = toCopy;
  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v6 = toCopy;
  }
}

- (void)setHasIsExplicit:(BOOL)explicit
{
  if (explicit)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isExplicit + 1) = *(&self->_isExplicit + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(IFTSchemaIFTActionConfirmationSystemStyleGenerativeAIEnablement *)self deleteBundleId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end