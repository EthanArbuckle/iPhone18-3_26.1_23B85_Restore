@interface TTSAlternativeVoices
+ (BOOL)isCombinedVocalizerVoiceIdentifier:(id)identifier;
+ (BOOL)isCompactVocalizerVoiceIdentifier:(id)identifier;
+ (BOOL)isVocalizerVoiceIdentifier:(id)identifier;
+ (id)nameForVoiceIdentifier:(id)identifier;
@end

@implementation TTSAlternativeVoices

+ (BOOL)isVocalizerVoiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (objc_msgSend_hasPrefix_(identifierCopy, v5, @"com.apple.ttsbundle", v6, v7) && (objc_msgSend_isOldSiriVoiceIdentifier_(self, v8, identifierCopy, v9, v10) & 1) == 0)
  {
    v14 = objc_msgSend_isSiriVoiceIdentifier_(self, v11, identifierCopy, v12, v13) ^ 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

+ (BOOL)isCompactVocalizerVoiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (objc_msgSend_isVocalizerVoiceIdentifier_(self, v5, identifierCopy, v6, v7))
  {
    v18 = 0;
    v19 = 0;
    v10 = TTSGetComponentsInNashvilleVoiceIdentifier(identifierCopy, &v19, &v18, v8, v9);
    v11 = v19;
    v12 = v18;
    v16 = v12;
    if (v10)
    {
      LOBYTE(v10) = objc_msgSend_isEqualToString_(v12, v13, @"compact", v14, v15);
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

+ (BOOL)isCombinedVocalizerVoiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (objc_msgSend_isVocalizerVoiceIdentifier_(self, v5, identifierCopy, v6, v7))
  {
    v14 = 0;
    v15 = 0;
    v10 = TTSGetComponentsInNashvilleVoiceIdentifier(identifierCopy, &v15, &v14, v8, v9);
    v11 = v15;
    if (v14)
    {
      v12 = !v10;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)nameForVoiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = objc_msgSend_sharedInstance(TTSAXResourceManager, v5, v6, v7, v8);
  v13 = objc_msgSend_resourceWithVoiceId_(v9, v10, identifierCopy, v11, v12);

  LODWORD(self) = objc_msgSend_isSiriVoiceIdentifier_(self, v14, identifierCopy, v15, v16);
  if (self)
  {
    v21 = objc_msgSend_localizedName(v13, v17, v18, v19, v20);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end