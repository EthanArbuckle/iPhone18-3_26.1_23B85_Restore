@interface PRELocaleDetection
+ (BOOL)isLanguageMismatchedForIdentifier:(id)identifier withIdentifier:(id)withIdentifier;
+ (id)languageTagForLocaleIdentifier:(id)identifier;
+ (id)sharedInstance;
- (BOOL)isLanguageMismatchedForMessage:(id)message withLocaleIdentifier:(id)identifier;
- (PRELocaleDetection)init;
- (PRELocaleDetection)initWithLanguageLimit:(unint64_t)limit withPreferredLocales:(id)locales;
- (id)_bestLocaleForLanguageTag:(id)tag;
- (id)_userLanguageDetectedFromString:(id)string preferredLocales:(id)locales;
- (id)_userLocaleDetectedFromString:(id)string;
- (id)localeForIncomingMessages:(id)messages outgoingMessages:(id)outgoingMessages defaultLocale:(id)locale defaultLocaleLastChangedDate:(id)date sender:(id)sender;
- (id)localeForMessage:(id)message outgoingMessageHistory:(id)history defaultLocale:(id)locale defaultLocaleLastChangedDate:(id)date sender:(id)sender;
@end

@implementation PRELocaleDetection

- (id)_bestLocaleForLanguageTag:(id)tag
{
  v17 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  [(NSDictionary *)self->_preferredLocales allKeys];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 hasPrefix:{tagCopy, v12}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)localeForMessage:(id)message outgoingMessageHistory:(id)history defaultLocale:(id)locale defaultLocaleLastChangedDate:(id)date sender:(id)sender
{
  v48 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  historyCopy = history;
  localeCopy = locale;
  dateCopy = date;
  senderCopy = sender;
  v17 = objc_autoreleasePoolPush();
  if (!localeCopy || !dateCopy)
  {
    if (!localeCopy && [(NSDictionary *)self->_preferredLocales count])
    {
      allValues = [(NSDictionary *)self->_preferredLocales allValues];
      firstObject = [allValues firstObject];

LABEL_9:
      if ([(NSDictionary *)self->_preferredLocales count]<= 1)
      {
        v24 = pre_locale_handle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v43 = localeCopy;
          v44 = 2112;
          v45 = firstObject;
          _os_log_impl(&dword_260CE3000, v24, OS_LOG_TYPE_DEFAULT, "Monolingual, default locale %@, detection result %@.", buf, 0x16u);
        }

        v22 = firstObject;
        goto LABEL_38;
      }

      if ([messageCopy length])
      {
        v25 = [(PRELocaleDetection *)self _userLocaleDetectedFromString:messageCopy];
        if ([v25 length])
        {
          v26 = pre_locale_handle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218498;
            v43 = [messageCopy length];
            v44 = 2112;
            v45 = localeCopy;
            v46 = 2112;
            v47 = v25;
            _os_log_impl(&dword_260CE3000, v26, OS_LOG_TYPE_DEFAULT, "Message length: %lu, default locale: %@, detected locale: %@.", buf, 0x20u);
          }

          if (senderCopy)
          {
            [(_PASLRUCache *)self->_lastConfidentLocaleForSender setObject:v25 forKey:senderCopy];
          }

          v27 = v25;
          v22 = v27;
          goto LABEL_37;
        }
      }

      else
      {
        v25 = 0;
      }

      v29 = objc_opt_new();
      if ([historyCopy count])
      {
        [v29 addObjectsFromArray:historyCopy];
      }

      v41 = v29;
      v40 = [v29 _pas_componentsJoinedByString:@"\n"];
      v27 = [(PRELocaleDetection *)self _userLocaleDetectedFromString:?];

      if ([v27 length])
      {
        v30 = pre_locale_handle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v43 = [v41 count];
          v44 = 2112;
          v45 = localeCopy;
          v46 = 2112;
          v47 = v27;
          _os_log_impl(&dword_260CE3000, v30, OS_LOG_TYPE_DEFAULT, "Number of messages used for detection: %lu, default locale: %@, detected locale: %@.", buf, 0x20u);
        }

        if (senderCopy)
        {
          [(_PASLRUCache *)self->_lastConfidentLocaleForSender setObject:v27 forKey:senderCopy];
        }

        v31 = v27;
      }

      else
      {
        if (![localeCopy length])
        {
          v35 = [(_PASLRUCache *)self->_lastConfidentLocaleForSender objectForKey:senderCopy];
          v36 = v35;
          v37 = firstObject;
          if (senderCopy)
          {
            v38 = [v35 length];
            v37 = firstObject;
            if (v38)
            {
              v39 = pre_locale_handle();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v43 = v36;
                _os_log_impl(&dword_260CE3000, v39, OS_LOG_TYPE_DEFAULT, "There was no default locale specified. Falling back to last confident locale for sender: %@", buf, 0xCu);
              }

              v37 = v36;
            }
          }

          v22 = v37;

          goto LABEL_36;
        }

        v32 = pre_locale_handle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = localeCopy;
          _os_log_impl(&dword_260CE3000, v32, OS_LOG_TYPE_DEFAULT, "Failed to detect a locale so falling back to the default locale: %@", buf, 0xCu);
        }

        v31 = localeCopy;
      }

      v22 = v31;
LABEL_36:

LABEL_37:
LABEL_38:

      goto LABEL_39;
    }

LABEL_8:
    firstObject = localeCopy;
    goto LABEL_9;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:dateCopy];
  v20 = v19;

  if (v20 > 3600.0)
  {
    goto LABEL_8;
  }

  v21 = pre_locale_handle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v43 = localeCopy;
    v44 = 2048;
    v45 = 3600;
    v46 = 2112;
    v47 = localeCopy;
    _os_log_impl(&dword_260CE3000, v21, OS_LOG_TYPE_DEFAULT, "Default locale %@ was changed less than %lu seconds ago, detection result %@.", buf, 0x20u);
  }

  v22 = localeCopy;
LABEL_39:
  objc_autoreleasePoolPop(v17);

  v33 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)localeForIncomingMessages:(id)messages outgoingMessages:(id)outgoingMessages defaultLocale:(id)locale defaultLocaleLastChangedDate:(id)date sender:(id)sender
{
  senderCopy = sender;
  dateCopy = date;
  localeCopy = locale;
  outgoingMessagesCopy = outgoingMessages;
  v16 = [messages _pas_componentsJoinedByString:@"\n"];
  v17 = [(PRELocaleDetection *)self localeForMessage:v16 outgoingMessageHistory:outgoingMessagesCopy defaultLocale:localeCopy defaultLocaleLastChangedDate:dateCopy sender:senderCopy];

  return v17;
}

- (BOOL)isLanguageMismatchedForMessage:(id)message withLocaleIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = identifierCopy;
  LOBYTE(v8) = 0;
  if (message && identifierCopy)
  {
    v9 = [(PRELocaleDetection *)self _userLanguageDetectedFromString:message preferredLocales:0];
    if (v9)
    {
      v10 = [objc_opt_class() languageTagForLocaleIdentifier:v7];
      v11 = pre_locale_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_260CE3000, v11, OS_LOG_TYPE_DEFAULT, "Detected language for isLanguageMismatchedForMessage:withLocaleIdentifier: is %@, and language tag for comparison is %@.", &v14, 0x16u);
      }

      v8 = [v9 isEqualToString:v10] ^ 1;
    }

    else
    {
      v10 = pre_locale_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_260CE3000, v10, OS_LOG_TYPE_DEFAULT, "Could not detect language for isLanguageMismatchedForMessage:withLocaleIdentifier: with sufficiently high confidence.", &v14, 2u);
      }

      LOBYTE(v8) = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_userLocaleDetectedFromString:(id)string
{
  v16 = *MEMORY[0x277D85DE8];
  preferredLocales = self->_preferredLocales;
  stringCopy = string;
  allKeys = [(NSDictionary *)preferredLocales allKeys];
  v7 = [(PRELocaleDetection *)self _userLanguageDetectedFromString:stringCopy preferredLocales:allKeys];

  if (!v7)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v8 = [(NSDictionary *)self->_preferredLocales objectForKeyedSubscript:v7];
  if ([v8 length])
  {
    v9 = pre_locale_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_260CE3000, v9, OS_LOG_TYPE_DEFAULT, "Found a directly matching locale based on locale identifier: %@", &v14, 0xCu);
    }
  }

  else
  {
    v11 = [(PRELocaleDetection *)self _bestLocaleForLanguageTag:v7];

    if (![v11 length])
    {
      v10 = 0;
      goto LABEL_11;
    }

    v9 = pre_locale_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_260CE3000, v9, OS_LOG_TYPE_DEFAULT, "Found a matching locale: %@", &v14, 0xCu);
    }

    v8 = v11;
  }

  v11 = v8;
  v10 = v11;
LABEL_11:

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_userLanguageDetectedFromString:(id)string preferredLocales:(id)locales
{
  v37 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  localesCopy = locales;
  v8 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = localesCopy;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [objc_opt_class() languageTagForLocaleIdentifier:{*(*(&v28 + 1) + 8 * i), v28}];
        if ([v14 length])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v11);
  }

  v15 = pre_locale_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v8 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v33 = v16;
    _os_log_impl(&dword_260CE3000, v15, OS_LOG_TYPE_DEFAULT, "Setting language tags as constraints: %@", buf, 0xCu);
  }

  v17 = objc_opt_new();
  v18 = v17;
  if (v8)
  {
    [v17 setLanguageConstraints:v8];
  }

  [v18 processString:{stringCopy, v28}];
  v19 = [v18 languageHypothesesWithMaximum:self->_languageLimit];
  dominantLanguage = [v18 dominantLanguage];
  if (dominantLanguage == *MEMORY[0x277CD8858])
  {
    v25 = 0;
  }

  else
  {
    v21 = [v19 objectForKeyedSubscript:dominantLanguage];
    v22 = pre_locale_handle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = &unk_287341BE0;
      if (v21)
      {
        v23 = v21;
      }

      *buf = 138412546;
      v33 = dominantLanguage;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&dword_260CE3000, v22, OS_LOG_TYPE_DEFAULT, "The probability for this message being for language %@ is %@", buf, 0x16u);
    }

    [v21 floatValue];
    if (v24 <= 0.95)
    {
      v25 = 0;
    }

    else
    {
      v25 = dominantLanguage;
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (PRELocaleDetection)initWithLanguageLimit:(unint64_t)limit withPreferredLocales:(id)locales
{
  v37 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  v35.receiver = self;
  v35.super_class = PRELocaleDetection;
  v6 = [(PRELocaleDetection *)&v35 init];
  v7 = v6;
  if (v6)
  {
    v26 = v6;
    context = objc_autoreleasePoolPush();
    v8 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v27 = localesCopy;
    obj = localesCopy;
    v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v32;
      do
      {
        v13 = 0;
        v29 = v10;
        do
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(obj);
          }

          if (limit - 1 >= v11)
          {
            v14 = *(*(&v31 + 1) + 8 * v13);
            v15 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:{v14, context}];
            v16 = [v15 componentsSeparatedByString:@"@"];
            firstObject = [v16 firstObject];
            v18 = [v8 objectForKeyedSubscript:firstObject];

            if (!v18)
            {
              [v8 setObject:v14 forKeyedSubscript:firstObject];
              ++v11;
            }

            v10 = v29;
          }

          ++v13;
        }

        while (v10 != v13);
        v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    v7 = v26;
    v26->_languageLimit = limit;
    v19 = [v8 copy];
    preferredLocales = v26->_preferredLocales;
    v26->_preferredLocales = v19;

    v21 = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:50];
    lastConfidentLocaleForSender = v26->_lastConfidentLocaleForSender;
    v26->_lastConfidentLocaleForSender = v21;

    objc_autoreleasePoolPop(context);
    localesCopy = v27;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v7;
}

- (PRELocaleDetection)init
{
  userLanguages = [MEMORY[0x277D3A248] userLanguages];
  allObjects = [userLanguages allObjects];
  v5 = [(PRELocaleDetection *)self initWithLanguageLimit:0 withPreferredLocales:allObjects];

  return v5;
}

+ (BOOL)isLanguageMismatchedForIdentifier:(id)identifier withIdentifier:(id)withIdentifier
{
  LOBYTE(v4) = 0;
  if (identifier && withIdentifier)
  {
    v6 = MEMORY[0x277D3A248];
    withIdentifierCopy = withIdentifier;
    v8 = [v6 languageForLocaleIdentifier:identifier];
    v9 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:withIdentifierCopy];

    v4 = [v8 isEqualToString:v9] ^ 1;
  }

  return v4;
}

+ (id)languageTagForLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  firstObject = identifierCopy;
  if ([identifierCopy containsString:@"@"])
  {
    v5 = [identifierCopy componentsSeparatedByString:@"@"];
    firstObject = [v5 firstObject];
  }

  v6 = [MEMORY[0x277D3A248] languageForLocaleIdentifier:firstObject];

  return v6;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2, &__block_literal_global);
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

void __36__PRELocaleDetection_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end