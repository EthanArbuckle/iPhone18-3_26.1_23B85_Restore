@interface TUCallTranslationRequestConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTUCallTranslationRequestConfiguration:(id)a3;
- (TUCallTranslationRequestConfiguration)initWithCoder:(id)a3;
- (TUCallTranslationRequestConfiguration)initWithlocalLocale:(id)a3 remoteLocale:(id)a4 translationLinks:(int)a5 remoteAudioMode:(int)a6 translationMode:(int)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCallTranslationRequestConfiguration

- (TUCallTranslationRequestConfiguration)initWithlocalLocale:(id)a3 remoteLocale:(id)a4 translationLinks:(int)a5 remoteAudioMode:(int)a6 translationMode:(int)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = TUCallTranslationRequestConfiguration;
  v15 = [(TUCallTranslationRequestConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_localLocale, a3);
    objc_storeStrong(&v16->_remoteLocale, a4);
    v16->_translationLinks = a5;
    v16->_remoteAudioMode = a6;
    v16->_translationMode = a7;
  }

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUCallTranslationRequestConfiguration *)self localLocale];
  [v3 appendFormat:@" localLocale=%@", v4];

  v5 = [(TUCallTranslationRequestConfiguration *)self remoteLocale];
  [v3 appendFormat:@" remoteLocale=%@", v5];

  [v3 appendFormat:@" translationLinks=%d", -[TUCallTranslationRequestConfiguration translationLinks](self, "translationLinks")];
  [v3 appendFormat:@" remoteAudioMode=%d", -[TUCallTranslationRequestConfiguration remoteAudioMode](self, "remoteAudioMode")];
  [v3 appendFormat:@" translationMode=%d", -[TUCallTranslationRequestConfiguration translationMode](self, "translationMode")];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  localLocale = self->_localLocale;
  v5 = a3;
  [v5 encodeObject:localLocale forKey:@"localLocale"];
  [v5 encodeObject:self->_remoteLocale forKey:@"remoteLocale"];
  [v5 encodeInt32:self->_translationLinks forKey:@"translationLinks"];
  [v5 encodeInt32:self->_remoteAudioMode forKey:@"remoteAudioMode"];
  [v5 encodeInt32:self->_translationMode forKey:@"translationMode"];
}

- (TUCallTranslationRequestConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUCallTranslationRequestConfiguration *)self init];
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
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(TUCallTranslationRequestConfiguration *)self localLocale];
  [v4 setLocalLocale:v5];

  v6 = [(TUCallTranslationRequestConfiguration *)self remoteLocale];
  [v4 setRemoteLocale:v6];

  [v4 setTranslationLinks:{-[TUCallTranslationRequestConfiguration translationLinks](self, "translationLinks")}];
  [v4 setRemoteAudioMode:{-[TUCallTranslationRequestConfiguration remoteAudioMode](self, "remoteAudioMode")}];
  [v4 setTranslationMode:{-[TUCallTranslationRequestConfiguration translationMode](self, "translationMode")}];
  return v4;
}

- (unint64_t)hash
{
  v3 = [(TUCallTranslationRequestConfiguration *)self localLocale];
  v4 = [v3 hash];
  v5 = [(TUCallTranslationRequestConfiguration *)self remoteLocale];
  v6 = [v5 hash] ^ v4;
  v7 = [(TUCallTranslationRequestConfiguration *)self translationLinks];
  v8 = v6 ^ v7 ^ [(TUCallTranslationRequestConfiguration *)self remoteAudioMode];
  v9 = [(TUCallTranslationRequestConfiguration *)self translationMode];

  return v8 ^ v9;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCallTranslationRequestConfiguration *)self isEqualToTUCallTranslationRequestConfiguration:v4];
  }

  return v5;
}

- (BOOL)isEqualToTUCallTranslationRequestConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(TUCallTranslationRequestConfiguration *)self localLocale];
  v6 = [v4 localLocale];
  if (v5 == v6)
  {
    v8 = [(TUCallTranslationRequestConfiguration *)self remoteLocale];
    v9 = [v4 remoteLocale];
    if (v8 == v9 && (v10 = -[TUCallTranslationRequestConfiguration translationLinks](self, "translationLinks"), v10 == [v4 translationLinks]) && (v11 = -[TUCallTranslationRequestConfiguration remoteAudioMode](self, "remoteAudioMode"), v11 == objc_msgSend(v4, "remoteAudioMode")))
    {
      v12 = [(TUCallTranslationRequestConfiguration *)self translationMode];
      v7 = v12 == [v4 translationMode];
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