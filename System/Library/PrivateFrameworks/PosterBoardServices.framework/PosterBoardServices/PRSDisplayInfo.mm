@interface PRSDisplayInfo
- (BOOL)isEqual:(id)a3;
- (CGRect)bounds;
- (NSString)description;
- (PRSDisplayInfo)initWithBSXPCCoder:(id)a3;
- (PRSDisplayInfo)initWithCoder:(id)a3;
- (PRSDisplayInfo)initWithHardwareIdentifier:(id)a3 interfaceOrientation:(int64_t)a4 bounds:(CGRect)a5 pointScale:(double)a6 isMainDisplay:(BOOL)a7;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRSDisplayInfo

- (PRSDisplayInfo)initWithHardwareIdentifier:(id)a3 interfaceOrientation:(int64_t)a4 bounds:(CGRect)a5 pointScale:(double)a6 isMainDisplay:(BOOL)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16 = a3;
  if (!v16)
  {
    [PRSDisplayInfo initWithHardwareIdentifier:a2 interfaceOrientation:self bounds:? pointScale:? isMainDisplay:?];
  }

  v17 = v16;
  v22.receiver = self;
  v22.super_class = PRSDisplayInfo;
  v18 = [(PRSDisplayInfo *)&v22 init];
  if (v18)
  {
    v19 = [v17 copy];
    hardwareIdentifier = v18->_hardwareIdentifier;
    v18->_hardwareIdentifier = v19;

    v18->_interfaceOrientation = a4;
    v18->_bounds.origin.y = y;
    v18->_bounds.size.width = width;
    v18->_bounds.size.height = height;
    v18->_pointScale = a6;
    v18->_bounds.origin.x = x;
    v18->_isMainDisplay = a7;
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_pointScale];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_hardwareIdentifier hash]^ v4;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_interfaceOrientation];
  v7 = [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMainDisplay];
  v9 = [v8 hash];
  v10 = 0xBF58476D1CE4E5B9 * (v5 ^ v7 ^ v9 ^ ((v5 ^ v7 ^ v9) >> 30));
  v11 = (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31);

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    v8 = v9 && (hardwareIdentifier = self->_hardwareIdentifier, v11 = v9->_hardwareIdentifier, BSEqualObjects()) && self->_interfaceOrientation == v9->_interfaceOrientation && CGRectEqualToRect(self->_bounds, v9->_bounds) && self->_pointScale == v9->_pointScale && self->_isMainDisplay == v9->_isMainDisplay;
  }

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_hardwareIdentifier withName:@"_hardwareIdentifier"];
  v5 = self->_interfaceOrientation - 1;
  if (v5 >= 4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", self->_interfaceOrientation];
  }

  else
  {
    v6 = off_1E818CE48[v5];
  }

  v7 = [v3 appendObject:v6 withName:@"_interfaceOrientation"];
  v8 = [v3 appendRect:@"_bounds" withName:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
  v9 = [v3 appendFloat:@"_pointScale" withName:self->_pointScale];
  v10 = [v3 appendBool:self->_isMainDisplay withName:@"_isMainDisplay" ifEqualTo:1];
  v11 = [v3 build];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  hardwareIdentifier = self->_hardwareIdentifier;
  v10 = a3;
  [v10 encodeObject:hardwareIdentifier forKey:@"_hardwareIdentifier"];
  [v10 encodeInteger:self->_interfaceOrientation forKey:@"_interfaceOrientation"];
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  v9 = BSValueWithRect();
  [v10 encodeObject:v9 forKey:@"_bounds"];

  [v10 encodeDouble:@"_pointScale" forKey:self->_pointScale];
  [v10 encodeBool:self->_isMainDisplay forKey:@"_isMainDisplay"];
}

- (PRSDisplayInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hardwareIdentifier"];
  v6 = [v4 decodeIntegerForKey:@"_interfaceOrientation"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bounds"];
  v8 = MEMORY[0x1C691CB90]();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v4 decodeDoubleForKey:@"_pointScale"];
  v16 = v15;
  v17 = [v4 decodeBoolForKey:@"_isMainDisplay"];

  v18 = [(PRSDisplayInfo *)self initWithHardwareIdentifier:v5 interfaceOrientation:v6 bounds:v17 pointScale:v8 isMainDisplay:v10, v12, v14, v16];
  return v18;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  hardwareIdentifier = self->_hardwareIdentifier;
  v5 = a3;
  [v5 encodeObject:hardwareIdentifier forKey:@"_hardwareIdentifier"];
  [v5 encodeInt64:self->_interfaceOrientation forKey:@"_interfaceOrientation"];
  [v5 encodeCGRect:@"_bounds" forKey:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
  [v5 encodeDouble:@"_pointScale" forKey:self->_pointScale];
  [v5 encodeBool:self->_isMainDisplay forKey:@"_isMainDisplay"];
}

- (PRSDisplayInfo)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hardwareIdentifier"];
  v6 = [v4 decodeInt64ForKey:@"_interfaceOrientation"];
  [v4 decodeCGRectForKey:@"_bounds"];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v4 decodeDoubleForKey:@"_pointScale"];
  v16 = v15;
  v17 = [v4 decodeBoolForKey:@"_isMainDisplay"];

  v18 = [(PRSDisplayInfo *)self initWithHardwareIdentifier:v5 interfaceOrientation:v6 bounds:v17 pointScale:v8 isMainDisplay:v10, v12, v14, v16];
  return v18;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initWithHardwareIdentifier:(const char *)a1 interfaceOrientation:(uint64_t)a2 bounds:pointScale:isMainDisplay:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"hardwareIdentifier"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PRSHostContext.m";
    v16 = 1024;
    v17 = 48;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1C26FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end