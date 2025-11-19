@interface TIKeyboardSecureCandidateRenderer
+ (id)allRenderers;
- (CGImage)imageForSendCurrentLocationWithRenderTraits:(id)a3;
- (TIKeyboardSecureCandidateRenderer)init;
- (TIKeyboardSecureCandidateRenderer)initWithLocaleIdentifier:(id)a3;
- (__CFArray)arrayOfContexts:(unint64_t)a3 withRenderTraits:(id)a4;
- (__CFArray)imagesFromContexts:(__CFArray *)a3;
- (__CFArray)imagesFromSecureCandidates:(id)a3 withRenderTraits:(id)a4 outAccessibilityLabels:(id *)a5;
- (id)_truncationSentinel;
- (id)accessibilityLabelsForSecureHeaders:(id)a3 secureContents:(id)a4 truncationSentinel:(id)a5;
- (id)cachedCandidateForSecureCandidate:(id)a3;
- (id)initForLocalizedStrings;
- (id)localizedApplicationNameWithBundleIdentifier:(id)a3;
- (id)localizedStringForKey:(id)a3;
- (id)slotIDsFromSecureCandidates:(id)a3 withRenderTraits:(id)a4;
- (id)updateCachedCandidate:(id)a3 withCandidateString:(id)a4;
- (id)updateCachedCandidate:(id)a3 withStickerIdentifier:(id)a4;
- (unsigned)slotIDForSendCurrentLocationWithRenderTraits:(id)a3;
- (void)clearSecureCandidateCache;
- (void)createContext;
- (void)dealloc;
- (void)recreateContext;
- (void)setLocaleIdentifier:(id)a3;
@end

@implementation TIKeyboardSecureCandidateRenderer

- (id)updateCachedCandidate:(id)a3 withStickerIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setStickerIdentifier:v6];
  }

  [v8 setSlotID:{objc_msgSend(v7, "slotID")}];
  v9 = [(TIKeyboardSecureCandidateRenderer *)self secureCandidateCache];
  v10 = MEMORY[0x277CCABB0];
  v11 = [v7 slotID];

  v12 = [v10 numberWithUnsignedInt:v11];
  [v9 setObject:v8 forKey:v12];

  return v8;
}

- (id)updateCachedCandidate:(id)a3 withCandidateString:(id)a4
{
  v6 = a4;
  v7 = [(TIKeyboardSecureCandidateRenderer *)self cachedCandidateForSecureCandidate:a3];
  v8 = [v7 candidateByReplacingWithCandidate:v6];

  [v8 setSlotID:{objc_msgSend(v7, "slotID")}];
  v9 = [(TIKeyboardSecureCandidateRenderer *)self secureCandidateCache];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "slotID")}];
  [v9 setObject:v8 forKey:v10];

  return v8;
}

- (id)cachedCandidateForSecureCandidate:(id)a3
{
  v4 = a3;
  if ([v4 slotID])
  {
    v5 = [(TIKeyboardSecureCandidateRenderer *)self secureCandidateCache];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "slotID")}];
    v7 = [v5 objectForKey:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(TIKeyboardSecureCandidateRenderer *)self secureCandidateCache];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "slotID")}];
      v11 = [v9 objectForKey:v10];

      [v11 setSlotID:{objc_msgSend(v4, "slotID")}];
    }

    else
    {
      v13 = MEMORY[0x277D6F3D8];
      v14 = [v4 input];
      v11 = [v13 secureCandidateForInput:v14 slotID:objc_msgSend(v4 customInfoType:{"slotID"), objc_msgSend(v4, "customInfoType")}];
    }

    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v4;
    }

    v12 = v15;
  }

  else
  {
    v12 = v4;
  }

  return v12;
}

- (void)clearSecureCandidateCache
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(TIKeyboardSecureCandidateRenderer *)self secureCandidateCache];

  if (v3)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [(TIKeyboardSecureCandidateRenderer *)self secureCandidateCache];
    v5 = [v4 allKeys];

    v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v20;
      v10 = MEMORY[0x277D86220];
      *&v7 = 136315394;
      v18 = v7;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v12 unsignedIntValue];
            *buf = v18;
            v24 = "[TIKeyboardSecureCandidateRenderer clearSecureCandidateCache]";
            v25 = 1024;
            v26 = v13;
            _os_log_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEFAULT, "%s  Deleted slotID %X", buf, 0x12u);
          }

          v14 = [(TIKeyboardSecureCandidateRenderer *)self context];
          [v14 deleteSlot:{objc_msgSend(v12, "unsignedIntValue")}];

          ++v11;
        }

        while (v8 != v11);
        v8 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v8);
    }

    [(NSMutableDictionary *)self->_accessibilityLabelCache removeAllObjects];
    v15 = [(TIKeyboardSecureCandidateRenderer *)self secureCandidateCache];
    [v15 removeAllObjects];

    v16 = +[TIKeyboardSecureTouchManager sharedInstance];
    [v16 clearRegistrations];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)recreateContext
{
  [(TIKeyboardSecureCandidateRenderer *)self clearSecureCandidateCache];

  [(TIKeyboardSecureCandidateRenderer *)self createContext];
}

- (unsigned)slotIDForSendCurrentLocationWithRenderTraits:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TIKeyboardSecureCandidateRenderer *)self context];
  v6 = [v5 createSlot];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[TIKeyboardSecureCandidateRenderer slotIDForSendCurrentLocationWithRenderTraits:]";
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Created slotID %X", buf, 0x12u);
  }

  v7 = [(TIKeyboardSecureCandidateRenderer *)self imageForSendCurrentLocationWithRenderTraits:v4];

  v8 = [(TIKeyboardSecureCandidateRenderer *)self localizedStringForKey:@"SEND_CURRENT_LOCATION_BUTTON_ACCESSIBILITY_LABEL"];
  [(TIKeyboardSecureCandidateRenderer *)self cacheAccessibilityLabel:v8 forSlotID:v6];
  v9 = [(TIKeyboardSecureCandidateRenderer *)self context];
  [v9 setObject:v7 forSlot:v6];

  CFRelease(v7);
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v10 = TIOSLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISecureCandidateLogging: send current location slotID = %ud", "-[TIKeyboardSecureCandidateRenderer slotIDForSendCurrentLocationWithRenderTraits:]", v6];
      *buf = 138412290;
      v15 = v13;
      _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (CGImage)imageForSendCurrentLocationWithRenderTraits:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TIKeyboardSecureCandidateRenderer *)self arrayOfContexts:1 withRenderTraits:v4];
  v6 = MEMORY[0x277CCACA8];
  v7 = [(TIKeyboardSecureCandidateRenderer *)self localizedStringForKey:@"SEND_CURRENT_LOCATION_BUTTON_CAPTION"];
  v21 = 0;
  v8 = [v6 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:&v21, @""];
  v9 = v21;
  v10 = &stru_283FDFAF8;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  if (v9)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v12 = TIOSLogFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISecureCandidateLogging: ERROR: invalid localized format for key SEND_CURRENT_LOCATION_BUTTON_CAPTION: %@", "-[TIKeyboardSecureCandidateRenderer imageForSendCurrentLocationWithRenderTraits:]", v9];
      *buf = 138412290;
      v24 = v20;
      _os_log_debug_impl(&dword_22CA55000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v22 = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v14 = [TIKeyboardSecureCandidateTextRendering drawSecureHeaders:&unk_28400B898 secureContents:v13 inContexts:v5 traits:v4 truncationSentinel:0];

  v15 = [(TIKeyboardSecureCandidateRenderer *)self imagesFromContexts:v5];
  CFRelease(v5);
  ValueAtIndex = CFArrayGetValueAtIndex(v15, 0);
  v17 = CFRetain(ValueAtIndex);
  CFRelease(v15);

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)slotIDsFromSecureCandidates:(id)a3 withRenderTraits:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v5 = [(TIKeyboardSecureCandidateRenderer *)self imagesFromSecureCandidates:a3 withRenderTraits:a4 outAccessibilityLabels:&v30];
  v6 = v30;
  v7 = [v6 count];
  Count = CFArrayGetCount(v5);
  if ([(NSArray *)self->_arrayOfAttributes count]< Count)
  {
    if ([(NSArray *)self->_arrayOfAttributes count])
    {
      v9 = [(NSArray *)self->_arrayOfAttributes mutableCopy];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:Count];
    }

    v10 = v9;
    v11 = [(NSArray *)self->_arrayOfAttributes count];
    v12 = Count - v11;
    if (Count > v11)
    {
      do
      {
        v13 = objc_alloc_init(TISecureCandidateAttributes);
        [(NSArray *)v10 addObject:v13];

        --v12;
      }

      while (v12);
    }

    arrayOfAttributes = self->_arrayOfAttributes;
    self->_arrayOfAttributes = v10;
  }

  if (Count)
  {
    v15 = 0;
    v16 = MEMORY[0x277D86220];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v15);
      v18 = [(TIKeyboardSecureCandidateRenderer *)self context];
      v19 = [v18 createSlot];

      if (!v19)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v32 = "[TIKeyboardSecureCandidateRenderer slotIDsFromSecureCandidates:withRenderTraits:]";
          _os_log_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEFAULT, "%s  slotID is 0, recreating remote context", buf, 0xCu);
        }

        [(TIKeyboardSecureCandidateRenderer *)self recreateContext];
        v20 = [(TIKeyboardSecureCandidateRenderer *)self context];
        v19 = [v20 createSlot];

        if (!v19)
        {
          break;
        }
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v32 = "[TIKeyboardSecureCandidateRenderer slotIDsFromSecureCandidates:withRenderTraits:]";
        v33 = 1024;
        v34 = v19;
        _os_log_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEFAULT, "%s  Created slotID %X", buf, 0x12u);
      }

      if (!v15)
      {
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (TICanLogMessageAtLevel_logLevel >= 2)
        {
          v21 = TIOSLogFacility();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISecureCandidateLogging: proactive candidate first slotID = %ud", "-[TIKeyboardSecureCandidateRenderer slotIDsFromSecureCandidates:withRenderTraits:]", v19];
            *buf = 138412290;
            v32 = v29;
            _os_log_debug_impl(&dword_22CA55000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v22 = [(TIKeyboardSecureCandidateRenderer *)self context];
      [v22 setObject:ValueAtIndex forSlot:v19];

      v23 = [(NSArray *)self->_arrayOfAttributes objectAtIndexedSubscript:v15];
      [v23 setSlotID:v19];

      if (v6 && v15 < v7)
      {
        v24 = [v6 objectAtIndex:v15];
        [(TIKeyboardSecureCandidateRenderer *)self cacheAccessibilityLabel:v24 forSlotID:v19];
      }

      if (Count == ++v15)
      {
        goto LABEL_30;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v32 = "[TIKeyboardSecureCandidateRenderer slotIDsFromSecureCandidates:withRenderTraits:]";
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  slotID is still 0 after recreating remote context", buf, 0xCu);
    }
  }

LABEL_30:
  CFRelease(v5);
  v25 = self->_arrayOfAttributes;
  v26 = v25;

  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

- (id)localizedApplicationNameWithBundleIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getLSApplicationProxyClass_softClass;
    v13 = getLSApplicationProxyClass_softClass;
    if (!getLSApplicationProxyClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getLSApplicationProxyClass_block_invoke;
      v9[3] = &unk_278733760;
      v9[4] = &v10;
      __getLSApplicationProxyClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [v4 applicationProxyForIdentifier:v3];
    v7 = [v6 localizedName];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)accessibilityLabelsForSecureHeaders:(id)a3 secureContents:(id)a4 truncationSentinel:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  if ([v7 count])
  {
    v11 = 0;
    v27 = v10;
    do
    {
      v12 = [v7 objectAtIndex:v11];
      v13 = v12;
      if (v9)
      {
        v14 = [v12 stringByReplacingOccurrencesOfString:v9 withString:&stru_283FDFAF8];

        v13 = v14;
      }

      v15 = [v8 objectAtIndex:v11];
      if ([v13 length] && objc_msgSend(v15, "length"))
      {
        v16 = v8;
        v17 = [(TIKeyboardSecureCandidateRenderer *)self localizedStringForKey:@"PROACTIVE_CANDIDATE_ACCESSIBILITY_LABEL"];
        v29 = 0;
        v18 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v17 validFormatSpecifiers:@"%@%@" error:&v29, v13, v15];
        v19 = v29;
        v20 = &stru_283FDFAF8;
        if (v18)
        {
          v20 = v18;
        }

        v21 = v20;

        if (v19)
        {
          if (TICanLogMessageAtLevel_onceToken != -1)
          {
            dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
          }

          v22 = TIOSLogFacility();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISecureCandidateLogging: ERROR: invalid localized format for key PROACTIVE_CANDIDATE_ACCESSIBILITY_LABEL: %@", "-[TIKeyboardSecureCandidateRenderer accessibilityLabelsForSecureHeaders:secureContents:truncationSentinel:]", v19];
            *buf = 138412290;
            v31 = v26;
            _os_log_debug_impl(&dword_22CA55000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        v8 = v16;
        v10 = v27;
        goto LABEL_21;
      }

      if ([v13 length])
      {
        v23 = v13;
      }

      else
      {
        if (![v15 length])
        {
          v21 = &stru_283FDFAF8;
          goto LABEL_21;
        }

        v23 = v15;
      }

      v21 = v23;
LABEL_21:
      [v10 addObject:v21];

      ++v11;
    }

    while (v11 < [v7 count]);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v10;
}

- (__CFArray)imagesFromSecureCandidates:(id)a3 withRenderTraits:(id)a4 outAccessibilityLabels:(id *)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v10 = TIOSLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v31 = MEMORY[0x277CCACA8];
      v32 = [v8 count];
      [v9 singleCellWidth];
      v34 = v33;
      [v9 singleCellHeight];
      v36 = [v31 stringWithFormat:@"%s DEBUG:ProactiveQuickType:TI: Secure rendering %lu items (width: %f, height: %f)", "-[TIKeyboardSecureCandidateRenderer imagesFromSecureCandidates:withRenderTraits:outAccessibilityLabels:]", v32, v34, v35];
      *buf = 138412290;
      v47 = v36;
      _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v39 = a5;
  if ([v8 count])
  {
    v11 = [v8 objectAtIndex:0];
    v37 = [v11 truncationSentinel];
  }

  else
  {
    v37 = 0;
  }

  v38 = self;
  v40 = v9;
  v12 = -[TIKeyboardSecureCandidateRenderer arrayOfContexts:withRenderTraits:](self, "arrayOfContexts:withRenderTraits:", [v8 count], v9);
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v42;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v41 + 1) + 8 * i);
        v21 = [v20 secureHeader];
        if (v21)
        {
          v22 = v21;
          v23 = [v20 secureContent];

          if (v23)
          {
            v24 = [v20 secureHeader];
            [v13 addObject:v24];

            v25 = [v20 secureContent];
            [v14 addObject:v25];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v17);
  }

  v26 = [TIKeyboardSecureCandidateTextRendering drawSecureHeaders:v13 secureContents:v14 inContexts:v12 traits:v40 truncationSentinel:v37];
  arrayOfAttributes = v38->_arrayOfAttributes;
  v38->_arrayOfAttributes = v26;

  v28 = [(TIKeyboardSecureCandidateRenderer *)v38 imagesFromContexts:v12];
  CFRelease(v12);
  if (v39)
  {
    *v39 = [(TIKeyboardSecureCandidateRenderer *)v38 accessibilityLabelsForSecureHeaders:v13 secureContents:v14 truncationSentinel:v37];
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)_truncationSentinel
{
  __buf[2] = *MEMORY[0x277D85DE8];
  __buf[0] = 0;
  __buf[1] = 0;
  arc4random_buf(__buf, 0x10uLL);
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:__buf];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 UUIDString];
  v5 = [v3 stringWithFormat:@"*%@*", v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (__CFArray)imagesFromContexts:(__CFArray *)a3
{
  Count = CFArrayGetCount(a3);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
  for (i = 0; i < CFArrayGetCount(a3); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
    Image = CGBitmapContextCreateImage(ValueAtIndex);
    CFArrayAppendValue(Mutable, Image);
    CGImageRelease(Image);
  }

  return Mutable;
}

- (__CFArray)arrayOfContexts:(unint64_t)a3 withRenderTraits:(id)a4
{
  v5 = a4;
  if (arrayOfContexts_withRenderTraits__onceToken != -1)
  {
    dispatch_once(&arrayOfContexts_withRenderTraits__onceToken, &__block_literal_global_399);
  }

  Mutable = CFArrayCreateMutable(0, a3, MEMORY[0x277CBF128]);
  if (a3)
  {
    if ([v5 maxCellCount] >= 1)
    {
      v7 = [v5 maxCellCount];
      if (v7 < a3)
      {
        a3 = v7;
      }
    }

    v8 = a3;
    if ([v5 sharedCellCount])
    {
      v8 = [v5 sharedCellCount] + a3;
    }

    v9 = [v5 resultCountToSingleCellWidth];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [v5 resultCountToSingleCellWidth];
      v12 = [v11 count];

      v13 = [v5 resultCountToSingleCellWidth];
      v14 = v13;
      if (v12 <= a3)
      {
        [v13 lastObject];
      }

      else
      {
        [v13 objectAtIndexedSubscript:a3];
      }
      v15 = ;
    }

    else
    {
      v16 = [v5 cellRenderingStyle];
      v17 = [v5 cellWidthOptions];
      v14 = v17;
      if (v16)
      {
        switch(v8)
        {
          case 1uLL:
            v18 = MEMORY[0x277D6F938];
            break;
          case 2uLL:
            v18 = MEMORY[0x277D6F958];
            break;
          case 3uLL:
            v18 = MEMORY[0x277D6F948];
            break;
          default:
            v18 = MEMORY[0x277D6F968];
            break;
        }
      }

      else if (v8 == 1)
      {
        v18 = MEMORY[0x277D6F940];
      }

      else if (v8 == 2)
      {
        v18 = MEMORY[0x277D6F960];
      }

      else
      {
        v18 = MEMORY[0x277D6F950];
      }

      v15 = [v17 objectForKey:*v18];
    }

    v19 = v15;
    [v15 doubleValue];
    v21 = v20;

    for (; a3; --a3)
    {
      [v5 screenScale];
      v23 = fmax(ceil(v21 * v22), 1.0);
      [v5 singleCellHeight];
      v25 = v24;
      [v5 screenScale];
      v27 = CGBitmapContextCreate(0, v23, fmax(ceil(v25 * v26), 1.0), 8uLL, 0, arrayOfContexts_withRenderTraits__colorSpace, 2u);
      [v5 screenScale];
      v29 = v28;
      [v5 screenScale];
      CGContextScaleCTM(v27, v29, v30);
      CFArrayAppendValue(Mutable, v27);
      CGContextRelease(v27);
    }
  }

  return Mutable;
}

CGColorSpaceRef __70__TIKeyboardSecureCandidateRenderer_arrayOfContexts_withRenderTraits___block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  arrayOfContexts_withRenderTraits__colorSpace = result;
  return result;
}

- (id)localizedStringForKey:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [MEMORY[0x277CBEAF8] _deviceLanguage];
  v6 = [v4 preferredLocalizations];
  v7 = MEMORY[0x277CCA8D8];
  v16[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v9 = [v7 preferredLocalizationsFromArray:v6 forPreferences:v8];

  v10 = [v9 firstObject];
  v11 = [v4 localizedStringForKey:v3 value:0 table:@"SecureCandidate" localization:v10];
  if ([v11 isEqual:v3])
  {
    v12 = [v4 localizedStringForKey:v3 value:&stru_283FDFAF8 table:@"SecureCandidate"];
  }

  else
  {
    v12 = v11;
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)setLocaleIdentifier:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToString:self->_localeIdentifier] & 1) == 0)
  {
    objc_storeStrong(&self->_localeIdentifier, a3);
    [(TIKeyboardSecureCandidateRenderer *)self clearSecureCandidateCache];
  }
}

- (void)createContext
{
  v12[5] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBED28];
  v4 = *MEMORY[0x277CDA100];
  v11[0] = *MEMORY[0x277CDA118];
  v11[1] = v4;
  v5 = *MEMORY[0x277CBED10];
  v12[0] = v3;
  v12[1] = v5;
  v6 = *MEMORY[0x277CDA110];
  v11[2] = *MEMORY[0x277CDA108];
  v11[3] = v6;
  v12[2] = v3;
  v12[3] = v3;
  v11[4] = *MEMORY[0x277CDA0E8];
  v12[4] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v8 = [MEMORY[0x277CD9E38] remoteContextWithOptions:v7];
  context = self->_context;
  self->_context = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = __allSecureRenderers;
  objc_sync_enter(v3);
  [__allSecureRenderers removeObject:self];
  objc_sync_exit(v3);

  v4.receiver = self;
  v4.super_class = TIKeyboardSecureCandidateRenderer;
  [(TIKeyboardSecureCandidateRenderer *)&v4 dealloc];
}

- (TIKeyboardSecureCandidateRenderer)initWithLocaleIdentifier:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = TIKeyboardSecureCandidateRenderer;
  v6 = [(TIKeyboardSecureCandidateRenderer *)&v14 init];
  v7 = v6;
  if (v6)
  {
    [(TIKeyboardSecureCandidateRenderer *)v6 createContext];
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    secureCandidateCache = v7->_secureCandidateCache;
    v7->_secureCandidateCache = v8;

    objc_storeStrong(&v7->_localeIdentifier, a3);
    v10 = __allSecureRenderers;
    objc_sync_enter(v10);
    if (__allSecureRenderers)
    {
      [__allSecureRenderers addObject:v7];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v7, 0}];
      v12 = __allSecureRenderers;
      __allSecureRenderers = v11;
    }

    objc_sync_exit(v10);
  }

  return v7;
}

- (id)initForLocalizedStrings
{
  v7.receiver = self;
  v7.super_class = TIKeyboardSecureCandidateRenderer;
  v2 = [(TIKeyboardSecureCandidateRenderer *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAF8] currentLocale];
    v4 = [v3 localeIdentifier];
    localeIdentifier = v2->_localeIdentifier;
    v2->_localeIdentifier = v4;
  }

  return v2;
}

- (TIKeyboardSecureCandidateRenderer)init
{
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v3 localeIdentifier];
  v5 = [(TIKeyboardSecureCandidateRenderer *)self initWithLocaleIdentifier:v4];

  return v5;
}

+ (id)allRenderers
{
  v2 = __allSecureRenderers;
  objc_sync_enter(v2);
  v3 = [__allSecureRenderers copy];
  objc_sync_exit(v2);

  return v3;
}

@end