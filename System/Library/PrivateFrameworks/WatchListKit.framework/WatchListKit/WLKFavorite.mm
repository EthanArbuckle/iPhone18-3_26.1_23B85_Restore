@interface WLKFavorite
- (WLKFavorite)initWithDictionary:(id)dictionary;
- (WLKFavorite)initWithID:(id)d name:(id)name leagueID:(id)iD;
- (id)description;
@end

@implementation WLKFavorite

- (WLKFavorite)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v17.receiver = self;
    v17.super_class = WLKFavorite;
    v5 = [(WLKFavorite *)&v17 init];
    if (v5)
    {
      v6 = [dictionaryCopy wlk_stringForKey:@"id"];
      v7 = [v6 copy];
      ID = v5->_ID;
      v5->_ID = v7;

      v9 = [dictionaryCopy wlk_stringForKey:@"name"];
      v10 = [v9 copy];
      name = v5->_name;
      v5->_name = v10;

      v12 = [dictionaryCopy wlk_stringForKey:@"leagueId"];
      v13 = [v12 copy];
      leagueID = v5->_leagueID;
      v5->_leagueID = v13;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (WLKFavorite)initWithID:(id)d name:(id)name leagueID:(id)iD
{
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  v19.receiver = self;
  v19.super_class = WLKFavorite;
  v11 = [(WLKFavorite *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    ID = v11->_ID;
    v11->_ID = v12;

    v14 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v14;

    v16 = [iDCopy copy];
    leagueID = v11->_leagueID;
    v11->_leagueID = v16;
  }

  return v11;
}

@end