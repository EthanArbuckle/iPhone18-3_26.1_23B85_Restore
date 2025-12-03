@interface MWTSchemaMWTClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (MWTSchemaMWTCheckpointReported)mwtCheckpointReported;
- (MWTSchemaMWTClientEvent)initWithDictionary:(id)dictionary;
- (MWTSchemaMWTClientEvent)initWithJSON:(id)n;
- (MWTSchemaMWTMusicMetadataReported)mwtMusicMetadataReported;
- (MWTSchemaMWTVMCPUStatsReported)mwtVMCpuStatsReported;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteMwtCheckpointReported;
- (void)deleteMwtMusicMetadataReported;
- (void)deleteMwtVMCpuStatsReported;
- (void)setMwtCheckpointReported:(id)reported;
- (void)setMwtMusicMetadataReported:(id)reported;
- (void)setMwtVMCpuStatsReported:(id)reported;
- (void)writeTo:(id)to;
@end

@implementation MWTSchemaMWTClientEvent

- (MWTSchemaMWTClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = MWTSchemaMWTClientEvent;
  v5 = [(MWTSchemaMWTClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MWTSchemaMWTEventMetadata alloc] initWithDictionary:v6];
      [(MWTSchemaMWTClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"mwtCheckpointReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[MWTSchemaMWTCheckpointReported alloc] initWithDictionary:v8];
      [(MWTSchemaMWTClientEvent *)v5 setMwtCheckpointReported:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"mwtMusicMetadataReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[MWTSchemaMWTMusicMetadataReported alloc] initWithDictionary:v10];
      [(MWTSchemaMWTClientEvent *)v5 setMwtMusicMetadataReported:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"mwtVMCpuStatsReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[MWTSchemaMWTVMCPUStatsReported alloc] initWithDictionary:v12];
      [(MWTSchemaMWTClientEvent *)v5 setMwtVMCpuStatsReported:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (MWTSchemaMWTClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MWTSchemaMWTClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MWTSchemaMWTClientEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    eventMetadata = [(MWTSchemaMWTClientEvent *)self eventMetadata];
    dictionaryRepresentation = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_mwtCheckpointReported)
  {
    mwtCheckpointReported = [(MWTSchemaMWTClientEvent *)self mwtCheckpointReported];
    dictionaryRepresentation2 = [mwtCheckpointReported dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"mwtCheckpointReported"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"mwtCheckpointReported"];
    }
  }

  if (self->_mwtMusicMetadataReported)
  {
    mwtMusicMetadataReported = [(MWTSchemaMWTClientEvent *)self mwtMusicMetadataReported];
    dictionaryRepresentation3 = [mwtMusicMetadataReported dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"mwtMusicMetadataReported"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"mwtMusicMetadataReported"];
    }
  }

  if (self->_mwtVMCpuStatsReported)
  {
    mwtVMCpuStatsReported = [(MWTSchemaMWTClientEvent *)self mwtVMCpuStatsReported];
    dictionaryRepresentation4 = [mwtVMCpuStatsReported dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"mwtVMCpuStatsReported"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"mwtVMCpuStatsReported"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(MWTSchemaMWTEventMetadata *)self->_eventMetadata hash];
  v4 = [(MWTSchemaMWTCheckpointReported *)self->_mwtCheckpointReported hash]^ v3;
  v5 = [(MWTSchemaMWTMusicMetadataReported *)self->_mwtMusicMetadataReported hash];
  return v4 ^ v5 ^ [(MWTSchemaMWTVMCPUStatsReported *)self->_mwtVMCpuStatsReported hash];
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

  eventMetadata = [(MWTSchemaMWTClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  eventMetadata3 = [(MWTSchemaMWTClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(MWTSchemaMWTClientEvent *)self eventMetadata];
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

  eventMetadata = [(MWTSchemaMWTClientEvent *)self mwtCheckpointReported];
  eventMetadata2 = [equalCopy mwtCheckpointReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  mwtCheckpointReported = [(MWTSchemaMWTClientEvent *)self mwtCheckpointReported];
  if (mwtCheckpointReported)
  {
    v14 = mwtCheckpointReported;
    mwtCheckpointReported2 = [(MWTSchemaMWTClientEvent *)self mwtCheckpointReported];
    mwtCheckpointReported3 = [equalCopy mwtCheckpointReported];
    v17 = [mwtCheckpointReported2 isEqual:mwtCheckpointReported3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(MWTSchemaMWTClientEvent *)self mwtMusicMetadataReported];
  eventMetadata2 = [equalCopy mwtMusicMetadataReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  mwtMusicMetadataReported = [(MWTSchemaMWTClientEvent *)self mwtMusicMetadataReported];
  if (mwtMusicMetadataReported)
  {
    v19 = mwtMusicMetadataReported;
    mwtMusicMetadataReported2 = [(MWTSchemaMWTClientEvent *)self mwtMusicMetadataReported];
    mwtMusicMetadataReported3 = [equalCopy mwtMusicMetadataReported];
    v22 = [mwtMusicMetadataReported2 isEqual:mwtMusicMetadataReported3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(MWTSchemaMWTClientEvent *)self mwtVMCpuStatsReported];
  eventMetadata2 = [equalCopy mwtVMCpuStatsReported];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    mwtVMCpuStatsReported = [(MWTSchemaMWTClientEvent *)self mwtVMCpuStatsReported];
    if (!mwtVMCpuStatsReported)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = mwtVMCpuStatsReported;
    mwtVMCpuStatsReported2 = [(MWTSchemaMWTClientEvent *)self mwtVMCpuStatsReported];
    mwtVMCpuStatsReported3 = [equalCopy mwtVMCpuStatsReported];
    v27 = [mwtVMCpuStatsReported2 isEqual:mwtVMCpuStatsReported3];

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
  eventMetadata = [(MWTSchemaMWTClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(MWTSchemaMWTClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  mwtCheckpointReported = [(MWTSchemaMWTClientEvent *)self mwtCheckpointReported];

  if (mwtCheckpointReported)
  {
    mwtCheckpointReported2 = [(MWTSchemaMWTClientEvent *)self mwtCheckpointReported];
    PBDataWriterWriteSubmessage();
  }

  mwtMusicMetadataReported = [(MWTSchemaMWTClientEvent *)self mwtMusicMetadataReported];

  if (mwtMusicMetadataReported)
  {
    mwtMusicMetadataReported2 = [(MWTSchemaMWTClientEvent *)self mwtMusicMetadataReported];
    PBDataWriterWriteSubmessage();
  }

  mwtVMCpuStatsReported = [(MWTSchemaMWTClientEvent *)self mwtVMCpuStatsReported];

  v11 = toCopy;
  if (mwtVMCpuStatsReported)
  {
    mwtVMCpuStatsReported2 = [(MWTSchemaMWTClientEvent *)self mwtVMCpuStatsReported];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteMwtVMCpuStatsReported
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_mwtVMCpuStatsReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MWTSchemaMWTVMCPUStatsReported)mwtVMCpuStatsReported
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_mwtVMCpuStatsReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMwtVMCpuStatsReported:(id)reported
{
  reportedCopy = reported;
  mwtCheckpointReported = self->_mwtCheckpointReported;
  self->_mwtCheckpointReported = 0;

  mwtMusicMetadataReported = self->_mwtMusicMetadataReported;
  self->_mwtMusicMetadataReported = 0;

  v7 = 103;
  if (!reportedCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  mwtVMCpuStatsReported = self->_mwtVMCpuStatsReported;
  self->_mwtVMCpuStatsReported = reportedCopy;
}

- (void)deleteMwtMusicMetadataReported
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_mwtMusicMetadataReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MWTSchemaMWTMusicMetadataReported)mwtMusicMetadataReported
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_mwtMusicMetadataReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMwtMusicMetadataReported:(id)reported
{
  reportedCopy = reported;
  mwtCheckpointReported = self->_mwtCheckpointReported;
  self->_mwtCheckpointReported = 0;

  mwtVMCpuStatsReported = self->_mwtVMCpuStatsReported;
  self->_mwtVMCpuStatsReported = 0;

  v7 = 102;
  if (!reportedCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  mwtMusicMetadataReported = self->_mwtMusicMetadataReported;
  self->_mwtMusicMetadataReported = reportedCopy;
}

- (void)deleteMwtCheckpointReported
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_mwtCheckpointReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MWTSchemaMWTCheckpointReported)mwtCheckpointReported
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_mwtCheckpointReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMwtCheckpointReported:(id)reported
{
  reportedCopy = reported;
  mwtMusicMetadataReported = self->_mwtMusicMetadataReported;
  self->_mwtMusicMetadataReported = 0;

  mwtVMCpuStatsReported = self->_mwtVMCpuStatsReported;
  self->_mwtVMCpuStatsReported = 0;

  v7 = 101;
  if (!reportedCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  mwtCheckpointReported = self->_mwtCheckpointReported;
  self->_mwtCheckpointReported = reportedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(MWTSchemaMWTClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    return @"com.apple.aiml.siri.mwt.MWTClientEvent";
  }

  else
  {
    return off_1E78DA6F0[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = MWTSchemaMWTClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(MWTSchemaMWTClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MWTSchemaMWTClientEvent *)self deleteEventMetadata];
  }

  mwtCheckpointReported = [(MWTSchemaMWTClientEvent *)self mwtCheckpointReported];
  v10 = [mwtCheckpointReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MWTSchemaMWTClientEvent *)self deleteMwtCheckpointReported];
  }

  mwtMusicMetadataReported = [(MWTSchemaMWTClientEvent *)self mwtMusicMetadataReported];
  v13 = [mwtMusicMetadataReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(MWTSchemaMWTClientEvent *)self deleteMwtMusicMetadataReported];
  }

  mwtVMCpuStatsReported = [(MWTSchemaMWTClientEvent *)self mwtVMCpuStatsReported];
  v16 = [mwtVMCpuStatsReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(MWTSchemaMWTClientEvent *)self deleteMwtVMCpuStatsReported];
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
  eventMetadata = [(MWTSchemaMWTClientEvent *)self eventMetadata];
  mwtId = [eventMetadata mwtId];

  if (mwtId && ([mwtId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(mwtId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(value) = 25;
  }

  else
  {
    eventMetadata2 = [(MWTSchemaMWTClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId && ([requestId value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(requestId, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(value) = 1;
      mwtId = requestId;
    }

    else
    {
      eventMetadata3 = [(MWTSchemaMWTClientEvent *)self eventMetadata];
      mwtId = [eventMetadata3 subRequestId];

      if (mwtId)
      {
        value = [mwtId value];
        if (value)
        {
          value2 = [mwtId value];
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
  eventMetadata = [(MWTSchemaMWTClientEvent *)self eventMetadata];
  mwtId = [eventMetadata mwtId];

  if (mwtId)
  {
    value = [mwtId value];
    if (value)
    {
      v6 = value;
      value2 = [mwtId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  eventMetadata2 = [(MWTSchemaMWTClientEvent *)self eventMetadata];
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
        mwtId = requestId;
LABEL_11:
        value5 = mwtId;
        mwtId = value5;
        goto LABEL_13;
      }
    }
  }

  eventMetadata3 = [(MWTSchemaMWTClientEvent *)self eventMetadata];
  mwtId = [eventMetadata3 subRequestId];

  if (mwtId)
  {
    value5 = [mwtId value];
    if (!value5)
    {
      goto LABEL_13;
    }

    value6 = [mwtId value];
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
  whichEvent_Type = [(MWTSchemaMWTClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA098[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E78EA0B0[tag - 101];
  }
}

@end