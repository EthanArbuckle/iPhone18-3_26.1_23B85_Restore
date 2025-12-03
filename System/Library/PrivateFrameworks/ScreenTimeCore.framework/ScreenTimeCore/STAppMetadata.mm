@interface STAppMetadata
- (STAppMetadata)initWithBundleIdentifier:(id)identifier displayName:(id)name artworkURL:(id)l vendorName:(id)vendorName ratingLabel:(id)label software:(id)software;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation STAppMetadata

- (STAppMetadata)initWithBundleIdentifier:(id)identifier displayName:(id)name artworkURL:(id)l vendorName:(id)vendorName ratingLabel:(id)label software:(id)software
{
  v33.receiver = self;
  v33.super_class = STAppMetadata;
  softwareCopy = software;
  labelCopy = label;
  vendorNameCopy = vendorName;
  lCopy = l;
  nameCopy = name;
  identifierCopy = identifier;
  v19 = [(STAppMetadata *)&v33 init];
  v20 = [identifierCopy copy];

  bundleIdentifier = v19->_bundleIdentifier;
  v19->_bundleIdentifier = v20;

  v22 = [nameCopy copy];
  displayName = v19->_displayName;
  v19->_displayName = v22;

  v24 = [lCopy copy];
  artworkURL = v19->_artworkURL;
  v19->_artworkURL = v24;

  v26 = [vendorNameCopy copy];
  vendorName = v19->_vendorName;
  v19->_vendorName = v26;

  v28 = [labelCopy copy];
  ratingLabel = v19->_ratingLabel;
  v19->_ratingLabel = v28;

  v30 = [softwareCopy copy];
  software = v19->_software;
  v19->_software = v30;

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  bundleIdentifier = self->_bundleIdentifier;
  displayName = self->_displayName;
  vendorName = self->_vendorName;
  ratingLabel = self->_ratingLabel;
  software = self->_software;
  artworkURL = self->_artworkURL;

  return [v4 initWithBundleIdentifier:bundleIdentifier displayName:displayName artworkURL:artworkURL vendorName:vendorName ratingLabel:ratingLabel software:software];
}

@end