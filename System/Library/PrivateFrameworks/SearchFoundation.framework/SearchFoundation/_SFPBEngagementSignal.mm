@interface _SFPBEngagementSignal
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBEngagementSignal)initWithDictionary:(id)dictionary;
- (_SFPBEngagementSignal)initWithFacade:(id)facade;
- (_SFPBEngagementSignal)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDomainEngagementScores:(id)scores;
- (void)setDomainEngagementScores:(id)scores;
- (void)writeTo:(id)to;
@end

@implementation _SFPBEngagementSignal

- (_SFPBEngagementSignal)initWithFacade:(id)facade
{
  v32 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBEngagementSignal *)self init];
  if (v5)
  {
    version = [facadeCopy version];

    if (version)
    {
      version2 = [facadeCopy version];
      -[_SFPBEngagementSignal setVersion:](v5, "setVersion:", [version2 intValue]);
    }

    serverScore = [facadeCopy serverScore];

    if (serverScore)
    {
      serverScore2 = [facadeCopy serverScore];
      [serverScore2 floatValue];
      [(_SFPBEngagementSignal *)v5 setServerScore:?];
    }

    localScore = [facadeCopy localScore];

    if (localScore)
    {
      localScore2 = [facadeCopy localScore];
      [localScore2 floatValue];
      [(_SFPBEngagementSignal *)v5 setLocalScore:?];
    }

    serverScoreConfidence = [facadeCopy serverScoreConfidence];

    if (serverScoreConfidence)
    {
      serverScoreConfidence2 = [facadeCopy serverScoreConfidence];
      -[_SFPBEngagementSignal setServerScoreConfidence:](v5, "setServerScoreConfidence:", [serverScoreConfidence2 intValue]);
    }

    localScoreConfidence = [facadeCopy localScoreConfidence];

    if (localScoreConfidence)
    {
      localScoreConfidence2 = [facadeCopy localScoreConfidence];
      -[_SFPBEngagementSignal setLocalScoreConfidence:](v5, "setLocalScoreConfidence:", [localScoreConfidence2 intValue]);
    }

    domainEngagementScores = [facadeCopy domainEngagementScores];
    if (domainEngagementScores)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v17 = 0;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    domainEngagementScores2 = [facadeCopy domainEngagementScores];
    v19 = [domainEngagementScores2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(domainEngagementScores2);
          }

          v23 = [[_SFPBDomainEngagementScore alloc] initWithFacade:*(*(&v27 + 1) + 8 * i)];
          if (v23)
          {
            [v17 addObject:v23];
          }
        }

        v20 = [domainEngagementScores2 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v20);
    }

    [(_SFPBEngagementSignal *)v5 setDomainEngagementScores:v17];
    v24 = v5;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBEngagementSignal)initWithDictionary:(id)dictionary
{
  v31 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = _SFPBEngagementSignal;
  v5 = [(_SFPBEngagementSignal *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEngagementSignal setVersion:](v5, "setVersion:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"serverScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(_SFPBEngagementSignal *)v5 setServerScore:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"localScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(_SFPBEngagementSignal *)v5 setLocalScore:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"serverScoreConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEngagementSignal setServerScoreConfidence:](v5, "setServerScoreConfidence:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"localScoreConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBEngagementSignal setLocalScoreConfidence:](v5, "setLocalScoreConfidence:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"domainEngagementScores"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v10;
      v23 = v9;
      v24 = v6;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v25 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [[_SFPBDomainEngagementScore alloc] initWithDictionary:v17];
              [(_SFPBEngagementSignal *)v5 addDomainEngagementScores:v18];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v14);
      }

      v6 = v24;
      v9 = v23;
      v10 = v22;
    }

    v19 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBEngagementSignal)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBEngagementSignal *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBEngagementSignal *)self dictionaryRepresentation];
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
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_domainEngagementScores count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = self->_domainEngagementScores;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"domainEngagementScores"];
  }

  if (self->_localScore != 0.0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(_SFPBEngagementSignal *)self localScore];
    v13 = [v12 numberWithFloat:?];
    [dictionary setObject:v13 forKeyedSubscript:@"localScore"];
  }

  if (self->_localScoreConfidence)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBEngagementSignal localScoreConfidence](self, "localScoreConfidence")}];
    [dictionary setObject:v14 forKeyedSubscript:@"localScoreConfidence"];
  }

  if (self->_serverScore != 0.0)
  {
    v15 = MEMORY[0x1E696AD98];
    [(_SFPBEngagementSignal *)self serverScore];
    v16 = [v15 numberWithFloat:?];
    [dictionary setObject:v16 forKeyedSubscript:@"serverScore"];
  }

  if (self->_serverScoreConfidence)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBEngagementSignal serverScoreConfidence](self, "serverScoreConfidence")}];
    [dictionary setObject:v17 forKeyedSubscript:@"serverScoreConfidence"];
  }

  if (self->_version)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBEngagementSignal version](self, "version")}];
    [dictionary setObject:v18 forKeyedSubscript:@"version"];
  }

  v19 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  serverScore = self->_serverScore;
  v9 = serverScore < 0.0;
  if (serverScore == 0.0)
  {
    v13 = 0;
  }

  else
  {
    v10 = serverScore;
    if (v9)
    {
      v10 = -v10;
    }

    *v6.i64 = floor(v10 + 0.5);
    v11 = (v10 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v12), v7, v6);
    v13 = 2654435761u * *v6.i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v13 += v11;
      }
    }

    else
    {
      v13 -= fabs(v11);
    }
  }

  localScore = self->_localScore;
  v15 = localScore < 0.0;
  if (localScore == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v16 = localScore;
    if (v15)
    {
      v16 = -v16;
    }

    *v6.i64 = floor(v16 + 0.5);
    v17 = (v16 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v19 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v7, v6).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v19 += v17;
      }
    }

    else
    {
      v19 -= fabs(v17);
    }
  }

  v22 = v2;
  v20 = v13 ^ v19 ^ (2654435761 * self->_version) ^ (2654435761 * self->_serverScoreConfidence) ^ (2654435761 * self->_localScoreConfidence);
  return v20 ^ [(NSArray *)self->_domainEngagementScores hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    version = self->_version;
    if (version == [equalCopy version])
    {
      serverScore = self->_serverScore;
      [equalCopy serverScore];
      if (serverScore == v7)
      {
        localScore = self->_localScore;
        [equalCopy localScore];
        if (localScore == v9)
        {
          serverScoreConfidence = self->_serverScoreConfidence;
          if (serverScoreConfidence == [equalCopy serverScoreConfidence])
          {
            localScoreConfidence = self->_localScoreConfidence;
            if (localScoreConfidence == [equalCopy localScoreConfidence])
            {
              domainEngagementScores = [(_SFPBEngagementSignal *)self domainEngagementScores];
              domainEngagementScores2 = [equalCopy domainEngagementScores];
              v14 = domainEngagementScores2;
              if ((domainEngagementScores != 0) != (domainEngagementScores2 == 0))
              {
                domainEngagementScores3 = [(_SFPBEngagementSignal *)self domainEngagementScores];
                if (!domainEngagementScores3)
                {

LABEL_15:
                  v20 = 1;
                  goto LABEL_13;
                }

                v16 = domainEngagementScores3;
                domainEngagementScores4 = [(_SFPBEngagementSignal *)self domainEngagementScores];
                domainEngagementScores5 = [equalCopy domainEngagementScores];
                v19 = [domainEngagementScores4 isEqual:domainEngagementScores5];

                if (v19)
                {
                  goto LABEL_15;
                }
              }

              else
              {
              }
            }
          }
        }
      }
    }
  }

  v20 = 0;
LABEL_13:

  return v20;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_SFPBEngagementSignal *)self version])
  {
    PBDataWriterWriteInt32Field();
  }

  [(_SFPBEngagementSignal *)self serverScore];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(_SFPBEngagementSignal *)self localScore];
  if (v6 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_SFPBEngagementSignal *)self serverScoreConfidence])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBEngagementSignal *)self localScoreConfidence])
  {
    PBDataWriterWriteInt32Field();
  }

  domainEngagementScores = [(_SFPBEngagementSignal *)self domainEngagementScores];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [domainEngagementScores countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(domainEngagementScores);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [domainEngagementScores countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addDomainEngagementScores:(id)scores
{
  scoresCopy = scores;
  domainEngagementScores = self->_domainEngagementScores;
  v8 = scoresCopy;
  if (!domainEngagementScores)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_domainEngagementScores;
    self->_domainEngagementScores = array;

    scoresCopy = v8;
    domainEngagementScores = self->_domainEngagementScores;
  }

  [(NSArray *)domainEngagementScores addObject:scoresCopy];
}

- (void)setDomainEngagementScores:(id)scores
{
  v4 = [scores copy];
  domainEngagementScores = self->_domainEngagementScores;
  self->_domainEngagementScores = v4;

  MEMORY[0x1EEE66BB8]();
}

@end