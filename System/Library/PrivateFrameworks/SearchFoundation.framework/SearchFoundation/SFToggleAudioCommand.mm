@interface SFToggleAudioCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFToggleAudioCommand)initWithCoder:(id)coder;
- (SFToggleAudioCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFToggleAudioCommand

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFToggleAudioCommand;
  v3 = [(SFCommand *)&v12 hash];
  localMediaIdentifier = [(SFToggleAudioCommand *)self localMediaIdentifier];
  v5 = [localMediaIdentifier hash];
  persistentIdentifier = [(SFToggleAudioCommand *)self persistentIdentifier];
  v7 = v5 ^ [persistentIdentifier hash];
  v8 = v7 ^ [(SFToggleAudioCommand *)self mediaEntityType];
  universalLibraryIdentifier = [(SFToggleAudioCommand *)self universalLibraryIdentifier];
  v10 = v8 ^ [universalLibraryIdentifier hash];

  return v10 ^ v3;
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
    if ([(SFToggleAudioCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFToggleAudioCommand;
      if ([(SFCommand *)&v32 isEqual:equalCopy])
      {
        v6 = equalCopy;
        localMediaIdentifier = [(SFToggleAudioCommand *)self localMediaIdentifier];
        localMediaIdentifier2 = [(SFToggleAudioCommand *)v6 localMediaIdentifier];
        if ((localMediaIdentifier != 0) == (localMediaIdentifier2 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        localMediaIdentifier3 = [(SFToggleAudioCommand *)self localMediaIdentifier];
        if (localMediaIdentifier3)
        {
          localMediaIdentifier4 = [(SFToggleAudioCommand *)self localMediaIdentifier];
          localMediaIdentifier5 = [(SFToggleAudioCommand *)v6 localMediaIdentifier];
          if (![localMediaIdentifier4 isEqual:localMediaIdentifier5])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = localMediaIdentifier4;
        }

        persistentIdentifier = [(SFToggleAudioCommand *)self persistentIdentifier];
        persistentIdentifier2 = [(SFToggleAudioCommand *)v6 persistentIdentifier];
        v14 = persistentIdentifier2;
        if ((persistentIdentifier != 0) == (persistentIdentifier2 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        persistentIdentifier3 = [(SFToggleAudioCommand *)self persistentIdentifier];
        if (persistentIdentifier3)
        {
          v26 = localMediaIdentifier5;
          persistentIdentifier4 = [(SFToggleAudioCommand *)self persistentIdentifier];
          persistentIdentifier5 = [(SFToggleAudioCommand *)v6 persistentIdentifier];
          v29 = persistentIdentifier4;
          if (![persistentIdentifier4 isEqual:?])
          {
            v11 = 0;
            localMediaIdentifier5 = v26;
            goto LABEL_26;
          }

          v30 = persistentIdentifier3;
          localMediaIdentifier5 = v26;
        }

        else
        {
          v30 = 0;
        }

        mediaEntityType = [(SFToggleAudioCommand *)self mediaEntityType];
        if (mediaEntityType == [(SFToggleAudioCommand *)v6 mediaEntityType])
        {
          universalLibraryIdentifier = [(SFToggleAudioCommand *)self universalLibraryIdentifier];
          universalLibraryIdentifier2 = [(SFToggleAudioCommand *)v6 universalLibraryIdentifier];
          if ((universalLibraryIdentifier != 0) != (universalLibraryIdentifier2 == 0))
          {
            v25 = universalLibraryIdentifier2;
            v27 = universalLibraryIdentifier;
            universalLibraryIdentifier3 = [(SFToggleAudioCommand *)self universalLibraryIdentifier];
            if (universalLibraryIdentifier3)
            {
              v24 = universalLibraryIdentifier3;
              universalLibraryIdentifier4 = [(SFToggleAudioCommand *)self universalLibraryIdentifier];
              universalLibraryIdentifier5 = [(SFToggleAudioCommand *)v6 universalLibraryIdentifier];
              v11 = [universalLibraryIdentifier4 isEqual:universalLibraryIdentifier5];
            }

            else
            {

              v11 = 1;
            }

LABEL_25:
            persistentIdentifier3 = v30;
            if (!v30)
            {
LABEL_27:

LABEL_28:
              localMediaIdentifier4 = v31;
              if (!localMediaIdentifier3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SFToggleAudioCommand;
  v4 = [(SFCommand *)&v12 copyWithZone:zone];
  localMediaIdentifier = [(SFToggleAudioCommand *)self localMediaIdentifier];
  v6 = [localMediaIdentifier copy];
  [v4 setLocalMediaIdentifier:v6];

  persistentIdentifier = [(SFToggleAudioCommand *)self persistentIdentifier];
  v8 = [persistentIdentifier copy];
  [v4 setPersistentIdentifier:v8];

  [v4 setMediaEntityType:{-[SFToggleAudioCommand mediaEntityType](self, "mediaEntityType")}];
  universalLibraryIdentifier = [(SFToggleAudioCommand *)self universalLibraryIdentifier];
  v10 = [universalLibraryIdentifier copy];
  [v4 setUniversalLibraryIdentifier:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBToggleAudioCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBToggleAudioCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBToggleAudioCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBToggleAudioCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFToggleAudioCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFToggleAudioCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFToggleAudioCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localMediaIdentifier = [(SFCommand *)v8 localMediaIdentifier];
    [(SFToggleAudioCommand *)v5 setLocalMediaIdentifier:localMediaIdentifier];

    persistentIdentifier = [(SFCommand *)v8 persistentIdentifier];
    [(SFToggleAudioCommand *)v5 setPersistentIdentifier:persistentIdentifier];

    [(SFToggleAudioCommand *)v5 setMediaEntityType:[(SFCommand *)v8 mediaEntityType]];
    universalLibraryIdentifier = [(SFCommand *)v8 universalLibraryIdentifier];
    [(SFToggleAudioCommand *)v5 setUniversalLibraryIdentifier:universalLibraryIdentifier];

    commandDetail = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:commandDetail];

    normalizedTopic = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:normalizedTopic];

    backendData = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:backendData];

    commandReference = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:commandReference];
  }

  return v5;
}

- (SFToggleAudioCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = SFToggleAudioCommand;
  v5 = [(SFToggleAudioCommand *)&v14 init];
  if (v5)
  {
    localMediaIdentifier = [protobufCopy localMediaIdentifier];

    if (localMediaIdentifier)
    {
      localMediaIdentifier2 = [protobufCopy localMediaIdentifier];
      [(SFToggleAudioCommand *)v5 setLocalMediaIdentifier:localMediaIdentifier2];
    }

    persistentIdentifier = [protobufCopy persistentIdentifier];

    if (persistentIdentifier)
    {
      persistentIdentifier2 = [protobufCopy persistentIdentifier];
      [(SFToggleAudioCommand *)v5 setPersistentIdentifier:persistentIdentifier2];
    }

    if ([protobufCopy mediaEntityType])
    {
      -[SFToggleAudioCommand setMediaEntityType:](v5, "setMediaEntityType:", [protobufCopy mediaEntityType]);
    }

    universalLibraryIdentifier = [protobufCopy universalLibraryIdentifier];

    if (universalLibraryIdentifier)
    {
      universalLibraryIdentifier2 = [protobufCopy universalLibraryIdentifier];
      [(SFToggleAudioCommand *)v5 setUniversalLibraryIdentifier:universalLibraryIdentifier2];
    }

    v12 = v5;
  }

  return v5;
}

@end