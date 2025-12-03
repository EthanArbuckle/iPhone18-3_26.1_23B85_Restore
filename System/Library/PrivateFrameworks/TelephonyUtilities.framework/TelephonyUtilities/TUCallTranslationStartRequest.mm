@interface TUCallTranslationStartRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTUCallTranslationStartRequest:(id)request;
- (TUCallTranslationStartRequest)initWithCall:(id)call configuration:(id)configuration;
- (TUCallTranslationStartRequest)initWithCall:(id)call localLocale:(id)locale remoteLocale:(id)remoteLocale translationLinks:(int)links remoteAudioMode:(int)mode translationMode:(int)translationMode;
- (TUCallTranslationStartRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUCallTranslationStartRequest

- (TUCallTranslationStartRequest)initWithCall:(id)call localLocale:(id)locale remoteLocale:(id)remoteLocale translationLinks:(int)links remoteAudioMode:(int)mode translationMode:(int)translationMode
{
  localeCopy = locale;
  remoteLocaleCopy = remoteLocale;
  v20.receiver = self;
  v20.super_class = TUCallTranslationStartRequest;
  v17 = [(TUCallTranslationRequest *)&v20 initWithCall:call];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_localLocale, locale);
    objc_storeStrong(&v18->_remoteLocale, remoteLocale);
    v18->_translationLinks = links;
    v18->_remoteAudioMode = mode;
    v18->_translationMode = translationMode;
  }

  return v18;
}

- (TUCallTranslationStartRequest)initWithCall:(id)call configuration:(id)configuration
{
  configurationCopy = configuration;
  callCopy = call;
  localLocale = [configurationCopy localLocale];
  remoteLocale = [configurationCopy remoteLocale];
  translationLinks = [configurationCopy translationLinks];
  remoteAudioMode = [configurationCopy remoteAudioMode];
  translationMode = [configurationCopy translationMode];

  v13 = [(TUCallTranslationStartRequest *)self initWithCall:callCopy localLocale:localLocale remoteLocale:remoteLocale translationLinks:translationLinks remoteAudioMode:remoteAudioMode translationMode:translationMode];
  return v13;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = TUCallTranslationStartRequest;
  v3 = [(TUCallTranslationRequest *)&v8 description];
  v4 = [v3 mutableCopy];

  localLocale = [(TUCallTranslationStartRequest *)self localLocale];
  [v4 appendFormat:@" localLocale=%@", localLocale];

  remoteLocale = [(TUCallTranslationStartRequest *)self remoteLocale];
  [v4 appendFormat:@" remoteLocale=%@", remoteLocale];

  [v4 appendFormat:@" translationLinks=%d", -[TUCallTranslationStartRequest translationLinks](self, "translationLinks")];
  [v4 appendFormat:@" remoteAudioMode=%d", -[TUCallTranslationStartRequest remoteAudioMode](self, "remoteAudioMode")];
  [v4 appendFormat:@" translationMode=%d", -[TUCallTranslationStartRequest translationMode](self, "translationMode")];
  [v4 appendString:@">"];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TUCallTranslationStartRequest;
  coderCopy = coder;
  [(TUCallTranslationRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_localLocale forKey:{@"localLocale", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_remoteLocale forKey:@"remoteLocale"];
  [coderCopy encodeInt32:self->_translationLinks forKey:@"translationLinks"];
  [coderCopy encodeInt32:self->_remoteAudioMode forKey:@"remoteAudioMode"];
  [coderCopy encodeInt32:self->_translationMode forKey:@"translationMode"];
}

- (TUCallTranslationStartRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = TUCallTranslationStartRequest;
  v5 = [(TUCallTranslationRequest *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_localLocale);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    localLocale = v5->_localLocale;
    v5->_localLocale = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_remoteLocale);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    remoteLocale = v5->_remoteLocale;
    v5->_remoteLocale = v12;

    v14 = NSStringFromSelector(sel_translationLinks);
    v5->_translationLinks = [coderCopy decodeInt32ForKey:v14];

    v15 = NSStringFromSelector(sel_remoteAudioMode);
    v5->_remoteAudioMode = [coderCopy decodeInt32ForKey:v15];

    v16 = NSStringFromSelector(sel_translationMode);
    v5->_translationMode = [coderCopy decodeInt32ForKey:v16];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = TUCallTranslationStartRequest;
  v4 = [(TUCallTranslationRequest *)&v8 copyWithZone:zone];
  localLocale = [(TUCallTranslationStartRequest *)self localLocale];
  [v4 setLocalLocale:localLocale];

  remoteLocale = [(TUCallTranslationStartRequest *)self remoteLocale];
  [v4 setRemoteLocale:remoteLocale];

  [v4 setTranslationLinks:{-[TUCallTranslationStartRequest translationLinks](self, "translationLinks")}];
  [v4 setRemoteAudioMode:{-[TUCallTranslationStartRequest remoteAudioMode](self, "remoteAudioMode")}];
  [v4 setTranslationMode:{-[TUCallTranslationStartRequest translationMode](self, "translationMode")}];
  return v4;
}

- (unint64_t)hash
{
  uUID = [(TUCallTranslationRequest *)self UUID];
  v4 = [uUID hash];
  callUUID = [(TUCallTranslationRequest *)self callUUID];
  v6 = [callUUID hash] ^ v4;
  localLocale = [(TUCallTranslationStartRequest *)self localLocale];
  v8 = [localLocale hash];
  remoteLocale = [(TUCallTranslationStartRequest *)self remoteLocale];
  v10 = v6 ^ v8 ^ [remoteLocale hash];
  translationLinks = [(TUCallTranslationStartRequest *)self translationLinks];
  v12 = translationLinks ^ [(TUCallTranslationStartRequest *)self remoteAudioMode];
  v13 = v12 ^ [(TUCallTranslationStartRequest *)self translationMode];

  return v10 ^ v13;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = TUCallTranslationStartRequest, [(TUCallTranslationRequest *)&v7 isEqual:equalCopy]) && [(TUCallTranslationStartRequest *)self isEqualToTUCallTranslationStartRequest:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToTUCallTranslationStartRequest:(id)request
{
  requestCopy = request;
  uUID = [(TUCallTranslationRequest *)self UUID];
  uUID2 = [requestCopy UUID];
  if (uUID == uUID2)
  {
    callUUID = [(TUCallTranslationRequest *)self callUUID];
    callUUID2 = [requestCopy callUUID];
    if (callUUID == callUUID2)
    {
      localLocale = [(TUCallTranslationStartRequest *)self localLocale];
      localLocale2 = [requestCopy localLocale];
      if (localLocale == localLocale2)
      {
        remoteLocale = [(TUCallTranslationStartRequest *)self remoteLocale];
        remoteLocale2 = [requestCopy remoteLocale];
        if (remoteLocale == remoteLocale2 && (v16 = -[TUCallTranslationStartRequest translationLinks](self, "translationLinks"), v16 == [requestCopy translationLinks]) && (v17 = -[TUCallTranslationStartRequest remoteAudioMode](self, "remoteAudioMode"), v17 == objc_msgSend(requestCopy, "remoteAudioMode")))
        {
          translationMode = [(TUCallTranslationStartRequest *)self translationMode];
          v7 = translationMode == [requestCopy translationMode];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end