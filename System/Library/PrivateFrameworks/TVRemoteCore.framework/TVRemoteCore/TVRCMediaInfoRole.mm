@interface TVRCMediaInfoRole
+ (id)roleWithDictionary:(id)a3;
- (BOOL)isEqualToRole:(id)a3;
- (TVRCMediaInfoRole)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TVRCMediaInfoRole

+ (id)roleWithDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TVRCMediaInfoRole);
  v5 = [v3 objectForKeyedSubscript:@"personId"];
  [(TVRCMediaInfoRole *)v4 setCanonicalID:v5];

  v6 = [v3 objectForKeyedSubscript:@"personName"];
  [(TVRCMediaInfoRole *)v4 setActorName:v6];

  v7 = [v3 objectForKeyedSubscript:@"characterName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v7 = &stru_287E5AB30;
  }

  [(TVRCMediaInfoRole *)v4 setCharacterName:v7];

  v8 = [v3 objectForKeyedSubscript:@"roleTitle"];
  [(TVRCMediaInfoRole *)v4 setRoleDescription:v8];

  v9 = [v3 objectForKeyedSubscript:@"url"];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  [(TVRCMediaInfoRole *)v4 setProductPage:v10];
  v11 = [v3 objectForKeyedSubscript:@"images"];
  if ([v11 count])
  {
    v12 = [v11 allKeys];
    v13 = [v12 firstObject];

    if (v13)
    {
      v14 = [v11 objectForKeyedSubscript:v13];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 objectForKeyedSubscript:@"url"];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  [(TVRCMediaInfoRole *)v4 setImageURLTemplate:v16];

  return v4;
}

- (BOOL)isEqualToRole:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = [(TVRCMediaInfoRole *)self productPage];
  v6 = [v4 productPage];
  v7 = (v5 == 0) ^ (v6 == 0);

  if (v7)
  {
    goto LABEL_11;
  }

  v8 = [(TVRCMediaInfoRole *)self imageURLTemplate];
  v9 = [v4 imageURLTemplate];
  v10 = (v8 == 0) ^ (v9 == 0);

  if (v10)
  {
    goto LABEL_11;
  }

  v11 = [(TVRCMediaInfoRole *)self canonicalID];
  v12 = [v4 canonicalID];
  v13 = [v11 isEqualToString:v12];

  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = [(TVRCMediaInfoRole *)self actorName];
  v15 = [v4 actorName];
  v16 = [v14 isEqualToString:v15];

  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = [(TVRCMediaInfoRole *)self characterName];
  v18 = [v4 characterName];
  v19 = [v17 isEqualToString:v18];

  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = [(TVRCMediaInfoRole *)self roleDescription];
  v21 = [v4 roleDescription];
  v22 = [v20 isEqualToString:v21];

  if (!v22)
  {
    goto LABEL_11;
  }

  v23 = [(TVRCMediaInfoRole *)self productPage];
  v24 = [v4 productPage];
  v25 = [v23 isEqual:v24];

  if (v25)
  {
    v26 = [(TVRCMediaInfoRole *)self imageURLTemplate];
    v27 = [v4 imageURLTemplate];
    v28 = [v26 isEqualToString:v27];
  }

  else
  {
LABEL_11:
    v28 = 0;
  }

  return v28;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TVRCMediaInfoRole allocWithZone:?]];
  v5 = [(TVRCMediaInfoRole *)self canonicalID];
  [(TVRCMediaInfoRole *)v4 setCanonicalID:v5];

  v6 = [(TVRCMediaInfoRole *)self actorName];
  [(TVRCMediaInfoRole *)v4 setActorName:v6];

  v7 = [(TVRCMediaInfoRole *)self characterName];
  [(TVRCMediaInfoRole *)v4 setCharacterName:v7];

  v8 = [(TVRCMediaInfoRole *)self roleDescription];
  [(TVRCMediaInfoRole *)v4 setRoleDescription:v8];

  v9 = [(TVRCMediaInfoRole *)self productPage];
  [(TVRCMediaInfoRole *)v4 setProductPage:v9];

  v10 = [(TVRCMediaInfoRole *)self imageURLTemplate];
  [(TVRCMediaInfoRole *)v4 setImageURLTemplate:v10];

  return v4;
}

- (TVRCMediaInfoRole)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TVRCMediaInfoRole;
  v5 = [(TVRCMediaInfoRole *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"canonicalID"];
    canonicalID = v5->_canonicalID;
    v5->_canonicalID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actorName"];
    actorName = v5->_actorName;
    v5->_actorName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"characterName"];
    characterName = v5->_characterName;
    v5->_characterName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roleDescription"];
    roleDescription = v5->_roleDescription;
    v5->_roleDescription = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productPage"];
    productPage = v5->_productPage;
    v5->_productPage = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageURLTemplate"];
    imageURLTemplate = v5->_imageURLTemplate;
    v5->_imageURLTemplate = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  canonicalID = self->_canonicalID;
  v5 = a3;
  [v5 encodeObject:canonicalID forKey:@"canonicalID"];
  [v5 encodeObject:self->_actorName forKey:@"actorName"];
  [v5 encodeObject:self->_characterName forKey:@"characterName"];
  [v5 encodeObject:self->_roleDescription forKey:@"roleDescription"];
  [v5 encodeObject:self->_productPage forKey:@"productPage"];
  [v5 encodeObject:self->_imageURLTemplate forKey:@"imageURLTemplate"];
}

@end