@interface PLCapturePhotoSettings
+ (id)photoSettingsWithPhotoSettings:(id)settings;
- (NSString)description;
- (PLCapturePhotoSettings)initWithCoder:(id)coder;
- (PLCapturePhotoSettings)initWithPhotoSettings:(id)settings;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLCapturePhotoSettings

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PLCapturePhotoSettings;
  v4 = [(PLCapturePhotoSettings *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ uuid: %@, photoSettings: %@", v4, self->_uuid, self->_photoSettings];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_photoSettings forKey:@"photoSettings"];
}

- (PLCapturePhotoSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PLCapturePhotoSettings;
  v5 = [(PLCapturePhotoSettings *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"photoSettings"];
    photoSettings = v5->_photoSettings;
    v5->_photoSettings = v11;

    v13 = v5;
  }

  return v5;
}

- (PLCapturePhotoSettings)initWithPhotoSettings:(id)settings
{
  settingsCopy = settings;
  v12.receiver = self;
  v12.super_class = PLCapturePhotoSettings;
  v6 = [(PLCapturePhotoSettings *)&v12 init];
  if (v6)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uuid = v6->_uuid;
    v6->_uuid = uUIDString;

    objc_storeStrong(&v6->_photoSettings, settings);
    v10 = v6;
  }

  return v6;
}

+ (id)photoSettingsWithPhotoSettings:(id)settings
{
  if (settings)
  {
    settingsCopy = settings;
    v5 = [[self alloc] initWithPhotoSettings:settingsCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end