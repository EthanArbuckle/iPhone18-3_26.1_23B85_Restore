@interface PKAMSMediaLookupItemMusic
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMusicItem:(id)item;
- (PKAMSMediaLookupItemMusic)initWithCoder:(id)coder;
- (PKAMSMediaLookupItemMusic)initWithType:(unint64_t)type artwork:(id)artwork animatedArtworkURL:(id)l displayName:(id)name itemDescription:(id)description musicURL:(id)rL appleCurated:(BOOL)curated;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAMSMediaLookupItemMusic

- (PKAMSMediaLookupItemMusic)initWithType:(unint64_t)type artwork:(id)artwork animatedArtworkURL:(id)l displayName:(id)name itemDescription:(id)description musicURL:(id)rL appleCurated:(BOOL)curated
{
  artworkCopy = artwork;
  lCopy = l;
  nameCopy = name;
  descriptionCopy = description;
  rLCopy = rL;
  if (type <= 2)
  {
    v19 = [(PKAMSMediaLookupItem *)self _initWithType:type];
    objc_storeStrong(v19 + 3, artwork);
    objc_storeStrong(v19 + 4, l);
    objc_storeStrong(v19 + 5, name);
    objc_storeStrong(v19 + 6, description);
    objc_storeStrong(v19 + 7, rL);
    *(v19 + 16) = curated;
    self = v19;
  }

  return self;
}

- (PKAMSMediaLookupItemMusic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKAMSMediaLookupItemMusic;
  v5 = [(PKAMSMediaLookupItem *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"animatedArtworkURL"];
    animatedArtworkURL = v5->_animatedArtworkURL;
    v5->_animatedArtworkURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemDescription"];
    itemDescription = v5->_itemDescription;
    v5->_itemDescription = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"musicURL"];
    musicURL = v5->_musicURL;
    v5->_musicURL = v14;

    v5->_appleCurated = [coderCopy decodeBoolForKey:@"appleCurated"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKAMSMediaLookupItemMusic;
  coderCopy = coder;
  [(PKAMSMediaLookupItem *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_artwork forKey:{@"artwork", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_animatedArtworkURL forKey:@"animatedArtworkURL"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_itemDescription forKey:@"itemDescription"];
  [coderCopy encodeObject:self->_musicURL forKey:@"musicURL"];
  [coderCopy encodeBool:self->_appleCurated forKey:@"appleCurated"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PKAMSMediaLookupItemMusic;
  v4 = [(PKAMSMediaLookupItem *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 3, self->_artwork);
  objc_storeStrong(v4 + 4, self->_animatedArtworkURL);
  objc_storeStrong(v4 + 5, self->_displayName);
  objc_storeStrong(v4 + 6, self->_itemDescription);
  objc_storeStrong(v4 + 7, self->_musicURL);
  *(v4 + 16) = self->_appleCurated;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAMSMediaLookupItemMusic *)self isEqualToMusicItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToMusicItem:(id)item
{
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = PKAMSMediaLookupItemMusic;
  if (![(PKAMSMediaLookupItem *)&v16 isEqualToItem:itemCopy]|| !PKEqualObjects() || !PKEqualObjects())
  {
    goto LABEL_21;
  }

  v5 = itemCopy[5];
  v6 = self->_displayName;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_17;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_21;
    }
  }

  v11 = itemCopy[6];
  v6 = self->_itemDescription;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {

    goto LABEL_19;
  }

  if (!v6 || !v12)
  {
LABEL_17:

LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  v13 = [(NSString *)v6 isEqualToString:v12];

  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (!PKEqualObjects())
  {
    goto LABEL_21;
  }

  v14 = self->_appleCurated == *(itemCopy + 16);
LABEL_22:

  return v14;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v8.receiver = self;
  v8.super_class = PKAMSMediaLookupItemMusic;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKAMSMediaLookupItem hash](&v8, sel_hash)}];
  [array safelyAddObject:v4];

  [array safelyAddObject:self->_artwork];
  [array safelyAddObject:self->_animatedArtworkURL];
  [array safelyAddObject:self->_displayName];
  [array safelyAddObject:self->_itemDescription];
  [array safelyAddObject:self->_musicURL];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_appleCurated];
  [array safelyAddObject:v5];

  v6 = PKCombinedHash();
  return v6;
}

@end