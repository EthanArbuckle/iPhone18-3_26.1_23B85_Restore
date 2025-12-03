@interface SRUIFUtilities
+ (BOOL)shouldRedactSpeakableTextForAceObject:(id)object;
+ (BOOL)string:(id)string equalToString:(id)toString;
+ (BOOL)string:(id)string isSameAsUserUtterance:(id)utterance;
+ (id)_normalizeTextString:(id)string;
+ (id)descriptionForAceView:(id)view;
+ (id)descriptionForAddDialogs:(id)dialogs;
+ (id)descriptionForAddViews:(id)views;
+ (id)descriptionForDialog:(id)dialog;
+ (id)descriptionForSayIt:(id)it;
+ (id)parsedUtteranceFromText:(id)text context:(id)context spekableObjectProviding:(id)providing;
@end

@implementation SRUIFUtilities

+ (id)parsedUtteranceFromText:(id)text context:(id)context spekableObjectProviding:(id)providing
{
  textCopy = text;
  contextCopy = context;
  providingCopy = providing;
  sruif_speakableUtteranceParserForCurrentLanguage = [MEMORY[0x277CEF430] sruif_speakableUtteranceParserForCurrentLanguage];
  v11 = textCopy;
  if (contextCopy && providingCopy && [sruif_speakableUtteranceParserForCurrentLanguage sruif_hasExternalDomainsForStringWithFormat:v11 shouldRedactLog:0])
  {
    v12 = [providingCopy speakableProviderForObject:contextCopy];
    if (v12)
    {
      [sruif_speakableUtteranceParserForCurrentLanguage registerProvider:v12 forNamespace:*MEMORY[0x277CEF568]];
    }
  }

  v17 = 0;
  v13 = [sruif_speakableUtteranceParserForCurrentLanguage parseStringWithFormat:v11 error:&v17];
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

+ (id)descriptionForAddViews:(id)views
{
  v28 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  v4 = objc_alloc(MEMORY[0x277CCAB68]);
  v5 = objc_opt_class();
  aceId = [viewsCopy aceId];
  refId = [viewsCopy refId];
  v8 = [v4 initWithFormat:@"<%@: %@ refId:%@>\n", v5, aceId, refId];

  responseMode = [viewsCopy responseMode];

  if (responseMode)
  {
    responseMode2 = [viewsCopy responseMode];
    [v8 appendFormat:@"responseMode=%@\n", responseMode2];
  }

  patternId = [viewsCopy patternId];

  if (patternId)
  {
    patternId2 = [viewsCopy patternId];
    [v8 appendFormat:@"patternId=%@\n", patternId2];
  }

  patternType = [viewsCopy patternType];

  if (patternType)
  {
    patternType2 = [viewsCopy patternType];
    [v8 appendFormat:@"patternType=%@\n", patternType2];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  views = [viewsCopy views];
  v16 = [views countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(views);
        }

        v20 = [SRUIFUtilities descriptionForAceView:*(*(&v23 + 1) + 8 * i)];
        [v8 appendFormat:@"%@\n", v20];
      }

      v17 = [views countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)descriptionForAddDialogs:(id)dialogs
{
  v21 = *MEMORY[0x277D85DE8];
  dialogsCopy = dialogs;
  v4 = objc_alloc(MEMORY[0x277CCAB68]);
  v5 = objc_opt_class();
  aceId = [dialogsCopy aceId];
  v7 = [v4 initWithFormat:@"<%@: %@>\n", v5, aceId];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  dialogs = [dialogsCopy dialogs];
  v9 = [dialogs countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(dialogs);
        }

        v13 = [SRUIFUtilities descriptionForDialog:*(*(&v16 + 1) + 8 * i)];
        [v7 appendFormat:@"%@\n", v13];
      }

      v10 = [dialogs countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)descriptionForDialog:(id)dialog
{
  dialogCopy = dialog;
  v4 = objc_alloc(MEMORY[0x277CCAB68]);
  v5 = objc_opt_class();
  aceId = [dialogCopy aceId];
  v7 = [v4 initWithFormat:@"<%@: %@\n", v5, aceId];

  caption = [dialogCopy caption];

  if (caption)
  {
    caption2 = [dialogCopy caption];
    text = [caption2 text];

    if (text)
    {
      caption3 = [dialogCopy caption];
      text2 = [caption3 text];
      [v7 appendFormat:@"caption.text=%@\n", text2];
    }

    caption4 = [dialogCopy caption];
    speakableTextOverride = [caption4 speakableTextOverride];

    if (speakableTextOverride)
    {
      caption5 = [dialogCopy caption];
      speakableTextOverride2 = [caption5 speakableTextOverride];
      [v7 appendFormat:@"caption.speakableTextOverride=%@\n", speakableTextOverride2];
    }
  }

  content = [dialogCopy content];

  if (content)
  {
    content2 = [dialogCopy content];
    text3 = [content2 text];

    if (text3)
    {
      if ([dialogCopy canUseServerTTS])
      {
        content3 = [dialogCopy content];
        text4 = [content3 text];
        [v7 appendFormat:@"content.text=%@\n", text4];
      }

      else
      {
        [v7 appendFormat:@"content.text=%@\n", @"<private>"];
      }
    }

    content4 = [dialogCopy content];
    speakableTextOverride3 = [content4 speakableTextOverride];

    if (speakableTextOverride3)
    {
      if ([dialogCopy canUseServerTTS])
      {
        content5 = [dialogCopy content];
        speakableTextOverride4 = [content5 speakableTextOverride];
        [v7 appendFormat:@"content.speakableTextOverride=%@\n", speakableTextOverride4];
      }

      else
      {
        [v7 appendFormat:@"content.speakableTextOverride=%@\n", @"<private>"];
      }
    }
  }

  if ([dialogCopy canUseServerTTS])
  {
    [v7 appendFormat:@"canUseServerTTS=%i\n", objc_msgSend(dialogCopy, "canUseServerTTS")];
  }

  dialogIdentifier = [dialogCopy dialogIdentifier];

  if (dialogIdentifier)
  {
    dialogIdentifier2 = [dialogCopy dialogIdentifier];
    [v7 appendFormat:@"dialogIdentifier=%@\n", dialogIdentifier2];
  }

  refId = [dialogCopy refId];

  if (refId)
  {
    refId2 = [dialogCopy refId];
    [v7 appendFormat:@"refId=%@\n", refId2];
  }

  configuration = [dialogCopy configuration];

  if (configuration)
  {
    configuration2 = [dialogCopy configuration];
    languageCode = [configuration2 languageCode];

    if (languageCode)
    {
      languageCode2 = [configuration2 languageCode];
      [v7 appendFormat:@"languageCode=%@\n", languageCode2];
    }

    gender = [configuration2 gender];

    if (gender)
    {
      gender2 = [configuration2 gender];
      [v7 appendFormat:@"gender=%@\n", gender2];
    }

    context = [configuration2 context];

    if (context)
    {
      context2 = [configuration2 context];
      [v7 appendFormat:@"context=%@\n", context2];
    }
  }

  [v7 appendFormat:@">"];

  return v7;
}

+ (id)descriptionForAceView:(id)view
{
  viewCopy = view;
  v4 = objc_alloc(MEMORY[0x277CCAB68]);
  v5 = objc_opt_class();
  aceId = [viewCopy aceId];
  v7 = [v4 initWithFormat:@"<%@: %@\n", v5, aceId];

  speakableText = [viewCopy speakableText];

  if (speakableText)
  {
    if ([viewCopy canUseServerTTS])
    {
      speakableText2 = [viewCopy speakableText];
      [v7 appendFormat:@"speakableText=%@\n", speakableText2];
    }

    else
    {
      [v7 appendFormat:@"speakableText=%@\n", @"<private>"];
    }
  }

  if ([viewCopy canUseServerTTS])
  {
    [v7 appendFormat:@"canUseServerTTS=%i\n", objc_msgSend(viewCopy, "canUseServerTTS")];
  }

  listenAfterSpeaking = [viewCopy listenAfterSpeaking];

  if (listenAfterSpeaking)
  {
    listenAfterSpeaking2 = [viewCopy listenAfterSpeaking];
    [v7 appendFormat:@"listenAfterSpeaking=%@\n", listenAfterSpeaking2];
  }

  refId = [viewCopy refId];

  if (refId)
  {
    refId2 = [viewCopy refId];
    [v7 appendFormat:@"refId=%@\n", refId2];
  }

  dialog = [viewCopy dialog];

  if (dialog)
  {
    dialog2 = [viewCopy dialog];
    v16 = [SRUIFUtilities descriptionForDialog:dialog2];
    [v7 appendFormat:@"dialog=%@\n", v16];
  }

  itemType = [viewCopy itemType];

  if (itemType)
  {
    itemType2 = [viewCopy itemType];
    [v7 appendFormat:@"itemType = %@\n", itemType2];
  }

  v19 = [viewCopy propertyForKey:*MEMORY[0x277D47C40]];
  v20 = v19;
  if (v19)
  {
    [v7 appendFormat:@"preserveResultSpaceIfPossible=%@\n", v19];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = viewCopy;
    text = [v21 text];

    if (text)
    {
      if ([v21 canUseServerTTS])
      {
        text2 = [v21 text];
        [v7 appendFormat:@"text=%@\n", text2];
      }

      else
      {
        [v7 appendFormat:@"text=%@\n", @"<private>"];
      }
    }

    dialogIdentifier = [v21 dialogIdentifier];

    if (dialogIdentifier)
    {
      dialogIdentifier2 = [v21 dialogIdentifier];
      [v7 appendFormat:@"dialogIdentifier=%@\n", dialogIdentifier2];
    }
  }

  [v7 appendFormat:@">"];

  return v7;
}

+ (id)descriptionForSayIt:(id)it
{
  itCopy = it;
  v4 = objc_alloc(MEMORY[0x277CCAB68]);
  v5 = objc_opt_class();
  aceId = [itCopy aceId];
  v7 = [v4 initWithFormat:@"<%@: %@\n", v5, aceId];

  message = [itCopy message];

  if (message)
  {
    if ([itCopy canUseServerTTS])
    {
      message2 = [itCopy message];
      [v7 appendFormat:@"message=%@\n", message2];
    }

    else
    {
      [v7 appendFormat:@"message=%@\n", @"<private>"];
    }
  }

  audioData = [itCopy audioData];

  if (audioData)
  {
    audioData2 = [itCopy audioData];
    audioBuffer = [audioData2 audioBuffer];
    [v7 appendFormat:@"audioData=%tu Bytes\n", objc_msgSend(audioBuffer, "length")];
  }

  audioDataUrl = [itCopy audioDataUrl];

  if (audioDataUrl)
  {
    audioDataUrl2 = [itCopy audioDataUrl];
    [v7 appendFormat:@"audioDataUrl=%@n", audioDataUrl2];
  }

  listenAfterSpeaking = [itCopy listenAfterSpeaking];

  if (listenAfterSpeaking)
  {
    listenAfterSpeaking2 = [itCopy listenAfterSpeaking];
    [v7 appendFormat:@"listenAfterSpeaking=%@\n", listenAfterSpeaking2];
  }

  if ([itCopy canUseServerTTS])
  {
    [v7 appendFormat:@"canUseServerTTS=%i\n", objc_msgSend(itCopy, "canUseServerTTS")];
  }

  dialogIdentifier = [itCopy dialogIdentifier];

  if (dialogIdentifier)
  {
    dialogIdentifier2 = [itCopy dialogIdentifier];
    [v7 appendFormat:@"dialogIdentifier=%@\n", dialogIdentifier2];
  }

  gender = [itCopy gender];

  if (gender)
  {
    gender2 = [itCopy gender];
    [v7 appendFormat:@"gender=%@\n", gender2];
  }

  languageCode = [itCopy languageCode];

  if (languageCode)
  {
    languageCode2 = [itCopy languageCode];
    [v7 appendFormat:@"languageCode=%@\n", languageCode2];
  }

  if ([itCopy repeatable])
  {
    [v7 appendFormat:@"repeatable=%i\n", objc_msgSend(itCopy, "repeatable")];
  }

  refId = [itCopy refId];

  if (refId)
  {
    refId2 = [itCopy refId];
    [v7 appendFormat:@"refId=%@\n", refId2];
  }

  listenAfterSpeakingBehavior = [itCopy listenAfterSpeakingBehavior];

  if (listenAfterSpeakingBehavior)
  {
    listenAfterSpeakingBehavior2 = [itCopy listenAfterSpeakingBehavior];
    startAlertSoundID = [listenAfterSpeakingBehavior2 startAlertSoundID];
    [v7 appendFormat:@"listenAfterSpeakingBehavior=%@\n", startAlertSoundID];
  }

  [v7 appendFormat:@">"];

  return v7;
}

+ (BOOL)string:(id)string equalToString:(id)toString
{
  stringCopy = string;
  toStringCopy = toString;
  v7 = toStringCopy;
  if (stringCopy == toStringCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (stringCopy && toStringCopy)
    {
      v8 = [stringCopy isEqualToString:toStringCopy];
    }
  }

  return v8;
}

+ (BOOL)string:(id)string isSameAsUserUtterance:(id)utterance
{
  utteranceCopy = utterance;
  v7 = [self _normalizeTextString:string];
  bestTextInterpretation = [utteranceCopy bestTextInterpretation];

  v9 = [self _normalizeTextString:bestTextInterpretation];
  LOBYTE(utteranceCopy) = [v7 localizedStandardCompare:v9] == 0;

  return utteranceCopy;
}

+ (BOOL)shouldRedactSpeakableTextForAceObject:(id)object
{
  v16 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    LODWORD(views) = [objectCopy canUseServerTTS] ^ 1;
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
      views = [objectCopy views];
      v7 = [views countByEnumeratingWithState:&v11 objects:v15 count:16];
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
              objc_enumerationMutation(views);
            }

            if (![*(*(&v11 + 1) + 8 * i) canUseServerTTS])
            {

              LOBYTE(views) = 1;
              goto LABEL_5;
            }
          }

          v8 = [views countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }

    LOBYTE(views) = 0;
  }

LABEL_5:

  v5 = *MEMORY[0x277D85DE8];
  return views;
}

+ (id)_normalizeTextString:(id)string
{
  v3 = MEMORY[0x277CCA900];
  stringCopy = string;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  v6 = [stringCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

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