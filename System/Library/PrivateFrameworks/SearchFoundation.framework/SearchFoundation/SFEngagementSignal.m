@interface SFEngagementSignal
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFEngagementSignal)initWithCoder:(id)a3;
- (SFEngagementSignal)initWithProtobuf:(id)a3;
- (SFEngagementSignal)initWithVersion:(id)a3 serverScore:(id)a4 severScoreConfidence:(id)a5 localScore:(id)a6 localScoreConfidence:(id)a7 domainScores:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFEngagementSignal

- (SFEngagementSignal)initWithVersion:(id)a3 serverScore:(id)a4 severScoreConfidence:(id)a5 localScore:(id)a6 localScoreConfidence:(id)a7 domainScores:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v23.receiver = self;
  v23.super_class = SFEngagementSignal;
  v20 = [(SFEngagementSignal *)&v23 init];
  v21 = v20;
  if (v20)
  {
    [(SFEngagementSignal *)v20 setVersion:v14];
    [(SFEngagementSignal *)v21 setServerScore:v15];
    [(SFEngagementSignal *)v21 setServerScoreConfidence:v16];
    [(SFEngagementSignal *)v21 setLocalScore:v17];
    [(SFEngagementSignal *)v21 setLocalScoreConfidence:v18];
    [(SFEngagementSignal *)v21 setDomainEngagementScores:v19];
  }

  return v21;
}

- (SFEngagementSignal)initWithProtobuf:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = SFEngagementSignal;
  v5 = [(SFEngagementSignal *)&v30 init];
  if (v5)
  {
    if ([v4 version])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "version")}];
      [(SFEngagementSignal *)v5 setVersion:v6];
    }

    [v4 serverScore];
    if (v7 != 0.0)
    {
      v8 = MEMORY[0x1E696AD98];
      [v4 serverScore];
      v9 = [v8 numberWithFloat:?];
      [(SFEngagementSignal *)v5 setServerScore:v9];
    }

    [v4 localScore];
    if (v10 != 0.0)
    {
      v11 = MEMORY[0x1E696AD98];
      [v4 localScore];
      v12 = [v11 numberWithFloat:?];
      [(SFEngagementSignal *)v5 setLocalScore:v12];
    }

    if ([v4 serverScoreConfidence])
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "serverScoreConfidence")}];
      [(SFEngagementSignal *)v5 setServerScoreConfidence:v13];
    }

    if ([v4 localScoreConfidence])
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "localScoreConfidence")}];
      [(SFEngagementSignal *)v5 setLocalScoreConfidence:v14];
    }

    v15 = [v4 domainEngagementScores];
    if (v15)
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
    v17 = [v4 domainEngagementScores];
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = [[SFDomainEngagementScore alloc] initWithProtobuf:*(*(&v26 + 1) + 8 * i)];
          if (v22)
          {
            [v16 addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
  v3 = [(SFEngagementSignal *)self version];
  v4 = [v3 hash];
  v5 = [(SFEngagementSignal *)self serverScore];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFEngagementSignal *)self localScore];
  v8 = [v7 hash];
  v9 = [(SFEngagementSignal *)self serverScoreConfidence];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(SFEngagementSignal *)self localScoreConfidence];
  v12 = [v11 hash];
  v13 = [(SFEngagementSignal *)self domainEngagementScores];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFEngagementSignal *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFEngagementSignal *)self version];
      v8 = [(SFEngagementSignal *)v6 version];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_36:

        goto LABEL_37;
      }

      v9 = [(SFEngagementSignal *)self version];
      if (v9)
      {
        v10 = [(SFEngagementSignal *)self version];
        v57 = [(SFEngagementSignal *)v6 version];
        if (![v10 isEqual:?])
        {
          v11 = 0;
          goto LABEL_34;
        }

        v54 = v10;
      }

      v56 = [(SFEngagementSignal *)self serverScore];
      v55 = [(SFEngagementSignal *)v6 serverScore];
      if ((v56 != 0) == (v55 == 0))
      {
        goto LABEL_32;
      }

      v12 = [(SFEngagementSignal *)self serverScore];
      if (v12)
      {
        v13 = [(SFEngagementSignal *)self serverScore];
        v3 = [(SFEngagementSignal *)v6 serverScore];
        if (([v13 isEqual:v3] & 1) == 0)
        {

LABEL_31:
LABEL_32:

          v11 = 0;
          goto LABEL_33;
        }

        v51 = v13;
        v53 = v8;
        v14 = v57;
        v15 = v12;
      }

      else
      {
        v53 = v8;
        v14 = v57;
        v15 = 0;
      }

      v52 = v3;
      v57 = v14;
      v16 = [(SFEngagementSignal *)self localScore];
      v17 = [(SFEngagementSignal *)v6 localScore];
      v12 = v15;
      v8 = v53;
      if ((v16 != 0) != (v17 == 0))
      {
        v50 = v17;
        v49 = [(SFEngagementSignal *)self localScore];
        if (v49)
        {
          v18 = [(SFEngagementSignal *)self localScore];
          v46 = [(SFEngagementSignal *)v6 localScore];
          v47 = v18;
          if (![v18 isEqual:?])
          {
            v11 = 0;
            v24 = v49;
            goto LABEL_56;
          }

          v48 = v15;
        }

        else
        {
          v48 = v15;
        }

        v19 = [(SFEngagementSignal *)self serverScoreConfidence];
        v20 = [(SFEngagementSignal *)v6 serverScoreConfidence];
        if ((v19 != 0) != (v20 == 0))
        {
          v45 = v20;
          [(SFEngagementSignal *)self serverScoreConfidence];
          v12 = v48;
          v44 = v43 = v19;
          if (v44)
          {
            v21 = [(SFEngagementSignal *)self serverScoreConfidence];
            v41 = [(SFEngagementSignal *)v6 serverScoreConfidence];
            v42 = v21;
            if (![v21 isEqual:?])
            {
              v11 = 0;
              v22 = v44;
LABEL_54:

LABEL_55:
              v24 = v49;
              if (!v49)
              {
LABEL_57:

                if (v12)
                {
                }

LABEL_33:
                v10 = v54;
                if (!v9)
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

          v25 = [(SFEngagementSignal *)self localScoreConfidence];
          v26 = [(SFEngagementSignal *)v6 localScoreConfidence];
          if ((v25 != 0) == (v26 == 0))
          {

            v11 = 0;
            v12 = v48;
            goto LABEL_53;
          }

          v39 = v25;
          v40 = v26;
          [(SFEngagementSignal *)self localScoreConfidence];
          v38 = v12 = v48;
          if (v38 && (-[SFEngagementSignal localScoreConfidence](self, "localScoreConfidence"), v27 = objc_claimAutoreleasedReturnValue(), -[SFEngagementSignal localScoreConfidence](v6, "localScoreConfidence"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v27, ![v27 isEqual:?]))
          {
            v11 = 0;
            v32 = v38;
          }

          else
          {
            v28 = [(SFEngagementSignal *)self domainEngagementScores];
            v29 = [(SFEngagementSignal *)v6 domainEngagementScores];
            if ((v28 != 0) == (v29 == 0))
            {

              v11 = 0;
              v12 = v48;
            }

            else
            {
              v35 = v29;
              v30 = [(SFEngagementSignal *)self domainEngagementScores];
              v12 = v48;
              if (v30)
              {
                v34 = v30;
                v33 = [(SFEngagementSignal *)self domainEngagementScores];
                v31 = [(SFEngagementSignal *)v6 domainEngagementScores];
                v11 = [v33 isEqual:?];
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

        v12 = v48;
        if (v49)
        {
        }

        v17 = v50;
      }

      if (v12)
      {
      }

      goto LABEL_31;
    }

    v11 = 0;
  }

LABEL_37:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFEngagementSignal *)self version];
  v6 = [v5 copy];
  [v4 setVersion:v6];

  v7 = [(SFEngagementSignal *)self serverScore];
  v8 = [v7 copy];
  [v4 setServerScore:v8];

  v9 = [(SFEngagementSignal *)self localScore];
  v10 = [v9 copy];
  [v4 setLocalScore:v10];

  v11 = [(SFEngagementSignal *)self serverScoreConfidence];
  v12 = [v11 copy];
  [v4 setServerScoreConfidence:v12];

  v13 = [(SFEngagementSignal *)self localScoreConfidence];
  v14 = [v13 copy];
  [v4 setLocalScoreConfidence:v14];

  v15 = [(SFEngagementSignal *)self domainEngagementScores];
  v16 = [v15 copy];
  [v4 setDomainEngagementScores:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBEngagementSignal alloc] initWithFacade:self];
  v3 = [(_SFPBEngagementSignal *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBEngagementSignal alloc] initWithFacade:self];
  v3 = [(_SFPBEngagementSignal *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBEngagementSignal alloc] initWithFacade:self];
  v5 = [(_SFPBEngagementSignal *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFEngagementSignal)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBEngagementSignal alloc] initWithData:v5];
  v7 = [(SFEngagementSignal *)self initWithProtobuf:v6];

  return v7;
}

@end