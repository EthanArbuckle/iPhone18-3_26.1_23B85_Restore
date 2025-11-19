@interface VPMutableContext
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setAcousticID:(unsigned int)a3;
- (void)setDeviceClass:(unsigned int)a3;
- (void)setHardwareLayoutID:(unsigned int)a3;
- (void)setOperatingSystem:(unsigned int)a3;
- (void)setOperatingSystemReleaseType:(id)a3;
- (void)setProductType:(unsigned int)a3;
- (void)setShortHardwareModelName:(id)a3;
- (void)setTemporaryDirectoryPath:(id)a3;
- (void)setTuningDirectoryPath:(id)a3;
@end

@implementation VPMutableContext

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = VPMutableContext;
  return [(VPContext *)&v4 mutableCopyWithZone:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VPContext allocWithZone:a3];
  vp::Context::operator=(&v4->_context, &self->super._context);
  return v4;
}

- (void)setHardwareLayoutID:(unsigned int)a3
{
  if (a3)
  {
    LODWORD(self[1].super._context.var0) = a3;
    BYTE4(self[1].super._context.var0) = 1;
  }

  else if (BYTE4(self[1].super._context.var0) == 1)
  {
    BYTE4(self[1].super._context.var0) = 0;
  }
}

- (void)setAcousticID:(unsigned int)a3
{
  if (a3)
  {
    if ((self[2].super._context.m_os_release_type.mObject.mCFObject & 1) == 0)
    {
      LOBYTE(self[2].super._context.m_os_release_type.mObject.mCFObject) = 1;
    }

    *(&self[2].super._context.m_os + 1) = a3;
  }

  else if (LOBYTE(self[2].super._context.m_os_release_type.mObject.mCFObject) == 1)
  {
    LOBYTE(self[2].super._context.m_os_release_type.mObject.mCFObject) = 0;
  }
}

- (void)setProductType:(unsigned int)a3
{
  if (a3 - 1 > 0x45)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_272759B38[a3 - 1] | qword_272759908[a3 - 1];
  }

  LODWORD(self[2].super.super.isa) = v3;
  BYTE4(self[2].super.super.isa) = BYTE4(v3);
}

- (void)setDeviceClass:(unsigned int)a3
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

- (void)setTemporaryDirectoryPath:(id)a3
{
  v4 = a3;
  v5 = [v4 UTF8String];
  std::__fs::filesystem::path::assign[abi:ne200100]<char const*>(&self->super._context.m_tuning_resources_path.var0, &v5);
}

- (void)setTuningDirectoryPath:(id)a3
{
  v4 = a3;
  v5 = [v4 UTF8String];
  std::__fs::filesystem::path::assign[abi:ne200100]<char const*>(&self->super._context.m_tuning_resources_path, &v5);
}

- (void)setShortHardwareModelName:(id)a3
{
  v4 = a3;
  std::string::__assign_external(&self[1].super._context.m_tuning_resources_path.__pn_.__rep_.__l.__size_, [v4 UTF8String]);
}

- (void)setOperatingSystemReleaseType:(id)a3
{
  v4 = a3;
  applesauce::CF::StringRef::from_get(&v6, v4);
  mCFObject = self->super._context.m_os_release_type.mObject.mCFObject;
  self->super._context.m_os_release_type.mObject.mCFObject = v6;
  v6 = mCFObject;
  if (mCFObject)
  {
    CFRelease(mCFObject);
  }
}

- (void)setOperatingSystem:(unsigned int)a3
{
  if (a3 - 1 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_2727598D4[a3 - 1];
  }

  self->super._context.m_os = v3;
}

@end