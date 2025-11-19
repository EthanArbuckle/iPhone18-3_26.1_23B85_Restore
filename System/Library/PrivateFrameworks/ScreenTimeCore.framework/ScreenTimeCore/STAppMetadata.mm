@interface STAppMetadata
- (STAppMetadata)initWithBundleIdentifier:(id)a3 displayName:(id)a4 artworkURL:(id)a5 vendorName:(id)a6 ratingLabel:(id)a7 software:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation STAppMetadata

- (STAppMetadata)initWithBundleIdentifier:(id)a3 displayName:(id)a4 artworkURL:(id)a5 vendorName:(id)a6 ratingLabel:(id)a7 software:(id)a8
{
  v33.receiver = self;
  v33.super_class = STAppMetadata;
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(STAppMetadata *)&v33 init];
  v20 = [v18 copy];

  bundleIdentifier = v19->_bundleIdentifier;
  v19->_bundleIdentifier = v20;

  v22 = [v17 copy];
  displayName = v19->_displayName;
  v19->_displayName = v22;

  v24 = [v16 copy];
  artworkURL = v19->_artworkURL;
  v19->_artworkURL = v24;

  v26 = [v15 copy];
  vendorName = v19->_vendorName;
  v19->_vendorName = v26;

  v28 = [v14 copy];
  ratingLabel = v19->_ratingLabel;
  v19->_ratingLabel = v28;

  v30 = [v13 copy];
  software = v19->_software;
  v19->_software = v30;

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
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