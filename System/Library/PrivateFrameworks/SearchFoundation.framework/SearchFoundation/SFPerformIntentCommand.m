@interface SFPerformIntentCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPerformIntentCommand)initWithCoder:(id)a3;
- (SFPerformIntentCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPerformIntentCommand

- (unint64_t)hash
{
  v14.receiver = self;
  v14.super_class = SFPerformIntentCommand;
  v3 = [(SFCommand *)&v14 hash];
  v4 = [(SFPerformIntentCommand *)self intentMessageName];
  v5 = [v4 hash];
  v6 = [(SFPerformIntentCommand *)self applicationBundleIdentifier];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFPerformIntentCommand *)self intentMessageData];
  v9 = v7 ^ [v8 hash];
  v10 = v9 ^ [(SFPerformIntentCommand *)self isRunnableWorkflow];
  v11 = [(SFPerformIntentCommand *)self biomeStreamIdentifier];
  v12 = v10 ^ [v11 hash];

  return v12 ^ v3;
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
    if ([(SFPerformIntentCommand *)v5 isMemberOfClass:objc_opt_class()])
    {
      v44.receiver = self;
      v44.super_class = SFPerformIntentCommand;
      if ([(SFCommand *)&v44 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFPerformIntentCommand *)self intentMessageName];
        v8 = [(SFPerformIntentCommand *)v6 intentMessageName];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_40:

          goto LABEL_41;
        }

        v9 = [(SFPerformIntentCommand *)self intentMessageName];
        if (v9)
        {
          v10 = [(SFPerformIntentCommand *)self intentMessageName];
          v3 = [(SFPerformIntentCommand *)v6 intentMessageName];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_38;
          }

          v43 = v10;
        }

        v12 = [(SFPerformIntentCommand *)self applicationBundleIdentifier];
        v13 = [(SFPerformIntentCommand *)v6 applicationBundleIdentifier];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_37;
        }

        v15 = [(SFPerformIntentCommand *)self applicationBundleIdentifier];
        if (v15)
        {
          v36 = v9;
          v16 = v14;
          v17 = v12;
          v18 = [(SFPerformIntentCommand *)self applicationBundleIdentifier];
          v38 = [(SFPerformIntentCommand *)v6 applicationBundleIdentifier];
          v39 = v18;
          if (![v18 isEqual:?])
          {
            v11 = 0;
            v12 = v17;
            v14 = v16;
            v9 = v36;
            goto LABEL_35;
          }

          v40 = v3;
          v42 = v15;
          v12 = v17;
          v14 = v16;
          v9 = v36;
        }

        else
        {
          v40 = v3;
          v42 = 0;
        }

        v19 = [(SFPerformIntentCommand *)self intentMessageData];
        v20 = [(SFPerformIntentCommand *)v6 intentMessageData];
        if ((v19 != 0) == (v20 == 0))
        {

          v11 = 0;
          v3 = v40;
          v15 = v42;
          if (!v42)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v34 = v20;
        v35 = v19;
        [(SFPerformIntentCommand *)self intentMessageData];
        v37 = v15 = v42;
        if (v37)
        {
          v21 = [(SFPerformIntentCommand *)self intentMessageData];
          v32 = [(SFPerformIntentCommand *)v6 intentMessageData];
          v33 = v21;
          v22 = [v21 isEqual:?];
          v3 = v40;
          if (!v22)
          {
            v11 = 0;
LABEL_33:

LABEL_34:
            if (!v15)
            {
LABEL_36:

LABEL_37:
              v10 = v43;
              if (!v9)
              {
LABEL_39:

                goto LABEL_40;
              }

LABEL_38:

              goto LABEL_39;
            }

LABEL_35:

            goto LABEL_36;
          }
        }

        else
        {
          v3 = v40;
        }

        v23 = [(SFPerformIntentCommand *)self isRunnableWorkflow];
        if (v23 == [(SFPerformIntentCommand *)v6 isRunnableWorkflow])
        {
          v24 = [(SFPerformIntentCommand *)self biomeStreamIdentifier];
          v25 = [(SFPerformIntentCommand *)v6 biomeStreamIdentifier];
          if ((v24 != 0) != (v25 == 0))
          {
            v31 = v25;
            v41 = v24;
            v26 = [(SFPerformIntentCommand *)self biomeStreamIdentifier];
            if (v26)
            {
              v30 = v26;
              v29 = [(SFPerformIntentCommand *)self biomeStreamIdentifier];
              v27 = [(SFPerformIntentCommand *)v6 biomeStreamIdentifier];
              v11 = [v29 isEqual:v27];
            }

            else
            {

              v11 = 1;
            }

LABEL_32:
            v15 = v42;
            if (!v37)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }
        }

        v11 = 0;
        goto LABEL_32;
      }
    }

    v11 = 0;
  }

LABEL_41:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = SFPerformIntentCommand;
  v4 = [(SFCommand *)&v14 copyWithZone:a3];
  v5 = [(SFPerformIntentCommand *)self intentMessageName];
  v6 = [v5 copy];
  [v4 setIntentMessageName:v6];

  v7 = [(SFPerformIntentCommand *)self applicationBundleIdentifier];
  v8 = [v7 copy];
  [v4 setApplicationBundleIdentifier:v8];

  v9 = [(SFPerformIntentCommand *)self intentMessageData];
  v10 = [v9 copy];
  [v4 setIntentMessageData:v10];

  [v4 setIsRunnableWorkflow:{-[SFPerformIntentCommand isRunnableWorkflow](self, "isRunnableWorkflow")}];
  v11 = [(SFPerformIntentCommand *)self biomeStreamIdentifier];
  v12 = [v11 copy];
  [v4 setBiomeStreamIdentifier:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPerformIntentCommand alloc] initWithFacade:self];
  v3 = [(_SFPBPerformIntentCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPerformIntentCommand alloc] initWithFacade:self];
  v3 = [(_SFPBPerformIntentCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFPerformIntentCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFPerformIntentCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFPerformIntentCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 intentMessageName];
    [(SFPerformIntentCommand *)v5 setIntentMessageName:v9];

    v10 = [(SFCommand *)v8 applicationBundleIdentifier];
    [(SFPerformIntentCommand *)v5 setApplicationBundleIdentifier:v10];

    v11 = [(SFCommand *)v8 intentMessageData];
    [(SFPerformIntentCommand *)v5 setIntentMessageData:v11];

    [(SFPerformIntentCommand *)v5 setIsRunnableWorkflow:[(SFCommand *)v8 isRunnableWorkflow]];
    v12 = [(SFCommand *)v8 biomeStreamIdentifier];
    [(SFPerformIntentCommand *)v5 setBiomeStreamIdentifier:v12];

    v13 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v13];

    v14 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v14];

    v15 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v15];

    v16 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v16];
  }

  return v5;
}

- (SFPerformIntentCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFPerformIntentCommand;
  v5 = [(SFPerformIntentCommand *)&v16 init];
  if (v5)
  {
    v6 = [v4 intentMessageName];

    if (v6)
    {
      v7 = [v4 intentMessageName];
      [(SFPerformIntentCommand *)v5 setIntentMessageName:v7];
    }

    v8 = [v4 applicationBundleIdentifier];

    if (v8)
    {
      v9 = [v4 applicationBundleIdentifier];
      [(SFPerformIntentCommand *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = [v4 intentMessageData];

    if (v10)
    {
      v11 = [v4 intentMessageData];
      [(SFPerformIntentCommand *)v5 setIntentMessageData:v11];
    }

    if ([v4 isRunnableWorkflow])
    {
      -[SFPerformIntentCommand setIsRunnableWorkflow:](v5, "setIsRunnableWorkflow:", [v4 isRunnableWorkflow]);
    }

    v12 = [v4 biomeStreamIdentifier];

    if (v12)
    {
      v13 = [v4 biomeStreamIdentifier];
      [(SFPerformIntentCommand *)v5 setBiomeStreamIdentifier:v13];
    }

    v14 = v5;
  }

  return v5;
}

@end