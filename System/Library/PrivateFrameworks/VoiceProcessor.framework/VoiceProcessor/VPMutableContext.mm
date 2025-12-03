@interface VPMutableContext
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setAcousticID:(unsigned int)d;
- (void)setDeviceClass:(unsigned int)class;
- (void)setHardwareLayoutID:(unsigned int)d;
- (void)setOperatingSystem:(unsigned int)system;
- (void)setOperatingSystemReleaseType:(id)type;
- (void)setProductType:(unsigned int)type;
- (void)setShortHardwareModelName:(id)name;
- (void)setTemporaryDirectoryPath:(id)path;
- (void)setTuningDirectoryPath:(id)path;
@end

@implementation VPMutableContext

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = VPMutableContext;
  return [(VPContext *)&v4 mutableCopyWithZone:zone];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VPContext allocWithZone:zone];
  vp::Context::operator=(&v4->_context, &self->super._context);
  return v4;
}

- (void)setHardwareLayoutID:(unsigned int)d
{
  if (d)
  {
    LODWORD(self[1].super._context.var0) = d;
    BYTE4(self[1].super._context.var0) = 1;
  }

  else if (BYTE4(self[1].super._context.var0) == 1)
  {
    BYTE4(self[1].super._context.var0) = 0;
  }
}

- (void)setAcousticID:(unsigned int)d
{
  if (d)
  {
    if ((self[2].super._context.m_os_release_type.mObject.mCFObject & 1) == 0)
    {
      LOBYTE(self[2].super._context.m_os_release_type.mObject.mCFObject) = 1;
    }

    *(&self[2].super._context.m_os + 1) = d;
  }

  else if (LOBYTE(self[2].super._context.m_os_release_type.mObject.mCFObject) == 1)
  {
    LOBYTE(self[2].super._context.m_os_release_type.mObject.mCFObject) = 0;
  }
}

- (void)setProductType:(unsigned int)type
{
  if (type - 1 > 0x45)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_272759B38[type - 1] | qword_272759908[type - 1];
  }

  LODWORD(self[2].super.super.isa) = v3;
  BYTE4(self[2].super.super.isa) = BYTE4(v3);
}

- (void)setDeviceClass:(unsigned int)class
{
  v3 = self[2].super._context.m_os - 1;
  if (v3 > 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = dword_2727598E0[v3];
  }

  self[2].super._context.m_os = v4;
}

- (void)setTemporaryDirectoryPath:(id)path
{
  pathCopy = path;
  uTF8String = [pathCopy UTF8String];
  std::__fs::filesystem::path::assign[abi:ne200100]<char const*>(&self->super._context.m_tuning_resources_path.var0, &uTF8String);
}

- (void)setTuningDirectoryPath:(id)path
{
  pathCopy = path;
  uTF8String = [pathCopy UTF8String];
  std::__fs::filesystem::path::assign[abi:ne200100]<char const*>(&self->super._context.m_tuning_resources_path, &uTF8String);
}

- (void)setShortHardwareModelName:(id)name
{
  nameCopy = name;
  std::string::__assign_external(&self[1].super._context.m_tuning_resources_path.__pn_.__rep_.__l.__size_, [nameCopy UTF8String]);
}

- (void)setOperatingSystemReleaseType:(id)type
{
  typeCopy = type;
  applesauce::CF::StringRef::from_get(&v6, typeCopy);
  mCFObject = self->super._context.m_os_release_type.mObject.mCFObject;
  self->super._context.m_os_release_type.mObject.mCFObject = v6;
  v6 = mCFObject;
  if (mCFObject)
  {
    CFRelease(mCFObject);
  }
}

- (void)setOperatingSystem:(unsigned int)system
{
  if (system - 1 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_2727598D4[system - 1];
  }

  self->super._context.m_os = v3;
}

@end