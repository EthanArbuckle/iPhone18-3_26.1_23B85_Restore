@interface PRSMigrationDescriptor
- (NSString)description;
- (PRSMigrationDescriptor)initWithBSXPCCoder:(id)coder;
- (PRSMigrationDescriptor)initWithCoder:(id)coder;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRSMigrationDescriptor

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  homeScreenTintColor = [(PRSMigrationDescriptor *)self homeScreenTintColor];
  v5 = [v3 appendObject:homeScreenTintColor withName:@"homeScreenTintColor" skipIfNil:1];

  isHomeScreenDim = [(PRSMigrationDescriptor *)self isHomeScreenDim];
  v7 = [v3 appendObject:isHomeScreenDim withName:@"homeScreenDim" skipIfNil:1];

  homeScreenIconTintSource = [(PRSMigrationDescriptor *)self homeScreenIconTintSource];
  v9 = [v3 appendObject:homeScreenIconTintSource withName:@"homeScreenIconTintSource" skipIfNil:1];

  homeScreenIconStyle = [(PRSMigrationDescriptor *)self homeScreenIconStyle];
  v11 = [v3 appendObject:homeScreenIconStyle withName:@"homeScreenIconStyle" skipIfNil:1];

  homeScreenIconStyleVariant = [(PRSMigrationDescriptor *)self homeScreenIconStyleVariant];
  v13 = [v3 appendObject:homeScreenIconStyleVariant withName:@"homeScreenIconStyleVariant" skipIfNil:1];

  homeScreenIconSize = [(PRSMigrationDescriptor *)self homeScreenIconSize];
  v15 = [v3 appendObject:homeScreenIconSize withName:@"homeScreenIconSize" skipIfNil:1];

  homeScreenIconStyleVariantsForStyles = [(PRSMigrationDescriptor *)self homeScreenIconStyleVariantsForStyles];
  v17 = [v3 appendObject:homeScreenIconStyleVariantsForStyles withName:@"homeScreenIconStyleVariantsForStyles" skipIfNil:1];

  build = [v3 build];

  return build;
}

- (PRSMigrationDescriptor)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PRSMigrationDescriptor;
  v5 = [(PRSMigrationDescriptor *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenDim"];
    homeScreenDim = v5->_homeScreenDim;
    v5->_homeScreenDim = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenTintColor"];
    homeScreenTintColor = v5->_homeScreenTintColor;
    v5->_homeScreenTintColor = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconTintSource"];
    homeScreenIconTintSource = v5->_homeScreenIconTintSource;
    v5->_homeScreenIconTintSource = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconSize"];
    homeScreenIconSize = v5->_homeScreenIconSize;
    v5->_homeScreenIconSize = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconStyle"];
    homeScreenIconStyle = v5->_homeScreenIconStyle;
    v5->_homeScreenIconStyle = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconStyleVariant"];
    homeScreenIconStyleVariant = v5->_homeScreenIconStyleVariant;
    v5->_homeScreenIconStyleVariant = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconStyleVariantsForStyles"];
    homeScreenIconStyleVariantsForStyles = v5->_homeScreenIconStyleVariantsForStyles;
    v5->_homeScreenIconStyleVariantsForStyles = v18;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  homeScreenDim = self->_homeScreenDim;
  coderCopy = coder;
  [coderCopy encodeObject:homeScreenDim forKey:@"_homeScreenDim"];
  [coderCopy encodeObject:self->_homeScreenTintColor forKey:@"_homeScreenTintColor"];
  [coderCopy encodeObject:self->_homeScreenIconTintSource forKey:@"_homeScreenIconTintSource"];
  [coderCopy encodeObject:self->_homeScreenIconSize forKey:@"_homeScreenIconSize"];
  [coderCopy encodeObject:self->_homeScreenIconStyle forKey:@"_homeScreenIconStyle"];
  [coderCopy encodeObject:self->_homeScreenIconStyleVariant forKey:@"_homeScreenIconStyleVariant"];
  [coderCopy encodeObject:self->_homeScreenIconStyleVariantsForStyles forKey:@"_homeScreenIconStyleVariantsForStyles"];
}

- (PRSMigrationDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = PRSMigrationDescriptor;
  v5 = [(PRSMigrationDescriptor *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenDim"];
    homeScreenDim = v5->_homeScreenDim;
    v5->_homeScreenDim = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenTintColor"];
    homeScreenTintColor = v5->_homeScreenTintColor;
    v5->_homeScreenTintColor = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconTintSource"];
    homeScreenIconTintSource = v5->_homeScreenIconTintSource;
    v5->_homeScreenIconTintSource = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconSize"];
    homeScreenIconSize = v5->_homeScreenIconSize;
    v5->_homeScreenIconSize = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconStyle"];
    homeScreenIconStyle = v5->_homeScreenIconStyle;
    v5->_homeScreenIconStyle = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconStyleVariant"];
    homeScreenIconStyleVariant = v5->_homeScreenIconStyleVariant;
    v5->_homeScreenIconStyleVariant = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"_homeScreenIconStyleVariantsForStyles"];
    homeScreenIconStyleVariantsForStyles = v5->_homeScreenIconStyleVariantsForStyles;
    v5->_homeScreenIconStyleVariantsForStyles = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  homeScreenDim = self->_homeScreenDim;
  coderCopy = coder;
  [coderCopy encodeObject:homeScreenDim forKey:@"_homeScreenDim"];
  [coderCopy encodeObject:self->_homeScreenTintColor forKey:@"_homeScreenTintColor"];
  [coderCopy encodeObject:self->_homeScreenIconTintSource forKey:@"_homeScreenIconTintSource"];
  [coderCopy encodeObject:self->_homeScreenIconSize forKey:@"_homeScreenIconSize"];
  [coderCopy encodeObject:self->_homeScreenIconStyle forKey:@"_homeScreenIconStyle"];
  [coderCopy encodeObject:self->_homeScreenIconStyleVariant forKey:@"_homeScreenIconStyleVariant"];
  [coderCopy encodeObject:self->_homeScreenIconStyleVariantsForStyles forKey:@"_homeScreenIconStyleVariantsForStyles"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PRSMutableMigrationDescriptor);
  homeScreenTintColor = [(PRSMigrationDescriptor *)self homeScreenTintColor];
  [(PRSMigrationDescriptor *)v4 setHomeScreenTintColor:homeScreenTintColor];

  isHomeScreenDim = [(PRSMigrationDescriptor *)self isHomeScreenDim];
  [(PRSMigrationDescriptor *)v4 setHomeScreenDim:isHomeScreenDim];

  homeScreenIconTintSource = [(PRSMigrationDescriptor *)self homeScreenIconTintSource];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconTintSource:homeScreenIconTintSource];

  homeScreenIconSize = [(PRSMigrationDescriptor *)self homeScreenIconSize];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconSize:homeScreenIconSize];

  homeScreenIconStyle = [(PRSMigrationDescriptor *)self homeScreenIconStyle];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconStyle:homeScreenIconStyle];

  homeScreenIconStyleVariant = [(PRSMigrationDescriptor *)self homeScreenIconStyleVariant];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconStyleVariant:homeScreenIconStyleVariant];

  homeScreenIconStyleVariantsForStyles = [(PRSMigrationDescriptor *)self homeScreenIconStyleVariantsForStyles];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconStyleVariantsForStyles:homeScreenIconStyleVariantsForStyles];

  return v4;
}

@end