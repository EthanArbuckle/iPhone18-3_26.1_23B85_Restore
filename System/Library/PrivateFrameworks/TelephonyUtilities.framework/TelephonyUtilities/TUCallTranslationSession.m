@interface TUCallTranslationSession
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTranslationSession:(id)a3;
- (TUCallTranslationSession)initWithCoder:(id)a3;
- (TUCallTranslationSession)initWithUUID:(id)a3 requestUUID:(id)a4 state:(int)a5 callUUID:(id)a6 localLocale:(id)a7 remoteLocale:(id)a8 translationLinks:(int)a9 uplinkTranslatorIdentifier:(id)a10 downlinkTranslatorIdentifier:(id)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCallTranslationSession

- (TUCallTranslationSession)initWithUUID:(id)a3 requestUUID:(id)a4 state:(int)a5 callUUID:(id)a6 localLocale:(id)a7 remoteLocale:(id)a8 translationLinks:(int)a9 uplinkTranslatorIdentifier:(id)a10 downlinkTranslatorIdentifier:(id)a11
{
  v17 = a3;
  obj = a4;
  v18 = a4;
  v19 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a7;
  v20 = a8;
  v21 = a10;
  v22 = a11;
  v31.receiver = self;
  v31.super_class = TUCallTranslationSession;
  v23 = [(TUCallTranslationSession *)&v31 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_UUID, a3);
    v24->_translationState = a5;
    objc_storeStrong(&v24->_callUUID, a6);
    objc_storeStrong(&v24->_requestUUID, obj);
    objc_storeStrong(&v24->_localLocale, v28);
    objc_storeStrong(&v24->_remoteLocale, v29);
    v24->_translationLinks = a9;
    objc_storeStrong(&v24->_uplinkTranslatorIdentifier, a10);
    objc_storeStrong(&v24->_downlinkTranslatorIdentifier, a11);
  }

  return v24;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUCallTranslationSession *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  [v3 appendFormat:@" state=%d", -[TUCallTranslationSession translationState](self, "translationState")];
  v5 = [(TUCallTranslationSession *)self callUUID];
  [v3 appendFormat:@" callUUID=%@", v5];

  v6 = [(TUCallTranslationSession *)self localLocale];
  [v3 appendFormat:@" localLocale=%@", v6];

  v7 = [(TUCallTranslationSession *)self remoteLocale];
  [v3 appendFormat:@" remoteLocale=%@", v7];

  [v3 appendFormat:@" translationLinks=%d", -[TUCallTranslationSession translationLinks](self, "translationLinks")];
  v8 = [(TUCallTranslationSession *)self uplinkTranslatorIdentifier];
  [v3 appendFormat:@" uTransID=%@", v8];

  v9 = [(TUCallTranslationSession *)self downlinkTranslatorIdentifier];
  [v3 appendFormat:@" dTransID=%@", v9];

  [v3 appendFormat:@" "];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"UUID"];
  [v5 encodeInt:self->_translationState forKey:@"translationState"];
  [v5 encodeObject:self->_callUUID forKey:@"callUUID"];
  [v5 encodeObject:self->_localLocale forKey:@"localLocale"];
  [v5 encodeObject:self->_remoteLocale forKey:@"remoteLocale"];
  [v5 encodeInt:self->_translationLinks forKey:@"translationLinks"];
  [v5 encodeObject:self->_uplinkTranslatorIdentifier forKey:@"uplinkTranslatorIdentifier"];
  [v5 encodeObject:self->_downlinkTranslatorIdentifier forKey:@"downlinkTranslatorIdentifier"];
}

- (TUCallTranslationSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUCallTranslationSession *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v5->_translationState = [v4 decodeIntForKey:@"translationState"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    callUUID = v5->_callUUID;
    v5->_callUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localLocale"];
    localLocale = v5->_localLocale;
    v5->_localLocale = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteLocale"];
    remoteLocale = v5->_remoteLocale;
    v5->_remoteLocale = v12;

    v5->_translationLinks = [v4 decodeInt32ForKey:@"translationLinks"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uplinkTranslatorIdentifier"];
    uplinkTranslatorIdentifier = v5->_uplinkTranslatorIdentifier;
    v5->_uplinkTranslatorIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downlinkTranslatorIdentifier"];
    downlinkTranslatorIdentifier = v5->_downlinkTranslatorIdentifier;
    v5->_downlinkTranslatorIdentifier = v16;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(TUCallTranslationSession *)self UUID];
  [v4 setUUID:v5];

  v6 = [(TUCallTranslationSession *)self callUUID];
  [v4 setCallUUID:v6];

  [v4 setTranslationState:{-[TUCallTranslationSession translationState](self, "translationState")}];
  v7 = [(TUCallTranslationSession *)self localLocale];
  [v4 setLocalLocale:v7];

  v8 = [(TUCallTranslationSession *)self remoteLocale];
  [v4 setRemoteLocale:v8];

  [v4 setTranslationLinks:{-[TUCallTranslationSession translationLinks](self, "translationLinks")}];
  v9 = [(TUCallTranslationSession *)self uplinkTranslatorIdentifier];
  [v4 setUplinkTranslatorIdentifier:v9];

  v10 = [(TUCallTranslationSession *)self downlinkTranslatorIdentifier];
  [v4 setDownlinkTranslatorIdentifier:v10];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCallTranslationSession *)self isEqualToTranslationSession:v4];
  }

  return v5;
}

- (BOOL)isEqualToTranslationSession:(id)a3
{
  v4 = a3;
  v5 = [(TUCallTranslationSession *)self UUID];
  v6 = [v4 UUID];
  if ([v5 isEqual:v6])
  {
    v7 = [(TUCallTranslationSession *)self callUUID];
    v8 = [v4 callUUID];
    if ([v7 isEqual:v8] && (v9 = -[TUCallTranslationSession translationState](self, "translationState"), v9 == objc_msgSend(v4, "translationState")))
    {
      v10 = [(TUCallTranslationSession *)self localLocale];
      v11 = [v4 localLocale];
      if (v10 == v11)
      {
        v13 = [(TUCallTranslationSession *)self remoteLocale];
        v14 = [v4 remoteLocale];
        if (v13 == v14 && (v20 = -[TUCallTranslationSession translationLinks](self, "translationLinks"), v20 == [v4 translationLinks]))
        {
          v21 = [(TUCallTranslationSession *)self uplinkTranslatorIdentifier];
          v15 = [v4 uplinkTranslatorIdentifier];
          if (v21 == v15)
          {
            v19 = v15;
            v18 = [(TUCallTranslationSession *)self downlinkTranslatorIdentifier];
            v17 = [v4 downlinkTranslatorIdentifier];
            v12 = v18 == v17;

            v15 = v19;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end