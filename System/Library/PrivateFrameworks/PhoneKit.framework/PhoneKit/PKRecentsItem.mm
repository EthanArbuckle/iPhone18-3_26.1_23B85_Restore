@interface PKRecentsItem
- (PKRecentsItem)initWithCoder:(id)coder;
- (PKRecentsItem)initWithItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKRecentsItem

- (PKRecentsItem)initWithItem:(id)item
{
  itemCopy = item;
  v26.receiver = self;
  v26.super_class = PKRecentsItem;
  v5 = [(PKRecentsItem *)&v26 init];
  if (v5)
  {
    image = [itemCopy image];
    image = v5->_image;
    v5->_image = image;

    localizedCount = [itemCopy localizedCount];
    v9 = [localizedCount copy];
    localizedCount = v5->_localizedCount;
    v5->_localizedCount = v9;

    localizedSubtitle = [itemCopy localizedSubtitle];
    v12 = [localizedSubtitle copy];
    localizedSubtitle = v5->_localizedSubtitle;
    v5->_localizedSubtitle = v12;

    localizedTitle = [itemCopy localizedTitle];
    v15 = [localizedTitle copy];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v15;

    localizedValidHandlesTitle = [itemCopy localizedValidHandlesTitle];
    v18 = [localizedValidHandlesTitle copy];
    localizedValidHandlesTitle = v5->_localizedValidHandlesTitle;
    v5->_localizedValidHandlesTitle = v18;

    localizedSenderIdentityTitle = [itemCopy localizedSenderIdentityTitle];
    v21 = [localizedSenderIdentityTitle copy];
    localizedSenderIdentityTitle = v5->_localizedSenderIdentityTitle;
    v5->_localizedSenderIdentityTitle = v21;

    v5->_verified = [itemCopy verified];
    date = [itemCopy date];
    date = v5->_date;
    v5->_date = date;

    v5->_isBlocked = [itemCopy isBlocked];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  image = self->_image;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_image);
  [coderCopy encodeObject:image forKey:v6];

  localizedCount = self->_localizedCount;
  v8 = NSStringFromSelector(sel_localizedCount);
  [coderCopy encodeObject:localizedCount forKey:v8];

  localizedSubtitle = self->_localizedSubtitle;
  v10 = NSStringFromSelector(sel_localizedSubtitle);
  [coderCopy encodeObject:localizedSubtitle forKey:v10];

  localizedTitle = self->_localizedTitle;
  v12 = NSStringFromSelector(sel_localizedTitle);
  [coderCopy encodeObject:localizedTitle forKey:v12];

  localizedValidHandlesTitle = self->_localizedValidHandlesTitle;
  v14 = NSStringFromSelector(sel_localizedValidHandlesTitle);
  [coderCopy encodeObject:localizedValidHandlesTitle forKey:v14];

  date = self->_date;
  v16 = NSStringFromSelector(sel_date);
  [coderCopy encodeObject:date forKey:v16];

  localizedSenderIdentityTitle = self->_localizedSenderIdentityTitle;
  v18 = NSStringFromSelector(sel_localizedSenderIdentityTitle);
  [coderCopy encodeObject:localizedSenderIdentityTitle forKey:v18];

  verified = self->_verified;
  v20 = NSStringFromSelector(sel_verified);
  [coderCopy encodeBool:verified forKey:v20];

  isBlocked = self->_isBlocked;
  v22 = NSStringFromSelector(sel_isBlocked);
  [coderCopy encodeBool:isBlocked forKey:v22];
}

- (PKRecentsItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = PKRecentsItem;
  v5 = [(PKRecentsItem *)&v37 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_image);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    image = v5->_image;
    v5->_image = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_localizedCount);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    localizedCount = v5->_localizedCount;
    v5->_localizedCount = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_localizedSubtitle);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    localizedSubtitle = v5->_localizedSubtitle;
    v5->_localizedSubtitle = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_localizedTitle);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_localizedValidHandlesTitle);
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];
    localizedValidHandlesTitle = v5->_localizedValidHandlesTitle;
    v5->_localizedValidHandlesTitle = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_date);
    v28 = [coderCopy decodeObjectOfClass:v26 forKey:v27];
    date = v5->_date;
    v5->_date = v28;

    v30 = objc_opt_class();
    v31 = NSStringFromSelector(sel_localizedSenderIdentityTitle);
    v32 = [coderCopy decodeObjectOfClass:v30 forKey:v31];
    localizedSenderIdentityTitle = v5->_localizedSenderIdentityTitle;
    v5->_localizedSenderIdentityTitle = v32;

    v34 = NSStringFromSelector(sel_verified);
    v5->_verified = [coderCopy decodeBoolForKey:v34];

    v35 = NSStringFromSelector(sel_isBlocked);
    v5->_isBlocked = [coderCopy decodeBoolForKey:v35];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PKRecentsItem allocWithZone:zone];

  return [(PKRecentsItem *)v4 initWithItem:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PKMutableRecentsItem allocWithZone:zone];

  return [(PKRecentsItem *)v4 initWithItem:self];
}

@end