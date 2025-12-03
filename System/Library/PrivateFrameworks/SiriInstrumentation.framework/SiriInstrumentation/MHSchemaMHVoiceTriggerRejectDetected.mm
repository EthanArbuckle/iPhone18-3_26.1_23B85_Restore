@interface MHSchemaMHVoiceTriggerRejectDetected
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHVoiceTriggerRejectDetected)initWithDictionary:(id)dictionary;
- (MHSchemaMHVoiceTriggerRejectDetected)initWithJSON:(id)n;
- (NSData)jsonData;
- (float)checkerHSRejectBeforeActivationScoresAtIndex:(unint64_t)index;
- (float)checkerJSRejectBeforeActivationScoresAtIndex:(unint64_t)index;
- (float)phsRejectBeforeActivationScoresAtIndex:(unint64_t)index;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)checkerHSRejectBeforeActivationTimeDiffInNsAtIndex:(unint64_t)index;
- (unint64_t)checkerJSRejectBeforeActivationTimeDiffInNsAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (unint64_t)phsRejectBeforeActivationTimeDiffInNsAtIndex:(unint64_t)index;
- (void)addCheckerHSRejectBeforeActivationScores:(float)scores;
- (void)addCheckerHSRejectBeforeActivationTimeDiffInNs:(unint64_t)ns;
- (void)addCheckerJSRejectBeforeActivationScores:(float)scores;
- (void)addCheckerJSRejectBeforeActivationTimeDiffInNs:(unint64_t)ns;
- (void)addPhsRejectBeforeActivationScores:(float)scores;
- (void)addPhsRejectBeforeActivationTimeDiffInNs:(unint64_t)ns;
- (void)setHasCheckerHSRejectBeforeActivationCount:(BOOL)count;
- (void)setHasCheckerHSThreshold:(BOOL)threshold;
- (void)setHasCheckerJSRejectBeforeActivationCount:(BOOL)count;
- (void)setHasCheckerJSThreshold:(BOOL)threshold;
- (void)setHasPhsThreshold:(BOOL)threshold;
- (void)setHasPjsThreshold:(BOOL)threshold;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHVoiceTriggerRejectDetected

- (MHSchemaMHVoiceTriggerRejectDetected)initWithDictionary:(id)dictionary
{
  v95 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v88.receiver = self;
  v88.super_class = MHSchemaMHVoiceTriggerRejectDetected;
  v5 = [(MHSchemaMHVoiceTriggerRejectDetected *)&v88 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"phsRejectBeforeActivationCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerRejectDetected setPhsRejectBeforeActivationCount:](v5, "setPhsRejectBeforeActivationCount:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"checkerHSRejectBeforeActivationCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerRejectDetected setCheckerHSRejectBeforeActivationCount:](v5, "setCheckerHSRejectBeforeActivationCount:", [v7 unsignedIntValue]);
    }

    v61 = v7;
    v62 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"checkerJSRejectBeforeActivationCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerRejectDetected setCheckerJSRejectBeforeActivationCount:](v5, "setCheckerJSRejectBeforeActivationCount:", [v8 unsignedIntValue]);
    }

    v60 = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"phsRejectBeforeActivationScores"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v84 objects:v94 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v85;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v85 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v84 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v15 floatValue];
              [(MHSchemaMHVoiceTriggerRejectDetected *)v5 addPhsRejectBeforeActivationScores:?];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v84 objects:v94 count:16];
        }

        while (v12);
      }
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"checkerHSRejectBeforeActivationScores"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v80 objects:v93 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v81;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v81 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v80 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v22 floatValue];
              [(MHSchemaMHVoiceTriggerRejectDetected *)v5 addCheckerHSRejectBeforeActivationScores:?];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v80 objects:v93 count:16];
        }

        while (v19);
      }
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"checkerJSRejectBeforeActivationScores"];
    objc_opt_class();
    v57 = v23;
    if (objc_opt_isKindOfClass())
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v76 objects:v92 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v77;
        do
        {
          for (k = 0; k != v26; ++k)
          {
            if (*v77 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v76 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v29 floatValue];
              [(MHSchemaMHVoiceTriggerRejectDetected *)v5 addCheckerJSRejectBeforeActivationScores:?];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v76 objects:v92 count:16];
        }

        while (v26);
      }

      v23 = v57;
    }

    v58 = v16;
    v59 = v9;
    v30 = [dictionaryCopy objectForKeyedSubscript:@"phsRejectBeforeActivationTimeDiffInNs"];
    objc_opt_class();
    v63 = v30;
    if (objc_opt_isKindOfClass())
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v31 = v30;
      v32 = [v31 countByEnumeratingWithState:&v72 objects:v91 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v73;
        do
        {
          for (m = 0; m != v33; ++m)
          {
            if (*v73 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v72 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[MHSchemaMHVoiceTriggerRejectDetected addPhsRejectBeforeActivationTimeDiffInNs:](v5, "addPhsRejectBeforeActivationTimeDiffInNs:", [v36 unsignedLongLongValue]);
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v72 objects:v91 count:16];
        }

        while (v33);
      }
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"checkerHSRejectBeforeActivationTimeDiffInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v38 = v37;
      v39 = [v38 countByEnumeratingWithState:&v68 objects:v90 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v69;
        do
        {
          for (n = 0; n != v40; ++n)
          {
            if (*v69 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v68 + 1) + 8 * n);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[MHSchemaMHVoiceTriggerRejectDetected addCheckerHSRejectBeforeActivationTimeDiffInNs:](v5, "addCheckerHSRejectBeforeActivationTimeDiffInNs:", [v43 unsignedLongLongValue]);
            }
          }

          v40 = [v38 countByEnumeratingWithState:&v68 objects:v90 count:16];
        }

        while (v40);
      }
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"checkerJSRejectBeforeActivationTimeDiffInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v45 = v44;
      v46 = [v45 countByEnumeratingWithState:&v64 objects:v89 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v65;
        do
        {
          for (ii = 0; ii != v47; ++ii)
          {
            if (*v65 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v64 + 1) + 8 * ii);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[MHSchemaMHVoiceTriggerRejectDetected addCheckerJSRejectBeforeActivationTimeDiffInNs:](v5, "addCheckerJSRejectBeforeActivationTimeDiffInNs:", [v50 unsignedLongLongValue]);
            }
          }

          v47 = [v45 countByEnumeratingWithState:&v64 objects:v89 count:16];
        }

        while (v47);
      }

      v23 = v57;
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"phsThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v51 floatValue];
      [(MHSchemaMHVoiceTriggerRejectDetected *)v5 setPhsThreshold:?];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"pjsThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v52 floatValue];
      [(MHSchemaMHVoiceTriggerRejectDetected *)v5 setPjsThreshold:?];
    }

    v53 = [dictionaryCopy objectForKeyedSubscript:@"checkerHSThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v53 floatValue];
      [(MHSchemaMHVoiceTriggerRejectDetected *)v5 setCheckerHSThreshold:?];
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"checkerJSThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v54 floatValue];
      [(MHSchemaMHVoiceTriggerRejectDetected *)v5 setCheckerJSThreshold:?];
    }

    v55 = v5;
  }

  return v5;
}

- (MHSchemaMHVoiceTriggerRejectDetected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHVoiceTriggerRejectDetected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHVoiceTriggerRejectDetected *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHVoiceTriggerRejectDetected checkerHSRejectBeforeActivationCount](self, "checkerHSRejectBeforeActivationCount")}];
    [dictionary setObject:v4 forKeyedSubscript:@"checkerHSRejectBeforeActivationCount"];
  }

  if ([(NSArray *)self->_checkerHSRejectBeforeActivationScores count])
  {
    checkerHSRejectBeforeActivationScores = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerHSRejectBeforeActivationScores];
    v6 = [checkerHSRejectBeforeActivationScores copy];
    [dictionary setObject:v6 forKeyedSubscript:@"checkerHSRejectBeforeActivationScores"];
  }

  if ([(NSArray *)self->_checkerHSRejectBeforeActivationTimeDiffInNs count])
  {
    checkerHSRejectBeforeActivationTimeDiffInNs = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerHSRejectBeforeActivationTimeDiffInNs];
    v8 = [checkerHSRejectBeforeActivationTimeDiffInNs copy];
    [dictionary setObject:v8 forKeyedSubscript:@"checkerHSRejectBeforeActivationTimeDiffInNs"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerHSThreshold];
    v11 = [v10 numberWithFloat:?];
    [dictionary setObject:v11 forKeyedSubscript:@"checkerHSThreshold"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHVoiceTriggerRejectDetected checkerJSRejectBeforeActivationCount](self, "checkerJSRejectBeforeActivationCount")}];
    [dictionary setObject:v12 forKeyedSubscript:@"checkerJSRejectBeforeActivationCount"];
  }

  if ([(NSArray *)self->_checkerJSRejectBeforeActivationScores count])
  {
    checkerJSRejectBeforeActivationScores = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerJSRejectBeforeActivationScores];
    v14 = [checkerJSRejectBeforeActivationScores copy];
    [dictionary setObject:v14 forKeyedSubscript:@"checkerJSRejectBeforeActivationScores"];
  }

  if ([(NSArray *)self->_checkerJSRejectBeforeActivationTimeDiffInNs count])
  {
    checkerJSRejectBeforeActivationTimeDiffInNs = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerJSRejectBeforeActivationTimeDiffInNs];
    v16 = [checkerJSRejectBeforeActivationTimeDiffInNs copy];
    [dictionary setObject:v16 forKeyedSubscript:@"checkerJSRejectBeforeActivationTimeDiffInNs"];
  }

  v17 = self->_has;
  if ((v17 & 0x40) != 0)
  {
    v18 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerJSThreshold];
    v19 = [v18 numberWithFloat:?];
    [dictionary setObject:v19 forKeyedSubscript:@"checkerJSThreshold"];

    v17 = self->_has;
  }

  if (v17)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHVoiceTriggerRejectDetected phsRejectBeforeActivationCount](self, "phsRejectBeforeActivationCount")}];
    [dictionary setObject:v20 forKeyedSubscript:@"phsRejectBeforeActivationCount"];
  }

  if ([(NSArray *)self->_phsRejectBeforeActivationScores count])
  {
    phsRejectBeforeActivationScores = [(MHSchemaMHVoiceTriggerRejectDetected *)self phsRejectBeforeActivationScores];
    v22 = [phsRejectBeforeActivationScores copy];
    [dictionary setObject:v22 forKeyedSubscript:@"phsRejectBeforeActivationScores"];
  }

  if ([(NSArray *)self->_phsRejectBeforeActivationTimeDiffInNs count])
  {
    phsRejectBeforeActivationTimeDiffInNs = [(MHSchemaMHVoiceTriggerRejectDetected *)self phsRejectBeforeActivationTimeDiffInNs];
    v24 = [phsRejectBeforeActivationTimeDiffInNs copy];
    [dictionary setObject:v24 forKeyedSubscript:@"phsRejectBeforeActivationTimeDiffInNs"];
  }

  v25 = self->_has;
  if ((v25 & 8) != 0)
  {
    v26 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerRejectDetected *)self phsThreshold];
    v27 = [v26 numberWithFloat:?];
    [dictionary setObject:v27 forKeyedSubscript:@"phsThreshold"];

    v25 = self->_has;
  }

  if ((v25 & 0x10) != 0)
  {
    v28 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerRejectDetected *)self pjsThreshold];
    v29 = [v28 numberWithFloat:?];
    [dictionary setObject:v29 forKeyedSubscript:@"pjsThreshold"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v34 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v34 = 2654435761 * self->_phsRejectBeforeActivationCount;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_checkerHSRejectBeforeActivationCount;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_checkerJSRejectBeforeActivationCount;
    goto LABEL_8;
  }

LABEL_7:
  v4 = 0;
LABEL_8:
  v5 = [(NSArray *)self->_phsRejectBeforeActivationScores hash];
  v6 = [(NSArray *)self->_checkerHSRejectBeforeActivationScores hash];
  v7 = [(NSArray *)self->_checkerJSRejectBeforeActivationScores hash];
  v8 = [(NSArray *)self->_phsRejectBeforeActivationTimeDiffInNs hash];
  v9 = [(NSArray *)self->_checkerHSRejectBeforeActivationTimeDiffInNs hash];
  v10 = [(NSArray *)self->_checkerJSRejectBeforeActivationTimeDiffInNs hash];
  if ((*&self->_has & 8) != 0)
  {
    phsThreshold = self->_phsThreshold;
    if (phsThreshold >= 0.0)
    {
      v15 = phsThreshold;
    }

    else
    {
      v15 = -phsThreshold;
    }

    *v11.i64 = floor(v15 + 0.5);
    v16 = (v15 - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v11 = vbslq_s8(vnegq_f64(v17), v12, v11);
    v13 = 2654435761u * *v11.i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v13 += v16;
      }
    }

    else
    {
      v13 -= fabs(v16);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    pjsThreshold = self->_pjsThreshold;
    if (pjsThreshold >= 0.0)
    {
      v20 = pjsThreshold;
    }

    else
    {
      v20 = -pjsThreshold;
    }

    *v11.i64 = floor(v20 + 0.5);
    v21 = (v20 - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v11 = vbslq_s8(vnegq_f64(v22), v12, v11);
    v18 = 2654435761u * *v11.i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v18 += v21;
      }
    }

    else
    {
      v18 -= fabs(v21);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    checkerHSThreshold = self->_checkerHSThreshold;
    if (checkerHSThreshold >= 0.0)
    {
      v25 = checkerHSThreshold;
    }

    else
    {
      v25 = -checkerHSThreshold;
    }

    *v11.i64 = floor(v25 + 0.5);
    v26 = (v25 - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v27.f64[0] = NAN;
    v27.f64[1] = NAN;
    v11 = vbslq_s8(vnegq_f64(v27), v12, v11);
    v23 = 2654435761u * *v11.i64;
    if (v26 >= 0.0)
    {
      if (v26 > 0.0)
      {
        v23 += v26;
      }
    }

    else
    {
      v23 -= fabs(v26);
    }
  }

  else
  {
    v23 = 0;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    checkerJSThreshold = self->_checkerJSThreshold;
    if (checkerJSThreshold >= 0.0)
    {
      v30 = checkerJSThreshold;
    }

    else
    {
      v30 = -checkerJSThreshold;
    }

    *v11.i64 = floor(v30 + 0.5);
    v31 = (v30 - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v28 = 2654435761u * *vbslq_s8(vnegq_f64(v32), v12, v11).i64;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v28 += v31;
      }
    }

    else
    {
      v28 -= fabs(v31);
    }
  }

  else
  {
    v28 = 0;
  }

  return v3 ^ v34 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v18 ^ v23 ^ v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  has = self->_has;
  v6 = equalCopy[88];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_43;
  }

  if (*&has)
  {
    phsRejectBeforeActivationCount = self->_phsRejectBeforeActivationCount;
    if (phsRejectBeforeActivationCount != [equalCopy phsRejectBeforeActivationCount])
    {
      goto LABEL_43;
    }

    has = self->_has;
    v6 = equalCopy[88];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      checkerHSRejectBeforeActivationCount = self->_checkerHSRejectBeforeActivationCount;
      if (checkerHSRejectBeforeActivationCount != [equalCopy checkerHSRejectBeforeActivationCount])
      {
        goto LABEL_43;
      }

      has = self->_has;
      v6 = equalCopy[88];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 != ((v6 >> 2) & 1))
    {
      goto LABEL_43;
    }

    if (v10)
    {
      checkerJSRejectBeforeActivationCount = self->_checkerJSRejectBeforeActivationCount;
      if (checkerJSRejectBeforeActivationCount != [equalCopy checkerJSRejectBeforeActivationCount])
      {
        goto LABEL_43;
      }
    }

    phsRejectBeforeActivationScores = [(MHSchemaMHVoiceTriggerRejectDetected *)self phsRejectBeforeActivationScores];
    phsRejectBeforeActivationScores2 = [equalCopy phsRejectBeforeActivationScores];
    if ((phsRejectBeforeActivationScores != 0) == (phsRejectBeforeActivationScores2 == 0))
    {
      goto LABEL_42;
    }

    phsRejectBeforeActivationScores3 = [(MHSchemaMHVoiceTriggerRejectDetected *)self phsRejectBeforeActivationScores];
    if (phsRejectBeforeActivationScores3)
    {
      v15 = phsRejectBeforeActivationScores3;
      phsRejectBeforeActivationScores4 = [(MHSchemaMHVoiceTriggerRejectDetected *)self phsRejectBeforeActivationScores];
      phsRejectBeforeActivationScores5 = [equalCopy phsRejectBeforeActivationScores];
      v18 = [phsRejectBeforeActivationScores4 isEqual:phsRejectBeforeActivationScores5];

      if (!v18)
      {
        goto LABEL_43;
      }
    }

    else
    {
    }

    phsRejectBeforeActivationScores = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerHSRejectBeforeActivationScores];
    phsRejectBeforeActivationScores2 = [equalCopy checkerHSRejectBeforeActivationScores];
    if ((phsRejectBeforeActivationScores != 0) == (phsRejectBeforeActivationScores2 == 0))
    {
      goto LABEL_42;
    }

    checkerHSRejectBeforeActivationScores = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerHSRejectBeforeActivationScores];
    if (checkerHSRejectBeforeActivationScores)
    {
      v20 = checkerHSRejectBeforeActivationScores;
      checkerHSRejectBeforeActivationScores2 = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerHSRejectBeforeActivationScores];
      checkerHSRejectBeforeActivationScores3 = [equalCopy checkerHSRejectBeforeActivationScores];
      v23 = [checkerHSRejectBeforeActivationScores2 isEqual:checkerHSRejectBeforeActivationScores3];

      if (!v23)
      {
        goto LABEL_43;
      }
    }

    else
    {
    }

    phsRejectBeforeActivationScores = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerJSRejectBeforeActivationScores];
    phsRejectBeforeActivationScores2 = [equalCopy checkerJSRejectBeforeActivationScores];
    if ((phsRejectBeforeActivationScores != 0) == (phsRejectBeforeActivationScores2 == 0))
    {
      goto LABEL_42;
    }

    checkerJSRejectBeforeActivationScores = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerJSRejectBeforeActivationScores];
    if (checkerJSRejectBeforeActivationScores)
    {
      v25 = checkerJSRejectBeforeActivationScores;
      checkerJSRejectBeforeActivationScores2 = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerJSRejectBeforeActivationScores];
      checkerJSRejectBeforeActivationScores3 = [equalCopy checkerJSRejectBeforeActivationScores];
      v28 = [checkerJSRejectBeforeActivationScores2 isEqual:checkerJSRejectBeforeActivationScores3];

      if (!v28)
      {
        goto LABEL_43;
      }
    }

    else
    {
    }

    phsRejectBeforeActivationScores = [(MHSchemaMHVoiceTriggerRejectDetected *)self phsRejectBeforeActivationTimeDiffInNs];
    phsRejectBeforeActivationScores2 = [equalCopy phsRejectBeforeActivationTimeDiffInNs];
    if ((phsRejectBeforeActivationScores != 0) == (phsRejectBeforeActivationScores2 == 0))
    {
      goto LABEL_42;
    }

    phsRejectBeforeActivationTimeDiffInNs = [(MHSchemaMHVoiceTriggerRejectDetected *)self phsRejectBeforeActivationTimeDiffInNs];
    if (phsRejectBeforeActivationTimeDiffInNs)
    {
      v30 = phsRejectBeforeActivationTimeDiffInNs;
      phsRejectBeforeActivationTimeDiffInNs2 = [(MHSchemaMHVoiceTriggerRejectDetected *)self phsRejectBeforeActivationTimeDiffInNs];
      phsRejectBeforeActivationTimeDiffInNs3 = [equalCopy phsRejectBeforeActivationTimeDiffInNs];
      v33 = [phsRejectBeforeActivationTimeDiffInNs2 isEqual:phsRejectBeforeActivationTimeDiffInNs3];

      if (!v33)
      {
        goto LABEL_43;
      }
    }

    else
    {
    }

    phsRejectBeforeActivationScores = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerHSRejectBeforeActivationTimeDiffInNs];
    phsRejectBeforeActivationScores2 = [equalCopy checkerHSRejectBeforeActivationTimeDiffInNs];
    if ((phsRejectBeforeActivationScores != 0) == (phsRejectBeforeActivationScores2 == 0))
    {
      goto LABEL_42;
    }

    checkerHSRejectBeforeActivationTimeDiffInNs = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerHSRejectBeforeActivationTimeDiffInNs];
    if (checkerHSRejectBeforeActivationTimeDiffInNs)
    {
      v35 = checkerHSRejectBeforeActivationTimeDiffInNs;
      checkerHSRejectBeforeActivationTimeDiffInNs2 = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerHSRejectBeforeActivationTimeDiffInNs];
      checkerHSRejectBeforeActivationTimeDiffInNs3 = [equalCopy checkerHSRejectBeforeActivationTimeDiffInNs];
      v38 = [checkerHSRejectBeforeActivationTimeDiffInNs2 isEqual:checkerHSRejectBeforeActivationTimeDiffInNs3];

      if (!v38)
      {
        goto LABEL_43;
      }
    }

    else
    {
    }

    phsRejectBeforeActivationScores = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerJSRejectBeforeActivationTimeDiffInNs];
    phsRejectBeforeActivationScores2 = [equalCopy checkerJSRejectBeforeActivationTimeDiffInNs];
    if ((phsRejectBeforeActivationScores != 0) == (phsRejectBeforeActivationScores2 == 0))
    {
LABEL_42:

      goto LABEL_43;
    }

    checkerJSRejectBeforeActivationTimeDiffInNs = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerJSRejectBeforeActivationTimeDiffInNs];
    if (checkerJSRejectBeforeActivationTimeDiffInNs)
    {
      v40 = checkerJSRejectBeforeActivationTimeDiffInNs;
      checkerJSRejectBeforeActivationTimeDiffInNs2 = [(MHSchemaMHVoiceTriggerRejectDetected *)self checkerJSRejectBeforeActivationTimeDiffInNs];
      checkerJSRejectBeforeActivationTimeDiffInNs3 = [equalCopy checkerJSRejectBeforeActivationTimeDiffInNs];
      v43 = [checkerJSRejectBeforeActivationTimeDiffInNs2 isEqual:checkerJSRejectBeforeActivationTimeDiffInNs3];

      if (!v43)
      {
        goto LABEL_43;
      }
    }

    else
    {
    }

    v46 = self->_has;
    v47 = (*&v46 >> 3) & 1;
    v48 = equalCopy[88];
    if (v47 == ((v48 >> 3) & 1))
    {
      if (v47)
      {
        phsThreshold = self->_phsThreshold;
        [equalCopy phsThreshold];
        if (phsThreshold != v50)
        {
          goto LABEL_43;
        }

        v46 = self->_has;
        v48 = equalCopy[88];
      }

      v51 = (*&v46 >> 4) & 1;
      if (v51 == ((v48 >> 4) & 1))
      {
        if (v51)
        {
          pjsThreshold = self->_pjsThreshold;
          [equalCopy pjsThreshold];
          if (pjsThreshold != v53)
          {
            goto LABEL_43;
          }

          v46 = self->_has;
          v48 = equalCopy[88];
        }

        v54 = (*&v46 >> 5) & 1;
        if (v54 == ((v48 >> 5) & 1))
        {
          if (v54)
          {
            checkerHSThreshold = self->_checkerHSThreshold;
            [equalCopy checkerHSThreshold];
            if (checkerHSThreshold != v56)
            {
              goto LABEL_43;
            }

            v46 = self->_has;
            v48 = equalCopy[88];
          }

          v57 = (*&v46 >> 6) & 1;
          if (v57 == ((v48 >> 6) & 1))
          {
            if (!v57 || (checkerJSThreshold = self->_checkerJSThreshold, [equalCopy checkerJSThreshold], checkerJSThreshold == v59))
            {
              v44 = 1;
              goto LABEL_44;
            }
          }
        }
      }
    }
  }

LABEL_43:
  v44 = 0;
LABEL_44:

  return v44;
}

- (void)writeTo:(id)to
{
  v67 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v6 = self->_phsRejectBeforeActivationScores;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v58;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v58 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v57 + 1) + 8 * i) floatValue];
        PBDataWriterWriteFloatField();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v8);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = self->_checkerHSRejectBeforeActivationScores;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v54;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v54 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v53 + 1) + 8 * j) floatValue];
        PBDataWriterWriteFloatField();
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v13);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v16 = self->_checkerJSRejectBeforeActivationScores;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v49 objects:v64 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v50;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v50 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v49 + 1) + 8 * k) floatValue];
        PBDataWriterWriteFloatField();
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v49 objects:v64 count:16];
    }

    while (v18);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v21 = self->_phsRejectBeforeActivationTimeDiffInNs;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v45 objects:v63 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v46;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v46 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v45 + 1) + 8 * m) unsignedLongLongValue];
        PBDataWriterWriteUint64Field();
      }

      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v45 objects:v63 count:16];
    }

    while (v23);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v26 = self->_checkerHSRejectBeforeActivationTimeDiffInNs;
  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v41 objects:v62 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v42;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v42 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v41 + 1) + 8 * n) unsignedLongLongValue];
        PBDataWriterWriteUint64Field();
      }

      v28 = [(NSArray *)v26 countByEnumeratingWithState:&v41 objects:v62 count:16];
    }

    while (v28);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v31 = self->_checkerJSRejectBeforeActivationTimeDiffInNs;
  v32 = [(NSArray *)v31 countByEnumeratingWithState:&v37 objects:v61 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v38;
    do
    {
      for (ii = 0; ii != v33; ++ii)
      {
        if (*v38 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [*(*(&v37 + 1) + 8 * ii) unsignedLongLongValue];
        PBDataWriterWriteUint64Field();
      }

      v33 = [(NSArray *)v31 countByEnumeratingWithState:&v37 objects:v61 count:16];
    }

    while (v33);
  }

  v36 = self->_has;
  if ((v36 & 8) != 0)
  {
    PBDataWriterWriteFloatField();
    v36 = self->_has;
    if ((v36 & 0x10) == 0)
    {
LABEL_49:
      if ((v36 & 0x20) == 0)
      {
        goto LABEL_50;
      }

LABEL_58:
      PBDataWriterWriteFloatField();
      if ((*&self->_has & 0x40) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_49;
  }

  PBDataWriterWriteFloatField();
  v36 = self->_has;
  if ((v36 & 0x20) != 0)
  {
    goto LABEL_58;
  }

LABEL_50:
  if ((v36 & 0x40) != 0)
  {
LABEL_51:
    PBDataWriterWriteFloatField();
  }

LABEL_52:
}

- (void)setHasCheckerJSThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasCheckerHSThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasPjsThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasPhsThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (unint64_t)checkerJSRejectBeforeActivationTimeDiffInNsAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_checkerJSRejectBeforeActivationTimeDiffInNs objectAtIndexedSubscript:index];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)addCheckerJSRejectBeforeActivationTimeDiffInNs:(unint64_t)ns
{
  checkerJSRejectBeforeActivationTimeDiffInNs = self->_checkerJSRejectBeforeActivationTimeDiffInNs;
  if (!checkerJSRejectBeforeActivationTimeDiffInNs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_checkerJSRejectBeforeActivationTimeDiffInNs;
    self->_checkerJSRejectBeforeActivationTimeDiffInNs = array;

    checkerJSRejectBeforeActivationTimeDiffInNs = self->_checkerJSRejectBeforeActivationTimeDiffInNs;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:ns];
  [(NSArray *)checkerJSRejectBeforeActivationTimeDiffInNs addObject:v8];
}

- (unint64_t)checkerHSRejectBeforeActivationTimeDiffInNsAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_checkerHSRejectBeforeActivationTimeDiffInNs objectAtIndexedSubscript:index];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)addCheckerHSRejectBeforeActivationTimeDiffInNs:(unint64_t)ns
{
  checkerHSRejectBeforeActivationTimeDiffInNs = self->_checkerHSRejectBeforeActivationTimeDiffInNs;
  if (!checkerHSRejectBeforeActivationTimeDiffInNs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_checkerHSRejectBeforeActivationTimeDiffInNs;
    self->_checkerHSRejectBeforeActivationTimeDiffInNs = array;

    checkerHSRejectBeforeActivationTimeDiffInNs = self->_checkerHSRejectBeforeActivationTimeDiffInNs;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:ns];
  [(NSArray *)checkerHSRejectBeforeActivationTimeDiffInNs addObject:v8];
}

- (unint64_t)phsRejectBeforeActivationTimeDiffInNsAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_phsRejectBeforeActivationTimeDiffInNs objectAtIndexedSubscript:index];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)addPhsRejectBeforeActivationTimeDiffInNs:(unint64_t)ns
{
  phsRejectBeforeActivationTimeDiffInNs = self->_phsRejectBeforeActivationTimeDiffInNs;
  if (!phsRejectBeforeActivationTimeDiffInNs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_phsRejectBeforeActivationTimeDiffInNs;
    self->_phsRejectBeforeActivationTimeDiffInNs = array;

    phsRejectBeforeActivationTimeDiffInNs = self->_phsRejectBeforeActivationTimeDiffInNs;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:ns];
  [(NSArray *)phsRejectBeforeActivationTimeDiffInNs addObject:v8];
}

- (float)checkerJSRejectBeforeActivationScoresAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_checkerJSRejectBeforeActivationScores objectAtIndexedSubscript:index];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addCheckerJSRejectBeforeActivationScores:(float)scores
{
  checkerJSRejectBeforeActivationScores = self->_checkerJSRejectBeforeActivationScores;
  if (!checkerJSRejectBeforeActivationScores)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_checkerJSRejectBeforeActivationScores;
    self->_checkerJSRejectBeforeActivationScores = array;

    checkerJSRejectBeforeActivationScores = self->_checkerJSRejectBeforeActivationScores;
  }

  *&v8 = scores;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)checkerJSRejectBeforeActivationScores addObject:v9];
}

- (float)checkerHSRejectBeforeActivationScoresAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_checkerHSRejectBeforeActivationScores objectAtIndexedSubscript:index];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addCheckerHSRejectBeforeActivationScores:(float)scores
{
  checkerHSRejectBeforeActivationScores = self->_checkerHSRejectBeforeActivationScores;
  if (!checkerHSRejectBeforeActivationScores)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_checkerHSRejectBeforeActivationScores;
    self->_checkerHSRejectBeforeActivationScores = array;

    checkerHSRejectBeforeActivationScores = self->_checkerHSRejectBeforeActivationScores;
  }

  *&v8 = scores;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)checkerHSRejectBeforeActivationScores addObject:v9];
}

- (float)phsRejectBeforeActivationScoresAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_phsRejectBeforeActivationScores objectAtIndexedSubscript:index];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addPhsRejectBeforeActivationScores:(float)scores
{
  phsRejectBeforeActivationScores = self->_phsRejectBeforeActivationScores;
  if (!phsRejectBeforeActivationScores)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_phsRejectBeforeActivationScores;
    self->_phsRejectBeforeActivationScores = array;

    phsRejectBeforeActivationScores = self->_phsRejectBeforeActivationScores;
  }

  *&v8 = scores;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)phsRejectBeforeActivationScores addObject:v9];
}

- (void)setHasCheckerJSRejectBeforeActivationCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCheckerHSRejectBeforeActivationCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end