@interface SRUIFUtilities
+ (BOOL)shouldRedactSpeakableTextForAceObject:(id)a3;
+ (BOOL)string:(id)a3 equalToString:(id)a4;
+ (BOOL)string:(id)a3 isSameAsUserUtterance:(id)a4;
+ (id)_normalizeTextString:(id)a3;
+ (id)descriptionForAceView:(id)a3;
+ (id)descriptionForAddDialogs:(id)a3;
+ (id)descriptionForAddViews:(id)a3;
+ (id)descriptionForDialog:(id)a3;
+ (id)descriptionForSayIt:(id)a3;
+ (id)parsedUtteranceFromText:(id)a3 context:(id)a4 spekableObjectProviding:(id)a5;
@end

@implementation SRUIFUtilities

+ (id)parsedUtteranceFromText:(id)a3 context:(id)a4 spekableObjectProviding:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CEF430] sruif_speakableUtteranceParserForCurrentLanguage];
  v11 = v7;
  if (v8 && v9 && [v10 sruif_hasExternalDomainsForStringWithFormat:v11 shouldRedactLog:0])
  {
    v12 = [v9 speakableProviderForObject:v8];
    if (v12)
    {
      [v10 registerProvider:v12 forNamespace:*MEMORY[0x277CEF568]];
    }
  }

  v17 = 0;
  v13 = [v10 parseStringWithFormat:v11 error:&v17];
  v14 = v17;
  if (v14)
  {
    v15 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SRUIFUtilities parsedUtteranceFromText:v14 context:v15 spekableObjectProviding:?];
    }
  }

  return v13;
}

+ (id)descriptionForAddViews:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCAB68]);
  v5 = objc_opt_class();
  v6 = [v3 aceId];
  v7 = [v3 refId];
  v8 = [v4 initWithFormat:@"<%@: %@ refId:%@>\n", v5, v6, v7];

  v9 = [v3 responseMode];

  if (v9)
  {
    v10 = [v3 responseMode];
    [v8 appendFormat:@"responseMode=%@\n", v10];
  }

  v11 = [v3 patternId];

  if (v11)
  {
    v12 = [v3 patternId];
    [v8 appendFormat:@"patternId=%@\n", v12];
  }

  v13 = [v3 patternType];

  if (v13)
  {
    v14 = [v3 patternType];
    [v8 appendFormat:@"patternType=%@\n", v14];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [v3 views];
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [SRUIFUtilities descriptionForAceView:*(*(&v23 + 1) + 8 * i)];
        [v8 appendFormat:@"%@\n", v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)descriptionForAddDialogs:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCAB68]);
  v5 = objc_opt_class();
  v6 = [v3 aceId];
  v7 = [v4 initWithFormat:@"<%@: %@>\n", v5, v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v3 dialogs];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [SRUIFUtilities descriptionForDialog:*(*(&v16 + 1) + 8 * i)];
        [v7 appendFormat:@"%@\n", v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)descriptionForDialog:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCAB68]);
  v5 = objc_opt_class();
  v6 = [v3 aceId];
  v7 = [v4 initWithFormat:@"<%@: %@\n", v5, v6];

  v8 = [v3 caption];

  if (v8)
  {
    v9 = [v3 caption];
    v10 = [v9 text];

    if (v10)
    {
      v11 = [v3 caption];
      v12 = [v11 text];
      [v7 appendFormat:@"caption.text=%@\n", v12];
    }

    v13 = [v3 caption];
    v14 = [v13 speakableTextOverride];

    if (v14)
    {
      v15 = [v3 caption];
      v16 = [v15 speakableTextOverride];
      [v7 appendFormat:@"caption.speakableTextOverride=%@\n", v16];
    }
  }

  v17 = [v3 content];

  if (v17)
  {
    v18 = [v3 content];
    v19 = [v18 text];

    if (v19)
    {
      if ([v3 canUseServerTTS])
      {
        v20 = [v3 content];
        v21 = [v20 text];
        [v7 appendFormat:@"content.text=%@\n", v21];
      }

      else
      {
        [v7 appendFormat:@"content.text=%@\n", @"<private>"];
      }
    }

    v22 = [v3 content];
    v23 = [v22 speakableTextOverride];

    if (v23)
    {
      if ([v3 canUseServerTTS])
      {
        v24 = [v3 content];
        v25 = [v24 speakableTextOverride];
        [v7 appendFormat:@"content.speakableTextOverride=%@\n", v25];
      }

      else
      {
        [v7 appendFormat:@"content.speakableTextOverride=%@\n", @"<private>"];
      }
    }
  }

  if ([v3 canUseServerTTS])
  {
    [v7 appendFormat:@"canUseServerTTS=%i\n", objc_msgSend(v3, "canUseServerTTS")];
  }

  v26 = [v3 dialogIdentifier];

  if (v26)
  {
    v27 = [v3 dialogIdentifier];
    [v7 appendFormat:@"dialogIdentifier=%@\n", v27];
  }

  v28 = [v3 refId];

  if (v28)
  {
    v29 = [v3 refId];
    [v7 appendFormat:@"refId=%@\n", v29];
  }

  v30 = [v3 configuration];

  if (v30)
  {
    v31 = [v3 configuration];
    v32 = [v31 languageCode];

    if (v32)
    {
      v33 = [v31 languageCode];
      [v7 appendFormat:@"languageCode=%@\n", v33];
    }

    v34 = [v31 gender];

    if (v34)
    {
      v35 = [v31 gender];
      [v7 appendFormat:@"gender=%@\n", v35];
    }

    v36 = [v31 context];

    if (v36)
    {
      v37 = [v31 context];
      [v7 appendFormat:@"context=%@\n", v37];
    }
  }

  [v7 appendFormat:@">"];

  return v7;
}

+ (id)descriptionForAceView:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCAB68]);
  v5 = objc_opt_class();
  v6 = [v3 aceId];
  v7 = [v4 initWithFormat:@"<%@: %@\n", v5, v6];

  v8 = [v3 speakableText];

  if (v8)
  {
    if ([v3 canUseServerTTS])
    {
      v9 = [v3 speakableText];
      [v7 appendFormat:@"speakableText=%@\n", v9];
    }

    else
    {
      [v7 appendFormat:@"speakableText=%@\n", @"<private>"];
    }
  }

  if ([v3 canUseServerTTS])
  {
    [v7 appendFormat:@"canUseServerTTS=%i\n", objc_msgSend(v3, "canUseServerTTS")];
  }

  v10 = [v3 listenAfterSpeaking];

  if (v10)
  {
    v11 = [v3 listenAfterSpeaking];
    [v7 appendFormat:@"listenAfterSpeaking=%@\n", v11];
  }

  v12 = [v3 refId];

  if (v12)
  {
    v13 = [v3 refId];
    [v7 appendFormat:@"refId=%@\n", v13];
  }

  v14 = [v3 dialog];

  if (v14)
  {
    v15 = [v3 dialog];
    v16 = [SRUIFUtilities descriptionForDialog:v15];
    [v7 appendFormat:@"dialog=%@\n", v16];
  }

  v17 = [v3 itemType];

  if (v17)
  {
    v18 = [v3 itemType];
    [v7 appendFormat:@"itemType = %@\n", v18];
  }

  v19 = [v3 propertyForKey:*MEMORY[0x277D47C40]];
  v20 = v19;
  if (v19)
  {
    [v7 appendFormat:@"preserveResultSpaceIfPossible=%@\n", v19];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v3;
    v22 = [v21 text];

    if (v22)
    {
      if ([v21 canUseServerTTS])
      {
        v23 = [v21 text];
        [v7 appendFormat:@"text=%@\n", v23];
      }

      else
      {
        [v7 appendFormat:@"text=%@\n", @"<private>"];
      }
    }

    v24 = [v21 dialogIdentifier];

    if (v24)
    {
      v25 = [v21 dialogIdentifier];
      [v7 appendFormat:@"dialogIdentifier=%@\n", v25];
    }
  }

  [v7 appendFormat:@">"];

  return v7;
}

+ (id)descriptionForSayIt:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CCAB68]);
  v5 = objc_opt_class();
  v6 = [v3 aceId];
  v7 = [v4 initWithFormat:@"<%@: %@\n", v5, v6];

  v8 = [v3 message];

  if (v8)
  {
    if ([v3 canUseServerTTS])
    {
      v9 = [v3 message];
      [v7 appendFormat:@"message=%@\n", v9];
    }

    else
    {
      [v7 appendFormat:@"message=%@\n", @"<private>"];
    }
  }

  v10 = [v3 audioData];

  if (v10)
  {
    v11 = [v3 audioData];
    v12 = [v11 audioBuffer];
    [v7 appendFormat:@"audioData=%tu Bytes\n", objc_msgSend(v12, "length")];
  }

  v13 = [v3 audioDataUrl];

  if (v13)
  {
    v14 = [v3 audioDataUrl];
    [v7 appendFormat:@"audioDataUrl=%@n", v14];
  }

  v15 = [v3 listenAfterSpeaking];

  if (v15)
  {
    v16 = [v3 listenAfterSpeaking];
    [v7 appendFormat:@"listenAfterSpeaking=%@\n", v16];
  }

  if ([v3 canUseServerTTS])
  {
    [v7 appendFormat:@"canUseServerTTS=%i\n", objc_msgSend(v3, "canUseServerTTS")];
  }

  v17 = [v3 dialogIdentifier];

  if (v17)
  {
    v18 = [v3 dialogIdentifier];
    [v7 appendFormat:@"dialogIdentifier=%@\n", v18];
  }

  v19 = [v3 gender];

  if (v19)
  {
    v20 = [v3 gender];
    [v7 appendFormat:@"gender=%@\n", v20];
  }

  v21 = [v3 languageCode];

  if (v21)
  {
    v22 = [v3 languageCode];
    [v7 appendFormat:@"languageCode=%@\n", v22];
  }

  if ([v3 repeatable])
  {
    [v7 appendFormat:@"repeatable=%i\n", objc_msgSend(v3, "repeatable")];
  }

  v23 = [v3 refId];

  if (v23)
  {
    v24 = [v3 refId];
    [v7 appendFormat:@"refId=%@\n", v24];
  }

  v25 = [v3 listenAfterSpeakingBehavior];

  if (v25)
  {
    v26 = [v3 listenAfterSpeakingBehavior];
    v27 = [v26 startAlertSoundID];
    [v7 appendFormat:@"listenAfterSpeakingBehavior=%@\n", v27];
  }

  [v7 appendFormat:@">"];

  return v7;
}

+ (BOOL)string:(id)a3 equalToString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

+ (BOOL)string:(id)a3 isSameAsUserUtterance:(id)a4
{
  v6 = a4;
  v7 = [a1 _normalizeTextString:a3];
  v8 = [v6 bestTextInterpretation];

  v9 = [a1 _normalizeTextString:v8];
  LOBYTE(v6) = [v7 localizedStandardCompare:v9] == 0;

  return v6;
}

+ (BOOL)shouldRedactSpeakableTextForAceObject:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    LODWORD(v4) = [v3 canUseServerTTS] ^ 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = [v3 views];
      v7 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v4);
            }

            if (![*(*(&v11 + 1) + 8 * i) canUseServerTTS])
            {

              LOBYTE(v4) = 1;
              goto LABEL_5;
            }
          }

          v8 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }

    LOBYTE(v4) = 0;
  }

LABEL_5:

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)_normalizeTextString:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"“" withString:@""];

  return v8;
}

+ (void)parsedUtteranceFromText:(uint64_t)a1 context:(NSObject *)a2 spekableObjectProviding:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "+[SRUIFUtilities parsedUtteranceFromText:context:spekableObjectProviding:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_26951F000, a2, OS_LOG_TYPE_ERROR, "%s utterance parsing failed with error %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end