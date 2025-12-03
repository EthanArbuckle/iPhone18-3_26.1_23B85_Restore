@interface SharingXPCHelperContactIcon
- (SharingXPCHelperContactIcon)initWithCoder:(id)coder;
- (SharingXPCHelperContactIcon)initWithContact:(id)contact icon:(CGImage *)icon atIndex:(int64_t)index cacheLookupKey:(id)key;
- (SharingXPCHelperContactIcon)initWithContact:(id)contact iconData:(id)data atIndex:(int64_t)index cacheLookupKey:(id)key;
- (id)contactIDs;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SharingXPCHelperContactIcon

- (SharingXPCHelperContactIcon)initWithContact:(id)contact iconData:(id)data atIndex:(int64_t)index cacheLookupKey:(id)key
{
  contactCopy = contact;
  v15.receiver = self;
  v15.super_class = SharingXPCHelperContactIcon;
  v12 = [(SharingXPCHelperImageItem *)&v15 initWithImageTitle:0 imageData:data cacheLookupKey:key];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contact, contact);
    v13->_iconIndex = index;
  }

  return v13;
}

- (SharingXPCHelperContactIcon)initWithContact:(id)contact icon:(CGImage *)icon atIndex:(int64_t)index cacheLookupKey:(id)key
{
  contactCopy = contact;
  v15.receiver = self;
  v15.super_class = SharingXPCHelperContactIcon;
  v12 = [(SharingXPCHelperImageItem *)&v15 initWithImageTitle:0 image:icon cacheLookupKey:key];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contact, contact);
    v13->_iconIndex = index;
  }

  return v13;
}

- (SharingXPCHelperContactIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SharingXPCHelperContactIcon;
  v5 = [(SharingXPCHelperImageItem *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = coderCopy;
    if ([v6 containsValueForKey:@"ici"])
    {
      v5->_iconIndex = [v6 decodeIntegerForKey:@"ici"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = SharingXPCHelperContactIcon;
  [(SharingXPCHelperImageItem *)&v6 encodeWithCoder:coderCopy];
  contact = self->_contact;
  if (contact)
  {
    [coderCopy encodeObject:contact forKey:@"cn"];
  }

  [coderCopy encodeInteger:self->_iconIndex forKey:@"ici"];
}

- (id)contactIDs
{
  contact = [(SharingXPCHelperContactIcon *)self contact];

  if (!contact)
  {
    v4 = sharingXPCHelperLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "monogramImagesForMultipleContacts called with nil contact, will use fallback.", v12, 2u);
    }
  }

  contact2 = [(SharingXPCHelperContactIcon *)self contact];
  identifier = [contact2 identifier];
  v7 = identifier;
  v8 = @"FALLBACK";
  if (identifier)
  {
    v8 = identifier;
  }

  v9 = v8;

  v13 = v9;
  v10 = [NSArray arrayWithObjects:&v13 count:1];

  return v10;
}

- (id)description
{
  contact = self->_contact;
  iconData = [(SharingXPCHelperContactIcon *)self iconData];
  iconIndex = self->_iconIndex;
  NSAppendPrintF();
  v5 = 0;

  return 0;
}

@end