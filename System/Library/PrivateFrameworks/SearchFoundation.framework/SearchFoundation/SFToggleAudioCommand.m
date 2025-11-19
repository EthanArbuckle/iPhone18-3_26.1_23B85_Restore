@interface SFToggleAudioCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFToggleAudioCommand)initWithCoder:(id)a3;
- (SFToggleAudioCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFToggleAudioCommand

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFToggleAudioCommand;
  v3 = [(SFCommand *)&v12 hash];
  v4 = [(SFToggleAudioCommand *)self localMediaIdentifier];
  v5 = [v4 hash];
  v6 = [(SFToggleAudioCommand *)self persistentIdentifier];
  v7 = v5 ^ [v6 hash];
  v8 = v7 ^ [(SFToggleAudioCommand *)self mediaEntityType];
  v9 = [(SFToggleAudioCommand *)self universalLibraryIdentifier];
  v10 = v8 ^ [v9 hash];

  return v10 ^ v3;
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
    if ([(SFToggleAudioCommand *)v5 isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFToggleAudioCommand;
      if ([(SFCommand *)&v32 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFToggleAudioCommand *)self localMediaIdentifier];
        v8 = [(SFToggleAudioCommand *)v6 localMediaIdentifier];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        v9 = [(SFToggleAudioCommand *)self localMediaIdentifier];
        if (v9)
        {
          v10 = [(SFToggleAudioCommand *)self localMediaIdentifier];
          v3 = [(SFToggleAudioCommand *)v6 localMediaIdentifier];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = v10;
        }

        v12 = [(SFToggleAudioCommand *)self persistentIdentifier];
        v13 = [(SFToggleAudioCommand *)v6 persistentIdentifier];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        v15 = [(SFToggleAudioCommand *)self persistentIdentifier];
        if (v15)
        {
          v26 = v3;
          v16 = [(SFToggleAudioCommand *)self persistentIdentifier];
          v28 = [(SFToggleAudioCommand *)v6 persistentIdentifier];
          v29 = v16;
          if (![v16 isEqual:?])
          {
            v11 = 0;
            v3 = v26;
            goto LABEL_26;
          }

          v30 = v15;
          v3 = v26;
        }

        else
        {
          v30 = 0;
        }

        v17 = [(SFToggleAudioCommand *)self mediaEntityType];
        if (v17 == [(SFToggleAudioCommand *)v6 mediaEntityType])
        {
          v18 = [(SFToggleAudioCommand *)self universalLibraryIdentifier];
          v19 = [(SFToggleAudioCommand *)v6 universalLibraryIdentifier];
          if ((v18 != 0) != (v19 == 0))
          {
            v25 = v19;
            v27 = v18;
            v20 = [(SFToggleAudioCommand *)self universalLibraryIdentifier];
            if (v20)
            {
              v24 = v20;
              v23 = [(SFToggleAudioCommand *)self universalLibraryIdentifier];
              v21 = [(SFToggleAudioCommand *)v6 universalLibraryIdentifier];
              v11 = [v23 isEqual:v21];
            }

            else
            {

              v11 = 1;
            }

LABEL_25:
            v15 = v30;
            if (!v30)
            {
LABEL_27:

LABEL_28:
              v10 = v31;
              if (!v9)
              {
LABEL_30:

                goto LABEL_31;
              }

LABEL_29:

              goto LABEL_30;
            }

LABEL_26:

            goto LABEL_27;
          }
        }

        v11 = 0;
        goto LABEL_25;
      }
    }

    v11 = 0;
  }

LABEL_32:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SFToggleAudioCommand;
  v4 = [(SFCommand *)&v12 copyWithZone:a3];
  v5 = [(SFToggleAudioCommand *)self localMediaIdentifier];
  v6 = [v5 copy];
  [v4 setLocalMediaIdentifier:v6];

  v7 = [(SFToggleAudioCommand *)self persistentIdentifier];
  v8 = [v7 copy];
  [v4 setPersistentIdentifier:v8];

  [v4 setMediaEntityType:{-[SFToggleAudioCommand mediaEntityType](self, "mediaEntityType")}];
  v9 = [(SFToggleAudioCommand *)self universalLibraryIdentifier];
  v10 = [v9 copy];
  [v4 setUniversalLibraryIdentifier:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBToggleAudioCommand alloc] initWithFacade:self];
  v3 = [(_SFPBToggleAudioCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBToggleAudioCommand alloc] initWithFacade:self];
  v3 = [(_SFPBToggleAudioCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFToggleAudioCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFToggleAudioCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFToggleAudioCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 localMediaIdentifier];
    [(SFToggleAudioCommand *)v5 setLocalMediaIdentifier:v9];

    v10 = [(SFCommand *)v8 persistentIdentifier];
    [(SFToggleAudioCommand *)v5 setPersistentIdentifier:v10];

    [(SFToggleAudioCommand *)v5 setMediaEntityType:[(SFCommand *)v8 mediaEntityType]];
    v11 = [(SFCommand *)v8 universalLibraryIdentifier];
    [(SFToggleAudioCommand *)v5 setUniversalLibraryIdentifier:v11];

    v12 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v12];

    v13 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v13];

    v14 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v14];

    v15 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v15];
  }

  return v5;
}

- (SFToggleAudioCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SFToggleAudioCommand;
  v5 = [(SFToggleAudioCommand *)&v14 init];
  if (v5)
  {
    v6 = [v4 localMediaIdentifier];

    if (v6)
    {
      v7 = [v4 localMediaIdentifier];
      [(SFToggleAudioCommand *)v5 setLocalMediaIdentifier:v7];
    }

    v8 = [v4 persistentIdentifier];

    if (v8)
    {
      v9 = [v4 persistentIdentifier];
      [(SFToggleAudioCommand *)v5 setPersistentIdentifier:v9];
    }

    if ([v4 mediaEntityType])
    {
      -[SFToggleAudioCommand setMediaEntityType:](v5, "setMediaEntityType:", [v4 mediaEntityType]);
    }

    v10 = [v4 universalLibraryIdentifier];

    if (v10)
    {
      v11 = [v4 universalLibraryIdentifier];
      [(SFToggleAudioCommand *)v5 setUniversalLibraryIdentifier:v11];
    }

    v12 = v5;
  }

  return v5;
}

@end