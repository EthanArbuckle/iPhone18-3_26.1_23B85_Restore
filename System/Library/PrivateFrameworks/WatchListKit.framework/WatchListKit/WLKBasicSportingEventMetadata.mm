@interface WLKBasicSportingEventMetadata
- (WLKBasicSportingEventMetadata)initWithDictionary:(id)a3;
@end

@implementation WLKBasicSportingEventMetadata

- (WLKBasicSportingEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WLKBasicSportingEventMetadata;
  v5 = [(WLKBasicContentMetadata *)&v16 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 wlk_dateFromMillisecondsSince1970ForKey:@"startGameTime"];
    v7 = [v6 copy];
    startGameTime = v5->_startGameTime;
    v5->_startGameTime = v7;

    v9 = [v4 wlk_stringForKey:@"leagueName"];
    v10 = [v9 copy];
    leagueName = v5->_leagueName;
    v5->_leagueName = v10;

    v12 = [v4 wlk_stringForKey:@"leagueShortName"];
    v13 = [v12 copy];
    leagueShortName = v5->_leagueShortName;
    v5->_leagueShortName = v13;
  }

  return v5;
}

@end