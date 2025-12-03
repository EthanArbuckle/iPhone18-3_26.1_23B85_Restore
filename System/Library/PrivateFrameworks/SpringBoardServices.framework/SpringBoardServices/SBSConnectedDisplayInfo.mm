@interface SBSConnectedDisplayInfo
- (CGSize)size;
- (SBSConnectedDisplayInfo)initWithCoder:(id)coder;
- (SBSConnectedDisplayInfo)initWithIdentifier:(id)identifier deviceName:(id)name displayName:(id)displayName size:(CGSize)size mirrored:(BOOL)mirrored supportedScales:(unint64_t)scales displayModeSettings:(id)settings arrangement:(id)self0;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSConnectedDisplayInfo

- (SBSConnectedDisplayInfo)initWithIdentifier:(id)identifier deviceName:(id)name displayName:(id)displayName size:(CGSize)size mirrored:(BOOL)mirrored supportedScales:(unint64_t)scales displayModeSettings:(id)settings arrangement:(id)self0
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  nameCopy = name;
  displayNameCopy = displayName;
  settingsCopy = settings;
  arrangementCopy = arrangement;
  v27.receiver = self;
  v27.super_class = SBSConnectedDisplayInfo;
  v21 = [(SBSConnectedDisplayInfo *)&v27 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_identifier, identifier);
    objc_storeStrong(&v22->_deviceName, name);
    objc_storeStrong(&v22->_displayName, displayName);
    v22->_size.width = width;
    v22->_size.height = height;
    v22->_mirrored = mirrored;
    objc_storeStrong(&v22->_displayModeSettings, settings);
    v22->_supportedScales = scales;
    objc_storeStrong(&v22->_arrangement, arrangement);
  }

  return v22;
}

- (SBSConnectedDisplayInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = SBSConnectedDisplayInfo;
  v5 = [(SBSConnectedDisplayInfo *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v10;

    [coderCopy decodeCGSizeForKey:@"size"];
    v5->_size.width = v12;
    v5->_size.height = v13;
    v5->_mirrored = [coderCopy decodeBoolForKey:@"mirrored"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"arrangement"];
    arrangement = v5->_arrangement;
    v5->_arrangement = v14;

    v5->_supportedScales = [coderCopy decodeIntegerForKey:@"supportedScales"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayModeSettings"];
    displayModeSettings = v5->_displayModeSettings;
    v5->_displayModeSettings = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_deviceName forKey:@"deviceName"];
  [coderCopy encodeCGSize:@"size" forKey:{self->_size.width, self->_size.height}];
  [coderCopy encodeBool:self->_mirrored forKey:@"mirrored"];
  [coderCopy encodeObject:self->_arrangement forKey:@"arrangement"];
  [coderCopy encodeInteger:self->_supportedScales forKey:@"supportedScales"];
  [coderCopy encodeObject:self->_displayModeSettings forKey:@"displayModeSettings"];
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_identifier withName:@"identifier"];
  [v3 appendString:self->_displayName withName:@"displayName"];
  v4 = [v3 appendBool:self->_mirrored withName:@"mirrored"];
  v5 = [v3 appendSize:@"size" withName:{self->_size.width, self->_size.height}];
  v6 = [v3 appendObject:self->_arrangement withName:@"arrangement"];
  v7 = [v3 appendInteger:self->_supportedScales withName:@"supportedScales"];
  v8 = [v3 appendObject:self->_displayModeSettings withName:@"displayModeSettings"];
  build = [v3 build];

  return build;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end