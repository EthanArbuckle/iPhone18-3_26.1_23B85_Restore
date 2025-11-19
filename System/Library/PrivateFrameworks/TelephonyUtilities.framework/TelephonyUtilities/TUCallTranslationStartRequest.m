@interface TUCallTranslationStartRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTUCallTranslationStartRequest:(id)a3;
- (TUCallTranslationStartRequest)initWithCall:(id)a3 configuration:(id)a4;
- (TUCallTranslationStartRequest)initWithCall:(id)a3 localLocale:(id)a4 remoteLocale:(id)a5 translationLinks:(int)a6 remoteAudioMode:(int)a7 translationMode:(int)a8;
- (TUCallTranslationStartRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCallTranslationStartRequest

- (TUCallTranslationStartRequest)initWithCall:(id)a3 localLocale:(id)a4 remoteLocale:(id)a5 translationLinks:(int)a6 remoteAudioMode:(int)a7 translationMode:(int)a8
{
  v15 = a4;
  v16 = a5;
  v20.receiver = self;
  v20.super_class = TUCallTranslationStartRequest;
  v17 = [(TUCallTranslationRequest *)&v20 initWithCall:a3];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_localLocale, a4);
    objc_storeStrong(&v18->_remoteLocale, a5);
    v18->_translationLinks = a6;
    v18->_remoteAudioMode = a7;
    v18->_translationMode = a8;
  }

  return v18;
}

- (TUCallTranslationStartRequest)initWithCall:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 localLocale];
  v9 = [v6 remoteLocale];
  v10 = [v6 translationLinks];
  v11 = [v6 remoteAudioMode];
  v12 = [v6 translationMode];

  v13 = [(TUCallTranslationStartRequest *)self initWithCall:v7 localLocale:v8 remoteLocale:v9 translationLinks:v10 remoteAudioMode:v11 translationMode:v12];
  return v13;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = TUCallTranslationStartRequest;
  v3 = [(TUCallTranslationRequest *)&v8 description];
  v4 = [v3 mutableCopy];

  v5 = [(TUCallTranslationStartRequest *)self localLocale];
  [v4 appendFormat:@" localLocale=%@", v5];

  v6 = [(TUCallTranslationStartRequest *)self remoteLocale];
  [v4 appendFormat:@" remoteLocale=%@", v6];

  [v4 appendFormat:@" translationLinks=%d", -[TUCallTranslationStartRequest translationLinks](self, "translationLinks")];
  [v4 appendFormat:@" remoteAudioMode=%d", -[TUCallTranslationStartRequest remoteAudioMode](self, "remoteAudioMode")];
  [v4 appendFormat:@" translationMode=%d", -[TUCallTranslationStartRequest translationMode](self, "translationMode")];
  [v4 appendString:@">"];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TUCallTranslationStartRequest;
  v4 = a3;
  [(TUCallTranslationRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_localLocale forKey:{@"localLocale", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_remoteLocale forKey:@"remoteLocale"];
  [v4 encodeInt32:self->_translationLinks forKey:@"translationLinks"];
  [v4 encodeInt32:self->_remoteAudioMode forKey:@"remoteAudioMode"];
  [v4 encodeInt32:self->_translationMode forKey:@"translationMode"];
}

- (TUCallTranslationStartRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = TUCallTranslationStartRequest;
  v5 = [(TUCallTranslationRequest *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_localLocale);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    localLocale = v5->_localLocale;
    v5->_localLocale = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_remoteLocale);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    remoteLocale = v5->_remoteLocale;
    v5->_remoteLocale = v12;

    v14 = NSStringFromSelector(sel_translationLinks);
    v5->_translationLinks = [v4 decodeInt32ForKey:v14];

    v15 = NSStringFromSelector(sel_remoteAudioMode);
    v5->_remoteAudioMode = [v4 decodeInt32ForKey:v15];

    v16 = NSStringFromSelector(sel_translationMode);
    v5->_translationMode = [v4 decodeInt32ForKey:v16];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = TUCallTranslationStartRequest;
  v4 = [(TUCallTranslationRequest *)&v8 copyWithZone:a3];
  v5 = [(TUCallTranslationStartRequest *)self localLocale];
  [v4 setLocalLocale:v5];

  v6 = [(TUCallTranslationStartRequest *)self remoteLocale];
  [v4 setRemoteLocale:v6];

  [v4 setTranslationLinks:{-[TUCallTranslationStartRequest translationLinks](self, "translationLinks")}];
  [v4 setRemoteAudioMode:{-[TUCallTranslationStartRequest remoteAudioMode](self, "remoteAudioMode")}];
  [v4 setTranslationMode:{-[TUCallTranslationStartRequest translationMode](self, "translationMode")}];
  return v4;
}

- (unint64_t)hash
{
  v3 = [(TUCallTranslationRequest *)self UUID];
  v4 = [v3 hash];
  v5 = [(TUCallTranslationRequest *)self callUUID];
  v6 = [v5 hash] ^ v4;
  v7 = [(TUCallTranslationStartRequest *)self localLocale];
  v8 = [v7 hash];
  v9 = [(TUCallTranslationStartRequest *)self remoteLocale];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(TUCallTranslationStartRequest *)self translationLinks];
  v12 = v11 ^ [(TUCallTranslationStartRequest *)self remoteAudioMode];
  v13 = v12 ^ [(TUCallTranslationStartRequest *)self translationMode];

  return v10 ^ v13;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = TUCallTranslationStartRequest, [(TUCallTranslationRequest *)&v7 isEqual:v4]) && [(TUCallTranslationStartRequest *)self isEqualToTUCallTranslationStartRequest:v4];
  }

  return v5;
}

- (BOOL)isEqualToTUCallTranslationStartRequest:(id)a3
{
  v4 = a3;
  v5 = [(TUCallTranslationRequest *)self UUID];
  v6 = [v4 UUID];
  if (v5 == v6)
  {
    v8 = [(TUCallTranslationRequest *)self callUUID];
    v9 = [v4 callUUID];
    if (v8 == v9)
    {
      v10 = [(TUCallTranslationStartRequest *)self localLocale];
      v11 = [v4 localLocale];
      if (v10 == v11)
      {
        v12 = [(TUCallTranslationStartRequest *)self remoteLocale];
        v13 = [v4 remoteLocale];
        if (v12 == v13 && (v16 = -[TUCallTranslationStartRequest translationLinks](self, "translationLinks"), v16 == [v4 translationLinks]) && (v17 = -[TUCallTranslationStartRequest remoteAudioMode](self, "remoteAudioMode"), v17 == objc_msgSend(v4, "remoteAudioMode")))
        {
          v14 = [(TUCallTranslationStartRequest *)self translationMode];
          v7 = v14 == [v4 translationMode];
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