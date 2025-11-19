@interface PLCapturePhotoSettings
+ (id)photoSettingsWithPhotoSettings:(id)a3;
- (NSString)description;
- (PLCapturePhotoSettings)initWithCoder:(id)a3;
- (PLCapturePhotoSettings)initWithPhotoSettings:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeObject:self->_photoSettings forKey:@"photoSettings"];
}

- (PLCapturePhotoSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PLCapturePhotoSettings;
  v5 = [(PLCapturePhotoSettings *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"photoSettings"];
    photoSettings = v5->_photoSettings;
    v5->_photoSettings = v11;

    v13 = v5;
  }

  return v5;
}

- (PLCapturePhotoSettings)initWithPhotoSettings:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PLCapturePhotoSettings;
  v6 = [(PLCapturePhotoSettings *)&v12 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];
    uuid = v6->_uuid;
    v6->_uuid = v8;

    objc_storeStrong(&v6->_photoSettings, a3);
    v10 = v6;
  }

  return v6;
}

+ (id)photoSettingsWithPhotoSettings:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[a1 alloc] initWithPhotoSettings:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end