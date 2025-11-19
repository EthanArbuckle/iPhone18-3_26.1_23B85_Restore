@interface PKRecentsItem
- (PKRecentsItem)initWithCoder:(id)a3;
- (PKRecentsItem)initWithItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKRecentsItem

- (PKRecentsItem)initWithItem:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PKRecentsItem;
  v5 = [(PKRecentsItem *)&v26 init];
  if (v5)
  {
    v6 = [v4 image];
    image = v5->_image;
    v5->_image = v6;

    v8 = [v4 localizedCount];
    v9 = [v8 copy];
    localizedCount = v5->_localizedCount;
    v5->_localizedCount = v9;

    v11 = [v4 localizedSubtitle];
    v12 = [v11 copy];
    localizedSubtitle = v5->_localizedSubtitle;
    v5->_localizedSubtitle = v12;

    v14 = [v4 localizedTitle];
    v15 = [v14 copy];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v15;

    v17 = [v4 localizedValidHandlesTitle];
    v18 = [v17 copy];
    localizedValidHandlesTitle = v5->_localizedValidHandlesTitle;
    v5->_localizedValidHandlesTitle = v18;

    v20 = [v4 localizedSenderIdentityTitle];
    v21 = [v20 copy];
    localizedSenderIdentityTitle = v5->_localizedSenderIdentityTitle;
    v5->_localizedSenderIdentityTitle = v21;

    v5->_verified = [v4 verified];
    v23 = [v4 date];
    date = v5->_date;
    v5->_date = v23;

    v5->_isBlocked = [v4 isBlocked];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  image = self->_image;
  v5 = a3;
  v6 = NSStringFromSelector(sel_image);
  [v5 encodeObject:image forKey:v6];

  localizedCount = self->_localizedCount;
  v8 = NSStringFromSelector(sel_localizedCount);
  [v5 encodeObject:localizedCount forKey:v8];

  localizedSubtitle = self->_localizedSubtitle;
  v10 = NSStringFromSelector(sel_localizedSubtitle);
  [v5 encodeObject:localizedSubtitle forKey:v10];

  localizedTitle = self->_localizedTitle;
  v12 = NSStringFromSelector(sel_localizedTitle);
  [v5 encodeObject:localizedTitle forKey:v12];

  localizedValidHandlesTitle = self->_localizedValidHandlesTitle;
  v14 = NSStringFromSelector(sel_localizedValidHandlesTitle);
  [v5 encodeObject:localizedValidHandlesTitle forKey:v14];

  date = self->_date;
  v16 = NSStringFromSelector(sel_date);
  [v5 encodeObject:date forKey:v16];

  localizedSenderIdentityTitle = self->_localizedSenderIdentityTitle;
  v18 = NSStringFromSelector(sel_localizedSenderIdentityTitle);
  [v5 encodeObject:localizedSenderIdentityTitle forKey:v18];

  verified = self->_verified;
  v20 = NSStringFromSelector(sel_verified);
  [v5 encodeBool:verified forKey:v20];

  isBlocked = self->_isBlocked;
  v22 = NSStringFromSelector(sel_isBlocked);
  [v5 encodeBool:isBlocked forKey:v22];
}

- (PKRecentsItem)initWithCoder:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PKRecentsItem;
  v5 = [(PKRecentsItem *)&v37 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_image);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    image = v5->_image;
    v5->_image = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_localizedCount);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    localizedCount = v5->_localizedCount;
    v5->_localizedCount = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_localizedSubtitle);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    localizedSubtitle = v5->_localizedSubtitle;
    v5->_localizedSubtitle = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_localizedTitle);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_localizedValidHandlesTitle);
    v24 = [v4 decodeObjectOfClass:v22 forKey:v23];
    localizedValidHandlesTitle = v5->_localizedValidHandlesTitle;
    v5->_localizedValidHandlesTitle = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_date);
    v28 = [v4 decodeObjectOfClass:v26 forKey:v27];
    date = v5->_date;
    v5->_date = v28;

    v30 = objc_opt_class();
    v31 = NSStringFromSelector(sel_localizedSenderIdentityTitle);
    v32 = [v4 decodeObjectOfClass:v30 forKey:v31];
    localizedSenderIdentityTitle = v5->_localizedSenderIdentityTitle;
    v5->_localizedSenderIdentityTitle = v32;

    v34 = NSStringFromSelector(sel_verified);
    v5->_verified = [v4 decodeBoolForKey:v34];

    v35 = NSStringFromSelector(sel_isBlocked);
    v5->_isBlocked = [v4 decodeBoolForKey:v35];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PKRecentsItem allocWithZone:a3];

  return [(PKRecentsItem *)v4 initWithItem:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PKMutableRecentsItem allocWithZone:a3];

  return [(PKRecentsItem *)v4 initWithItem:self];
}

@end