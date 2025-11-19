@interface MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1)initWithDictionary:(id)a3;
- (MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1

- (MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1;
  v5 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"enrollmentData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 alloc] initWithDictionary:v6];
      [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)v5 setEnrollmentData:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"clockSessionInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 alloc] initWithDictionary:v8];
      [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)v5 setClockSessionInfo:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"systemBuild"];
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

- (MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self dictionaryRepresentation];
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
  if (self->_clockSessionInfo)
  {
    v4 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self clockSessionInfo];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"clockSessionInfo"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"clockSessionInfo"];
    }
  }

  if (self->_enrollmentData)
  {
    v7 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self enrollmentData];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"enrollmentData"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"enrollmentData"];
    }
  }

  if (self->_systemBuild)
  {
    v10 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self systemBuild];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"systemBuild"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self->_enrollmentData hash];
  v4 = [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self->_clockSessionInfo hash]^ v3;
  return v4 ^ [(NSString *)self->_systemBuild hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self enrollmentData];
  v6 = [v4 enrollmentData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self enrollmentData];
  if (v7)
  {
    v8 = v7;
    v9 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self enrollmentData];
    v10 = [v4 enrollmentData];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self clockSessionInfo];
  v6 = [v4 clockSessionInfo];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self clockSessionInfo];
  if (v12)
  {
    v13 = v12;
    v14 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self clockSessionInfo];
    v15 = [v4 clockSessionInfo];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self systemBuild];
  v6 = [v4 systemBuild];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self systemBuild];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self systemBuild];
    v20 = [v4 systemBuild];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self enrollmentData];

  if (v4)
  {
    v5 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self enrollmentData];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self clockSessionInfo];

  if (v6)
  {
    v7 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self clockSessionInfo];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self systemBuild];

  v9 = v10;
  if (v8)
  {
    PBDataWriterWriteStringField();
    v9 = v10;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self enrollmentData];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self deleteEnrollmentData];
  }

  v9 = [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self clockSessionInfo];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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