@interface TVRCMediaInfoRole
+ (id)roleWithDictionary:(id)dictionary;
- (BOOL)isEqualToRole:(id)role;
- (TVRCMediaInfoRole)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCMediaInfoRole

+ (id)roleWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(TVRCMediaInfoRole);
  v5 = [dictionaryCopy objectForKeyedSubscript:@"personId"];
  [(TVRCMediaInfoRole *)v4 setCanonicalID:v5];

  v6 = [dictionaryCopy objectForKeyedSubscript:@"personName"];
  [(TVRCMediaInfoRole *)v4 setActorName:v6];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"characterName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v7 = &stru_287E5AB30;
  }

  [(TVRCMediaInfoRole *)v4 setCharacterName:v7];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"roleTitle"];
  [(TVRCMediaInfoRole *)v4 setRoleDescription:v8];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"url"];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  [(TVRCMediaInfoRole *)v4 setProductPage:v10];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"images"];
  if ([v11 count])
  {
    allKeys = [v11 allKeys];
    firstObject = [allKeys firstObject];

    if (firstObject)
    {
      v14 = [v11 objectForKeyedSubscript:firstObject];
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

- (BOOL)isEqualToRole:(id)role
{
  roleCopy = role;
  if (!roleCopy)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  productPage = [(TVRCMediaInfoRole *)self productPage];
  productPage2 = [roleCopy productPage];
  v7 = (productPage == 0) ^ (productPage2 == 0);

  if (v7)
  {
    goto LABEL_11;
  }

  imageURLTemplate = [(TVRCMediaInfoRole *)self imageURLTemplate];
  imageURLTemplate2 = [roleCopy imageURLTemplate];
  v10 = (imageURLTemplate == 0) ^ (imageURLTemplate2 == 0);

  if (v10)
  {
    goto LABEL_11;
  }

  canonicalID = [(TVRCMediaInfoRole *)self canonicalID];
  canonicalID2 = [roleCopy canonicalID];
  v13 = [canonicalID isEqualToString:canonicalID2];

  if (!v13)
  {
    goto LABEL_11;
  }

  actorName = [(TVRCMediaInfoRole *)self actorName];
  actorName2 = [roleCopy actorName];
  v16 = [actorName isEqualToString:actorName2];

  if (!v16)
  {
    goto LABEL_11;
  }

  characterName = [(TVRCMediaInfoRole *)self characterName];
  characterName2 = [roleCopy characterName];
  v19 = [characterName isEqualToString:characterName2];

  if (!v19)
  {
    goto LABEL_11;
  }

  roleDescription = [(TVRCMediaInfoRole *)self roleDescription];
  roleDescription2 = [roleCopy roleDescription];
  v22 = [roleDescription isEqualToString:roleDescription2];

  if (!v22)
  {
    goto LABEL_11;
  }

  productPage3 = [(TVRCMediaInfoRole *)self productPage];
  productPage4 = [roleCopy productPage];
  v25 = [productPage3 isEqual:productPage4];

  if (v25)
  {
    imageURLTemplate3 = [(TVRCMediaInfoRole *)self imageURLTemplate];
    imageURLTemplate4 = [roleCopy imageURLTemplate];
    v28 = [imageURLTemplate3 isEqualToString:imageURLTemplate4];
  }

  else
  {
LABEL_11:
    v28 = 0;
  }

  return v28;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TVRCMediaInfoRole allocWithZone:?]];
  canonicalID = [(TVRCMediaInfoRole *)self canonicalID];
  [(TVRCMediaInfoRole *)v4 setCanonicalID:canonicalID];

  actorName = [(TVRCMediaInfoRole *)self actorName];
  [(TVRCMediaInfoRole *)v4 setActorName:actorName];

  characterName = [(TVRCMediaInfoRole *)self characterName];
  [(TVRCMediaInfoRole *)v4 setCharacterName:characterName];

  roleDescription = [(TVRCMediaInfoRole *)self roleDescription];
  [(TVRCMediaInfoRole *)v4 setRoleDescription:roleDescription];

  productPage = [(TVRCMediaInfoRole *)self productPage];
  [(TVRCMediaInfoRole *)v4 setProductPage:productPage];

  imageURLTemplate = [(TVRCMediaInfoRole *)self imageURLTemplate];
  [(TVRCMediaInfoRole *)v4 setImageURLTemplate:imageURLTemplate];

  return v4;
}

- (TVRCMediaInfoRole)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = TVRCMediaInfoRole;
  v5 = [(TVRCMediaInfoRole *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"canonicalID"];
    canonicalID = v5->_canonicalID;
    v5->_canonicalID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actorName"];
    actorName = v5->_actorName;
    v5->_actorName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"characterName"];
    characterName = v5->_characterName;
    v5->_characterName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roleDescription"];
    roleDescription = v5->_roleDescription;
    v5->_roleDescription = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productPage"];
    productPage = v5->_productPage;
    v5->_productPage = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURLTemplate"];
    imageURLTemplate = v5->_imageURLTemplate;
    v5->_imageURLTemplate = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  canonicalID = self->_canonicalID;
  coderCopy = coder;
  [coderCopy encodeObject:canonicalID forKey:@"canonicalID"];
  [coderCopy encodeObject:self->_actorName forKey:@"actorName"];
  [coderCopy encodeObject:self->_characterName forKey:@"characterName"];
  [coderCopy encodeObject:self->_roleDescription forKey:@"roleDescription"];
  [coderCopy encodeObject:self->_productPage forKey:@"productPage"];
  [coderCopy encodeObject:self->_imageURLTemplate forKey:@"imageURLTemplate"];
}

@end