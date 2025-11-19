@interface WLKFavorite
- (WLKFavorite)initWithDictionary:(id)a3;
- (WLKFavorite)initWithID:(id)a3 name:(id)a4 leagueID:(id)a5;
- (id)description;
@end

@implementation WLKFavorite

- (WLKFavorite)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v17.receiver = self;
    v17.super_class = WLKFavorite;
    v5 = [(WLKFavorite *)&v17 init];
    if (v5)
    {
      v6 = [v4 wlk_stringForKey:@"id"];
      v7 = [v6 copy];
      ID = v5->_ID;
      v5->_ID = v7;

      v9 = [v4 wlk_stringForKey:@"name"];
      v10 = [v9 copy];
      name = v5->_name;
      v5->_name = v10;

      v12 = [v4 wlk_stringForKey:@"leagueId"];
      v13 = [v12 copy];
      leagueID = v5->_leagueID;
      v5->_leagueID = v13;
    }

    self = v5;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  ID = self->_ID;
  v7 = [v3 stringWithFormat:@"<%@: %p name:%@ ID:%@ leagueID:%@>", v5, self, self->_name, ID, self->_leagueID];

  return v7;
}

- (WLKFavorite)initWithID:(id)a3 name:(id)a4 leagueID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = WLKFavorite;
  v11 = [(WLKFavorite *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    ID = v11->_ID;
    v11->_ID = v12;

    v14 = [v9 copy];
    name = v11->_name;
    v11->_name = v14;

    v16 = [v10 copy];
    leagueID = v11->_leagueID;
    v11->_leagueID = v16;
  }

  return v11;
}

@end