@interface TUCallTranslationSession
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTranslationSession:(id)session;
- (TUCallTranslationSession)initWithCoder:(id)coder;
- (TUCallTranslationSession)initWithUUID:(id)d requestUUID:(id)iD state:(int)state callUUID:(id)uID localLocale:(id)locale remoteLocale:(id)remoteLocale translationLinks:(int)links uplinkTranslatorIdentifier:(id)self0 downlinkTranslatorIdentifier:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUCallTranslationSession

- (TUCallTranslationSession)initWithUUID:(id)d requestUUID:(id)iD state:(int)state callUUID:(id)uID localLocale:(id)locale remoteLocale:(id)remoteLocale translationLinks:(int)links uplinkTranslatorIdentifier:(id)self0 downlinkTranslatorIdentifier:(id)self1
{
  dCopy = d;
  obj = iD;
  iDCopy = iD;
  uIDCopy = uID;
  localeCopy = locale;
  remoteLocaleCopy = remoteLocale;
  localeCopy2 = locale;
  remoteLocaleCopy2 = remoteLocale;
  identifierCopy = identifier;
  translatorIdentifierCopy = translatorIdentifier;
  v31.receiver = self;
  v31.super_class = TUCallTranslationSession;
  v23 = [(TUCallTranslationSession *)&v31 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_UUID, d);
    v24->_translationState = state;
    objc_storeStrong(&v24->_callUUID, uID);
    objc_storeStrong(&v24->_requestUUID, obj);
    objc_storeStrong(&v24->_localLocale, localeCopy);
    objc_storeStrong(&v24->_remoteLocale, remoteLocaleCopy);
    v24->_translationLinks = links;
    objc_storeStrong(&v24->_uplinkTranslatorIdentifier, identifier);
    objc_storeStrong(&v24->_downlinkTranslatorIdentifier, translatorIdentifier);
  }

  return v24;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(TUCallTranslationSession *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  [v3 appendFormat:@" state=%d", -[TUCallTranslationSession translationState](self, "translationState")];
  callUUID = [(TUCallTranslationSession *)self callUUID];
  [v3 appendFormat:@" callUUID=%@", callUUID];

  localLocale = [(TUCallTranslationSession *)self localLocale];
  [v3 appendFormat:@" localLocale=%@", localLocale];

  remoteLocale = [(TUCallTranslationSession *)self remoteLocale];
  [v3 appendFormat:@" remoteLocale=%@", remoteLocale];

  [v3 appendFormat:@" translationLinks=%d", -[TUCallTranslationSession translationLinks](self, "translationLinks")];
  uplinkTranslatorIdentifier = [(TUCallTranslationSession *)self uplinkTranslatorIdentifier];
  [v3 appendFormat:@" uTransID=%@", uplinkTranslatorIdentifier];

  downlinkTranslatorIdentifier = [(TUCallTranslationSession *)self downlinkTranslatorIdentifier];
  [v3 appendFormat:@" dTransID=%@", downlinkTranslatorIdentifier];

  [v3 appendFormat:@" "];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"UUID"];
  [coderCopy encodeInt:self->_translationState forKey:@"translationState"];
  [coderCopy encodeObject:self->_callUUID forKey:@"callUUID"];
  [coderCopy encodeObject:self->_localLocale forKey:@"localLocale"];
  [coderCopy encodeObject:self->_remoteLocale forKey:@"remoteLocale"];
  [coderCopy encodeInt:self->_translationLinks forKey:@"translationLinks"];
  [coderCopy encodeObject:self->_uplinkTranslatorIdentifier forKey:@"uplinkTranslatorIdentifier"];
  [coderCopy encodeObject:self->_downlinkTranslatorIdentifier forKey:@"downlinkTranslatorIdentifier"];
}

- (TUCallTranslationSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUCallTranslationSession *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v5->_translationState = [coderCopy decodeIntForKey:@"translationState"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    callUUID = v5->_callUUID;
    v5->_callUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localLocale"];
    localLocale = v5->_localLocale;
    v5->_localLocale = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteLocale"];
    remoteLocale = v5->_remoteLocale;
    v5->_remoteLocale = v12;

    v5->_translationLinks = [coderCopy decodeInt32ForKey:@"translationLinks"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uplinkTranslatorIdentifier"];
    uplinkTranslatorIdentifier = v5->_uplinkTranslatorIdentifier;
    v5->_uplinkTranslatorIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downlinkTranslatorIdentifier"];
    downlinkTranslatorIdentifier = v5->_downlinkTranslatorIdentifier;
    v5->_downlinkTranslatorIdentifier = v16;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  uUID = [(TUCallTranslationSession *)self UUID];
  [v4 setUUID:uUID];

  callUUID = [(TUCallTranslationSession *)self callUUID];
  [v4 setCallUUID:callUUID];

  [v4 setTranslationState:{-[TUCallTranslationSession translationState](self, "translationState")}];
  localLocale = [(TUCallTranslationSession *)self localLocale];
  [v4 setLocalLocale:localLocale];

  remoteLocale = [(TUCallTranslationSession *)self remoteLocale];
  [v4 setRemoteLocale:remoteLocale];

  [v4 setTranslationLinks:{-[TUCallTranslationSession translationLinks](self, "translationLinks")}];
  uplinkTranslatorIdentifier = [(TUCallTranslationSession *)self uplinkTranslatorIdentifier];
  [v4 setUplinkTranslatorIdentifier:uplinkTranslatorIdentifier];

  downlinkTranslatorIdentifier = [(TUCallTranslationSession *)self downlinkTranslatorIdentifier];
  [v4 setDownlinkTranslatorIdentifier:downlinkTranslatorIdentifier];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCallTranslationSession *)self isEqualToTranslationSession:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToTranslationSession:(id)session
{
  sessionCopy = session;
  uUID = [(TUCallTranslationSession *)self UUID];
  uUID2 = [sessionCopy UUID];
  if ([uUID isEqual:uUID2])
  {
    callUUID = [(TUCallTranslationSession *)self callUUID];
    callUUID2 = [sessionCopy callUUID];
    if ([callUUID isEqual:callUUID2] && (v9 = -[TUCallTranslationSession translationState](self, "translationState"), v9 == objc_msgSend(sessionCopy, "translationState")))
    {
      localLocale = [(TUCallTranslationSession *)self localLocale];
      localLocale2 = [sessionCopy localLocale];
      if (localLocale == localLocale2)
      {
        remoteLocale = [(TUCallTranslationSession *)self remoteLocale];
        remoteLocale2 = [sessionCopy remoteLocale];
        if (remoteLocale == remoteLocale2 && (v20 = -[TUCallTranslationSession translationLinks](self, "translationLinks"), v20 == [sessionCopy translationLinks]))
        {
          uplinkTranslatorIdentifier = [(TUCallTranslationSession *)self uplinkTranslatorIdentifier];
          uplinkTranslatorIdentifier2 = [sessionCopy uplinkTranslatorIdentifier];
          if (uplinkTranslatorIdentifier == uplinkTranslatorIdentifier2)
          {
            v19 = uplinkTranslatorIdentifier2;
            downlinkTranslatorIdentifier = [(TUCallTranslationSession *)self downlinkTranslatorIdentifier];
            downlinkTranslatorIdentifier2 = [sessionCopy downlinkTranslatorIdentifier];
            v12 = downlinkTranslatorIdentifier == downlinkTranslatorIdentifier2;

            uplinkTranslatorIdentifier2 = v19;
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