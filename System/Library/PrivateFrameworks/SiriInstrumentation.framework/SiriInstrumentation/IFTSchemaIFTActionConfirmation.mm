@interface IFTSchemaIFTActionConfirmation
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTActionConfirmation)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTActionConfirmation)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
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

@implementation IFTSchemaIFTActionConfirmation

- (IFTSchemaIFTActionConfirmation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = IFTSchemaIFTActionConfirmation;
  v5 = [(IFTSchemaIFTActionConfirmation *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionConfirmation setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"confirmed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionConfirmation setConfirmed:](v5, "setConfirmed:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"selectedInDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionConfirmation setSelectedInDisambiguation:](v5, "setSelectedInDisambiguation:", [v8 longLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"denied"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionConfirmation setDenied:](v5, "setDenied:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"systemStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTActionConfirmationSystemStyle alloc] initWithDictionary:v10];
      [(IFTSchemaIFTActionConfirmation *)v5 setSystemStyle:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (IFTSchemaIFTActionConfirmation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionConfirmation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTActionConfirmation *)self dictionaryRepresentation];
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
  if (whichOneof_Promptselection == 2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionConfirmation confirmed](self, "confirmed")}];
    [dictionary setObject:v5 forKeyedSubscript:@"confirmed"];

    whichOneof_Promptselection = self->_whichOneof_Promptselection;
  }

  if (whichOneof_Promptselection == 4)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionConfirmation denied](self, "denied")}];
    [dictionary setObject:v6 forKeyedSubscript:@"denied"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionConfirmation exists](self, "exists")}];
    [dictionary setObject:v7 forKeyedSubscript:@"exists"];
  }

  if (self->_whichOneof_Promptselection == 3)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTActionConfirmation selectedInDisambiguation](self, "selectedInDisambiguation")}];
    [dictionary setObject:v8 forKeyedSubscript:@"selectedInDisambiguation"];
  }

  if (self->_systemStyle)
  {
    systemStyle = [(IFTSchemaIFTActionConfirmation *)self systemStyle];
    dictionaryRepresentation = [systemStyle dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"systemStyle"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"systemStyle"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_exists;
  }

  else
  {
    v2 = 0;
  }

  whichOneof_Promptselection = self->_whichOneof_Promptselection;
  if (whichOneof_Promptselection == 4)
  {
    v4 = 0;
    v6 = 0;
    v5 = 2654435761 * self->_denied;
  }

  else if (whichOneof_Promptselection == 3)
  {
    v6 = 0;
    v5 = 0;
    v4 = 2654435761 * self->_selectedInDisambiguation;
  }

  else
  {
    v4 = 0;
    if (whichOneof_Promptselection == 2)
    {
      v5 = 0;
      v6 = 2654435761 * self->_confirmed;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }
  }

  return v4 ^ v2 ^ v6 ^ [(IFTSchemaIFTActionConfirmationSystemStyle *)self->_systemStyle hash]^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    whichOneof_Promptselection = self->_whichOneof_Promptselection;
    if (whichOneof_Promptselection == [equalCopy whichOneof_Promptselection] && (*&self->_has & 1) == (equalCopy[40] & 1))
    {
      if ((*&self->_has & 1) == 0 || (exists = self->_exists, exists == [equalCopy exists]))
      {
        confirmed = self->_confirmed;
        if (confirmed == [equalCopy confirmed])
        {
          selectedInDisambiguation = self->_selectedInDisambiguation;
          if (selectedInDisambiguation == [equalCopy selectedInDisambiguation])
          {
            denied = self->_denied;
            if (denied == [equalCopy denied])
            {
              systemStyle = [(IFTSchemaIFTActionConfirmation *)self systemStyle];
              systemStyle2 = [equalCopy systemStyle];
              v12 = systemStyle2;
              if ((systemStyle != 0) != (systemStyle2 == 0))
              {
                systemStyle3 = [(IFTSchemaIFTActionConfirmation *)self systemStyle];
                if (!systemStyle3)
                {

LABEL_17:
                  v18 = 1;
                  goto LABEL_15;
                }

                v14 = systemStyle3;
                systemStyle4 = [(IFTSchemaIFTActionConfirmation *)self systemStyle];
                systemStyle5 = [equalCopy systemStyle];
                v17 = [systemStyle4 isEqual:systemStyle5];

                if (v17)
                {
                  goto LABEL_17;
                }
              }

              else
              {
              }
            }
          }
        }
      }
    }
  }

  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  whichOneof_Promptselection = self->_whichOneof_Promptselection;
  if (whichOneof_Promptselection == 2)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Promptselection = self->_whichOneof_Promptselection;
  }

  if (whichOneof_Promptselection == 3)
  {
    PBDataWriterWriteInt64Field();
    whichOneof_Promptselection = self->_whichOneof_Promptselection;
  }

  if (whichOneof_Promptselection == 4)
  {
    PBDataWriterWriteBOOLField();
  }

  systemStyle = [(IFTSchemaIFTActionConfirmation *)self systemStyle];

  v6 = toCopy;
  if (systemStyle)
  {
    systemStyle2 = [(IFTSchemaIFTActionConfirmation *)self systemStyle];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)deleteDenied
{
  if (self->_whichOneof_Promptselection == 4)
  {
    self->_whichOneof_Promptselection = 0;
    self->_denied = 0;
  }
}

- (void)setDenied:(BOOL)denied
{
  self->_confirmed = 0;
  self->_selectedInDisambiguation = 0;
  self->_whichOneof_Promptselection = 4;
  self->_denied = denied;
}

- (void)deleteSelectedInDisambiguation
{
  if (self->_whichOneof_Promptselection == 3)
  {
    self->_whichOneof_Promptselection = 0;
    self->_selectedInDisambiguation = 0;
  }
}

- (int64_t)selectedInDisambiguation
{
  if (self->_whichOneof_Promptselection == 3)
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
  self->_whichOneof_Promptselection = 3;
  self->_selectedInDisambiguation = disambiguation;
}

- (void)deleteConfirmed
{
  if (self->_whichOneof_Promptselection == 2)
  {
    self->_whichOneof_Promptselection = 0;
    self->_confirmed = 0;
  }
}

- (void)setConfirmed:(BOOL)confirmed
{
  self->_selectedInDisambiguation = 0;
  self->_denied = 0;
  self->_whichOneof_Promptselection = 2;
  self->_confirmed = confirmed;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTActionConfirmation;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTActionConfirmation *)self systemStyle:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTActionConfirmation *)self deleteSystemStyle];
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