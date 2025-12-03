@interface SFDomainEngagementScore
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFDomainEngagementScore)initWithCoder:(id)coder;
- (SFDomainEngagementScore)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFDomainEngagementScore

- (SFDomainEngagementScore)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v15.receiver = self;
  v15.super_class = SFDomainEngagementScore;
  v5 = [(SFDomainEngagementScore *)&v15 init];
  if (v5)
  {
    if ([protobufCopy domain])
    {
      -[SFDomainEngagementScore setDomain:](v5, "setDomain:", [protobufCopy domain]);
    }

    if ([protobufCopy scoreConfidence])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "scoreConfidence")}];
      [(SFDomainEngagementScore *)v5 setScoreConfidence:v6];
    }

    [protobufCopy score];
    if (v7 != 0.0)
    {
      v8 = MEMORY[0x1E696AD98];
      [protobufCopy score];
      v9 = [v8 numberWithFloat:?];
      [(SFDomainEngagementScore *)v5 setScore:v9];
    }

    [protobufCopy iFunScore];
    if (v10 != 0.0)
    {
      v11 = MEMORY[0x1E696AD98];
      [protobufCopy iFunScore];
      v12 = [v11 numberWithFloat:?];
      [(SFDomainEngagementScore *)v5 setIFunScore:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  domain = [(SFDomainEngagementScore *)self domain];
  scoreConfidence = [(SFDomainEngagementScore *)self scoreConfidence];
  v5 = [scoreConfidence hash] ^ domain;
  score = [(SFDomainEngagementScore *)self score];
  v7 = [score hash];
  iFunScore = [(SFDomainEngagementScore *)self iFunScore];
  v9 = v7 ^ [iFunScore hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFDomainEngagementScore *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      domain = [(SFDomainEngagementScore *)self domain];
      if (domain != [(SFDomainEngagementScore *)v6 domain])
      {
        v12 = 0;
LABEL_33:

        goto LABEL_34;
      }

      scoreConfidence = [(SFDomainEngagementScore *)self scoreConfidence];
      scoreConfidence2 = [(SFDomainEngagementScore *)v6 scoreConfidence];
      if ((scoreConfidence != 0) == (scoreConfidence2 == 0))
      {
        v12 = 0;
LABEL_32:

        goto LABEL_33;
      }

      scoreConfidence3 = [(SFDomainEngagementScore *)self scoreConfidence];
      if (scoreConfidence3)
      {
        scoreConfidence4 = [(SFDomainEngagementScore *)self scoreConfidence];
        scoreConfidence5 = [(SFDomainEngagementScore *)v6 scoreConfidence];
        if (![scoreConfidence4 isEqual:scoreConfidence5])
        {
          v12 = 0;
          goto LABEL_30;
        }

        v32 = scoreConfidence5;
      }

      score = [(SFDomainEngagementScore *)self score];
      score2 = [(SFDomainEngagementScore *)v6 score];
      v15 = score2;
      if ((score != 0) == (score2 == 0))
      {

        v12 = 0;
        goto LABEL_29;
      }

      score3 = [(SFDomainEngagementScore *)self score];
      if (score3)
      {
        v26 = score;
        score4 = [(SFDomainEngagementScore *)self score];
        score5 = [(SFDomainEngagementScore *)v6 score];
        v29 = score4;
        if (![score4 isEqual:?])
        {
          v12 = 0;
          score = v26;
          goto LABEL_27;
        }

        v30 = score3;
        v31 = scoreConfidence4;
        score = v26;
      }

      else
      {
        v30 = 0;
        v31 = scoreConfidence4;
      }

      iFunScore = [(SFDomainEngagementScore *)self iFunScore];
      iFunScore2 = [(SFDomainEngagementScore *)v6 iFunScore];
      if ((iFunScore != 0) == (iFunScore2 == 0))
      {

        v12 = 0;
        score3 = v30;
        scoreConfidence4 = v31;
        if (!v30)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v25 = iFunScore;
        v27 = iFunScore2;
        iFunScore3 = [(SFDomainEngagementScore *)self iFunScore];
        score3 = v30;
        if (iFunScore3)
        {
          v24 = iFunScore3;
          iFunScore4 = [(SFDomainEngagementScore *)self iFunScore];
          iFunScore5 = [(SFDomainEngagementScore *)v6 iFunScore];
          v12 = [iFunScore4 isEqual:?];
        }

        else
        {

          v12 = 1;
        }

        scoreConfidence4 = v31;
        if (!v30)
        {
          goto LABEL_28;
        }
      }

LABEL_27:

LABEL_28:
LABEL_29:
      scoreConfidence5 = v32;
      if (!scoreConfidence3)
      {
LABEL_31:

        goto LABEL_32;
      }

LABEL_30:

      goto LABEL_31;
    }

    v12 = 0;
  }

LABEL_34:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setDomain:{-[SFDomainEngagementScore domain](self, "domain")}];
  scoreConfidence = [(SFDomainEngagementScore *)self scoreConfidence];
  v6 = [scoreConfidence copy];
  [v4 setScoreConfidence:v6];

  score = [(SFDomainEngagementScore *)self score];
  v8 = [score copy];
  [v4 setScore:v8];

  iFunScore = [(SFDomainEngagementScore *)self iFunScore];
  v10 = [iFunScore copy];
  [v4 setIFunScore:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBDomainEngagementScore alloc] initWithFacade:self];
  jsonData = [(_SFPBDomainEngagementScore *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBDomainEngagementScore alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBDomainEngagementScore *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBDomainEngagementScore alloc] initWithFacade:self];
  data = [(_SFPBDomainEngagementScore *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFDomainEngagementScore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBDomainEngagementScore alloc] initWithData:v5];
  v7 = [(SFDomainEngagementScore *)self initWithProtobuf:v6];

  return v7;
}

@end