@interface TPSNotificationCache
+ (id)notificationCacheWithCollectionIdentifier:(id)identifier document:(id)document type:(unint64_t)type;
- (BOOL)hasLocaleChanged;
- (TPSNotificationCache)initWithCoder:(id)coder;
- (TPSNotificationCache)initWithCollectionIdentifier:(id)identifier document:(id)document type:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSNotificationCache

+ (id)notificationCacheWithCollectionIdentifier:(id)identifier document:(id)document type:(unint64_t)type
{
  documentCopy = document;
  identifierCopy = identifier;
  v9 = [objc_alloc(objc_opt_class()) initWithCollectionIdentifier:identifierCopy document:documentCopy type:type];

  return v9;
}

- (TPSNotificationCache)initWithCollectionIdentifier:(id)identifier document:(id)document type:(unint64_t)type
{
  identifierCopy = identifier;
  documentCopy = document;
  v11 = [(TPSNotificationCache *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_collectionIdentifier, identifier);
    objc_storeStrong(&v12->_document, document);
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject = [preferredLanguages firstObject];
    locale = v12->_locale;
    v12->_locale = firstObject;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  locale = [(TPSNotificationCache *)self locale];
  [v4 setLocale:locale];

  [v4 setType:{-[TPSNotificationCache type](self, "type")}];
  extensionPayload = [(TPSNotificationCache *)self extensionPayload];
  [v4 setExtensionPayload:extensionPayload];

  document = [(TPSNotificationCache *)self document];
  [v4 setDocument:document];

  attachmentURL = [(TPSNotificationCache *)self attachmentURL];
  [v4 setAttachmentURL:attachmentURL];

  collectionIdentifier = [(TPSNotificationCache *)self collectionIdentifier];
  [v4 setCollectionIdentifier:collectionIdentifier];

  return v4;
}

- (TPSNotificationCache)initWithCoder:(id)coder
{
  v26[5] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = TPSNotificationCache;
  v5 = [(TPSNotificationCache *)&v24 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v6;

    v8 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v26[2] = objc_opt_class();
    v26[3] = objc_opt_class();
    v26[4] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:5];
    v10 = [v8 setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"extensionPayload"];
    extensionPayload = v5->_extensionPayload;
    v5->_extensionPayload = v11;

    v13 = MEMORY[0x277CBEB98];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    v15 = [v13 setWithArray:v14];

    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"document"];
    document = v5->_document;
    v5->_document = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collectionIdentifier"];
    collectionIdentifier = v5->_collectionIdentifier;
    v5->_collectionIdentifier = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attachmentURL"];
    attachmentURL = v5->_attachmentURL;
    v5->_attachmentURL = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[TPSNotificationCache type](self forKey:{"type"), @"type"}];
  locale = [(TPSNotificationCache *)self locale];
  [coderCopy encodeObject:locale forKey:@"locale"];

  extensionPayload = [(TPSNotificationCache *)self extensionPayload];
  [coderCopy encodeObject:extensionPayload forKey:@"extensionPayload"];

  document = [(TPSNotificationCache *)self document];
  [coderCopy encodeObject:document forKey:@"document"];

  collectionIdentifier = [(TPSNotificationCache *)self collectionIdentifier];
  [coderCopy encodeObject:collectionIdentifier forKey:@"collectionIdentifier"];

  attachmentURL = [(TPSNotificationCache *)self attachmentURL];
  [coderCopy encodeObject:attachmentURL forKey:@"attachmentURL"];
}

- (BOOL)hasLocaleChanged
{
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  locale = [(TPSNotificationCache *)self locale];
  LOBYTE(preferredLanguages) = [firstObject isEqualToString:locale];

  return preferredLanguages ^ 1;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v14.receiver = self;
  v14.super_class = TPSNotificationCache;
  v4 = [(TPSNotificationCache *)&v14 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"\n%@ = %lu\n", @"type", -[TPSNotificationCache type](self, "type")];
  document = [(TPSNotificationCache *)self document];
  v7 = [document debugDescription];
  [v5 appendFormat:@"%@ = %@\n", @"document", v7];

  collectionIdentifier = [(TPSNotificationCache *)self collectionIdentifier];
  [v5 appendFormat:@"%@ = %@\n", @"collectionIdentifier", collectionIdentifier];

  locale = [(TPSNotificationCache *)self locale];
  [v5 appendFormat:@"%@ = %@\n", @"locale", locale];

  attachmentURL = [(TPSNotificationCache *)self attachmentURL];
  [v5 appendFormat:@"%@ = %@\n", @"attachmentURL", attachmentURL];

  extensionPayload = [(TPSNotificationCache *)self extensionPayload];

  if (extensionPayload)
  {
    extensionPayload2 = [(TPSNotificationCache *)self extensionPayload];
    [v5 appendFormat:@"%@ = %@\n", @"extensionPayload", extensionPayload2];
  }

  return v5;
}

@end