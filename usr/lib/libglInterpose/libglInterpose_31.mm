uint64_t *std::__tree<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__map_value_compare<__GLIContextRec *,std::__value_type<__GLIContextRec *,ContextInfo *>,std::less<__GLIContextRec *>,true>,std::allocator<std::__value_type<__GLIContextRec *,ContextInfo *>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::__tree<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__map_value_compare<__GLIContextRec *,std::__value_type<__GLIContextRec *,ContextInfo *>,std::less<__GLIContextRec *>,true>,std::allocator<std::__value_type<__GLIContextRec *,ContextInfo *>>>::__erase_unique<__GLIContextRec *>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__map_value_compare<__GLIContextRec *,std::__value_type<__GLIContextRec *,ContextInfo *>,std::less<__GLIContextRec *>,true>,std::allocator<std::__value_type<__GLIContextRec *,ContextInfo *>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__map_value_compare<__GLIContextRec *,std::__value_type<__GLIContextRec *,ContextInfo *>,std::less<__GLIContextRec *>,true>,std::allocator<std::__value_type<__GLIContextRec *,ContextInfo *>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void *std::__tree<std::__value_type<__GLIContextRec *,ContextInfo *>,std::__map_value_compare<__GLIContextRec *,std::__value_type<__GLIContextRec *,ContextInfo *>,std::less<__GLIContextRec *>,true>,std::allocator<std::__value_type<__GLIContextRec *,ContextInfo *>>>::__emplace_unique_key_args<__GLIContextRec *,std::pair<__GLIContextRec * const,ContextInfo *>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::__unordered_map_hasher<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::hash<EAGLSharegroup *>,std::equal_to<EAGLSharegroup *>,true>,std::__unordered_map_equal<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::equal_to<EAGLSharegroup *>,std::hash<EAGLSharegroup *>,true>,std::allocator<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::__unordered_map_hasher<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::hash<EAGLSharegroup *>,std::equal_to<EAGLSharegroup *>,true>,std::__unordered_map_equal<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::equal_to<EAGLSharegroup *>,std::hash<EAGLSharegroup *>,true>,std::allocator<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::__unordered_map_hasher<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::hash<EAGLSharegroup *>,std::equal_to<EAGLSharegroup *>,true>,std::__unordered_map_equal<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::equal_to<EAGLSharegroup *>,std::hash<EAGLSharegroup *>,true>,std::allocator<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<char * const&>(uint64_t a1, const char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v13.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  v13.__first_ = 0;
  v13.__begin_ = (24 * v2);
  v13.__end_ = (24 * v2);
  v13.__end_cap_.__value_ = 0;
  std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char * const&,0>(a1, (24 * v2), a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy(v13.__begin_ - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::string>::~__split_buffer(&v13);
  return v7;
}

size_t std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char * const&,0>(uint64_t a1, _BYTE *a2, const char **a3)
{
  v4 = *a3;
  result = strlen(*a3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v4, result);
  }

  a2[v6] = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

GPUTools::ResourceUpdater *GPUTools::ResourceUpdater::ResourceUpdater(GPUTools::ResourceUpdater *this, ContextInfo *a2)
{
  *this = a2;
  v3 = *(a2 + 3);
  *(this + 16) = 0;
  *(this + 1) = a2;
  *(this + 2) = v3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 1065353216;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 1065353216;
  *(this + 17) = 0;
  *(this + 18) = 0;
  if (*(*(a2 + 5) + 8) == 1 && *(a2 + 864) != 1)
  {
    ReserveGLShader(*a2, kDYReservedGLNameResourceUpdaterVertexShader, 35633);
    ReserveGLShader(**this, kDYReservedGLNameResourceUpdaterFragmentShader, 35632);
  }

  return this;
}

void sub_1DF9F8(_Unwind_Exception *a1)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v2 + 136) = v7;
    operator delete(v7);
  }

  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](v3);
  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

BOOL GPUTools::ResourceUpdater::_UpdateShader(GPUTools::ResourceUpdater *this, uint64_t a2, const char *a3, NSMutableDictionary *a4, NSString *a5)
{
  v17 = a3;
  v16 = 0;
  v9 = (this + 8);
  v10 = a2;
  (*(*(this + 2) + 4760))(*(*(this + 1) + 16), a2, 1, &v17, 0);
  (*(v9[1] + 4768))(*(*v9 + 16), v10);
  if (a4)
  {
    v15 = 0;
    memset(__n, 0, sizeof(__n));
    (*(*(this + 2) + 5256))(*(*(this + 1) + 16), a2, 35716, __n);
    std::string::resize(&__n[1], __n[0], 0);
    v11 = v15 >= 0 ? &__n[1] : *&__n[1];
    (*(*(this + 2) + 5272))(*(*(this + 1) + 16), a2, __n[0], 0, v11);
    v12 = v15 >= 0 ? &__n[1] : *&__n[1];
    [(NSMutableDictionary *)a4 setObject:[NSString forKey:"stringWithCString:encoding:" stringWithCString:v12 encoding:1], a5];
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*&__n[1]);
    }
  }

  (*(*(this + 2) + 5256))(*(*(this + 1) + 16), a2, 35713, &v16);
  if (v16 != 1)
  {
    return 0;
  }

  if (!gDYResourceUpdateCallbackBlock)
  {
    return 1;
  }

  (*(gDYResourceUpdateCallbackBlock + 16))();
  return v16 == 1;
}

void sub_1DFBD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *GPUTools::ResourceUpdater::_GetCombinedLinkedShaderSource@<X0>(std::string *result@<X0>, unsigned int **a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = result;
    do
    {
      v7 = **(v3 + 1);
      if (!v7)
      {
        v8 = 0;
        (*(v5->__r_.__value_.__r.__words[2] + 5256))(*(v5->__r_.__value_.__l.__size_ + 16), *v3, 35720, &v8);
        operator new[]();
      }

      result = std::string::append(a3, v7);
      v3 += 14;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t GPUTools::ResourceUpdater::_CopyProgram(std::string *this, uint64_t a2, unsigned int **a3, uint64_t a4)
{
  v8 = &this->__r_.__value_.__s.__data_[8];
  v9 = (*(this->__r_.__value_.__r.__words[2] + 4752))(*(this->__r_.__value_.__l.__size_ + 16), 35633);
  v10 = (*(this->__r_.__value_.__r.__words[2] + 4752))(*(*v8 + 16), 35632);
  GPUTools::ResourceUpdater::_GetCombinedLinkedShaderSource(this, a3 + 18, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__p.__r_.__value_.__l.__size_)
    {
LABEL_8:
      v12 = 1;
      goto LABEL_10;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_14;
    }

    p_p = &__p;
  }

  if (GPUTools::ResourceUpdater::_UpdateShader(this, v9, p_p, 0, 0))
  {
    (*(this->__r_.__value_.__r.__words[2] + 4784))(*(this->__r_.__value_.__l.__size_ + 16), a4, v9);
    GPUTools::GL::CopyProgramActiveAttributes();
    goto LABEL_8;
  }

  v12 = 0;
LABEL_10:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else if (!v12)
  {
    goto LABEL_33;
  }

LABEL_14:
  GPUTools::ResourceUpdater::_GetCombinedLinkedShaderSource(this, a3 + 21, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_21;
    }

    v13 = __p.__r_.__value_.__r.__words[0];
LABEL_19:
    if (!GPUTools::ResourceUpdater::_UpdateShader(this, v10, v13, 0, 0))
    {
      v14 = 0;
LABEL_23:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v14)
        {
          goto LABEL_33;
        }
      }

      else if (!v14)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }

    (*(this->__r_.__value_.__r.__words[2] + 4784))(*(this->__r_.__value_.__l.__size_ + 16), a4, v10);
LABEL_21:
    v14 = 1;
    goto LABEL_23;
  }

  if (*(&__p.__r_.__value_.__s + 23))
  {
    v13 = &__p;
    goto LABEL_19;
  }

LABEL_27:
  v15 = this->__r_.__value_.__r.__words[0];
  if (*(this->__r_.__value_.__r.__words[0] + 4846) == 1)
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    (*(this->__r_.__value_.__r.__words[2] + 5264))(*(this->__r_.__value_.__l.__size_ + 16), a2, 33368, &__p);
    (*(this->__r_.__value_.__r.__words[2] + 5512))(*(this->__r_.__value_.__l.__size_ + 16), a4, 33368, LODWORD(__p.__r_.__value_.__l.__data_));
    v15 = this->__r_.__value_.__r.__words[0];
  }

  if (*(v15 + 3460) >= 3)
  {
    GPUTools::GL::CopyProgramTransformFeedbackVaryings();
    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    (*(this->__r_.__value_.__r.__words[2] + 5264))(*(this->__r_.__value_.__l.__size_ + 16), a2, 33367, &__p);
    (*(this->__r_.__value_.__r.__words[2] + 5512))(*(this->__r_.__value_.__l.__size_ + 16), a4, 33367, LODWORD(__p.__r_.__value_.__l.__data_));
  }

  (*(this->__r_.__value_.__r.__words[2] + 4792))(*(this->__r_.__value_.__l.__size_ + 16), a4);
  (*(this->__r_.__value_.__r.__words[2] + 4744))(*(this->__r_.__value_.__l.__size_ + 16), a4, v9);
  (*(this->__r_.__value_.__r.__words[2] + 4744))(*(this->__r_.__value_.__l.__size_ + 16), a4, v10);
  v16 = *(this->__r_.__value_.__r.__words[0] + 3456);
  GPUTools::GL::CopyProgramActiveUniforms();
  if (*(this->__r_.__value_.__r.__words[0] + 3460) >= 3)
  {
    GPUTools::GL::CopyProgramActiveUniformBlockBindings();
  }

LABEL_33:
  (*(this->__r_.__value_.__r.__words[2] + 4728))(*(this->__r_.__value_.__l.__size_ + 16), v10);
  return (*(this->__r_.__value_.__r.__words[2] + 4728))(*(this->__r_.__value_.__l.__size_ + 16), v9);
}

void sub_1E0014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GPUTools::ResourceUpdater::UpdateProgram(uint64_t **this, unsigned int a2, NSDictionary *a3, NSMutableDictionary *a4)
{
  v70 = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN8GPUTools15ResourceUpdater13UpdateProgramEjP12NSDictionaryP19NSMutableDictionary_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = this;
  v75 = 0;
  v74[0] = off_20D5F8;
  v74[1] = _Block_copy(aBlock);
  v75 = v74;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v76, v74);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v74);
  install_caching_dispatch(**this);
  v7 = (this[2][597])(this[1][2]);
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = ___ZN8GPUTools15ResourceUpdater13UpdateProgramEjP12NSDictionaryP19NSMutableDictionary_block_invoke_2;
  v67[3] = &__block_descriptor_44_e5_v8__0l;
  v67[4] = this;
  v68 = v7;
  v72 = 0;
  v71[0] = off_20D5F8;
  v71[1] = _Block_copy(v67);
  v72 = v71;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v73, v71);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v71);
  GPUTools::ResourceUpdater::_DisableTransformFeedbacks(this, v70);
  v8 = (*this)[5];
  v62[0] = &v70;
  v9 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v8 + 104), &v70);
  v11 = v9[3];
  v10 = v9[4];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = [(NSDictionary *)a3 objectForKey:kDYResourceProgramVtxSourceKey];
  v52 = v12;
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = [v12 UTF8String];
  v14 = kDYReservedGLNameResourceUpdaterVertexShader;
  if (GPUTools::ResourceUpdater::_UpdateShader(this, kDYReservedGLNameResourceUpdaterVertexShader, v13, a4, kDYResourceProgramVtxInfoLogKey))
  {
    (this[2][598])(this[1][2], v7, v14);
    *(v11 + 368);
    GPUTools::GL::CopyProgramActiveAttributes();
LABEL_6:
    v15 = 2;
    v16 = 1;
    goto LABEL_8;
  }

  v16 = 0;
  v15 = 3;
LABEL_8:
  v17 = [(NSDictionary *)a3 objectForKey:kDYResourceProgramFragSourceKey];
  v18 = v17;
  if (v17)
  {
    v19 = v11;
    v20 = [v17 UTF8String];
    v21 = kDYReservedGLNameResourceUpdaterFragmentShader;
    if (!GPUTools::ResourceUpdater::_UpdateShader(this, kDYReservedGLNameResourceUpdaterFragmentShader, v20, a4, kDYResourceProgramFragInfoLogKey))
    {
LABEL_32:
      v37 = [NSNumber numberWithUnsignedInt:v15];
      [(NSMutableDictionary *)a4 setObject:v37 forKey:kDYResourceProgramCompilationFailedKey];
      v29 = 0;
      goto LABEL_63;
    }

    (this[2][598])(this[1][2], v7, v21);
    v11 = v19;
  }

  if ((v16 & 1) == 0)
  {
    v15 = 1;
    goto LABEL_32;
  }

  v22 = *this;
  if (*(*this + 4846) == 1)
  {
    LODWORD(v62[0]) = 0;
    (this[2][658])(this[1][2], v70, 33368, v62);
    (this[2][689])(this[1][2], v7, 33368, LODWORD(v62[0]));
    v22 = *this;
  }

  if (*(v22 + 865) >= 3)
  {
    v23 = *(v11 + 368);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v70;
    }

    GPUTools::GL::CopyProgramTransformFeedbackVaryings();
    LODWORD(v62[0]) = 0;
    (this[2][658])(this[1][2], v24, 33367, v62);
    (this[2][689])(this[1][2], v7, 33367, LODWORD(v62[0]));
  }

  (this[2][599])(this[1][2], v7);
  v25 = kDYReservedGLNameResourceUpdaterVertexShader;
  (this[2][593])(this[1][2], v7, kDYReservedGLNameResourceUpdaterVertexShader);
  v51 = kDYReservedGLNameResourceUpdaterFragmentShader;
  (this[2][593])(this[1][2], v7);
  memset(__n, 0, sizeof(__n));
  (this[2][658])(this[1][2], v7, 35716, __n);
  std::string::resize(&__n[1], __n[0], 0);
  if (__n[6] >= 0)
  {
    v26 = &__n[1];
  }

  else
  {
    v26 = *&__n[1];
  }

  (this[2][660])(this[1][2], v7, __n[0], 0, v26);
  if (__n[6] >= 0)
  {
    v27 = &__n[1];
  }

  else
  {
    v27 = *&__n[1];
  }

  v28 = [NSString stringWithCString:v27 encoding:1];
  [(NSMutableDictionary *)a4 setObject:v28 forKey:kDYResourceProgramInfoLogKey];
  v65 = 0;
  (this[2][658])(this[1][2], v7, 35714, &v65);
  v29 = v65 != 0;
  if (v65)
  {
    if (!*(v11 + 368))
    {
      PrivateGLProgram = CreatePrivateGLProgram(**this);
      *(v11 + 368) = PrivateGLProgram;
      GPUTools::ResourceUpdater::_CopyProgram(this, v70, v11, PrivateGLProgram);
    }

    v49 = v29;
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x5812000000;
    v62[3] = __Block_byref_object_copy__2;
    v62[4] = __Block_byref_object_dispose__0;
    v62[5] = &unk_20760A;
    memset(v63, 0, sizeof(v63));
    v64 = 1065353216;
    v31 = *(*this + 864);
    *&__sz[1] = _NSConcreteStackBlock;
    v55 = 3221225472;
    v56 = ___ZN8GPUTools15ResourceUpdater13UpdateProgramEjP12NSDictionaryP19NSMutableDictionary_block_invoke_3;
    v57 = &unk_20D558;
    v60 = v70;
    v61 = v7;
    v58 = v62;
    v59 = this;
    v50 = v10;
    GPUTools::GL::EnumerateProgramActiveUniforms();
    __sz[0] = 0;
    memset(&v53, 0, sizeof(v53));
    (this[2][658])(this[1][2], v70, 35717, __sz);
    std::vector<unsigned int>::resize(&v53, __sz[0]);
    (this[2][759])(this[1][2], v70, __sz[0], 0, v53.__begin_);
    v32 = v25;
    v33 = v11;
    begin = v53.__begin_;
    end = v53.__end_;
    while (begin != end)
    {
      v36 = *begin;
      (this[2][598])(this[1][2], v7, v36);
      (this[2][593])(this[1][2], v70, v36);
      ++begin;
    }

    v38 = v33;
    v39 = v32;
    v10 = v50;
    if (v52)
    {
      (this[2][598])(this[1][2], v70, v39);
      GPUTools::GL::CopyProgramActiveAttributes();
    }

    if (v18)
    {
      (this[2][598])(this[1][2], v70, v51);
    }

    if (*(*this + 865) >= 3)
    {
      v40 = *(v33 + 368);
      GPUTools::GL::CopyProgramTransformFeedbackVaryings();
    }

    (this[2][599])(this[1][2], v70);
    if (gDYResourceUpdateCallbackBlock)
    {
      (*(gDYResourceUpdateCallbackBlock + 16))();
    }

    if (v18)
    {
      (this[2][593])(this[1][2], v70, v51);
    }

    if (v52)
    {
      (this[2][593])(this[1][2], v70, v39);
    }

    v41 = v53.__begin_;
    v42 = v53.__end_;
    while (v41 != v42)
    {
      v43 = *v41;
      (this[2][598])(this[1][2], v70, v43);
      (this[2][593])(this[1][2], v7, v43);
      ++v41;
    }

    v44 = *(*this + 864);
    v45 = *(v38 + 368);
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    GPUTools::GL::EnumerateProgramActiveUniforms();
    v46 = *(*this + 864);
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    GPUTools::GL::EnumerateProgramActiveUniforms();
    if (*(*this + 865) >= 3)
    {
      v47 = *(v38 + 368);
      GPUTools::GL::CopyProgramActiveUniformBlockBindings();
    }

    *(v38 + 376) = 1;
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    v29 = v49;
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    if (v53.__begin_)
    {
      v53.__end_ = v53.__begin_;
      operator delete(v53.__begin_);
    }

    _Block_object_dispose(v62, 8);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v63);
  }

  if (SHIBYTE(__n[6]) < 0)
  {
    operator delete(*&__n[1]);
  }

LABEL_63:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  GPUTools::ScopeFunction::~ScopeFunction(v73);
  GPUTools::ScopeFunction::~ScopeFunction(v76);
  return v29;
}

void sub_1E09EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a42, 8);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a48);
  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  GPUTools::ScopeFunction::~ScopeFunction((v59 - 208));
  GPUTools::ScopeFunction::~ScopeFunction((v59 - 144));
  _Unwind_Resume(a1);
}

uint64_t ___ZN8GPUTools15ResourceUpdater13UpdateProgramEjP12NSDictionaryP19NSMutableDictionary_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  GPUTools::ResourceUpdater::_EnableTransformFeedbacks(v1);
  v2 = **v1;
  v3 = choose_dispatch_table();

  return install_dispatch_table(v2, v3);
}

void *GPUTools::ResourceUpdater::_EnableTransformFeedbacks(void *this)
{
  if (*(*this + 3460) >= 3)
  {
    v1 = this;
    v2 = this[16];
    v3 = this[17];
    if (v2 != v3)
    {
      do
      {
        GPUTools::ResourceUpdater::_RestoreTransformFeedback(v1, v2);
        v2 += 6;
      }

      while (v2 != v3);
      v2 = *(v1 + 128);
    }

    *(v1 + 136) = v2;
    GPUTools::ResourceUpdater::_RestoreTransformFeedback(v1, (v1 + 104));
    this = (*(*(v1 + 16) + 4800))(*(*(v1 + 8) + 16), *(v1 + 152));
    if (*(*v1 + 4846))
    {
      v4 = *(*(v1 + 16) + 6576);
      v5 = *(*(v1 + 8) + 16);
      v6 = *(v1 + 156);

      return v4(v5, v6);
    }
  }

  return this;
}

void GPUTools::ResourceUpdater::_DisableTransformFeedbacks(GPUTools::ResourceUpdater *this, int a2)
{
  if (*(*this + 3460) >= 3)
  {
    (*(*(this + 2) + 832))(*(*(this + 1) + 16), 35725, this + 152);
    (*(*(this + 2) + 832))(*(*(this + 1) + 16), 33370, this + 156);
    if (*(*this + 4862) == 1)
    {
      (*(*(this + 2) + 832))(*(*(this + 1) + 16), 36389, this + 104);
    }

    else
    {
      *(this + 26) = 0;
    }

    (*(*(this + 2) + 792))(*(*(this + 1) + 16), 36388, this + 124);
    if (*(this + 124) == 1)
    {
      (*(*(this + 2) + 792))(*(*(this + 1) + 16), 36387, this + 125);
      *(this + 108) = *(std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*this + 3560), this + 26) + 20);
      [**this getParameter:1503 to:&v29];
      *(this + 116) = v29;
      (*(*(this + 2) + 5576))(*(*(this + 1) + 16));
    }

    v29 = 0;
    v30 = 0;
    GPUTools::NameTargetTupleArray::querySpecificObjectList(*this, &v29, &stru_650.sectname[1]);
    v4 = *v29;
    if (v4)
    {
      v5 = v30;
      v6 = v30;
      do
      {
        if (*v6 != *(this + 26))
        {
          v28 = 0;
          (*(*(this + 2) + 7232))(*(*(this + 1) + 16), 36386);
          (*(*(this + 2) + 792))(*(*(this + 1) + 16), 36388, &v28);
          if (v28)
          {
            v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::find<unsigned int>((*this + 3560), v6);
            if (*(v7 + 5) == a2)
            {
              v27 = 0;
              (*(*(this + 2) + 792))(*(*(this + 1) + 16), 36388, &v27);
              [**this getParameter:1503 to:&v26];
              v8 = *v6;
              *&v9 = *(v7 + 20);
              v10 = v26;
              v11 = v28;
              v12 = v27;
              v13 = *(this + 17);
              v14 = *(this + 18);
              if (v13 >= v14)
              {
                v16 = *(this + 16);
                v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v16) >> 3);
                v18 = v17 + 1;
                if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<ProgramShaderInfo>::__throw_length_error[abi:ne200100]();
                }

                v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v16) >> 3);
                if (2 * v19 > v18)
                {
                  v18 = 2 * v19;
                }

                if (v19 >= 0x555555555555555)
                {
                  v20 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v20 = v18;
                }

                if (v20)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::ResourceUpdater::TransformFeedbackInfo>>(this + 128, v20);
                }

                v21 = 24 * v17;
                *v21 = v8;
                *(&v9 + 1) = v10;
                *(v21 + 4) = v9;
                *(v21 + 20) = v11;
                *(v21 + 21) = v12;
                v15 = 24 * v17 + 24;
                v22 = *(this + 16);
                v23 = *(this + 17) - v22;
                v24 = v21 - v23;
                memcpy((v21 - v23), v22, v23);
                v25 = *(this + 16);
                *(this + 16) = v24;
                *(this + 17) = v15;
                *(this + 18) = 0;
                if (v25)
                {
                  operator delete(v25);
                }
              }

              else
              {
                *v13 = v8;
                *(&v9 + 1) = v10;
                *(v13 + 4) = v9;
                *(v13 + 20) = v11;
                *(v13 + 21) = v12;
                v15 = v13 + 24;
              }

              *(this + 17) = v15;
              (*(*(this + 2) + 5576))(*(*(this + 1) + 16));
            }
          }

          v5 = v30;
          v4 = *v29;
        }

        v6 += 2;
      }

      while (v6 != &v5[2 * v4]);
    }

    (*(*(this + 2) + 7232))(*(*(this + 1) + 16), 36386, 0);
    GPUTools::NameTargetTupleArray::reset(&v29);
  }
}

void sub_1E0FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  GPUTools::NameTargetTupleArray::reset(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN8GPUTools15ResourceUpdater13UpdateProgramEjP12NSDictionaryP19NSMutableDictionary_block_invoke_3(uint64_t a1)
{
  v2 = *(**(a1 + 40) + 3456);
  v3 = *(a1 + 48);
  v4 = *(a1 + 52);
  result = GPUTools::GL::CopyProgramUniform();
  if (result != -1)
  {
    v6 = *(*(a1 + 32) + 8) + 48;

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_impl<char * const&>();
  }

  return result;
}

void ___ZN8GPUTools15ResourceUpdater13UpdateProgramEjP12NSDictionaryP19NSMutableDictionary_block_invoke_2_5(uint64_t a1, char **a2)
{
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, *a2);
  v6 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((v5 + 48), __p);
  v7 = v6;
  if ((v14 & 0x80000000) == 0)
  {
    if (v6)
    {
      return;
    }

LABEL_5:
    v8 = *(*v4 + 3456);
    v9 = *(*(a1 + 48) + 368);
    v10 = *(a1 + 64);
    v11 = GPUTools::GL::CopyProgramUniform();
    v12 = *(a1 + 48);
    __p[0] = a2 + 28;
    *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v12 + 328), a2 + 7) + 5) = v11;
    return;
  }

  operator delete(__p[0]);
  if (!v7)
  {
    goto LABEL_5;
  }
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

uint64_t __copy_helper_block_e8_48c39_ZTSNSt3__110shared_ptrI11ProgramInfoEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c39_ZTSNSt3__110shared_ptrI11ProgramInfoEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN8GPUTools15ResourceUpdater13UpdateProgramEjP12NSDictionaryP19NSMutableDictionary_block_invoke_6(uint64_t a1, char **a2)
{
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, *a2);
  v6 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((v5 + 48), __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    v7 = *(*v4 + 3456);
    v8 = *(a1 + 64);
    v9 = *(a1 + 68);
    v10 = GPUTools::GL::CopyProgramUniform();
    v11 = *(a1 + 48);
    __p[0] = a2 + 28;
    *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((v11 + 328), a2 + 7) + 5) = v10;
  }
}

uint64_t GPUTools::ResourceUpdater::_RestoreTransformFeedback(void *a1, unsigned int *a2)
{
  result = (*(a1[2] + 7232))(*(a1[1] + 16), 36386, *a2);
  if (*(a2 + 20) == 1)
  {
    (*(a1[2] + 4800))(*(a1[1] + 16), a2[1]);
    if (*(*a1 + 4846) == 1)
    {
      (*(a1[2] + 6576))(*(a1[1] + 16), a2[2]);
    }

    result = (*(a1[2] + 5568))(*(a1[1] + 16), a2[3]);
    if (*(a2 + 21) == 1)
    {
      v5 = *(a1[2] + 7256);
      v6 = *(a1[1] + 16);

      return v5(v6);
    }
  }

  return result;
}

void GPUTools::ResourceUpdater::_CreateMipmapTexture(uint64_t **this)
{
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN8GPUTools15ResourceUpdater20_CreateMipmapTextureEjii_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  v4 = 0;
  aBlock[4] = this;
  v3[0] = off_20D5F8;
  v3[1] = _Block_copy(aBlock);
  v4 = v3;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v5, v3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3);
  install_caching_dispatch(**this);
  operator new[]();
}

uint64_t ___ZN8GPUTools15ResourceUpdater20_CreateMipmapTextureEjii_block_invoke(uint64_t a1)
{
  v1 = ***(a1 + 32);
  v2 = choose_dispatch_table();

  return install_dispatch_table(v1, v2);
}

uint64_t GPUTools::ResourceUpdater::_OverrideTextureWithMapmapTexture(uint64_t **this, uint64_t a2, uint64_t a3)
{
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN8GPUTools15ResourceUpdater33_OverrideTextureWithMapmapTextureEjj_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = this;
  v22 = 0;
  v21[0] = off_20D5F8;
  v21[1] = _Block_copy(aBlock);
  v22 = v21;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v23, v21);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v21);
  install_caching_dispatch(**this);
  v6 = (*this)[5];
  *(v19 + 7) = 0;
  v19[0] = 0;
  GPUTools::GL::DYGetTextureTargetInfo();
  v18 = 0;
  (this[2][104])(this[1][2], 0, &v18);
  (this[2][5])(this[1][2], a3, a2);
  v16 = 0;
  v17 = 0;
  if (a3 == 34067)
  {
    v7 = 34069;
  }

  else
  {
    v7 = a3;
  }

  (this[2][125])(this[1][2], v7, 0, 4096, &v17);
  (this[2][125])(this[1][2], v7, 0, 4097, &v16);
  v8 = v17;
  if (v17 < 1 || (v9 = vcnt_s8(v17), v9.i16[0] = vaddlv_u8(v9), v9.i32[0] > 1u) || (v10 = v16, v16 < 1) || (v11 = vcnt_s8(v16), v11.i16[0] = vaddlv_u8(v11), v11.i32[0] >= 2u))
  {
    v10 = 1;
    v16 = 1;
    v17 = 1;
    v8 = 1;
  }

  v15 = v10 | (v8 << 32);
  v12 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::find<unsigned long long>((v6 + 152), &v15);
  if (!v12)
  {
    GPUTools::ResourceUpdater::_CreateMipmapTexture(this);
  }

  v13 = *(v12 + 6);
  (this[2][5])(this[1][2], a3, v18);
  GPUTools::ScopeFunction::~ScopeFunction(v23);
  return v13;
}

uint64_t ___ZN8GPUTools15ResourceUpdater33_OverrideTextureWithMapmapTextureEjj_block_invoke(uint64_t a1)
{
  v1 = ***(a1 + 32);
  v2 = choose_dispatch_table();

  return install_dispatch_table(v1, v2);
}

uint64_t GPUTools::ResourceUpdater::UpdateTexture(uint64_t **this, unsigned int a2, NSDictionary *a3, NSMutableDictionary *a4)
{
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN8GPUTools15ResourceUpdater13UpdateTextureEjP12NSDictionaryP19NSMutableDictionary_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = this;
  v14 = 0;
  v13[0] = off_20D5F8;
  v13[1] = _Block_copy(aBlock);
  v14 = v13;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v15, v13);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v13);
  install_caching_dispatch(**this);
  v7 = [-[NSDictionary objectForKey:](a3 objectForKey:{kDYResourceOverrideKey), "unsignedIntValue"}];
  if (v7 - 3 <= 0xFFFFFFFD)
  {
    __assert_rtn("BOOL GPUTools::ResourceUpdater::UpdateTexture(GLuint, NSDictionary *, NSMutableDictionary *)", &unk_204462, 0, "unsafeOverride > 0 && unsafeOverride < kMaxResourceOverrides");
  }

  v8 = (*this)[5];
  if (v7 == 2)
  {
    v10 = a2;
    v12 = &v10;
    *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v8 + 192), &v10) + 6) = 2;
  }

  else
  {
    v12 = a2;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__erase_unique<unsigned long long>((v8 + 192), &v12);
  }

  GPUTools::ScopeFunction::~ScopeFunction(v15);
  return 1;
}

uint64_t ___ZN8GPUTools15ResourceUpdater13UpdateTextureEjP12NSDictionaryP19NSMutableDictionary_block_invoke(uint64_t a1)
{
  v1 = ***(a1 + 32);
  v2 = choose_dispatch_table();

  return install_dispatch_table(v1, v2);
}

uint64_t GPUTools::ResourceUpdater::_GetOverrideTexture(uint64_t **a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 2)
  {

    return GPUTools::ResourceUpdater::_OverrideTextureWithMapmapTexture(a1, a2, a3);
  }

  else if (a4 == 1 || a4 == 3)
  {
    v6 = dy_abort();
    return GPUTools::ResourceUpdater::_CopyMipmapTexParams(v6, v7, v8, v9);
  }

  else
  {
    return 0;
  }
}

uint64_t GPUTools::ResourceUpdater::_CopyMipmapTexParams(GPUTools::ResourceUpdater *this, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v11 = 0;
  v12 = 0;
  v9 = 0.0;
  v10 = 1000;
  v8 = 1000.0;
  (*(*(this + 2) + 40))(*(*(this + 1) + 16));
  (*(*(this + 2) + 1016))(*(*(this + 1) + 16), a2, 10240, &v12 + 4);
  (*(*(this + 2) + 1016))(*(*(this + 1) + 16), a2, 10241, &v12);
  (*(*(this + 2) + 1008))(*(*(this + 1) + 16), a2, 34046, &v11 + 4);
  if (*(*this + 3460) < 2)
  {
    if (is_extension_available(*this, "GL_APPLE_texture_max_level"))
    {
      (*(*(this + 2) + 1016))(*(*(this + 1) + 16), a2, 33085, &v10);
    }
  }

  else
  {
    (*(*(this + 2) + 1016))(*(*(this + 1) + 16), a2, 33084, &v11);
    (*(*(this + 2) + 1016))(*(*(this + 1) + 16), a2, 33085, &v10);
    (*(*(this + 2) + 1008))(*(*(this + 1) + 16), a2, 33082, &v9);
    (*(*(this + 2) + 1008))(*(*(this + 1) + 16), a2, 33083, &v8);
  }

  (*(*(this + 2) + 40))(*(*(this + 1) + 16), a2, a4);
  (*(*(this + 2) + 2432))(*(*(this + 1) + 16), a2, 10240, HIDWORD(v12));
  (*(*(this + 2) + 2432))(*(*(this + 1) + 16), a2, 10241, v12);
  (*(*(this + 2) + 2416))(*(*(this + 1) + 16), a2, 34046, *(&v11 + 1));
  if (*(*this + 3460) < 2)
  {
    result = is_extension_available(*this, "GL_APPLE_texture_max_level");
    if (result)
    {
      return (*(*(this + 2) + 2432))(*(*(this + 1) + 16), a2, 33085, v10);
    }
  }

  else
  {
    (*(*(this + 2) + 2432))(*(*(this + 1) + 16), a2, 33084, v11);
    (*(*(this + 2) + 2432))(*(*(this + 1) + 16), a2, 33085, v10);
    (*(*(this + 2) + 2416))(*(*(this + 1) + 16), a2, 33082, v9);
    return (*(*(this + 2) + 2416))(*(*(this + 1) + 16), a2, 33083, v8);
  }

  return result;
}

void GPUTools::ResourceUpdater::ApplyDrawOverrides(uint64_t **this)
{
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN8GPUTools15ResourceUpdater18ApplyDrawOverridesEv_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = this;
  v18 = 0;
  v17[0] = off_20D5F8;
  v17[1] = _Block_copy(aBlock);
  v18 = v17;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v19, v17);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v17);
  install_caching_dispatch(**this);
  v2 = *this;
  v3 = (*this)[5];
  if (*(v3 + 216))
  {
    v14 = 0;
    if (*(v2 + 861))
    {
      v4 = 0;
      do
      {
        (this[2][342])(this[1][2], v4 + 33984);
        v2 = *this;
        v5 = (*this)[426];
        v6 = (*this)[427];
        if (v5 != v6)
        {
          do
          {
            v7 = *v5;
            if (v7 == 34067)
            {
              v8 = &(*this)[5 * v14 + 262];
              v9 = (this + 8);
            }

            else
            {
              if (v7 != 3553)
              {
                v13 = *v5;
                dy_abort();
                __break(1u);
              }

              v8 = (&(*this)[5 * v14 + 260] + 4);
              v9 = (this + 3);
            }

            v10 = *v8;
            v16 = v10;
            v11 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::find<unsigned long long>((v3 + 192), &v16);
            if (v11)
            {
              OverrideTexture = GPUTools::ResourceUpdater::_GetOverrideTexture(this, v10, v7, *(v11 + 6));
              GPUTools::ResourceUpdater::_CopyMipmapTexParams(this, v7, v10, OverrideTexture);
              (this[2][5])(this[1][2], v7, OverrideTexture);
              v16 = &v14;
              *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v9, &v14) + 5) = v10;
            }

            ++v5;
          }

          while (v5 != v6);
          v2 = *this;
        }

        v4 = v14 + 1;
        v14 = v4;
      }

      while (v4 < *(v2 + 861));
    }

    (this[2][342])(this[1][2], *(v2 + 518));
  }

  GPUTools::ScopeFunction::~ScopeFunction(v19);
}

void sub_1E234C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  GPUTools::ScopeFunction::~ScopeFunction(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN8GPUTools15ResourceUpdater18ApplyDrawOverridesEv_block_invoke(uint64_t a1)
{
  v1 = ***(a1 + 32);
  v2 = choose_dispatch_table();

  return install_dispatch_table(v1, v2);
}

void GPUTools::ResourceUpdater::RemoveDrawOverrides(uint64_t **this)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = ___ZN8GPUTools15ResourceUpdater19RemoveDrawOverridesEv_block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v6 = 0;
  v4[4] = this;
  v5[0] = off_20D5F8;
  v5[1] = _Block_copy(v4);
  v6 = v5;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v7, v5);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  install_caching_dispatch(**this);
  for (i = (this + 5); ; (this[2][5])(this[1][2], 3553, *(i + 5)))
  {
    i = *i;
    if (!i)
    {
      break;
    }

    (this[2][342])(this[1][2], (*(i + 4) + 33984));
  }

  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(this + 3);
  for (j = (this + 10); ; (this[2][5])(this[1][2], 34067, *(j + 5)))
  {
    j = *j;
    if (!j)
    {
      break;
    }

    (this[2][342])(this[1][2], (*(j + 4) + 33984));
  }

  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(this + 8);
  (this[2][342])(this[1][2], *(*this + 518));
  GPUTools::ScopeFunction::~ScopeFunction(v7);
}

void sub_1E257C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN8GPUTools15ResourceUpdater19RemoveDrawOverridesEv_block_invoke(uint64_t a1)
{
  v1 = ***(a1 + 32);
  v2 = choose_dispatch_table();

  return install_dispatch_table(v1, v2);
}

void GPUTools::ResourceUpdater::ClearOverrides(uint64_t **this)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = ___ZN8GPUTools15ResourceUpdater14ClearOverridesEv_block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v6 = 0;
  v4[4] = this;
  v5[0] = off_20D5F8;
  v5[1] = _Block_copy(v4);
  v6 = v5;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v7, v5);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  install_caching_dispatch(**this);
  v2 = (*this)[5];
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(v2 + 24);
  for (i = v2 + 21; ; (this[2][59])(this[1][2], 1, i + 3))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(v2 + 19);
  GPUTools::ScopeFunction::~ScopeFunction(v7);
}

void sub_1E2748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  GPUTools::ScopeFunction::~ScopeFunction(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN8GPUTools15ResourceUpdater14ClearOverridesEv_block_invoke(uint64_t a1)
{
  v1 = ***(a1 + 32);
  v2 = choose_dispatch_table();

  return install_dispatch_table(v1, v2);
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<void({block_pointer})(void),std::allocator<void({block_pointer})(void)>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = off_20D5F8;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void std::__function::__func<void({block_pointer})(void),std::allocator<void({block_pointer})(void)>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  *(a1 + 8) = 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<ProgramInfo>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1E2D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E2DD8(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(v2 + 8) = v4;
  v5 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<GPUTools::ResourceUpdater::TransformFeedbackInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::__unordered_map_hasher<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::hash<EAGLSharegroup *>,std::equal_to<EAGLSharegroup *>,true>,std::__unordered_map_equal<EAGLSharegroup *,std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>,std::equal_to<EAGLSharegroup *>,std::hash<EAGLSharegroup *>,true>,std::allocator<std::__hash_value_type<EAGLSharegroup *,SharegroupInfo *>>>::erase(a1, result);
    return (&dword_0 + 1);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t install_caching_dispatch(uint64_t a1)
{
  v2 = GLCFrontDispatch();
  install_dispatch_table(a1, v2);
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();
  install_dispatch_function();

  return install_dispatch_function();
}

uint64_t viewport(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v11 = *(v9 + 32);
    v12 = v11 >= a1;
    v13 = v11 < a1;
    if (v12)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * v13);
  }

  while (v9);
  if (v10 == ContextInfo::activeCtxInfoMap + 8 || *(v10 + 32) > a1)
  {
LABEL_9:
    v10 = ContextInfo::activeCtxInfoMap + 8;
  }

  v14 = *(v10 + 40);
  result = (*(*(v14 + 32) + 2680))(a1, a2, a3, a4, a5);
  *(v14 + 3360) = v8;
  *(v14 + 3364) = v7;
  *(v14 + 3368) = v6;
  *(v14 + 3372) = v5;
  return result;
}

uint64_t client_active_texture(__GLIContextRec *a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a1;
    v7 = v5 < a1;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == ContextInfo::activeCtxInfoMap + 8 || *(v4 + 32) > a1)
  {
LABEL_9:
    v4 = ContextInfo::activeCtxInfoMap + 8;
  }

  v8 = *(v4 + 40);
  result = (*(*(v8 + 32) + 2728))(a1, a2);
  *(v8 + 2076) = v2;
  return result;
}

uint64_t active_texture(__GLIContextRec *a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a1;
    v7 = v5 < a1;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == ContextInfo::activeCtxInfoMap + 8 || *(v4 + 32) > a1)
  {
LABEL_9:
    v4 = ContextInfo::activeCtxInfoMap + 8;
  }

  v8 = *(v4 + 40);
  result = (*(*(v8 + 32) + 2736))(a1, a2);
  *(v8 + 2072) = v2;
  return result;
}

uint64_t *vertex_attrib1f(__GLIContextRec *a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_f32[0];
  v4 = a2;
  v5 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a1;
    v9 = v7 < a1;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 == ContextInfo::activeCtxInfoMap + 8 || *(v6 + 32) > a1)
  {
LABEL_9:
    v6 = ContextInfo::activeCtxInfoMap + 8;
  }

  v10 = *(v6 + 40);
  (*(v10[4] + 3808))(a1, a2, a3);

  return wrapper_cache_vertex_attrib(v10, v4, 5126, v3, 0.0, 0.0, 1.0);
}

uint64_t *vertex_attrib2f(__GLIContextRec *a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v4 = a4.n128_f32[0];
  v5 = a3.n128_f32[0];
  v6 = a2;
  v7 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= a1;
    v11 = v9 < a1;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 == ContextInfo::activeCtxInfoMap + 8 || *(v8 + 32) > a1)
  {
LABEL_9:
    v8 = ContextInfo::activeCtxInfoMap + 8;
  }

  v12 = *(v8 + 40);
  (*(v12[4] + 3832))(a1, a2, a3, a4);

  return wrapper_cache_vertex_attrib(v12, v6, 5126, v5, v4, 0.0, 1.0);
}

uint64_t *vertex_attrib3f(__GLIContextRec *a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = a5.n128_f32[0];
  v6 = a4.n128_f32[0];
  v7 = a3.n128_f32[0];
  v8 = a2;
  v9 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v11 = *(v9 + 32);
    v12 = v11 >= a1;
    v13 = v11 < a1;
    if (v12)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * v13);
  }

  while (v9);
  if (v10 == ContextInfo::activeCtxInfoMap + 8 || *(v10 + 32) > a1)
  {
LABEL_9:
    v10 = ContextInfo::activeCtxInfoMap + 8;
  }

  v14 = *(v10 + 40);
  (*(v14[4] + 3856))(a1, a2, a3, a4, a5);

  return wrapper_cache_vertex_attrib(v14, v8, 5126, v7, v6, v5, 1.0);
}

uint64_t *vertex_attrib4f(__GLIContextRec *a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v6 = a6.n128_f32[0];
  v7 = a5.n128_f32[0];
  v8 = a4.n128_f32[0];
  v9 = a3.n128_f32[0];
  v10 = a2;
  v11 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v13 = *(v11 + 32);
    v14 = v13 >= a1;
    v15 = v13 < a1;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v12 == ContextInfo::activeCtxInfoMap + 8 || *(v12 + 32) > a1)
  {
LABEL_9:
    v12 = ContextInfo::activeCtxInfoMap + 8;
  }

  v16 = *(v12 + 40);
  (*(v16[4] + 3880))(a1, a2, a3, a4, a5, a6);

  return wrapper_cache_vertex_attrib(v16, v10, 5126, v9, v8, v7, v6);
}

uint64_t shader_source_ARB(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const char **a4, const int *a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  wrapper_cache_shader_source(v15, a2);
  v16 = *(*(v15 + 4) + 4760);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t transform_feedback_varyings(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  wrapper_cache_program_xfb_varyings(v15, a2);
  v16 = *(*(v15 + 4) + 5584);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t *vertex_attribI4uiv(__GLIContextRec *a1, uint64_t a2, unsigned __int32 *a3)
{
  v4 = a2;
  v5 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a1;
    v9 = v7 < a1;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 == ContextInfo::activeCtxInfoMap + 8 || *(v6 + 32) > a1)
  {
LABEL_9:
    v6 = ContextInfo::activeCtxInfoMap + 8;
  }

  v10 = *(v6 + 40);
  v11 = (*(v10[4] + 5808))(a1, a2, a3);
  v11.n128_u32[0] = *a3;
  LODWORD(v12) = a3[1];
  v13 = v11.n128_u64[0];
  v14 = v12;
  LODWORD(v15) = a3[2];
  LODWORD(v16) = a3[3];
  v17 = v15;
  v18 = v16;

  return wrapper_cache_vertex_attrib(v10, v4, 5125, v13, v14, v17, v18);
}

uint64_t bind_vertex_array(__GLIContextRec *a1)
{
  v1 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v3 = *(v1 + 32);
    v4 = v3 >= a1;
    v5 = v3 < a1;
    if (v4)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * v5);
  }

  while (v1);
  if (v2 == ContextInfo::activeCtxInfoMap + 8 || *(v2 + 32) > a1)
  {
LABEL_9:
    v2 = ContextInfo::activeCtxInfoMap + 8;
  }

  v6 = *(v2 + 40);
  (*(*(v6 + 32) + 6144))(a1);
  (*(*(v6 + 32) + 832))(*(v6 + 16), 34964, v6 + 2032);
  v7 = *(*(v6 + 32) + 832);
  v8 = *(v6 + 16);

  return v7(v8, 34965, v6 + 2036);
}

uint64_t label_object_EXT(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a1;
    v9 = v7 < a1;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 == ContextInfo::activeCtxInfoMap + 8 || *(v6 + 32) > a1)
  {
LABEL_9:
    v6 = ContextInfo::activeCtxInfoMap + 8;
  }

  v10 = *(v6 + 40);
  if (a2 == 35656)
  {
    v11 = a1;
    v12 = a2;
    v13 = a5;
    v14 = a4;
    v15 = a3;
    wrapper_cache_shader_label(*(v6 + 40), a3);
    a1 = v11;
    a2 = v12;
    a3 = v15;
    a4 = v14;
    a5 = v13;
  }

  v16 = *(*(v10 + 32) + 6512);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t insert_event_marker_EXT(__GLIContextRec *a1, uint64_t a2, char *__s1)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  result = wrapper_handle_marker_event(v11, a2, __s1);
  if ((result & 1) == 0)
  {
    v13 = *(*(v11 + 32) + 6528);

    return v13(a1, a2, __s1);
  }

  return result;
}

void delete_program_pipelines(__GLIContextRec *a1, int a2, const unsigned int *a3)
{
  v3 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a1;
    v7 = v5 < a1;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == ContextInfo::activeCtxInfoMap + 8 || *(v4 + 32) > a1)
  {
LABEL_9:
    v4 = ContextInfo::activeCtxInfoMap + 8;
  }

  v8 = *(v4 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = ___ZL24delete_program_pipelinesP15__GLIContextReciPKj_block_invoke_2;
  v9[3] = &__block_descriptor_60_e5_v8__0l;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a2;
  v9[6] = a3;
  wrapper_cache_pipeline_delete(v8, a2, a3, v9);
}

BOOL GPUTools::NameTargetTupleArray::querySpecificObjectList(id *this, void **a2, GPUTools::NameTargetTupleArray *a3)
{
  if (*a2)
  {
    free(*a2);
  }

  *a2 = 0;
  a2[1] = 0;
  v13 = 0;
  v6 = [*this getParameter:a3 to:&v13];
  if (!v6)
  {
    GPUTools::NameTargetTupleArray::set(a2, v13);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = ___ZN8GPUTools20NameTargetTupleArray23querySpecificObjectListEP11ContextInfoPS0_j_block_invoke;
    v12[3] = &__block_descriptor_40_e29_B16__0r__NameTargetTuple_II_8l;
    v12[4] = this;
    GPUTools::NameTargetTupleArray::remove_if<BOOL({block_pointer})(GPUTools::NameTargetTuple const&)>(a2, v12);
    v7 = a2[1];
    v8 = **a2;
    v14 = &__block_literal_global_2;
    v9 = 126 - 2 * __clz(v8);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v15 = &v7[8 * v8];
    v16 = v7;
    std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>,false>(&v16, &v15, &v14, v10, 1);
  }

  return v6 == 0;
}

void GPUTools::NameTargetTupleArray::reset(GPUTools::NameTargetTupleArray *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
  }

  *this = 0;
  *(this + 1) = 0;
}

void GPUTools::NameTargetTupleArray::set(GPUTools::NameTargetTupleArray *this, char *a2)
{
  if (a2)
  {
    v4 = *this;
    if (*this)
    {
      free(v4);
    }

    *this = a2;
    *(this + 1) = a2 + 4;
  }

  else
  {

    GPUTools::NameTargetTupleArray::allocate(this, 0);
  }
}

uint64_t GPUTools::NameTargetTupleArray::remove_if<BOOL({block_pointer})(GPUTools::NameTargetTuple const&)>(unsigned int **a1, uint64_t a2)
{
  v3 = *a1;
  v6 = a1[1];
  v5 = &v6[2 * *v3];
  result = std::remove_if[abi:ne200100]<GPUTools::array_iterator<GPUTools::NameTargetTuple>,BOOL({block_pointer})(GPUTools::NameTargetTuple const&)>(&v6, &v5, a2, &v7);
  **a1 = (v7 - a1[1]) >> 3;
  return result;
}

void GPUTools::NameTargetTupleArray::allocate(void **this, unsigned int a2)
{
  v4 = malloc_type_malloc((8 * a2) | 4, 0x100004052888210uLL);
  if (!v4)
  {
    GPUTools::NameTargetTupleArray::allocate();
  }

  v5 = v4;
  *v4 = a2;
  if (*this)
  {
    free(*this);
  }

  *this = v5;
  this[1] = v5 + 1;
}

id GPUTools::NameTargetTupleArray::gut(GPUTools::NameTargetTupleArray *this)
{
  v2 = [[NSData alloc] initWithBytesNoCopy:*this length:(8 * **this) | 4 freeWhenDone:1];
  *this = 0;
  *(this + 1) = 0;

  return v2;
}

unsigned int **GPUTools::NameTargetTupleArray::find@<X0>(unsigned int **this@<X0>, unsigned int a2@<W1>, unsigned int **a3@<X8>)
{
  v3 = this[1];
  v4 = **this;
  v5 = &v3[2 * v4];
  if (v4)
  {
    do
    {
      v6 = v4 >> 1;
      v7 = &v3[2 * (v4 >> 1)];
      v9 = *v7;
      v8 = v7 + 2;
      v4 += ~(v4 >> 1);
      if (v9 >= a2)
      {
        v4 = v6;
      }

      else
      {
        v3 = v8;
      }
    }

    while (v4);
  }

  if (v3 != v5 && *v3 == a2)
  {
    v5 = v3;
  }

  *a3 = v5;
  return this;
}

uint64_t std::remove_if[abi:ne200100]<GPUTools::array_iterator<GPUTools::NameTargetTuple>,BOOL({block_pointer})(GPUTools::NameTargetTuple const&)>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = result;
  v8 = *result;
  for (i = *a2; v8 != i; ++v8)
  {
    result = (*(a3 + 16))(a3, v8);
    if (result)
    {
      break;
    }
  }

  *v6 = v8;
  v10 = v8 + 1;
  if (v8 != *a2 && v10 != *a2)
  {
    do
    {
      result = (*(a3 + 16))(a3, v10);
      if ((result & 1) == 0)
      {
        **v6 = *v10;
        *v6 += 8;
      }

      ++v10;
    }

    while (v10 != *a2);
    v8 = *v6;
  }

  *a4 = v8;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>,false>(uint64_t result, uint64_t **a2, uint64_t *a3, uint64_t a4, int a5)
{
  v8 = result;
  for (i = a4 - 1; ; i = v58 - 1)
  {
    v10 = *a2;
    v11 = *v8;
    v12 = *a2 - *v8;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v61 = *a3;
        *a2 = v10 - 1;
        v62 = *v8;
        result = (*(v61 + 16))();
        if (result)
        {
          v63 = *a2;
          v64 = **v8;
          **v8 = **a2;
          *v63 = v64;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v75 = *v8;
      v78 = v11 + 2;
      v79 = v11 + 1;
      v60 = v10 - 1;
      *a2 = v60;
      v77 = v60;
      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>,0>(&v75, &v79, &v78, &v77, a3);
    }

    if (v12 == 5)
    {
      v65 = v10 - 1;
      *a2 = v10 - 1;
      v75 = v11;
      v66 = v11 + 3;
      v78 = v11 + 2;
      v79 = v11 + 1;
      v77 = v11 + 3;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>,0>(&v75, &v79, &v78, &v77, a3);
      result = (*(*a3 + 16))();
      if (!result)
      {
        return result;
      }

      v67 = *v66;
      *v66 = *v65;
      *v65 = v67;
      result = (*(*a3 + 16))();
      if (!result)
      {
        return result;
      }

      *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
      result = (*(*a3 + 16))();
      if (!result)
      {
        return result;
      }

      *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
      v68 = *(*a3 + 16);
      goto LABEL_87;
    }

LABEL_9:
    if (v12 <= 23)
    {
      v75 = *v8;
      v79 = v10;
      if (a5)
      {
        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>>(&v75, &v79, a3);
      }

      else
      {
        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>>(&v75, &v79, a3);
      }
    }

    if (i == -1)
    {
      if (v11 != v10)
      {
        v75 = *v8;
        v78 = v10;
        v79 = v10;
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>,GPUTools::array_iterator<GPUTools::NameTargetTuple>>(&v75, &v79, &v78, a3, &v77);
      }

      return result;
    }

    v74 = a5;
    v13 = v12 >> 1;
    v14 = &v11[v12 >> 1];
    v15 = v10 - 1;
    v16 = *(*a3 + 16);
    v73 = i;
    if (v12 >= 0x81)
    {
      v17 = v16();
      v18 = (*(*a3 + 16))();
      if (v17)
      {
        v19 = *v11;
        if (v18)
        {
          *v11 = *v15;
          goto LABEL_28;
        }

        *v11 = *v14;
        *v14 = v19;
        if ((*(*a3 + 16))())
        {
          v19 = *v14;
          *v14 = *v15;
LABEL_28:
          *v15 = v19;
        }
      }

      else if (v18)
      {
        v23 = *v14;
        *v14 = *v15;
        *v15 = v23;
        if ((*(*a3 + 16))())
        {
          v24 = *v11;
          *v11 = *v14;
          *v14 = v24;
        }
      }

      v27 = *v8;
      v28 = &(*v8)[v13 - 1];
      v29 = *a2 - 2;
      v30 = (*(*a3 + 16))();
      v31 = (*(*a3 + 16))();
      if (v30)
      {
        v32 = v27[1];
        if (v31)
        {
          v27[1] = *v29;
          goto LABEL_41;
        }

        v27[1] = *v28;
        *v28 = v32;
        if ((*(*a3 + 16))())
        {
          v32 = *v28;
          *v28 = *v29;
LABEL_41:
          *v29 = v32;
        }
      }

      else if (v31)
      {
        v33 = *v28;
        *v28 = *v29;
        *v29 = v33;
        if ((*(*a3 + 16))())
        {
          v34 = v27[1];
          v27[1] = *v28;
          *v28 = v34;
        }
      }

      v36 = *v8;
      v37 = &(*v8)[v13 + 1];
      v38 = *a2 - 3;
      v39 = (*(*a3 + 16))();
      v40 = (*(*a3 + 16))();
      if (v39)
      {
        v41 = v36[2];
        if (v40)
        {
          v36[2] = *v38;
          goto LABEL_50;
        }

        v36[2] = *v37;
        *v37 = v41;
        if ((*(*a3 + 16))())
        {
          v41 = *v37;
          *v37 = *v38;
LABEL_50:
          *v38 = v41;
        }
      }

      else if (v40)
      {
        v42 = *v37;
        *v37 = *v38;
        *v38 = v42;
        if ((*(*a3 + 16))())
        {
          v43 = v36[2];
          v36[2] = *v37;
          *v37 = v43;
        }
      }

      v44 = &(*v8)[v13 - 1];
      v45 = &(*v8)[v13];
      v46 = &(*v8)[v13 + 1];
      v47 = (*(*a3 + 16))();
      v48 = (*(*a3 + 16))();
      if (v47)
      {
        v49 = v44->i64[0];
        if (v48)
        {
          v44->i64[0] = *v46;
          *v46 = v49;
          a5 = v74;
        }

        else
        {
          v44->i64[0] = v45->i64[0];
          v45->i64[0] = v49;
          a5 = v74;
          if ((*(*a3 + 16))())
          {
            *v45 = vextq_s8(*v45, *v45, 8uLL);
          }
        }
      }

      else
      {
        a5 = v74;
        if (v48)
        {
          *v45 = vextq_s8(*v45, *v45, 8uLL);
          if ((*(*a3 + 16))())
          {
            *v44 = vextq_s8(*v44, *v44, 8uLL);
          }
        }
      }

      v50 = *v8;
      v51 = **v8;
      *v50 = (*v8)[v13];
      v50[v13] = v51;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v20 = v16();
    v21 = (*(*a3 + 16))();
    if (v20)
    {
      v22 = *v14;
      if (v21)
      {
        *v14 = *v15;
        *v15 = v22;
        a5 = v74;
        if (v74)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      *v14 = *v11;
      *v11 = v22;
      a5 = v74;
      if ((*(*a3 + 16))())
      {
        v35 = *v11;
        *v11 = *v15;
        *v15 = v35;
      }
    }

    else
    {
      a5 = v74;
      if (v21)
      {
        v25 = *v11;
        *v11 = *v15;
        *v15 = v25;
        if ((*(*a3 + 16))())
        {
          v26 = *v14;
          *v14 = *v11;
          *v11 = v26;
          if (v74)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        }
      }
    }

    if (a5)
    {
      goto LABEL_61;
    }

LABEL_60:
    v52 = *v8;
    if (((*(*a3 + 16))() & 1) == 0)
    {
      v57 = *v8;
      v78 = *a2;
      v79 = v57;
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,GPUTools::array_iterator<GPUTools::NameTargetTuple>,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&)>(&v79, &v78, a3, &v75);
      a5 = 0;
      *v8 = v75;
LABEL_68:
      v58 = v73;
      continue;
    }

LABEL_61:
    v53 = *v8;
    v78 = *a2;
    v79 = v53;
    std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,GPUTools::array_iterator<GPUTools::NameTargetTuple>,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&)>(&v79, &v78, a3, &v75);
    v54 = v75;
    if (v76 == 1)
    {
      v55 = *v8;
      v78 = v75;
      v79 = v55;
      v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>>(&v79, &v78, a3);
      v78 = *a2;
      v79 = v54 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>>(&v79, &v78, a3);
      if (result)
      {
        if (v56)
        {
          return result;
        }

        *a2 = v54;
        goto LABEL_68;
      }

      if (v56)
      {
        *v8 = v54 + 1;
        goto LABEL_68;
      }
    }

    v59 = *v8;
    v78 = v54;
    v79 = v59;
    v58 = v73;
    result = std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>,false>(&v79, &v78, a3, v73, a5 & 1);
    a5 = 0;
    *v8 = v54 + 1;
  }

  v69 = v10 - 1;
  *a2 = v10 - 1;
  v70 = (*(*a3 + 16))();
  result = (*(*a3 + 16))();
  if ((v70 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v72 = v11[1];
    v11[1] = *v69;
    *v69 = v72;
    v68 = *(*a3 + 16);
LABEL_87:
    result = v68();
    if (result)
    {
      *v11 = vextq_s8(*v11, *v11, 8uLL);
    }

    return result;
  }

  v71 = *v11;
  if (result)
  {
    *v11 = *v69;
  }

  else
  {
    *v11 = v11[1];
    v11[1] = v71;
    result = (*(*a3 + 16))();
    if (!result)
    {
      return result;
    }

    v71 = v11[1];
    v11[1] = *v69;
  }

  *v69 = v71;
  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>,0>(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  v10 = *a1;
  v11 = *a2;
  v12 = *a3;
  v13 = (*(*a5 + 16))();
  v14 = (*(*a5 + 16))();
  if (v13)
  {
    v15 = *v10;
    if (v14)
    {
      *v10 = *v12;
LABEL_9:
      *v12 = v15;
      goto LABEL_10;
    }

    *v10 = *v11;
    *v11 = v15;
    if ((*(*a5 + 16))())
    {
      v15 = *v11;
      *v11 = *v12;
      goto LABEL_9;
    }
  }

  else if (v14)
  {
    v16 = *v11;
    *v11 = *v12;
    *v12 = v16;
    if ((*(*a5 + 16))())
    {
      v17 = *v10;
      *v10 = *v11;
      *v11 = v17;
    }
  }

LABEL_10:
  v18 = *a4;
  v19 = *a3;
  result = (*(*a5 + 16))();
  if (result)
  {
    v21 = *a4;
    v22 = **a3;
    **a3 = **a4;
    *v21 = v22;
    v23 = *a3;
    v24 = *a2;
    result = (*(*a5 + 16))();
    if (result)
    {
      v25 = *a3;
      v26 = **a2;
      **a2 = **a3;
      *v25 = v26;
      v27 = *a2;
      v28 = *a1;
      result = (*(*a5 + 16))();
      if (result)
      {
        v29 = *a2;
        v30 = **a1;
        **a1 = **a2;
        *v29 = v30;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>>(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *result;
  v4 = *result + 8;
  if (*result != *a2 && v4 != *a2)
  {
    v8 = result;
    do
    {
      v9 = v4;
      result = (*(*a3 + 16))();
      if (result)
      {
        v11 = *v9;
        do
        {
          v10 = v3;
          v3[1] = *v3;
          if (v3 == *v8)
          {
            break;
          }

          --v3;
          result = (*(*a3 + 16))();
        }

        while ((result & 1) != 0);
        *v10 = v11;
      }

      v4 = (v9 + 1);
      v3 = v9;
    }

    while (v9 + 1 != *a2);
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>>(uint64_t result, uint64_t **a2, uint64_t a3)
{
  v3 = *result + 8;
  if (*result != *a2 && v3 != *a2)
  {
    v7 = *result - 8;
    do
    {
      v8 = v3;
      result = (*(*a3 + 16))();
      if (result)
      {
        v10 = *v8;
        v9 = v7;
        do
        {
          *(v9 + 16) = *(v9 + 8);
          result = (*(*a3 + 16))();
          v9 -= 8;
        }

        while ((result & 1) != 0);
        *(v9 + 16) = v10;
      }

      v3 = (v8 + 1);
      v7 += 8;
    }

    while (v8 + 1 != *a2);
  }

  return result;
}

uint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,GPUTools::array_iterator<GPUTools::NameTargetTuple>,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&)>@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = *a1;
  v17 = **a1;
  v9 = *a3;
  v10 = *a2 - 8;
  result = (*(v9 + 16))();
  if (result)
  {
    do
    {
      *a1 += 8;
      result = (*(*a3 + 16))();
    }

    while ((result & 1) == 0);
  }

  else
  {
    do
    {
      v12 = *a1 + 8;
      *a1 = v12;
      if (v12 >= *a2)
      {
        break;
      }

      result = (*(*a3 + 16))();
    }

    while (!result);
  }

  v13 = *a1;
  v14 = *a2;
  if (*a1 >= *a2)
  {
    goto LABEL_9;
  }

  do
  {
    *a2 -= 8;
    result = (*(*a3 + 16))();
  }

  while ((result & 1) != 0);
  while (1)
  {
    v13 = *a1;
    v14 = *a2;
LABEL_9:
    if (v13 >= v14)
    {
      break;
    }

    v15 = *v13;
    *v13 = *v14;
    *v14 = v15;
    do
    {
      *a1 += 8;
    }

    while (!(*(*a3 + 16))());
    do
    {
      *a2 -= 8;
      result = (*(*a3 + 16))();
    }

    while ((result & 1) != 0);
  }

  v16 = v13 - 1;
  if (v8 != v16)
  {
    *v8 = *v16;
  }

  *v16 = v17;
  *a4 = *a1;
  return result;
}

uint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,GPUTools::array_iterator<GPUTools::NameTargetTuple>,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&)>@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v17 = **a1;
  do
  {
    ++*a1;
    result = (*(*a3 + 16))();
  }

  while ((result & 1) != 0);
  if (v8 == *a1 - 1)
  {
    do
    {
      if (*a1 >= *a2)
      {
        break;
      }

      v10 = *a3;
      --*a2;
      result = (*(v10 + 16))();
    }

    while ((result & 1) == 0);
  }

  else
  {
    do
    {
      --*a2;
      result = (*(*a3 + 16))();
    }

    while (!result);
  }

  v11 = *a1;
  v12 = *a2;
  if (*a1 >= *a2)
  {
    v14 = *a1;
  }

  else
  {
    v13 = *a2;
    v14 = *a1;
    do
    {
      v15 = *v14;
      *v14 = *v13;
      *v13 = v15;
      do
      {
        ++*a1;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      do
      {
        --*a2;
        result = (*(*a3 + 16))();
      }

      while (!result);
      v14 = *a1;
      v13 = *a2;
    }

    while (*a1 < *a2);
  }

  v16 = v14 - 1;
  if (v8 != v16)
  {
    *v8 = *v16;
  }

  *v16 = v17;
  *a4 = v16;
  *(a4 + 8) = v11 >= v12;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>>(uint64_t **a1, uint64_t **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  v8 = *a2 - *a1;
  if (v8 > 2)
  {
    switch(v8)
    {
      case 3:
        v17 = v6 - 1;
        *a2 = v6 - 1;
        v18 = (*(*a3 + 16))();
        v19 = (*(*a3 + 16))();
        if (v18)
        {
          v20 = *v7;
          if (v19)
          {
            *v7 = *v17;
          }

          else
          {
            *v7 = v7[1];
            v7[1] = v20;
            if (!(*(*a3 + 16))())
            {
              return 1;
            }

            v20 = v7[1];
            v7[1] = *v17;
          }

          *v17 = v20;
          return 1;
        }

        if (!v19)
        {
          return 1;
        }

        v26 = v7[1];
        v7[1] = *v17;
        *v17 = v26;
        v16 = *(*a3 + 16);
        break;
      case 4:
        v34 = v7 + 1;
        v35 = v7;
        v25 = v6 - 1;
        *a2 = v25;
        v32 = v25;
        v33 = v7 + 2;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>,0>(&v35, &v34, &v33, &v32, a3);
        return 1;
      case 5:
        v13 = v6 - 1;
        *a2 = v6 - 1;
        v34 = v7 + 1;
        v35 = v7;
        v14 = v7 + 3;
        v32 = v7 + 3;
        v33 = v7 + 2;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>,0>(&v35, &v34, &v33, &v32, a3);
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v15 = *v14;
        *v14 = *v13;
        *v13 = v15;
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        *(v7 + 1) = vextq_s8(*(v7 + 1), *(v7 + 1), 8uLL);
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        *(v7 + 1) = vextq_s8(*(v7 + 1), *(v7 + 1), 8uLL);
        v16 = *(*a3 + 16);
        break;
      default:
        goto LABEL_16;
    }

    if (v16())
    {
      *v7 = vextq_s8(*v7, *v7, 8uLL);
    }

    return 1;
  }

  if (v8 < 2)
  {
    return 1;
  }

  if (v8 == 2)
  {
    v9 = *a3;
    *a2 = v6 - 1;
    v10 = *a1;
    if ((*(v9 + 16))())
    {
      v11 = *a2;
      v12 = **a1;
      **a1 = **a2;
      *v11 = v12;
    }

    return 1;
  }

LABEL_16:
  v21 = (v7 + 2);
  v22 = (*(*a3 + 16))();
  v23 = (*(*a3 + 16))();
  if (v22)
  {
    v24 = *v7;
    if (v23)
    {
      *v7 = v7[2];
      v7[2] = v24;
    }

    else
    {
      *v7 = v7[1];
      v7[1] = v24;
      if ((*(*a3 + 16))())
      {
        *(v7 + 1) = vextq_s8(*(v7 + 1), *(v7 + 1), 8uLL);
      }
    }
  }

  else if (v23)
  {
    *(v7 + 1) = vextq_s8(*(v7 + 1), *(v7 + 1), 8uLL);
    if ((*(*a3 + 16))())
    {
      *v7 = vextq_s8(*v7, *v7, 8uLL);
    }
  }

  v27 = (v7 + 3);
  if (v7 + 3 == *a2)
  {
    return 1;
  }

  v28 = 0;
  while (1)
  {
    v29 = v27;
    if ((*(*a3 + 16))())
    {
      v35 = *v29;
      do
      {
        v30 = v21;
        v21[1] = *v21;
        if (v21 == *a1)
        {
          break;
        }

        --v21;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      *v30 = v35;
      if (++v28 == 8)
      {
        break;
      }
    }

    v27 = v29 + 1;
    v21 = v29;
    if (v29 + 1 == *a2)
    {
      return 1;
    }
  }

  return v29 + 1 == *a2;
}

uint64_t **std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>,GPUTools::array_iterator<GPUTools::NameTargetTuple>>@<X0>(uint64_t **result@<X0>, uint64_t **a2@<X1>, uint64_t **a3@<X2>, uint64_t *a4@<X3>, uint64_t **a5@<X8>)
{
  v7 = *result;
  v8 = *a2;
  if (*result == *a2)
  {
    *a5 = *a3;
  }

  else
  {
    v11 = result;
    v12 = v8 - v7;
    if (v12 >= 2)
    {
      v13 = (v12 - 2) >> 1;
      v14 = v13 + 1;
      v15 = &v7[v13];
      do
      {
        v24 = v15;
        v25 = v7;
        result = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>>(&v25, a4, v12, &v24);
        --v15;
        --v14;
      }

      while (v14);
      v8 = *a2;
      v7 = *v11;
      v12 = *a2 - *v11;
    }

    if (v8 == *a3)
    {
      v19 = v8;
    }

    else
    {
      do
      {
        v16 = *v11;
        result = (*(*a4 + 16))();
        if (result)
        {
          v17 = *v11;
          v18 = *v8;
          *v8 = **v11;
          *v17 = v18;
          v24 = *v11;
          v25 = v24;
          result = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>>(&v25, a4, v12, &v24);
        }

        ++v8;
      }

      while (v8 != *a3);
      v7 = *v11;
      v19 = *a2;
      v12 = *a2 - *v11;
    }

    *a5 = v8;
    if (v12 >= 2)
    {
      v20 = v19 - 1;
      do
      {
        v21 = *v7;
        v24 = v7;
        result = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>>(&v24, a4, v12, &v25);
        if (v20 == v25)
        {
          *v25 = v21;
        }

        else
        {
          *v25++ = *v20;
          *v20 = v21;
          v23 = v25;
          v24 = v7;
          result = std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>>(&v24, &v23, a4, v25 - v7);
        }

        --v20;
      }

      while (v12-- > 2);
    }
  }

  return result;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v7 = result;
    v8 = *a4 - *result;
    v9 = v4 >> 1;
    if ((v4 >> 1) >= v8 >> 3)
    {
      v11 = (v8 >> 2) | 1;
      v12 = (*result + 8 * v11);
      v13 = (v8 >> 2) + 2;
      if (v13 < a3)
      {
        if ((*(*a2 + 16))())
        {
          ++v12;
          v11 = v13;
        }

        v14 = *a4;
      }

      result = (*(*a2 + 16))();
      if ((result & 1) == 0)
      {
        v18 = **a4;
        while (1)
        {
          **a4 = *v12;
          *a4 = v12;
          if (v9 < v11)
          {
            break;
          }

          v15 = (2 * v11) | 1;
          v12 = (*v7 + 8 * v15);
          v16 = 2 * v11 + 2;
          if (v16 < a3)
          {
            v17 = *v7 + 8 * v15;
            if ((*(*a2 + 16))())
            {
              ++v12;
              v15 = v16;
            }
          }

          result = (*(*a2 + 16))();
          v11 = v15;
          if (result)
          {
            v12 = *a4;
            break;
          }
        }

        *v12 = v18;
      }
    }
  }

  return result;
}

void **std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>>@<X0>(void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = 0;
  v8 = *result;
  *a4 = *result;
  v9 = (a3 - 2) / 2;
  do
  {
    v10 = &v8[v7 + 1];
    v11 = (2 * v7) | 1;
    v12 = 2 * v7 + 2;
    if (v12 < a3)
    {
      result = (*(*a2 + 16))();
      if (result)
      {
        ++v10;
        v11 = v12;
      }

      v8 = *a4;
    }

    *v8 = *v10;
    *a4 = v10;
    v8 = v10;
    v7 = v11;
  }

  while (v11 <= v9);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(GPUTools::NameTargetTuple const&,GPUTools::NameTargetTuple const&),GPUTools::array_iterator<GPUTools::NameTargetTuple>>(uint64_t result, uint64_t **a2, uint64_t *a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v14 = v4;
    v15 = v5;
    v9 = result;
    v10 = v6 >> 1;
    v11 = (*result + 8 * (v6 >> 1));
    v12 = *a3;
    --*a2;
    result = (*(v12 + 16))();
    if (result)
    {
      v13 = **a2;
      while (1)
      {
        **a2 = *v11;
        *a2 = v11;
        if (!v10)
        {
          break;
        }

        v10 = (v10 - 1) >> 1;
        v11 = (*v9 + 8 * v10);
        result = (*(*a3 + 16))();
        if ((result & 1) == 0)
        {
          v11 = *a2;
          break;
        }
      }

      *v11 = v13;
    }
  }

  return result;
}

void wrapper_pop_group_marker(ContextInfo *a1)
{
  v1 = *(a1 + 13);
  if (v1 != *(a1 + 12))
  {
    v3 = (v1 - 24);
    if (*(v1 - 1) < 0)
    {
      operator delete(*v3);
    }

    *(a1 + 13) = v3;
  }
}

uint64_t *wrapper_cache_vertex_attrib(uint64_t *result, unsigned int a2, int a3, double a4, double a5, double a6, double a7)
{
  v12 = a2;
  if (*(result + 863) > a2 && !*(result + 851))
  {
    v13 = &v12;
    result = std::__hash_table<std::__hash_value_type<unsigned int,VertexAttribInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,VertexAttribInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,VertexAttribInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,VertexAttribInfo>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(result + 450, &v12);
    *(result + 6) = a3;
    *(result + 7) = 0;
    *(result + 4) = a4;
    *(result + 5) = a5;
    *(result + 6) = a6;
    *(result + 7) = a7;
  }

  return result;
}

void wrapper_push_group_marker(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void detach_program(void *a1)
{
  ProgramPipelineInfo::ProgramPipelineInfo(v2);
  ProgramPipelineInfo::operator=(*a1 + 144, v2);
  ProgramPipelineInfo::~ProgramPipelineInfo(v2);
}

id ReserveGLObjectsAPI(uint64_t a1, int a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6)
  {
    LODWORD(v7) = a2;
    if (v4 >= 1)
    {
      v4 = v4;
      do
      {
        result = [OUTLINED_FUNCTION_0() setParameter:1612 to:v7];
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

id ReserveGLVAOsAPI(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6)
  {
    LODWORD(v5) = 2501;
    if (v3 >= 1)
    {
      v3 = v3;
      do
      {
        result = [OUTLINED_FUNCTION_0() setParameter:1615 to:v5];
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

id ReserveGLProgramAPI(void *a1, int a2)
{
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6)
  {
    v5 = a2;
    return [a1 setParameter:1614 to:&v5];
  }

  return result;
}

id ReserveGLShaderAPI(void *a1, int a2, int a3)
{
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6)
  {
    v7[0] = a3;
    v7[1] = a2;
    return [a1 setParameter:1613 to:v7];
  }

  return result;
}

id ReserveGLFenceSyncAPI(void *a1, int a2, int a3, int a4)
{
  result = [DYGetGLGuestAppClient() traceMode];
  if (result != 6)
  {
    v9[0] = 1616;
    v9[1] = a2;
    v9[2] = a3;
    v9[3] = a4;
    return [a1 setParameter:1612 to:v9];
  }

  return result;
}

void ContextHarvester::harvestBufferObject()
{
  __assert_rtn("void ContextHarvester::harvestBufferObject(GLenum, GLuint, intptr_t, intptr_t, BOOL)", &unk_204462, 0, "objectID != 0");
}

{
  __assert_rtn("void ContextHarvester::harvestBufferObject(GLenum, GLuint, intptr_t, intptr_t, BOOL)", &unk_204462, 0, "size >= 0l");
}

{
  __assert_rtn("void ContextHarvester::harvestBufferObject(GLenum, GLuint, intptr_t, intptr_t, BOOL)", &unk_204462, 0, "offset >= 0l");
}

{
  __assert_rtn("void ContextHarvester::harvestBufferObject(GLenum, GLuint, intptr_t, intptr_t, BOOL)", &unk_204462, 0, "target != 0u");
}

void ContextHarvester::harvestGLSLShaders()
{
  __assert_rtn("void ContextHarvester::harvestGLSLShaders()", &unk_204462, 0, "_programObjects.valid()");
}

{
  __assert_rtn("void ContextHarvester::harvestGLSLShaders()", &unk_204462, 0, "_shaderObjects.valid()");
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v2 = a1 + 48;
  v1 = *(a1 + 48);
  if (v1)
  {
    free(v1);
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
}

uint64_t ___ZL24delete_program_pipelinesP15__GLIContextReciPKj_block_invoke_3(uint64_t a1)
{
  v2 = byte_21B1D1;
  if (byte_21B1D1)
  {
    breakpoint_break(*(*(a1 + 32) + 8) + 48, (&stru_338.flags + 1), 1, *(*(a1 + 40) + 3404), *(a1 + 40));
  }

  if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v2 & 4))
  {
    v3 = mach_absolute_time();
    (*(*(*(a1 + 40) + 32) + 6584))(*(a1 + 48), *(a1 + 64), *(a1 + 56));
    v4 = mach_absolute_time() - v3;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v5 = a1 + 32;
      *(*(*(*(a1 + 32) + 8) + 48) + 24) = v4;
    }

    else
    {
      v18 = *(&g_DYTimebaseInfo + 1);
      v5 = a1 + 32;
      *(*(*(*(a1 + 32) + 8) + 48) + 24) = __udivti3();
      v3 = __udivti3();
    }

    *(*(*(*v5 + 8) + 48) + 16) = v3;
    if (gCheckGLErrors == 1)
    {
      check_errors(*(a1 + 40));
    }
  }

  if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
  {
    OUTLINED_FUNCTION_7();
    GPUTools::FB::EncodeCurrentBacktrace();
  }

  if (*(*(a1 + 40) + 3404))
  {
    OUTLINED_FUNCTION_7();
    GPUTools::FB::EncodeGLError();
  }

  if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
  {
    v6 = *(*(a1 + 32) + 8);
    encode_driver_events(*(a1 + 40));
  }

  GPUTools::FB::EncodeThreadQueueInfo((*(a1 + 40) + 3480), (*(a1 + 40) + 3520), *(*(a1 + 32) + 8) + 48);
  if (*(*(a1 + 40) + 3404) && (gBreakOnError & 1) != 0)
  {
    v13 = OUTLINED_FUNCTION_7();
    v16 = 0xFFFFFFFFLL;
    v17 = 3;
LABEL_25:
    breakpoint_break(v13, v16, v17, v14, v15);
    goto LABEL_17;
  }

  if ((v2 & 2) != 0)
  {
    v13 = OUTLINED_FUNCTION_7();
    v16 = 889;
    v17 = 2;
    goto LABEL_25;
  }

LABEL_17:
  v7 = [DYGetGLGuestAppClient() defaultFbufStream];
  v8 = v7;
  v9 = *(*(a1 + 32) + 8);
  for (i = v7 + 14; atomic_exchange(i, 1u) == 1; i = v7 + 14)
  {
      ;
    }
  }

  v11 = **(v9 + 48);
  result = GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v8 + 14);
  return result;
}

uint64_t clear(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 80);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t clear_stencil(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 120);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t cull_face(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 456);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t depth_func(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 480);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t depth_mask(atomic_uint *a1)
{
  v4 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v4);
  v5 = *(*(v3 + 24) + 488);

  return v5(v2, v1);
}

uint64_t disable(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 504);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t disable_client_state(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 512);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t enable(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 576);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t enable_client_state(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 584);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t finish(atomic_uint *a1)
{
  v3 = [OUTLINED_FUNCTION_3(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v3);
  v4 = *(*(v2 + 24) + 712);

  return v4(v1);
}

{
  [OUTLINED_FUNCTION_3(a1) triggerArmedCapture];
  v3 = *(*(v2 + 24) + 712);

  return v3(v1);
}

uint64_t flush(atomic_uint *a1)
{
  v3 = [OUTLINED_FUNCTION_3(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v3);
  v4 = *(*(v2 + 24) + 720);

  return v4(v1);
}

{
  [OUTLINED_FUNCTION_3(a1) triggerArmedCapture];
  v3 = *(*(v2 + 24) + 720);

  return v3(v1);
}

uint64_t front_face(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 760);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t line_width(atomic_uint *a1, float a2)
{
  v5 = [OUTLINED_FUNCTION_3(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v5);
  v6 = *(*(v3 + 24) + 1240);
  v7.n128_f32[0] = a2;

  return v6(v2, v7);
}

uint64_t load_identity(atomic_uint *a1)
{
  v3 = [OUTLINED_FUNCTION_3(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v3);
  v4 = *(*(v2 + 24) + 1256);

  return v4(v1);
}

{
  [OUTLINED_FUNCTION_3(a1) triggerArmedCapture];
  v3 = *(*(v2 + 24) + 1256);

  return v3(v1);
}

uint64_t load_matrixf(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 1272);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t logic_op(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 1288);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t matrix_mode(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 1392);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t mult_matrixf(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 1408);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t point_size(atomic_uint *a1, float a2)
{
  v5 = [OUTLINED_FUNCTION_3(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v5);
  v6 = *(*(v3 + 24) + 1592);
  v7.n128_f32[0] = a2;

  return v6(v2, v7);
}

uint64_t pop_matrix(atomic_uint *a1)
{
  v3 = [OUTLINED_FUNCTION_3(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v3);
  v4 = *(*(v2 + 24) + 1640);

  return v4(v1);
}

{
  [OUTLINED_FUNCTION_3(a1) triggerArmedCapture];
  v3 = *(*(v2 + 24) + 1640);

  return v3(v1);
}

uint64_t push_matrix(atomic_uint *a1)
{
  v3 = [OUTLINED_FUNCTION_3(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v3);
  v4 = *(*(v2 + 24) + 1680);

  return v4(v1);
}

{
  [OUTLINED_FUNCTION_3(a1) triggerArmedCapture];
  v3 = *(*(v2 + 24) + 1680);

  return v3(v1);
}

uint64_t read_buffer(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 1888);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t shade_model(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 2024);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t stencil_mask(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 2040);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t tex_sub_image2D(unsigned int *a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_8(a1, a2);
  if (v2)
  {
    free(v2);
  }

  OUTLINED_FUNCTION_9();
  return OUTLINED_FUNCTION_6(v3);
}

uint64_t blend_equation(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 2704);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t client_active_texture(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 2728);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t active_texture(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 2736);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t set_fence_APPLE(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 3720);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t finish_fence_APPLE(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 3744);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t enable_vertex_attrib_array(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 4096);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t disable_vertex_attrib_array(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 4104);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t delete_object_ARB(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 4728);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t compile_shader_ARB(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 4768);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

void link_program_ARB(const void *a1, void **a2)
{
  _Block_object_dispose(a1, 8);
  if (*a2)
  {
    free(*a2);
  }
}

uint64_t link_program_ARB(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 4792);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t use_program_object_ARB(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 4800);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t validate_program_ARB(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 4808);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t end_query(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 5104);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t generate_mipmap(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 5448);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t begin_transform_feedback(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 5568);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t end_transform_feedback(atomic_uint *a1)
{
  v3 = [OUTLINED_FUNCTION_3(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v3);
  v4 = *(*(v2 + 24) + 5576);

  return v4(v1);
}

{
  [OUTLINED_FUNCTION_3(a1) triggerArmedCapture];
  v3 = *(*(v2 + 24) + 5576);

  return v3(v1);
}

uint64_t bind_vertex_array(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 6144);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t delete_sync(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 6248);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t bind_program_pipeline(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 6576);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t validate_program_pipeline(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 6616);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t release_shader_compiler(atomic_uint *a1)
{
  v3 = [OUTLINED_FUNCTION_3(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v3);
  v4 = *(*(v2 + 24) + 6992);

  return v4(v1);
}

{
  [OUTLINED_FUNCTION_3(a1) triggerArmedCapture];
  v3 = *(*(v2 + 24) + 6992);

  return v3(v1);
}

uint64_t clear_depthf(atomic_uint *a1, float a2)
{
  v5 = [OUTLINED_FUNCTION_3(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v5);
  v6 = *(*(v3 + 24) + 7024);
  v7.n128_f32[0] = a2;

  return v6(v2, v7);
}

uint64_t pause_transform_feedback(atomic_uint *a1)
{
  v3 = [OUTLINED_FUNCTION_3(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v3);
  v4 = *(*(v2 + 24) + 7256);

  return v4(v1);
}

{
  [OUTLINED_FUNCTION_3(a1) triggerArmedCapture];
  v3 = *(*(v2 + 24) + 7256);

  return v3(v1);
}

uint64_t resume_transform_feedback(atomic_uint *a1)
{
  v3 = [OUTLINED_FUNCTION_3(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v3);
  v4 = *(*(v2 + 24) + 7264);

  return v4(v1);
}

{
  [OUTLINED_FUNCTION_3(a1) triggerArmedCapture];
  v3 = *(*(v2 + 24) + 7264);

  return v3(v1);
}

uint64_t clear_depthx(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 7760);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t line_widthx(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 7920);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t load_matrixx(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 7928);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t mult_matrixx(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 7952);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t point_sizex(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 7984);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t current_palette_matrix_OES(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 8088);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t load_palette_from_modelview_matrix_OES(atomic_uint *a1)
{
  v3 = [OUTLINED_FUNCTION_3(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v3);
  v4 = *(*(v2 + 24) + 8096);

  return v4(v1);
}

{
  [OUTLINED_FUNCTION_3(a1) triggerArmedCapture];
  v3 = *(*(v2 + 24) + 8096);

  return v3(v1);
}

uint64_t drawtexsv_OES(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 8144);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t drawtexiv_OES(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 8152);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t drawtexxv_OES(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 8160);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t drawtexfv_OES(atomic_uint *a1)
{
  v2 = [OUTLINED_FUNCTION_1(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v2);
  v3 = *(*(v1 + 24) + 8176);
  v4 = OUTLINED_FUNCTION_4();

  return v5(v4);
}

uint64_t resolve_multisample_framebuffer_APPLE(atomic_uint *a1)
{
  v3 = [OUTLINED_FUNCTION_3(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v3);
  v4 = *(*(v2 + 24) + 8208);

  return v4(v1);
}

{
  [OUTLINED_FUNCTION_3(a1) triggerArmedCapture];
  v3 = *(*(v2 + 24) + 8208);

  return v3(v1);
}

void __Block_byref_object_copy__cold_1(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (v8)
  {
    free(v8);
  }

  *a1 = *a2;
  *(a4 + 56) = *(a3 + 56);
  *(a4 + 64) = *(a3 + 64);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
  v2 = a1 + 48;
  v1 = *(a1 + 48);
  if (v1)
  {
    free(v1);
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
}

uint64_t ___ZL24delete_program_pipelinesP15__GLIContextReciPKj_block_invoke_4(uint64_t a1)
{
  v2 = byte_21B1D1;
  if (byte_21B1D1)
  {
    breakpoint_break(*(*(a1 + 32) + 8) + 48, (&stru_338.flags + 1), 1, *(*(a1 + 40) + 3404), *(a1 + 40));
  }

  if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v2 & 4))
  {
    v3 = mach_absolute_time();
    (*(*(*(a1 + 40) + 32) + 6584))(*(a1 + 48), *(a1 + 64), *(a1 + 56));
    v4 = mach_absolute_time() - v3;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v5 = a1 + 32;
      *(*(*(*(a1 + 32) + 8) + 48) + 24) = v4;
    }

    else
    {
      v18 = *(&g_DYTimebaseInfo + 1);
      v5 = a1 + 32;
      *(*(*(*(a1 + 32) + 8) + 48) + 24) = __udivti3();
      v3 = __udivti3();
    }

    *(*(*(*v5 + 8) + 48) + 16) = v3;
    if (gCheckGLErrors == 1)
    {
      check_errors(*(a1 + 40));
    }
  }

  if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
  {
    OUTLINED_FUNCTION_7();
    GPUTools::FB::EncodeCurrentBacktrace();
  }

  if (*(*(a1 + 40) + 3404))
  {
    OUTLINED_FUNCTION_7();
    GPUTools::FB::EncodeGLError();
  }

  if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
  {
    v6 = *(*(a1 + 32) + 8);
    encode_driver_events(*(a1 + 40));
  }

  GPUTools::FB::EncodeThreadQueueInfo((*(a1 + 40) + 3480), (*(a1 + 40) + 3520), *(*(a1 + 32) + 8) + 48);
  if (*(*(a1 + 40) + 3404) && (gBreakOnError & 1) != 0)
  {
    v13 = OUTLINED_FUNCTION_7();
    v16 = 0xFFFFFFFFLL;
    v17 = 3;
LABEL_25:
    breakpoint_break(v13, v16, v17, v14, v15);
    goto LABEL_17;
  }

  if ((v2 & 2) != 0)
  {
    v13 = OUTLINED_FUNCTION_7();
    v16 = 889;
    v17 = 2;
    goto LABEL_25;
  }

LABEL_17:
  v7 = [DYGetGLGuestAppClient() defaultFbufStream];
  v8 = v7;
  v9 = *(*(a1 + 32) + 8);
  for (i = v7 + 14; atomic_exchange(i, 1u) == 1; i = v7 + 14)
  {
      ;
    }
  }

  v11 = **(v9 + 48);
  result = GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v8 + 14);
  return result;
}

void alpha_func(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1);
  OUTLINED_FUNCTION_9_0(&gBreakOnError);
  if (v2 && *(v1 + 3404))
  {
    v3 = OUTLINED_FUNCTION_1_0();

    breakpoint_break(v3, v4, v5, v6, v7);
  }
}

void bind_texture(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0(a1);
  OUTLINED_FUNCTION_9_0(&gBreakOnError);
  if (v2 && *(v1 + 3404))
  {
    v3 = OUTLINED_FUNCTION_2();
    breakpoint_break(v3, v4, v5, v6, v1);
  }

  OUTLINED_FUNCTION_12(&gCheckGLErrors);
}

void clear(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
  {
    [DYGetGLGuestAppClient() overrideFlags];
    v6 = OUTLINED_FUNCTION_13();
    apply_draw_overrides(v6, v7);
    (*(*(a1 + 32) + 80))(a2, a3);
    ++*(a1 + 3704);
    OUTLINED_FUNCTION_9_0(&gCheckGLErrors);
    if (v8)
    {
      OUTLINED_FUNCTION_8_0(a1);
      OUTLINED_FUNCTION_9_0(&gBreakOnError);
      if (v8)
      {
        if (*(a1 + 3404))
        {
          v11 = OUTLINED_FUNCTION_1_0();
          breakpoint_break(v11, v12, v13, v14, v15);
        }
      }
    }

    [DYGetGLGuestAppClient() overrideFlags];
    v9 = OUTLINED_FUNCTION_13();

    unapply_draw_overrides(v9, v10);
  }
}

{
  if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
  {
    [DYGetGLGuestAppClient() overrideFlags];
    v6 = OUTLINED_FUNCTION_13();
    apply_draw_overrides(v6, v7);
    v8 = mach_absolute_time();
    (*(*(a1 + 32) + 80))(a2, a3);
    v9 = mach_absolute_time();
    OUTLINED_FUNCTION_13_0(v9 - v8);
    OUTLINED_FUNCTION_9_0(&gCheckGLErrors);
    if (v10)
    {
      OUTLINED_FUNCTION_8_0(a1);
      OUTLINED_FUNCTION_9_0(&gBreakOnError);
      if (v10)
      {
        if (*(a1 + 3404))
        {
          v13 = OUTLINED_FUNCTION_1_0();
          breakpoint_break(v13, v14, v15, v16, v17);
        }
      }
    }

    [DYGetGLGuestAppClient() overrideFlags];
    v11 = OUTLINED_FUNCTION_13();

    unapply_draw_overrides(v11, v12);
  }
}

uint64_t pop_group_marker_EXT(atomic_uint *a1)
{
  v3 = [OUTLINED_FUNCTION_3(a1) graphicsLockWaitQueue];
  OUTLINED_FUNCTION_0_0(v3);
  v4 = *(*(v2 + 24) + 6544);

  return v4(v1);
}

void resolve_multisample_framebuffer_APPLE(uint64_t a1, uint64_t a2)
{
  if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
  {
    [DYGetGLGuestAppClient() overrideFlags];
    v4 = OUTLINED_FUNCTION_13();
    apply_draw_overrides(v4, v5);
    (*(*(a1 + 32) + 8208))(a2);
    ++*(a1 + 3704);
    OUTLINED_FUNCTION_9_0(&gCheckGLErrors);
    if (v6)
    {
      OUTLINED_FUNCTION_8_0(a1);
      OUTLINED_FUNCTION_9_0(&gBreakOnError);
      if (v6)
      {
        if (*(a1 + 3404))
        {
          v9 = OUTLINED_FUNCTION_1_0();
          breakpoint_break(v9, v10, v11, v12, v13);
        }
      }
    }

    [DYGetGLGuestAppClient() overrideFlags];
    v7 = OUTLINED_FUNCTION_13();

    unapply_draw_overrides(v7, v8);
  }
}

{
  if (([DYGetGLGuestAppClient() overrideFlags] & 8) == 0)
  {
    [DYGetGLGuestAppClient() overrideFlags];
    v4 = OUTLINED_FUNCTION_13();
    apply_draw_overrides(v4, v5);
    v6 = mach_absolute_time();
    (*(*(a1 + 32) + 8208))(a2);
    v7 = mach_absolute_time();
    OUTLINED_FUNCTION_13_0(v7 - v6);
    OUTLINED_FUNCTION_9_0(&gCheckGLErrors);
    if (v8)
    {
      OUTLINED_FUNCTION_8_0(a1);
      OUTLINED_FUNCTION_9_0(&gBreakOnError);
      if (v8)
      {
        if (*(a1 + 3404))
        {
          v11 = OUTLINED_FUNCTION_1_0();
          breakpoint_break(v11, v12, v13, v14, v15);
        }
      }
    }

    [DYGetGLGuestAppClient() overrideFlags];
    v9 = OUTLINED_FUNCTION_13();

    unapply_draw_overrides(v9, v10);
  }
}

void ___ZL24delete_program_pipelinesP15__GLIContextReciPKj_block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_0(a1);
  OUTLINED_FUNCTION_9_0(&gBreakOnError);
  if (v3 && *(*a2 + 3404))
  {
    v4 = OUTLINED_FUNCTION_2();

    breakpoint_break(v4, v5, v6, v7, v8);
  }
}

void **clear_driver_events(void **result)
{
  v1 = *result;
  if (*result)
  {
    v3 = 0;
    result = [v1 getParameter:1400 to:&v3];
    if (!result)
    {
      v2 = 0;
      return [v1 getParameter:1401 to:&v2];
    }
  }

  return result;
}

void **encode_driver_events(void **result)
{
  v1 = *result;
  if (*result)
  {
    v3 = 0;
    result = [v1 getParameter:1400 to:&v3];
    if (!result)
    {
      v2 = 0;
      result = [v1 getParameter:1401 to:&v2];
      if (!result)
      {
        return GPUTools::FB::EncodePerfEvents();
      }
    }
  }

  return result;
}

void EAGLContext_renderbufferStorageFromDrawable(atomic_uint *a1)
{
  atomic_fetch_add(a1, 0xFFFFFFFF);
  v1 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];

  dispatch_sync_f(v1, 0, do_nothing);
}

id EAGLContext_renderbufferStorageFromDrawable(atomic_uint *a1)
{
  atomic_fetch_add(a1, 0xFFFFFFFF);
  v1 = DYGetGLGuestAppClient();

  return [v1 triggerArmedCapture];
}

void **EAGLContext_renderbufferStorageFromDrawable(void **result, uint64_t a2, _DWORD *a3)
{
  v3 = *result;
  if (*result)
  {
    *a3 = 0;
    result = [v3 getParameter:1400 to:a3];
    if (!result)
    {
      v4 = 0;
      result = [v3 getParameter:1401 to:&v4];
      if (!result)
      {
        return GPUTools::FB::EncodePerfEvents();
      }
    }
  }

  return result;
}

id EAGLContext_texImageIOSurface_target_internalFormat_width_height_format_type_plane_invert(_DWORD *a1, void *a2)
{
  result = OUTLINED_FUNCTION_0_1(a1, a2);
  if (!result)
  {
    result = OUTLINED_FUNCTION_1_1();
    if (!result)
    {
      return OUTLINED_FUNCTION_2_0();
    }
  }

  return result;
}

void bind_texture()
{
  OUTLINED_FUNCTION_8_1();
  if ((gCheckGLErrors & 1) == 0)
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (!*(v0 + 3404))
  {
    v1 = OUTLINED_FUNCTION_10();
    wrapper_cache_texture_binding(v1, v2, v3);
  }

  OUTLINED_FUNCTION_4_1();
  if (v5)
  {
    v6 = v4 < 1;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {

    handle_opengl_thread_conflict(v0);
  }
}

void draw_arrays(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11(a1);
  if (!v5)
  {
    OUTLINED_FUNCTION_13_1(v2, v3, v4);
  }

  OUTLINED_FUNCTION_5();
  if (gCheckGLErrors == 1 && v6 >= 1)
  {

    handle_opengl_thread_conflict(v1);
  }
}

void draw_elements(uint64_t a1)
{
  OUTLINED_FUNCTION_11(a1);
  if (!v4)
  {
    GLDrawCommandStatistics::update(&v1[4 * v2 + 467], v2, v3, 1u);
  }

  OUTLINED_FUNCTION_5();
  if (gCheckGLErrors == 1 && v5 >= 1)
  {

    handle_opengl_thread_conflict(v1);
  }
}

void attach_object_ARB(uint64_t a1, unsigned int a2, unsigned int a3)
{
  OUTLINED_FUNCTION_4_0(a1);
  if ((gCheckGLErrors & 1) == 0)
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (!*(v3 + 851))
  {
    wrapper_cache_shader_post_attach(v3, a2, a3);
  }

  OUTLINED_FUNCTION_4_1();
  if (v7)
  {
    v8 = v6 < 1;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {

    handle_opengl_thread_conflict(v3);
  }
}

void link_program_ARB(uint64_t a1, ContextInfo *a2)
{
  wrapper_cache_program_pre_link(a2, a1);
  OUTLINED_FUNCTION_6_1();
  if ((gCheckGLErrors & 1) == 0)
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (!*(a2 + 851))
  {
    v6 = 0;
    (*(*(a2 + 4) + 5264))(*(a2 + 2), a1, 35714, &v6);
    wrapper_cache_program_link(a2, a1, v6 == 1);
  }

  OUTLINED_FUNCTION_5();
  if (gCheckGLErrors == 1 && v4 >= 1)
  {
    handle_opengl_thread_conflict(a2);
  }
}

void use_program_object_ARB(uint64_t a1, unsigned int a2)
{
  OUTLINED_FUNCTION_4_0(a1);
  if ((gCheckGLErrors & 1) == 0)
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (!*(v2 + 851))
  {
    wrapper_cache_program_use(v2, a2);
  }

  OUTLINED_FUNCTION_5();
  if (gCheckGLErrors == 1 && v4 >= 1)
  {

    handle_opengl_thread_conflict(v2);
  }
}

void bind_buffer()
{
  OUTLINED_FUNCTION_8_1();
  if ((gCheckGLErrors & 1) == 0)
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (!*(v0 + 3404))
  {
    v1 = OUTLINED_FUNCTION_10();
    wrapper_cache_buffer_binding(v1, v2, v3);
  }

  OUTLINED_FUNCTION_4_1();
  if (v5)
  {
    v6 = v4 < 1;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {

    handle_opengl_thread_conflict(v0);
  }
}

void buffer_data(ContextInfo *a1, volatile int *a2)
{
  if ((gCheckGLErrors & 1) == 0)
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (!*(a1 + 851))
  {
    wrapper_cache_buffer_target(a1, a2);
  }

  OUTLINED_FUNCTION_5();
  if (gCheckGLErrors == 1 && v4 >= 1)
  {

    handle_opengl_thread_conflict(a1);
  }
}

void begin_transform_feedback(ContextInfo *a1)
{
  if ((gCheckGLErrors & 1) == 0)
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (!*(a1 + 851))
  {
    wrapper_cache_active_transform_feedback(a1);
  }

  OUTLINED_FUNCTION_5();
  if (gCheckGLErrors == 1 && v2 >= 1)
  {

    handle_opengl_thread_conflict(a1);
  }
}

void ContextInfo::~ContextInfo(void ***block, void **a2, dispatch_queue_t queue)
{
  *block = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___ZN11ContextInfoD2Ev_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_sync(queue, block);
}

void ContextInfo::~ContextInfo(NSObject *a1, uint64_t a2)
{
  dispatch_semaphore_signal(a1);
  v10 = (a2 + 3672);
  std::vector<std::function<void ()(ContextInfo *)>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v3 = *(a2 + 3640);
  if (v3)
  {
    *(a2 + 3648) = v3;
    operator delete(v3);
  }

  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](a2 + 3600);
  std::unordered_map<unsigned int,BOOL>::~unordered_map[abi:ne200100](a2 + 3560);
  std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::~__hash_table(a2 + 3520);
  std::__hash_table<std::__hash_value_type<void const*,std::string>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,std::string>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,std::string>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,std::string>>>::~__hash_table(a2 + 3480);
  std::unique_ptr<GPUTools::ResourceUpdater>::reset[abi:ne200100]((a2 + 3472), 0);
  v4 = *(a2 + 3408);
  if (v4)
  {
    *(a2 + 3416) = v4;
    operator delete(v4);
  }

  v5 = 0;
  v6 = a2 + 144;
  do
  {
    v7 = v6 + v5;
    v8 = *(v6 + v5);
    if (v8)
    {
      free(v8);
    }

    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    v5 -= 24;
  }

  while (v5 != -48);
  v10 = (a2 + 96);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v10);
  v9 = *(a2 + 72);
  if (v9)
  {
    *(a2 + 80) = v9;
    operator delete(v9);
  }
}

uint64_t bind_texture(__GLIContextRec *a1)
{
  OUTLINED_FUNCTION_9_1();
  if (*(ContextInfo::activeCtxInfoMap + 8))
  {
    do
    {
      OUTLINED_FUNCTION_0_2();
      if (v6)
      {
        v3 = v4;
      }
    }

    while (*(v4 + 8 * v5));
    if (v3 != v2)
    {
      OUTLINED_FUNCTION_5_0();
    }
  }

  OUTLINED_FUNCTION_6_2();
  v8 = *(v7 + 40);
  OUTLINED_FUNCTION_4_2();
  result = v9();
  if ((gCheckGLErrors & 1) == 0)
  {
    result = OUTLINED_FUNCTION_8_0(v1);
  }

  if (!*(v1 + 3404))
  {
    v11 = OUTLINED_FUNCTION_3_0();

    return wrapper_cache_texture_binding(v11, v12, v13);
  }

  return result;
}

int64x2_t *draw_arrays(__GLIContextRec *a1)
{
  if (*(ContextInfo::activeCtxInfoMap + 8))
  {
    do
    {
      OUTLINED_FUNCTION_0_2();
      if (v6)
      {
        v3 = v4;
      }
    }

    while (*(v4 + 8 * v5));
    if (v3 != v2)
    {
      OUTLINED_FUNCTION_5_0();
    }
  }

  OUTLINED_FUNCTION_6_2();
  result = (*(v7 + 520))();
  if (!*(v1 + 3404))
  {
    OUTLINED_FUNCTION_4_2();

    return GLDrawCommandStatistics::update(v9, v10, v11, 1u);
  }

  return result;
}

int64x2_t *draw_elements(__GLIContextRec *a1, unsigned int a2, int a3, unsigned int a4, const void *a5)
{
  OUTLINED_FUNCTION_9_1();
  if (*(ContextInfo::activeCtxInfoMap + 8))
  {
    do
    {
      OUTLINED_FUNCTION_0_2();
      if (v10)
      {
        v7 = v8;
      }
    }

    while (*(v8 + 8 * v9));
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_5_0();
    }
  }

  OUTLINED_FUNCTION_6_2();
  v12 = *(v11 + 536);
  OUTLINED_FUNCTION_4_2();
  result = v13();
  if (!*(v5 + 3404))
  {
    OUTLINED_FUNCTION_4_2();

    return GLDrawCommandStatistics::update(v15, v16, v17, 1u);
  }

  return result;
}

int64x2_t *draw_range_elements(__GLIContextRec *a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6, const void *a7)
{
  if (*(ContextInfo::activeCtxInfoMap + 8))
  {
    do
    {
      OUTLINED_FUNCTION_0_2();
      if (v12)
      {
        v9 = v10;
      }
    }

    while (*(v10 + 8 * v11));
    if (v9 != v8)
    {
      OUTLINED_FUNCTION_5_0();
    }
  }

  OUTLINED_FUNCTION_6_2();
  result = (*(v13 + 3240))();
  if (!*(v7 + 3404))
  {
    OUTLINED_FUNCTION_4_2();

    return GLDrawCommandStatistics::update(v15, v16, v17, 1u);
  }

  return result;
}

uint64_t attach_object_ARB(__GLIContextRec *a1, void *a2, void *a3)
{
  v6 = ContextInfo::activeCtxInfoMap + 8;
  if (!*(ContextInfo::activeCtxInfoMap + 8))
  {
    goto LABEL_8;
  }

  do
  {
    OUTLINED_FUNCTION_7_0();
    if (v10)
    {
      v7 = v8;
    }
  }

  while (*(v8 + 8 * v9));
  if (v7 == v6 || *(v7 + 32) > a1)
  {
LABEL_8:
    v7 = v6;
  }

  v11 = *(v7 + 40);
  OUTLINED_FUNCTION_8_0(v11);
  result = (*(*(v11 + 32) + 4784))(a1, a2, a3);
  if ((gCheckGLErrors & 1) == 0)
  {
    result = OUTLINED_FUNCTION_8_0(v11);
  }

  if (!*(v11 + 3404))
  {

    return wrapper_cache_shader_post_attach(v11, a2, a3);
  }

  return result;
}

uint64_t link_program_ARB(__GLIContextRec *a1, uint64_t a2)
{
  v4 = ContextInfo::activeCtxInfoMap + 8;
  if (!*(ContextInfo::activeCtxInfoMap + 8))
  {
    goto LABEL_8;
  }

  do
  {
    OUTLINED_FUNCTION_7_0();
    if (v8)
    {
      v5 = v6;
    }
  }

  while (*(v6 + 8 * v7));
  if (v5 == v4 || *(v5 + 32) > a1)
  {
LABEL_8:
    v5 = v4;
  }

  v9 = *(v5 + 40);
  wrapper_cache_program_pre_link(v9, a2);
  OUTLINED_FUNCTION_8_0(v9);
  result = (*(*(v9 + 32) + 4792))(a1, a2);
  if ((gCheckGLErrors & 1) == 0)
  {
    result = OUTLINED_FUNCTION_8_0(v9);
  }

  if (!*(v9 + 3404))
  {
    v11 = 0;
    (*(*(v9 + 32) + 5264))(*(v9 + 16), a2, 35714, &v11);
    return wrapper_cache_program_link(v9, a2, v11 == 1);
  }

  return result;
}

uint64_t use_program_object_ARB(__GLIContextRec *a1, void *a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  OUTLINED_FUNCTION_8_0(v9);
  result = (*(*(v9 + 32) + 4800))(a1, a2);
  if ((gCheckGLErrors & 1) == 0)
  {
    result = OUTLINED_FUNCTION_8_0(v9);
  }

  if (!*(v9 + 3404))
  {

    return wrapper_cache_program_use(v9, a2);
  }

  return result;
}

uint64_t bind_buffer(__GLIContextRec *a1)
{
  OUTLINED_FUNCTION_9_1();
  if (*(ContextInfo::activeCtxInfoMap + 8))
  {
    do
    {
      OUTLINED_FUNCTION_0_2();
      if (v6)
      {
        v3 = v4;
      }
    }

    while (*(v4 + 8 * v5));
    if (v3 != v2)
    {
      OUTLINED_FUNCTION_5_0();
    }
  }

  OUTLINED_FUNCTION_6_2();
  v8 = *(v7 + 5136);
  OUTLINED_FUNCTION_4_2();
  result = v9();
  if ((gCheckGLErrors & 1) == 0)
  {
    result = OUTLINED_FUNCTION_8_0(v1);
  }

  if (!*(v1 + 3404))
  {
    v11 = OUTLINED_FUNCTION_3_0();

    return wrapper_cache_buffer_binding(v11, v12, v13);
  }

  return result;
}

uint64_t buffer_data(__GLIContextRec *a1, volatile int *a2, uint64_t a3, const void *a4)
{
  v5 = ContextInfo::activeCtxInfoMap + 8;
  if (!*(ContextInfo::activeCtxInfoMap + 8))
  {
    goto LABEL_9;
  }

  do
  {
    OUTLINED_FUNCTION_0_2();
    if (v9)
    {
      v6 = v7;
    }
  }

  while (*(v7 + 8 * v8));
  if (v6 == v5 || (OUTLINED_FUNCTION_5_0(), !v11 & v9))
  {
LABEL_9:
    v10 = v5;
  }

  v12 = *(v10 + 40);
  result = (*(*(v12 + 32) + 5168))();
  if ((gCheckGLErrors & 1) == 0)
  {
    result = OUTLINED_FUNCTION_8_0(v12);
  }

  if (!*(v12 + 3404))
  {

    return wrapper_cache_buffer_target(v12, a2);
  }

  return result;
}

uint64_t program_parameteri(__GLIContextRec *a1)
{
  OUTLINED_FUNCTION_10_0();
  v2 = ContextInfo::activeCtxInfoMap + 8;
  if (!*(ContextInfo::activeCtxInfoMap + 8))
  {
    goto LABEL_8;
  }

  do
  {
    OUTLINED_FUNCTION_8_2();
    if (v6)
    {
      v3 = v4;
    }
  }

  while (*(v4 + 8 * v5));
  if (v3 == v2 || *(v3 + 32) > v1)
  {
LABEL_8:
    v3 = v2;
  }

  v7 = *(v3 + 40);
  OUTLINED_FUNCTION_8_0(v7);
  v8 = *(*(v7 + 32) + 5512);
  OUTLINED_FUNCTION_2_1();
  result = v9();
  if ((gCheckGLErrors & 1) == 0)
  {
    result = OUTLINED_FUNCTION_8_0(v7);
  }

  if (!*(v7 + 3404))
  {
    OUTLINED_FUNCTION_2_1();

    return wrapper_cache_program_parameter(v11, v12, v13, v14);
  }

  return result;
}

uint64_t bind_buffer_range(__GLIContextRec *a1)
{
  if (*(ContextInfo::activeCtxInfoMap + 8))
  {
    do
    {
      OUTLINED_FUNCTION_0_2();
      if (v6)
      {
        v3 = v4;
      }
    }

    while (*(v4 + 8 * v5));
    if (v3 != v2)
    {
      OUTLINED_FUNCTION_5_0();
    }
  }

  OUTLINED_FUNCTION_6_2();
  result = (*(v7 + 5544))();
  if ((gCheckGLErrors & 1) == 0)
  {
    result = OUTLINED_FUNCTION_8_0(v1);
  }

  if (!*(v1 + 3404))
  {
    v9 = OUTLINED_FUNCTION_3_0();

    return wrapper_cache_buffer_binding(v9, v10, v11);
  }

  return result;
}

uint64_t bind_buffer_base(__GLIContextRec *a1)
{
  if (*(ContextInfo::activeCtxInfoMap + 8))
  {
    do
    {
      OUTLINED_FUNCTION_0_2();
      if (v6)
      {
        v3 = v4;
      }
    }

    while (*(v4 + 8 * v5));
    if (v3 != v2)
    {
      OUTLINED_FUNCTION_5_0();
    }
  }

  OUTLINED_FUNCTION_6_2();
  result = (*(v7 + 5560))();
  if ((gCheckGLErrors & 1) == 0)
  {
    result = OUTLINED_FUNCTION_8_0(v1);
  }

  if (!*(v1 + 3404))
  {
    v9 = OUTLINED_FUNCTION_3_0();

    return wrapper_cache_buffer_binding(v9, v10, v11);
  }

  return result;
}

uint64_t begin_transform_feedback(__GLIContextRec *a1)
{
  v1 = ContextInfo::activeCtxInfoMap + 8;
  if (!*(ContextInfo::activeCtxInfoMap + 8))
  {
    goto LABEL_9;
  }

  do
  {
    OUTLINED_FUNCTION_0_2();
    if (v5)
    {
      v2 = v3;
    }
  }

  while (*(v3 + 8 * v4));
  if (v2 == v1 || (OUTLINED_FUNCTION_5_0(), !v7 & v5))
  {
LABEL_9:
    v6 = v1;
  }

  v8 = *(v6 + 40);
  result = (*(*(v8 + 32) + 5568))();
  if ((gCheckGLErrors & 1) == 0)
  {
    result = OUTLINED_FUNCTION_8_0(v8);
  }

  if (!*(v8 + 3404))
  {

    return wrapper_cache_active_transform_feedback(v8);
  }

  return result;
}

int64x2_t *draw_arrays_instanced(__GLIContextRec *a1)
{
  v1 = ContextInfo::activeCtxInfoMap + 8;
  if (!*(ContextInfo::activeCtxInfoMap + 8))
  {
    goto LABEL_9;
  }

  do
  {
    OUTLINED_FUNCTION_0_2();
    if (v5)
    {
      v2 = v3;
    }
  }

  while (*(v3 + 8 * v4));
  if (v2 == v1 || (OUTLINED_FUNCTION_5_0(), !v7 & v5))
  {
LABEL_9:
    v6 = v1;
  }

  v8 = *(v6 + 40);
  result = (*(*(v8 + 32) + 6096))();
  if (!*(v8 + 3404))
  {
    OUTLINED_FUNCTION_2_1();

    return GLDrawCommandStatistics::update(v10, v11, v12, v13);
  }

  return result;
}

int64x2_t *draw_elements_instanced(__GLIContextRec *a1, unsigned int a2, int a3, unsigned int a4, const void *a5)
{
  v5 = ContextInfo::activeCtxInfoMap + 8;
  if (!*(ContextInfo::activeCtxInfoMap + 8))
  {
    goto LABEL_9;
  }

  do
  {
    OUTLINED_FUNCTION_0_2();
    if (v9)
    {
      v6 = v7;
    }
  }

  while (*(v7 + 8 * v8));
  if (v6 == v5 || (OUTLINED_FUNCTION_5_0(), !v11 & v9))
  {
LABEL_9:
    v10 = v5;
  }

  v12 = *(v10 + 40);
  result = (*(*(v12 + 32) + 6104))();
  if (!*(v12 + 3404))
  {
    OUTLINED_FUNCTION_2_1();

    return GLDrawCommandStatistics::update(v14, v15, v16, v17);
  }

  return result;
}

uint64_t use_program_stages(__GLIContextRec *a1)
{
  OUTLINED_FUNCTION_10_0();
  v4 = ContextInfo::activeCtxInfoMap + 8;
  if (!*(ContextInfo::activeCtxInfoMap + 8))
  {
    goto LABEL_8;
  }

  do
  {
    OUTLINED_FUNCTION_8_2();
    if (v8)
    {
      v5 = v6;
    }
  }

  while (*(v6 + 8 * v7));
  if (v5 == v4 || *(v5 + 32) > v3)
  {
LABEL_8:
    v5 = v4;
  }

  v9 = *(v5 + 40);
  query_pipeline_programs(v9, v2, v18);
  OUTLINED_FUNCTION_8_0(v9);
  v10 = *(*(v9 + 32) + 6552);
  OUTLINED_FUNCTION_2_1();
  result = v11();
  if ((gCheckGLErrors & 1) == 0)
  {
    result = OUTLINED_FUNCTION_8_0(v9);
  }

  if (v1)
  {
    if (!*(v9 + 3404))
    {
      OUTLINED_FUNCTION_2_1();
      return wrapper_cache_pipeline_use_stages(v13, v14, v15, v16, v17, 0);
    }
  }

  return result;
}

uint64_t active_shader_program(__GLIContextRec *a1)
{
  OUTLINED_FUNCTION_9_1();
  v3 = v2;
  v4 = ContextInfo::activeCtxInfoMap + 8;
  if (!*(ContextInfo::activeCtxInfoMap + 8))
  {
    goto LABEL_8;
  }

  do
  {
    OUTLINED_FUNCTION_7_0();
    if (v8)
    {
      v5 = v6;
    }
  }

  while (*(v6 + 8 * v7));
  if (v5 == v4 || *(v5 + 32) > v3)
  {
LABEL_8:
    v5 = v4;
  }

  v9 = *(v5 + 40);
  query_pipeline_programs(v9, v1, v18);
  OUTLINED_FUNCTION_8_0(v9);
  v10 = *(*(v9 + 32) + 6560);
  v11 = OUTLINED_FUNCTION_3_0();
  result = v12(v11);
  if ((gCheckGLErrors & 1) == 0)
  {
    result = OUTLINED_FUNCTION_8_0(v9);
  }

  if (!*(v9 + 3404))
  {
    OUTLINED_FUNCTION_4_2();
    return wrapper_cache_pipeline_active_shader_program(v14, v15, v16, v17);
  }

  return result;
}

void GPUTools::NameTargetTupleArray::split(GPUTools::NameTargetTupleArray *this, int a2, void **a3, void **a4)
{
  if (*this && a3 | a4)
  {
    v6 = **this;
    if (v6)
    {
      v9 = 0;
      v10 = (*(this + 1) + 4);
      v11 = 8 * v6;
      do
      {
        v12 = *v10;
        v10 += 2;
        if (v12 == a2)
        {
          ++v9;
        }

        v11 -= 8;
      }

      while (v11);
      if (a3)
      {
        GPUTools::NameTargetTupleArray::allocate(a3, v9);
      }

      v13 = **this;
      if (a4)
      {
        GPUTools::NameTargetTupleArray::allocate(a4, v13 - v9);
        v14 = **this;
        if (a3)
        {
          if (**this)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 4;
            do
            {
              v19 = *(this + 1);
              v20 = *(v19 + v18);
              v21 = *(v19 + 8 * v15);
              if (v20 == a2)
              {
                *(a3[1] + v17++) = v21;
              }

              else
              {
                *(a4[1] + v16++) = v21;
              }

              ++v15;
              v18 += 8;
            }

            while (v15 < **this);
          }
        }

        else if (**this)
        {
          v26 = 0;
          v27 = 0;
          v28 = 4;
          do
          {
            v29 = *(this + 1);
            if (*(v29 + v28) != a2)
            {
              *(a4[1] + v27++) = *(v29 + 8 * v26);
              v14 = **this;
            }

            ++v26;
            v28 += 8;
          }

          while (v26 < v14);
        }
      }

      else if (v13)
      {
        v22 = 0;
        v23 = 0;
        v24 = 4;
        do
        {
          v25 = *(this + 1);
          if (*(v25 + v24) == a2)
          {
            *(a3[1] + v23++) = *(v25 + 8 * v22);
            v13 = **this;
          }

          ++v22;
          v24 += 8;
        }

        while (v22 < v13);
      }
    }

    else
    {
      if (a3)
      {
        GPUTools::NameTargetTupleArray::allocate(a3, 0);
      }

      if (a4)
      {

        GPUTools::NameTargetTupleArray::allocate(a4, 0);
      }
    }
  }
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

void operator delete[]()
{
    ;
  }
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

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}