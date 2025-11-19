@interface SharingXPCHelperGroupContactIcon
- (SharingXPCHelperGroupContactIcon)initWithCoder:(id)a3;
- (SharingXPCHelperGroupContactIcon)initWithContacts:(id)a3 icon:(CGImage *)a4 atIndex:(int64_t)a5 cacheLookupKey:(id)a6;
- (SharingXPCHelperGroupContactIcon)initWithContacts:(id)a3 iconData:(id)a4 atIndex:(int64_t)a5 cacheLookupKey:(id)a6;
- (id)contactIDs;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SharingXPCHelperGroupContactIcon

- (SharingXPCHelperGroupContactIcon)initWithContacts:(id)a3 iconData:(id)a4 atIndex:(int64_t)a5 cacheLookupKey:(id)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = SharingXPCHelperGroupContactIcon;
  v12 = [(SharingXPCHelperContactIcon *)&v15 initWithContact:0 iconData:a4 atIndex:a5 cacheLookupKey:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contacts, a3);
  }

  return v13;
}

- (SharingXPCHelperGroupContactIcon)initWithContacts:(id)a3 icon:(CGImage *)a4 atIndex:(int64_t)a5 cacheLookupKey:(id)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = SharingXPCHelperGroupContactIcon;
  v12 = [(SharingXPCHelperContactIcon *)&v15 initWithContact:0 icon:a4 atIndex:a5 cacheLookupKey:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contacts, a3);
  }

  return v13;
}

- (SharingXPCHelperGroupContactIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SharingXPCHelperGroupContactIcon;
  v5 = [(SharingXPCHelperContactIcon *)&v7 initWithCoder:v4];
  if (v5)
  {
    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SharingXPCHelperGroupContactIcon;
  [(SharingXPCHelperContactIcon *)&v6 encodeWithCoder:v4];
  contacts = self->_contacts;
  if (contacts)
  {
    [v4 encodeObject:contacts forKey:@"SharingXPCHelperGroupContactIcon-Contacts"];
  }
}

- (id)contactIDs
{
  v3 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SharingXPCHelperGroupContactIcon *)self contacts];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) identifier];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 sortedArrayUsingSelector:"compare:"];

  return v10;
}

- (id)description
{
  contacts = self->_contacts;
  v4 = [(SharingXPCHelperContactIcon *)self iconData];
  [(SharingXPCHelperContactIcon *)self iconIndex];
  NSAppendPrintF();
  v5 = 0;

  return 0;
}

@end