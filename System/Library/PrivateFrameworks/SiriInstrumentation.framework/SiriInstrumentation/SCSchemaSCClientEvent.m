@interface SCSchemaSCClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SCSchemaSCClientEvent)initWithDictionary:(id)a3;
- (SCSchemaSCClientEvent)initWithJSON:(id)a3;
- (SCSchemaSCCorrectionChecked)correctionChecked;
- (SCSchemaSCUndoChecked)undoChecked;
- (SCSchemaSCUndoSet)undoSet;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteCorrectionChecked;
- (void)deleteUndoChecked;
- (void)deleteUndoSet;
- (void)setCorrectionChecked:(id)a3;
- (void)setUndoChecked:(id)a3;
- (void)setUndoSet:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SCSchemaSCClientEvent

- (SCSchemaSCClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SCSchemaSCClientEvent;
  v5 = [(SCSchemaSCClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SCSchemaSCClientEventMetadata alloc] initWithDictionary:v6];
      [(SCSchemaSCClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"undoChecked"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SCSchemaSCUndoChecked alloc] initWithDictionary:v8];
      [(SCSchemaSCClientEvent *)v5 setUndoChecked:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"correctionChecked"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SCSchemaSCCorrectionChecked alloc] initWithDictionary:v10];
      [(SCSchemaSCClientEvent *)v5 setCorrectionChecked:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"undoSet"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SCSchemaSCUndoSet alloc] initWithDictionary:v12];
      [(SCSchemaSCClientEvent *)v5 setUndoSet:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (SCSchemaSCClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SCSchemaSCClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SCSchemaSCClientEvent *)self dictionaryRepresentation];
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
  if (self->_correctionChecked)
  {
    v4 = [(SCSchemaSCClientEvent *)self correctionChecked];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"correctionChecked"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"correctionChecked"];
    }
  }

  if (self->_eventMetadata)
  {
    v7 = [(SCSchemaSCClientEvent *)self eventMetadata];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_undoChecked)
  {
    v10 = [(SCSchemaSCClientEvent *)self undoChecked];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"undoChecked"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"undoChecked"];
    }
  }

  if (self->_undoSet)
  {
    v13 = [(SCSchemaSCClientEvent *)self undoSet];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"undoSet"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"undoSet"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SCSchemaSCClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(SCSchemaSCUndoChecked *)self->_undoChecked hash]^ v3;
  v5 = [(SCSchemaSCCorrectionChecked *)self->_correctionChecked hash];
  return v4 ^ v5 ^ [(SCSchemaSCUndoSet *)self->_undoSet hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_23;
  }

  v6 = [(SCSchemaSCClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v8 = [(SCSchemaSCClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(SCSchemaSCClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(SCSchemaSCClientEvent *)self undoChecked];
  v7 = [v4 undoChecked];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(SCSchemaSCClientEvent *)self undoChecked];
  if (v13)
  {
    v14 = v13;
    v15 = [(SCSchemaSCClientEvent *)self undoChecked];
    v16 = [v4 undoChecked];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(SCSchemaSCClientEvent *)self correctionChecked];
  v7 = [v4 correctionChecked];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v18 = [(SCSchemaSCClientEvent *)self correctionChecked];
  if (v18)
  {
    v19 = v18;
    v20 = [(SCSchemaSCClientEvent *)self correctionChecked];
    v21 = [v4 correctionChecked];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(SCSchemaSCClientEvent *)self undoSet];
  v7 = [v4 undoSet];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(SCSchemaSCClientEvent *)self undoSet];
    if (!v23)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = v23;
    v25 = [(SCSchemaSCClientEvent *)self undoSet];
    v26 = [v4 undoSet];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(SCSchemaSCClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(SCSchemaSCClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SCSchemaSCClientEvent *)self undoChecked];

  if (v6)
  {
    v7 = [(SCSchemaSCClientEvent *)self undoChecked];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SCSchemaSCClientEvent *)self correctionChecked];

  if (v8)
  {
    v9 = [(SCSchemaSCClientEvent *)self correctionChecked];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(SCSchemaSCClientEvent *)self undoSet];

  v11 = v13;
  if (v10)
  {
    v12 = [(SCSchemaSCClientEvent *)self undoSet];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)deleteUndoSet
{
  if (self->_whichEvent_Type == 4)
  {
    self->_whichEvent_Type = 0;
    self->_undoSet = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SCSchemaSCUndoSet)undoSet
{
  if (self->_whichEvent_Type == 4)
  {
    v3 = self->_undoSet;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUndoSet:(id)a3
{
  v4 = a3;
  undoChecked = self->_undoChecked;
  self->_undoChecked = 0;

  correctionChecked = self->_correctionChecked;
  self->_correctionChecked = 0;

  self->_whichEvent_Type = 4 * (v4 != 0);
  undoSet = self->_undoSet;
  self->_undoSet = v4;
}

- (void)deleteCorrectionChecked
{
  if (self->_whichEvent_Type == 3)
  {
    self->_whichEvent_Type = 0;
    self->_correctionChecked = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SCSchemaSCCorrectionChecked)correctionChecked
{
  if (self->_whichEvent_Type == 3)
  {
    v3 = self->_correctionChecked;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCorrectionChecked:(id)a3
{
  v4 = a3;
  undoChecked = self->_undoChecked;
  self->_undoChecked = 0;

  undoSet = self->_undoSet;
  self->_undoSet = 0;

  v7 = 3;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  correctionChecked = self->_correctionChecked;
  self->_correctionChecked = v4;
}

- (void)deleteUndoChecked
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_undoChecked = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SCSchemaSCUndoChecked)undoChecked
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_undoChecked;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUndoChecked:(id)a3
{
  v4 = a3;
  correctionChecked = self->_correctionChecked;
  self->_correctionChecked = 0;

  undoSet = self->_undoSet;
  self->_undoSet = 0;

  self->_whichEvent_Type = 2 * (v4 != 0);
  undoChecked = self->_undoChecked;
  self->_undoChecked = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(SCSchemaSCClientEvent *)self whichEvent_Type];
  if (v2 - 2 > 2)
  {
    return @"com.apple.aiml.siri.sc.SCClientEvent";
  }

  else
  {
    return off_1E78E2B88[v2 - 2];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SCSchemaSCClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(SCSchemaSCClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SCSchemaSCClientEvent *)self deleteEventMetadata];
  }

  v9 = [(SCSchemaSCClientEvent *)self undoChecked];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SCSchemaSCClientEvent *)self deleteUndoChecked];
  }

  v12 = [(SCSchemaSCClientEvent *)self correctionChecked];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SCSchemaSCClientEvent *)self deleteCorrectionChecked];
  }

  v15 = [(SCSchemaSCClientEvent *)self undoSet];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(SCSchemaSCClientEvent *)self deleteUndoSet];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  v3 = [(SCSchemaSCClientEvent *)self eventMetadata];
  v4 = [v3 scId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(v9) = 31;
  }

  else
  {
    v10 = [(SCSchemaSCClientEvent *)self eventMetadata];
    v11 = [v10 requestId];

    if (v11 && ([v11 value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v11, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(v9) = 1;
      v4 = v11;
    }

    else
    {
      v16 = [(SCSchemaSCClientEvent *)self eventMetadata];
      v4 = [v16 subRequestId];

      if (v4)
      {
        v9 = [v4 value];
        if (v9)
        {
          v17 = [v4 value];
          v18 = [v17 length];

          if (v18)
          {
            LODWORD(v9) = 43;
          }

          else
          {
            LODWORD(v9) = 0;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }
    }
  }

  return v9;
}

- (id)getComponentId
{
  v3 = [(SCSchemaSCClientEvent *)self eventMetadata];
  v4 = [v3 scId];

  if (v4)
  {
    v5 = [v4 value];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 value];
      v8 = [v7 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  v9 = [(SCSchemaSCClientEvent *)self eventMetadata];
  v10 = [v9 requestId];

  if (v10)
  {
    v11 = [v10 value];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 value];
      v14 = [v13 length];

      if (v14)
      {
        v4 = v10;
LABEL_11:
        v16 = v4;
        v4 = v16;
        goto LABEL_13;
      }
    }
  }

  v15 = [(SCSchemaSCClientEvent *)self eventMetadata];
  v4 = [v15 subRequestId];

  if (v4)
  {
    v16 = [v4 value];
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = [v4 value];
    v18 = [v17 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(SCSchemaSCClientEvent *)self whichEvent_Type];
  if (v3 - 2 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB0A8[v3 - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 2 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E78EB0C0[a3 - 2];
  }
}

@end