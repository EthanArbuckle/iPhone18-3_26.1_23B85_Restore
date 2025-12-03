@interface _SFPBDomainEngagementScore
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBDomainEngagementScore)initWithDictionary:(id)dictionary;
- (_SFPBDomainEngagementScore)initWithFacade:(id)facade;
- (_SFPBDomainEngagementScore)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBDomainEngagementScore

- (_SFPBDomainEngagementScore)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBDomainEngagementScore *)self init];
  if (v5)
  {
    if ([facadeCopy hasDomain])
    {
      -[_SFPBDomainEngagementScore setDomain:](v5, "setDomain:", [facadeCopy domain]);
    }

    scoreConfidence = [facadeCopy scoreConfidence];

    if (scoreConfidence)
    {
      scoreConfidence2 = [facadeCopy scoreConfidence];
      -[_SFPBDomainEngagementScore setScoreConfidence:](v5, "setScoreConfidence:", [scoreConfidence2 intValue]);
    }

    score = [facadeCopy score];

    if (score)
    {
      score2 = [facadeCopy score];
      [score2 floatValue];
      [(_SFPBDomainEngagementScore *)v5 setScore:?];
    }

    iFunScore = [facadeCopy iFunScore];

    if (iFunScore)
    {
      iFunScore2 = [facadeCopy iFunScore];
      [iFunScore2 floatValue];
      [(_SFPBDomainEngagementScore *)v5 setIFunScore:?];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBDomainEngagementScore)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBDomainEngagementScore;
  v5 = [(_SFPBDomainEngagementScore *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDomainEngagementScore setDomain:](v5, "setDomain:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"scoreConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDomainEngagementScore setScoreConfidence:](v5, "setScoreConfidence:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(_SFPBDomainEngagementScore *)v5 setScore:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"iFunScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(_SFPBDomainEngagementScore *)v5 setIFunScore:?];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBDomainEngagementScore)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBDomainEngagementScore *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBDomainEngagementScore *)self dictionaryRepresentation];
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
  if (self->_domain)
  {
    domain = [(_SFPBDomainEngagementScore *)self domain];
    if (domain >= 0x58)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", domain];
    }

    else
    {
      v5 = off_1E7ACDDA0[domain];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"domain"];
  }

  if (self->_iFunScore != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBDomainEngagementScore *)self iFunScore];
    v7 = [v6 numberWithFloat:?];
    [dictionary setObject:v7 forKeyedSubscript:@"iFunScore"];
  }

  if (self->_score != 0.0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(_SFPBDomainEngagementScore *)self score];
    v9 = [v8 numberWithFloat:?];
    [dictionary setObject:v9 forKeyedSubscript:@"score"];
  }

  if (self->_scoreConfidence)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBDomainEngagementScore scoreConfidence](self, "scoreConfidence")}];
    [dictionary setObject:v10 forKeyedSubscript:@"scoreConfidence"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  score = self->_score;
  v5 = score < 0.0;
  if (score == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v6 = score;
    if (v5)
    {
      v6 = -v6;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v9 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v9 += v7;
      }
    }

    else
    {
      v9 -= fabs(v7);
    }
  }

  iFunScore = self->_iFunScore;
  v11 = iFunScore < 0.0;
  if (iFunScore == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v12 = iFunScore;
    if (v11)
    {
      v12 = -v12;
    }

    *v2.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v3, v2).i64;
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
  }

  return (2654435761 * self->_scoreConfidence) ^ (2654435761 * self->_domain) ^ v9 ^ v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (domain = self->_domain, domain == objc_msgSend(equalCopy, "domain")) && (scoreConfidence = self->_scoreConfidence, scoreConfidence == objc_msgSend(equalCopy, "scoreConfidence")) && (score = self->_score, objc_msgSend(equalCopy, "score"), score == v8))
  {
    iFunScore = self->_iFunScore;
    [equalCopy iFunScore];
    v9 = iFunScore == v12;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBDomainEngagementScore *)self domain])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBDomainEngagementScore *)self scoreConfidence])
  {
    PBDataWriterWriteInt32Field();
  }

  [(_SFPBDomainEngagementScore *)self score];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(_SFPBDomainEngagementScore *)self iFunScore];
  v5 = toCopy;
  if (v6 != 0.0)
  {
    PBDataWriterWriteFloatField();
    v5 = toCopy;
  }
}

@end