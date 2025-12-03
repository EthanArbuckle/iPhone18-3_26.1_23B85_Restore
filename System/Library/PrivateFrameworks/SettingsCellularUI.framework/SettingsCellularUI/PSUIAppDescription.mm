@interface PSUIAppDescription
- (PSUIAppDescription)initWithAMSMediaResponseDictionary:(id)dictionary;
- (id)description;
@end

@implementation PSUIAppDescription

- (PSUIAppDescription)initWithAMSMediaResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = PSUIAppDescription;
  v5 = [(PSUIAppDescription *)&v30 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
    v7 = [v6 objectForKeyedSubscript:@"name"];
    [(PSUIAppDescription *)v5 setName:v7];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
    v9 = [v8 objectForKeyedSubscript:@"artistName"];
    [(PSUIAppDescription *)v5 setPublisher:v9];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
    v11 = [v10 objectForKeyedSubscript:@"platformAttributes"];
    v12 = [v11 objectForKeyedSubscript:@"ios"];

    v13 = [v12 objectForKeyedSubscript:@"bundleId"];
    [(PSUIAppDescription *)v5 setBundleID:v13];

    v14 = objc_alloc(MEMORY[0x277CEE548]);
    v15 = [v12 objectForKeyedSubscript:@"artwork"];
    v16 = [v14 initWithDictionary:v15];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v19 = v18 * 60.0;
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v22 = [v16 URLWithSize:{v19, v21 * 60.0}];
    [(PSUIAppDescription *)v5 setIconURL:v22];

    v23 = MEMORY[0x277CBEBC0];
    v24 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
    v25 = [v24 objectForKeyedSubscript:@"url"];
    v26 = [v23 URLWithString:v25];
    [(PSUIAppDescription *)v5 setInstallURL:v26];

    v27 = [v12 objectForKey:@"subtitle"];

    if (v27)
    {
      v28 = [v12 objectForKeyedSubscript:@"subtitle"];
      [(PSUIAppDescription *)v5 setSubtitle:v28];
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  subtitle = self->_subtitle;
  installURL = self->_installURL;
  v8 = [v3 stringWithFormat:@"%@: {name: %@, publisher: %@, bundleID: %@, subtitle: %@, icon URL: %@, install URL: %@, icon: %@}", v5, self->_name, self->_publisher, self->_bundleID, subtitle, self->_iconURL, installURL, self->_icon];

  return v8;
}

@end