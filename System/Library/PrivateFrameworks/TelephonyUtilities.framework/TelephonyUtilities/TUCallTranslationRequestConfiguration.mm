@interface TUCallTranslationRequestConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTUCallTranslationRequestConfiguration:(id)configuration;
- (TUCallTranslationRequestConfiguration)initWithCoder:(id)coder;
- (TUCallTranslationRequestConfiguration)initWithlocalLocale:(id)locale remoteLocale:(id)remoteLocale translationLinks:(int)links remoteAudioMode:(int)mode translationMode:(int)translationMode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUCallTranslationRequestConfiguration

- (TUCallTranslationRequestConfiguration)initWithlocalLocale:(id)locale remoteLocale:(id)remoteLocale translationLinks:(int)links remoteAudioMode:(int)mode translationMode:(int)translationMode
{
  localeCopy = locale;
  remoteLocaleCopy = remoteLocale;
  v18.receiver = self;
  v18.super_class = TUCallTranslationRequestConfiguration;
  v15 = [(TUCallTranslationRequestConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_localLocale, locale);
    objc_storeStrong(&v16->_remoteLocale, remoteLocale);
    v16->_translationLinks = links;
    v16->_remoteAudioMode = mode;
    v16->_translationMode = translationMode;
  }

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  localLocale = [(TUCallTranslationRequestConfiguration *)self localLocale];
  [v3 appendFormat:@" localLocale=%@", localLocale];

  remoteLocale = [(TUCallTranslationRequestConfiguration *)self remoteLocale];
  [v3 appendFormat:@" remoteLocale=%@", remoteLocale];

  [v3 appendFormat:@" translationLinks=%d", -[TUCallTranslationRequestConfiguration translationLinks](self, "translationLinks")];
  [v3 appendFormat:@" remoteAudioMode=%d", -[TUCallTranslationRequestConfiguration remoteAudioMode](self, "remoteAudioMode")];
  [v3 appendFormat:@" translationMode=%d", -[TUCallTranslationRequestConfiguration translationMode](self, "translationMode")];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  localLocale = self->_localLocale;
  coderCopy = coder;
  [coderCopy encodeObject:localLocale forKey:@"localLocale"];
  [coderCopy encodeObject:self->_remoteLocale forKey:@"remoteLocale"];
  [coderCopy encodeInt32:self->_translationLinks forKey:@"translationLinks"];
  [coderCopy encodeInt32:self->_remoteAudioMode forKey:@"remoteAudioMode"];
  [coderCopy encodeInt32:self->_translationMode forKey:@"translationMode"];
}

- (TUCallTranslationRequestConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUCallTranslationRequestConfiguration *)self init];
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
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  localLocale = [(TUCallTranslationRequestConfiguration *)self localLocale];
  [v4 setLocalLocale:localLocale];

  remoteLocale = [(TUCallTranslationRequestConfiguration *)self remoteLocale];
  [v4 setRemoteLocale:remoteLocale];

  [v4 setTranslationLinks:{-[TUCallTranslationRequestConfiguration translationLinks](self, "translationLinks")}];
  [v4 setRemoteAudioMode:{-[TUCallTranslationRequestConfiguration remoteAudioMode](self, "remoteAudioMode")}];
  [v4 setTranslationMode:{-[TUCallTranslationRequestConfiguration translationMode](self, "translationMode")}];
  return v4;
}

- (unint64_t)hash
{
  localLocale = [(TUCallTranslationRequestConfiguration *)self localLocale];
  v4 = [localLocale hash];
  remoteLocale = [(TUCallTranslationRequestConfiguration *)self remoteLocale];
  v6 = [remoteLocale hash] ^ v4;
  translationLinks = [(TUCallTranslationRequestConfiguration *)self translationLinks];
  v8 = v6 ^ translationLinks ^ [(TUCallTranslationRequestConfiguration *)self remoteAudioMode];
  translationMode = [(TUCallTranslationRequestConfiguration *)self translationMode];

  return v8 ^ translationMode;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCallTranslationRequestConfiguration *)self isEqualToTUCallTranslationRequestConfiguration:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToTUCallTranslationRequestConfiguration:(id)configuration
{
  configurationCopy = configuration;
  localLocale = [(TUCallTranslationRequestConfiguration *)self localLocale];
  localLocale2 = [configurationCopy localLocale];
  if (localLocale == localLocale2)
  {
    remoteLocale = [(TUCallTranslationRequestConfiguration *)self remoteLocale];
    remoteLocale2 = [configurationCopy remoteLocale];
    if (remoteLocale == remoteLocale2 && (v10 = -[TUCallTranslationRequestConfiguration translationLinks](self, "translationLinks"), v10 == [configurationCopy translationLinks]) && (v11 = -[TUCallTranslationRequestConfiguration remoteAudioMode](self, "remoteAudioMode"), v11 == objc_msgSend(configurationCopy, "remoteAudioMode")))
    {
      translationMode = [(TUCallTranslationRequestConfiguration *)self translationMode];
      v7 = translationMode == [configurationCopy translationMode];
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