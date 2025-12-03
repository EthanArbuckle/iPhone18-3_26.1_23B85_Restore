@interface SCSchemaSCClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SCSchemaSCClientEvent)initWithDictionary:(id)dictionary;
- (SCSchemaSCClientEvent)initWithJSON:(id)n;
- (SCSchemaSCCorrectionChecked)correctionChecked;
- (SCSchemaSCUndoChecked)undoChecked;
- (SCSchemaSCUndoSet)undoSet;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteCorrectionChecked;
- (void)deleteUndoChecked;
- (void)deleteUndoSet;
- (void)setCorrectionChecked:(id)checked;
- (void)setUndoChecked:(id)checked;
- (void)setUndoSet:(id)set;
- (void)writeTo:(id)to;
@end

@implementation SCSchemaSCClientEvent

- (SCSchemaSCClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = SCSchemaSCClientEvent;
  v5 = [(SCSchemaSCClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SCSchemaSCClientEventMetadata alloc] initWithDictionary:v6];
      [(SCSchemaSCClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"undoChecked"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SCSchemaSCUndoChecked alloc] initWithDictionary:v8];
      [(SCSchemaSCClientEvent *)v5 setUndoChecked:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"correctionChecked"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SCSchemaSCCorrectionChecked alloc] initWithDictionary:v10];
      [(SCSchemaSCClientEvent *)v5 setCorrectionChecked:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"undoSet"];
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

- (SCSchemaSCClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SCSchemaSCClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SCSchemaSCClientEvent *)self dictionaryRepresentation];
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
  if (self->_correctionChecked)
  {
    correctionChecked = [(SCSchemaSCClientEvent *)self correctionChecked];
    dictionaryRepresentation = [correctionChecked dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"correctionChecked"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"correctionChecked"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(SCSchemaSCClientEvent *)self eventMetadata];
    dictionaryRepresentation2 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_undoChecked)
  {
    undoChecked = [(SCSchemaSCClientEvent *)self undoChecked];
    dictionaryRepresentation3 = [undoChecked dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"undoChecked"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"undoChecked"];
    }
  }

  if (self->_undoSet)
  {
    undoSet = [(SCSchemaSCClientEvent *)self undoSet];
    dictionaryRepresentation4 = [undoSet dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"undoSet"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"undoSet"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SCSchemaSCClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(SCSchemaSCUndoChecked *)self->_undoChecked hash]^ v3;
  v5 = [(SCSchemaSCCorrectionChecked *)self->_correctionChecked hash];
  return v4 ^ v5 ^ [(SCSchemaSCUndoSet *)self->_undoSet hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_23;
  }

  eventMetadata = [(SCSchemaSCClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  eventMetadata3 = [(SCSchemaSCClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(SCSchemaSCClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(SCSchemaSCClientEvent *)self undoChecked];
  eventMetadata2 = [equalCopy undoChecked];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  undoChecked = [(SCSchemaSCClientEvent *)self undoChecked];
  if (undoChecked)
  {
    v14 = undoChecked;
    undoChecked2 = [(SCSchemaSCClientEvent *)self undoChecked];
    undoChecked3 = [equalCopy undoChecked];
    v17 = [undoChecked2 isEqual:undoChecked3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(SCSchemaSCClientEvent *)self correctionChecked];
  eventMetadata2 = [equalCopy correctionChecked];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  correctionChecked = [(SCSchemaSCClientEvent *)self correctionChecked];
  if (correctionChecked)
  {
    v19 = correctionChecked;
    correctionChecked2 = [(SCSchemaSCClientEvent *)self correctionChecked];
    correctionChecked3 = [equalCopy correctionChecked];
    v22 = [correctionChecked2 isEqual:correctionChecked3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(SCSchemaSCClientEvent *)self undoSet];
  eventMetadata2 = [equalCopy undoSet];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    undoSet = [(SCSchemaSCClientEvent *)self undoSet];
    if (!undoSet)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = undoSet;
    undoSet2 = [(SCSchemaSCClientEvent *)self undoSet];
    undoSet3 = [equalCopy undoSet];
    v27 = [undoSet2 isEqual:undoSet3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(SCSchemaSCClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(SCSchemaSCClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  undoChecked = [(SCSchemaSCClientEvent *)self undoChecked];

  if (undoChecked)
  {
    undoChecked2 = [(SCSchemaSCClientEvent *)self undoChecked];
    PBDataWriterWriteSubmessage();
  }

  correctionChecked = [(SCSchemaSCClientEvent *)self correctionChecked];

  if (correctionChecked)
  {
    correctionChecked2 = [(SCSchemaSCClientEvent *)self correctionChecked];
    PBDataWriterWriteSubmessage();
  }

  undoSet = [(SCSchemaSCClientEvent *)self undoSet];

  v11 = toCopy;
  if (undoSet)
  {
    undoSet2 = [(SCSchemaSCClientEvent *)self undoSet];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
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

- (void)setUndoSet:(id)set
{
  setCopy = set;
  undoChecked = self->_undoChecked;
  self->_undoChecked = 0;

  correctionChecked = self->_correctionChecked;
  self->_correctionChecked = 0;

  self->_whichEvent_Type = 4 * (setCopy != 0);
  undoSet = self->_undoSet;
  self->_undoSet = setCopy;
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

- (void)setCorrectionChecked:(id)checked
{
  checkedCopy = checked;
  undoChecked = self->_undoChecked;
  self->_undoChecked = 0;

  undoSet = self->_undoSet;
  self->_undoSet = 0;

  v7 = 3;
  if (!checkedCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  correctionChecked = self->_correctionChecked;
  self->_correctionChecked = checkedCopy;
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

- (void)setUndoChecked:(id)checked
{
  checkedCopy = checked;
  correctionChecked = self->_correctionChecked;
  self->_correctionChecked = 0;

  undoSet = self->_undoSet;
  self->_undoSet = 0;

  self->_whichEvent_Type = 2 * (checkedCopy != 0);
  undoChecked = self->_undoChecked;
  self->_undoChecked = checkedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(SCSchemaSCClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 2)
  {
    return @"com.apple.aiml.siri.sc.SCClientEvent";
  }

  else
  {
    return off_1E78E2B88[whichEvent_Type - 2];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = SCSchemaSCClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(SCSchemaSCClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SCSchemaSCClientEvent *)self deleteEventMetadata];
  }

  undoChecked = [(SCSchemaSCClientEvent *)self undoChecked];
  v10 = [undoChecked applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SCSchemaSCClientEvent *)self deleteUndoChecked];
  }

  correctionChecked = [(SCSchemaSCClientEvent *)self correctionChecked];
  v13 = [correctionChecked applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SCSchemaSCClientEvent *)self deleteCorrectionChecked];
  }

  undoSet = [(SCSchemaSCClientEvent *)self undoSet];
  v16 = [undoSet applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
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
  eventMetadata = [(SCSchemaSCClientEvent *)self eventMetadata];
  scId = [eventMetadata scId];

  if (scId && ([scId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(scId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(value) = 31;
  }

  else
  {
    eventMetadata2 = [(SCSchemaSCClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId && ([requestId value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(requestId, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(value) = 1;
      scId = requestId;
    }

    else
    {
      eventMetadata3 = [(SCSchemaSCClientEvent *)self eventMetadata];
      scId = [eventMetadata3 subRequestId];

      if (scId)
      {
        value = [scId value];
        if (value)
        {
          value2 = [scId value];
          v18 = [value2 length];

          if (v18)
          {
            LODWORD(value) = 43;
          }

          else
          {
            LODWORD(value) = 0;
          }
        }
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(SCSchemaSCClientEvent *)self eventMetadata];
  scId = [eventMetadata scId];

  if (scId)
  {
    value = [scId value];
    if (value)
    {
      v6 = value;
      value2 = [scId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  eventMetadata2 = [(SCSchemaSCClientEvent *)self eventMetadata];
  requestId = [eventMetadata2 requestId];

  if (requestId)
  {
    value3 = [requestId value];
    if (value3)
    {
      v12 = value3;
      value4 = [requestId value];
      v14 = [value4 length];

      if (v14)
      {
        scId = requestId;
LABEL_11:
        value5 = scId;
        scId = value5;
        goto LABEL_13;
      }
    }
  }

  eventMetadata3 = [(SCSchemaSCClientEvent *)self eventMetadata];
  scId = [eventMetadata3 subRequestId];

  if (scId)
  {
    value5 = [scId value];
    if (!value5)
    {
      goto LABEL_13;
    }

    value6 = [scId value];
    v18 = [value6 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  value5 = 0;
LABEL_13:

  return value5;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(SCSchemaSCClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB0A8[whichEvent_Type - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 2 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E78EB0C0[tag - 2];
  }
}

@end