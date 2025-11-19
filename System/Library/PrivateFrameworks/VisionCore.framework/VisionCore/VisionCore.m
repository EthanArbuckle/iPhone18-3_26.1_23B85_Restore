double VisionCoreBoundingBoxForQuadrilateralPoints(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a7 >= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = a7;
  }

  if (a1 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a1;
  }

  if (v8 >= v7)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

double VisionCoreQuadrilateralGetBoundingBox(void *a1)
{
  v1 = a1;
  [v1 topLeft];
  v3 = v2;
  v5 = v4;
  [v1 topRight];
  v7 = v6;
  v9 = v8;
  [v1 bottomRight];
  v11 = v10;
  v13 = v12;
  [v1 bottomLeft];
  v15 = v14;

  return VisionCoreBoundingBoxForQuadrilateralPoints(v3, v5, v7, v9, v11, v13, v15);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E86985E8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::vector<unsigned long>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

__CFString *NSStringFromVisionCoreTensorDataType(uint64_t a1)
{
  if (a1 <= 131103)
  {
    if (a1 <= 65567)
    {
      if (!a1)
      {
        v1 = @"VisionCoreTensorDataTypeUnknown";
        goto LABEL_27;
      }

      if (a1 == 65552)
      {
        v1 = @"VisionCoreTensorDataTypeFloat16";
        goto LABEL_27;
      }
    }

    else
    {
      switch(a1)
      {
        case 65568:
          v1 = @"VisionCoreTensorDataTypeFloat32";
          goto LABEL_27;
        case 65600:
          v1 = @"VisionCoreTensorDataTypeFloat64";
          goto LABEL_27;
        case 131080:
          v1 = @"VisionCoreTensorDataTypeInt8";
          goto LABEL_27;
      }
    }
  }

  else if (a1 > 983047)
  {
    switch(a1)
    {
      case 983048:
        v1 = @"VisionCoreTensorDataTypePlanar8Image";
        goto LABEL_27;
      case 983056:
        v1 = @"VisionCoreTensorDataTypePlanar16HalfImage";
        goto LABEL_27;
      case 983072:
        v1 = @"VisionCoreTensorDataTypePlanarFloat32Image";
        goto LABEL_27;
    }
  }

  else
  {
    switch(a1)
    {
      case 131104:
        v1 = @"VisionCoreTensorDataTypeInt32";
        goto LABEL_27;
      case 196616:
        v1 = @"VisionCoreTensorDataTypeUInt8";
        goto LABEL_27;
      case 196640:
        v1 = @"VisionCoreTensorDataTypeUInt32";
        goto LABEL_27;
    }
  }

  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"VisionCoreTensorDataType_(%lX)", a1];
LABEL_27:

  return v1;
}

uint64_t VisionCoreHasANE()
{
  if (VisionCoreHasANE::once_token != -1)
  {
    dispatch_once(&VisionCoreHasANE::once_token, &__block_literal_global_152);
  }

  return VisionCoreHasANE::hasANESupport;
}

uint64_t __VisionCoreHasANE_block_invoke()
{
  result = MGIsQuestionValid();
  if (result)
  {
    result = MGGetBoolAnswer();
    VisionCoreHasANE::hasANESupport = result;
  }

  return result;
}

uint64_t VisionCoreANESubtype()
{
  if (VisionCoreANESubtype::once_token != -1)
  {
    dispatch_once(&VisionCoreANESubtype::once_token, &__block_literal_global_3);
  }

  return VisionCoreANESubtype::aneSubtype;
}

uint64_t __VisionCoreANESubtype_block_invoke()
{
  result = MGGetSInt64Answer();
  VisionCoreANESubtype::aneSubtype = result;
  return result;
}

void Geometry2D_mallocCart2D(void *a1, int a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 >= 1)
  {
    v4 = 4 * a2;
    v5 = malloc_type_malloc(v4, 0x100004052888210uLL);
    *a1 = v5;
    if (v5 && (v6 = malloc_type_malloc(v4, 0x100004052888210uLL), (a1[1] = v6) != 0))
    {
      *(a1 + 4) = a2;
    }

    else
    {
      free(v5);
      *a1 = 0;
      a1[1] = 0;
      *(a1 + 4) = 0;
    }
  }
}

void Geometry2D_freeCart2D(uint64_t a1)
{
  if (a1)
  {
    free(*a1);
    *a1 = 0;
    free(*(a1 + 8));
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t Geometry2D_copyCart2D(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 1917;
  }

  v4 = *a1;
  if (!*a1 || !*(a1 + 8))
  {
    return 1917;
  }

  result = 1917;
  if (a2)
  {
    v6 = *(a1 + 16);
    if (v6 >= 1)
    {
      if (*a2)
      {
        if (*(a2 + 8))
        {
          v7 = *(a2 + 16);
          if (v7 >= 1)
          {
            if (v6 != v7)
            {
              return 1916;
            }

            memcpy(*a2, v4, 4 * v6);
            memcpy(*(a2 + 8), *(a1 + 8), 4 * *(a2 + 16));
            return 1920;
          }
        }
      }

      return 1917;
    }
  }

  return result;
}

void Geometry2D_cloneUsingFlagCart2D(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = *(a2 + 16);
  if (v6 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = a3;
    do
    {
      v9 = *v8++;
      v7 += v9;
      --v6;
    }

    while (v6);
  }

  Geometry2D_mallocCart2D(a1, v7);
  v10 = *a1;
  v11 = a1[1];
  if (*a1)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && *(a1 + 4) >= 1)
  {
    v14 = *(a2 + 16);
    if (v14 >= 1)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        if (a3[v15] == 1)
        {
          v17 = *(a2 + 8);
          *(v10 + 4 * v16) = *(*a2 + 4 * v15);
          *(v11 + 4 * v16++) = *(v17 + 4 * v15);
        }

        ++v15;
      }

      while (v14 != v15);
    }
  }
}

void sub_1DECDE9D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void VisionCoreHomography::VisionCoreHomography(VisionCoreHomography *this)
{
  this->var0.var0 = 0;
  this->var0.var1 = 0;
  this->var0.var2 = 0;
  this->var1.var0 = 0;
  this->var1.var1 = 0;
  this->var2.var0 = 0;
  this->var1.var2 = 0;
  this->var2.var1 = 0;
  this->var2.var2 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>();
}

void sub_1DECDEB5C(_Unwind_Exception *exception_object)
{
  if (*v3)
  {
    operator delete(*v3);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *VisionCoreHomography::copyHomography(VisionCoreHomography *this, const VisionCoreHomography *a2, VisionCoreHomography *a3)
{
  Geometry2D_mallocCart2D(&v11, this->var0.var2);
  a2->var0 = v11;
  Geometry2D_mallocCart2D(&v11, this->var1.var2);
  a2->var1 = v11;
  Geometry2D_copyCart2D(this, a2);
  result = Geometry2D_copyCart2D(&this->var1, &a2->var1);
  if (a2 != this)
  {
    var1 = this->var3.var1;
    if (var1)
    {
      if (var1 > a2->var3.var2 << 6)
      {
        var0 = a2->var3.var0;
        if (var0)
        {
          operator delete(var0);
          a2->var3.var0 = 0;
          a2->var3.var1 = 0;
          a2->var3.var2 = 0;
          var1 = this->var3.var1;
        }

        std::vector<BOOL>::__vallocate[abi:ne200100](&a2->var3, var1);
      }

      memmove(a2->var3.var0, this->var3.var0, (((var1 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v8 = this->var3.var1;
    }

    else
    {
      v8 = 0;
    }

    a2->var3.var1 = v8;
    v9 = this->var2.var0;
    v10 = this->var2.var1;

    return std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&a2->var2.var0, v9, v10, v10 - v9);
  }

  return result;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void VisionCoreHomography::VisionCoreHomography(VisionCoreHomography *this, const VisionCoreHomography *a2)
{
  this->var0.var0 = 0;
  this->var0.var1 = 0;
  this->var0.var2 = 0;
  this->var1.var0 = 0;
  this->var1.var1 = 0;
  this->var2.var0 = 0;
  this->var1.var2 = 0;
  this->var2.var1 = 0;
  this->var2.var2 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>();
}

void sub_1DECDEF20(_Unwind_Exception *exception_object)
{
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 104) = v6;
    operator delete(v6);
  }

  if (*v4)
  {
    operator delete(*v4);
  }

  v7 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VisionCoreHomography::operator=(uint64_t a1, __int128 *a2)
{
  v5 = (a1 + 48);
  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v6 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v6;
  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v7;
  free(*a2);
  *a2 = 0;
  free(*(a2 + 1));
  *(a2 + 1) = 0;
  *(a2 + 4) = 0;
  free(*(a2 + 3));
  *(a2 + 3) = 0;
  free(*(a2 + 4));
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 4) = 0;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 10) = 0;
  return a1;
}

void VisionCoreHomography::~VisionCoreHomography(VisionCoreHomography *this)
{
  Geometry2D_freeCart2D(this);
  free(this->var1.var0);
  this->var1.var0 = 0;
  free(this->var1.var1);
  this->var1.var1 = 0;
  this->var1.var2 = 0;
  var0 = this->var4.var0;
  if (var0)
  {
    this->var4.var1 = var0;
    operator delete(var0);
  }

  v3 = this->var3.var0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = this->var2.var0;
  if (v4)
  {
    this->var2.var1 = v4;
    operator delete(v4);
  }
}

uint64_t VisionCoreHomography::CalculateReprojectionError(VisionCoreHomography *this, uint64_t a2)
{
  v3 = *(a2 + 16);
  this->var0.var1 = 0;
  *&this->var0.var2 = 0;
  this->var0.var0 = 0;
  if (v3)
  {
    std::vector<float>::__vallocate[abi:ne200100](this, v3);
  }

  v4 = *(a2 + 48);

  return Geometry2D_symmetricReprojectionErrorHomography(a2, v4, (a2 + 24), 0);
}

void sub_1DECDF134(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1DECDF28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void sub_1DECDF740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  a13[1] = v14;
  a13[2] = v15;
  *a13 = v13;
  if (v13)
  {
    a13[1] = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<half>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x1E12C7F30](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1DECDFE8C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1E12C7FA0](v1);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,Espresso::layer_shape>,std::__map_value_compare<std::string,std::__value_type<std::string,Espresso::layer_shape>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,Espresso::layer_shape>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,Espresso::layer_shape>,std::__map_value_compare<std::string,std::__value_type<std::string,Espresso::layer_shape>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,Espresso::layer_shape>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,Espresso::layer_shape>,std::__map_value_compare<std::string,std::__value_type<std::string,Espresso::layer_shape>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,Espresso::layer_shape>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 12);
    if (v2)
    {
      *(a1 + 13) = v2;
      operator delete(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,Espresso::layer_shape>,std::__map_value_compare<std::string,std::__value_type<std::string,Espresso::layer_shape>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,Espresso::layer_shape>>>::find<std::string>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x1E69E54C8];
  v2 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x1E12C7F40](a1 + 2);

  return std::istream::~istream();
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E86985F0, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void sub_1DECE139C(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

id _dictionaryOfTensorDescriptors(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v2];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          v9 = [v8 name];
          [v3 setValue:v8 forKey:v9];
        }

        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  return v3;
}

void sub_1DECE1C18(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id _obtainDescriptors(objc_class *a1, objc_selector *a2, ...)
{
  va_start(va, a2);
  v42[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  va_copy(v40, va);
  if (a2)
  {
    while (1)
    {
      ClassMethod = class_getClassMethod(a1, a2);
      if (!ClassMethod)
      {
        break;
      }

      Implementation = method_getImplementation(ClassMethod);
      if (!Implementation)
      {
        v10 = NSStringFromClass(a1);
        v11 = NSStringFromSelector(a2);
        VisionCoreValidatedLog(4, @"Could not resolve implementation for +[%@ %@]", v18, v19, v20, v21, v22, v23, v10);
        goto LABEL_8;
      }

      v41 = 0;
      v7 = (Implementation)(a1, a2, &v41);
      v8 = v41;
      v9 = v8;
      if (!v7)
      {
        v25 = NSStringFromClass(a1);
        v26 = NSStringFromSelector(a2);
        v39 = [v9 localizedDescription];
        VisionCoreValidatedLog(4, @"+[%@ %@] did not provide a descriptor: %@", v27, v28, v29, v30, v31, v32, v25);

        goto LABEL_9;
      }

      [v4 addObject:v7];
LABEL_10:
      v24 = va_arg(v40, objc_selector *);
      a2 = v24;

      if (!v24)
      {
        goto LABEL_13;
      }
    }

    v10 = NSStringFromClass(a1);
    v11 = NSStringFromSelector(a2);
    VisionCoreValidatedLog(4, @"+[%@ %@] does not exist", v12, v13, v14, v15, v16, v17, v10);
LABEL_8:

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

LABEL_13:
  v33 = objc_alloc(MEMORY[0x1E696AEB0]);
  v34 = +[VisionCoreResourceVersion newerFirstComparator];
  v35 = [v33 initWithKey:@"version" ascending:1 comparator:v34];

  v42[0] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  [v4 sortUsingDescriptors:v36];

  v37 = [v4 copy];

  return v37;
}

void sub_1DECE2404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_1DECE26D4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DECE2868(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1DECE2E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::locale a25, uint64_t a26)
{
  __cxa_end_catch();
  std::ifstream::~ifstream(&a26);
  MEMORY[0x1E12C7FA0](&STACK[0x218]);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id _noBlobInNetworkModelError(NSURL *a1, NSString *a2)
{
  v3 = a2;
  v4 = [(NSURL *)a1 lastPathComponent];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ does not contain the blob %@", v4, v3];
  v6 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v5];

  return v6;
}

void sub_1DECE4108(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DECE47B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a31);
  MEMORY[0x1E12C7FA0](&STACK[0x228]);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (!v33)
    {
      JUMPOUT(0x1DECE474CLL);
    }

    JUMPOUT(0x1DECE4704);
  }

  _Unwind_Resume(a1);
}

uint64_t VisionCoreEspressoStorageTypeForTensorDataType(uint64_t a1)
{
  if (a1 <= 131079)
  {
    v1 = 65552;
    if (a1 == 65552)
    {
      return v1;
    }

    if (a1 == 65568)
    {
      return 65568;
    }

    return 0;
  }

  if (a1 == 131080)
  {
    return 131080;
  }

  if (a1 == 131104)
  {
    return 131104;
  }

  if (a1 != 196616)
  {
    return 0;
  }

  return 262152;
}

void sub_1DECE54A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1DECE53ACLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DECE58C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id _repeatedCharacterString(unsigned int a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = vdupq_n_s16(a1);
  LOWORD(v12) = a1;
  WORD1(v12) = a1;
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharactersNoCopy:&v11 length:10 freeWhenDone:0];
  v4 = [v3 length];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  for (i = v5; ; v5 = i)
  {
    v7 = [v5 length];
    if (v7 >= a2)
    {
      break;
    }

    if (a2 - v7 >= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = a2 - v7;
    }

    v9 = [v3 substringToIndex:v8];
    [i appendString:v9];
  }

  return i;
}

void *__getANSTObjectCategoryHandSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ANSTKitLibrary();
  result = dlsym(v2, "ANSTObjectCategoryHand");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getANSTObjectCategoryHandSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ANSTKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ANSTKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ANSTKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8698708;
    v5 = 0;
    ANSTKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = ANSTKitLibraryCore_frameworkLibrary;
    if (ANSTKitLibraryCore_frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return ANSTKitLibraryCore_frameworkLibrary;
}

void *__getANSTObjectCategoryFullBodySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ANSTKitLibrary();
  result = dlsym(v2, "ANSTObjectCategoryFullBody");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getANSTObjectCategoryFullBodySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ANSTKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ANSTKitLibraryCore_frameworkLibrary = result;
  return result;
}

id getANSTISPInferenceDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getANSTISPInferenceDescriptorClass_softClass;
  v7 = getANSTISPInferenceDescriptorClass_softClass;
  if (!getANSTISPInferenceDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getANSTISPInferenceDescriptorClass_block_invoke;
    v3[3] = &unk_1E8698AE0;
    v3[4] = &v4;
    __getANSTISPInferenceDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DECE71F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getANSTISPInferenceDescriptorClass_block_invoke(uint64_t a1)
{
  ANSTKitLibrary();
  result = objc_getClass("ANSTISPInferenceDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANSTISPInferenceDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(VisionCoreISPInferenceNetworkDescriptor *)v3 descriptorForIdentifier:v4 version:v5 error:v6, v7];
  }

  return result;
}

void sub_1DECE744C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getANSTISPInferenceConfigurationClass_block_invoke(uint64_t a1)
{
  ANSTKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ANSTISPInferenceConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANSTISPInferenceConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    [(VisionCoreE5RTModelSource *)v2 .cxx_destruct];
  }
}

uint64_t Geometry2D_computeAdjointAndDeterminant(float *a1, float *a2, float *a3)
{
  if (!a3)
  {
    return 1917;
  }

  v3 = (a1[4] * a1[8]) - (a1[5] * a1[7]);
  *a2 = v3;
  a2[1] = (a1[2] * a1[7]) - (a1[1] * a1[8]);
  a2[2] = (a1[1] * a1[5]) - (a1[2] * a1[4]);
  v4 = (a1[5] * a1[6]) - (a1[3] * a1[8]);
  a2[3] = v4;
  a2[4] = (*a1 * a1[8]) - (a1[2] * a1[6]);
  a2[5] = (a1[2] * a1[3]) - (*a1 * a1[5]);
  v5 = (a1[3] * a1[7]) - (a1[6] * a1[4]);
  a2[6] = v5;
  a2[7] = (a1[1] * a1[6]) - (*a1 * a1[7]);
  a2[8] = (*a1 * a1[4]) - (a1[1] * a1[3]);
  *a3 = ((*a1 * v3) - (a1[1] * v4)) - (a1[2] * v5);
  return 1920;
}

uint64_t Geometry2D_estimateHomography(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v4 = 1917;
  if (!a3)
  {
    goto LABEL_20;
  }

  v6 = 0;
  if (!a1)
  {
    goto LABEL_21;
  }

  if (!*a1 || !*(a1 + 8))
  {
    goto LABEL_19;
  }

  v3 = 0;
  v4 = 1917;
  if (!a2)
  {
LABEL_20:
    v6 = 0;
    goto LABEL_21;
  }

  v8 = *(a1 + 16);
  v6 = 0;
  if (v8 < 1)
  {
    goto LABEL_21;
  }

  if (!*a2 || !*(a2 + 8) || (v9 = *(a2 + 16), v9 < 1))
  {
LABEL_19:
    v3 = 0;
    v6 = 0;
    v4 = 1917;
    goto LABEL_21;
  }

  v3 = 0;
  v4 = 1916;
  if (v8 < 4)
  {
    goto LABEL_20;
  }

  v6 = 0;
  if (v8 != v9)
  {
    goto LABEL_21;
  }

  v3 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  if (!v3)
  {
    v6 = 0;
LABEL_23:
    v4 = 1915;
    goto LABEL_21;
  }

  v11 = Geometry2D_estimateWorkBufferSize();
  if ((v11 & 0x80000000) != 0)
  {
    v6 = 0;
    v4 = 1903;
    goto LABEL_21;
  }

  v12 = v11;
  v6 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
  if (!v6)
  {
    goto LABEL_23;
  }

  __C = 0;
  v18 = 0.0;
  v19 = 1.0;
  v16 = 1.0;
  v17 = 0.0;
  Geometry2D_mallocCart2D(&v24, *(a1 + 16));
  Geometry2D_mallocCart2D(&v21, *(a2 + 16));
  v4 = Geometry2D_normalizePoints(a1, v3, &v24, &__C + 1, &__C, &v19);
  if ((v4 & 0x80) != 0)
  {
    v4 = Geometry2D_normalizePoints(a2, v3, &v21, &v18, &v17, &v16);
    if ((v4 & 0x80) != 0)
    {
      if (*(a1 + 16) == 4)
      {
        v13 = Geometry2D_estimateHomographyMSS(&v24, &v21, v6, v12, v27);
      }

      else
      {
        v13 = Geometry2D_estimateHomographyOD(&v24, &v21, v6, v12, v27);
      }

      v4 = v13;
      if ((v13 & 0x80) != 0)
      {
        v14.f32[0] = v18;
        Geometry2D_denormalizeHomography(v27, a3, *(&__C + 1), *&__C, v19, v14, v17, v16);
      }
    }
  }

LABEL_21:
  free(v24);
  v24 = 0;
  free(v25);
  v25 = 0;
  LODWORD(v26) = 0;
  free(v21);
  v21 = 0;
  free(v22);
  free(v3);
  free(v6);
  return v4;
}

uint64_t Geometry2D_estimateHomographyMSS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1 || !*a1 || !*(a1 + 8))
  {
    return 1917;
  }

  v6 = *(a1 + 16);
  if (v6 < 1 || a2 == 0)
  {
    return 1917;
  }

  if (!*a2)
  {
    return 1917;
  }

  if (!*(a2 + 8))
  {
    return 1917;
  }

  v8 = *(a2 + 16);
  if (v8 < 1)
  {
    return 1917;
  }

  result = 1916;
  if (v6 == 4 && v8 == 4)
  {
    if (a5)
    {
      Geometry2D_assembleMeasurementMatrix(a1, a2, v11);
      sgelqf_NEWLAPACK();
      *a5 = 0u;
      *(a5 + 16) = 0u;
      *(a5 + 32) = 1065353216;
      sormlq_NEWLAPACK();
      return 1920;
    }

    return 1917;
  }

  return result;
}

uint64_t Geometry2D_estimateHomographyOD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[41] = *MEMORY[0x1E69E9840];
  if (!a1 || !*a1 || !*(a1 + 8))
  {
    goto LABEL_15;
  }

  v7 = *(a1 + 16);
  if (v7 < 1 || a2 == 0)
  {
    goto LABEL_15;
  }

  if (!*a2)
  {
    goto LABEL_15;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_15;
  }

  v9 = *(a2 + 16);
  if (v9 < 1)
  {
    goto LABEL_15;
  }

  if (v7 != v9)
  {
    v11 = 0;
    v15 = 1916;
    goto LABEL_16;
  }

  if (a5)
  {
    v11 = malloc_type_malloc(72 * v7, 0x100004052888210uLL);
    if (v11)
    {
      Geometry2D_assembleMeasurementMatrix(a1, a2, v11);
      sgesvd_NEWLAPACK();
      v13 = 0;
      v14 = v17;
      v15 = 1920;
      do
      {
        v16 = *v14;
        v14 += 9;
        *(a5 + v13) = v16;
        v13 += 4;
      }

      while (v13 != 36);
    }

    else
    {
      v15 = 1915;
    }
  }

  else
  {
LABEL_15:
    v11 = 0;
    v15 = 1917;
  }

LABEL_16:
  free(v11);
  return v15;
}

float32x2_t Geometry2D_denormalizeHomography(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float32x2_t a6, float32_t a7, float a8)
{
  if (!a1)
  {
    __assert_rtn("Geometry2D_denormalizeHomography", "Geometry2D_Homography.c", 320, "HNormalized != NULL");
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v9;
  *(a2 + 32) = v8;
  *&v9 = *(a2 + 8) * a5;
  *(a2 + 8) = v9;
  v10 = *(a2 + 20) * a5;
  *(a2 + 20) = v10;
  v11 = *(a2 + 32) - ((v10 * a4) + (a3 * *&v9));
  *(a2 + 32) = v11;
  v12 = 1.0 / a8;
  v13 = vmul_n_f32(*a2, a5);
  v14 = vmul_n_f32(*(a2 + 12), a5);
  result = vsub_f32(*(a2 + 24), vmla_n_f32(vmul_n_f32(v14, a4), v13, a3));
  a6.f32[1] = a7;
  *a2 = vmla_n_f32(vmul_n_f32(a6, *&v9), v13, v12);
  *(a2 + 12) = vmla_n_f32(vmul_n_f32(a6, v10), v14, v12);
  *(a2 + 24) = vmla_n_f32(vmul_n_f32(a6, v11), result, v12);
  return result;
}

uint64_t Geometry2D_assembleMeasurementMatrix(uint64_t result, float **a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 14 * v3;
    v6 = *a2;
    v7 = a2[1];
    v8 = *result;
    v9 = *(result + 8);
    v10 = a3 + 8 * v3;
    v11 = a3 + 4 * (4 * v3);
    v12 = a3 + 4 * (6 * v3);
    v13 = a3 + 4 * (8 * v3);
    v14 = a3 + 4 * (10 * v3);
    result = a3 + 4 * (12 * v3);
    v15 = 8 * v3;
    v16 = a3 + 4 * (16 * v3) + 4;
    v17 = a3 + 4 * v5;
    do
    {
      v18 = (a3 + v4);
      *v18 = *v8;
      v18[1] = 0;
      v19 = (v10 + v4);
      *v19 = 0;
      v20 = *v8;
      v19[1] = *v8;
      v21 = (v11 + v4);
      *v21 = -(v20 * *v6);
      v22 = *v8++;
      v21[1] = -(v22 * *v7);
      v23 = (v12 + v4);
      *v23 = *v9;
      v23[1] = 0;
      v24 = (v13 + v4);
      *v24 = 0;
      v25 = *v9;
      v24[1] = *v9;
      v26 = (v14 + v4);
      *v26 = -(v25 * *v6);
      v27 = *v9++;
      v26[1] = -(v27 * *v7);
      *(result + v4) = 1065353216;
      *(v17 + v4) = 0x3F80000000000000;
      v28 = *v6++;
      v29 = (v16 + v4);
      *(v29 - 1) = -v28;
      v30 = *v7++;
      *v29 = -v30;
      v4 += 8;
    }

    while (v15 != v4);
  }

  return result;
}

uint64_t Geometry2D_symmetricReprojectionErrorHomography(uint64_t a1, float *a2, const float **a3, float *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = malloc_type_malloc(4 * *(a1 + 16), 0x100004052888210uLL);
  if (!v8)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v9 = malloc_type_malloc(4 * *(a1 + 16), 0x100004052888210uLL);
  if (!v9)
  {
LABEL_11:
    v10 = 1915;
    goto LABEL_12;
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v15 = 0.0;
  v10 = Geometry2D_computeAdjointAndDeterminant(a2, v18, &v15);
  if ((v10 & 0x80) != 0)
  {
    v11 = v15;
    if (fabsf(v15) <= 0.00000011921)
    {
      v10 = 1902;
    }

    else
    {
      for (i = 0; i != 36; i += 4)
      {
        *(v16 + i) = *(v18 + i) / v11;
      }

      v10 = Geometry2D_reprojectionErrorHomography(a1, a2, a3, v8);
      if ((v10 & 0x80) != 0)
      {
        v10 = Geometry2D_reprojectionErrorHomography(a3, v16, a1, v9);
        if ((v10 & 0x80) != 0)
        {
          __C = 0.5;
          vDSP_vasm(v8, 1, v9, 1, &__C, a4, 1, *(a1 + 16));
        }
      }
    }
  }

LABEL_12:
  free(v8);
  free(v9);
  return v10;
}

uint64_t Geometry2D_reprojectionErrorHomography(float **a1, float *a2, const float **a3, float *a4)
{
  __C = 0;
  __A = 0;
  v27 = 0;
  Geometry2D_mallocCart2D(&__C, *(a1 + 4));
  if (__C)
  {
    v8 = __A == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v27 < 1)
  {
    goto LABEL_9;
  }

  if (&__C == a1)
  {
    goto LABEL_30;
  }

  if (!*a1)
  {
    goto LABEL_9;
  }

  if (!a1[1])
  {
    goto LABEL_9;
  }

  v11 = *(a1 + 4);
  if (v11 < 1)
  {
    goto LABEL_9;
  }

  if (v11 != v27)
  {
LABEL_30:
    v10 = 1916;
    goto LABEL_31;
  }

  if (!a2)
  {
LABEL_9:
    v10 = 1917;
    goto LABEL_31;
  }

  v12 = a2[8];
  if (fabsf((*a2 / v12) + -1.0) <= 0.00000011921 && fabsf(a2[1]) <= 0.00000011921 && fabsf(a2[2]) <= 0.00000011921 && fabsf(a2[3]) <= 0.00000011921 && fabsf((a2[4] / v12) + -1.0) <= 0.00000011921 && fabsf(a2[5]) <= 0.00000011921 && fabsf(a2[6]) <= 0.00000011921 && fabsf(a2[7]) <= 0.00000011921)
  {
    v10 = Geometry2D_copyCart2D(a1, &__C);
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  v13 = malloc_type_malloc(4 * v27, 0x100004052888210uLL);
  if (v13)
  {
    v14 = v13;
    v15 = *(a1 + 4);
    if (v15 > 8)
    {
      vDSP_vfill(a2 + 8, v13, 1, v15);
      MEMORY[0x1E12C8B30](*a1, 1, a2 + 2, v14, 1, v14, 1, *(a1 + 4));
      MEMORY[0x1E12C8B30](a1[1], 1, a2 + 5, v14, 1, v14, 1, *(a1 + 4));
      vDSP_vfill(a2 + 6, __C, 1, *(a1 + 4));
      MEMORY[0x1E12C8B30](*a1, 1, a2, __C, 1, __C, 1, *(a1 + 4));
      MEMORY[0x1E12C8B30](a1[1], 1, a2 + 3, __C, 1, __C, 1, *(a1 + 4));
      vDSP_vdiv(v14, 1, __C, 1, __C, 1, *(a1 + 4));
      vDSP_vfill(a2 + 7, __A, 1, *(a1 + 4));
      MEMORY[0x1E12C8B30](*a1, 1, a2 + 1, __A, 1, __A, 1, *(a1 + 4));
      MEMORY[0x1E12C8B30](a1[1], 1, a2 + 4, __A, 1, __A, 1, *(a1 + 4));
      vDSP_vdiv(v14, 1, __A, 1, __A, 1, *(a1 + 4));
    }

    else if (v15 >= 1)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = __C;
      v19 = __A;
      do
      {
        v20 = a2[8] + ((a2[5] * *v17) + (a2[2] * *v16));
        *v18++ = (a2[6] + ((*v17 * a2[3]) + (*a2 * *v16))) / v20;
        v21 = *v16++;
        v22 = v21;
        v23 = *v17++;
        *v19++ = (a2[7] + ((a2[4] * v23) + (a2[1] * v22))) / v20;
        --v15;
      }

      while (v15);
    }

    free(v14);
    v10 = 1920;
LABEL_35:
    vDSP_vpythg(__C, 1, __A, 1, *a3, 1, a3[1], 1, a4, 1, *(a1 + 4));
    goto LABEL_31;
  }

  v10 = 1915;
LABEL_31:
  free(__C);
  __C = 0;
  free(__A);
  return v10;
}

void *std::vector<half>::__assign_with_size[abi:ne200100]<half *,half *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<half>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<half>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<half>>(a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void *std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 61))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v10);
      }
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_1DECE9534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{
  if (a17)
  {
    operator delete(a17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__copy_impl::operator()[abi:ne200100]<half *,half *,std::back_insert_iterator<std::vector<half>>>(_WORD *a1, _WORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *(a3 + 8);
    do
    {
      v7 = *(a3 + 16);
      if (v6 >= v7)
      {
        v8 = *a3;
        v9 = v6 - *a3;
        v10 = v9 >> 1;
        if (v9 >> 1 <= -2)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v11 = v7 - v8;
        if (v11 <= v10 + 1)
        {
          v12 = v10 + 1;
        }

        else
        {
          v12 = v11;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<half>>(v13);
        }

        *(2 * v10) = *v5;
        v6 = (2 * v10 + 2);
        memcpy(0, v8, v9);
        v14 = *a3;
        *a3 = 0;
        *(a3 + 8) = v6;
        *(a3 + 16) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v6++ = *v5;
      }

      *(a3 + 8) = v6;
      ++v5;
    }

    while (v5 != a2);
  }
}

void std::__copy_impl::operator()[abi:ne200100]<unsigned long *,unsigned long *,std::back_insert_iterator<std::vector<unsigned long>>>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *(a3 + 8);
    do
    {
      v7 = *(a3 + 16);
      if (v6 >= v7)
      {
        v8 = *a3;
        v9 = v6 - *a3;
        v10 = v9 >> 3;
        v11 = (v9 >> 3) + 1;
        if (v11 >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v12 = v7 - v8;
        if (v12 >> 2 > v11)
        {
          v11 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v13);
        }

        *(8 * v10) = *v5;
        v6 = (8 * v10 + 8);
        memcpy(0, v8, v9);
        v14 = *a3;
        *a3 = 0;
        *(a3 + 8) = v6;
        *(a3 + 16) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v6++ = *v5;
      }

      *(a3 + 8) = v6;
      ++v5;
    }

    while (v5 != a2);
  }
}

void std::vector<half>::__insert_with_size[abi:ne200100]<std::__wrap_iter<half *>,std::__wrap_iter<half *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + (&v10[-*a1] >> 1) < 0)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + (&v10[-*a1] >> 1))
    {
      v14 = a5 + (&v10[-*a1] >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<half>>(v15);
    }

    v33 = 2 * v16;
    v34 = 2 * a5;
    v35 = (2 * v16);
    do
    {
      v36 = *v6++;
      *v35++ = v36;
      v34 -= 2;
    }

    while (v34);
    memcpy((v33 + 2 * a5), __dst, *(a1 + 8) - __dst);
    v37 = *a1;
    v38 = v33 + 2 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v39 = (__dst - v37);
    v40 = (v33 - (__dst - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {

      operator delete(v41);
    }

    return;
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 1;
  if (v18 >= a5)
  {
    v29 = &__dst[2 * a5];
    v30 = &v10[-2 * a5];
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30;
      v30 += 2;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v29);
    }

    v28 = 2 * a5;
    v26 = __dst;
    v27 = v6;
    goto LABEL_30;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = &v10[v20];
  *(a1 + 8) = &v10[v20];
  if (v18 >= 1)
  {
    v22 = &__dst[2 * a5];
    v23 = &v10[v20];
    if (&v21[-2 * a5] < v10)
    {
      v24 = &__dst[a4];
      v25 = &__dst[a4 + -2 * a5];
      do
      {
        *(v24 - v6) = *(v25 - v6);
        v25 += 2;
        v24 += 2;
      }

      while (v25 - v6 < v10);
      v23 = (v24 - v6);
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&__dst[2 * a5], __dst, v21 - v22);
    }

    if (v10 != __dst)
    {
      v26 = __dst;
      v27 = v6;
      v28 = v10 - __dst;
LABEL_30:

      memmove(v26, v27, v28);
    }
  }
}

void sub_1DECEA31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VisionCoreSparseOpticalFlowSession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DECEA554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, VisionCoreHomography *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  VisionCoreHomography::~VisionCoreHomography(&a9);

  VisionCoreHomography::~VisionCoreHomography(&a26);
  _Unwind_Resume(a1);
}

void sub_1DECEB48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, VisionCoreHomography *a21, VisionCoreHomography *a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  STACK[0x228] = &a63;
  std::vector<VisionCoreHomography>::__destroy_vector::operator()[abi:ne200100](&STACK[0x228]);
  if (__pa)
  {
    a67 = __pa;
    operator delete(__pa);
  }

  _Unwind_Resume(a1);
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DECEB6F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<VisionCoreHomography>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        VisionCoreHomography::~VisionCoreHomography(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1DECEC740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, uint64_t a18, VisionCoreHomography *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, VisionCoreHomography *a39)
{
  if (v40)
  {
    operator delete(v40);
  }

  a39 = a19;
  std::vector<VisionCoreHomography>::__destroy_vector::operator()[abi:ne200100](&a39);

  _Unwind_Resume(a1);
}

void *std::vector<VisionCoreHomography>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x1E1E1E1E1E1E1E2)
    {
      operator new();
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DECECAE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DECECF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  __p = (v18 - 112);
  std::vector<VisionCoreHomography>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_1DECED230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10)
{
  a9[1] = v11;
  a9[2] = a10;
  *a9 = v10;
  if (v10)
  {
    a9[1] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DECED994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *__pa, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, void *a18, char a19, uint64_t a20, void *a21, VisionCoreHomography *a22, void *a23, void *a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void **a30, void **a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, void *a51)
{
  if (__pa)
  {
    operator delete(__pa);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  a30 = &a27;
  std::vector<VisionCoreHomography>::__destroy_vector::operator()[abi:ne200100](&a30);
  if (v51)
  {
    operator delete(v51);
  }

  if (a47)
  {
    operator delete(a47);
  }

  if (a50)
  {
    a51 = a50;
    operator delete(a50);
  }

  VisionCoreHomography::~VisionCoreHomography((v52 - 240));
  _Unwind_Resume(a1);
}

void sub_1DECEDF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  __p = &a27;
  std::vector<VisionCoreHomography>::__destroy_vector::operator()[abi:ne200100](&__p);
  v31 = *v29;
  if (*v29)
  {
    *(v29 + 8) = v31;
    operator delete(v31);
  }

  v32 = *(v29 + 24);
  if (v32)
  {
    *(v29 + 32) = v32;
    operator delete(v32);
  }

  v33 = *(v29 + 48);
  if (v33)
  {
    *(v29 + 56) = v33;
    operator delete(v33);
  }

  v34 = *(v29 + 72);
  if (v34)
  {
    *(v29 + 80) = v34;
    operator delete(v34);
  }

  v35 = *(v29 + 96);
  if (v35)
  {
    *(v29 + 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void *std::vector<CGPoint>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1DECEE108(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<half>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<half>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DECEE180(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DECEE90C(_Unwind_Exception *exception_object)
{
  if (*v2)
  {
    operator delete(*v2);
  }

  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

id VisionCoreFrameworkBundle()
{
  if (VisionCoreFrameworkBundle_onceToken != -1)
  {
    dispatch_once(&VisionCoreFrameworkBundle_onceToken, &__block_literal_global_1056);
  }

  v1 = VisionCoreFrameworkBundle_bundle;

  return v1;
}

uint64_t __VisionCoreFrameworkBundle_block_invoke()
{
  VisionCoreFrameworkBundle_bundle = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.VisionCore"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t VisionCoreEqualOrNilObjects(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

uint64_t VisionCoreEquivalentOrNilUnorderedArrays(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v3 && v4)
    {
      v7 = [v3 count];
      if (v7 == [v5 count])
      {
        v8 = objc_autoreleasePoolPush();
        v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v3];
        v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v5];
        v6 = [v9 isEqualToSet:v10];

        objc_autoreleasePoolPop(v8);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

id VisionCoreFourCharCodeToString(uint64_t a1)
{
  v2 = (a1 >> 24);
  if (v2 > 0x7F)
  {
    if (!__maskrune(a1 >> 24, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v3 = (a1 << 8) >> 24;
  if (v3 > 0x7F)
  {
    if (!__maskrune((a1 << 8) >> 24, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v4 = a1 >> 8;
  if (v4 > 0x7F)
  {
    if (!__maskrune(a1 >> 8, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  if (a1 > 0x7F)
  {
    if (__maskrune(a1, 0x40000uLL))
    {
      goto LABEL_15;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * a1 + 60) & 0x40000) != 0)
  {
LABEL_15:
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"'%c%c%c%c'", v2, ((a1 << 8) >> 24), (a1 >> 8), a1];
    goto LABEL_18;
  }

LABEL_17:
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"0x%08X", a1, v7, v8, v9];
LABEL_18:

  return v5;
}

double VisionCoreNormalizedPointForImagePoint(unint64_t a1, uint64_t a2, double a3)
{
  if (a1 && a2)
  {
    return a3 / a1;
  }

  else
  {
    return *MEMORY[0x1E695EFF8];
  }
}

uint64_t VisionCorePerformWithLockedIOSurface(__IOSurface *a1, IOSurfaceLockOptions a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = IOSurfaceLock(a1, a2, 0);
  if (v8)
  {
    if (a4)
    {
      v9 = v8;
      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      v11 = [MEMORY[0x1E696AD98] numberWithInt:v9];
      v12 = [v10 initWithFormat:@"Could not lock IOSurfaceRef %p (%@)", a1, v11];

      *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForKernelReturnCode:v9 localizedDescription:v12];

      LOBYTE(a4) = 0;
    }
  }

  else
  {
    LOBYTE(a4) = v7[2](v7, a1, a4);
    v13 = IOSurfaceUnlock(a1, a2, 0);
    if (v13)
    {
      v21 = [MEMORY[0x1E696AD98] numberWithInt:v13];
      VisionCoreValidatedLog(4, @"Could not unlock IOSurfaceRef %p (%@)", v14, v15, v16, v17, v18, v19, a1);
    }
  }

  return a4 & 1;
}

__CFString *VisionCoreANEArchitectureName()
{
  if (VisionCoreHasANE::once_token != -1)
  {
    dispatch_once(&VisionCoreHasANE::once_token, &__block_literal_global_152);
  }

  if (VisionCoreHasANE::hasANESupport == 1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2050000000;
    v0 = get_ANEDeviceInfoClass_softClass;
    v9 = get_ANEDeviceInfoClass_softClass;
    if (!get_ANEDeviceInfoClass_softClass)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __get_ANEDeviceInfoClass_block_invoke;
      v5[3] = &unk_1E8698AE0;
      v5[4] = &v6;
      __get_ANEDeviceInfoClass_block_invoke(v5);
      v0 = v7[3];
    }

    v1 = v0;
    _Block_object_dispose(&v6, 8);
    v2 = [v0 aneSubType];
    v3 = [v2 uppercaseString];
  }

  else
  {
    v3 = &stru_1F59F0588;
  }

  return v3;
}

void sub_1DECEF2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AppleNeuralEngineLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleNeuralEngineLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t VisionCoreCurrentANEGeneration()
{
  if (VisionCoreCurrentANEGeneration_onceToken != -1)
  {
    dispatch_once(&VisionCoreCurrentANEGeneration_onceToken, &__block_literal_global_22);
  }

  return VisionCoreCurrentANEGeneration_currentANEGeneration;
}

void __VisionCoreCurrentANEGeneration_block_invoke()
{
  v2 = VisionCoreANEArchitectureName();
  v0 = [v2 componentsSeparatedByString:@"H"];
  v1 = [v0 lastObject];
  VisionCoreCurrentANEGeneration_currentANEGeneration = [v1 integerValue];
}

id VisionCoreTensorDescriptorsFromANSTDescriptors(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v15 objects:v28 count:16];
  if (v3)
  {
    v4 = *v16;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        v24 = 0;
        v25 = &v24;
        v26 = 0x2050000000;
        v7 = getANSTTensorDescriptorClass_softClass;
        v27 = getANSTTensorDescriptorClass_softClass;
        if (!getANSTTensorDescriptorClass_softClass)
        {
          v19 = MEMORY[0x1E69E9820];
          v20 = 3221225472;
          v21 = __getANSTTensorDescriptorClass_block_invoke;
          v22 = &unk_1E8698AE0;
          v23 = &v24;
          __getANSTTensorDescriptorClass_block_invoke(&v19);
          v7 = v25[3];
        }

        v8 = v7;
        _Block_object_dispose(&v24, 8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [[VisionCoreTensorDescriptor alloc] initWithANSTTensorDescriptor:v6];
          [v2 addObject:v9];
        }

        v24 = 0;
        v25 = &v24;
        v26 = 0x2050000000;
        v10 = getANSTPixelBufferDescriptorClass_softClass;
        v27 = getANSTPixelBufferDescriptorClass_softClass;
        if (!getANSTPixelBufferDescriptorClass_softClass)
        {
          v19 = MEMORY[0x1E69E9820];
          v20 = 3221225472;
          v21 = __getANSTPixelBufferDescriptorClass_block_invoke;
          v22 = &unk_1E8698AE0;
          v23 = &v24;
          __getANSTPixelBufferDescriptorClass_block_invoke(&v19);
          v10 = v25[3];
        }

        v11 = v10;
        _Block_object_dispose(&v24, 8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [[VisionCoreImageTensorDescriptor alloc] initWithANSTPixelBufferDescriptor:v6];
          [v2 addObject:v12];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v15 objects:v28 count:16];
    }

    while (v3);
  }

  return v2;
}

void sub_1DECEF850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getANSTTensorDescriptorClass_block_invoke(uint64_t a1)
{
  ANSTKitLibrary_1095();
  result = objc_getClass("ANSTTensorDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANSTTensorDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getANSTPixelBufferDescriptorClass_block_invoke(v3);
  }

  return result;
}

void __getANSTPixelBufferDescriptorClass_block_invoke(uint64_t a1)
{
  ANSTKitLibrary_1095();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ANSTPixelBufferDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANSTPixelBufferDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    ANSTKitLibrary_1095();
  }
}

void ANSTKitLibrary_1095()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ANSTKitLibraryCore_frameworkLibrary_1098)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ANSTKitLibraryCore_block_invoke_1099;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E8698780;
    v3 = 0;
    ANSTKitLibraryCore_frameworkLibrary_1098 = _sl_dlopen();
    v0 = v1[0];
    if (ANSTKitLibraryCore_frameworkLibrary_1098)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t __ANSTKitLibraryCore_block_invoke_1099()
{
  result = _sl_dlopen();
  ANSTKitLibraryCore_frameworkLibrary_1098 = result;
  return result;
}

void sub_1DECF18C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getANSTViSegHQInitialFrameInferenceDescriptorClass_block_invoke(uint64_t a1)
{
  ANSTKitLibrary_1263();
  result = objc_getClass("ANSTViSegHQInitialFrameInferenceDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANSTViSegHQInitialFrameInferenceDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return getANSTViSegHQRegularFrameInferenceDescriptorClass(v3);
  }

  return result;
}

id getANSTViSegHQRegularFrameInferenceDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getANSTViSegHQRegularFrameInferenceDescriptorClass_softClass;
  v7 = getANSTViSegHQRegularFrameInferenceDescriptorClass_softClass;
  if (!getANSTViSegHQRegularFrameInferenceDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getANSTViSegHQRegularFrameInferenceDescriptorClass_block_invoke;
    v3[3] = &unk_1E8698AE0;
    v3[4] = &v4;
    __getANSTViSegHQRegularFrameInferenceDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DECF1A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getANSTViSegHQUpdateFrameInferenceDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getANSTViSegHQUpdateFrameInferenceDescriptorClass_softClass;
  v7 = getANSTViSegHQUpdateFrameInferenceDescriptorClass_softClass;
  if (!getANSTViSegHQUpdateFrameInferenceDescriptorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getANSTViSegHQUpdateFrameInferenceDescriptorClass_block_invoke;
    v3[3] = &unk_1E8698AE0;
    v3[4] = &v4;
    __getANSTViSegHQUpdateFrameInferenceDescriptorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DECF1AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getANSTViSegHQUpdateFrameInferenceDescriptorClass_block_invoke(uint64_t a1)
{
  ANSTKitLibrary_1263();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ANSTViSegHQUpdateFrameInferenceDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANSTViSegHQUpdateFrameInferenceDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    ANSTKitLibrary_1263();
  }
}

void ANSTKitLibrary_1263()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ANSTKitLibraryCore_frameworkLibrary_1266)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ANSTKitLibraryCore_block_invoke_1267;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E86987A0;
    v3 = 0;
    ANSTKitLibraryCore_frameworkLibrary_1266 = _sl_dlopen();
    v0 = v1[0];
    if (ANSTKitLibraryCore_frameworkLibrary_1266)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t __ANSTKitLibraryCore_block_invoke_1267()
{
  result = _sl_dlopen();
  ANSTKitLibraryCore_frameworkLibrary_1266 = result;
  return result;
}

Class __getANSTViSegHQRegularFrameInferenceDescriptorClass_block_invoke(uint64_t a1)
{
  ANSTKitLibrary_1263();
  result = objc_getClass("ANSTViSegHQRegularFrameInferenceDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANSTViSegHQRegularFrameInferenceDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(VisionCoreVideoSegmentationInferenceNetworkDescriptor *)v3 _configurationForIdentifier:v4 version:v5, v6];
  }

  return result;
}

id getANSTViSegHQInferenceConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getANSTViSegHQInferenceConfigurationClass_softClass;
  v7 = getANSTViSegHQInferenceConfigurationClass_softClass;
  if (!getANSTViSegHQInferenceConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getANSTViSegHQInferenceConfigurationClass_block_invoke;
    v3[3] = &unk_1E8698AE0;
    v3[4] = &v4;
    __getANSTViSegHQInferenceConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DECF20C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getANSTViSegHQInferenceConfigurationClass_block_invoke(uint64_t a1)
{
  ANSTKitLibrary_1263();
  result = objc_getClass("ANSTViSegHQInferenceConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANSTViSegHQInferenceConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(VisionCoreValueConfidenceCurve *)v3 .cxx_construct];
  }

  return result;
}

void *std::vector<VisionCoreValueConfidencePoint>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a2);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<VisionCoreValueConfidencePoint>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t _tenthsForValue(float a1)
{
  if (_tenthsForValue(float)::onceToken != -1)
  {
    dispatch_once(&_tenthsForValue(float)::onceToken, &__block_literal_global_1333);
  }

  v2 = *(_tenthsForValue(float)::tenthsMap + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = _tenthsForValue(float)::tenthsMap + 8;
  do
  {
    v4 = *(v2 + 28);
    if (v4 >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (v4 < a1));
  }

  while (v2);
  if (v3 == _tenthsForValue(float)::tenthsMap + 8 || *(v3 + 28) > a1)
  {
    return 0;
  }

  else
  {
    return *(v3 + 32);
  }
}

void sub_1DECF309C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<float,unsigned char>,std::__map_value_compare<float,std::__value_type<float,unsigned char>,std::less<float>,true>,std::allocator<std::__value_type<float,unsigned char>>>::destroy(*(v2 + 8));
  MEMORY[0x1E12C7FD0](v2, v1);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<float,unsigned char>,std::__map_value_compare<float,std::__value_type<float,unsigned char>,std::less<float>,true>,std::allocator<std::__value_type<float,unsigned char>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<float,unsigned char>,std::__map_value_compare<float,std::__value_type<float,unsigned char>,std::less<float>,true>,std::allocator<std::__value_type<float,unsigned char>>>::destroy(*a1);
    std::__tree<std::__value_type<float,unsigned char>,std::__map_value_compare<float,std::__value_type<float,unsigned char>,std::less<float>,true>,std::allocator<std::__value_type<float,unsigned char>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

float *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[VisionCoreValueConfidenceCurve _finalizeInitialization]::$_0 &,VisionCoreValueConfidencePoint *,0>(float *result, float *a2, float *a3, void *a4, void *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v7 = *a2;
      *a2 = *a3;
      *a3 = v7;
      if (*a2 >= *result)
      {
        goto LABEL_7;
      }

      v8 = *result;
      *result = *a2;
      *a2 = v8;
      v6 = *a3;
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
      *a3 = v7;
LABEL_7:
      v6 = *&v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    v6 = *a3;
    if (*a3 < *&v7)
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = *&v7;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*a3 < *a2)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*a2 < *result)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (*a5 < *a4)
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (*a4 < *a3)
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (*a3 < *a2)
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (*a2 < *result)
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[VisionCoreValueConfidenceCurve _finalizeInitialization]::$_0 &,VisionCoreValueConfidencePoint *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *(a1 + 8);
      v5 = *(a2 - 8);
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          v16 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 8);
          *(a2 - 8) = v16;
          if (*(a1 + 8) < *a1)
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v5 >= v4)
      {
        *a1 = *(a1 + 8);
        *(a1 + 8) = v3;
        if (*(a2 - 8) >= *&v3)
        {
          return 1;
        }

        *(a1 + 8) = *(a2 - 8);
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *(a2 - 8);
LABEL_13:
      *(a2 - 8) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[VisionCoreValueConfidenceCurve _finalizeInitialization]::$_0 &,VisionCoreValueConfidencePoint *,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), (a2 - 8));
        return 1;
      }

      goto LABEL_14;
    }

    v11 = *(a1 + 8);
    v12 = *a1;
    v13 = *(a1 + 16);
    if (v11 >= *a1)
    {
      if (v13 < v11)
      {
        v21 = *(a1 + 8);
        v20 = *(a1 + 16);
        *(a1 + 8) = v20;
        *(a1 + 16) = v21;
        v13 = *&v21;
        if (v12 > *&v20)
        {
          v22 = *a1;
          *a1 = v20;
          *(a1 + 8) = v22;
        }
      }

      goto LABEL_48;
    }

    v14 = *a1;
    LODWORD(v15) = *a1;
    if (v13 >= v11)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v14;
      if (v13 >= v15)
      {
LABEL_48:
        if (*(a2 - 8) < v13)
        {
          v31 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 8);
          *(a2 - 8) = v31;
          if (*(a1 + 16) < *(a1 + 8))
          {
            v33 = *(a1 + 8);
            v32 = *(a1 + 16);
            *(a1 + 8) = v32;
            *(a1 + 16) = v33;
            if (*a1 > *&v32)
            {
              v34 = *a1;
              *a1 = v32;
              *(a1 + 8) = v34;
            }
          }
        }

        return 1;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v14;
    v13 = v15;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 8) < *a1)
    {
      v3 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = (a1 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8);
  v9 = *a1;
  if (v8 >= *a1)
  {
    if (v7 < v8)
    {
      v18 = *(a1 + 8);
      v17 = *(a1 + 16);
      *(a1 + 8) = v17;
      *(a1 + 16) = v18;
      if (v9 > *&v17)
      {
        v19 = *a1;
        *a1 = v17;
        *(a1 + 8) = v19;
      }
    }
  }

  else
  {
    v10 = *a1;
    if (v7 >= v8)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v10;
      if (v7 >= *&v10)
      {
        goto LABEL_34;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v10;
  }

LABEL_34:
  v23 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = *v23;
    if (*v23 < *v6)
    {
      v27 = *(v23 + 4);
      v28 = v24;
      while (1)
      {
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(a1 + v28 + 8);
        v28 -= 8;
        if (v29 <= v26)
        {
          v30 = a1 + v28 + 24;
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      *v30 = v26;
      *(v30 + 4) = v27;
      if (++v25 == 8)
      {
        return v23 + 8 == a2;
      }
    }

    v6 = v23;
    v24 += 8;
    v23 += 8;
    if (v23 == a2)
    {
      return 1;
    }
  }
}

uint64_t Geometry2D_normalizePoints(const float **a1, float *a2, const float **a3, float *__C, float *a5, float *a6)
{
  if (!a1)
  {
    return 1917;
  }

  v7 = *a1;
  if (!*a1 || !a1[1])
  {
    return 1917;
  }

  result = 1917;
  if (a3)
  {
    v10 = *(a1 + 4);
    if (v10 >= 1)
    {
      if (*a3)
      {
        if (a3[1])
        {
          v11 = *(a3 + 4);
          if (v11 >= 1)
          {
            if (v10 != v11)
            {
              return 1916;
            }

            vDSP_meanv(v7, 1, __C, *(a1 + 4));
            vDSP_meanv(a1[1], 1, a5, v10);
            v16 = -*__C;
            v18 = -*a5;
            v19 = v16;
            MEMORY[0x1E12C8B20](*a1, 1, &v19, *a3, 1, v10);
            MEMORY[0x1E12C8B20](a1[1], 1, &v18, a3[1], 1, v10);
            vDSP_vdist(*a3, 1, a3[1], 1, a2, 1, v10);
            __Ca = 0.0;
            vDSP_meanv(a2, 1, &__Ca, v10);
            if (fabsf(__Ca) < 0.00000011921)
            {
              return 1901;
            }

            *a6 = 1.4142 / __Ca;
            MEMORY[0x1E12C8B40](*a3, 1, a6, *a3, 1, v10);
            MEMORY[0x1E12C8B40](a3[1], 1, a6, a3[1], 1, v10);
            return 1920;
          }
        }
      }

      return 1917;
    }
  }

  return result;
}

uint64_t RANSAC_sampleMSSUniform(unsigned int a1, _DWORD *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1917;
  }

  v4 = 0;
  result = 1920;
  do
  {
    v6 = a2[1];
    HIDWORD(v7) = 5 * v6;
    LODWORD(v7) = 5 * v6;
    v8 = 9 * (v7 >> 25);
    v9 = a2[2] ^ *a2;
    v10 = a2[3] ^ v6;
    *a2 ^= v10;
    a2[1] = v9 ^ v6;
    HIDWORD(v7) = v10;
    LODWORD(v7) = v10;
    a2[2] = v9 ^ (v6 << 9);
    a2[3] = v7 >> 21;
    v11 = v8 % a1;
    if (v4)
    {
      while (1)
      {
        v12 = 0;
        while (*(a3 + 4 * v12) != v11)
        {
          if (v4 == ++v12)
          {
            goto LABEL_11;
          }
        }

        if (v11 + 1 == a1)
        {
          v11 = 0;
        }

        else
        {
          ++v11;
        }
      }
    }

LABEL_11:
    *(a3 + 4 * v4++) = v11;
  }

  while (v4 != 4);
  return result;
}

void sub_1DECFA810(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1DECFA708);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DECFB07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1DECFD5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x1DECFD538);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DECFDC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VisionCoreE5RTProgramLibrary;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1DECFDF18(void *a1)
{
  objc_end_catch();
  objc_begin_catch(a1);
  JUMPOUT(0x1DECFDE94);
}

void sub_1DECFDF44(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1DECFEEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getANSTPixelBufferClass_block_invoke(uint64_t a1)
{
  ANSTKitLibrary_2528();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ANSTPixelBuffer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANSTPixelBufferClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    ANSTKitLibrary_2528();
  }
}

void ANSTKitLibrary_2528()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ANSTKitLibraryCore_frameworkLibrary_2531)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ANSTKitLibraryCore_block_invoke_2532;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E8698970;
    v3 = 0;
    ANSTKitLibraryCore_frameworkLibrary_2531 = _sl_dlopen();
    v0 = v1[0];
    if (ANSTKitLibraryCore_frameworkLibrary_2531)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t __ANSTKitLibraryCore_block_invoke_2532()
{
  result = _sl_dlopen();
  ANSTKitLibraryCore_frameworkLibrary_2531 = result;
  return result;
}

void sub_1DECFF1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getANSTTensorDataClass_block_invoke(uint64_t a1)
{
  ANSTKitLibrary_2528();
  result = objc_getClass("ANSTTensorData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANSTTensorDataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(VisionCoreANSTInferenceNetworkDescriptor *)v3 _outputDescriptorWithName:v4 postProcessor:v5, v6];
  }

  return result;
}

CFTypeRef CreatePixelBuffer(int a1, int a2, OSType a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v12 = *MEMORY[0x1E69660D8];
  v13[0] = MEMORY[0x1E695E0F8];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v7 = CVPixelBufferCreate(0, a1, a2, a3, v6, &cf);
  v8 = cf;
  if (v7)
  {
    v9 = cf == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    CFRelease(cf);
    v8 = 0;
    cf = 0;
  }

  return v8;
}

void sub_1DED02554(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  objc_begin_catch(a1);
  free(v14);
  objc_exception_rethrow();
}

uint64_t ___enumerateProcessSubclasses_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a3 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

BOOL _classImplementsSelector(objc_class *a1, const char *a2)
{
  outCount = 0;
  v3 = class_copyMethodList(a1, &outCount);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (outCount)
  {
    v5 = 0;
    while (1)
    {
      Name = method_getName(v4[v5]);
      v7 = Name == a2;
      if (Name == a2)
      {
        break;
      }

      if (++v5 >= outCount)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  free(v4);
  return v7;
}

void sub_1DED02798(void *a1)
{
  objc_begin_catch(a1);
  free(v1);
  objc_exception_rethrow();
}

id getANSTViSegHQInitialFrameInferenceDescriptorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getANSTViSegHQInitialFrameInferenceDescriptorClass_softClass_2840;
  v7 = getANSTViSegHQInitialFrameInferenceDescriptorClass_softClass_2840;
  if (!getANSTViSegHQInitialFrameInferenceDescriptorClass_softClass_2840)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getANSTViSegHQInitialFrameInferenceDescriptorClass_block_invoke_2841;
    v3[3] = &unk_1E8698AE0;
    v3[4] = &v4;
    __getANSTViSegHQInitialFrameInferenceDescriptorClass_block_invoke_2841(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DED02D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getANSTViSegHQRegularFrameInferenceDescriptorClass_2821()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getANSTViSegHQRegularFrameInferenceDescriptorClass_softClass_2837;
  v7 = getANSTViSegHQRegularFrameInferenceDescriptorClass_softClass_2837;
  if (!getANSTViSegHQRegularFrameInferenceDescriptorClass_softClass_2837)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getANSTViSegHQRegularFrameInferenceDescriptorClass_block_invoke_2838;
    v3[3] = &unk_1E8698AE0;
    v3[4] = &v4;
    __getANSTViSegHQRegularFrameInferenceDescriptorClass_block_invoke_2838(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DED02E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getANSTViSegHQUpdateFrameInferenceDescriptorClass_2822()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getANSTViSegHQUpdateFrameInferenceDescriptorClass_softClass_2827;
  v7 = getANSTViSegHQUpdateFrameInferenceDescriptorClass_softClass_2827;
  if (!getANSTViSegHQUpdateFrameInferenceDescriptorClass_softClass_2827)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getANSTViSegHQUpdateFrameInferenceDescriptorClass_block_invoke_2828;
    v3[3] = &unk_1E8698AE0;
    v3[4] = &v4;
    __getANSTViSegHQUpdateFrameInferenceDescriptorClass_block_invoke_2828(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DED02F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getANSTViSegHQUpdateFrameInferenceDescriptorClass_block_invoke_2828(uint64_t a1)
{
  ANSTKitLibrary_2829();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ANSTViSegHQUpdateFrameInferenceDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANSTViSegHQUpdateFrameInferenceDescriptorClass_softClass_2827 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    ANSTKitLibrary_2829();
  }
}

void ANSTKitLibrary_2829()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ANSTKitLibraryCore_frameworkLibrary_2832)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ANSTKitLibraryCore_block_invoke_2833;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E8698B00;
    v3 = 0;
    ANSTKitLibraryCore_frameworkLibrary_2832 = _sl_dlopen();
    v0 = v1[0];
    if (ANSTKitLibraryCore_frameworkLibrary_2832)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t __ANSTKitLibraryCore_block_invoke_2833()
{
  result = _sl_dlopen();
  ANSTKitLibraryCore_frameworkLibrary_2832 = result;
  return result;
}

Class __getANSTViSegHQRegularFrameInferenceDescriptorClass_block_invoke_2838(uint64_t a1)
{
  ANSTKitLibrary_2829();
  result = objc_getClass("ANSTViSegHQRegularFrameInferenceDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANSTViSegHQRegularFrameInferenceDescriptorClass_softClass_2837 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getANSTViSegHQInitialFrameInferenceDescriptorClass_block_invoke_2841(v3);
  }

  return result;
}

Class __getANSTViSegHQInitialFrameInferenceDescriptorClass_block_invoke_2841(uint64_t a1)
{
  ANSTKitLibrary_2829();
  result = objc_getClass("ANSTViSegHQInitialFrameInferenceDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANSTViSegHQInitialFrameInferenceDescriptorClass_softClass_2840 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(VisionCoreVideoSegmentationE5NetworkDescriptor *)v3 postProcessingOutputDescriptorsForFunction:v4, v5];
  }

  return result;
}

void sub_1DED036F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

VisionCoreVideoSegmentationE5NetworkDescriptor *__getANSTViSegHQUpdateFramePostProcessorClass_block_invoke(uint64_t a1)
{
  ANSTKitLibrary_2829();
  result = objc_getClass("ANSTViSegHQUpdateFramePostProcessor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANSTViSegHQUpdateFramePostProcessorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(VisionCoreVideoSegmentationE5NetworkDescriptor *)v3 initWithSpecifier:v4 url:v5, v6];
  }

  return result;
}

void sub_1DED03AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getANSTViSegHQInferenceConfigurationClass_block_invoke_2870(uint64_t a1)
{
  ANSTKitLibrary_2829();
  result = objc_getClass("ANSTViSegHQInferenceConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getANSTViSegHQInferenceConfigurationClass_softClass_2869 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(VisionCoreVideoSegmentationE5NetworkDescriptor *)v3 descriptorForIdentifier:v4 version:v5 error:v6, v7];
  }

  return result;
}

__CFString *NSStringFromVisionCoreSceneNetInferenceNetworkModel(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"VisionCoreSceneNetInferenceNetworkModelSceneNetV3";
    }

    else
    {
      v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"VisionCoreSceneNetInferenceNetworkModel%lu", a1];
    }
  }

  else
  {
    v2 = @"VisionCoreSceneNetInferenceNetworkModelUndefined";
  }

  return v2;
}

void sub_1DED078A8(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1DED07C20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_1DED07C54(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

uint64_t RANSAC_estimateIterationThreshold(int a1, int a2, uint64_t a3, int *a4)
{
  v4 = 1916;
  if (a1 >= 4 && a2 <= a1)
  {
    if (a3)
    {
      if (a2 >= 4)
      {
        v8 = 1.0;
        v9 = -4;
        do
        {
          v8 = v8 * (a2-- / a1--);
        }

        while (!__CFADD__(v9++, 1));
        v11 = log(*(a3 + 4));
        v7 = fmin(ceil(v11 / log(1.0 - v8)), 2147483650.0);
      }

      else
      {
        v7 = 0x7FFFFFFF;
      }

      v12 = *(a3 + 8);
      if (v12 >= v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = *(a3 + 8);
      }

      if (v12 > 0)
      {
        v7 = v13;
      }

      *a4 = v7;
      return 1920;
    }

    else
    {
      return 1917;
    }
  }

  return v4;
}

void VisionCoreValidatedLog(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v10 = a1;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __VisionCoreValidatedLog_block_invoke;
    v13[3] = &__block_descriptor_36_e24_v24__0____CFString__8_16l;
    v14 = a1;
    v11 = MEMORY[0x1E12C8870](v13);
    v12 = v11;
    if ((v10 & 6) != 0)
    {
      (*(v11 + 16))(v11, a2, &a9);
    }

    else
    {
      if (_LogAllMessages_onceToken != -1)
      {
        dispatch_once(&_LogAllMessages_onceToken, &__block_literal_global_6);
      }

      if (_LogAllMessages__logAllMessages == 1)
      {
        (v12)[2](v12, a2, &a9);
      }
    }
  }
}

void __VisionCoreValidatedLog_block_invoke(uint64_t a1, CFStringRef format, va_list arguments)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, format, arguments);
  if (v4)
  {
    v5 = v4;
    CStringPtr = CFStringGetCStringPtr(v4, 0x8000100u);
    if (CStringPtr)
    {
      v7 = CStringPtr;
      if (_VisionCoreLogger_onceToken != -1)
      {
        dispatch_once(&_VisionCoreLogger_onceToken, &__block_literal_global_3374);
      }

      v8 = _VisionCoreLogger__visionLogger;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32) - 1;
        if (v9 > 3)
        {
          v10 = "VisionCore: ";
        }

        else
        {
          v10 = off_1E8698C38[v9];
        }

        v11 = 136315394;
        v12 = v10;
        v13 = 2080;
        v14 = v7;
        _os_log_impl(&dword_1DECDA000, v8, OS_LOG_TYPE_DEFAULT, "%s%s\n", &v11, 0x16u);
      }

      CFRelease(v5);
    }
  }
}

id _VisionCoreSignpostLog()
{
  if (_VisionCoreSignpostLog_onceToken != -1)
  {
    dispatch_once(&_VisionCoreSignpostLog_onceToken, &__block_literal_global_3458);
  }

  v1 = _VisionCoreSignpostLog____VisionCoreSignpostLog;

  return v1;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}