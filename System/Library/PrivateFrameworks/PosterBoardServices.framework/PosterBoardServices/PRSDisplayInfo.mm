@interface PRSDisplayInfo
- (BOOL)isEqual:(id)equal;
- (CGRect)bounds;
- (NSString)description;
- (PRSDisplayInfo)initWithBSXPCCoder:(id)coder;
- (PRSDisplayInfo)initWithCoder:(id)coder;
- (PRSDisplayInfo)initWithHardwareIdentifier:(id)identifier interfaceOrientation:(int64_t)orientation bounds:(CGRect)bounds pointScale:(double)scale isMainDisplay:(BOOL)display;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRSDisplayInfo

- (PRSDisplayInfo)initWithHardwareIdentifier:(id)identifier interfaceOrientation:(int64_t)orientation bounds:(CGRect)bounds pointScale:(double)scale isMainDisplay:(BOOL)display
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [PRSDisplayInfo initWithHardwareIdentifier:a2 interfaceOrientation:self bounds:? pointScale:? isMainDisplay:?];
  }

  v17 = identifierCopy;
  v22.receiver = self;
  v22.super_class = PRSDisplayInfo;
  v18 = [(PRSDisplayInfo *)&v22 init];
  if (v18)
  {
    v19 = [v17 copy];
    hardwareIdentifier = v18->_hardwareIdentifier;
    v18->_hardwareIdentifier = v19;

    v18->_interfaceOrientation = orientation;
    v18->_bounds.origin.y = y;
    v18->_bounds.size.width = width;
    v18->_bounds.size.height = height;
    v18->_pointScale = scale;
    v18->_bounds.origin.x = x;
    v18->_isMainDisplay = display;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
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
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  hardwareIdentifier = self->_hardwareIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:hardwareIdentifier forKey:@"_hardwareIdentifier"];
  [coderCopy encodeInteger:self->_interfaceOrientation forKey:@"_interfaceOrientation"];
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  v9 = BSValueWithRect();
  [coderCopy encodeObject:v9 forKey:@"_bounds"];

  [coderCopy encodeDouble:@"_pointScale" forKey:self->_pointScale];
  [coderCopy encodeBool:self->_isMainDisplay forKey:@"_isMainDisplay"];
}

- (PRSDisplayInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hardwareIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"_interfaceOrientation"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bounds"];
  v8 = MEMORY[0x1C691CB90]();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [coderCopy decodeDoubleForKey:@"_pointScale"];
  v16 = v15;
  v17 = [coderCopy decodeBoolForKey:@"_isMainDisplay"];

  v18 = [(PRSDisplayInfo *)self initWithHardwareIdentifier:v5 interfaceOrientation:v6 bounds:v17 pointScale:v8 isMainDisplay:v10, v12, v14, v16];
  return v18;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  hardwareIdentifier = self->_hardwareIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:hardwareIdentifier forKey:@"_hardwareIdentifier"];
  [coderCopy encodeInt64:self->_interfaceOrientation forKey:@"_interfaceOrientation"];
  [coderCopy encodeCGRect:@"_bounds" forKey:{self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height}];
  [coderCopy encodeDouble:@"_pointScale" forKey:self->_pointScale];
  [coderCopy encodeBool:self->_isMainDisplay forKey:@"_isMainDisplay"];
}

- (PRSDisplayInfo)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hardwareIdentifier"];
  v6 = [coderCopy decodeInt64ForKey:@"_interfaceOrientation"];
  [coderCopy decodeCGRectForKey:@"_bounds"];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [coderCopy decodeDoubleForKey:@"_pointScale"];
  v16 = v15;
  v17 = [coderCopy decodeBoolForKey:@"_isMainDisplay"];

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