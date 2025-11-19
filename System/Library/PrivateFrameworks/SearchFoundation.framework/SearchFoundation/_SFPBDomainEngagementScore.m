@interface _SFPBDomainEngagementScore
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBDomainEngagementScore)initWithDictionary:(id)a3;
- (_SFPBDomainEngagementScore)initWithFacade:(id)a3;
- (_SFPBDomainEngagementScore)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBDomainEngagementScore

- (_SFPBDomainEngagementScore)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBDomainEngagementScore *)self init];
  if (v5)
  {
    if ([v4 hasDomain])
    {
      -[_SFPBDomainEngagementScore setDomain:](v5, "setDomain:", [v4 domain]);
    }

    v6 = [v4 scoreConfidence];

    if (v6)
    {
      v7 = [v4 scoreConfidence];
      -[_SFPBDomainEngagementScore setScoreConfidence:](v5, "setScoreConfidence:", [v7 intValue]);
    }

    v8 = [v4 score];

    if (v8)
    {
      v9 = [v4 score];
      [v9 floatValue];
      [(_SFPBDomainEngagementScore *)v5 setScore:?];
    }

    v10 = [v4 iFunScore];

    if (v10)
    {
      v11 = [v4 iFunScore];
      [v11 floatValue];
      [(_SFPBDomainEngagementScore *)v5 setIFunScore:?];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBDomainEngagementScore)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBDomainEngagementScore;
  v5 = [(_SFPBDomainEngagementScore *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"domain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDomainEngagementScore setDomain:](v5, "setDomain:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"scoreConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDomainEngagementScore setScoreConfidence:](v5, "setScoreConfidence:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(_SFPBDomainEngagementScore *)v5 setScore:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"iFunScore"];
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

- (_SFPBDomainEngagementScore)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBDomainEngagementScore *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBDomainEngagementScore *)self dictionaryRepresentation];
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
  if (self->_domain)
  {
    v4 = [(_SFPBDomainEngagementScore *)self domain];
    if (v4 >= 0x58)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7ACDDA0[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"domain"];
  }

  if (self->_iFunScore != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBDomainEngagementScore *)self iFunScore];
    v7 = [v6 numberWithFloat:?];
    [v3 setObject:v7 forKeyedSubscript:@"iFunScore"];
  }

  if (self->_score != 0.0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(_SFPBDomainEngagementScore *)self score];
    v9 = [v8 numberWithFloat:?];
    [v3 setObject:v9 forKeyedSubscript:@"score"];
  }

  if (self->_scoreConfidence)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBDomainEngagementScore scoreConfidence](self, "scoreConfidence")}];
    [v3 setObject:v10 forKeyedSubscript:@"scoreConfidence"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (domain = self->_domain, domain == objc_msgSend(v4, "domain")) && (scoreConfidence = self->_scoreConfidence, scoreConfidence == objc_msgSend(v4, "scoreConfidence")) && (score = self->_score, objc_msgSend(v4, "score"), score == v8))
  {
    iFunScore = self->_iFunScore;
    [v4 iFunScore];
    v9 = iFunScore == v12;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
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
  v5 = v7;
  if (v6 != 0.0)
  {
    PBDataWriterWriteFloatField();
    v5 = v7;
  }
}

@end