@interface PLUSSchemaPLUSPhoneCallMetadataExtracted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSPhoneCallMetadataExtracted)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSPhoneCallMetadataExtracted)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasFollowupNameSimilarity:(BOOL)a3;
- (void)setHasHasSiriInitiatedCall:(BOOL)a3;
- (void)setHasHasUserMadeFollowupCallWithinDetectionWindow:(BOOL)a3;
- (void)setHasHasUserMadeFollowupCallWithinEvaluationWindow:(BOOL)a3;
- (void)setHasIsSameCallCapabilityForFollowup:(BOOL)a3;
- (void)setHasIsSameCallRouteForSiriAndFollowup:(BOOL)a3;
- (void)setHasSiriAndFollowupContactComparison:(BOOL)a3;
- (void)setHasSiriCallDuration:(BOOL)a3;
- (void)setHasSiriCallTimeToHangup:(BOOL)a3;
- (void)setHasUserTimeToFollowup:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSPhoneCallMetadataExtracted

- (PLUSSchemaPLUSPhoneCallMetadataExtracted)initWithDictionary:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PLUSSchemaPLUSPhoneCallMetadataExtracted;
  v5 = [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originalPlusId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)v5 setOriginalPlusId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"hasSiriResolvedContact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSPhoneCallMetadataExtracted setHasSiriResolvedContact:](v5, "setHasSiriResolvedContact:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"hasSiriInitiatedCall"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSPhoneCallMetadataExtracted setHasSiriInitiatedCall:](v5, "setHasSiriInitiatedCall:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"hasUserMadeFollowupCallWithinDetectionWindow"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSPhoneCallMetadataExtracted setHasUserMadeFollowupCallWithinDetectionWindow:](v5, "setHasUserMadeFollowupCallWithinDetectionWindow:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"hasUserMadeFollowupCallWithinEvaluationWindow"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSPhoneCallMetadataExtracted setHasUserMadeFollowupCallWithinEvaluationWindow:](v5, "setHasUserMadeFollowupCallWithinEvaluationWindow:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"siriAndFollowupContactComparison"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSPhoneCallMetadataExtracted setSiriAndFollowupContactComparison:](v5, "setSiriAndFollowupContactComparison:", [v12 intValue]);
    }

    v22 = v12;
    v13 = [v4 objectForKeyedSubscript:@"siriCallDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSPhoneCallMetadataExtracted setSiriCallDuration:](v5, "setSiriCallDuration:", [v13 intValue]);
    }

    v25 = v8;
    v14 = [v4 objectForKeyedSubscript:@"siriCallTimeToHangup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSPhoneCallMetadataExtracted setSiriCallTimeToHangup:](v5, "setSiriCallTimeToHangup:", [v14 intValue]);
    }

    v26 = v6;
    v15 = [v4 objectForKeyedSubscript:@"userTimeToFollowup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSPhoneCallMetadataExtracted setUserTimeToFollowup:](v5, "setUserTimeToFollowup:", [v15 intValue]);
    }

    v23 = v11;
    v24 = v9;
    v16 = [v4 objectForKeyedSubscript:@"isSameCallRouteForSiriAndFollowup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSPhoneCallMetadataExtracted setIsSameCallRouteForSiriAndFollowup:](v5, "setIsSameCallRouteForSiriAndFollowup:", [v16 BOOLValue]);
    }

    v17 = v10;
    v18 = [v4 objectForKeyedSubscript:@"isSameCallCapabilityForFollowup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSPhoneCallMetadataExtracted setIsSameCallCapabilityForFollowup:](v5, "setIsSameCallCapabilityForFollowup:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"followupNameSimilarity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSPhoneCallMetadataExtracted setFollowupNameSimilarity:](v5, "setFollowupNameSimilarity:", [v19 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSPhoneCallMetadataExtracted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v5 = [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self followupNameSimilarity]- 1;
    if (v5 > 3)
    {
      v6 = @"PLUSCONTACTNAMESTRINGSIMILARITY_UNKNOWN";
    }

    else
    {
      v6 = off_1E78E08C0[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"followupNameSimilarity"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSPhoneCallMetadataExtracted hasSiriInitiatedCall](self, "hasSiriInitiatedCall")}];
    [v3 setObject:v10 forKeyedSubscript:@"hasSiriInitiatedCall"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_8:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSPhoneCallMetadataExtracted hasSiriResolvedContact](self, "hasSiriResolvedContact")}];
  [v3 setObject:v11 forKeyedSubscript:@"hasSiriResolvedContact"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSPhoneCallMetadataExtracted hasUserMadeFollowupCallWithinDetectionWindow](self, "hasUserMadeFollowupCallWithinDetectionWindow")}];
  [v3 setObject:v12 forKeyedSubscript:@"hasUserMadeFollowupCallWithinDetectionWindow"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSPhoneCallMetadataExtracted hasUserMadeFollowupCallWithinEvaluationWindow](self, "hasUserMadeFollowupCallWithinEvaluationWindow")}];
  [v3 setObject:v13 forKeyedSubscript:@"hasUserMadeFollowupCallWithinEvaluationWindow"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_20:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSPhoneCallMetadataExtracted isSameCallCapabilityForFollowup](self, "isSameCallCapabilityForFollowup")}];
  [v3 setObject:v14 forKeyedSubscript:@"isSameCallCapabilityForFollowup"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_12:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSPhoneCallMetadataExtracted isSameCallRouteForSiriAndFollowup](self, "isSameCallRouteForSiriAndFollowup")}];
    [v3 setObject:v7 forKeyedSubscript:@"isSameCallRouteForSiriAndFollowup"];
  }

LABEL_13:
  if (self->_originalPlusId)
  {
    v8 = [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self originalPlusId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"originalPlusId"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"originalPlusId"];
    }
  }

  v16 = self->_has;
  if ((v16 & 0x10) != 0)
  {
    v17 = [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self siriAndFollowupContactComparison]- 1;
    if (v17 > 4)
    {
      v18 = @"PLUSCONTACTREFERENCECOMPARISON_UNKNOWN";
    }

    else
    {
      v18 = off_1E78E08E0[v17];
    }

    [v3 setObject:v18 forKeyedSubscript:@"siriAndFollowupContactComparison"];
    v16 = self->_has;
    if ((v16 & 0x20) == 0)
    {
LABEL_26:
      if ((v16 & 0x40) == 0)
      {
        goto LABEL_27;
      }

LABEL_37:
      v21 = [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self siriCallTimeToHangup]- 1;
      if (v21 > 3)
      {
        v22 = @"PLUSPHONECALLTIMETOHANGUPBUCKET_UNKNOWN";
      }

      else
      {
        v22 = off_1E78E0930[v21];
      }

      [v3 setObject:v22 forKeyedSubscript:@"siriCallTimeToHangup"];
      if ((*&self->_has & 0x80) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }
  }

  else if ((v16 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  v19 = [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self siriCallDuration]- 1;
  if (v19 > 4)
  {
    v20 = @"PLUSPHONECALLDURATIONBUCKET_UNKNOWN";
  }

  else
  {
    v20 = off_1E78E0908[v19];
  }

  [v3 setObject:v20 forKeyedSubscript:@"siriCallDuration"];
  v16 = self->_has;
  if ((v16 & 0x40) != 0)
  {
    goto LABEL_37;
  }

LABEL_27:
  if ((v16 & 0x80) != 0)
  {
LABEL_41:
    v23 = [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self userTimeToFollowup]- 1;
    if (v23 > 3)
    {
      v24 = @"PLUSTIMETOFOLLOWUPBUCKET_UNKNOWN";
    }

    else
    {
      v24 = off_1E78E0950[v23];
    }

    [v3 setObject:v24 forKeyedSubscript:@"userTimeToFollowup"];
  }

LABEL_45:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalPlusId hash];
  has = self->_has;
  if (has)
  {
    v5 = 2654435761 * self->_hasSiriResolvedContact;
    if ((has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_hasSiriInitiatedCall;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v5 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_hasUserMadeFollowupCallWithinDetectionWindow;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_hasUserMadeFollowupCallWithinEvaluationWindow;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v9 = 2654435761 * self->_siriAndFollowupContactComparison;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v10 = 2654435761 * self->_siriCallDuration;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v11 = 2654435761 * self->_siriCallTimeToHangup;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v12 = 2654435761 * self->_userTimeToFollowup;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v13 = 2654435761 * self->_isSameCallRouteForSiriAndFollowup;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v14 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v15 = 0;
    return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_21:
  v13 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = 2654435761 * self->_isSameCallCapabilityForFollowup;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v15 = 2654435761 * self->_followupNameSimilarity;
  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  v5 = [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self originalPlusId];
  v6 = [v4 originalPlusId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_52;
  }

  v8 = [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self originalPlusId];
  if (v8)
  {
    v9 = v8;
    v10 = [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self originalPlusId];
    v11 = [v4 originalPlusId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[22];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_52:
    v36 = 0;
    goto LABEL_53;
  }

  if (*&has)
  {
    hasSiriResolvedContact = self->_hasSiriResolvedContact;
    if (hasSiriResolvedContact != [v4 hasSiriResolvedContact])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v14 = v4[22];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_52;
  }

  if (v16)
  {
    hasSiriInitiatedCall = self->_hasSiriInitiatedCall;
    if (hasSiriInitiatedCall != [v4 hasSiriInitiatedCall])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v14 = v4[22];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_52;
  }

  if (v18)
  {
    hasUserMadeFollowupCallWithinDetectionWindow = self->_hasUserMadeFollowupCallWithinDetectionWindow;
    if (hasUserMadeFollowupCallWithinDetectionWindow != [v4 hasUserMadeFollowupCallWithinDetectionWindow])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v14 = v4[22];
  }

  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_52;
  }

  if (v20)
  {
    hasUserMadeFollowupCallWithinEvaluationWindow = self->_hasUserMadeFollowupCallWithinEvaluationWindow;
    if (hasUserMadeFollowupCallWithinEvaluationWindow != [v4 hasUserMadeFollowupCallWithinEvaluationWindow])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v14 = v4[22];
  }

  v22 = (*&has >> 4) & 1;
  if (v22 != ((v14 >> 4) & 1))
  {
    goto LABEL_52;
  }

  if (v22)
  {
    siriAndFollowupContactComparison = self->_siriAndFollowupContactComparison;
    if (siriAndFollowupContactComparison != [v4 siriAndFollowupContactComparison])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v14 = v4[22];
  }

  v24 = (*&has >> 5) & 1;
  if (v24 != ((v14 >> 5) & 1))
  {
    goto LABEL_52;
  }

  if (v24)
  {
    siriCallDuration = self->_siriCallDuration;
    if (siriCallDuration != [v4 siriCallDuration])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v14 = v4[22];
  }

  v26 = (*&has >> 6) & 1;
  if (v26 != ((v14 >> 6) & 1))
  {
    goto LABEL_52;
  }

  if (v26)
  {
    siriCallTimeToHangup = self->_siriCallTimeToHangup;
    if (siriCallTimeToHangup != [v4 siriCallTimeToHangup])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v14 = v4[22];
  }

  v28 = (*&has >> 7) & 1;
  if (v28 != ((v14 >> 7) & 1))
  {
    goto LABEL_52;
  }

  if (v28)
  {
    userTimeToFollowup = self->_userTimeToFollowup;
    if (userTimeToFollowup != [v4 userTimeToFollowup])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v14 = v4[22];
  }

  v30 = (*&has >> 8) & 1;
  if (v30 != ((v14 >> 8) & 1))
  {
    goto LABEL_52;
  }

  if (v30)
  {
    isSameCallRouteForSiriAndFollowup = self->_isSameCallRouteForSiriAndFollowup;
    if (isSameCallRouteForSiriAndFollowup != [v4 isSameCallRouteForSiriAndFollowup])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v14 = v4[22];
  }

  v32 = (*&has >> 9) & 1;
  if (v32 != ((v14 >> 9) & 1))
  {
    goto LABEL_52;
  }

  if (v32)
  {
    isSameCallCapabilityForFollowup = self->_isSameCallCapabilityForFollowup;
    if (isSameCallCapabilityForFollowup == [v4 isSameCallCapabilityForFollowup])
    {
      has = self->_has;
      v14 = v4[22];
      goto LABEL_48;
    }

    goto LABEL_52;
  }

LABEL_48:
  v34 = (*&has >> 10) & 1;
  if (v34 != ((v14 >> 10) & 1))
  {
    goto LABEL_52;
  }

  if (v34)
  {
    followupNameSimilarity = self->_followupNameSimilarity;
    if (followupNameSimilarity != [v4 followupNameSimilarity])
    {
      goto LABEL_52;
    }
  }

  v36 = 1;
LABEL_53:

  return v36;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self originalPlusId];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self originalPlusId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = v8;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteBOOLField();
  v7 = v8;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteBOOLField();
  v7 = v8;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteInt32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteInt32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteInt32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteInt32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteBOOLField();
  v7 = v8;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_27:
  PBDataWriterWriteBOOLField();
  v7 = v8;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_15:
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }

LABEL_16:
}

- (void)setHasFollowupNameSimilarity:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasIsSameCallCapabilityForFollowup:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsSameCallRouteForSiriAndFollowup:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasUserTimeToFollowup:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasSiriCallTimeToHangup:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasSiriCallDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasSiriAndFollowupContactComparison:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasHasUserMadeFollowupCallWithinEvaluationWindow:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasHasUserMadeFollowupCallWithinDetectionWindow:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasHasSiriInitiatedCall:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSPhoneCallMetadataExtracted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self originalPlusId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(PLUSSchemaPLUSPhoneCallMetadataExtracted *)self deleteOriginalPlusId];
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