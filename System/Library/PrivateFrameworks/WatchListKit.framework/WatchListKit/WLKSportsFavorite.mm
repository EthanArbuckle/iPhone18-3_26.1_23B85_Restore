@interface WLKSportsFavorite
- (WLKSportsFavorite)initWithDictionary:(id)dictionary;
- (WLKSportsFavorite)initWithID:(id)d;
@end

@implementation WLKSportsFavorite

- (WLKSportsFavorite)initWithID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = WLKSportsFavorite;
  v5 = [(WLKSportsFavorite *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    ID = v5->_ID;
    v5->_ID = v6;
  }

  return v5;
}

- (WLKSportsFavorite)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = WLKSportsFavorite;
  v5 = [(WLKSportsFavorite *)&v30 init];
  if (v5)
  {
    v6 = [dictionaryCopy wlk_stringForKey:@"abbreviation"];
    abbreviation = v5->_abbreviation;
    v5->_abbreviation = v6;

    v8 = [dictionaryCopy wlk_stringForKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v8;

    v10 = [dictionaryCopy wlk_stringForKey:@"id"];
    ID = v5->_ID;
    v5->_ID = v10;

    v5->_isHome = [dictionaryCopy wlk_BOOLForKey:@"isHome" defaultValue:0];
    v12 = [dictionaryCopy wlk_stringForKey:@"leagueId"];
    leagueId = v5->_leagueId;
    v5->_leagueId = v12;

    v14 = [dictionaryCopy wlk_stringForKey:@"name"];
    name = v5->_name;
    v5->_name = v14;

    v16 = [dictionaryCopy wlk_stringForKey:@"nickname"];
    nickName = v5->_nickName;
    v5->_nickName = v16;

    v18 = [dictionaryCopy wlk_stringForKey:@"shortName"];
    shortName = v5->_shortName;
    v5->_shortName = v18;

    v20 = [dictionaryCopy wlk_dictionaryForKey:@"images"];
    v21 = [v20 wlk_dictionaryForKey:@"masterArtLogo"];
    v22 = [v20 wlk_dictionaryForKey:@"teamLogo"];
    v23 = [[WLKSportImageDetails alloc] initWithDictionary:v21];
    v24 = [[WLKSportImageDetails alloc] initWithDictionary:v22];
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v26 = v25;
    if (v23)
    {
      [v25 setObject:v23 forKey:@"masterArtLogo"];
    }

    if (v24)
    {
      [v26 setObject:v24 forKey:@"teamLogo"];
    }

    v27 = [v26 copy];
    images = v5->_images;
    v5->_images = v27;
  }

  return v5;
}

@end