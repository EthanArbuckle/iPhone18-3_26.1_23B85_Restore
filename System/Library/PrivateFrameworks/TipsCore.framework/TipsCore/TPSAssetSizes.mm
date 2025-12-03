@interface TPSAssetSizes
- (TPSAssetSizes)initWithCoder:(id)coder;
- (TPSAssetSizes)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAssetSizes

- (TPSAssetSizes)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = TPSAssetSizes;
  v5 = [(TPSSerializableObject *)&v24 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [TPSSizes alloc];
  v7 = [dictionaryCopy TPSSafeDictionaryForKey:@"tip"];
  v8 = [(TPSSizes *)v6 initWithDictionary:v7];
  tip = v5->_tip;
  v5->_tip = v8;

  v10 = [TPSSizes alloc];
  v11 = [dictionaryCopy TPSSafeDictionaryForKey:@"tipIntro"];
  v12 = [(TPSSizes *)v10 initWithDictionary:v11];
  tipIntro = v5->_tipIntro;
  v5->_tipIntro = v12;

  v14 = [TPSSizes alloc];
  v15 = [dictionaryCopy TPSSafeDictionaryForKey:@"collectionHero"];
  v16 = [(TPSSizes *)v14 initWithDictionary:v15];
  collectionFeatured = v5->_collectionFeatured;
  v5->_collectionFeatured = v16;

  v18 = [TPSSizes alloc];
  v19 = [dictionaryCopy TPSSafeDictionaryForKey:@"thumbnail"];
  v20 = [(TPSSizes *)v18 initWithDictionary:v19];
  thumbnail = v5->_thumbnail;
  v5->_thumbnail = v20;

  if (v5->_tip || v5->_tipIntro || v5->_collectionFeatured || v5->_thumbnail)
  {
LABEL_6:
    v22 = v5;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = TPSAssetSizes;
  v4 = [(TPSSerializableObject *)&v10 copyWithZone:zone];
  v5 = [(TPSAssetSizes *)self tip];
  [v4 setTip:v5];

  tipIntro = [(TPSAssetSizes *)self tipIntro];
  [v4 setTipIntro:tipIntro];

  collectionFeatured = [(TPSAssetSizes *)self collectionFeatured];
  [v4 setCollectionFeatured:collectionFeatured];

  thumbnail = [(TPSAssetSizes *)self thumbnail];
  [v4 setThumbnail:thumbnail];

  return v4;
}

- (TPSAssetSizes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TPSAssetSizes;
  v5 = [(TPSSerializableObject *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip"];
    tip = v5->_tip;
    v5->_tip = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tipIntro"];
    tipIntro = v5->_tipIntro;
    v5->_tipIntro = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collectionHero"];
    collectionFeatured = v5->_collectionFeatured;
    v5->_collectionFeatured = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnail"];
    thumbnail = v5->_thumbnail;
    v5->_thumbnail = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = TPSAssetSizes;
  coderCopy = coder;
  [(TPSSerializableObject *)&v9 encodeWithCoder:coderCopy];
  v5 = [(TPSAssetSizes *)self tip:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"tip"];

  tipIntro = [(TPSAssetSizes *)self tipIntro];
  [coderCopy encodeObject:tipIntro forKey:@"tipIntro"];

  collectionFeatured = [(TPSAssetSizes *)self collectionFeatured];
  [coderCopy encodeObject:collectionFeatured forKey:@"collectionHero"];

  thumbnail = [(TPSAssetSizes *)self thumbnail];
  [coderCopy encodeObject:thumbnail forKey:@"thumbnail"];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v11.receiver = self;
  v11.super_class = TPSAssetSizes;
  v4 = [(TPSAssetSizes *)&v11 description];
  v5 = [v3 initWithString:v4];

  v6 = [(TPSAssetSizes *)self tip];
  [v5 appendFormat:@"\n %@ = %@\n", @"tip", v6];

  tipIntro = [(TPSAssetSizes *)self tipIntro];
  [v5 appendFormat:@" %@ = %@\n", @"tipIntro", tipIntro];

  collectionFeatured = [(TPSAssetSizes *)self collectionFeatured];
  [v5 appendFormat:@" %@ = %@\n", @"collectionHero", collectionFeatured];

  thumbnail = [(TPSAssetSizes *)self thumbnail];
  [v5 appendFormat:@" %@ = %@", @"thumbnail", thumbnail];

  return v5;
}

@end