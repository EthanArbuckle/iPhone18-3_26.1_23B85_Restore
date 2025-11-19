@interface VUIDocumentContextDataLivePostPlay
- (BOOL)isEqual:(id)a3;
- (VUIDocumentContextDataLivePostPlay)initWithCanonicalId:(id)a3 playablePassthrough:(id)a4 broadcastLocale:(id)a5;
- (id)jsonData;
@end

@implementation VUIDocumentContextDataLivePostPlay

- (VUIDocumentContextDataLivePostPlay)initWithCanonicalId:(id)a3 playablePassthrough:(id)a4 broadcastLocale:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = VUIDocumentContextDataLivePostPlay;
  v12 = [(VUIDocumentContextDataLivePostPlay *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_canonicalId, a3);
    objc_storeStrong(&v13->_playablePassthrough, a4);
    objc_storeStrong(&v13->_broadcastLocale, a5);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(VUIDocumentContextDataLivePostPlay *)self canonicalId];
    v7 = [v5 canonicalId];
    if ([v6 isEqual:v7])
    {
      v8 = [(VUIDocumentContextDataLivePostPlay *)self playablePassthrough];
      v9 = [v5 playablePassthrough];
      if ([v8 isEqual:v9])
      {
        v10 = [(VUIDocumentContextDataLivePostPlay *)self broadcastLocale];
        v11 = [v5 broadcastLocale];
        v12 = [v10 isEqual:v11];
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