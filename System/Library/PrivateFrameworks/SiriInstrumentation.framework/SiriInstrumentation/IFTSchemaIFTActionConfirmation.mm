@interface IFTSchemaIFTActionConfirmation
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTActionConfirmation)initWithDictionary:(id)a3;
- (IFTSchemaIFTActionConfirmation)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
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

@implementation IFTSchemaIFTActionConfirmation

- (IFTSchemaIFTActionConfirmation)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IFTSchemaIFTActionConfirmation;
  v5 = [(IFTSchemaIFTActionConfirmation *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionConfirmation setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"confirmed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionConfirmation setConfirmed:](v5, "setConfirmed:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"selectedInDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionConfirmation setSelectedInDisambiguation:](v5, "setSelectedInDisambiguation:", [v8 longLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"denied"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionConfirmation setDenied:](v5, "setDenied:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"systemStyle"];
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

- (IFTSchemaIFTActionConfirmation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionConfirmation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTActionConfirmation *)self dictionaryRepresentation];
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
  if (whichOneof_Promptselection == 2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionConfirmation confirmed](self, "confirmed")}];
    [v3 setObject:v5 forKeyedSubscript:@"confirmed"];

    whichOneof_Promptselection = self->_whichOneof_Promptselection;
  }

  if (whichOneof_Promptselection == 4)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionConfirmation denied](self, "denied")}];
    [v3 setObject:v6 forKeyedSubscript:@"denied"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionConfirmation exists](self, "exists")}];
    [v3 setObject:v7 forKeyedSubscript:@"exists"];
  }

  if (self->_whichOneof_Promptselection == 3)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTActionConfirmation selectedInDisambiguation](self, "selectedInDisambiguation")}];
    [v3 setObject:v8 forKeyedSubscript:@"selectedInDisambiguation"];
  }

  if (self->_systemStyle)
  {
    v9 = [(IFTSchemaIFTActionConfirmation *)self systemStyle];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"systemStyle"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"systemStyle"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    whichOneof_Promptselection = self->_whichOneof_Promptselection;
    if (whichOneof_Promptselection == [v4 whichOneof_Promptselection] && (*&self->_has & 1) == (v4[40] & 1))
    {
      if ((*&self->_has & 1) == 0 || (exists = self->_exists, exists == [v4 exists]))
      {
        confirmed = self->_confirmed;
        if (confirmed == [v4 confirmed])
        {
          selectedInDisambiguation = self->_selectedInDisambiguation;
          if (selectedInDisambiguation == [v4 selectedInDisambiguation])
          {
            denied = self->_denied;
            if (denied == [v4 denied])
            {
              v10 = [(IFTSchemaIFTActionConfirmation *)self systemStyle];
              v11 = [v4 systemStyle];
              v12 = v11;
              if ((v10 != 0) != (v11 == 0))
              {
                v13 = [(IFTSchemaIFTActionConfirmation *)self systemStyle];
                if (!v13)
                {

LABEL_17:
                  v18 = 1;
                  goto LABEL_15;
                }

                v14 = v13;
                v15 = [(IFTSchemaIFTActionConfirmation *)self systemStyle];
                v16 = [v4 systemStyle];
                v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
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

  v5 = [(IFTSchemaIFTActionConfirmation *)self systemStyle];

  v6 = v8;
  if (v5)
  {
    v7 = [(IFTSchemaIFTActionConfirmation *)self systemStyle];
    PBDataWriterWriteSubmessage();

    v6 = v8;
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

- (void)setDenied:(BOOL)a3
{
  self->_confirmed = 0;
  self->_selectedInDisambiguation = 0;
  self->_whichOneof_Promptselection = 4;
  self->_denied = a3;
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

- (void)setSelectedInDisambiguation:(int64_t)a3
{
  self->_confirmed = 0;
  self->_denied = 0;
  self->_whichOneof_Promptselection = 3;
  self->_selectedInDisambiguation = a3;
}

- (void)deleteConfirmed
{
  if (self->_whichOneof_Promptselection == 2)
  {
    self->_whichOneof_Promptselection = 0;
    self->_confirmed = 0;
  }
}

- (void)setConfirmed:(BOOL)a3
{
  self->_selectedInDisambiguation = 0;
  self->_denied = 0;
  self->_whichOneof_Promptselection = 2;
  self->_confirmed = a3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTActionConfirmation;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTActionConfirmation *)self systemStyle:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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