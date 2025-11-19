@interface VKIconModifiers
- (VKIconModifiers)init;
- (VKIconModifiers)initWithModifiers:(const void *)a3;
- (id).cxx_construct;
- (id)initNavigationModifiers;
- (id)initSearchResultModifiers;
- (id)initTransitModifiers;
- (void)setFillColor:(id)a3;
- (void)setGlyphColor:(id)a3;
- (void)setHaloColor:(id)a3;
- (void)setInteractive:(BOOL)a3;
- (void)setText:(id)a3;
- (void)setTransitLineColor:(id)a3;
@end

@implementation VKIconModifiers

- (id).cxx_construct
{
  *(self + 1) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(self + 2) = _D0;
  *(self + 24) = 0;
  *(self + 16) = 0;
  *(self + 38) = 0;
  *(self + 43) = 0;
  *(self + 48) = 0;
  *(self + 53) = 0;
  *(self + 60) = 0;
  *(self + 68) = 0;
  *(self + 80) = 0;
  *(self + 15) = 0;
  *(self + 17) = 0;
  *(self + 14) = self + 120;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 27) = 0;
  *(self + 28) = 0;
  *(self + 29) = 0;
  *(self + 120) = 256;
  return self;
}

- (VKIconModifiers)init
{
  v38 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = VKIconModifiers;
  v2 = [(VKIconModifiers *)&v30 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  *&v31[0] = 0;
  memset(&v31[1], 0, 48);
  v34 = 0;
  memset(v36, 0, sizeof(v36));
  v32 = 0u;
  v33 = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  *(&v31[0] + 1) = _D1;
  BYTE14(v31[1]) = 0;
  BYTE4(v31[3]) = 0;
  v35 = v36;
  v37 = 0;
  *(v2 + 8) = v31[0];
  v9 = v2[24];
  if (LOBYTE(v31[1]) == 1)
  {
    *(v2 + 7) = DWORD1(v31[1]);
    if (!v9)
    {
      v2[24] = 1;
    }
  }

  else if (v2[24])
  {
    v2[24] = 0;
  }

  v2[32] = BYTE8(v31[1]);
  if (BYTE9(v31[1]) != 1)
  {
    if (!v2[33])
    {
      goto LABEL_17;
    }

    v11 = 0;
    goto LABEL_16;
  }

  if (!v2[33])
  {
    *(v2 + 34) = *(&v31[1] + 10);
    v11 = 1;
LABEL_16:
    v2[33] = v11;
    goto LABEL_17;
  }

  for (i = 0; i != 4; ++i)
  {
    v2[i + 34] = *(&v31[1] + i + 10);
  }

LABEL_17:
  if (BYTE14(v31[1]) != 1)
  {
    if (!v2[38])
    {
      goto LABEL_26;
    }

    v13 = 0;
    goto LABEL_25;
  }

  if (!v2[38])
  {
    *(v2 + 39) = *(&v31[1] + 15);
    v13 = 1;
LABEL_25:
    v2[38] = v13;
    goto LABEL_26;
  }

  for (j = 0; j != 4; ++j)
  {
    v2[j + 39] = *(&v31[1] + j + 15);
  }

LABEL_26:
  if (BYTE3(v31[2]) != 1)
  {
    if (!v2[43])
    {
      goto LABEL_35;
    }

    v15 = 0;
    goto LABEL_34;
  }

  if (!v2[43])
  {
    *(v2 + 11) = DWORD1(v31[2]);
    v15 = 1;
LABEL_34:
    v2[43] = v15;
    goto LABEL_35;
  }

  for (k = 0; k != 4; ++k)
  {
    v2[k + 44] = *(&v31[2] + k + 4);
  }

LABEL_35:
  if (BYTE8(v31[2]) != 1)
  {
    if (!v2[48])
    {
      goto LABEL_44;
    }

    v17 = 0;
    goto LABEL_43;
  }

  if (!v2[48])
  {
    *(v2 + 49) = *(&v31[2] + 9);
    v17 = 1;
LABEL_43:
    v2[48] = v17;
    goto LABEL_44;
  }

  for (m = 0; m != 4; ++m)
  {
    v2[m + 49] = *(&v31[2] + m + 9);
  }

LABEL_44:
  if (BYTE13(v31[2]) == 1)
  {
    if (v2[53])
    {
      for (n = 0; n != 4; ++n)
      {
        v2[n + 54] = *(&v31[2] + n + 14);
      }

      goto LABEL_53;
    }

    *(v2 + 54) = *(&v31[2] + 14);
    v19 = 1;
    goto LABEL_52;
  }

  if (v2[53])
  {
    v19 = 0;
LABEL_52:
    v2[53] = v19;
  }

LABEL_53:
  v20 = v2[60];
  if (BYTE4(v31[3]) == 1)
  {
    *(v2 + 16) = DWORD2(v31[3]);
    if (!v20)
    {
      v2[60] = 1;
    }
  }

  else if (v2[60])
  {
    v2[60] = 0;
  }

  v21 = v2[68];
  if (BYTE12(v31[3]) == 1)
  {
    *(v2 + 18) = v32;
    if (!v21)
    {
      v2[68] = 1;
    }
  }

  else if (v2[68])
  {
    v2[68] = 0;
  }

  if (BYTE8(v32) == 1)
  {
    if (v2[80])
    {
      if (v2[111] < 0)
      {
        operator delete(*(v2 + 11));
      }

      v22 = v33;
      *(v3 + 13) = v34;
      *(v3 + 88) = v22;
      HIBYTE(v34) = 0;
      LOBYTE(v33) = 0;
    }

    else
    {
      v23 = v34;
      *(v2 + 88) = v33;
      *(v2 + 13) = v23;
      v34 = 0;
      v33 = 0uLL;
      v2[80] = 1;
    }
  }

  else if (v2[80])
  {
    if (v2[111] < 0)
    {
      operator delete(*(v2 + 11));
    }

    v3[80] = 0;
  }

  v24 = v3 + 120;
  std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,std::string>,grl::zone_mallocator>>::destroy(*(v3 + 15));
  *(v3 + 14) = v35;
  v25 = *&v36[0];
  *(v3 + 15) = *&v36[0];
  v26 = *&v36[1];
  *(v3 + 17) = *&v36[1];
  if (v26)
  {
    *(v25 + 16) = v24;
    v35 = v36;
    *&v36[0] = 0;
    *&v36[1] = 0;
  }

  else
  {
    *(v3 + 14) = v24;
  }

  v27 = *(v3 + 18);
  if (v27)
  {
    *(v3 + 19) = v27;
    operator delete(v27);
    *(v3 + 18) = 0;
    *(v3 + 19) = 0;
    *(v3 + 20) = 0;
  }

  v28 = *(v3 + 21);
  *(v3 + 9) = *(&v36[1] + 8);
  *(v3 + 20) = *(&v36[2] + 1);
  memset(&v36[1] + 8, 0, 24);
  if (v28)
  {
    *(v3 + 22) = v28;
    operator delete(v28);
    *(v3 + 21) = 0;
    *(v3 + 22) = 0;
    *(v3 + 23) = 0;
  }

  *(v3 + 168) = v36[3];
  *(v3 + 23) = *&v36[4];
  memset(&v36[3], 0, 24);
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::operator=[abi:nn200100]((v3 + 192), &v36[4] + 8);
  grl::IconModifiers::~IconModifiers(v31);
  v31[0] = 0uLL;
  LOWORD(v31[1]) = 256;
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v3 + 224));
  *(v3 + 28) = 0;
  *(v3 + 29) = 0;
  v3[240] = 0;
  v3[241] = 1;
  v31[0] = 0uLL;
  LOWORD(v31[1]) = 256;
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v31);
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[]((v3 + 224), 0x10001u) = 0;
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[]((v3 + 224), 0x10000u) = 0;
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[]((v3 + 224), 0x10051u) = 0;
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[]((v3 + 224), 0x10045u) = 2;
  *(v3 + 31) = -1;
  *(v3 + 32) = 0;
  *(v3 + 33) = 0;
  *(v3 + 34) = 0xFFFFLL;
  return v3;
}

- (void)setTransitLineColor:(id)a3
{
  var1 = a3.var1;
  v4 = *&a3.var2;
  v5 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(a3, vdupq_n_s32(0x437F0000u))));
  v6 = vuzp1_s8(v5, v5).u32[0];
  grl::IconModifiers::setTransitLineColor(&self->_iconModifiers, &v6);
}

- (void)setHaloColor:(id)a3
{
  var1 = a3.var1;
  v4 = *&a3.var2;
  v5 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(a3, vdupq_n_s32(0x437F0000u))));
  v6 = vuzp1_s8(v5, v5).u32[0];
  grl::IconModifiers::setHaloColor(&self->_iconModifiers, &v6);
}

- (void)setGlyphColor:(id)a3
{
  var1 = a3.var1;
  v4 = *&a3.var2;
  v5 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(a3, vdupq_n_s32(0x437F0000u))));
  v6 = vuzp1_s8(v5, v5).u32[0];
  grl::IconModifiers::setGlyphColor(&self->_iconModifiers, &v6);
}

- (void)setFillColor:(id)a3
{
  var1 = a3.var1;
  v5 = *&a3.var2;
  v6 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(a3, vdupq_n_s32(0x437F0000u))));
  v7 = vuzp1_s8(v6, v6).u32[0];
  grl::IconModifiers::setFillColor(&self->_iconModifiers, &v7);
  grl::IconModifiers::setGradientBaseColor(&self->_iconModifiers, &v7);
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [v5 UTF8String];
    v7 = strlen(v6);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v7;
    if (v7)
    {
      memmove(&__dst, v6, v7);
    }

    __dst.__r_.__value_.__s.__data_[v8] = 0;
    grl::IconModifiers::setText(&self->_iconModifiers, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

- (void)setInteractive:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](&self->_queryOverrides, 0x10002u) = v3;
}

- (VKIconModifiers)initWithModifiers:(const void *)a3
{
  v4 = [(VKIconModifiers *)self init];
  v5 = v4;
  v6 = v4;
  if (v4)
  {
    *&v4->_iconModifiers._isClusterIcon = *a3;
    null_state = v4->_iconModifiers._pathScale.var0.__null_state_;
    if (*(a3 + 16) == 1)
    {
      *&v4->_iconModifiers._pathScale.__engaged_ = *(a3 + 5);
      if (!null_state)
      {
        v4->_iconModifiers._pathScale.var0.__null_state_ = 1;
      }
    }

    else if (v4->_iconModifiers._pathScale.var0.__null_state_)
    {
      v4->_iconModifiers._pathScale.var0.__null_state_ = 0;
    }

    v4->_iconModifiers._component = *(a3 + 24);
    if (*(a3 + 25) == 1)
    {
      if (*(&v4->_iconModifiers._component + 1))
      {
        for (i = 0; i != 4; ++i)
        {
          *(&v4->_iconModifiers._component + i + 2) = *(a3 + i + 26);
        }

LABEL_17:
        if (*(a3 + 30) == 1)
        {
          if (*(&v4->_iconModifiers._transitLineColor._hasValue + 2))
          {
            for (j = 0; j != 4; ++j)
            {
              *(&v4->_iconModifiers._transitLineColor._hasValue + j + 3) = *(a3 + j + 31);
            }

LABEL_26:
            if (*(a3 + 35) == 1)
            {
              if (v4->_iconModifiers._transitLineColor._value.data[3])
              {
                for (k = 0; k != 4; ++k)
                {
                  *(&v4->_iconModifiers._glyphColor._hasValue + k) = *(a3 + k + 36);
                }

LABEL_35:
                if (*(a3 + 40) == 1)
                {
                  if (v4->_iconModifiers._glyphColor._value.data[0])
                  {
                    for (m = 0; m != 4; ++m)
                    {
                      v4->_iconModifiers._glyphColor._value.data[m + 1] = *(a3 + m + 41);
                    }

LABEL_44:
                    if (*(a3 + 45) == 1)
                    {
                      if (*(&v4->_iconModifiers._gradientBaseColor._hasValue + 1))
                      {
                        for (n = 0; n != 4; ++n)
                        {
                          *(&v4->_iconModifiers._gradientBaseColor._hasValue + n + 2) = *(a3 + n + 46);
                        }

LABEL_53:
                        hasValue = v4->_iconModifiers._fillColor._hasValue;
                        if (*(a3 + 52) == 1)
                        {
                          v4->_iconModifiers._fillColor._value.type = *(a3 + 14);
                          if (!hasValue)
                          {
                            v4->_iconModifiers._fillColor._hasValue = 1;
                          }
                        }

                        else if (v4->_iconModifiers._fillColor._hasValue)
                        {
                          v4->_iconModifiers._fillColor._hasValue = 0;
                        }

                        v19 = v4->_iconModifiers._haloColor._hasValue;
                        if (*(a3 + 60) == 1)
                        {
                          v4->_iconModifiers._haloColor._value.type = *(a3 + 16);
                          if (!v19)
                          {
                            v4->_iconModifiers._haloColor._hasValue = 1;
                          }
                        }

                        else if (v4->_iconModifiers._haloColor._hasValue)
                        {
                          v4->_iconModifiers._haloColor._hasValue = 0;
                        }

                        if (*(a3 + 72) == 1)
                        {
                          if (v4->_iconModifiers._fontSize.__engaged_)
                          {
                            std::string::operator=(&v4->_iconModifiers._tailDirection.__engaged_, (a3 + 80));
                          }

                          else
                          {
                            if (*(a3 + 103) < 0)
                            {
                              std::string::__init_copy_ctor_external(&v4->_iconModifiers._tailDirection.__engaged_, *(a3 + 10), *(a3 + 11));
                            }

                            else
                            {
                              v20 = *(a3 + 5);
                              v4->_iconModifiers._textLocale.var0 = *(a3 + 12);
                              *&v4->_iconModifiers._tailDirection.__engaged_ = v20;
                            }

                            v6->_iconModifiers._fontSize.__engaged_ = 1;
                          }
                        }

                        else if (v4->_iconModifiers._fontSize.__engaged_)
                        {
                          if (SHIBYTE(v4->_iconModifiers._textLocale.var0) < 0)
                          {
                            operator delete(*&v4->_iconModifiers._tailDirection.__engaged_);
                          }

                          v6->_iconModifiers._fontSize.__engaged_ = 0;
                        }

                        if (&v5->_iconModifiers == a3)
                        {
LABEL_123:
                          std::function<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::operator=(&v5->_anon_70[80], a3 + 184);
                          v6->_zoom = -1;
                          v6->_variant = 0;
                          v6->_secondaryVariant = 0;
                          v6->_countryCode = 0xFFFFLL;
                          return v6;
                        }

                        v21 = *(a3 + 13);
                        v22 = a3 + 112;
                        if (*&v6->_anon_70[24])
                        {
                          v24 = &v6->_anon_70[8];
                          v23 = *&v6->_anon_70[8];
                          v25 = *v6->_anon_70;
                          *v6->_anon_70 = &v6->_anon_70[8];
                          *(v23 + 16) = 0;
                          *&v6->_anon_70[8] = 0;
                          *&v6->_anon_70[24] = 0;
                          if (*(v25 + 8))
                          {
                            v26 = *(v25 + 8);
                          }

                          else
                          {
                            v26 = v25;
                          }

                          if (v26)
                          {
                            v27 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v26);
                            if (v21 == v22)
                            {
                              v29 = v26;
                            }

                            else
                            {
                              v28 = v21;
                              do
                              {
                                v29 = v27;
                                *(v26 + 32) = *(v28 + 16);
                                std::string::operator=((v26 + 40), (v28 + 40));
                                v30 = *v24;
                                v31 = &v6->_anon_70[8];
                                v32 = &v6->_anon_70[8];
                                if (*v24)
                                {
                                  do
                                  {
                                    while (1)
                                    {
                                      v31 = v30;
                                      if (*(v26 + 32) >= *(v30 + 16))
                                      {
                                        break;
                                      }

                                      v30 = *v30;
                                      v32 = v31;
                                      if (!*v31)
                                      {
                                        goto LABEL_90;
                                      }
                                    }

                                    v30 = v30[1];
                                  }

                                  while (v30);
                                  v32 = v31 + 1;
                                }

LABEL_90:
                                std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(v5->_anon_70, v31, v32, v26);
                                if (v27)
                                {
                                  v27 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v27);
                                }

                                else
                                {
                                  v27 = 0;
                                }

                                v33 = *(v28 + 1);
                                if (v33)
                                {
                                  do
                                  {
                                    v21 = v33;
                                    v33 = *v33;
                                  }

                                  while (v33);
                                }

                                else
                                {
                                  do
                                  {
                                    v21 = *(v28 + 2);
                                    v34 = *v21 == v28;
                                    v28 = v21;
                                  }

                                  while (!v34);
                                }

                                if (!v29)
                                {
                                  break;
                                }

                                v26 = v29;
                                v28 = v21;
                              }

                              while (v21 != v22);
                            }

                            std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,std::string>,grl::zone_mallocator>>::destroy(v29);
                            if (!v27)
                            {
                              goto LABEL_108;
                            }

                            for (ii = *(v27 + 2); ii; ii = *(ii + 2))
                            {
                              v27 = ii;
                            }

                            v35 = v27;
                          }

                          else
                          {
                            v35 = 0;
                          }

                          std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,std::string>,grl::zone_mallocator>>::destroy(v35);
                        }

LABEL_108:
                        if (v21 != v22)
                        {
                          v37 = &v5->_anon_70[8];
                          do
                          {
                            std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,std::string>,grl::zone_mallocator>>::__construct_node<std::pair<unsigned short const,std::string> const&>(&v44, v5->_anon_70, (v21 + 32));
                            v38 = *v37;
                            v39 = &v5->_anon_70[8];
                            v40 = &v5->_anon_70[8];
                            if (*v37)
                            {
                              do
                              {
                                while (1)
                                {
                                  v39 = v38;
                                  if (*(v44 + 16) >= *(v38 + 16))
                                  {
                                    break;
                                  }

                                  v38 = *v38;
                                  v40 = v39;
                                  if (!*v39)
                                  {
                                    goto LABEL_116;
                                  }
                                }

                                v38 = v38[1];
                              }

                              while (v38);
                              v40 = v39 + 1;
                            }

LABEL_116:
                            std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(v5->_anon_70, v39, v40, v44);
                            v41 = *(v21 + 1);
                            if (v41)
                            {
                              do
                              {
                                v42 = v41;
                                v41 = *v41;
                              }

                              while (v41);
                            }

                            else
                            {
                              do
                              {
                                v42 = *(v21 + 2);
                                v34 = *v42 == v21;
                                v21 = v42;
                              }

                              while (!v34);
                            }

                            v21 = v42;
                          }

                          while (v42 != v22);
                        }

                        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(&v5->_anon_70[32], *(a3 + 17), *(a3 + 18), (*(a3 + 18) - *(a3 + 17)) >> 2);
                        std::vector<geo::Color<unsigned char,4,(geo::ColorSpace)2>>::__assign_with_size[abi:nn200100]<geo::Color<unsigned char,4,(geo::ColorSpace)2>*,geo::Color<unsigned char,4,(geo::ColorSpace)2>*>(&v5->_anon_70[56], *(a3 + 20), *(a3 + 21), (*(a3 + 21) - *(a3 + 20)) >> 2);
                        goto LABEL_123;
                      }

                      *(&v4->_iconModifiers._gradientBaseColor._hasValue + 2) = *(a3 + 46);
                      v17 = 1;
                    }

                    else
                    {
                      if (!*(&v4->_iconModifiers._gradientBaseColor._hasValue + 1))
                      {
                        goto LABEL_53;
                      }

                      v17 = 0;
                    }

                    *(&v4->_iconModifiers._gradientBaseColor._hasValue + 1) = v17;
                    goto LABEL_53;
                  }

                  *(&v4->_iconModifiers._glyphColor._value + 1) = *(a3 + 41);
                  v15 = 1;
                }

                else
                {
                  if (!v4->_iconModifiers._glyphColor._value.data[0])
                  {
                    goto LABEL_44;
                  }

                  v15 = 0;
                }

                v4->_iconModifiers._glyphColor._value.data[0] = v15;
                goto LABEL_44;
              }

              *&v4->_iconModifiers._glyphColor._hasValue = *(a3 + 9);
              v13 = 1;
            }

            else
            {
              if (!v4->_iconModifiers._transitLineColor._value.data[3])
              {
                goto LABEL_35;
              }

              v13 = 0;
            }

            v4->_iconModifiers._transitLineColor._value.data[3] = v13;
            goto LABEL_35;
          }

          *(&v4->_iconModifiers._transitLineColor._hasValue + 3) = *(a3 + 31);
          v11 = 1;
        }

        else
        {
          if (!*(&v4->_iconModifiers._transitLineColor._hasValue + 2))
          {
            goto LABEL_26;
          }

          v11 = 0;
        }

        *(&v4->_iconModifiers._transitLineColor._hasValue + 2) = v11;
        goto LABEL_26;
      }

      *(&v4->_iconModifiers._component + 2) = *(a3 + 26);
      v9 = 1;
    }

    else
    {
      if (!*(&v4->_iconModifiers._component + 1))
      {
        goto LABEL_17;
      }

      v9 = 0;
    }

    *(&v4->_iconModifiers._component + 1) = v9;
    goto LABEL_17;
  }

  return v6;
}

- (id)initNavigationModifiers
{
  v2 = [(VKIconModifiers *)self init];
  v3 = v2;
  if (v2)
  {
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](&v2->_queryOverrides, 0x10000u) = 3;
  }

  return v3;
}

- (id)initSearchResultModifiers
{
  v2 = [(VKIconModifiers *)self init];
  if (v2)
  {
    v4 = 0x2010100000000;
    gss::DisplayStyle::applyDisplayStyle(&v4, &v2->_queryOverrides);
  }

  return v2;
}

- (id)initTransitModifiers
{
  v2 = [(VKIconModifiers *)self init];
  if (v2)
  {
    v4 = 0x10000000200;
    gss::DisplayStyle::applyDisplayStyle(&v4, &v2->_queryOverrides);
  }

  return v2;
}

@end