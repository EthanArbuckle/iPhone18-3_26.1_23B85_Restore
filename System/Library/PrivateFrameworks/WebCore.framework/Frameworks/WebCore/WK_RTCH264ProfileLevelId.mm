@interface WK_RTCH264ProfileLevelId
- (WK_RTCH264ProfileLevelId)initWithHexString:(id)a3;
- (WK_RTCH264ProfileLevelId)initWithProfile:(unint64_t)a3 level:(unint64_t)a4;
@end

@implementation WK_RTCH264ProfileLevelId

- (WK_RTCH264ProfileLevelId)initWithHexString:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WK_RTCH264ProfileLevelId;
  v5 = [(WK_RTCH264ProfileLevelId *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(WK_RTCH264ProfileLevelId *)v5 setHexString:v4];
    v7 = [v4 cStringUsingEncoding:4];
    v9 = webrtc::ParseH264ProfileLevelId(v7, v8);
    if (v10)
    {
      v11 = v9;
      [(WK_RTCH264ProfileLevelId *)v6 setProfile:v9];
      [(WK_RTCH264ProfileLevelId *)v6 setLevel:v11 >> 32];
    }
  }

  return v6;
}

- (WK_RTCH264ProfileLevelId)initWithProfile:(unint64_t)a3 level:(unint64_t)a4
{
  v16.receiver = self;
  v16.super_class = WK_RTCH264ProfileLevelId;
  v6 = [(WK_RTCH264ProfileLevelId *)&v16 init];
  v7 = v6;
  if (v6)
  {
    [(WK_RTCH264ProfileLevelId *)v6 setProfile:a3];
    [(WK_RTCH264ProfileLevelId *)v7 setLevel:a4];
    __p.__r_.__value_.__r.__words[0] = __PAIR64__(a4, a3);
    webrtc::H264ProfileLevelIdToString(&__p, &v14);
    v8 = MEMORY[0x277CCACA8];
    if (v15 == 1)
    {
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        v9 = MEMORY[0x277CCACA8];
        std::string::__init_copy_ctor_external(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
        v8 = v9;
      }

      else
      {
        __p = v14;
      }
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v11 = [v8 stringWithCString:p_p encoding:{4, *&__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[2]}];
    [(WK_RTCH264ProfileLevelId *)v7 setHexString:v11];

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v15 == 1 && SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  return v7;
}

@end