@interface TPSAssetSizes
- (TPSAssetSizes)initWithCoder:(id)a3;
- (TPSAssetSizes)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAssetSizes

- (TPSAssetSizes)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = TPSAssetSizes;
  v5 = [(TPSSerializableObject *)&v24 initWithDictionary:v4];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [TPSSizes alloc];
  v7 = [v4 TPSSafeDictionaryForKey:@"tip"];
  v8 = [(TPSSizes *)v6 initWithDictionary:v7];
  tip = v5->_tip;
  v5->_tip = v8;

  v10 = [TPSSizes alloc];
  v11 = [v4 TPSSafeDictionaryForKey:@"tipIntro"];
  v12 = [(TPSSizes *)v10 initWithDictionary:v11];
  tipIntro = v5->_tipIntro;
  v5->_tipIntro = v12;

  v14 = [TPSSizes alloc];
  v15 = [v4 TPSSafeDictionaryForKey:@"collectionHero"];
  v16 = [(TPSSizes *)v14 initWithDictionary:v15];
  collectionFeatured = v5->_collectionFeatured;
  v5->_collectionFeatured = v16;

  v18 = [TPSSizes alloc];
  v19 = [v4 TPSSafeDictionaryForKey:@"thumbnail"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = TPSAssetSizes;
  v4 = [(TPSSerializableObject *)&v10 copyWithZone:a3];
  v5 = [(TPSAssetSizes *)self tip];
  [v4 setTip:v5];

  v6 = [(TPSAssetSizes *)self tipIntro];
  [v4 setTipIntro:v6];

  v7 = [(TPSAssetSizes *)self collectionFeatured];
  [v4 setCollectionFeatured:v7];

  v8 = [(TPSAssetSizes *)self thumbnail];
  [v4 setThumbnail:v8];

  return v4;
}

- (TPSAssetSizes)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TPSAssetSizes;
  v5 = [(TPSSerializableObject *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip"];
    tip = v5->_tip;
    v5->_tip = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tipIntro"];
    tipIntro = v5->_tipIntro;
    v5->_tipIntro = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collectionHero"];
    collectionFeatured = v5->_collectionFeatured;
    v5->_collectionFeatured = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thumbnail"];
    thumbnail = v5->_thumbnail;
    v5->_thumbnail = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = TPSAssetSizes;
  v4 = a3;
  [(TPSSerializableObject *)&v9 encodeWithCoder:v4];
  v5 = [(TPSAssetSizes *)self tip:v9.receiver];
  [v4 encodeObject:v5 forKey:@"tip"];

  v6 = [(TPSAssetSizes *)self tipIntro];
  [v4 encodeObject:v6 forKey:@"tipIntro"];

  v7 = [(TPSAssetSizes *)self collectionFeatured];
  [v4 encodeObject:v7 forKey:@"collectionHero"];

  v8 = [(TPSAssetSizes *)self thumbnail];
  [v4 encodeObject:v8 forKey:@"thumbnail"];
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

  v7 = [(TPSAssetSizes *)self tipIntro];
  [v5 appendFormat:@" %@ = %@\n", @"tipIntro", v7];

  v8 = [(TPSAssetSizes *)self collectionFeatured];
  [v5 appendFormat:@" %@ = %@\n", @"collectionHero", v8];

  v9 = [(TPSAssetSizes *)self thumbnail];
  [v5 appendFormat:@" %@ = %@", @"thumbnail", v9];

  return v5;
}

@end