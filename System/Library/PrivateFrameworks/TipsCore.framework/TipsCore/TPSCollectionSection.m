@interface TPSCollectionSection
+ (id)identifierForDictionary:(id)a3;
- (BOOL)isFeatured;
- (BOOL)isYourTips;
- (TPSCollectionSection)initWithCoder:(id)a3;
- (TPSCollectionSection)initWithDictionary:(id)a3 collections:(id)a4;
- (TPSCollectionSection)initWithDictionary:(id)a3 subSectionIdentifiers:(id)a4;
- (TPSCollectionSection)initWithIdentifier:(id)a3 collections:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
- (void)removeCollections:(id)a3;
@end

@implementation TPSCollectionSection

+ (id)identifierForDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 TPSSafeStringForKey:@"collectionLabel"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 TPSSafeStringForKey:@"collectionId"];
  }

  v7 = v6;

  return v7;
}

- (TPSCollectionSection)initWithIdentifier:(id)a3 collections:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TPSCollectionSection;
  v9 = [(TPSCollectionSection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_collections, a4);
  }

  return v10;
}

- (TPSCollectionSection)initWithDictionary:(id)a3 subSectionIdentifiers:(id)a4
{
  v6 = a4;
  v7 = [(TPSCollectionSection *)self initWithDictionary:a3 collections:0];
  [(TPSCollectionSection *)v7 setSubSectionIdentifiers:v6];

  return v7;
}

- (TPSCollectionSection)initWithDictionary:(id)a3 collections:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = TPSCollectionSection;
  v8 = [(TPSSerializableObject *)&v22 initWithDictionary:v6];
  if (v8)
  {
    v9 = [TPSCollectionSection identifierForDictionary:v6];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    if (![(NSString *)v8->_identifier length])
    {
      v20 = 0;
      goto LABEL_9;
    }

    v11 = [v6 TPSSafeDictionaryForKey:@"content"];
    v12 = [v11 TPSSafeStringForKey:@"collectionTitle"];
    title = v8->_title;
    v8->_title = v12;

    v14 = [v11 TPSSafeStringForKey:@"collectionText"];
    text = v8->_text;
    v8->_text = v14;

    if (v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v8->_collections, v16);
    v17 = [v6 TPSSafeDictionaryForKey:@"relationships"];
    v18 = [v17 TPSSafeStringForKey:@"supportId"];
    supportID = v8->_supportID;
    v8->_supportID = v18;
  }

  v20 = v8;
LABEL_9:

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = TPSCollectionSection;
  v4 = [(TPSSerializableObject *)&v11 copyWithZone:a3];
  v5 = [(TPSCollectionSection *)self identifier];
  [v4 setIdentifier:v5];

  v6 = [(TPSCollectionSection *)self supportID];
  [v4 setSupportID:v6];

  v7 = [(TPSCollectionSection *)self title];
  [v4 setTitle:v7];

  v8 = [(TPSCollectionSection *)self text];
  [v4 setText:v8];

  v9 = [(TPSCollectionSection *)self collections];
  [v4 setCollections:v9];

  return v4;
}

- (TPSCollectionSection)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = TPSCollectionSection;
  v5 = [(TPSSerializableObject *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collectionId"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportId"];
    supportID = v5->_supportID;
    v5->_supportID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collectionTitle"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collectionText"];
    text = v5->_text;
    v5->_text = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"collections"];
    collections = v5->_collections;
    v5->_collections = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = TPSCollectionSection;
  v4 = a3;
  [(TPSSerializableObject *)&v10 encodeWithCoder:v4];
  v5 = [(TPSCollectionSection *)self identifier:v10.receiver];
  [v4 encodeObject:v5 forKey:@"collectionId"];

  v6 = [(TPSCollectionSection *)self supportID];
  [v4 encodeObject:v6 forKey:@"supportId"];

  v7 = [(TPSCollectionSection *)self title];
  [v4 encodeObject:v7 forKey:@"collectionTitle"];

  v8 = [(TPSCollectionSection *)self text];
  [v4 encodeObject:v8 forKey:@"collectionText"];

  v9 = [(TPSCollectionSection *)self collections];
  [v4 encodeObject:v9 forKey:@"collections"];
}

- (BOOL)isFeatured
{
  v2 = [(TPSCollectionSection *)self identifier];
  v3 = [v2 isEqualToString:@"Featured"];

  return v3;
}

- (BOOL)isYourTips
{
  v2 = [(TPSCollectionSection *)self collections];
  v3 = [v2 firstObject];
  v4 = [v3 identifier];
  v5 = +[TPSCommonDefines savedTipsCollectionIdentifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (void)removeCollections:(id)a3
{
  v4 = a3;
  v5 = [(TPSCollectionSection *)self collections];
  v10 = [v5 mutableCopy];

  [v10 removeObjectsInArray:v4];
  v6 = [(TPSCollectionSection *)self collections];
  v7 = [v6 count];
  v8 = [v10 count];

  if (v7 != v8)
  {
    v9 = [v10 copy];
    [(TPSCollectionSection *)self setCollections:v9];
  }
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v15.receiver = self;
  v15.super_class = TPSCollectionSection;
  v4 = [(TPSSerializableObject *)&v15 debugDescription];
  v5 = [v3 initWithString:v4];

  v6 = [(TPSCollectionSection *)self identifier];
  [v5 appendFormat:@"\n  %@ = %@", @"collectionId", v6];

  v7 = [(TPSCollectionSection *)self supportID];

  if (v7)
  {
    v8 = [(TPSCollectionSection *)self supportID];
    [v5 appendFormat:@"%@ = %@\n", @"supportId", v8];
  }

  v9 = [(TPSCollectionSection *)self title];

  if (v9)
  {
    v10 = [(TPSCollectionSection *)self title];
    [v5 appendFormat:@"\n  %@ = %@", @"collectionTitle", v10];
  }

  v11 = [(TPSCollectionSection *)self text];

  if (v11)
  {
    v12 = [(TPSCollectionSection *)self text];
    [v5 appendFormat:@"\n  %@ = %@", @"collectionText", v12];
  }

  v13 = [(TPSCollectionSection *)self collections];
  [v5 appendFormat:@"\n  %@ = %@", @"collections", v13];

  return v5;
}

@end