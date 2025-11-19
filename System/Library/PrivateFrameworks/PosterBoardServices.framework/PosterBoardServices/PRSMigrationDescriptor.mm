@interface PRSMigrationDescriptor
- (NSString)description;
- (PRSMigrationDescriptor)initWithBSXPCCoder:(id)a3;
- (PRSMigrationDescriptor)initWithCoder:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRSMigrationDescriptor

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(PRSMigrationDescriptor *)self homeScreenTintColor];
  v5 = [v3 appendObject:v4 withName:@"homeScreenTintColor" skipIfNil:1];

  v6 = [(PRSMigrationDescriptor *)self isHomeScreenDim];
  v7 = [v3 appendObject:v6 withName:@"homeScreenDim" skipIfNil:1];

  v8 = [(PRSMigrationDescriptor *)self homeScreenIconTintSource];
  v9 = [v3 appendObject:v8 withName:@"homeScreenIconTintSource" skipIfNil:1];

  v10 = [(PRSMigrationDescriptor *)self homeScreenIconStyle];
  v11 = [v3 appendObject:v10 withName:@"homeScreenIconStyle" skipIfNil:1];

  v12 = [(PRSMigrationDescriptor *)self homeScreenIconStyleVariant];
  v13 = [v3 appendObject:v12 withName:@"homeScreenIconStyleVariant" skipIfNil:1];

  v14 = [(PRSMigrationDescriptor *)self homeScreenIconSize];
  v15 = [v3 appendObject:v14 withName:@"homeScreenIconSize" skipIfNil:1];

  v16 = [(PRSMigrationDescriptor *)self homeScreenIconStyleVariantsForStyles];
  v17 = [v3 appendObject:v16 withName:@"homeScreenIconStyleVariantsForStyles" skipIfNil:1];

  v18 = [v3 build];

  return v18;
}

- (PRSMigrationDescriptor)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PRSMigrationDescriptor;
  v5 = [(PRSMigrationDescriptor *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenDim"];
    homeScreenDim = v5->_homeScreenDim;
    v5->_homeScreenDim = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenTintColor"];
    homeScreenTintColor = v5->_homeScreenTintColor;
    v5->_homeScreenTintColor = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconTintSource"];
    homeScreenIconTintSource = v5->_homeScreenIconTintSource;
    v5->_homeScreenIconTintSource = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconSize"];
    homeScreenIconSize = v5->_homeScreenIconSize;
    v5->_homeScreenIconSize = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconStyle"];
    homeScreenIconStyle = v5->_homeScreenIconStyle;
    v5->_homeScreenIconStyle = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconStyleVariant"];
    homeScreenIconStyleVariant = v5->_homeScreenIconStyleVariant;
    v5->_homeScreenIconStyleVariant = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconStyleVariantsForStyles"];
    homeScreenIconStyleVariantsForStyles = v5->_homeScreenIconStyleVariantsForStyles;
    v5->_homeScreenIconStyleVariantsForStyles = v18;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  homeScreenDim = self->_homeScreenDim;
  v5 = a3;
  [v5 encodeObject:homeScreenDim forKey:@"_homeScreenDim"];
  [v5 encodeObject:self->_homeScreenTintColor forKey:@"_homeScreenTintColor"];
  [v5 encodeObject:self->_homeScreenIconTintSource forKey:@"_homeScreenIconTintSource"];
  [v5 encodeObject:self->_homeScreenIconSize forKey:@"_homeScreenIconSize"];
  [v5 encodeObject:self->_homeScreenIconStyle forKey:@"_homeScreenIconStyle"];
  [v5 encodeObject:self->_homeScreenIconStyleVariant forKey:@"_homeScreenIconStyleVariant"];
  [v5 encodeObject:self->_homeScreenIconStyleVariantsForStyles forKey:@"_homeScreenIconStyleVariantsForStyles"];
}

- (PRSMigrationDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PRSMigrationDescriptor;
  v5 = [(PRSMigrationDescriptor *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenDim"];
    homeScreenDim = v5->_homeScreenDim;
    v5->_homeScreenDim = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenTintColor"];
    homeScreenTintColor = v5->_homeScreenTintColor;
    v5->_homeScreenTintColor = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconTintSource"];
    homeScreenIconTintSource = v5->_homeScreenIconTintSource;
    v5->_homeScreenIconTintSource = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconSize"];
    homeScreenIconSize = v5->_homeScreenIconSize;
    v5->_homeScreenIconSize = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconStyle"];
    homeScreenIconStyle = v5->_homeScreenIconStyle;
    v5->_homeScreenIconStyle = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenIconStyleVariant"];
    homeScreenIconStyleVariant = v5->_homeScreenIconStyleVariant;
    v5->_homeScreenIconStyleVariant = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"_homeScreenIconStyleVariantsForStyles"];
    homeScreenIconStyleVariantsForStyles = v5->_homeScreenIconStyleVariantsForStyles;
    v5->_homeScreenIconStyleVariantsForStyles = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  homeScreenDim = self->_homeScreenDim;
  v5 = a3;
  [v5 encodeObject:homeScreenDim forKey:@"_homeScreenDim"];
  [v5 encodeObject:self->_homeScreenTintColor forKey:@"_homeScreenTintColor"];
  [v5 encodeObject:self->_homeScreenIconTintSource forKey:@"_homeScreenIconTintSource"];
  [v5 encodeObject:self->_homeScreenIconSize forKey:@"_homeScreenIconSize"];
  [v5 encodeObject:self->_homeScreenIconStyle forKey:@"_homeScreenIconStyle"];
  [v5 encodeObject:self->_homeScreenIconStyleVariant forKey:@"_homeScreenIconStyleVariant"];
  [v5 encodeObject:self->_homeScreenIconStyleVariantsForStyles forKey:@"_homeScreenIconStyleVariantsForStyles"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PRSMutableMigrationDescriptor);
  v5 = [(PRSMigrationDescriptor *)self homeScreenTintColor];
  [(PRSMigrationDescriptor *)v4 setHomeScreenTintColor:v5];

  v6 = [(PRSMigrationDescriptor *)self isHomeScreenDim];
  [(PRSMigrationDescriptor *)v4 setHomeScreenDim:v6];

  v7 = [(PRSMigrationDescriptor *)self homeScreenIconTintSource];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconTintSource:v7];

  v8 = [(PRSMigrationDescriptor *)self homeScreenIconSize];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconSize:v8];

  v9 = [(PRSMigrationDescriptor *)self homeScreenIconStyle];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconStyle:v9];

  v10 = [(PRSMigrationDescriptor *)self homeScreenIconStyleVariant];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconStyleVariant:v10];

  v11 = [(PRSMigrationDescriptor *)self homeScreenIconStyleVariantsForStyles];
  [(PRSMigrationDescriptor *)v4 setHomeScreenIconStyleVariantsForStyles:v11];

  return v4;
}

@end