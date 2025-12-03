@interface SISchemaIFOutcomeSuccess
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaIFOutcomeSuccess)initWithDictionary:(id)dictionary;
- (SISchemaIFOutcomeSuccess)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasShouldOpen:(BOOL)open;
- (void)writeTo:(id)to;
@end

@implementation SISchemaIFOutcomeSuccess

- (SISchemaIFOutcomeSuccess)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaIFOutcomeSuccess;
  v5 = [(SISchemaIFOutcomeSuccess *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"didShowInAppResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaIFOutcomeSuccess setDidShowInAppResult:](v5, "setDidShowInAppResult:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"followUpActionBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SISchemaIFOutcomeSuccess *)v5 setFollowUpActionBundleId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"shouldOpen"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaIFOutcomeSuccess setShouldOpen:](v5, "setShouldOpen:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaIFOutcomeSuccess)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaIFOutcomeSuccess *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaIFOutcomeSuccess *)self dictionaryRepresentation];
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
  if (*(&self->_shouldOpen + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaIFOutcomeSuccess didShowInAppResult](self, "didShowInAppResult")}];
    [dictionary setObject:v4 forKeyedSubscript:@"didShowInAppResult"];
  }

  if (self->_followUpActionBundleId)
  {
    followUpActionBundleId = [(SISchemaIFOutcomeSuccess *)self followUpActionBundleId];
    v6 = [followUpActionBundleId copy];
    [dictionary setObject:v6 forKeyedSubscript:@"followUpActionBundleId"];
  }

  if ((*(&self->_shouldOpen + 1) & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaIFOutcomeSuccess shouldOpen](self, "shouldOpen")}];
    [dictionary setObject:v7 forKeyedSubscript:@"shouldOpen"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_shouldOpen + 1))
  {
    v3 = 2654435761 * self->_didShowInAppResult;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_followUpActionBundleId hash];
  if ((*(&self->_shouldOpen + 1) & 2) != 0)
  {
    v5 = 2654435761 * self->_shouldOpen;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*(&self->_shouldOpen + 1) != (equalCopy[25] & 1))
  {
    goto LABEL_15;
  }

  if (*(&self->_shouldOpen + 1))
  {
    didShowInAppResult = self->_didShowInAppResult;
    if (didShowInAppResult != [equalCopy didShowInAppResult])
    {
      goto LABEL_15;
    }
  }

  followUpActionBundleId = [(SISchemaIFOutcomeSuccess *)self followUpActionBundleId];
  followUpActionBundleId2 = [equalCopy followUpActionBundleId];
  v8 = followUpActionBundleId2;
  if ((followUpActionBundleId != 0) == (followUpActionBundleId2 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  followUpActionBundleId3 = [(SISchemaIFOutcomeSuccess *)self followUpActionBundleId];
  if (followUpActionBundleId3)
  {
    v10 = followUpActionBundleId3;
    followUpActionBundleId4 = [(SISchemaIFOutcomeSuccess *)self followUpActionBundleId];
    followUpActionBundleId5 = [equalCopy followUpActionBundleId];
    v13 = [followUpActionBundleId4 isEqual:followUpActionBundleId5];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*(&self->_shouldOpen + 1) >> 1) & 1;
  if (v14 != ((equalCopy[25] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    shouldOpen = self->_shouldOpen;
    if (shouldOpen != [equalCopy shouldOpen])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*(&self->_shouldOpen + 1))
  {
    PBDataWriterWriteBOOLField();
  }

  followUpActionBundleId = [(SISchemaIFOutcomeSuccess *)self followUpActionBundleId];

  if (followUpActionBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_shouldOpen + 1) & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasShouldOpen:(BOOL)open
{
  if (open)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_shouldOpen + 1) = *(&self->_shouldOpen + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = SISchemaIFOutcomeSuccess;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(SISchemaIFOutcomeSuccess *)self deleteFollowUpActionBundleId];
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