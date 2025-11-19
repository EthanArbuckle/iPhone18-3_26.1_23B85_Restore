@interface SBSConnectedDisplayInfo
- (CGSize)size;
- (SBSConnectedDisplayInfo)initWithCoder:(id)a3;
- (SBSConnectedDisplayInfo)initWithIdentifier:(id)a3 deviceName:(id)a4 displayName:(id)a5 size:(CGSize)a6 mirrored:(BOOL)a7 supportedScales:(unint64_t)a8 displayModeSettings:(id)a9 arrangement:(id)a10;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSConnectedDisplayInfo

- (SBSConnectedDisplayInfo)initWithIdentifier:(id)a3 deviceName:(id)a4 displayName:(id)a5 size:(CGSize)a6 mirrored:(BOOL)a7 supportedScales:(unint64_t)a8 displayModeSettings:(id)a9 arrangement:(id)a10
{
  height = a6.height;
  width = a6.width;
  v26 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a9;
  v20 = a10;
  v27.receiver = self;
  v27.super_class = SBSConnectedDisplayInfo;
  v21 = [(SBSConnectedDisplayInfo *)&v27 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_identifier, a3);
    objc_storeStrong(&v22->_deviceName, a4);
    objc_storeStrong(&v22->_displayName, a5);
    v22->_size.width = width;
    v22->_size.height = height;
    v22->_mirrored = a7;
    objc_storeStrong(&v22->_displayModeSettings, a9);
    v22->_supportedScales = a8;
    objc_storeStrong(&v22->_arrangement, a10);
  }

  return v22;
}

- (SBSConnectedDisplayInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SBSConnectedDisplayInfo;
  v5 = [(SBSConnectedDisplayInfo *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v10;

    [v4 decodeCGSizeForKey:@"size"];
    v5->_size.width = v12;
    v5->_size.height = v13;
    v5->_mirrored = [v4 decodeBoolForKey:@"mirrored"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"arrangement"];
    arrangement = v5->_arrangement;
    v5->_arrangement = v14;

    v5->_supportedScales = [v4 decodeIntegerForKey:@"supportedScales"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayModeSettings"];
    displayModeSettings = v5->_displayModeSettings;
    v5->_displayModeSettings = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_deviceName forKey:@"deviceName"];
  [v5 encodeCGSize:@"size" forKey:{self->_size.width, self->_size.height}];
  [v5 encodeBool:self->_mirrored forKey:@"mirrored"];
  [v5 encodeObject:self->_arrangement forKey:@"arrangement"];
  [v5 encodeInteger:self->_supportedScales forKey:@"supportedScales"];
  [v5 encodeObject:self->_displayModeSettings forKey:@"displayModeSettings"];
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
  v9 = [v3 build];

  return v9;
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