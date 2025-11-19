@interface SISchemaIFOutcomeSuccess
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaIFOutcomeSuccess)initWithDictionary:(id)a3;
- (SISchemaIFOutcomeSuccess)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasShouldOpen:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaIFOutcomeSuccess

- (SISchemaIFOutcomeSuccess)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SISchemaIFOutcomeSuccess;
  v5 = [(SISchemaIFOutcomeSuccess *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"didShowInAppResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaIFOutcomeSuccess setDidShowInAppResult:](v5, "setDidShowInAppResult:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"followUpActionBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SISchemaIFOutcomeSuccess *)v5 setFollowUpActionBundleId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"shouldOpen"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaIFOutcomeSuccess setShouldOpen:](v5, "setShouldOpen:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaIFOutcomeSuccess)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaIFOutcomeSuccess *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaIFOutcomeSuccess *)self dictionaryRepresentation];
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
  if (*(&self->_shouldOpen + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaIFOutcomeSuccess didShowInAppResult](self, "didShowInAppResult")}];
    [v3 setObject:v4 forKeyedSubscript:@"didShowInAppResult"];
  }

  if (self->_followUpActionBundleId)
  {
    v5 = [(SISchemaIFOutcomeSuccess *)self followUpActionBundleId];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"followUpActionBundleId"];
  }

  if ((*(&self->_shouldOpen + 1) & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaIFOutcomeSuccess shouldOpen](self, "shouldOpen")}];
    [v3 setObject:v7 forKeyedSubscript:@"shouldOpen"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*(&self->_shouldOpen + 1) != (v4[25] & 1))
  {
    goto LABEL_15;
  }

  if (*(&self->_shouldOpen + 1))
  {
    didShowInAppResult = self->_didShowInAppResult;
    if (didShowInAppResult != [v4 didShowInAppResult])
    {
      goto LABEL_15;
    }
  }

  v6 = [(SISchemaIFOutcomeSuccess *)self followUpActionBundleId];
  v7 = [v4 followUpActionBundleId];
  v8 = v7;
  if ((v6 != 0) == (v7 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v9 = [(SISchemaIFOutcomeSuccess *)self followUpActionBundleId];
  if (v9)
  {
    v10 = v9;
    v11 = [(SISchemaIFOutcomeSuccess *)self followUpActionBundleId];
    v12 = [v4 followUpActionBundleId];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*(&self->_shouldOpen + 1) >> 1) & 1;
  if (v14 != ((v4[25] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    shouldOpen = self->_shouldOpen;
    if (shouldOpen != [v4 shouldOpen])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if (*(&self->_shouldOpen + 1))
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(SISchemaIFOutcomeSuccess *)self followUpActionBundleId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_shouldOpen + 1) & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasShouldOpen:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_shouldOpen + 1) = *(&self->_shouldOpen + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v8.receiver = self;
  v8.super_class = SISchemaIFOutcomeSuccess;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:v4];
  v6 = [v4 isConditionSet:{4, v8.receiver, v8.super_class}];

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