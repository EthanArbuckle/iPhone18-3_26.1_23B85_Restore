@interface INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasProjectIntent:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported

- (INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported;
  v5 = [(INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"executionPath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported setExecutionPath:](v5, "setExecutionPath:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"projectIntent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported setProjectIntent:](v5, "setProjectIntent:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = [(INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported *)self executionPath]- 1;
    if (v5 > 0xB)
    {
      v6 = @"INFERENCESMARTENOUGHAPPSELECTIONEXECUTIONPATH_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D8B70[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"executionPath"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [(INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported *)self projectIntent]- 1;
    if (v7 > 0xB)
    {
      v8 = @"INFERENCEPROJECTINTENT_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D8BD0[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"projectIntent"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_executionPath;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_projectIntent;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = v4[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    executionPath = self->_executionPath;
    if (executionPath != [v4 executionPath])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = v4[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    projectIntent = self->_projectIntent;
    if (projectIntent != [v4 projectIntent])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)setHasProjectIntent:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end