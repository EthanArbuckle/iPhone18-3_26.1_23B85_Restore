@interface _ICQButtonSpecification
+ (id)buttonSpecificationSampleForLevel:(int64_t)level;
- (ICQLink)buttonLink;
- (_ICQButtonSpecification)initWithServerDictionary:(id)dictionary;
- (id)linkForBundleIdentifier:(id)identifier;
@end

@implementation _ICQButtonSpecification

- (_ICQButtonSpecification)initWithServerDictionary:(id)dictionary
{
  v29 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = [(_ICQButtonSpecification *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverDict, dictionary);
    v8 = [dictionaryCopy objectForKeyedSubscript:@"mesg"];
    v9 = _ICQStringForKey(v8, @"format");
    buttonFormat = v7->_buttonFormat;
    v7->_buttonFormat = v9;

    v11 = _ICQArrayForKey(v8, @"detailedFormat");
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectAtIndex:0];
      textFormat = v7->_textFormat;
      v7->_textFormat = v13;

      v15 = [v12 objectAtIndex:1];
      linkFormat = v7->_linkFormat;
      v7->_linkFormat = v15;
    }

    else
    {
      v17 = v7->_buttonFormat;
      linkFormat = v7->_textFormat;
      v7->_textFormat = v17;
    }

    v18 = _ICQGetLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v7->_textFormat;
      v20 = v7->_linkFormat;
      v25 = 138412546;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_275572000, v18, OS_LOG_TYPE_DEFAULT, "format array %@ %@", &v25, 0x16u);
    }

    v21 = _ICQLinkButtonForServerMessage(v8, 2);
    buttonLink = v7->_buttonLink;
    v7->_buttonLink = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v7;
}

- (ICQLink)buttonLink
{
  if (self->_serverDict)
  {
    v3 = self->_buttonLink;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v3 = [(_ICQButtonSpecification *)self linkForBundleIdentifier:bundleIdentifier];
  }

  return v3;
}

- (id)linkForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_serverDict)
  {
    buttonLink = [(_ICQButtonSpecification *)self buttonLink];
  }

  else
  {
    linkForBundleIdentifier = [(_ICQButtonSpecification *)self linkForBundleIdentifier];
    buttonLink = [linkForBundleIdentifier objectForKeyedSubscript:identifierCopy];
  }

  return buttonLink;
}

+ (id)buttonSpecificationSampleForLevel:(int64_t)level
{
  if (level == 3)
  {
    if (_ButtonSpecificationSampleForFullLevel_onceToken != -1)
    {
      +[_ICQButtonSpecification(ICQDebugging) buttonSpecificationSampleForLevel:];
    }

    v3 = &_ButtonSpecificationSampleForFullLevel_sButtonSpecification;
    goto LABEL_9;
  }

  if (level == 2)
  {
    if (_ButtonSpecificationSampleForAlmostFullLevel_onceToken != -1)
    {
      +[_ICQButtonSpecification(ICQDebugging) buttonSpecificationSampleForLevel:];
    }

    v3 = &_ButtonSpecificationSampleForAlmostFullLevel_sButtonSpecification;
LABEL_9:
    v4 = *v3;
    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:

  return v4;
}

@end