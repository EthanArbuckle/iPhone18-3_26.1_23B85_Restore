@interface IFTSchemaIFTActionParameterValue
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTActionParameterValue)initWithDictionary:(id)a3;
- (IFTSchemaIFTActionParameterValue)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int64_t)selectedInDisambiguation;
- (unint64_t)hash;
- (void)deleteConfirmed;
- (void)deleteDenied;
- (void)deleteSelectedInDisambiguation;
- (void)setConfirmed:(BOOL)a3;
- (void)setDenied:(BOOL)a3;
- (void)setSelectedInDisambiguation:(int64_t)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTActionParameterValue

- (IFTSchemaIFTActionParameterValue)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTActionParameterValue;
  v5 = [(IFTSchemaIFTActionParameterValue *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"confirmed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionParameterValue setConfirmed:](v5, "setConfirmed:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"selectedInDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionParameterValue setSelectedInDisambiguation:](v5, "setSelectedInDisambiguation:", [v7 longLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"denied"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionParameterValue setDenied:](v5, "setDenied:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTActionParameterValue)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionParameterValue *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTActionParameterValue *)self dictionaryRepresentation];
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
  whichOneof_Promptselection = self->_whichOneof_Promptselection;
  if (whichOneof_Promptselection == 1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionParameterValue confirmed](self, "confirmed")}];
    [v3 setObject:v5 forKeyedSubscript:@"confirmed"];

    whichOneof_Promptselection = self->_whichOneof_Promptselection;
  }

  if (whichOneof_Promptselection == 3)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionParameterValue denied](self, "denied")}];
    [v3 setObject:v6 forKeyedSubscript:@"denied"];

    whichOneof_Promptselection = self->_whichOneof_Promptselection;
  }

  if (whichOneof_Promptselection == 2)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTActionParameterValue selectedInDisambiguation](self, "selectedInDisambiguation")}];
    [v3 setObject:v7 forKeyedSubscript:@"selectedInDisambiguation"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  whichOneof_Promptselection = self->_whichOneof_Promptselection;
  switch(whichOneof_Promptselection)
  {
    case 3uLL:
      v3 = 24;
      return 2654435761 * *(&self->super.super.super.isa + v3);
    case 2uLL:
      return 2654435761 * self->_selectedInDisambiguation;
    case 1uLL:
      v3 = 8;
      return 2654435761 * *(&self->super.super.super.isa + v3);
  }

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (whichOneof_Promptselection = self->_whichOneof_Promptselection, whichOneof_Promptselection == objc_msgSend(v4, "whichOneof_Promptselection")) && (confirmed = self->_confirmed, confirmed == objc_msgSend(v4, "confirmed")) && (selectedInDisambiguation = self->_selectedInDisambiguation, selectedInDisambiguation == objc_msgSend(v4, "selectedInDisambiguation")))
  {
    denied = self->_denied;
    v9 = denied == [v4 denied];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  whichOneof_Promptselection = self->_whichOneof_Promptselection;
  v6 = v4;
  if (whichOneof_Promptselection == 1)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    whichOneof_Promptselection = self->_whichOneof_Promptselection;
  }

  if (whichOneof_Promptselection == 2)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
    whichOneof_Promptselection = self->_whichOneof_Promptselection;
  }

  if (whichOneof_Promptselection == 3)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)deleteDenied
{
  if (self->_whichOneof_Promptselection == 3)
  {
    self->_whichOneof_Promptselection = 0;
    self->_denied = 0;
  }
}

- (void)setDenied:(BOOL)a3
{
  self->_confirmed = 0;
  self->_selectedInDisambiguation = 0;
  self->_whichOneof_Promptselection = 3;
  self->_denied = a3;
}

- (void)deleteSelectedInDisambiguation
{
  if (self->_whichOneof_Promptselection == 2)
  {
    self->_whichOneof_Promptselection = 0;
    self->_selectedInDisambiguation = 0;
  }
}

- (int64_t)selectedInDisambiguation
{
  if (self->_whichOneof_Promptselection == 2)
  {
    return self->_selectedInDisambiguation;
  }

  else
  {
    return 0;
  }
}

- (void)setSelectedInDisambiguation:(int64_t)a3
{
  self->_confirmed = 0;
  self->_denied = 0;
  self->_whichOneof_Promptselection = 2;
  self->_selectedInDisambiguation = a3;
}

- (void)deleteConfirmed
{
  if (self->_whichOneof_Promptselection == 1)
  {
    self->_whichOneof_Promptselection = 0;
    self->_confirmed = 0;
  }
}

- (void)setConfirmed:(BOOL)a3
{
  self->_selectedInDisambiguation = 0;
  self->_denied = 0;
  self->_whichOneof_Promptselection = 1;
  self->_confirmed = a3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end