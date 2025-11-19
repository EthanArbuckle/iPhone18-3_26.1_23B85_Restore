@interface INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsNotebookGroupPresent:(BOOL)a3;
- (void)setHasIsNotebookPayloadPresent:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals

- (INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals;
  v5 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"commonIndependent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCECommonAppIndependentSignals alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)v5 setCommonIndependent:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isNotebookTitlePresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals setIsNotebookTitlePresent:](v5, "setIsNotebookTitlePresent:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isNotebookPayloadPresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals setIsNotebookPayloadPresent:](v5, "setIsNotebookPayloadPresent:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isNotebookGroupPresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals setIsNotebookGroupPresent:](v5, "setIsNotebookGroupPresent:", [v10 BOOLValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self dictionaryRepresentation];
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
  if (self->_commonIndependent)
  {
    v4 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self commonIndependent];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"commonIndependent"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"commonIndependent"];
    }
  }

  v7 = *(&self->_isNotebookGroupPresent + 1);
  if ((v7 & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals isNotebookGroupPresent](self, "isNotebookGroupPresent")}];
    [v3 setObject:v10 forKeyedSubscript:@"isNotebookGroupPresent"];

    v7 = *(&self->_isNotebookGroupPresent + 1);
    if ((v7 & 2) == 0)
    {
LABEL_8:
      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*(&self->_isNotebookGroupPresent + 1) & 2) == 0)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals isNotebookPayloadPresent](self, "isNotebookPayloadPresent")}];
  [v3 setObject:v11 forKeyedSubscript:@"isNotebookPayloadPresent"];

  if (*(&self->_isNotebookGroupPresent + 1))
  {
LABEL_9:
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals isNotebookTitlePresent](self, "isNotebookTitlePresent")}];
    [v3 setObject:v8 forKeyedSubscript:@"isNotebookTitlePresent"];
  }

LABEL_10:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(INFERENCESchemaINFERENCECommonAppIndependentSignals *)self->_commonIndependent hash];
  if (!*(&self->_isNotebookGroupPresent + 1))
  {
    v4 = 0;
    if ((*(&self->_isNotebookGroupPresent + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*(&self->_isNotebookGroupPresent + 1) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_isNotebookTitlePresent;
  if ((*(&self->_isNotebookGroupPresent + 1) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_isNotebookPayloadPresent;
  if ((*(&self->_isNotebookGroupPresent + 1) & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_isNotebookGroupPresent;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self commonIndependent];
  v6 = [v4 commonIndependent];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_20;
  }

  v8 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self commonIndependent];
  if (v8)
  {
    v9 = v8;
    v10 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self commonIndependent];
    v11 = [v4 commonIndependent];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v13 = *(&self->_isNotebookGroupPresent + 1);
  v14 = v4[19];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  if (v13)
  {
    isNotebookTitlePresent = self->_isNotebookTitlePresent;
    if (isNotebookTitlePresent != [v4 isNotebookTitlePresent])
    {
      goto LABEL_20;
    }

    v13 = *(&self->_isNotebookGroupPresent + 1);
    v14 = v4[19];
  }

  v16 = (v13 >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_20;
  }

  if (v16)
  {
    isNotebookPayloadPresent = self->_isNotebookPayloadPresent;
    if (isNotebookPayloadPresent == [v4 isNotebookPayloadPresent])
    {
      v13 = *(&self->_isNotebookGroupPresent + 1);
      v14 = v4[19];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_16:
  v18 = (v13 >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_20;
  }

  if (v18)
  {
    isNotebookGroupPresent = self->_isNotebookGroupPresent;
    if (isNotebookGroupPresent != [v4 isNotebookGroupPresent])
    {
      goto LABEL_20;
    }
  }

  v20 = 1;
LABEL_21:

  return v20;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self commonIndependent];

  if (v4)
  {
    v5 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self commonIndependent];
    PBDataWriterWriteSubmessage();
  }

  v6 = *(&self->_isNotebookGroupPresent + 1);
  if (v6)
  {
    PBDataWriterWriteBOOLField();
    v6 = *(&self->_isNotebookGroupPresent + 1);
  }

  v7 = v8;
  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = v8;
    v6 = *(&self->_isNotebookGroupPresent + 1);
  }

  if ((v6 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = v8;
  }
}

- (void)setHasIsNotebookGroupPresent:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotebookGroupPresent + 1) = *(&self->_isNotebookGroupPresent + 1) & 0xFB | v3;
}

- (void)setHasIsNotebookPayloadPresent:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotebookGroupPresent + 1) = *(&self->_isNotebookGroupPresent + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self commonIndependent:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingIndependentSignals *)self deleteCommonIndependent];
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