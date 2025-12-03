@interface SBSQuickActionControlRequest
- (SBSQuickActionControlRequest)initWithCoder:(id)coder;
- (SBSQuickActionControlRequest)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind quickActionCategory:(unint64_t)category type:(unint64_t)type location:(int64_t)location;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSQuickActionControlRequest

- (SBSQuickActionControlRequest)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind quickActionCategory:(unint64_t)category type:(unint64_t)type location:(int64_t)location
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  v21.receiver = self;
  v21.super_class = SBSQuickActionControlRequest;
  v18 = [(SBSQuickActionControlRequest *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_extensionBundleIdentifier, identifier);
    objc_storeStrong(&v19->_containerBundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v19->_kind, kind);
    v19->_quickActionCategory = category;
    v19->_type = type;
    v19->_location = location;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:extensionBundleIdentifier forKey:@"kSBSQuickActionControlRequestExtensionBundleIdentifier"];
  [coderCopy encodeObject:self->_containerBundleIdentifier forKey:@"kSBSQuickActionControlRequestContainerBundleIdentifier"];
  [coderCopy encodeObject:self->_kind forKey:@"kSBSQuickActionControlRequestKind"];
  [coderCopy encodeInteger:self->_quickActionCategory forKey:@"kSBSQuickActionControlRequestQuickActionCategory"];
  [coderCopy encodeInteger:self->_type forKey:@"kSBSQuickActionControlRequestType"];
  [coderCopy encodeInteger:self->_location forKey:@"SBSQuickActionControlRequestLocation"];
}

- (SBSQuickActionControlRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SBSQuickActionControlRequest;
  v5 = [(SBSQuickActionControlRequest *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSBSQuickActionControlRequestExtensionBundleIdentifier"];
    extensionBundleIdentifier = v5->_extensionBundleIdentifier;
    v5->_extensionBundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSBSQuickActionControlRequestContainerBundleIdentifier"];
    containerBundleIdentifier = v5->_containerBundleIdentifier;
    v5->_containerBundleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSBSQuickActionControlRequestKind"];
    kind = v5->_kind;
    v5->_kind = v10;

    v5->_quickActionCategory = [coderCopy decodeIntegerForKey:@"kSBSQuickActionControlRequestQuickActionCategory"];
    v5->_type = [coderCopy decodeIntegerForKey:@"kSBSQuickActionControlRequestType"];
    v5->_location = [coderCopy decodeIntegerForKey:@"SBSQuickActionControlRequestLocation"];
  }

  return v5;
}

@end