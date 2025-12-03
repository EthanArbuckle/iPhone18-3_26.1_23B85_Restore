@interface ContactPool
- (ContactPool)initWithContacts:(id)contacts;
- (id)allContactIds;
- (id)contactWithId:(id)id;
- (id)contactsWithIds:(id)ids;
- (unint64_t)count;
@end

@implementation ContactPool

- (ContactPool)initWithContacts:(id)contacts
{
  contactsCopy = contacts;
  v24.receiver = self;
  v24.super_class = ContactPool;
  v5 = [(ContactPool *)&v24 init];
  if (v5)
  {
    v6 = [contactsCopy copy];
    allContacts = v5->_allContacts;
    v5->_allContacts = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = contactsCopy;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          identifier = [v14 identifier];

          if (identifier)
          {
            identifier2 = [v14 identifier];
            [v8 setObject:v14 forKeyedSubscript:identifier2];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }

    v17 = [v8 copy];
    contactByIdCache = v5->_contactByIdCache;
    v5->_contactByIdCache = v17;
  }

  return v5;
}

- (unint64_t)count
{
  allContacts = [(ContactPool *)self allContacts];
  v3 = [allContacts count];

  return v3;
}

- (id)allContactIds
{
  contactByIdCache = [(ContactPool *)self contactByIdCache];
  allKeys = [contactByIdCache allKeys];
  v4 = [NSSet setWithArray:allKeys];

  return v4;
}

- (id)contactWithId:(id)id
{
  idCopy = id;
  contactByIdCache = [(ContactPool *)self contactByIdCache];
  v6 = [contactByIdCache objectForKeyedSubscript:idCopy];

  return v6;
}

- (id)contactsWithIds:(id)ids
{
  idsCopy = ids;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(idsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = idsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(ContactPool *)self contactWithId:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

@end