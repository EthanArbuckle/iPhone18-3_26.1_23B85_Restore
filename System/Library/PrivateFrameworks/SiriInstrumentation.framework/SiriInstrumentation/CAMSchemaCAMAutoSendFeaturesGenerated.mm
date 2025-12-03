@interface CAMSchemaCAMAutoSendFeaturesGenerated
- (BOOL)isEqual:(id)equal;
- (CAMSchemaCAMAutoSendFeaturesGenerated)initWithDictionary:(id)dictionary;
- (CAMSchemaCAMAutoSendFeaturesGenerated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation CAMSchemaCAMAutoSendFeaturesGenerated

- (CAMSchemaCAMAutoSendFeaturesGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v46.receiver = self;
  v46.super_class = CAMSchemaCAMAutoSendFeaturesGenerated;
  v5 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)&v46 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"userAsrScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v6];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserAsrScore:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"userAsrScoreWhenCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v8];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserAsrScoreWhenCompleted:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"userAsrScoreWhenRejected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v10];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserAsrScoreWhenRejected:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"userAsrScoreTargetContact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v12];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserAsrScoreTargetContact:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"userAsrScoreTargetApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v14];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserAsrScoreTargetApp:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"userRejectRate"];
    objc_opt_class();
    v45 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v16];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserRejectRate:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"userRejectRateTargetContact"];
    objc_opt_class();
    v44 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v18];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserRejectRateTargetContact:v19];
    }

    v43 = v6;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"userRejectRateTargetApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v20];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserRejectRateTargetApp:v21];
    }

    v38 = v20;
    v42 = v8;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"userRejectRateWhenSkipDecision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v22];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserRejectRateWhenSkipDecision:v23];
    }

    v41 = v10;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"userRejectRateWhenConfirmDecision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v24];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserRejectRateWhenConfirmDecision:v25];
    }

    v40 = v12;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"userPayloadLengthInCharacters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v26];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserPayloadLengthInCharacters:v27];
    }

    v39 = v14;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"userPayloadLengthInCharactersTargetContact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v28];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserPayloadLengthInCharactersTargetContact:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"userPayloadLengthInCharactersTargetApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v30];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserPayloadLengthInCharactersTargetApp:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"userPayloadLengthInCharactersWhenCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[CAMSchemaCAMAggregateFeatureValue alloc] initWithDictionary:v32];
      [(CAMSchemaCAMAutoSendFeaturesGenerated *)v5 setUserPayloadLengthInCharactersWhenCompleted:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"userPayloadLengthInCharactersWhenRejected"];
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

- (CAMSchemaCAMAutoSendFeaturesGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self dictionaryRepresentation];
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
  if (self->_userAsrScore)
  {
    userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScore];
    dictionaryRepresentation = [userAsrScore dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"userAsrScore"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"userAsrScore"];
    }
  }

  if (self->_userAsrScoreTargetApp)
  {
    userAsrScoreTargetApp = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetApp];
    dictionaryRepresentation2 = [userAsrScoreTargetApp dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"userAsrScoreTargetApp"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"userAsrScoreTargetApp"];
    }
  }

  if (self->_userAsrScoreTargetContact)
  {
    userAsrScoreTargetContact = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetContact];
    dictionaryRepresentation3 = [userAsrScoreTargetContact dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"userAsrScoreTargetContact"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"userAsrScoreTargetContact"];
    }
  }

  if (self->_userAsrScoreWhenCompleted)
  {
    userAsrScoreWhenCompleted = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenCompleted];
    dictionaryRepresentation4 = [userAsrScoreWhenCompleted dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"userAsrScoreWhenCompleted"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"userAsrScoreWhenCompleted"];
    }
  }

  if (self->_userAsrScoreWhenRejected)
  {
    userAsrScoreWhenRejected = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenRejected];
    dictionaryRepresentation5 = [userAsrScoreWhenRejected dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"userAsrScoreWhenRejected"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"userAsrScoreWhenRejected"];
    }
  }

  if (self->_userPayloadLengthInCharacters)
  {
    userPayloadLengthInCharacters = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharacters];
    dictionaryRepresentation6 = [userPayloadLengthInCharacters dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"userPayloadLengthInCharacters"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"userPayloadLengthInCharacters"];
    }
  }

  if (self->_userPayloadLengthInCharactersTargetApp)
  {
    userPayloadLengthInCharactersTargetApp = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetApp];
    dictionaryRepresentation7 = [userPayloadLengthInCharactersTargetApp dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"userPayloadLengthInCharactersTargetApp"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"userPayloadLengthInCharactersTargetApp"];
    }
  }

  if (self->_userPayloadLengthInCharactersTargetContact)
  {
    userPayloadLengthInCharactersTargetContact = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetContact];
    dictionaryRepresentation8 = [userPayloadLengthInCharactersTargetContact dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"userPayloadLengthInCharactersTargetContact"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"userPayloadLengthInCharactersTargetContact"];
    }
  }

  if (self->_userPayloadLengthInCharactersWhenCompleted)
  {
    userPayloadLengthInCharactersWhenCompleted = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenCompleted];
    dictionaryRepresentation9 = [userPayloadLengthInCharactersWhenCompleted dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"userPayloadLengthInCharactersWhenCompleted"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"userPayloadLengthInCharactersWhenCompleted"];
    }
  }

  if (self->_userPayloadLengthInCharactersWhenRejected)
  {
    userPayloadLengthInCharactersWhenRejected = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenRejected];
    dictionaryRepresentation10 = [userPayloadLengthInCharactersWhenRejected dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"userPayloadLengthInCharactersWhenRejected"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"userPayloadLengthInCharactersWhenRejected"];
    }
  }

  if (self->_userRejectRate)
  {
    userRejectRate = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRate];
    dictionaryRepresentation11 = [userRejectRate dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"userRejectRate"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"userRejectRate"];
    }
  }

  if (self->_userRejectRateTargetApp)
  {
    userRejectRateTargetApp = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetApp];
    dictionaryRepresentation12 = [userRejectRateTargetApp dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"userRejectRateTargetApp"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"userRejectRateTargetApp"];
    }
  }

  if (self->_userRejectRateTargetContact)
  {
    userRejectRateTargetContact = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetContact];
    dictionaryRepresentation13 = [userRejectRateTargetContact dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"userRejectRateTargetContact"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"userRejectRateTargetContact"];
    }
  }

  if (self->_userRejectRateWhenConfirmDecision)
  {
    userRejectRateWhenConfirmDecision = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenConfirmDecision];
    dictionaryRepresentation14 = [userRejectRateWhenConfirmDecision dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"userRejectRateWhenConfirmDecision"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"userRejectRateWhenConfirmDecision"];
    }
  }

  if (self->_userRejectRateWhenSkipDecision)
  {
    userRejectRateWhenSkipDecision = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenSkipDecision];
    dictionaryRepresentation15 = [userRejectRateWhenSkipDecision dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"userRejectRateWhenSkipDecision"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"userRejectRateWhenSkipDecision"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScore];
  userAsrScore2 = [equalCopy userAsrScore];
  if ((userAsrScore != 0) == (userAsrScore2 == 0))
  {
    goto LABEL_76;
  }

  userAsrScore3 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScore];
  if (userAsrScore3)
  {
    v8 = userAsrScore3;
    userAsrScore4 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScore];
    userAsrScore5 = [equalCopy userAsrScore];
    v11 = [userAsrScore4 isEqual:userAsrScore5];

    if (!v11)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenCompleted];
  userAsrScore2 = [equalCopy userAsrScoreWhenCompleted];
  if ((userAsrScore != 0) == (userAsrScore2 == 0))
  {
    goto LABEL_76;
  }

  userAsrScoreWhenCompleted = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenCompleted];
  if (userAsrScoreWhenCompleted)
  {
    v13 = userAsrScoreWhenCompleted;
    userAsrScoreWhenCompleted2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenCompleted];
    userAsrScoreWhenCompleted3 = [equalCopy userAsrScoreWhenCompleted];
    v16 = [userAsrScoreWhenCompleted2 isEqual:userAsrScoreWhenCompleted3];

    if (!v16)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenRejected];
  userAsrScore2 = [equalCopy userAsrScoreWhenRejected];
  if ((userAsrScore != 0) == (userAsrScore2 == 0))
  {
    goto LABEL_76;
  }

  userAsrScoreWhenRejected = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenRejected];
  if (userAsrScoreWhenRejected)
  {
    v18 = userAsrScoreWhenRejected;
    userAsrScoreWhenRejected2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenRejected];
    userAsrScoreWhenRejected3 = [equalCopy userAsrScoreWhenRejected];
    v21 = [userAsrScoreWhenRejected2 isEqual:userAsrScoreWhenRejected3];

    if (!v21)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetContact];
  userAsrScore2 = [equalCopy userAsrScoreTargetContact];
  if ((userAsrScore != 0) == (userAsrScore2 == 0))
  {
    goto LABEL_76;
  }

  userAsrScoreTargetContact = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetContact];
  if (userAsrScoreTargetContact)
  {
    v23 = userAsrScoreTargetContact;
    userAsrScoreTargetContact2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetContact];
    userAsrScoreTargetContact3 = [equalCopy userAsrScoreTargetContact];
    v26 = [userAsrScoreTargetContact2 isEqual:userAsrScoreTargetContact3];

    if (!v26)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetApp];
  userAsrScore2 = [equalCopy userAsrScoreTargetApp];
  if ((userAsrScore != 0) == (userAsrScore2 == 0))
  {
    goto LABEL_76;
  }

  userAsrScoreTargetApp = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetApp];
  if (userAsrScoreTargetApp)
  {
    v28 = userAsrScoreTargetApp;
    userAsrScoreTargetApp2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetApp];
    userAsrScoreTargetApp3 = [equalCopy userAsrScoreTargetApp];
    v31 = [userAsrScoreTargetApp2 isEqual:userAsrScoreTargetApp3];

    if (!v31)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRate];
  userAsrScore2 = [equalCopy userRejectRate];
  if ((userAsrScore != 0) == (userAsrScore2 == 0))
  {
    goto LABEL_76;
  }

  userRejectRate = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRate];
  if (userRejectRate)
  {
    v33 = userRejectRate;
    userRejectRate2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRate];
    userRejectRate3 = [equalCopy userRejectRate];
    v36 = [userRejectRate2 isEqual:userRejectRate3];

    if (!v36)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetContact];
  userAsrScore2 = [equalCopy userRejectRateTargetContact];
  if ((userAsrScore != 0) == (userAsrScore2 == 0))
  {
    goto LABEL_76;
  }

  userRejectRateTargetContact = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetContact];
  if (userRejectRateTargetContact)
  {
    v38 = userRejectRateTargetContact;
    userRejectRateTargetContact2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetContact];
    userRejectRateTargetContact3 = [equalCopy userRejectRateTargetContact];
    v41 = [userRejectRateTargetContact2 isEqual:userRejectRateTargetContact3];

    if (!v41)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetApp];
  userAsrScore2 = [equalCopy userRejectRateTargetApp];
  if ((userAsrScore != 0) == (userAsrScore2 == 0))
  {
    goto LABEL_76;
  }

  userRejectRateTargetApp = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetApp];
  if (userRejectRateTargetApp)
  {
    v43 = userRejectRateTargetApp;
    userRejectRateTargetApp2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetApp];
    userRejectRateTargetApp3 = [equalCopy userRejectRateTargetApp];
    v46 = [userRejectRateTargetApp2 isEqual:userRejectRateTargetApp3];

    if (!v46)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenSkipDecision];
  userAsrScore2 = [equalCopy userRejectRateWhenSkipDecision];
  if ((userAsrScore != 0) == (userAsrScore2 == 0))
  {
    goto LABEL_76;
  }

  userRejectRateWhenSkipDecision = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenSkipDecision];
  if (userRejectRateWhenSkipDecision)
  {
    v48 = userRejectRateWhenSkipDecision;
    userRejectRateWhenSkipDecision2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenSkipDecision];
    userRejectRateWhenSkipDecision3 = [equalCopy userRejectRateWhenSkipDecision];
    v51 = [userRejectRateWhenSkipDecision2 isEqual:userRejectRateWhenSkipDecision3];

    if (!v51)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenConfirmDecision];
  userAsrScore2 = [equalCopy userRejectRateWhenConfirmDecision];
  if ((userAsrScore != 0) == (userAsrScore2 == 0))
  {
    goto LABEL_76;
  }

  userRejectRateWhenConfirmDecision = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenConfirmDecision];
  if (userRejectRateWhenConfirmDecision)
  {
    v53 = userRejectRateWhenConfirmDecision;
    userRejectRateWhenConfirmDecision2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenConfirmDecision];
    userRejectRateWhenConfirmDecision3 = [equalCopy userRejectRateWhenConfirmDecision];
    v56 = [userRejectRateWhenConfirmDecision2 isEqual:userRejectRateWhenConfirmDecision3];

    if (!v56)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharacters];
  userAsrScore2 = [equalCopy userPayloadLengthInCharacters];
  if ((userAsrScore != 0) == (userAsrScore2 == 0))
  {
    goto LABEL_76;
  }

  userPayloadLengthInCharacters = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharacters];
  if (userPayloadLengthInCharacters)
  {
    v58 = userPayloadLengthInCharacters;
    userPayloadLengthInCharacters2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharacters];
    userPayloadLengthInCharacters3 = [equalCopy userPayloadLengthInCharacters];
    v61 = [userPayloadLengthInCharacters2 isEqual:userPayloadLengthInCharacters3];

    if (!v61)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetContact];
  userAsrScore2 = [equalCopy userPayloadLengthInCharactersTargetContact];
  if ((userAsrScore != 0) == (userAsrScore2 == 0))
  {
    goto LABEL_76;
  }

  userPayloadLengthInCharactersTargetContact = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetContact];
  if (userPayloadLengthInCharactersTargetContact)
  {
    v63 = userPayloadLengthInCharactersTargetContact;
    userPayloadLengthInCharactersTargetContact2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetContact];
    userPayloadLengthInCharactersTargetContact3 = [equalCopy userPayloadLengthInCharactersTargetContact];
    v66 = [userPayloadLengthInCharactersTargetContact2 isEqual:userPayloadLengthInCharactersTargetContact3];

    if (!v66)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetApp];
  userAsrScore2 = [equalCopy userPayloadLengthInCharactersTargetApp];
  if ((userAsrScore != 0) == (userAsrScore2 == 0))
  {
    goto LABEL_76;
  }

  userPayloadLengthInCharactersTargetApp = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetApp];
  if (userPayloadLengthInCharactersTargetApp)
  {
    v68 = userPayloadLengthInCharactersTargetApp;
    userPayloadLengthInCharactersTargetApp2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetApp];
    userPayloadLengthInCharactersTargetApp3 = [equalCopy userPayloadLengthInCharactersTargetApp];
    v71 = [userPayloadLengthInCharactersTargetApp2 isEqual:userPayloadLengthInCharactersTargetApp3];

    if (!v71)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenCompleted];
  userAsrScore2 = [equalCopy userPayloadLengthInCharactersWhenCompleted];
  if ((userAsrScore != 0) == (userAsrScore2 == 0))
  {
    goto LABEL_76;
  }

  userPayloadLengthInCharactersWhenCompleted = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenCompleted];
  if (userPayloadLengthInCharactersWhenCompleted)
  {
    v73 = userPayloadLengthInCharactersWhenCompleted;
    userPayloadLengthInCharactersWhenCompleted2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenCompleted];
    userPayloadLengthInCharactersWhenCompleted3 = [equalCopy userPayloadLengthInCharactersWhenCompleted];
    v76 = [userPayloadLengthInCharactersWhenCompleted2 isEqual:userPayloadLengthInCharactersWhenCompleted3];

    if (!v76)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenRejected];
  userAsrScore2 = [equalCopy userPayloadLengthInCharactersWhenRejected];
  if ((userAsrScore != 0) != (userAsrScore2 == 0))
  {
    userPayloadLengthInCharactersWhenRejected = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenRejected];
    if (!userPayloadLengthInCharactersWhenRejected)
    {

LABEL_80:
      v82 = 1;
      goto LABEL_78;
    }

    v78 = userPayloadLengthInCharactersWhenRejected;
    userPayloadLengthInCharactersWhenRejected2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenRejected];
    userPayloadLengthInCharactersWhenRejected3 = [equalCopy userPayloadLengthInCharactersWhenRejected];
    v81 = [userPayloadLengthInCharactersWhenRejected2 isEqual:userPayloadLengthInCharactersWhenRejected3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScore];

  if (userAsrScore)
  {
    userAsrScore2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScore];
    PBDataWriterWriteSubmessage();
  }

  userAsrScoreWhenCompleted = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenCompleted];

  if (userAsrScoreWhenCompleted)
  {
    userAsrScoreWhenCompleted2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenCompleted];
    PBDataWriterWriteSubmessage();
  }

  userAsrScoreWhenRejected = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenRejected];

  if (userAsrScoreWhenRejected)
  {
    userAsrScoreWhenRejected2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenRejected];
    PBDataWriterWriteSubmessage();
  }

  userAsrScoreTargetContact = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetContact];

  if (userAsrScoreTargetContact)
  {
    userAsrScoreTargetContact2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetContact];
    PBDataWriterWriteSubmessage();
  }

  userAsrScoreTargetApp = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetApp];

  if (userAsrScoreTargetApp)
  {
    userAsrScoreTargetApp2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetApp];
    PBDataWriterWriteSubmessage();
  }

  userRejectRate = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRate];

  if (userRejectRate)
  {
    userRejectRate2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRate];
    PBDataWriterWriteSubmessage();
  }

  userRejectRateTargetContact = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetContact];

  if (userRejectRateTargetContact)
  {
    userRejectRateTargetContact2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetContact];
    PBDataWriterWriteSubmessage();
  }

  userRejectRateTargetApp = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetApp];

  if (userRejectRateTargetApp)
  {
    userRejectRateTargetApp2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetApp];
    PBDataWriterWriteSubmessage();
  }

  userRejectRateWhenSkipDecision = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenSkipDecision];

  if (userRejectRateWhenSkipDecision)
  {
    userRejectRateWhenSkipDecision2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenSkipDecision];
    PBDataWriterWriteSubmessage();
  }

  userRejectRateWhenConfirmDecision = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenConfirmDecision];

  if (userRejectRateWhenConfirmDecision)
  {
    userRejectRateWhenConfirmDecision2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenConfirmDecision];
    PBDataWriterWriteSubmessage();
  }

  userPayloadLengthInCharacters = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharacters];

  if (userPayloadLengthInCharacters)
  {
    userPayloadLengthInCharacters2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharacters];
    PBDataWriterWriteSubmessage();
  }

  userPayloadLengthInCharactersTargetContact = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetContact];

  if (userPayloadLengthInCharactersTargetContact)
  {
    userPayloadLengthInCharactersTargetContact2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetContact];
    PBDataWriterWriteSubmessage();
  }

  userPayloadLengthInCharactersTargetApp = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetApp];

  if (userPayloadLengthInCharactersTargetApp)
  {
    userPayloadLengthInCharactersTargetApp2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetApp];
    PBDataWriterWriteSubmessage();
  }

  userPayloadLengthInCharactersWhenCompleted = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenCompleted];

  if (userPayloadLengthInCharactersWhenCompleted)
  {
    userPayloadLengthInCharactersWhenCompleted2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenCompleted];
    PBDataWriterWriteSubmessage();
  }

  userPayloadLengthInCharactersWhenRejected = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenRejected];

  v33 = toCopy;
  if (userPayloadLengthInCharactersWhenRejected)
  {
    userPayloadLengthInCharactersWhenRejected2 = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenRejected];
    PBDataWriterWriteSubmessage();

    v33 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v52.receiver = self;
  v52.super_class = CAMSchemaCAMAutoSendFeaturesGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v52 applySensitiveConditionsPolicy:policyCopy];
  userAsrScore = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScore];
  v7 = [userAsrScore applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserAsrScore];
  }

  userAsrScoreWhenCompleted = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenCompleted];
  v10 = [userAsrScoreWhenCompleted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserAsrScoreWhenCompleted];
  }

  userAsrScoreWhenRejected = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreWhenRejected];
  v13 = [userAsrScoreWhenRejected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserAsrScoreWhenRejected];
  }

  userAsrScoreTargetContact = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetContact];
  v16 = [userAsrScoreTargetContact applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserAsrScoreTargetContact];
  }

  userAsrScoreTargetApp = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userAsrScoreTargetApp];
  v19 = [userAsrScoreTargetApp applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserAsrScoreTargetApp];
  }

  userRejectRate = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRate];
  v22 = [userRejectRate applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserRejectRate];
  }

  userRejectRateTargetContact = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetContact];
  v25 = [userRejectRateTargetContact applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserRejectRateTargetContact];
  }

  userRejectRateTargetApp = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateTargetApp];
  v28 = [userRejectRateTargetApp applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserRejectRateTargetApp];
  }

  userRejectRateWhenSkipDecision = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenSkipDecision];
  v31 = [userRejectRateWhenSkipDecision applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserRejectRateWhenSkipDecision];
  }

  userRejectRateWhenConfirmDecision = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userRejectRateWhenConfirmDecision];
  v34 = [userRejectRateWhenConfirmDecision applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserRejectRateWhenConfirmDecision];
  }

  userPayloadLengthInCharacters = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharacters];
  v37 = [userPayloadLengthInCharacters applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserPayloadLengthInCharacters];
  }

  userPayloadLengthInCharactersTargetContact = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetContact];
  v40 = [userPayloadLengthInCharactersTargetContact applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserPayloadLengthInCharactersTargetContact];
  }

  userPayloadLengthInCharactersTargetApp = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersTargetApp];
  v43 = [userPayloadLengthInCharactersTargetApp applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserPayloadLengthInCharactersTargetApp];
  }

  userPayloadLengthInCharactersWhenCompleted = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenCompleted];
  v46 = [userPayloadLengthInCharactersWhenCompleted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(CAMSchemaCAMAutoSendFeaturesGenerated *)self deleteUserPayloadLengthInCharactersWhenCompleted];
  }

  userPayloadLengthInCharactersWhenRejected = [(CAMSchemaCAMAutoSendFeaturesGenerated *)self userPayloadLengthInCharactersWhenRejected];
  v49 = [userPayloadLengthInCharactersWhenRejected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
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