@interface MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried)initWithDictionary:(id)dictionary;
- (MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasBackgroundNoiseActivityLevel:(BOOL)level;
- (void)setHasBackgroundNoiseLevel:(BOOL)level;
- (void)setHasInvocationType:(BOOL)type;
- (void)setHasIsMediaPlaybackOn:(BOOL)on;
- (void)setHasIsPermanentOffsetEnabled:(BOOL)enabled;
- (void)setHasMusicLoudnessLevel:(BOOL)level;
- (void)setHasPermanentOffsetFactor:(BOOL)factor;
- (void)setHasSpeakerDistance:(BOOL)distance;
- (void)setHasSpeakerSpeechLevel:(BOOL)level;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried

- (MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried;
  v5 = [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ttsVolume"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)v5 setTtsVolume:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"speakerDistance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried setSpeakerDistance:](v5, "setSpeakerDistance:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"speakerSpeechLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)v5 setSpeakerSpeechLevel:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"musicLoudnessLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)v5 setMusicLoudnessLevel:?];
    }

    v19 = v9;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"backgroundNoiseLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)v5 setBackgroundNoiseLevel:?];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"backgroundNoiseActivityLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried setBackgroundNoiseActivityLevel:](v5, "setBackgroundNoiseActivityLevel:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isMediaPlaybackOn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried setIsMediaPlaybackOn:](v5, "setIsMediaPlaybackOn:", [v12 BOOLValue]);
    }

    v20 = v8;
    v21 = v6;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"invocationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried setInvocationType:](v5, "setInvocationType:", [v13 intValue]);
    }

    v14 = v7;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"isPermanentOffsetEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried setIsPermanentOffsetEnabled:](v5, "setIsPermanentOffsetEnabled:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"permanentOffsetFactor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 floatValue];
      [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)v5 setPermanentOffsetFactor:?];
    }

    v17 = v5;
  }

  return v5;
}

- (MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    backgroundNoiseActivityLevel = [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)self backgroundNoiseActivityLevel];
    v6 = @"MHASVBACKGROUNDNOISEACTIVITYLEVEL_UNKNOWN";
    if (backgroundNoiseActivityLevel == 1)
    {
      v6 = @"MHASVBACKGROUNDNOISEACTIVITYLEVEL_LOW";
    }

    if (backgroundNoiseActivityLevel == 2)
    {
      v7 = @"MHASVBACKGROUNDNOISEACTIVITYLEVEL_HIGH";
    }

    else
    {
      v7 = v6;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"backgroundNoiseActivityLevel"];
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v11 = MEMORY[0x1E696AD98];
    [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)self backgroundNoiseLevel];
    v12 = [v11 numberWithFloat:?];
    [dictionary setObject:v12 forKeyedSubscript:@"backgroundNoiseLevel"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_10:
      if ((has & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_10;
  }

  invocationType = [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)self invocationType];
  v14 = @"MHASVINVOCATIONTYPE_UNKNOWN";
  if (invocationType == 1)
  {
    v14 = @"MHASVINVOCATIONTYPE_BUTTON_PRESS";
  }

  if (invocationType == 2)
  {
    v15 = @"MHASVINVOCATIONTYPE_VOICE_TRIGGER";
  }

  else
  {
    v15 = v14;
  }

  [dictionary setObject:v15 forKeyedSubscript:@"invocationType"];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried isMediaPlaybackOn](self, "isMediaPlaybackOn")}];
  [dictionary setObject:v16 forKeyedSubscript:@"isMediaPlaybackOn"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried isPermanentOffsetEnabled](self, "isPermanentOffsetEnabled")}];
  [dictionary setObject:v17 forKeyedSubscript:@"isPermanentOffsetEnabled"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v18 = MEMORY[0x1E696AD98];
  [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)self musicLoudnessLevel];
  v19 = [v18 numberWithFloat:?];
  [dictionary setObject:v19 forKeyedSubscript:@"musicLoudnessLevel"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v20 = MEMORY[0x1E696AD98];
  [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)self permanentOffsetFactor];
  v21 = [v20 numberWithFloat:?];
  [dictionary setObject:v21 forKeyedSubscript:@"permanentOffsetFactor"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_32:
  v22 = [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)self speakerDistance]- 1;
  if (v22 > 3)
  {
    v23 = @"MHASVSPEAKERDISTANCETYPE_UNKNOWN";
  }

  else
  {
    v23 = off_1E78D8DB8[v22];
  }

  [dictionary setObject:v23 forKeyedSubscript:@"speakerDistance"];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_16:
    if ((has & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_36:
  v24 = MEMORY[0x1E696AD98];
  [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)self speakerSpeechLevel];
  v25 = [v24 numberWithFloat:?];
  [dictionary setObject:v25 forKeyedSubscript:@"speakerSpeechLevel"];

  if (*&self->_has)
  {
LABEL_17:
    v8 = MEMORY[0x1E696AD98];
    [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)self ttsVolume];
    v9 = [v8 numberWithFloat:?];
    [dictionary setObject:v9 forKeyedSubscript:@"ttsVolume"];
  }

LABEL_18:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    ttsVolume = self->_ttsVolume;
    if (ttsVolume >= 0.0)
    {
      v7 = ttsVolume;
    }

    else
    {
      v7 = -ttsVolume;
    }

    *v2.i64 = floor(v7 + 0.5);
    v8 = (v7 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v9), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v5 += v8;
      }
    }

    else
    {
      v5 -= fabs(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((has & 2) == 0)
  {
    v10 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  v10 = 2654435761 * self->_speakerDistance;
  if ((has & 4) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  speakerSpeechLevel = self->_speakerSpeechLevel;
  if (speakerSpeechLevel >= 0.0)
  {
    v12 = speakerSpeechLevel;
  }

  else
  {
    v12 = -speakerSpeechLevel;
  }

  *v2.i64 = floor(v12 + 0.5);
  v13 = (v12 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v14), v3, v2);
  v15 = 2654435761u * *v2.i64;
  if (v13 >= 0.0)
  {
    if (v13 > 0.0)
    {
      v15 += v13;
    }
  }

  else
  {
    v15 -= fabs(v13);
  }

LABEL_19:
  if ((has & 8) != 0)
  {
    musicLoudnessLevel = self->_musicLoudnessLevel;
    if (musicLoudnessLevel >= 0.0)
    {
      v18 = musicLoudnessLevel;
    }

    else
    {
      v18 = -musicLoudnessLevel;
    }

    *v2.i64 = floor(v18 + 0.5);
    v19 = (v18 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v20), v3, v2);
    v16 = 2654435761u * *v2.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v16 += v19;
      }
    }

    else
    {
      v16 -= fabs(v19);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((has & 0x10) != 0)
  {
    backgroundNoiseLevel = self->_backgroundNoiseLevel;
    if (backgroundNoiseLevel >= 0.0)
    {
      v23 = backgroundNoiseLevel;
    }

    else
    {
      v23 = -backgroundNoiseLevel;
    }

    *v2.i64 = floor(v23 + 0.5);
    v24 = (v23 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v25), v3, v2);
    v21 = 2654435761u * *v2.i64;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v21 += v24;
      }
    }

    else
    {
      v21 -= fabs(v24);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((has & 0x20) != 0)
  {
    v26 = 2654435761 * self->_backgroundNoiseActivityLevel;
    if ((has & 0x40) != 0)
    {
LABEL_41:
      v27 = 2654435761 * self->_isMediaPlaybackOn;
      if ((has & 0x80) != 0)
      {
        goto LABEL_42;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v26 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_41;
    }
  }

  v27 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_42:
    v28 = 2654435761 * self->_invocationType;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_43;
    }

LABEL_52:
    v29 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_44;
    }

LABEL_53:
    v34 = 0;
    return v10 ^ v5 ^ v15 ^ v16 ^ v21 ^ v26 ^ v27 ^ v28 ^ v29 ^ v34;
  }

LABEL_51:
  v28 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_52;
  }

LABEL_43:
  v29 = 2654435761 * self->_isPermanentOffsetEnabled;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_53;
  }

LABEL_44:
  permanentOffsetFactor = self->_permanentOffsetFactor;
  if (permanentOffsetFactor >= 0.0)
  {
    v31 = permanentOffsetFactor;
  }

  else
  {
    v31 = -permanentOffsetFactor;
  }

  *v2.i64 = floor(v31 + 0.5);
  v32 = (v31 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v33.f64[0] = NAN;
  v33.f64[1] = NAN;
  v34 = 2654435761u * *vbslq_s8(vnegq_f64(v33), v3, v2).i64;
  if (v32 >= 0.0)
  {
    if (v32 > 0.0)
    {
      v34 += v32;
    }
  }

  else
  {
    v34 -= fabs(v32);
  }

  return v10 ^ v5 ^ v15 ^ v16 ^ v21 ^ v26 ^ v27 ^ v28 ^ v29 ^ v34;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_41;
  }

  if (*&has)
  {
    ttsVolume = self->_ttsVolume;
    [equalCopy ttsVolume];
    if (ttsVolume != v8)
    {
      goto LABEL_41;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v6 >> 1) & 1))
  {
    if (v9)
    {
      speakerDistance = self->_speakerDistance;
      if (speakerDistance != [equalCopy speakerDistance])
      {
        goto LABEL_41;
      }

      has = self->_has;
      v6 = equalCopy[24];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 == ((v6 >> 2) & 1))
    {
      if (v11)
      {
        speakerSpeechLevel = self->_speakerSpeechLevel;
        [equalCopy speakerSpeechLevel];
        if (speakerSpeechLevel != v13)
        {
          goto LABEL_41;
        }

        has = self->_has;
        v6 = equalCopy[24];
      }

      v14 = (*&has >> 3) & 1;
      if (v14 == ((v6 >> 3) & 1))
      {
        if (v14)
        {
          musicLoudnessLevel = self->_musicLoudnessLevel;
          [equalCopy musicLoudnessLevel];
          if (musicLoudnessLevel != v16)
          {
            goto LABEL_41;
          }

          has = self->_has;
          v6 = equalCopy[24];
        }

        v17 = (*&has >> 4) & 1;
        if (v17 == ((v6 >> 4) & 1))
        {
          if (v17)
          {
            backgroundNoiseLevel = self->_backgroundNoiseLevel;
            [equalCopy backgroundNoiseLevel];
            if (backgroundNoiseLevel != v19)
            {
              goto LABEL_41;
            }

            has = self->_has;
            v6 = equalCopy[24];
          }

          v20 = (*&has >> 5) & 1;
          if (v20 == ((v6 >> 5) & 1))
          {
            if (v20)
            {
              backgroundNoiseActivityLevel = self->_backgroundNoiseActivityLevel;
              if (backgroundNoiseActivityLevel != [equalCopy backgroundNoiseActivityLevel])
              {
                goto LABEL_41;
              }

              has = self->_has;
              v6 = equalCopy[24];
            }

            v22 = (*&has >> 6) & 1;
            if (v22 == ((v6 >> 6) & 1))
            {
              if (v22)
              {
                isMediaPlaybackOn = self->_isMediaPlaybackOn;
                if (isMediaPlaybackOn != [equalCopy isMediaPlaybackOn])
                {
                  goto LABEL_41;
                }

                has = self->_has;
                v6 = equalCopy[24];
              }

              v24 = (*&has >> 7) & 1;
              if (v24 == ((v6 >> 7) & 1))
              {
                if (v24)
                {
                  invocationType = self->_invocationType;
                  if (invocationType != [equalCopy invocationType])
                  {
                    goto LABEL_41;
                  }

                  has = self->_has;
                  v6 = equalCopy[24];
                }

                v26 = (*&has >> 8) & 1;
                if (v26 == ((v6 >> 8) & 1))
                {
                  if (v26)
                  {
                    isPermanentOffsetEnabled = self->_isPermanentOffsetEnabled;
                    if (isPermanentOffsetEnabled != [equalCopy isPermanentOffsetEnabled])
                    {
                      goto LABEL_41;
                    }

                    has = self->_has;
                    v6 = equalCopy[24];
                  }

                  v28 = (*&has >> 9) & 1;
                  if (v28 == ((v6 >> 9) & 1))
                  {
                    if (!v28 || (permanentOffsetFactor = self->_permanentOffsetFactor, [equalCopy permanentOffsetFactor], permanentOffsetFactor == v30))
                    {
                      v31 = 1;
                      goto LABEL_42;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_41:
  v31 = 0;
LABEL_42:

  return v31;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    PBDataWriterWriteFloatField();
  }

LABEL_12:
}

- (void)setHasPermanentOffsetFactor:(BOOL)factor
{
  if (factor)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsPermanentOffsetEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasInvocationType:(BOOL)type
{
  if (type)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsMediaPlaybackOn:(BOOL)on
{
  if (on)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasBackgroundNoiseActivityLevel:(BOOL)level
{
  if (level)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasBackgroundNoiseLevel:(BOOL)level
{
  if (level)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasMusicLoudnessLevel:(BOOL)level
{
  if (level)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasSpeakerSpeechLevel:(BOOL)level
{
  if (level)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasSpeakerDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end