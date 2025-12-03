@interface MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1)initWithDictionary:(id)dictionary;
- (MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1

- (MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1;
  v5 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 alloc] initWithDictionary:v6];
      [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)v5 setEnrollmentData:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"clockSessionInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 alloc] initWithDictionary:v8];
      [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)v5 setClockSessionInfo:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)v5 setSystemBuild:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self dictionaryRepresentation];
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
  if (self->_clockSessionInfo)
  {
    clockSessionInfo = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self clockSessionInfo];
    dictionaryRepresentation = [clockSessionInfo dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clockSessionInfo"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clockSessionInfo"];
    }
  }

  if (self->_enrollmentData)
  {
    enrollmentData = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self enrollmentData];
    dictionaryRepresentation2 = [enrollmentData dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"enrollmentData"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"enrollmentData"];
    }
  }

  if (self->_systemBuild)
  {
    systemBuild = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self systemBuild];
    v11 = [systemBuild copy];
    [dictionary setObject:v11 forKeyedSubscript:@"systemBuild"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self->_enrollmentData hash];
  v4 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self->_clockSessionInfo hash]^ v3;
  return v4 ^ [(NSString *)self->_systemBuild hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  enrollmentData = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self enrollmentData];
  enrollmentData2 = [equalCopy enrollmentData];
  if ((enrollmentData != 0) == (enrollmentData2 == 0))
  {
    goto LABEL_16;
  }

  enrollmentData3 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self enrollmentData];
  if (enrollmentData3)
  {
    v8 = enrollmentData3;
    enrollmentData4 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self enrollmentData];
    enrollmentData5 = [equalCopy enrollmentData];
    v11 = [enrollmentData4 isEqual:enrollmentData5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  enrollmentData = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self clockSessionInfo];
  enrollmentData2 = [equalCopy clockSessionInfo];
  if ((enrollmentData != 0) == (enrollmentData2 == 0))
  {
    goto LABEL_16;
  }

  clockSessionInfo = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self clockSessionInfo];
  if (clockSessionInfo)
  {
    v13 = clockSessionInfo;
    clockSessionInfo2 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self clockSessionInfo];
    clockSessionInfo3 = [equalCopy clockSessionInfo];
    v16 = [clockSessionInfo2 isEqual:clockSessionInfo3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  enrollmentData = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self systemBuild];
  enrollmentData2 = [equalCopy systemBuild];
  if ((enrollmentData != 0) != (enrollmentData2 == 0))
  {
    systemBuild = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self systemBuild];
    if (!systemBuild)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = systemBuild;
    systemBuild2 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self systemBuild];
    systemBuild3 = [equalCopy systemBuild];
    v21 = [systemBuild2 isEqual:systemBuild3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  enrollmentData = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self enrollmentData];

  if (enrollmentData)
  {
    enrollmentData2 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self enrollmentData];
    PBDataWriterWriteSubmessage();
  }

  clockSessionInfo = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self clockSessionInfo];

  if (clockSessionInfo)
  {
    clockSessionInfo2 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self clockSessionInfo];
    PBDataWriterWriteSubmessage();
  }

  systemBuild = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self systemBuild];

  v9 = toCopy;
  if (systemBuild)
  {
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  enrollmentData = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self enrollmentData];
  v7 = [enrollmentData applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self deleteEnrollmentData];
  }

  clockSessionInfo = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self clockSessionInfo];
  v10 = [clockSessionInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self deleteClockSessionInfo];
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