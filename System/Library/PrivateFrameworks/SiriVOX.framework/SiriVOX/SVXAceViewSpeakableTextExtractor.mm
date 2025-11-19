@interface SVXAceViewSpeakableTextExtractor
- (BOOL)hasSpeakableTexts:(id)a3;
- (id)_speakableTextFromDisambiguationList:(id)a3;
- (id)extractWithAceView:(id)a3;
@end

@implementation SVXAceViewSpeakableTextExtractor

- (id)_speakableTextFromDisambiguationList:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 items];
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v6 = [v4 count];
  v25 = [v3 speakableDelimiter];
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v27 = "[SVXAceViewSpeakableTextExtractor _speakableTextFromDisambiguationList:]";
    v28 = 2112;
    v29 = v25;
    _os_log_debug_impl(&dword_2695B9000, v8, OS_LOG_TYPE_DEBUG, "%s speakableDelimiter = %@", buf, 0x16u);
  }

  v24 = v3;
  v9 = [v3 speakableFinalDelimiter];
  v10 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v27 = "[SVXAceViewSpeakableTextExtractor _speakableTextFromDisambiguationList:]";
    v28 = 2112;
    v29 = v9;
    _os_log_debug_impl(&dword_2695B9000, v10, OS_LOG_TYPE_DEBUG, "%s speakableFinalDelimiter = %@", buf, 0x16u);
  }

  if ([v4 count])
  {
    v12 = 0;
    v13 = 0;
    v14 = v6 - 1;
    *&v11 = 136315650;
    v23 = v11;
    do
    {
      v15 = [v4 objectAtIndexedSubscript:{v13, v23}];
      v16 = [v15 speakableText];
      v17 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = v23;
        v27 = "[SVXAceViewSpeakableTextExtractor _speakableTextFromDisambiguationList:]";
        v28 = 2048;
        v29 = v13;
        v30 = 2112;
        v31 = v16;
        _os_log_debug_impl(&dword_2695B9000, v17, OS_LOG_TYPE_DEBUG, "%s disambiguationListItems[%tu].speakableText = %@", buf, 0x20u);
      }

      if (![v16 length])
      {
        goto LABEL_17;
      }

      if (v12)
      {
        if (v14 == v13)
        {
          v18 = [v9 length];
          v19 = v9;
          if (!v18)
          {
            goto LABEL_16;
          }

LABEL_15:
          [v5 appendString:v19];
          goto LABEL_16;
        }

        v20 = [v25 length];
        v19 = v25;
        if (v20)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      [v5 appendString:v16];
      v12 = 1;
LABEL_17:

      ++v13;
    }

    while (v13 < [v4 count]);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)extractWithAceView:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v6 = v4;
    v7 = [v6 speakableText];
    v8 = MEMORY[0x277CEF098];
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "[SVXAceViewSpeakableTextExtractor extractWithAceView:]";
      v17 = 2112;
      v18 = v7;
      _os_log_debug_impl(&dword_2695B9000, v9, OS_LOG_TYPE_DEBUG, "%s speakablePrefix = %@", &v15, 0x16u);
    }

    if ([v7 length])
    {
      [v5 appendString:v7];
    }

    v10 = [(SVXAceViewSpeakableTextExtractor *)self _speakableTextFromDisambiguationList:v6];
    [v5 appendString:v10];

    v11 = [v6 speakableSuffix];
    v12 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "[SVXAceViewSpeakableTextExtractor extractWithAceView:]";
      v17 = 2112;
      v18 = v11;
      _os_log_debug_impl(&dword_2695B9000, v12, OS_LOG_TYPE_DEBUG, "%s speakableSuffix = %@", &v15, 0x16u);
    }

    if ([v11 length])
    {
      [v5 appendString:v11];
    }
  }

  else
  {
    v5 = [v4 speakableText];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)hasSpeakableTexts:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [a3 views];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [(SVXAceViewSpeakableTextExtractor *)self extractWithAceView:*(*(&v14 + 1) + 8 * i)];
        v10 = [v9 length];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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