@interface PKPaymentSetupListItem
- (BOOL)isEqual:(id)equal;
- (PKPaymentSetupListItem)init;
- (PKPaymentSetupListItem)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PKPaymentSetupListItem

- (PKPaymentSetupListItem)init
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupListItem;
  v2 = [(PKPaymentSetupListItem *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uUIDString = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;
  }

  return v2;
}

- (PKPaymentSetupListItem)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon
{
  titleCopy = title;
  subtitleCopy = subtitle;
  iconCopy = icon;
  v12 = [(PKPaymentSetupListItem *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_subtitle, subtitle);
    objc_storeStrong(&v13->_icon, icon);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_subtitle copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_identifier copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_badgeText copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSString *)self->_labelText copyWithZone:zone];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  v16 = [(UIImage *)self->_icon copy];
  v17 = *(v5 + 40);
  *(v5 + 40) = v16;

  *(v5 + 11) = self->_selected;
  *(v5 + 10) = self->_loadingIndicatorVisible;
  *(v5 + 9) = self->_displayChevron;
  *(v5 + 8) = self->_displayInfo;
  *(v5 + 13) = self->_reserverSpaceForSelectedAccessory;
  *(v5 + 12) = self->_useMultiSelectAccessory;
  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_subtitle];
  [v3 safelyAddObject:self->_icon];
  [v3 safelyAddObject:self->_badgeText];
  [v3 safelyAddObject:self->_labelText];
  [v3 safelyAddObject:self->_identifier];
  PKCombinedHash();
  PKIntegerHash();
  PKIntegerHash();
  PKIntegerHash();
  PKIntegerHash();
  PKIntegerHash();
  v4 = PKIntegerHash();

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && self->_selected == equalCopy[11] && self->_loadingIndicatorVisible == equalCopy[10] && self->_displayChevron == equalCopy[9] && self->_displayInfo == equalCopy[8] && self->_reserverSpaceForSelectedAccessory == equalCopy[13] && self->_useMultiSelectAccessory == equalCopy[12];

  return v5;
}

@end