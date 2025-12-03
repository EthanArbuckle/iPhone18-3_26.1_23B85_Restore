@interface REElement
+ (id)_supportedDictionaryEncodingKeys;
- (BOOL)_relevanceProvidersEqualToElement:(id)element;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNoContentElement;
- (REElement)initWithCoder:(id)coder;
- (REElement)initWithDictionary:(id)dictionary relevanceProviderGenerator:(id)generator;
- (REElement)initWithIdentifier:(id)identifier content:(id)content idealizedContent:(id)idealizedContent action:(id)action relevanceProviders:(id)providers privacyBehavior:(unint64_t)behavior;
- (id)copyElementWithUpdatedRelevanceProviders:(id)providers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryEncodingWithRelevanceProviderGenerator:(id)generator;
- (id)shallowCopy;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REElement

- (REElement)initWithIdentifier:(id)identifier content:(id)content idealizedContent:(id)idealizedContent action:(id)action relevanceProviders:(id)providers privacyBehavior:(unint64_t)behavior
{
  identifierCopy = identifier;
  contentCopy = content;
  idealizedContentCopy = idealizedContent;
  actionCopy = action;
  providersCopy = providers;
  v31.receiver = self;
  v31.super_class = REElement;
  v19 = [(REElement *)&v31 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    identifier = v19->_identifier;
    v19->_identifier = v20;

    v22 = [contentCopy copy];
    content = v19->_content;
    v19->_content = v22;

    v24 = [idealizedContentCopy copy];
    idealizedContent = v19->_idealizedContent;
    v19->_idealizedContent = v24;

    objc_storeStrong(&v19->_action, action);
    v26 = objc_alloc(MEMORY[0x277CBEA60]);
    if (providersCopy)
    {
      v27 = providersCopy;
    }

    else
    {
      v27 = MEMORY[0x277CBEBF8];
    }

    v28 = [v26 initWithArray:v27 copyItems:0];
    relevanceProviders = v19->_relevanceProviders;
    v19->_relevanceProviders = v28;

    v19->_privacyBehavior = behavior;
  }

  return v19;
}

+ (id)_supportedDictionaryEncodingKeys
{
  if (_supportedDictionaryEncodingKeys_onceToken != -1)
  {
    +[REElement _supportedDictionaryEncodingKeys];
  }

  v3 = _supportedDictionaryEncodingKeys_EncodingKeys;

  return v3;
}

uint64_t __45__REElement__supportedDictionaryEncodingKeys__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_283BBDA28];
  v1 = _supportedDictionaryEncodingKeys_EncodingKeys;
  _supportedDictionaryEncodingKeys_EncodingKeys = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (REElement)initWithDictionary:(id)dictionary relevanceProviderGenerator:(id)generator
{
  dictionaryCopy = dictionary;
  generatorCopy = generator;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"bundle_id"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"id"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"interaction"];
  v11 = v10;
  v12 = @"REElementInteractionDefault";
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [dictionaryCopy objectForKeyedSubscript:@"app_bundle_id"];
  v15 = [dictionaryCopy objectForKeyedSubscript:@"namespaced_identifier"];
  if (v9)
  {
    obj = v8;
    v16 = objc_alloc_init(REContent);
    v17 = [dictionaryCopy objectForKeyedSubscript:@"title"];

    if (v17)
    {
      v18 = objc_alloc(MEMORY[0x277CCA898]);
      v19 = [dictionaryCopy objectForKeyedSubscript:@"title"];
      v20 = [v18 initWithString:v19];
      [(REContent *)v16 setHeaderText:v20];
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:{@"description1", obj}];

    if (v21)
    {
      v22 = objc_alloc(MEMORY[0x277CCA898]);
      v23 = [dictionaryCopy objectForKeyedSubscript:@"description1"];
      v24 = [v22 initWithString:v23];
      [(REContent *)v16 setDescription1Text:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"description2"];

    if (v25)
    {
      v26 = objc_alloc(MEMORY[0x277CCA898]);
      v27 = [dictionaryCopy objectForKeyedSubscript:@"description2"];
      v28 = [v26 initWithString:v27];
      [(REContent *)v16 setDescription2Text:v28];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"description3"];

    if (v29)
    {
      v30 = objc_alloc(MEMORY[0x277CCA898]);
      v31 = [dictionaryCopy objectForKeyedSubscript:@"description3"];
      v32 = [v30 initWithString:v31];
      [(REContent *)v16 setDescription3Text:v32];
    }

    [(REContent *)v16 setObject:v13 forKey:@"REContentInteractionKey"];
    array = [MEMORY[0x277CBEB18] array];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __59__REElement_initWithDictionary_relevanceProviderGenerator___block_invoke;
    v41[3] = &unk_2785FD2D0;
    v42 = generatorCopy;
    v34 = array;
    v43 = v34;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v41];
    v35 = [(REElement *)self initWithIdentifier:v9 content:v16 action:0 relevanceProviders:v34];
    p_isa = &v35->super.isa;
    v8 = obja;
    if (v35)
    {
      objc_storeStrong(&v35->_bundleIdentifier, obja);
      objc_storeStrong(p_isa + 9, v14);
      objc_storeStrong(p_isa + 8, v15);
    }

    self = p_isa;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __59__REElement_initWithDictionary_relevanceProviderGenerator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [objc_opt_class() _supportedDictionaryEncodingKeys];
  v8 = [v7 containsObject:v5];

  if ((v8 & 1) == 0)
  {
    v9 = [*(a1 + 32) createRelevaneProviderWithType:v5 withOptions:v6];
    if (v9)
    {
      [*(a1 + 40) addObject:v9];
    }

    else
    {
      v10 = RELogForDomain(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __59__REElement_initWithDictionary_relevanceProviderGenerator___block_invoke_cold_1(v5, v10);
      }
    }
  }
}

- (id)dictionaryEncodingWithRelevanceProviderGenerator:(id)generator
{
  v38[1] = *MEMORY[0x277D85DE8];
  generatorCopy = generator;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __62__REElement_dictionaryEncodingWithRelevanceProviderGenerator___block_invoke;
  v33[3] = &unk_2785FD2F8;
  v33[4] = self;
  v6 = MEMORY[0x22AABC5E0](v33);
  v38[0] = @"REContentHeaderTextKey";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  v8 = (v6)[2](v6, v7);
  [dictionary setObject:v8 forKeyedSubscript:@"title"];

  v37 = @"REContentDescription1TextKey";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v10 = (v6)[2](v6, v9);
  [dictionary setObject:v10 forKeyedSubscript:@"description1"];

  v36 = @"REContentDescription2TextKey";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v12 = (v6)[2](v6, v11);
  [dictionary setObject:v12 forKeyedSubscript:@"description2"];

  v35 = @"REContentDescription3TextKey";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v14 = (v6)[2](v6, v13);
  [dictionary setObject:v14 forKeyedSubscript:@"description3"];

  bundleIdentifier = [(REElement *)self bundleIdentifier];
  [dictionary setObject:bundleIdentifier forKeyedSubscript:@"bundle_id"];

  [dictionary setObject:self->_identifier forKeyedSubscript:@"id"];
  content = [(REElement *)self content];
  v17 = [content objectForKey:@"REContentInteractionKey"];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"REElementInteractionDefault";
  }

  [dictionary setObject:v19 forKeyedSubscript:@"interaction"];

  [dictionary setObject:self->_applicationBundleIdentifier forKeyedSubscript:@"app_bundle_id"];
  [dictionary setObject:self->_namespacedIdentifier forKeyedSubscript:@"namespaced_identifier"];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = self->_relevanceProviders;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [generatorCopy encodeRelevaneProvider:{*(*(&v29 + 1) + 8 * i), v29}];
        if (v25)
        {
          [dictionary addEntriesFromDictionary:v25];
        }
      }

      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v22);
  }

  v26 = [dictionary copy];
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

id __62__REElement_dictionaryEncodingWithRelevanceProviderGenerator___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [*(a1 + 32) content];
        v10 = [v9 objectForKey:v8];

        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 contentEncodedString];
          if ([v11 length])
          {

            goto LABEL_13;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)copyElementWithUpdatedRelevanceProviders:(id)providers
{
  providersCopy = providers;
  shallowCopy = [(REElement *)self shallowCopy];
  v6 = [providersCopy copy];

  v7 = shallowCopy[5];
  shallowCopy[5] = v6;

  return shallowCopy;
}

- (REElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"_identifier"];
  v6 = [coderCopy decodeObjectForKey:@"_content"];
  v7 = [coderCopy decodeObjectForKey:@"_idealizedContent"];
  v8 = [coderCopy decodeObjectForKey:@"_action"];
  v9 = [coderCopy decodeObjectForKey:@"_relevanceProviders"];
  v10 = -[REElement initWithIdentifier:content:idealizedContent:action:relevanceProviders:privacyBehavior:](self, "initWithIdentifier:content:idealizedContent:action:relevanceProviders:privacyBehavior:", v5, v6, v7, v8, v9, [coderCopy decodeIntegerForKey:@"_privacyBehavior"]);
  if (v10)
  {
    v11 = [coderCopy decodeObjectForKey:@"_bundleIdentifier"];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;

    v13 = [coderCopy decodeObjectForKey:@"_applicationBundleIdentifier"];
    applicationBundleIdentifier = v10->_applicationBundleIdentifier;
    v10->_applicationBundleIdentifier = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_namespacedIdentifier"];
    namespacedIdentifier = v10->_namespacedIdentifier;
    v10->_namespacedIdentifier = v15;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
  bundleIdentifier = [(REElement *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"_bundleIdentifier"];

  [coderCopy encodeInteger:self->_privacyBehavior forKey:@"_privacyBehavior"];
  [coderCopy encodeObject:self->_content forKey:@"_content"];
  [coderCopy encodeObject:self->_idealizedContent forKey:@"_idealizedContent"];
  [coderCopy encodeObject:self->_action forKey:@"_action"];
  [coderCopy encodeObject:self->_applicationBundleIdentifier forKey:@"_applicationBundleIdentifier"];
  [coderCopy encodeObject:self->_namespacedIdentifier forKey:@"_namespacedIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v4 + 8), self->_identifier);
  *(v4 + 16) = self->_privacyBehavior;
  objc_storeStrong((v4 + 24), self->_content);
  objc_storeStrong((v4 + 32), self->_idealizedContent);
  objc_storeStrong((v4 + 48), self->_action);
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_relevanceProviders copyItems:1];
  v6 = *(v4 + 40);
  *(v4 + 40) = v5;

  objc_storeStrong((v4 + 56), self->_bundleIdentifier);
  objc_storeStrong((v4 + 72), self->_applicationBundleIdentifier);
  objc_storeStrong((v4 + 64), self->_namespacedIdentifier);
  return v4;
}

- (id)shallowCopy
{
  v3 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v3 + 1, self->_identifier);
  v3[2] = self->_privacyBehavior;
  objc_storeStrong(v3 + 3, self->_content);
  objc_storeStrong(v3 + 4, self->_idealizedContent);
  objc_storeStrong(v3 + 6, self->_action);
  objc_storeStrong(v3 + 5, self->_relevanceProviders);
  objc_storeStrong(v3 + 7, self->_bundleIdentifier);
  objc_storeStrong(v3 + 9, self->_applicationBundleIdentifier);
  objc_storeStrong(v3 + 8, self->_namespacedIdentifier);
  return v3;
}

- (BOOL)isNoContentElement
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_relevanceProviders;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (unint64_t)hash
{
  v3 = self->_privacyBehavior ^ [(NSString *)self->_identifier hash];
  v4 = [(REContent *)self->_content hash];
  v5 = v3 ^ v4 ^ [(REContent *)self->_idealizedContent hash];
  v6 = [(REElementAction *)self->_action hash];
  v7 = v6 ^ [(NSArray *)self->_relevanceProviders hash];
  return v5 ^ v7 ^ [(NSString *)self->_applicationBundleIdentifier hash];
}

- (BOOL)_relevanceProvidersEqualToElement:(id)element
{
  v19 = *MEMORY[0x277D85DE8];
  relevanceProviders = [element relevanceProviders];
  v5 = [(NSArray *)self->_relevanceProviders count];
  if (v5 == [relevanceProviders count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = self->_relevanceProviders;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (![relevanceProviders containsObject:{*(*(&v14 + 1) + 8 * i), v14}])
          {
            v11 = 0;
            goto LABEL_13;
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = v5->_identifier;
      v7 = self->_identifier;
      v8 = v7;
      if (v7 == identifier)
      {
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:identifier];

        if (!v9)
        {
          goto LABEL_25;
        }
      }

      if (self->_privacyBehavior == v5->_privacyBehavior)
      {
        content = v5->_content;
        v12 = self->_content;
        v13 = v12;
        if (v12 == content)
        {
        }

        else
        {
          v14 = [(REContent *)v12 isEqual:content];

          if (!v14)
          {
            goto LABEL_25;
          }
        }

        idealizedContent = v5->_idealizedContent;
        v16 = self->_idealizedContent;
        v17 = v16;
        if (v16 == idealizedContent)
        {
        }

        else
        {
          v18 = [(REContent *)v16 isEqual:idealizedContent];

          if (!v18)
          {
            goto LABEL_25;
          }
        }

        action = v5->_action;
        v20 = self->_action;
        v21 = v20;
        if (v20 == action)
        {
        }

        else
        {
          v22 = [(REElementAction *)v20 isEqual:action];

          if (!v22)
          {
            goto LABEL_25;
          }
        }

        if ([(REElement *)self _relevanceProvidersEqualToElement:v5])
        {
          applicationBundleIdentifier = self->_applicationBundleIdentifier;
          v24 = v5->_applicationBundleIdentifier;
          v25 = applicationBundleIdentifier;
          v26 = v25;
          if (v25 == v24)
          {
            v10 = 1;
          }

          else
          {
            v10 = [(NSString *)v25 isEqual:v24];
          }

          goto LABEL_26;
        }
      }

LABEL_25:
      v10 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v10 = 0;
  }

LABEL_27:

  return v10;
}

void __59__REElement_initWithDictionary_relevanceProviderGenerator___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Unable to create relevance provider with type: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end