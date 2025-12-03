@interface SVXAceViewSpeakableTextExtractor
- (BOOL)hasSpeakableTexts:(id)texts;
- (id)_speakableTextFromDisambiguationList:(id)list;
- (id)extractWithAceView:(id)view;
@end

@implementation SVXAceViewSpeakableTextExtractor

- (id)_speakableTextFromDisambiguationList:(id)list
{
  v32 = *MEMORY[0x277D85DE8];
  listCopy = list;
  items = [listCopy items];
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v6 = [items count];
  speakableDelimiter = [listCopy speakableDelimiter];
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v27 = "[SVXAceViewSpeakableTextExtractor _speakableTextFromDisambiguationList:]";
    v28 = 2112;
    v29 = speakableDelimiter;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s speakableDelimiter = %@", buf, 0x16u);
  }

  v24 = listCopy;
  speakableFinalDelimiter = [listCopy speakableFinalDelimiter];
  v10 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v27 = "[SVXAceViewSpeakableTextExtractor _speakableTextFromDisambiguationList:]";
    v28 = 2112;
    v29 = speakableFinalDelimiter;
    _os_log_debug_impl(&dword_2695B9000, v10, OS_LOG_TYPE_DEBUG, "%s speakableFinalDelimiter = %@", buf, 0x16u);
  }

  if ([items count])
  {
    v12 = 0;
    v13 = 0;
    v14 = v6 - 1;
    *&v11 = 136315650;
    v23 = v11;
    do
    {
      v15 = [items objectAtIndexedSubscript:{v13, v23}];
      speakableText = [v15 speakableText];
      v17 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = v23;
        v27 = "[SVXAceViewSpeakableTextExtractor _speakableTextFromDisambiguationList:]";
        v28 = 2048;
        v29 = v13;
        v30 = 2112;
        v31 = speakableText;
        _os_log_debug_impl(&dword_2695B9000, v17, OS_LOG_TYPE_DEBUG, "%s disambiguationListItems[%tu].speakableText = %@", buf, 0x20u);
      }

      if (![speakableText length])
      {
        goto LABEL_17;
      }

      if (v12)
      {
        if (v14 == v13)
        {
          v18 = [speakableFinalDelimiter length];
          v19 = speakableFinalDelimiter;
          if (!v18)
          {
            goto LABEL_16;
          }

LABEL_15:
          [v5 appendString:v19];
          goto LABEL_16;
        }

        v20 = [speakableDelimiter length];
        v19 = speakableDelimiter;
        if (v20)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      [v5 appendString:speakableText];
      v12 = 1;
LABEL_17:

      ++v13;
    }

    while (v13 < [items count]);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)extractWithAceView:(id)view
{
  v19 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    speakableText2 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v6 = viewCopy;
    speakableText = [v6 speakableText];
    v8 = MEMORY[0x277CEF098];
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "[SVXAceViewSpeakableTextExtractor extractWithAceView:]";
      v17 = 2112;
      v18 = speakableText;
      _os_log_debug_impl(&dword_2695B9000, v9, OS_LOG_TYPE_DEBUG, "%s speakablePrefix = %@", &v15, 0x16u);
    }

    if ([speakableText length])
    {
      [speakableText2 appendString:speakableText];
    }

    v10 = [(SVXAceViewSpeakableTextExtractor *)self _speakableTextFromDisambiguationList:v6];
    [speakableText2 appendString:v10];

    speakableSuffix = [v6 speakableSuffix];
    v12 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "[SVXAceViewSpeakableTextExtractor extractWithAceView:]";
      v17 = 2112;
      v18 = speakableSuffix;
      _os_log_debug_impl(&dword_2695B9000, v12, OS_LOG_TYPE_DEBUG, "%s speakableSuffix = %@", &v15, 0x16u);
    }

    if ([speakableSuffix length])
    {
      [speakableText2 appendString:speakableSuffix];
    }
  }

  else
  {
    speakableText2 = [viewCopy speakableText];
  }

  v13 = *MEMORY[0x277D85DE8];

  return speakableText2;
}

- (BOOL)hasSpeakableTexts:(id)texts
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  views = [texts views];
  v5 = [views countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(views);
        }

        v9 = [(SVXAceViewSpeakableTextExtractor *)self extractWithAceView:*(*(&v14 + 1) + 8 * i)];
        v10 = [v9 length];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [views countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end