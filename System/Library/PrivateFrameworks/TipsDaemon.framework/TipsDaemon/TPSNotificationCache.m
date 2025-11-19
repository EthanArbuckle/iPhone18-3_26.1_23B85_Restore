@interface TPSNotificationCache
+ (id)notificationCacheWithCollectionIdentifier:(id)a3 document:(id)a4 type:(unint64_t)a5;
- (BOOL)hasLocaleChanged;
- (TPSNotificationCache)initWithCoder:(id)a3;
- (TPSNotificationCache)initWithCollectionIdentifier:(id)a3 document:(id)a4 type:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSNotificationCache

+ (id)notificationCacheWithCollectionIdentifier:(id)a3 document:(id)a4 type:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_alloc(objc_opt_class()) initWithCollectionIdentifier:v8 document:v7 type:a5];

  return v9;
}

- (TPSNotificationCache)initWithCollectionIdentifier:(id)a3 document:(id)a4 type:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(TPSNotificationCache *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a5;
    objc_storeStrong(&v11->_collectionIdentifier, a3);
    objc_storeStrong(&v12->_document, a4);
    v13 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v14 = [v13 firstObject];
    locale = v12->_locale;
    v12->_locale = v14;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TPSNotificationCache *)self locale];
  [v4 setLocale:v5];

  [v4 setType:{-[TPSNotificationCache type](self, "type")}];
  v6 = [(TPSNotificationCache *)self extensionPayload];
  [v4 setExtensionPayload:v6];

  v7 = [(TPSNotificationCache *)self document];
  [v4 setDocument:v7];

  v8 = [(TPSNotificationCache *)self attachmentURL];
  [v4 setAttachmentURL:v8];

  v9 = [(TPSNotificationCache *)self collectionIdentifier];
  [v4 setCollectionIdentifier:v9];

  return v4;
}

- (TPSNotificationCache)initWithCoder:(id)a3
{
  v26[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = TPSNotificationCache;
  v5 = [(TPSNotificationCache *)&v24 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
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

    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"extensionPayload"];
    extensionPayload = v5->_extensionPayload;
    v5->_extensionPayload = v11;

    v13 = MEMORY[0x277CBEB98];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    v15 = [v13 setWithArray:v14];

    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"document"];
    document = v5->_document;
    v5->_document = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collectionIdentifier"];
    collectionIdentifier = v5->_collectionIdentifier;
    v5->_collectionIdentifier = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attachmentURL"];
    attachmentURL = v5->_attachmentURL;
    v5->_attachmentURL = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[TPSNotificationCache type](self forKey:{"type"), @"type"}];
  v5 = [(TPSNotificationCache *)self locale];
  [v4 encodeObject:v5 forKey:@"locale"];

  v6 = [(TPSNotificationCache *)self extensionPayload];
  [v4 encodeObject:v6 forKey:@"extensionPayload"];

  v7 = [(TPSNotificationCache *)self document];
  [v4 encodeObject:v7 forKey:@"document"];

  v8 = [(TPSNotificationCache *)self collectionIdentifier];
  [v4 encodeObject:v8 forKey:@"collectionIdentifier"];

  v9 = [(TPSNotificationCache *)self attachmentURL];
  [v4 encodeObject:v9 forKey:@"attachmentURL"];
}

- (BOOL)hasLocaleChanged
{
  v3 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v4 = [v3 firstObject];

  v5 = [(TPSNotificationCache *)self locale];
  LOBYTE(v3) = [v4 isEqualToString:v5];

  return v3 ^ 1;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v14.receiver = self;
  v14.super_class = TPSNotificationCache;
  v4 = [(TPSNotificationCache *)&v14 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"\n%@ = %lu\n", @"type", -[TPSNotificationCache type](self, "type")];
  v6 = [(TPSNotificationCache *)self document];
  v7 = [v6 debugDescription];
  [v5 appendFormat:@"%@ = %@\n", @"document", v7];

  v8 = [(TPSNotificationCache *)self collectionIdentifier];
  [v5 appendFormat:@"%@ = %@\n", @"collectionIdentifier", v8];

  v9 = [(TPSNotificationCache *)self locale];
  [v5 appendFormat:@"%@ = %@\n", @"locale", v9];

  v10 = [(TPSNotificationCache *)self attachmentURL];
  [v5 appendFormat:@"%@ = %@\n", @"attachmentURL", v10];

  v11 = [(TPSNotificationCache *)self extensionPayload];

  if (v11)
  {
    v12 = [(TPSNotificationCache *)self extensionPayload];
    [v5 appendFormat:@"%@ = %@\n", @"extensionPayload", v12];
  }

  return v5;
}

@end