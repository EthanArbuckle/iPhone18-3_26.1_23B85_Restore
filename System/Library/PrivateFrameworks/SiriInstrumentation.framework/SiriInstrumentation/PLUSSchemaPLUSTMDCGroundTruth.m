@interface PLUSSchemaPLUSTMDCGroundTruth
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSTMDCGroundTruth)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSTMDCGroundTruth)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsCorrectionEligible:(BOOL)a3;
- (void)setHasIsTTSMispronounced:(BOOL)a3;
- (void)setHasIsTmdcPluginEnabled:(BOOL)a3;
- (void)setHasSelfLogSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSTMDCGroundTruth

- (PLUSSchemaPLUSTMDCGroundTruth)initWithDictionary:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = PLUSSchemaPLUSTMDCGroundTruth;
  v5 = [(PLUSSchemaPLUSTMDCGroundTruth *)&v33 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"groundTruthId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setGroundTruthId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"asrRawRecognitionLinkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setAsrRawRecognitionLinkId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"asrPostItnLinkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setAsrPostItnLinkId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"ttsCurrentPhonemes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setTtsCurrentPhonemes:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"phonemesToPhonemesDistance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setPhonemesToPhonemesDistance:?];
    }

    v30 = v14;
    v31 = v12;
    v15 = [v4 objectForKeyedSubscript:@"isTTSMispronounced"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSTMDCGroundTruth setIsTTSMispronounced:](v5, "setIsTTSMispronounced:", [v15 BOOLValue]);
    }

    v16 = [v4 objectForKeyedSubscript:{@"ttsSuggestedPhonemes", v15}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setTtsSuggestedPhonemes:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"siriCurrentPronunciation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1 alloc] initWithDictionary:v18];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setSiriCurrentPronunciation:v19];
    }

    v32 = v10;
    v20 = [v4 objectForKeyedSubscript:@"correctedPronunciation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PLUSSchemaPLUSTMDCCorrectedPronunciationTier1 alloc] initWithDictionary:v20];
      [(PLUSSchemaPLUSTMDCGroundTruth *)v5 setCorrectedPronunciation:v21];
    }

    v22 = v8;
    v23 = [v4 objectForKeyedSubscript:@"selfLogSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSTMDCGroundTruth setSelfLogSource:](v5, "setSelfLogSource:", [v23 intValue]);
    }

    v24 = v6;
    v25 = [v4 objectForKeyedSubscript:@"isTmdcPluginEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSTMDCGroundTruth setIsTmdcPluginEnabled:](v5, "setIsTmdcPluginEnabled:", [v25 BOOLValue]);
    }

    v26 = [v4 objectForKeyedSubscript:@"isCorrectionEligible"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSTMDCGroundTruth setIsCorrectionEligible:](v5, "setIsCorrectionEligible:", [v26 BOOLValue]);
    }

    v27 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSTMDCGroundTruth)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSTMDCGroundTruth *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSTMDCGroundTruth *)self dictionaryRepresentation];
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
  if (self->_asrPostItnLinkId)
  {
    v4 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrPostItnLinkId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"asrPostItnLinkId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"asrPostItnLinkId"];
    }
  }

  if (self->_asrRawRecognitionLinkId)
  {
    v7 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrRawRecognitionLinkId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"asrRawRecognitionLinkId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"asrRawRecognitionLinkId"];
    }
  }

  if (self->_correctedPronunciation)
  {
    v10 = [(PLUSSchemaPLUSTMDCGroundTruth *)self correctedPronunciation];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"correctedPronunciation"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"correctedPronunciation"];
    }
  }

  if (self->_groundTruthId)
  {
    v13 = [(PLUSSchemaPLUSTMDCGroundTruth *)self groundTruthId];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"groundTruthId"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"groundTruthId"];
    }
  }

  v16 = *(&self->_isCorrectionEligible + 1);
  if ((v16 & 0x10) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSTMDCGroundTruth isCorrectionEligible](self, "isCorrectionEligible")}];
    [v3 setObject:v22 forKeyedSubscript:@"isCorrectionEligible"];

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
  [v3 setObject:v23 forKeyedSubscript:@"isTTSMispronounced"];

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
    [v3 setObject:v26 forKeyedSubscript:@"phonemesToPhonemesDistance"];

    if ((*(&self->_isCorrectionEligible + 1) & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

LABEL_37:
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSTMDCGroundTruth isTmdcPluginEnabled](self, "isTmdcPluginEnabled")}];
  [v3 setObject:v24 forKeyedSubscript:@"isTmdcPluginEnabled"];

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
  v17 = [(PLUSSchemaPLUSTMDCGroundTruth *)self selfLogSource];
  v18 = @"PLUSTMDCSELFLOGSOURCE_UNKNOWN";
  if (v17 == 1)
  {
    v18 = @"PLUSTMDCSELFLOGSOURCE_CLIENT";
  }

  if (v17 == 2)
  {
    v19 = @"PLUSTMDCSELFLOGSOURCE_INTERNAL";
  }

  else
  {
    v19 = v18;
  }

  [v3 setObject:v19 forKeyedSubscript:@"selfLogSource"];
LABEL_32:
  if (self->_siriCurrentPronunciation)
  {
    v20 = [(PLUSSchemaPLUSTMDCGroundTruth *)self siriCurrentPronunciation];
    v21 = [v20 dictionaryRepresentation];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"siriCurrentPronunciation"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"siriCurrentPronunciation"];
    }
  }

  if (self->_ttsCurrentPhonemes)
  {
    v28 = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsCurrentPhonemes];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"ttsCurrentPhonemes"];
  }

  if (self->_ttsSuggestedPhonemes)
  {
    v30 = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsSuggestedPhonemes];
    v31 = [v30 copy];
    [v3 setObject:v31 forKeyedSubscript:@"ttsSuggestedPhonemes"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  v5 = [(PLUSSchemaPLUSTMDCGroundTruth *)self groundTruthId];
  v6 = [v4 groundTruthId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_43;
  }

  v7 = [(PLUSSchemaPLUSTMDCGroundTruth *)self groundTruthId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PLUSSchemaPLUSTMDCGroundTruth *)self groundTruthId];
    v10 = [v4 groundTruthId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrRawRecognitionLinkId];
  v6 = [v4 asrRawRecognitionLinkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_43;
  }

  v12 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrRawRecognitionLinkId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrRawRecognitionLinkId];
    v15 = [v4 asrRawRecognitionLinkId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrPostItnLinkId];
  v6 = [v4 asrPostItnLinkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_43;
  }

  v17 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrPostItnLinkId];
  if (v17)
  {
    v18 = v17;
    v19 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrPostItnLinkId];
    v20 = [v4 asrPostItnLinkId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsCurrentPhonemes];
  v6 = [v4 ttsCurrentPhonemes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_43;
  }

  v22 = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsCurrentPhonemes];
  if (v22)
  {
    v23 = v22;
    v24 = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsCurrentPhonemes];
    v25 = [v4 ttsCurrentPhonemes];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v27 = *(&self->_isCorrectionEligible + 1);
  v28 = v4[86];
  if ((v27 & 1) != (v28 & 1))
  {
    goto LABEL_44;
  }

  if (v27)
  {
    phonemesToPhonemesDistance = self->_phonemesToPhonemesDistance;
    [v4 phonemesToPhonemesDistance];
    if (phonemesToPhonemesDistance != v30)
    {
      goto LABEL_44;
    }

    v27 = *(&self->_isCorrectionEligible + 1);
    v28 = v4[86];
  }

  v31 = (v27 >> 1) & 1;
  if (v31 != ((v28 >> 1) & 1))
  {
    goto LABEL_44;
  }

  if (v31)
  {
    isTTSMispronounced = self->_isTTSMispronounced;
    if (isTTSMispronounced != [v4 isTTSMispronounced])
    {
      goto LABEL_44;
    }
  }

  v5 = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsSuggestedPhonemes];
  v6 = [v4 ttsSuggestedPhonemes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_43;
  }

  v33 = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsSuggestedPhonemes];
  if (v33)
  {
    v34 = v33;
    v35 = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsSuggestedPhonemes];
    v36 = [v4 ttsSuggestedPhonemes];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSTMDCGroundTruth *)self siriCurrentPronunciation];
  v6 = [v4 siriCurrentPronunciation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_43;
  }

  v38 = [(PLUSSchemaPLUSTMDCGroundTruth *)self siriCurrentPronunciation];
  if (v38)
  {
    v39 = v38;
    v40 = [(PLUSSchemaPLUSTMDCGroundTruth *)self siriCurrentPronunciation];
    v41 = [v4 siriCurrentPronunciation];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSTMDCGroundTruth *)self correctedPronunciation];
  v6 = [v4 correctedPronunciation];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_43:

    goto LABEL_44;
  }

  v43 = [(PLUSSchemaPLUSTMDCGroundTruth *)self correctedPronunciation];
  if (v43)
  {
    v44 = v43;
    v45 = [(PLUSSchemaPLUSTMDCGroundTruth *)self correctedPronunciation];
    v46 = [v4 correctedPronunciation];
    v47 = [v45 isEqual:v46];

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
  v52 = v4[86];
  if (v51 == ((v52 >> 2) & 1))
  {
    if (v51)
    {
      selfLogSource = self->_selfLogSource;
      if (selfLogSource != [v4 selfLogSource])
      {
        goto LABEL_44;
      }

      v50 = *(&self->_isCorrectionEligible + 1);
      v52 = v4[86];
    }

    v54 = (v50 >> 3) & 1;
    if (v54 == ((v52 >> 3) & 1))
    {
      if (v54)
      {
        isTmdcPluginEnabled = self->_isTmdcPluginEnabled;
        if (isTmdcPluginEnabled != [v4 isTmdcPluginEnabled])
        {
          goto LABEL_44;
        }

        v50 = *(&self->_isCorrectionEligible + 1);
        v52 = v4[86];
      }

      v56 = (v50 >> 4) & 1;
      if (v56 == ((v52 >> 4) & 1))
      {
        if (!v56 || (isCorrectionEligible = self->_isCorrectionEligible, isCorrectionEligible == [v4 isCorrectionEligible]))
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

- (void)writeTo:(id)a3
{
  v19 = a3;
  v4 = [(PLUSSchemaPLUSTMDCGroundTruth *)self groundTruthId];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSTMDCGroundTruth *)self groundTruthId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrRawRecognitionLinkId];

  if (v6)
  {
    v7 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrRawRecognitionLinkId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrPostItnLinkId];

  if (v8)
  {
    v9 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrPostItnLinkId];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsCurrentPhonemes];

  if (v10)
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

  v12 = [(PLUSSchemaPLUSTMDCGroundTruth *)self ttsSuggestedPhonemes];

  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = [(PLUSSchemaPLUSTMDCGroundTruth *)self siriCurrentPronunciation];

  if (v13)
  {
    v14 = [(PLUSSchemaPLUSTMDCGroundTruth *)self siriCurrentPronunciation];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(PLUSSchemaPLUSTMDCGroundTruth *)self correctedPronunciation];

  if (v15)
  {
    v16 = [(PLUSSchemaPLUSTMDCGroundTruth *)self correctedPronunciation];
    PBDataWriterWriteSubmessage();
  }

  v17 = *(&self->_isCorrectionEligible + 1);
  if ((v17 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v17 = *(&self->_isCorrectionEligible + 1);
  }

  v18 = v19;
  if ((v17 & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
    v18 = v19;
    v17 = *(&self->_isCorrectionEligible + 1);
  }

  if ((v17 & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
    v18 = v19;
  }
}

- (void)setHasIsCorrectionEligible:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCorrectionEligible + 1) = *(&self->_isCorrectionEligible + 1) & 0xEF | v3;
}

- (void)setHasIsTmdcPluginEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCorrectionEligible + 1) = *(&self->_isCorrectionEligible + 1) & 0xF7 | v3;
}

- (void)setHasSelfLogSource:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCorrectionEligible + 1) = *(&self->_isCorrectionEligible + 1) & 0xFB | v3;
}

- (void)setHasIsTTSMispronounced:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCorrectionEligible + 1) = *(&self->_isCorrectionEligible + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PLUSSchemaPLUSTMDCGroundTruth;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsCurrentPhonemes];
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsSuggestedPhonemes];
  }

  if ([v4 isConditionSet:4])
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsCurrentPhonemes];
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsSuggestedPhonemes];
  }

  if ([v4 isConditionSet:5])
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsCurrentPhonemes];
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsSuggestedPhonemes];
  }

  if ([v4 isConditionSet:6])
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsCurrentPhonemes];
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsSuggestedPhonemes];
  }

  if ([v4 isConditionSet:7])
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsCurrentPhonemes];
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteTtsSuggestedPhonemes];
  }

  v6 = [(PLUSSchemaPLUSTMDCGroundTruth *)self groundTruthId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteGroundTruthId];
  }

  v9 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrRawRecognitionLinkId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteAsrRawRecognitionLinkId];
  }

  v12 = [(PLUSSchemaPLUSTMDCGroundTruth *)self asrPostItnLinkId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteAsrPostItnLinkId];
  }

  v15 = [(PLUSSchemaPLUSTMDCGroundTruth *)self siriCurrentPronunciation];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PLUSSchemaPLUSTMDCGroundTruth *)self deleteSiriCurrentPronunciation];
  }

  v18 = [(PLUSSchemaPLUSTMDCGroundTruth *)self correctedPronunciation];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
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