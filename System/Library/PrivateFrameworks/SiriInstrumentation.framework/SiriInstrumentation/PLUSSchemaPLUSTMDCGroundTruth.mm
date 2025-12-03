@interface PLUSSchemaPLUSTMDCGroundTruth
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSTMDCGroundTruth)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSTMDCGroundTruth)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsCorrectionEligible:(BOOL)eligible;
- (void)setHasIsTTSMispronounced:(BOOL)mispronounced;
- (void)setHasIsTmdcPluginEnabled:(BOOL)enabled;
- (void)setHasSelfLogSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSTMDCGroundTruth

- (PLUSSchemaPLUSTMDCGroundTruth)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = PLUSSchemaPLUSTMDCGroundTruth;
  v5 = [(PLUSSchemaPLUSTMDCGroundTruth *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"groundTruthId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setGroundTruthId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"asrRawRecognitionLinkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setAsrRawRecognitionLinkId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"asrPostItnLinkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setAsrPostItnLinkId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"ttsCurrentPhonemes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setTtsCurrentPhonemes:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"phonemesToPhonemesDistance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setPhonemesToPhonemesDistance:?];
    }

    v30 = v14;
    v31 = v12;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"isTTSMispronounced"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSTMDCGroundTruth setIsTTSMispronounced:](v5, "setIsTTSMispronounced:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"ttsSuggestedPhonemes", v15}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setTtsSuggestedPhonemes:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"siriCurrentPronunciation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 alloc] initWithDictionary:v18];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setSiriCurrentPronunciation:v19];
    }

    v32 = v10;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"correctedPronunciation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 alloc] initWithDictionary:v20];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setCorrectedPronunciation:v21];
    }

    v22 = v8;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"selfLogSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSTMDCGroundTruth setSelfLogSource:](v5, "setSelfLogSource:", [v23 intValue]);
    }

    v24 = v6;
    v25 = [dictionaryCopy objectForKeyedSubscript:@"isTmdcPluginEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSTMDCGroundTruth setIsTmdcPluginEnabled:](v5, "setIsTmdcPluginEnabled:", [v25 BOOLValue]);
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"isCorrectionEligible"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSTMDCGroundTruth setIsCorrectionEligible:](v5, "setIsCorrectionEligible:", [v26 BOOLValue]);
    }

    v27 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSTMDCGroundTruth)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSTMDCGroundTruth *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSTMDCGroundTruth *)self dictionaryRepresentation];
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
  if (self->_asrPostItnLinkId)
  {
    asrPostItnLinkId = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrPostItnLinkId];
    dictionaryRepresentation = [asrPostItnLinkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"asrPostItnLinkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"asrPostItnLinkId"];
    }
  }

  if (self->_asrRawRecognitionLinkId)
  {
    asrRawRecognitionLinkId = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrRawRecognitionLinkId];
    dictionaryRepresentation2 = [asrRawRecognitionLinkId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"asrRawRecognitionLinkId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"asrRawRecognitionLinkId"];
    }
  }

  if (self->_correctedPronunciation)
  {
    correctedPronunciation = [(PLUSSchemaPLUSTMDCGroundTruth *)self correctedPronunciation];
    dictionaryRepresentation3 = [correctedPronunciation dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"correctedPronunciation"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"correctedPronunciation"];
    }
  }

  if (self->_groundTruthId)
  {
    groundTruthId = [(PLUSSchemaPLUSTMDCGroundTruth *)self groundTruthId];
    dictionaryRepresentation4 = [groundTruthId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"groundTruthId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"groundTruthId"];
    }
  }

  v16 = *(&self->_isCorrectionEligible + 1);
  if ((v16 & 0x10) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSTMDCGroundTruth isCorrectionEligible](self, "isCorrectionEligible")}];
    [dictionary setObject:v22 forKeyedSubscript:@"isCorrectionEligible"];

    v16 = *(&self->_isCorrectionEligible + 1);
    if ((v16 & 2) == 0)
    {
LABEL_23:
      if ((v16 & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_37;
    }
  }

  else if ((*(&self->_isCorrectionEligible + 1) & 2) == 0)
  {
    goto LABEL_23;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSTMDCGroundTruth isTTSMispronounced](self, "isTTSMispronounced")}];
  [dictionary setObject:v23 forKeyedSubscript:@"isTTSMispronounced"];

  v16 = *(&self->_isCorrectionEligible + 1);
  if ((v16 & 8) == 0)
  {
LABEL_24:
    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_38:
    v25 = MEMORY[0x1E696AD98];
    [(PLUSSchemaPLUSTMDCGroundTruth *)self phonemesToPhonemesDistance];
    v26 = [v25 numberWithDouble:?];
    [dictionary setObject:v26 forKeyedSubscript:@"phonemesToPhonemesDistance"];

    if ((*(&self->_isCorrectionEligible + 1) & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

LABEL_37:
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSTMDCGroundTruth isTmdcPluginEnabled](self, "isTmdcPluginEnabled")}];
  [dictionary setObject:v24 forKeyedSubscript:@"isTmdcPluginEnabled"];

  v16 = *(&self->_isCorrectionEligible + 1);
  if (v16)
  {
    goto LABEL_38;
  }

LABEL_25:
  if ((v16 & 4) == 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  selfLogSource = [(PLUSSchemaPLUSTMDCGroundTruth *)self selfLogSource];
  v18 = @"PLUSTMDCSELFLOGSOURCE_UNKNOWN";
  if (selfLogSource == 1)
  {
    v18 = @"PLUSTMDCSELFLOGSOURCE_CLIENT";
  }

  if (selfLogSource == 2)
  {
    v19 = @"PLUSTMDCSELFLOGSOURCE_INTERNAL";
  }

  else
  {
    v19 = v18;
  }

  [dictionary setObject:v19 forKeyedSubscript:@"selfLogSource"];
LABEL_32:
  if (self->_siriCurrentPronunciation)
  {
    siriCurrentPronunciation = [(PLUSSchemaPLUSTMDCGroundTruth *)self siriCurrentPronunciation];
    dictionaryRepresentation5 = [siriCurrentPronunciation dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"siriCurrentPronunciation"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"siriCurrentPronunciation"];
    }
  }

  if (self->_ttsCurrentPhonemes)
  {
    ttsCurrentPhonemes = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsCurrentPhonemes];
    v29 = [ttsCurrentPhonemes copy];
    [dictionary setObject:v29 forKeyedSubscript:@"ttsCurrentPhonemes"];
  }

  if (self->_ttsSuggestedPhonemes)
  {
    ttsSuggestedPhonemes = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsSuggestedPhonemes];
    v31 = [ttsSuggestedPhonemes copy];
    [dictionary setObject:v31 forKeyedSubscript:@"ttsSuggestedPhonemes"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v20 = [(SISchemaUUID *)self->_groundTruthId hash];
  v3 = [(SISchemaUUID *)self->_asrRawRecognitionLinkId hash];
  v4 = [(SISchemaUUID *)self->_asrPostItnLinkId hash];
  v5 = [(NSString *)self->_ttsCurrentPhonemes hash];
  if (*(&self->_isCorrectionEligible + 1))
  {
    phonemesToPhonemesDistance = self->_phonemesToPhonemesDistance;
    if (phonemesToPhonemesDistance < 0.0)
    {
      phonemesToPhonemesDistance = -phonemesToPhonemesDistance;
    }

    *v6.i64 = floor(phonemesToPhonemesDistance + 0.5);
    v10 = (phonemesToPhonemesDistance - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*(&self->_isCorrectionEligible + 1) & 2) != 0)
  {
    v12 = 2654435761 * self->_isTTSMispronounced;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSString *)self->_ttsSuggestedPhonemes hash];
  v14 = [(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 *)self->_siriCurrentPronunciation hash];
  v15 = [(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 *)self->_correctedPronunciation hash];
  if ((*(&self->_isCorrectionEligible + 1) & 4) == 0)
  {
    v16 = 0;
    if ((*(&self->_isCorrectionEligible + 1) & 8) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v17 = 0;
    if ((*(&self->_isCorrectionEligible + 1) & 0x10) != 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v18 = 0;
    return v3 ^ v20 ^ v4 ^ v5 ^ v8 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
  }

  v16 = 2654435761 * self->_selfLogSource;
  if ((*(&self->_isCorrectionEligible + 1) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v17 = 2654435761 * self->_isTmdcPluginEnabled;
  if ((*(&self->_isCorrectionEligible + 1) & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v18 = 2654435761 * self->_isCorrectionEligible;
  return v3 ^ v20 ^ v4 ^ v5 ^ v8 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  groundTruthId = [(PLUSSchemaPLUSTMDCGroundTruth *)self groundTruthId];
  groundTruthId2 = [equalCopy groundTruthId];
  if ((groundTruthId != 0) == (groundTruthId2 == 0))
  {
    goto LABEL_43;
  }

  groundTruthId3 = [(PLUSSchemaPLUSTMDCGroundTruth *)self groundTruthId];
  if (groundTruthId3)
  {
    v8 = groundTruthId3;
    groundTruthId4 = [(PLUSSchemaPLUSTMDCGroundTruth *)self groundTruthId];
    groundTruthId5 = [equalCopy groundTruthId];
    v11 = [groundTruthId4 isEqual:groundTruthId5];

    if (!v11)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  groundTruthId = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrRawRecognitionLinkId];
  groundTruthId2 = [equalCopy asrRawRecognitionLinkId];
  if ((groundTruthId != 0) == (groundTruthId2 == 0))
  {
    goto LABEL_43;
  }

  asrRawRecognitionLinkId = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrRawRecognitionLinkId];
  if (asrRawRecognitionLinkId)
  {
    v13 = asrRawRecognitionLinkId;
    asrRawRecognitionLinkId2 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrRawRecognitionLinkId];
    asrRawRecognitionLinkId3 = [equalCopy asrRawRecognitionLinkId];
    v16 = [asrRawRecognitionLinkId2 isEqual:asrRawRecognitionLinkId3];

    if (!v16)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  groundTruthId = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrPostItnLinkId];
  groundTruthId2 = [equalCopy asrPostItnLinkId];
  if ((groundTruthId != 0) == (groundTruthId2 == 0))
  {
    goto LABEL_43;
  }

  asrPostItnLinkId = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrPostItnLinkId];
  if (asrPostItnLinkId)
  {
    v18 = asrPostItnLinkId;
    asrPostItnLinkId2 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrPostItnLinkId];
    asrPostItnLinkId3 = [equalCopy asrPostItnLinkId];
    v21 = [asrPostItnLinkId2 isEqual:asrPostItnLinkId3];

    if (!v21)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  groundTruthId = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsCurrentPhonemes];
  groundTruthId2 = [equalCopy ttsCurrentPhonemes];
  if ((groundTruthId != 0) == (groundTruthId2 == 0))
  {
    goto LABEL_43;
  }

  ttsCurrentPhonemes = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsCurrentPhonemes];
  if (ttsCurrentPhonemes)
  {
    v23 = ttsCurrentPhonemes;
    ttsCurrentPhonemes2 = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsCurrentPhonemes];
    ttsCurrentPhonemes3 = [equalCopy ttsCurrentPhonemes];
    v26 = [ttsCurrentPhonemes2 isEqual:ttsCurrentPhonemes3];

    if (!v26)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v27 = *(&self->_isCorrectionEligible + 1);
  v28 = equalCopy[86];
  if ((v27 & 1) != (v28 & 1))
  {
    goto LABEL_44;
  }

  if (v27)
  {
    phonemesToPhonemesDistance = self->_phonemesToPhonemesDistance;
    [equalCopy phonemesToPhonemesDistance];
    if (phonemesToPhonemesDistance != v30)
    {
      goto LABEL_44;
    }

    v27 = *(&self->_isCorrectionEligible + 1);
    v28 = equalCopy[86];
  }

  v31 = (v27 >> 1) & 1;
  if (v31 != ((v28 >> 1) & 1))
  {
    goto LABEL_44;
  }

  if (v31)
  {
    isTTSMispronounced = self->_isTTSMispronounced;
    if (isTTSMispronounced != [equalCopy isTTSMispronounced])
    {
      goto LABEL_44;
    }
  }

  groundTruthId = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsSuggestedPhonemes];
  groundTruthId2 = [equalCopy ttsSuggestedPhonemes];
  if ((groundTruthId != 0) == (groundTruthId2 == 0))
  {
    goto LABEL_43;
  }

  ttsSuggestedPhonemes = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsSuggestedPhonemes];
  if (ttsSuggestedPhonemes)
  {
    v34 = ttsSuggestedPhonemes;
    ttsSuggestedPhonemes2 = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsSuggestedPhonemes];
    ttsSuggestedPhonemes3 = [equalCopy ttsSuggestedPhonemes];
    v37 = [ttsSuggestedPhonemes2 isEqual:ttsSuggestedPhonemes3];

    if (!v37)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  groundTruthId = [(PLUSSchemaPLUSTMDCGroundTruth *)self siriCurrentPronunciation];
  groundTruthId2 = [equalCopy siriCurrentPronunciation];
  if ((groundTruthId != 0) == (groundTruthId2 == 0))
  {
    goto LABEL_43;
  }

  siriCurrentPronunciation = [(PLUSSchemaPLUSTMDCGroundTruth *)self siriCurrentPronunciation];
  if (siriCurrentPronunciation)
  {
    v39 = siriCurrentPronunciation;
    siriCurrentPronunciation2 = [(PLUSSchemaPLUSTMDCGroundTruth *)self siriCurrentPronunciation];
    siriCurrentPronunciation3 = [equalCopy siriCurrentPronunciation];
    v42 = [siriCurrentPronunciation2 isEqual:siriCurrentPronunciation3];

    if (!v42)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  groundTruthId = [(PLUSSchemaPLUSTMDCGroundTruth *)self correctedPronunciation];
  groundTruthId2 = [equalCopy correctedPronunciation];
  if ((groundTruthId != 0) == (groundTruthId2 == 0))
  {
LABEL_43:

    goto LABEL_44;
  }

  correctedPronunciation = [(PLUSSchemaPLUSTMDCGroundTruth *)self correctedPronunciation];
  if (correctedPronunciation)
  {
    v44 = correctedPronunciation;
    correctedPronunciation2 = [(PLUSSchemaPLUSTMDCGroundTruth *)self correctedPronunciation];
    correctedPronunciation3 = [equalCopy correctedPronunciation];
    v47 = [correctedPronunciation2 isEqual:correctedPronunciation3];

    if (!v47)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v50 = *(&self->_isCorrectionEligible + 1);
  v51 = (v50 >> 2) & 1;
  v52 = equalCopy[86];
  if (v51 == ((v52 >> 2) & 1))
  {
    if (v51)
    {
      selfLogSource = self->_selfLogSource;
      if (selfLogSource != [equalCopy selfLogSource])
      {
        goto LABEL_44;
      }

      v50 = *(&self->_isCorrectionEligible + 1);
      v52 = equalCopy[86];
    }

    v54 = (v50 >> 3) & 1;
    if (v54 == ((v52 >> 3) & 1))
    {
      if (v54)
      {
        isTmdcPluginEnabled = self->_isTmdcPluginEnabled;
        if (isTmdcPluginEnabled != [equalCopy isTmdcPluginEnabled])
        {
          goto LABEL_44;
        }

        v50 = *(&self->_isCorrectionEligible + 1);
        v52 = equalCopy[86];
      }

      v56 = (v50 >> 4) & 1;
      if (v56 == ((v52 >> 4) & 1))
      {
        if (!v56 || (isCorrectionEligible = self->_isCorrectionEligible, isCorrectionEligible == [equalCopy isCorrectionEligible]))
        {
          v48 = 1;
          goto LABEL_45;
        }
      }
    }
  }

LABEL_44:
  v48 = 0;
LABEL_45:

  return v48;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  groundTruthId = [(PLUSSchemaPLUSTMDCGroundTruth *)self groundTruthId];

  if (groundTruthId)
  {
    groundTruthId2 = [(PLUSSchemaPLUSTMDCGroundTruth *)self groundTruthId];
    PBDataWriterWriteSubmessage();
  }

  asrRawRecognitionLinkId = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrRawRecognitionLinkId];

  if (asrRawRecognitionLinkId)
  {
    asrRawRecognitionLinkId2 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrRawRecognitionLinkId];
    PBDataWriterWriteSubmessage();
  }

  asrPostItnLinkId = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrPostItnLinkId];

  if (asrPostItnLinkId)
  {
    asrPostItnLinkId2 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrPostItnLinkId];
    PBDataWriterWriteSubmessage();
  }

  ttsCurrentPhonemes = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsCurrentPhonemes];

  if (ttsCurrentPhonemes)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *(&self->_isCorrectionEligible + 1);
  if (v11)
  {
    PBDataWriterWriteDoubleField();
    v11 = *(&self->_isCorrectionEligible + 1);
  }

  if ((v11 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  ttsSuggestedPhonemes = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsSuggestedPhonemes];

  if (ttsSuggestedPhonemes)
  {
    PBDataWriterWriteStringField();
  }

  siriCurrentPronunciation = [(PLUSSchemaPLUSTMDCGroundTruth *)self siriCurrentPronunciation];

  if (siriCurrentPronunciation)
  {
    siriCurrentPronunciation2 = [(PLUSSchemaPLUSTMDCGroundTruth *)self siriCurrentPronunciation];
    PBDataWriterWriteSubmessage();
  }

  correctedPronunciation = [(PLUSSchemaPLUSTMDCGroundTruth *)self correctedPronunciation];

  if (correctedPronunciation)
  {
    correctedPronunciation2 = [(PLUSSchemaPLUSTMDCGroundTruth *)self correctedPronunciation];
    PBDataWriterWriteSubmessage();
  }

  v17 = *(&self->_isCorrectionEligible + 1);
  if ((v17 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v17 = *(&self->_isCorrectionEligible + 1);
  }

  v18 = toCopy;
  if ((v17 & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
    v18 = toCopy;
    v17 = *(&self->_isCorrectionEligible + 1);
  }

  if ((v17 & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
    v18 = toCopy;
  }
}

- (void)setHasIsCorrectionEligible:(BOOL)eligible
{
  if (eligible)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCorrectionEligible + 1) = *(&self->_isCorrectionEligible + 1) & 0xEF | v3;
}

- (void)setHasIsTmdcPluginEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCorrectionEligible + 1) = *(&self->_isCorrectionEligible + 1) & 0xF7 | v3;
}

- (void)setHasSelfLogSource:(BOOL)source
{
  if (source)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCorrectionEligible + 1) = *(&self->_isCorrectionEligible + 1) & 0xFB | v3;
}

- (void)setHasIsTTSMispronounced:(BOOL)mispronounced
{
  if (mispronounced)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCorrectionEligible + 1) = *(&self->_isCorrectionEligible + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = PLUSSchemaPLUSTMDCGroundTruth;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsCurrentPhonemes];
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsSuggestedPhonemes];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsCurrentPhonemes];
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsSuggestedPhonemes];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsCurrentPhonemes];
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsSuggestedPhonemes];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsCurrentPhonemes];
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsSuggestedPhonemes];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsCurrentPhonemes];
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsSuggestedPhonemes];
  }

  groundTruthId = [(PLUSSchemaPLUSTMDCGroundTruth *)self groundTruthId];
  v7 = [groundTruthId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteGroundTruthId];
  }

  asrRawRecognitionLinkId = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrRawRecognitionLinkId];
  v10 = [asrRawRecognitionLinkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteAsrRawRecognitionLinkId];
  }

  asrPostItnLinkId = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrPostItnLinkId];
  v13 = [asrPostItnLinkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteAsrPostItnLinkId];
  }

  siriCurrentPronunciation = [(PLUSSchemaPLUSTMDCGroundTruth *)self siriCurrentPronunciation];
  v16 = [siriCurrentPronunciation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteSiriCurrentPronunciation];
  }

  correctedPronunciation = [(PLUSSchemaPLUSTMDCGroundTruth *)self correctedPronunciation];
  v19 = [correctedPronunciation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteCorrectedPronunciation];
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