@interface VUIDocumentContextDataLivePostPlay
- (BOOL)isEqual:(id)equal;
- (VUIDocumentContextDataLivePostPlay)initWithCanonicalId:(id)id playablePassthrough:(id)passthrough broadcastLocale:(id)locale;
- (id)jsonData;
@end

@implementation VUIDocumentContextDataLivePostPlay

- (VUIDocumentContextDataLivePostPlay)initWithCanonicalId:(id)id playablePassthrough:(id)passthrough broadcastLocale:(id)locale
{
  idCopy = id;
  passthroughCopy = passthrough;
  localeCopy = locale;
  v15.receiver = self;
  v15.super_class = VUIDocumentContextDataLivePostPlay;
  v12 = [(VUIDocumentContextDataLivePostPlay *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_canonicalId, id);
    objc_storeStrong(&v13->_playablePassthrough, passthrough);
    objc_storeStrong(&v13->_broadcastLocale, locale);
  }

  return v13;
}

- (id)jsonData
{
  v8[3] = *MEMORY[0x1E69E9840];
  canonicalId = self->_canonicalId;
  if (!canonicalId)
  {
    canonicalId = &stru_1F5DB25C0;
  }

  v7[0] = @"id";
  v7[1] = @"playablePassthrough";
  playablePassthrough = self->_playablePassthrough;
  if (!playablePassthrough)
  {
    playablePassthrough = &stru_1F5DB25C0;
  }

  v8[0] = canonicalId;
  v8[1] = playablePassthrough;
  broadcastLocale = self->_broadcastLocale;
  v7[2] = @"locale";
  if (!broadcastLocale)
  {
    broadcastLocale = &stru_1F5DB25C0;
  }

  v8[2] = broadcastLocale;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    canonicalId = [(VUIDocumentContextDataLivePostPlay *)self canonicalId];
    canonicalId2 = [v5 canonicalId];
    if ([canonicalId isEqual:canonicalId2])
    {
      playablePassthrough = [(VUIDocumentContextDataLivePostPlay *)self playablePassthrough];
      playablePassthrough2 = [v5 playablePassthrough];
      if ([playablePassthrough isEqual:playablePassthrough2])
      {
        broadcastLocale = [(VUIDocumentContextDataLivePostPlay *)self broadcastLocale];
        broadcastLocale2 = [v5 broadcastLocale];
        v12 = [broadcastLocale isEqual:broadcastLocale2];
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