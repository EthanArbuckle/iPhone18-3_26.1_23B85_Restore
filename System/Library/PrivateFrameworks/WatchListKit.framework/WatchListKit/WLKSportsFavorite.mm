@interface WLKSportsFavorite
- (WLKSportsFavorite)initWithDictionary:(id)a3;
- (WLKSportsFavorite)initWithID:(id)a3;
@end

@implementation WLKSportsFavorite

- (WLKSportsFavorite)initWithID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WLKSportsFavorite;
  v5 = [(WLKSportsFavorite *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    ID = v5->_ID;
    v5->_ID = v6;
  }

  return v5;
}

- (WLKSportsFavorite)initWithDictionary:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = WLKSportsFavorite;
  v5 = [(WLKSportsFavorite *)&v30 init];
  if (v5)
  {
    v6 = [v4 wlk_stringForKey:@"abbreviation"];
    abbreviation = v5->_abbreviation;
    v5->_abbreviation = v6;

    v8 = [v4 wlk_stringForKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v8;

    v10 = [v4 wlk_stringForKey:@"id"];
    ID = v5->_ID;
    v5->_ID = v10;

    v5->_isHome = [v4 wlk_BOOLForKey:@"isHome" defaultValue:0];
    v12 = [v4 wlk_stringForKey:@"leagueId"];
    leagueId = v5->_leagueId;
    v5->_leagueId = v12;

    v14 = [v4 wlk_stringForKey:@"name"];
    name = v5->_name;
    v5->_name = v14;

    v16 = [v4 wlk_stringForKey:@"nickname"];
    nickName = v5->_nickName;
    v5->_nickName = v16;

    v18 = [v4 wlk_stringForKey:@"shortName"];
    shortName = v5->_shortName;
    v5->_shortName = v18;

    v20 = [v4 wlk_dictionaryForKey:@"images"];
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