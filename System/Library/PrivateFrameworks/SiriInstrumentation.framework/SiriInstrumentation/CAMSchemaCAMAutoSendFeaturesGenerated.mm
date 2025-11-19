@interface CAMSchemaCAMAutoSendFeaturesGenerated
- (BOOL)isEqual:(id)a3;
- (CAMSchemaCAMAutoSendFeaturesGenerated)initWithDictionary:(id)a3;
- (CAMSchemaCAMAutoSendFeaturesGenerated)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation CAMSchemaCAMAutoSendFeaturesGenerated

- (CAMSchemaCAMAutoSendFeaturesGenerated)initWithDictionary:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = CAMSchemaCAMAutoSendFeaturesGenerated;
  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)&v46 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"userAsrScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v6];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserAsrScore:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"userAsrScoreWhenCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v8];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserAsrScoreWhenCompleted:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"userAsrScoreWhenRejected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v10];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserAsrScoreWhenRejected:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"userAsrScoreTargetContact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v12];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserAsrScoreTargetContact:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"userAsrScoreTargetApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v14];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserAsrScoreTargetApp:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"userRejectRate"];
    objc_opt_class();
    v45 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v16];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserRejectRate:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"userRejectRateTargetContact"];
    objc_opt_class();
    v44 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v18];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserRejectRateTargetContact:v19];
    }

    v43 = v6;
    v20 = [v4 objectForKeyedSubscript:@"userRejectRateTargetApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v20];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserRejectRateTargetApp:v21];
    }

    v38 = v20;
    v42 = v8;
    v22 = [v4 objectForKeyedSubscript:@"userRejectRateWhenSkipDecision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v22];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserRejectRateWhenSkipDecision:v23];
    }

    v41 = v10;
    v24 = [v4 objectForKeyedSubscript:@"userRejectRateWhenConfirmDecision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v24];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserRejectRateWhenConfirmDecision:v25];
    }

    v40 = v12;
    v26 = [v4 objectForKeyedSubscript:@"userPayloadLengthInCharacters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v26];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserPayloadLengthInCharacters:v27];
    }

    v39 = v14;
    v28 = [v4 objectForKeyedSubscript:@"userPayloadLengthInCharactersTargetContact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v28];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserPayloadLengthInCharactersTargetContact:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"userPayloadLengthInCharactersTargetApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v30];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserPayloadLengthInCharactersTargetApp:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"userPayloadLengthInCharactersWhenCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v32];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserPayloadLengthInCharactersWhenCompleted:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"userPayloadLengthInCharactersWhenRejected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v34];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserPayloadLengthInCharactersWhenRejected:v35];
    }

    v36 = v5;
  }

  return v5;
}

- (CAMSchemaCAMAutoSendFeaturesGenerated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self dictionaryRepresentation];
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
  if (self->_userAsrScore)
  {
    v4 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScore];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"userAsrScore"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"userAsrScore"];
    }
  }

  if (self->_userAsrScoreTargetApp)
  {
    v7 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetApp];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"userAsrScoreTargetApp"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"userAsrScoreTargetApp"];
    }
  }

  if (self->_userAsrScoreTargetContact)
  {
    v10 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetContact];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"userAsrScoreTargetContact"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"userAsrScoreTargetContact"];
    }
  }

  if (self->_userAsrScoreWhenCompleted)
  {
    v13 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenCompleted];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"userAsrScoreWhenCompleted"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"userAsrScoreWhenCompleted"];
    }
  }

  if (self->_userAsrScoreWhenRejected)
  {
    v16 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenRejected];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"userAsrScoreWhenRejected"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"userAsrScoreWhenRejected"];
    }
  }

  if (self->_userPayloadLengthInCharacters)
  {
    v19 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharacters];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"userPayloadLengthInCharacters"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"userPayloadLengthInCharacters"];
    }
  }

  if (self->_userPayloadLengthInCharactersTargetApp)
  {
    v22 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetApp];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"userPayloadLengthInCharactersTargetApp"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"userPayloadLengthInCharactersTargetApp"];
    }
  }

  if (self->_userPayloadLengthInCharactersTargetContact)
  {
    v25 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetContact];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"userPayloadLengthInCharactersTargetContact"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"userPayloadLengthInCharactersTargetContact"];
    }
  }

  if (self->_userPayloadLengthInCharactersWhenCompleted)
  {
    v28 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenCompleted];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"userPayloadLengthInCharactersWhenCompleted"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"userPayloadLengthInCharactersWhenCompleted"];
    }
  }

  if (self->_userPayloadLengthInCharactersWhenRejected)
  {
    v31 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenRejected];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"userPayloadLengthInCharactersWhenRejected"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"userPayloadLengthInCharactersWhenRejected"];
    }
  }

  if (self->_userRejectRate)
  {
    v34 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRate];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"userRejectRate"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"userRejectRate"];
    }
  }

  if (self->_userRejectRateTargetApp)
  {
    v37 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetApp];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"userRejectRateTargetApp"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"userRejectRateTargetApp"];
    }
  }

  if (self->_userRejectRateTargetContact)
  {
    v40 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetContact];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"userRejectRateTargetContact"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"userRejectRateTargetContact"];
    }
  }

  if (self->_userRejectRateWhenConfirmDecision)
  {
    v43 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenConfirmDecision];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"userRejectRateWhenConfirmDecision"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"userRejectRateWhenConfirmDecision"];
    }
  }

  if (self->_userRejectRateWhenSkipDecision)
  {
    v46 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenSkipDecision];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"userRejectRateWhenSkipDecision"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"userRejectRateWhenSkipDecision"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(CAMSchemaCAMAggregateFeatureValue *)self->_userAsrScore hash];
  v4 = [(CAMSchemaCAMAggregateFeatureValue *)self->_userAsrScoreWhenCompleted hash]^ v3;
  v5 = [(CAMSchemaCAMAggregateFeatureValue *)self->_userAsrScoreWhenRejected hash];
  v6 = v4 ^ v5 ^ [(CAMSchemaCAMAggregateFeatureValue *)self->_userAsrScoreTargetContact hash];
  v7 = [(CAMSchemaCAMAggregateFeatureValue *)self->_userAsrScoreTargetApp hash];
  v8 = v7 ^ [(CAMSchemaCAMAggregateFeatureValue *)self->_userRejectRate hash];
  v9 = v6 ^ v8 ^ [(CAMSchemaCAMAggregateFeatureValue *)self->_userRejectRateTargetContact hash];
  v10 = [(CAMSchemaCAMAggregateFeatureValue *)self->_userRejectRateTargetApp hash];
  v11 = v10 ^ [(CAMSchemaCAMAggregateFeatureValue *)self->_userRejectRateWhenSkipDecision hash];
  v12 = v11 ^ [(CAMSchemaCAMAggregateFeatureValue *)self->_userRejectRateWhenConfirmDecision hash];
  v13 = v9 ^ v12 ^ [(CAMSchemaCAMAggregateFeatureValue *)self->_userPayloadLengthInCharacters hash];
  v14 = [(CAMSchemaCAMAggregateFeatureValue *)self->_userPayloadLengthInCharactersTargetContact hash];
  v15 = v14 ^ [(CAMSchemaCAMAggregateFeatureValue *)self->_userPayloadLengthInCharactersTargetApp hash];
  v16 = v15 ^ [(CAMSchemaCAMAggregateFeatureValue *)self->_userPayloadLengthInCharactersWhenCompleted hash];
  return v13 ^ v16 ^ [(CAMSchemaCAMAggregateFeatureValue *)self->_userPayloadLengthInCharactersWhenRejected hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScore];
  v6 = [v4 userAsrScore];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v7 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScore];
  if (v7)
  {
    v8 = v7;
    v9 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScore];
    v10 = [v4 userAsrScore];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenCompleted];
  v6 = [v4 userAsrScoreWhenCompleted];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v12 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenCompleted];
  if (v12)
  {
    v13 = v12;
    v14 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenCompleted];
    v15 = [v4 userAsrScoreWhenCompleted];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenRejected];
  v6 = [v4 userAsrScoreWhenRejected];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v17 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenRejected];
  if (v17)
  {
    v18 = v17;
    v19 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenRejected];
    v20 = [v4 userAsrScoreWhenRejected];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetContact];
  v6 = [v4 userAsrScoreTargetContact];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v22 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetContact];
  if (v22)
  {
    v23 = v22;
    v24 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetContact];
    v25 = [v4 userAsrScoreTargetContact];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetApp];
  v6 = [v4 userAsrScoreTargetApp];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v27 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetApp];
  if (v27)
  {
    v28 = v27;
    v29 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetApp];
    v30 = [v4 userAsrScoreTargetApp];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRate];
  v6 = [v4 userRejectRate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v32 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRate];
  if (v32)
  {
    v33 = v32;
    v34 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRate];
    v35 = [v4 userRejectRate];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetContact];
  v6 = [v4 userRejectRateTargetContact];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v37 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetContact];
  if (v37)
  {
    v38 = v37;
    v39 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetContact];
    v40 = [v4 userRejectRateTargetContact];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetApp];
  v6 = [v4 userRejectRateTargetApp];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v42 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetApp];
  if (v42)
  {
    v43 = v42;
    v44 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetApp];
    v45 = [v4 userRejectRateTargetApp];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenSkipDecision];
  v6 = [v4 userRejectRateWhenSkipDecision];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v47 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenSkipDecision];
  if (v47)
  {
    v48 = v47;
    v49 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenSkipDecision];
    v50 = [v4 userRejectRateWhenSkipDecision];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenConfirmDecision];
  v6 = [v4 userRejectRateWhenConfirmDecision];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v52 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenConfirmDecision];
  if (v52)
  {
    v53 = v52;
    v54 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenConfirmDecision];
    v55 = [v4 userRejectRateWhenConfirmDecision];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharacters];
  v6 = [v4 userPayloadLengthInCharacters];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v57 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharacters];
  if (v57)
  {
    v58 = v57;
    v59 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharacters];
    v60 = [v4 userPayloadLengthInCharacters];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetContact];
  v6 = [v4 userPayloadLengthInCharactersTargetContact];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v62 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetContact];
  if (v62)
  {
    v63 = v62;
    v64 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetContact];
    v65 = [v4 userPayloadLengthInCharactersTargetContact];
    v66 = [v64 isEqual:v65];

    if (!v66)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetApp];
  v6 = [v4 userPayloadLengthInCharactersTargetApp];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v67 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetApp];
  if (v67)
  {
    v68 = v67;
    v69 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetApp];
    v70 = [v4 userPayloadLengthInCharactersTargetApp];
    v71 = [v69 isEqual:v70];

    if (!v71)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenCompleted];
  v6 = [v4 userPayloadLengthInCharactersWhenCompleted];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v72 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenCompleted];
  if (v72)
  {
    v73 = v72;
    v74 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenCompleted];
    v75 = [v4 userPayloadLengthInCharactersWhenCompleted];
    v76 = [v74 isEqual:v75];

    if (!v76)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenRejected];
  v6 = [v4 userPayloadLengthInCharactersWhenRejected];
  if ((v5 != 0) != (v6 == 0))
  {
    v77 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenRejected];
    if (!v77)
    {

LABEL_80:
      v82 = 1;
      goto LABEL_78;
    }

    v78 = v77;
    v79 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenRejected];
    v80 = [v4 userPayloadLengthInCharactersWhenRejected];
    v81 = [v79 isEqual:v80];

    if (v81)
    {
      goto LABEL_80;
    }
  }

  else
  {
LABEL_76:
  }

LABEL_77:
  v82 = 0;
LABEL_78:

  return v82;
}

- (void)writeTo:(id)a3
{
  v35 = a3;
  v4 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScore];

  if (v4)
  {
    v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScore];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenCompleted];

  if (v6)
  {
    v7 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenCompleted];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenRejected];

  if (v8)
  {
    v9 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenRejected];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetContact];

  if (v10)
  {
    v11 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetContact];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetApp];

  if (v12)
  {
    v13 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetApp];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRate];

  if (v14)
  {
    v15 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRate];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetContact];

  if (v16)
  {
    v17 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetContact];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetApp];

  if (v18)
  {
    v19 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetApp];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenSkipDecision];

  if (v20)
  {
    v21 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenSkipDecision];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenConfirmDecision];

  if (v22)
  {
    v23 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenConfirmDecision];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharacters];

  if (v24)
  {
    v25 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharacters];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetContact];

  if (v26)
  {
    v27 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetContact];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetApp];

  if (v28)
  {
    v29 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetApp];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenCompleted];

  if (v30)
  {
    v31 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenCompleted];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenRejected];

  v33 = v35;
  if (v32)
  {
    v34 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenRejected];
    PBDataWriterWriteSubmessage();

    v33 = v35;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = CAMSchemaCAMAutoSendFeaturesGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v52 applySensitiveConditionsPolicy:v4];
  v6 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScore];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserAsrScore];
  }

  v9 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenCompleted];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserAsrScoreWhenCompleted];
  }

  v12 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenRejected];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserAsrScoreWhenRejected];
  }

  v15 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetContact];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserAsrScoreTargetContact];
  }

  v18 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetApp];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserAsrScoreTargetApp];
  }

  v21 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRate];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserRejectRate];
  }

  v24 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetContact];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserRejectRateTargetContact];
  }

  v27 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetApp];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserRejectRateTargetApp];
  }

  v30 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenSkipDecision];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserRejectRateWhenSkipDecision];
  }

  v33 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenConfirmDecision];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserRejectRateWhenConfirmDecision];
  }

  v36 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharacters];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserPayloadLengthInCharacters];
  }

  v39 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetContact];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserPayloadLengthInCharactersTargetContact];
  }

  v42 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetApp];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserPayloadLengthInCharactersTargetApp];
  }

  v45 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenCompleted];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserPayloadLengthInCharactersWhenCompleted];
  }

  v48 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenRejected];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserPayloadLengthInCharactersWhenRejected];
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