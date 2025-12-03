@interface IFTSchemaIFTActionParameterValue
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTActionParameterValue)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTActionParameterValue)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int64_t)selectedInDisambiguation;
- (unint64_t)hash;
- (void)deleteConfirmed;
- (void)deleteDenied;
- (void)deleteSelectedInDisambiguation;
- (void)setConfirmed:(BOOL)confirmed;
- (void)setDenied:(BOOL)denied;
- (void)setSelectedInDisambiguation:(int64_t)disambiguation;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTActionParameterValue

- (IFTSchemaIFTActionParameterValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTActionParameterValue;
  v5 = [(IFTSchemaIFTActionParameterValue *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"confirmed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionParameterValue setConfirmed:](v5, "setConfirmed:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"selectedInDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionParameterValue setSelectedInDisambiguation:](v5, "setSelectedInDisambiguation:", [v7 longLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"denied"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionParameterValue setDenied:](v5, "setDenied:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTActionParameterValue)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionParameterValue *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTActionParameterValue *)self dictionaryRepresentation];
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
  whichOneof_Promptselection = self->_whichOneof_Promptselection;
  if (whichOneof_Promptselection == 1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionParameterValue confirmed](self, "confirmed")}];
    [dictionary setObject:v5 forKeyedSubscript:@"confirmed"];

    whichOneof_Promptselection = self->_whichOneof_Promptselection;
  }

  if (whichOneof_Promptselection == 3)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionParameterValue denied](self, "denied")}];
    [dictionary setObject:v6 forKeyedSubscript:@"denied"];

    whichOneof_Promptselection = self->_whichOneof_Promptselection;
  }

  if (whichOneof_Promptselection == 2)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTActionParameterValue selectedInDisambiguation](self, "selectedInDisambiguation")}];
    [dictionary setObject:v7 forKeyedSubscript:@"selectedInDisambiguation"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (whichOneof_Promptselection = self->_whichOneof_Promptselection, whichOneof_Promptselection == objc_msgSend(equalCopy, "whichOneof_Promptselection")) && (confirmed = self->_confirmed, confirmed == objc_msgSend(equalCopy, "confirmed")) && (selectedInDisambiguation = self->_selectedInDisambiguation, selectedInDisambiguation == objc_msgSend(equalCopy, "selectedInDisambiguation")))
  {
    denied = self->_denied;
    v9 = denied == [equalCopy denied];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  whichOneof_Promptselection = self->_whichOneof_Promptselection;
  v6 = toCopy;
  if (whichOneof_Promptselection == 1)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
    whichOneof_Promptselection = self->_whichOneof_Promptselection;
  }

  if (whichOneof_Promptselection == 2)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
    whichOneof_Promptselection = self->_whichOneof_Promptselection;
  }

  if (whichOneof_Promptselection == 3)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
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

- (void)setDenied:(BOOL)denied
{
  self->_confirmed = 0;
  self->_selectedInDisambiguation = 0;
  self->_whichOneof_Promptselection = 3;
  self->_denied = denied;
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

- (void)setSelectedInDisambiguation:(int64_t)disambiguation
{
  self->_confirmed = 0;
  self->_denied = 0;
  self->_whichOneof_Promptselection = 2;
  self->_selectedInDisambiguation = disambiguation;
}

- (void)deleteConfirmed
{
  if (self->_whichOneof_Promptselection == 1)
  {
    self->_whichOneof_Promptselection = 0;
    self->_confirmed = 0;
  }
}

- (void)setConfirmed:(BOOL)confirmed
{
  self->_selectedInDisambiguation = 0;
  self->_denied = 0;
  self->_whichOneof_Promptselection = 1;
  self->_confirmed = confirmed;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end