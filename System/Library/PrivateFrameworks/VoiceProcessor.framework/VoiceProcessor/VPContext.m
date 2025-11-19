@interface VPContext
+ (unsigned)findVPProductType:(unsigned int)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)shortHardwareModelName;
- (NSString)temporaryDirectoryPath;
- (NSString)tuningDirectoryPath;
- (VPContext)init;
- (id).cxx_construct;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unsigned)acousticID;
- (unsigned)deviceClass;
- (unsigned)hardwareLayoutID:(unsigned int)a3;
- (unsigned)operatingSystem;
- (unsigned)productType;
@end

@implementation VPContext

- (id).cxx_construct
{
  self->_context.m_os_release_type.mObject.mCFObject = 0;
  self->_context.m_os = 0;
  *&self->_context.m_is_internal_build = 256;
  *self->_context.m_tuning_resources_path.__pn_.__rep_.__s.__data_ = 0uLL;
  *(&self->_context.m_tuning_resources_path.__pn_.__rep_.__l + 2) = 0;
  std::string::append[abi:ne200100]<char const*,0>(&self->_context.m_tuning_resources_path, "/Library/Audio/Tunings", "");
  *&self->_context.m_tuning_resources_path.var0 = 0;
  self->_context.var0 = 0;
  self[1].super.isa = 0;
  std::string::append[abi:ne200100]<char const*,0>(&self->_context.m_tuning_resources_path.var0, "/tmp/AudioCapture/VP/", "");
  std::__fs::filesystem::path::path[abi:ne200100]<char [16],void>(&self[1]._context, "/usr/local/lib/");
  *self[1]._context.m_tuning_resources_path.__pn_.__rep_.__s.__data_ = 0;
  *(&self[1]._context.m_tuning_resources_path.var1 + 3) = 7;
  strcpy(&self[1]._context.m_tuning_resources_path.__pn_.__rep_.__s.__data_[8], "Unknown");
  BYTE4(self[1]._context.var0) = 0;
  LOBYTE(self[2].super.isa) = 0;
  BYTE4(self[2].super.isa) = 0;
  self[2]._context.m_os = -1;
  *(&self[2]._context.m_os + 4) = 0;
  LOBYTE(self[2]._context.m_os_release_type.mObject.mCFObject) = 0;
  BYTE4(self[2]._context.m_os_release_type.mObject.mCFObject) = 0;
  self[2]._context.m_is_internal_build = 0;
  *(&self[2]._context.m_is_ui_build + 3) = 0;
  self[2]._context.m_tuning_resources_path.__pn_.__rep_.__s.__data_[0] = 0;
  self[2]._context.m_tuning_resources_path.__pn_.__rep_.__l.__size_ = 0;
  self[2]._context.m_tuning_resources_path.__pn_.__rep_.__s.__data_[16] = 0;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_36;
  }

  if (self == v4)
  {
    v18 = 1;
    goto LABEL_37;
  }

  if (self->_context.m_os != v4->_context.m_os)
  {
    goto LABEL_36;
  }

  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(self->_context.m_os_release_type.mObject.mCFObject, &v4->_context.m_os_release_type.mObject.mCFObject))
  {
    goto LABEL_36;
  }

  if (self->_context.m_is_internal_build != v4->_context.m_is_internal_build)
  {
    goto LABEL_36;
  }

  if (self->_context.m_is_ui_build != v4->_context.m_is_ui_build)
  {
    goto LABEL_36;
  }

  v5.__data_ = v4->_context.m_tuning_resources_path.__pn_.__rep_.__s.__data_;
  if (!std::__fs::filesystem::operator==[abi:ne200100](&self->_context.m_tuning_resources_path, v5))
  {
    goto LABEL_36;
  }

  v6.__data_ = &v4->_context.m_tuning_resources_path.var0;
  if (!std::__fs::filesystem::operator==[abi:ne200100](&self->_context.m_tuning_resources_path.var0, v6))
  {
    goto LABEL_36;
  }

  v7.__data_ = &v4[1]._context;
  if (!std::__fs::filesystem::operator==[abi:ne200100](&self[1]._context, v7) || self[1]._context.m_tuning_resources_path.__pn_.__rep_.__s.__data_[0] != v4[1]._context.m_tuning_resources_path.__pn_.__rep_.__s.__data_[0] || self[1]._context.m_tuning_resources_path.__pn_.__rep_.__s.__data_[1] != v4[1]._context.m_tuning_resources_path.__pn_.__rep_.__s.__data_[1] || !std::equal_to<std::string>::operator()[abi:ne200100](&self[1]._context.m_tuning_resources_path.__pn_.__rep_.__l.__size_, &v4[1]._context.m_tuning_resources_path.__pn_.__rep_.__l.__size_))
  {
    goto LABEL_36;
  }

  var0 = BYTE4(self[1]._context.var0);
  v9 = BYTE4(v4[1]._context.var0);
  if (var0 == v9 && BYTE4(self[1]._context.var0))
  {
    var0 = self[1]._context.var0;
    v9 = v4[1]._context.var0;
  }

  if (var0 != v9)
  {
    goto LABEL_36;
  }

  isa = BYTE4(self[2].super.isa);
  v11 = BYTE4(v4[2].super.isa);
  if (isa == v11 && BYTE4(self[2].super.isa))
  {
    isa = self[2].super.isa;
    v11 = v4[2].super.isa;
  }

  if (isa != v11 || self[2]._context.m_os != v4[2]._context.m_os)
  {
    goto LABEL_36;
  }

  mCFObject_low = LOBYTE(self[2]._context.m_os_release_type.mObject.mCFObject);
  v13 = LOBYTE(v4[2]._context.m_os_release_type.mObject.mCFObject);
  if (mCFObject_low == v13 && LOBYTE(self[2]._context.m_os_release_type.mObject.mCFObject))
  {
    mCFObject_low = *(&self[2]._context.m_os + 1);
    v13 = *(&v4[2]._context.m_os + 1);
  }

  if (mCFObject_low != v13)
  {
    goto LABEL_36;
  }

  m_is_internal_build = self[2]._context.m_is_internal_build;
  mCFObject_high = v4[2]._context.m_is_internal_build;
  if (m_is_internal_build == mCFObject_high && self[2]._context.m_is_internal_build)
  {
    m_is_internal_build = HIDWORD(self[2]._context.m_os_release_type.mObject.mCFObject);
    mCFObject_high = HIDWORD(v4[2]._context.m_os_release_type.mObject.mCFObject);
  }

  if (m_is_internal_build != mCFObject_high)
  {
    goto LABEL_36;
  }

  v16 = self[2]._context.m_tuning_resources_path.__pn_.__rep_.__s.__data_[0];
  v17 = v4[2]._context.m_tuning_resources_path.__pn_.__rep_.__s.__data_[0];
  if (v16 == v17 && self[2]._context.m_tuning_resources_path.__pn_.__rep_.__s.__data_[0])
  {
    v16 = *(&self[2]._context.m_is_ui_build + 3);
    v17 = *(&v4[2]._context.m_is_ui_build + 3);
  }

  if (v16 == v17 && applesauce::CF::operator==(self[2]._context.m_tuning_resources_path.__pn_.__rep_.__l.__size_, v4[2]._context.m_tuning_resources_path.__pn_.__rep_.__l.__size_))
  {
    v18 = self[2]._context.m_tuning_resources_path.__pn_.__rep_.__s.__data_[16] == v4[2]._context.m_tuning_resources_path.__pn_.__rep_.__s.__data_[16];
  }

  else
  {
LABEL_36:
    v18 = 0;
  }

LABEL_37:

  return v18;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [VPMutableContext allocWithZone:a3];
  vp::Context::operator=(&v4->super._context, &self->_context);
  return v4;
}

+ (unsigned)findVPProductType:(unsigned int)a3
{
  if (a3 - 1 > 0x43)
  {
    return 0;
  }

  else
  {
    return dword_2727597B8[a3 - 1];
  }
}

- (unsigned)hardwareLayoutID:(unsigned int)a3
{
  p_var0 = &self[1]._context.var0;
  if (!BYTE4(self[1]._context.var0))
  {
    p_var0 = &kVPHardwareLayoutID_Unknown;
  }

  return *p_var0;
}

- (unsigned)acousticID
{
  v2 = (&self[2]._context.m_os + 1);
  if (!LOBYTE(self[2]._context.m_os_release_type.mObject.mCFObject))
  {
    v2 = &kVPHardwareLayoutID_Unknown;
  }

  return *v2;
}

- (unsigned)productType
{
  if (BYTE4(self[2].super.isa) == 1)
  {
    v4 = [VPContext findVPProductType:LODWORD(self[2].super.isa), v2, v3]| 0x100000000;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 0x100000000) != 0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (unsigned)deviceClass
{
  v2 = self[2]._context.m_os - 1;
  if (v2 > 8)
  {
    return -1;
  }

  else
  {
    return dword_2727598E0[v2];
  }
}

- (NSString)temporaryDirectoryPath
{
  p_var0 = &self->_context.m_tuning_resources_path.var0;
  if (SHIBYTE(self[1].super.isa) < 0)
  {
    p_var0 = *p_var0;
  }

  return [MEMORY[0x277CCACA8] stringWithUTF8String:p_var0];
}

- (NSString)tuningDirectoryPath
{
  p_m_tuning_resources_path = &self->_context.m_tuning_resources_path;
  if (*(&self->_context.m_tuning_resources_path.__pn_.__rep_.__l + 23) < 0)
  {
    p_m_tuning_resources_path = p_m_tuning_resources_path->__pn_.__rep_.__l.__data_;
  }

  return [MEMORY[0x277CCACA8] stringWithUTF8String:p_m_tuning_resources_path];
}

- (NSString)shortHardwareModelName
{
  p_size = &self[1]._context.m_tuning_resources_path.__pn_.__rep_.__l.__size_;
  if (*(&self[1]._context.m_tuning_resources_path.var1 + 3) < 0)
  {
    p_size = *p_size;
  }

  return [MEMORY[0x277CCACA8] stringWithUTF8String:p_size];
}

- (unsigned)operatingSystem
{
  v2 = self->_context.m_os - 1;
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return dword_2727598C8[v2];
  }
}

- (VPContext)init
{
  v32.receiver = self;
  v32.super_class = VPContext;
  v2 = [(VPContext *)&v32 init];
  if (!v2)
  {
    return v2;
  }

  v3 = applesauce::gestalt::query_as<int,0>();
  *(v2 + 39) = v3;
  v2[160] = BYTE4(v3);
  if (v3 <= 0 && (v3 & 0x100000000) != 0)
  {
    v2[160] = 0;
  }

  LODWORD(v30.__r_.__value_.__l.__data_) = 0;
  v5 = MGCopyAnswerWithError();
  v6 = v5;
  if (!v5)
  {
    goto LABEL_17;
  }

  v7 = CFGetTypeID(v5);
  if (v7 == CFStringGetTypeID())
  {
    v8 = CFGetTypeID(v6);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    applesauce::CF::StringRef::from_get(&v31, v6);
    v9 = v31.__pn_.__r_.__value_.__r.__words[0];
    v10 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  CFRelease(v6);
  v11 = v9 ? v10 : 0;
  if (v11 == 1)
  {
    CFRetain(v9);
    CFRelease(v9);
  }

  else
  {
LABEL_17:
    v9 = 0;
  }

  v12 = *(v2 + 2);
  *(v2 + 2) = v9;
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = applesauce::gestalt::query_as<BOOL,0>();
  v2[24] = (v13 > 0xFFu) & v13;
  v14 = applesauce::gestalt::query_as<BOOL,0>();
  v2[25] = (v14 > 0xFFu) & v14;
  v15 = applesauce::gestalt::query_as<int,0>();
  if ((v15 & 0x100000000) != 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  *(v2 + 38) = v16;
  caulk::product::short_hardware_model_name(&v31, v15);
  v17 = (v2 + 112);
  if (v2[135] < 0)
  {
    operator delete(*v17);
  }

  *v17 = *&v31.__pn_.__r_.__value_.__l.__data_;
  *(v2 + 16) = *(&v31.__pn_.__r_.__value_.__l + 2);
  v18 = v2[135];
  v19 = *(v2 + 14);
  if (v18 >= 0)
  {
    v19 = v2 + 112;
  }

  if (v18 < 0)
  {
    v18 = *(v2 + 15);
  }

  for (; v18; --v18)
  {
    if (*v19 == 44)
    {
      *v19 = 95;
    }

    ++v19;
  }

  v20 = NSTemporaryDirectory();
  __p.__r_.__value_.__r.__words[0] = [v20 UTF8String];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v30, &__p);

  std::__fs::filesystem::path::path[abi:ne200100]<char [16],void>(&__p, "AudioCapture/VP");
  std::__fs::filesystem::operator/[abi:ne200100](&v31, &v30, &__p);
  if (v2[79] < 0)
  {
    operator delete(*(v2 + 7));
  }

  *(v2 + 56) = v31;
  *(&v31.__pn_.__r_.__value_.__s + 23) = 0;
  v31.__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (PlatformUtilities_iOS::GetProductType(void)::sCompletedCheck != 1)
  {
    PlatformUtilities_iOS::GetProductType(void)::sCompletedCheck = 1;
    v22 = MGGetProductType();
    if (v22 > 2418348557)
    {
      if (v22 <= 3397214290)
      {
        if (v22 > 2943112656)
        {
          if (v22 > 3184375230)
          {
            if (v22 <= 3228373940)
            {
              if (v22 != 3184375231)
              {
                if (v22 != 3196158497)
                {
                  if (v22 == 3215673114)
                  {
                    v23 = &unk_28133C000;
                    v21 = 20;
LABEL_226:
                    v23[50] = v21;
                    goto LABEL_227;
                  }

                  goto LABEL_231;
                }

LABEL_159:
                v23 = &unk_28133C000;
                v21 = 29;
                goto LABEL_226;
              }

LABEL_179:
              v23 = &unk_28133C000;
              v21 = 21;
              goto LABEL_226;
            }

            if (v22 != 3228373941)
            {
              if (v22 == 3348380076)
              {
                v23 = &unk_28133C000;
                v21 = 3;
                goto LABEL_226;
              }

              if (v22 != 3361025853)
              {
                goto LABEL_231;
              }

              goto LABEL_139;
            }

LABEL_191:
            v23 = &unk_28133C000;
            v21 = 37;
            goto LABEL_226;
          }

          if (v22 <= 3001488777)
          {
            if (v22 == 2943112657)
            {
              v23 = &unk_28133C000;
              v21 = 48;
              goto LABEL_226;
            }

            if (v22 == 2979575960)
            {
              v23 = &unk_28133C000;
              v21 = 54;
              goto LABEL_226;
            }

            goto LABEL_231;
          }

          if (v22 == 3001488778)
          {
            v23 = &unk_28133C000;
            v21 = 13;
            goto LABEL_226;
          }

          if (v22 != 3054476161)
          {
            if (v22 != 3101941570)
            {
              goto LABEL_231;
            }

            goto LABEL_176;
          }

LABEL_135:
          v23 = &unk_28133C000;
          v21 = 36;
          goto LABEL_226;
        }

        if (v22 > 2644487443)
        {
          if (v22 > 2702125346)
          {
            switch(v22)
            {
              case 2702125347:
                v23 = &unk_28133C000;
                v21 = 2;
                goto LABEL_226;
              case 2722529672:
                v23 = &unk_28133C000;
                v21 = 9;
                goto LABEL_226;
              case 2903084588:
                v23 = &unk_28133C000;
                v21 = 27;
                goto LABEL_226;
            }

            goto LABEL_231;
          }

          if (v22 == 2644487444)
          {
            v23 = &unk_28133C000;
            v21 = 31;
            goto LABEL_226;
          }

          if (v22 != 2673319456)
          {
            goto LABEL_231;
          }

          goto LABEL_155;
        }

        if (v22 > 2516717267)
        {
          if (v22 != 2516717268)
          {
            if (v22 == 2625074843)
            {
              v23 = &unk_28133C000;
              v21 = 60;
              goto LABEL_226;
            }

            v24 = 2628394914;
LABEL_88:
            if (v22 != v24)
            {
              goto LABEL_231;
            }

            goto LABEL_135;
          }

LABEL_155:
          v23 = &unk_28133C000;
          v21 = 18;
          goto LABEL_226;
        }

        if (v22 == 2418348558)
        {
          v23 = &unk_28133C000;
          v21 = 40;
          goto LABEL_226;
        }

        v26 = 2458172802;
LABEL_158:
        if (v22 != v26)
        {
          goto LABEL_231;
        }

        goto LABEL_159;
      }

      if (v22 <= 3767261005)
      {
        if (v22 <= 3599094682)
        {
          if (v22 <= 3540156651)
          {
            if (v22 == 3397214291)
            {
              v23 = &unk_28133C000;
              v21 = 19;
              goto LABEL_226;
            }

            if (v22 == 3455223061)
            {
              v23 = &unk_28133C000;
              v21 = 25;
              goto LABEL_226;
            }
          }

          else
          {
            switch(v22)
            {
              case 3540156652:
                v23 = &unk_28133C000;
                v21 = 32;
                goto LABEL_226;
              case 3571532206:
                v23 = &unk_28133C000;
                v21 = 50;
                goto LABEL_226;
              case 3585085679:
                v23 = &unk_28133C000;
                v21 = 6;
                goto LABEL_226;
            }
          }

          goto LABEL_231;
        }

        if (v22 > 3663011140)
        {
          switch(v22)
          {
            case 3663011141:
              v23 = &unk_28133C000;
              v21 = 55;
              goto LABEL_226;
            case 3711192744:
              v23 = &unk_28133C000;
              v21 = 26;
              goto LABEL_226;
            case 3742999858:
              v23 = &unk_28133C000;
              v21 = 58;
              goto LABEL_226;
          }

          goto LABEL_231;
        }

        if (v22 != 3599094683)
        {
          v26 = 3636345305;
          goto LABEL_158;
        }

LABEL_190:
        v23 = &unk_28133C000;
        v21 = 34;
        goto LABEL_226;
      }

      if (v22 > 3867318490)
      {
        if (v22 > 4201643248)
        {
          switch(v22)
          {
            case 4201643249:
              v23 = &unk_28133C000;
              v21 = 14;
              goto LABEL_226;
            case 4242862982:
              v23 = &unk_28133C000;
              v21 = 23;
              goto LABEL_226;
            case 4240173202:
              v23 = &unk_28133C000;
              v21 = 1;
              goto LABEL_226;
          }
        }

        else
        {
          switch(v22)
          {
            case 3867318491:
              v23 = &unk_28133C000;
              v21 = 61;
              goto LABEL_226;
            case 3885279870:
              v23 = &unk_28133C000;
              v21 = 11;
              goto LABEL_226;
            case 4067129264:
              v23 = &unk_28133C000;
              v21 = 42;
              goto LABEL_226;
          }
        }

        goto LABEL_231;
      }

      if (v22 > 3819635029)
      {
        if (v22 == 3819635030)
        {
          v23 = &unk_28133C000;
          v21 = 59;
          goto LABEL_226;
        }

        if (v22 == 3839750255)
        {
          v23 = &unk_28133C000;
          v21 = 64;
          goto LABEL_226;
        }

        if (v22 != 3863625342)
        {
          goto LABEL_231;
        }

        goto LABEL_190;
      }

      if (v22 == 3767261006)
      {
        v23 = &unk_28133C000;
        v21 = 52;
        goto LABEL_226;
      }

      v25 = 3801472101;
      goto LABEL_165;
    }

    if (v22 > 1573906121)
    {
      if (v22 <= 2023824666)
      {
        if (v22 <= 1868379042)
        {
          if (v22 <= 1625227433)
          {
            if (v22 == 1573906122)
            {
              v23 = &unk_28133C000;
              v21 = 41;
              goto LABEL_226;
            }

            if (v22 == 1602181456)
            {
              v23 = &unk_28133C000;
              v21 = 53;
              goto LABEL_226;
            }

            goto LABEL_231;
          }

          if (v22 == 1625227434)
          {
            goto LABEL_191;
          }

          if (v22 == 1770142589)
          {
            v23 = &unk_28133C000;
            v21 = 62;
            goto LABEL_226;
          }

          v24 = 1834147427;
          goto LABEL_88;
        }

        if (v22 > 1895344377)
        {
          if (v22 == 1895344378)
          {
            v23 = &unk_28133C000;
            v21 = 28;
            goto LABEL_226;
          }

          if (v22 == 1990293942)
          {
            v23 = &unk_28133C000;
            v21 = 43;
            goto LABEL_226;
          }

          v25 = 2001966017;
LABEL_165:
          if (v22 != v25)
          {
            goto LABEL_231;
          }

          goto LABEL_189;
        }

        if (v22 != 1868379043)
        {
          if (v22 == 1878257790)
          {
            v23 = &unk_28133C000;
            v21 = 24;
            goto LABEL_226;
          }

          goto LABEL_231;
        }
      }

      else
      {
        if (v22 > 2089455187)
        {
          if (v22 > 2159747552)
          {
            if (v22 == 2159747553)
            {
              v23 = &unk_28133C000;
              v21 = 7;
              goto LABEL_226;
            }

            if (v22 != 2236272848)
            {
              if (v22 == 2309863438)
              {
                v23 = &unk_28133C000;
                v21 = 16;
                goto LABEL_226;
              }

              goto LABEL_231;
            }

            goto LABEL_159;
          }

          if (v22 == 2089455188)
          {
LABEL_139:
            v23 = &unk_28133C000;
            v21 = 38;
            goto LABEL_226;
          }

          if (v22 != 2103978418)
          {
            if (v22 == 2132302344)
            {
              v23 = &unk_28133C000;
              v21 = 47;
              goto LABEL_226;
            }

LABEL_231:
            v21 = 0;
            PlatformUtilities_iOS::GetProductType(void)::sType = 0;
            goto LABEL_227;
          }

LABEL_192:
          v23 = &unk_28133C000;
          v21 = 33;
          goto LABEL_226;
        }

        if (v22 > 2080700390)
        {
          switch(v22)
          {
            case 2080700391:
              v23 = &unk_28133C000;
              v21 = 17;
              goto LABEL_226;
            case 2084894489:
              v23 = &unk_28133C000;
              v21 = 63;
              goto LABEL_226;
            case 2085054105:
              v23 = &unk_28133C000;
              v21 = 57;
              goto LABEL_226;
          }

          goto LABEL_231;
        }

        if (v22 != 2023824667)
        {
          if (v22 == 2078329141)
          {
            v23 = &unk_28133C000;
            v21 = 10;
            goto LABEL_226;
          }

          goto LABEL_231;
        }
      }

LABEL_176:
      v23 = &unk_28133C000;
      v21 = 35;
      goto LABEL_226;
    }

    if (v22 > 1280441782)
    {
      if (v22 > 1353145732)
      {
        if (v22 > 1373516432)
        {
          if (v22 != 1373516433)
          {
            if (v22 == 1408738134)
            {
              v23 = &unk_28133C000;
              v21 = 49;
              goto LABEL_226;
            }

            if (v22 == 1540760353)
            {
              v23 = &unk_28133C000;
              v21 = 4;
              goto LABEL_226;
            }

            goto LABEL_231;
          }

          goto LABEL_176;
        }

        if (v22 != 1353145733)
        {
          if (v22 == 1371389549)
          {
            v23 = &unk_28133C000;
            v21 = 8;
            goto LABEL_226;
          }

          goto LABEL_231;
        }

LABEL_189:
        v23 = &unk_28133C000;
        v21 = 30;
        goto LABEL_226;
      }

      if (v22 > 1293446024)
      {
        if (v22 != 1293446025)
        {
          if (v22 == 1294429942)
          {
            v23 = &unk_28133C000;
            v21 = 46;
            goto LABEL_226;
          }

          if (v22 == 1309571158)
          {
            v23 = &unk_28133C000;
            v21 = 44;
            goto LABEL_226;
          }

          goto LABEL_231;
        }

        goto LABEL_192;
      }

      if (v22 != 1280441783)
      {
        if (v22 == 1280909812)
        {
          v23 = &unk_28133C000;
          v21 = 51;
          goto LABEL_226;
        }

        goto LABEL_231;
      }
    }

    else
    {
      if (v22 > 676119127)
      {
        if (v22 <= 746003605)
        {
          if (v22 == 676119128)
          {
            v23 = &unk_28133C000;
            v21 = 45;
            goto LABEL_226;
          }

          if (v22 == 689804742)
          {
            v23 = &unk_28133C000;
            v21 = 15;
            goto LABEL_226;
          }

          goto LABEL_231;
        }

        if (v22 != 746003606)
        {
          if (v22 == 1060988941)
          {
            v23 = &unk_28133C000;
            v21 = 5;
            goto LABEL_226;
          }

          if (v22 == 1169082144)
          {
            v23 = &unk_28133C000;
            v21 = 12;
            goto LABEL_226;
          }

          goto LABEL_231;
        }

        goto LABEL_135;
      }

      if (v22 <= 157833460)
      {
        if (v22 == 40511012)
        {
          v23 = &unk_28133C000;
          v21 = 39;
          goto LABEL_226;
        }

        if (v22 != 88647037)
        {
          goto LABEL_231;
        }

        goto LABEL_179;
      }

      if (v22 != 157833461)
      {
        if (v22 != 341800273)
        {
          if (v22 == 425046865)
          {
            v23 = &unk_28133C000;
            v21 = 56;
            goto LABEL_226;
          }

          goto LABEL_231;
        }

        goto LABEL_189;
      }
    }

    v23 = &unk_28133C000;
    v21 = 22;
    goto LABEL_226;
  }

  v21 = PlatformUtilities_iOS::GetProductType(void)::sType;
LABEL_227:
  if ((v2[148] & 1) == 0)
  {
    v2[148] = 1;
  }

  *(v2 + 36) = v21;
  return v2;
}

@end