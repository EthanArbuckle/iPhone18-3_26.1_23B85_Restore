@interface SBSQuickActionControlRequest
- (SBSQuickActionControlRequest)initWithCoder:(id)a3;
- (SBSQuickActionControlRequest)initWithExtensionBundleIdentifier:(id)a3 containerBundleIdentifier:(id)a4 kind:(id)a5 quickActionCategory:(unint64_t)a6 type:(unint64_t)a7 location:(int64_t)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSQuickActionControlRequest

- (SBSQuickActionControlRequest)initWithExtensionBundleIdentifier:(id)a3 containerBundleIdentifier:(id)a4 kind:(id)a5 quickActionCategory:(unint64_t)a6 type:(unint64_t)a7 location:(int64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v21.receiver = self;
  v21.super_class = SBSQuickActionControlRequest;
  v18 = [(SBSQuickActionControlRequest *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_extensionBundleIdentifier, a3);
    objc_storeStrong(&v19->_containerBundleIdentifier, a4);
    objc_storeStrong(&v19->_kind, a5);
    v19->_quickActionCategory = a6;
    v19->_type = a7;
    v19->_location = a8;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  containerBundleIdentifier = self->_containerBundleIdentifier;
  kind = self->_kind;
  quickActionCategory = self->_quickActionCategory;
  type = self->_type;
  location = self->_location;

  return [v4 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier kind:kind quickActionCategory:quickActionCategory type:type location:location];
}

- (void)encodeWithCoder:(id)a3
{
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  v5 = a3;
  [v5 encodeObject:extensionBundleIdentifier forKey:@"kSBSQuickActionControlRequestExtensionBundleIdentifier"];
  [v5 encodeObject:self->_containerBundleIdentifier forKey:@"kSBSQuickActionControlRequestContainerBundleIdentifier"];
  [v5 encodeObject:self->_kind forKey:@"kSBSQuickActionControlRequestKind"];
  [v5 encodeInteger:self->_quickActionCategory forKey:@"kSBSQuickActionControlRequestQuickActionCategory"];
  [v5 encodeInteger:self->_type forKey:@"kSBSQuickActionControlRequestType"];
  [v5 encodeInteger:self->_location forKey:@"SBSQuickActionControlRequestLocation"];
}

- (SBSQuickActionControlRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBSQuickActionControlRequest;
  v5 = [(SBSQuickActionControlRequest *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSBSQuickActionControlRequestExtensionBundleIdentifier"];
    extensionBundleIdentifier = v5->_extensionBundleIdentifier;
    v5->_extensionBundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSBSQuickActionControlRequestContainerBundleIdentifier"];
    containerBundleIdentifier = v5->_containerBundleIdentifier;
    v5->_containerBundleIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSBSQuickActionControlRequestKind"];
    kind = v5->_kind;
    v5->_kind = v10;

    v5->_quickActionCategory = [v4 decodeIntegerForKey:@"kSBSQuickActionControlRequestQuickActionCategory"];
    v5->_type = [v4 decodeIntegerForKey:@"kSBSQuickActionControlRequestType"];
    v5->_location = [v4 decodeIntegerForKey:@"SBSQuickActionControlRequestLocation"];
  }

  return v5;
}

@end