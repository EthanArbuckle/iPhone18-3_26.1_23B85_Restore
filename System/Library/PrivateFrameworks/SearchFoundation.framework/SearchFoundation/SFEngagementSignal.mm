@interface SFEngagementSignal
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFEngagementSignal)initWithCoder:(id)coder;
- (SFEngagementSignal)initWithProtobuf:(id)protobuf;
- (SFEngagementSignal)initWithVersion:(id)version serverScore:(id)score severScoreConfidence:(id)confidence localScore:(id)localScore localScoreConfidence:(id)scoreConfidence domainScores:(id)scores;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFEngagementSignal

- (SFEngagementSignal)initWithVersion:(id)version serverScore:(id)score severScoreConfidence:(id)confidence localScore:(id)localScore localScoreConfidence:(id)scoreConfidence domainScores:(id)scores
{
  versionCopy = version;
  scoreCopy = score;
  confidenceCopy = confidence;
  localScoreCopy = localScore;
  scoreConfidenceCopy = scoreConfidence;
  scoresCopy = scores;
  v23.receiver = self;
  v23.super_class = SFEngagementSignal;
  v20 = [(SFEngagementSignal *)&v23 init];
  v21 = v20;
  if (v20)
  {
    [(SFEngagementSignal *)v20 setVersion:versionCopy];
    [(SFEngagementSignal *)v21 setServerScore:scoreCopy];
    [(SFEngagementSignal *)v21 setServerScoreConfidence:confidenceCopy];
    [(SFEngagementSignal *)v21 setLocalScore:localScoreCopy];
    [(SFEngagementSignal *)v21 setLocalScoreConfidence:scoreConfidenceCopy];
    [(SFEngagementSignal *)v21 setDomainEngagementScores:scoresCopy];
  }

  return v21;
}

- (SFEngagementSignal)initWithProtobuf:(id)protobuf
{
  v32 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v30.receiver = self;
  v30.super_class = SFEngagementSignal;
  v5 = [(SFEngagementSignal *)&v30 init];
  if (v5)
  {
    if ([protobufCopy version])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "version")}];
      [(SFEngagementSignal *)v5 setVersion:v6];
    }

    [protobufCopy serverScore];
    if (v7 != 0.0)
    {
      v8 = MEMORY[0x1E696AD98];
      [protobufCopy serverScore];
      v9 = [v8 numberWithFloat:?];
      [(SFEngagementSignal *)v5 setServerScore:v9];
    }

    [protobufCopy localScore];
    if (v10 != 0.0)
    {
      v11 = MEMORY[0x1E696AD98];
      [protobufCopy localScore];
      v12 = [v11 numberWithFloat:?];
      [(SFEngagementSignal *)v5 setLocalScore:v12];
    }

    if ([protobufCopy serverScoreConfidence])
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "serverScoreConfidence")}];
      [(SFEngagementSignal *)v5 setServerScoreConfidence:v13];
    }

    if ([protobufCopy localScoreConfidence])
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "localScoreConfidence")}];
      [(SFEngagementSignal *)v5 setLocalScoreConfidence:v14];
    }

    domainEngagementScores = [protobufCopy domainEngagementScores];
    if (domainEngagementScores)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v16 = 0;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    domainEngagementScores2 = [protobufCopy domainEngagementScores];
    v18 = [domainEngagementScores2 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(domainEngagementScores2);
          }

          v22 = [[SFDomainEngagementScore alloc] initWithProtobuf:*(*(&v26 + 1) + 8 * i)];
          if (v22)
          {
            [v16 addObject:v22];
          }
        }

        v19 = [domainEngagementScores2 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v19);
    }

    [(SFEngagementSignal *)v5 setDomainEngagementScores:v16];
    v23 = v5;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  version = [(SFEngagementSignal *)self version];
  v4 = [version hash];
  serverScore = [(SFEngagementSignal *)self serverScore];
  v6 = [serverScore hash] ^ v4;
  localScore = [(SFEngagementSignal *)self localScore];
  v8 = [localScore hash];
  serverScoreConfidence = [(SFEngagementSignal *)self serverScoreConfidence];
  v10 = v6 ^ v8 ^ [serverScoreConfidence hash];
  localScoreConfidence = [(SFEngagementSignal *)self localScoreConfidence];
  v12 = [localScoreConfidence hash];
  domainEngagementScores = [(SFEngagementSignal *)self domainEngagementScores];
  v14 = v12 ^ [domainEngagementScores hash];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFEngagementSignal *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      version = [(SFEngagementSignal *)self version];
      version2 = [(SFEngagementSignal *)v6 version];
      if ((version != 0) == (version2 == 0))
      {
        v11 = 0;
LABEL_36:

        goto LABEL_37;
      }

      version3 = [(SFEngagementSignal *)self version];
      if (version3)
      {
        version4 = [(SFEngagementSignal *)self version];
        version5 = [(SFEngagementSignal *)v6 version];
        if (![version4 isEqual:?])
        {
          v11 = 0;
          goto LABEL_34;
        }

        v54 = version4;
      }

      serverScore = [(SFEngagementSignal *)self serverScore];
      serverScore2 = [(SFEngagementSignal *)v6 serverScore];
      if ((serverScore != 0) == (serverScore2 == 0))
      {
        goto LABEL_32;
      }

      serverScore3 = [(SFEngagementSignal *)self serverScore];
      if (serverScore3)
      {
        serverScore4 = [(SFEngagementSignal *)self serverScore];
        serverScore5 = [(SFEngagementSignal *)v6 serverScore];
        if (([serverScore4 isEqual:serverScore5] & 1) == 0)
        {

LABEL_31:
LABEL_32:

          v11 = 0;
          goto LABEL_33;
        }

        v51 = serverScore4;
        v53 = version2;
        v14 = version5;
        v15 = serverScore3;
      }

      else
      {
        v53 = version2;
        v14 = version5;
        v15 = 0;
      }

      v52 = serverScore5;
      version5 = v14;
      localScore = [(SFEngagementSignal *)self localScore];
      localScore2 = [(SFEngagementSignal *)v6 localScore];
      serverScore3 = v15;
      version2 = v53;
      if ((localScore != 0) != (localScore2 == 0))
      {
        v50 = localScore2;
        localScore3 = [(SFEngagementSignal *)self localScore];
        if (localScore3)
        {
          localScore4 = [(SFEngagementSignal *)self localScore];
          localScore5 = [(SFEngagementSignal *)v6 localScore];
          v47 = localScore4;
          if (![localScore4 isEqual:?])
          {
            v11 = 0;
            v24 = localScore3;
            goto LABEL_56;
          }

          v48 = v15;
        }

        else
        {
          v48 = v15;
        }

        serverScoreConfidence = [(SFEngagementSignal *)self serverScoreConfidence];
        serverScoreConfidence2 = [(SFEngagementSignal *)v6 serverScoreConfidence];
        if ((serverScoreConfidence != 0) != (serverScoreConfidence2 == 0))
        {
          v45 = serverScoreConfidence2;
          [(SFEngagementSignal *)self serverScoreConfidence];
          serverScore3 = v48;
          v44 = v43 = serverScoreConfidence;
          if (v44)
          {
            serverScoreConfidence3 = [(SFEngagementSignal *)self serverScoreConfidence];
            serverScoreConfidence4 = [(SFEngagementSignal *)v6 serverScoreConfidence];
            v42 = serverScoreConfidence3;
            if (![serverScoreConfidence3 isEqual:?])
            {
              v11 = 0;
              v22 = v44;
LABEL_54:

LABEL_55:
              v24 = localScore3;
              if (!localScore3)
              {
LABEL_57:

                if (serverScore3)
                {
                }

LABEL_33:
                version4 = v54;
                if (!version3)
                {
LABEL_35:

                  goto LABEL_36;
                }

LABEL_34:

                goto LABEL_35;
              }

LABEL_56:

              goto LABEL_57;
            }
          }

          localScoreConfidence = [(SFEngagementSignal *)self localScoreConfidence];
          localScoreConfidence2 = [(SFEngagementSignal *)v6 localScoreConfidence];
          if ((localScoreConfidence != 0) == (localScoreConfidence2 == 0))
          {

            v11 = 0;
            serverScore3 = v48;
            goto LABEL_53;
          }

          v39 = localScoreConfidence;
          v40 = localScoreConfidence2;
          [(SFEngagementSignal *)self localScoreConfidence];
          v38 = serverScore3 = v48;
          if (v38 && (-[SFEngagementSignal localScoreConfidence](self, "localScoreConfidence"), v27 = objc_claimAutoreleasedReturnValue(), -[SFEngagementSignal localScoreConfidence](v6, "localScoreConfidence"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v27, ![v27 isEqual:?]))
          {
            v11 = 0;
            v32 = v38;
          }

          else
          {
            domainEngagementScores = [(SFEngagementSignal *)self domainEngagementScores];
            domainEngagementScores2 = [(SFEngagementSignal *)v6 domainEngagementScores];
            if ((domainEngagementScores != 0) == (domainEngagementScores2 == 0))
            {

              v11 = 0;
              serverScore3 = v48;
            }

            else
            {
              v35 = domainEngagementScores2;
              domainEngagementScores3 = [(SFEngagementSignal *)self domainEngagementScores];
              serverScore3 = v48;
              if (domainEngagementScores3)
              {
                v34 = domainEngagementScores3;
                domainEngagementScores4 = [(SFEngagementSignal *)self domainEngagementScores];
                domainEngagementScores5 = [(SFEngagementSignal *)v6 domainEngagementScores];
                v11 = [domainEngagementScores4 isEqual:?];
              }

              else
              {

                v11 = 1;
              }
            }

            v32 = v38;
            if (!v38)
            {
              goto LABEL_52;
            }
          }

LABEL_52:
LABEL_53:
          v22 = v44;
          if (!v44)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        serverScore3 = v48;
        if (localScore3)
        {
        }

        localScore2 = v50;
      }

      if (serverScore3)
      {
      }

      goto LABEL_31;
    }

    v11 = 0;
  }

LABEL_37:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  version = [(SFEngagementSignal *)self version];
  v6 = [version copy];
  [v4 setVersion:v6];

  serverScore = [(SFEngagementSignal *)self serverScore];
  v8 = [serverScore copy];
  [v4 setServerScore:v8];

  localScore = [(SFEngagementSignal *)self localScore];
  v10 = [localScore copy];
  [v4 setLocalScore:v10];

  serverScoreConfidence = [(SFEngagementSignal *)self serverScoreConfidence];
  v12 = [serverScoreConfidence copy];
  [v4 setServerScoreConfidence:v12];

  localScoreConfidence = [(SFEngagementSignal *)self localScoreConfidence];
  v14 = [localScoreConfidence copy];
  [v4 setLocalScoreConfidence:v14];

  domainEngagementScores = [(SFEngagementSignal *)self domainEngagementScores];
  v16 = [domainEngagementScores copy];
  [v4 setDomainEngagementScores:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBEngagementSignal alloc] initWithFacade:self];
  jsonData = [(_SFPBEngagementSignal *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBEngagementSignal alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBEngagementSignal *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBEngagementSignal alloc] initWithFacade:self];
  data = [(_SFPBEngagementSignal *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFEngagementSignal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBEngagementSignal alloc] initWithData:v5];
  v7 = [(SFEngagementSignal *)self initWithProtobuf:v6];

  return v7;
}

@end