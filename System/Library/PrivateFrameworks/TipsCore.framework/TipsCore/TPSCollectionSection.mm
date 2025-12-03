@interface TPSCollectionSection
+ (id)identifierForDictionary:(id)dictionary;
- (BOOL)isFeatured;
- (BOOL)isYourTips;
- (TPSCollectionSection)initWithCoder:(id)coder;
- (TPSCollectionSection)initWithDictionary:(id)dictionary collections:(id)collections;
- (TPSCollectionSection)initWithDictionary:(id)dictionary subSectionIdentifiers:(id)identifiers;
- (TPSCollectionSection)initWithIdentifier:(id)identifier collections:(id)collections;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)removeCollections:(id)collections;
@end

@implementation TPSCollectionSection

+ (id)identifierForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy TPSSafeStringForKey:@"collectionLabel"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [dictionaryCopy TPSSafeStringForKey:@"collectionId"];
  }

  v7 = v6;

  return v7;
}

- (TPSCollectionSection)initWithIdentifier:(id)identifier collections:(id)collections
{
  identifierCopy = identifier;
  collectionsCopy = collections;
  v12.receiver = self;
  v12.super_class = TPSCollectionSection;
  v9 = [(TPSCollectionSection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_collections, collections);
  }

  return v10;
}

- (TPSCollectionSection)initWithDictionary:(id)dictionary subSectionIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v7 = [(TPSCollectionSection *)self initWithDictionary:dictionary collections:0];
  [(TPSCollectionSection *)v7 setSubSectionIdentifiers:identifiersCopy];

  return v7;
}

- (TPSCollectionSection)initWithDictionary:(id)dictionary collections:(id)collections
{
  dictionaryCopy = dictionary;
  collectionsCopy = collections;
  v22.receiver = self;
  v22.super_class = TPSCollectionSection;
  v8 = [(TPSSerializableObject *)&v22 initWithDictionary:dictionaryCopy];
  if (v8)
  {
    v9 = [TPSCollectionSection identifierForDictionary:dictionaryCopy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    if (![(NSString *)v8->_identifier length])
    {
      v20 = 0;
      goto LABEL_9;
    }

    v11 = [dictionaryCopy TPSSafeDictionaryForKey:@"content"];
    v12 = [v11 TPSSafeStringForKey:@"collectionTitle"];
    title = v8->_title;
    v8->_title = v12;

    v14 = [v11 TPSSafeStringForKey:@"collectionText"];
    text = v8->_text;
    v8->_text = v14;

    if (collectionsCopy)
    {
      v16 = collectionsCopy;
    }

    else
    {
      v16 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v8->_collections, v16);
    v17 = [dictionaryCopy TPSSafeDictionaryForKey:@"relationships"];
    v18 = [v17 TPSSafeStringForKey:@"supportId"];
    supportID = v8->_supportID;
    v8->_supportID = v18;
  }

  v20 = v8;
LABEL_9:

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TPSCollectionSection;
  v4 = [(TPSSerializableObject *)&v11 copyWithZone:zone];
  identifier = [(TPSCollectionSection *)self identifier];
  [v4 setIdentifier:identifier];

  supportID = [(TPSCollectionSection *)self supportID];
  [v4 setSupportID:supportID];

  title = [(TPSCollectionSection *)self title];
  [v4 setTitle:title];

  text = [(TPSCollectionSection *)self text];
  [v4 setText:text];

  collections = [(TPSCollectionSection *)self collections];
  [v4 setCollections:collections];

  return v4;
}

- (TPSCollectionSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = TPSCollectionSection;
  v5 = [(TPSSerializableObject *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collectionId"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportId"];
    supportID = v5->_supportID;
    v5->_supportID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collectionTitle"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collectionText"];
    text = v5->_text;
    v5->_text = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"collections"];
    collections = v5->_collections;
    v5->_collections = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = TPSCollectionSection;
  coderCopy = coder;
  [(TPSSerializableObject *)&v10 encodeWithCoder:coderCopy];
  v5 = [(TPSCollectionSection *)self identifier:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"collectionId"];

  supportID = [(TPSCollectionSection *)self supportID];
  [coderCopy encodeObject:supportID forKey:@"supportId"];

  title = [(TPSCollectionSection *)self title];
  [coderCopy encodeObject:title forKey:@"collectionTitle"];

  text = [(TPSCollectionSection *)self text];
  [coderCopy encodeObject:text forKey:@"collectionText"];

  collections = [(TPSCollectionSection *)self collections];
  [coderCopy encodeObject:collections forKey:@"collections"];
}

- (BOOL)isFeatured
{
  identifier = [(TPSCollectionSection *)self identifier];
  v3 = [identifier isEqualToString:@"Featured"];

  return v3;
}

- (BOOL)isYourTips
{
  collections = [(TPSCollectionSection *)self collections];
  firstObject = [collections firstObject];
  identifier = [firstObject identifier];
  v5 = +[TPSCommonDefines savedTipsCollectionIdentifier];
  v6 = [identifier isEqualToString:v5];

  return v6;
}

- (void)removeCollections:(id)collections
{
  collectionsCopy = collections;
  collections = [(TPSCollectionSection *)self collections];
  v10 = [collections mutableCopy];

  [v10 removeObjectsInArray:collectionsCopy];
  collections2 = [(TPSCollectionSection *)self collections];
  v7 = [collections2 count];
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

  identifier = [(TPSCollectionSection *)self identifier];
  [v5 appendFormat:@"\n  %@ = %@", @"collectionId", identifier];

  supportID = [(TPSCollectionSection *)self supportID];

  if (supportID)
  {
    supportID2 = [(TPSCollectionSection *)self supportID];
    [v5 appendFormat:@"%@ = %@\n", @"supportId", supportID2];
  }

  title = [(TPSCollectionSection *)self title];

  if (title)
  {
    title2 = [(TPSCollectionSection *)self title];
    [v5 appendFormat:@"\n  %@ = %@", @"collectionTitle", title2];
  }

  text = [(TPSCollectionSection *)self text];

  if (text)
  {
    text2 = [(TPSCollectionSection *)self text];
    [v5 appendFormat:@"\n  %@ = %@", @"collectionText", text2];
  }

  collections = [(TPSCollectionSection *)self collections];
  [v5 appendFormat:@"\n  %@ = %@", @"collections", collections];

  return v5;
}

@end