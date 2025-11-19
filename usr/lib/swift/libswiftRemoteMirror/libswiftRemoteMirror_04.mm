void swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::readELFSections<anonymous namespace::ELFTraits<(unsigned char)2>>(swift::remote::RemoteAddress,std::optional<llvm::sys::MemoryBlock>,llvm::SmallVector<llvm::StringRef,1u>)::{lambda(llvm::StringRef,BOOL)#1}::operator()(uint64_t a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if ((**a1 & 1) != 0 || (v6 = *(a1 + 8), v7 = *v6, v8 = v6[1], *v6 == v8))
  {
LABEL_70:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    return;
  }

  v42 = *(a1 + 48);
  v10 = &v54;
  v46 = v6[1];
  while (1)
  {
    v11 = *v7;
    if ((*v7)[1])
    {
      break;
    }

LABEL_5:
    if (++v7 == v8)
    {
      goto LABEL_70;
    }
  }

  v12 = a3;
  v13 = v10;
  v14 = *v11;
  v15 = **(a1 + 16);
  v16 = **(a1 + 24) - v14;
  v17 = strnlen((v15 + v14), v16);
  if (v17 > v16)
  {
    **a1 = 1;
    goto LABEL_70;
  }

  v18 = v17;
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  v57 = v17;
  if (v17)
  {
    memmove(__dst, (v15 + v14), v17);
  }

  v10 = v13;
  *(__dst + v18) = 0;
  v19 = v57;
  v21 = __dst[0];
  v20 = __dst[1];
  if (v57 >= 0)
  {
    v22 = __dst;
  }

  else
  {
    v22 = __dst[0];
  }

  if (v57 >= 0)
  {
    v20 = v57;
  }

  a3 = v12;
  if (v20 != v12 || v12 && memcmp(v22, a2, v12) || ((*(v11 + 10) & 0x20) == 0) == a4)
  {
    v30 = 3;
    goto LABEL_27;
  }

  v24 = *(a1 + 32);
  v23 = *(a1 + 40);
  v25 = *(v11 + 2) + *v24;
  v26 = v43 & 0xFFFFFFFFFFFFFF00 | *(v24 + 8);
  v27 = *(v11 + 4);
  v53 = 0;
  v55 = 0;
  v43 = v26;
  if (*(v23 + 24) != 1)
  {
    v41 = v25;
    (*(**(v42 + 2800) + 24))(&v50);
    std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](&v53, &v50);
    v31 = v50;
    v50 = 0;
    if (v31)
    {
      v48[0] = v31;
      if (!v52)
      {
        goto LABEL_72;
      }

      (*(*v52 + 48))(v52, v48);
    }

    if (v52 == v51)
    {
      (*(*v52 + 32))(v52);
    }

    else if (v52)
    {
      (*(*v52 + 40))();
      v32 = v53;
      if (v53)
      {
        goto LABEL_44;
      }

LABEL_55:
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      v30 = 1;
      v29 = v55;
      v10 = v13;
      v53 = 0;
      goto LABEL_64;
    }

    v32 = v53;
    if (v53)
    {
      goto LABEL_44;
    }

    goto LABEL_55;
  }

  v28 = *(v11 + 3);
  if (*(v23 + 8) < v28 + v27)
  {
    v29 = 0;
    **a1 = 1;
    v30 = 2;
    v53 = 0;
    goto LABEL_64;
  }

  v41 = v25;
  v33 = malloc_type_malloc(v27, 0xFC2F0DA2uLL);
  v48[0] = off_E0D90;
  v49 = v48;
  v50 = v33;
  v40 = v33;
  v52 = v51;
  v51[0] = off_E0D90;
  std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](&v53, &v50);
  v34 = v50;
  v50 = 0;
  if (v34)
  {
    v58 = v34;
    if (!v52)
    {
      goto LABEL_72;
    }

    (*(*v52 + 48))(v52, &v58);
  }

  if (v52 == v51)
  {
    (*(*v52 + 32))(v52);
  }

  else if (v52)
  {
    (*(*v52 + 40))(v52);
  }

  if (v49 == v48)
  {
    (*(*v49 + 32))(v49);
  }

  else if (v49)
  {
    (*(*v49 + 40))(v49);
  }

  memcpy(v40, (v28 + **(a1 + 40)), v27);
  v32 = v53;
  if (!v53)
  {
    goto LABEL_55;
  }

LABEL_44:
  v35 = v42;
  v36 = *(v42 + 2856);
  if (v36 >= *(v42 + 2864))
  {
    v37 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v42 + 2848, &v53);
  }

  else
  {
    v53 = 0;
    *v36 = v32;
    if (v55)
    {
      if (v55 == v13)
      {
        v36[4] = (v36 + 1);
        (*(*v55 + 24))(v55);
      }

      else
      {
        v36[4] = v55;
        v55 = 0;
      }
    }

    else
    {
      v36[4] = 0;
    }

    v37 = v36 + 5;
    v35 = v42;
  }

  v10 = v13;
  *(v35 + 2856) = v37;
  *a5 = v41;
  *(a5 + 8) = v43;
  *(a5 + 16) = v32;
  *(a5 + 24) = v27;
  v38 = v53;
  v29 = v55;
  v53 = 0;
  if (v38)
  {
    v50 = v38;
    v8 = v46;
    if (!v55)
    {
LABEL_72:
      v39 = std::__throw_bad_function_call[abi:nn200100]();
      return;
    }

    a3 = v12;
    (*(*v55 + 48))();
    v30 = 1;
    v29 = v55;
    if (v55 != v13)
    {
      goto LABEL_65;
    }

LABEL_62:
    (*(*v29 + 32))(v29);
    goto LABEL_27;
  }

  v30 = 1;
LABEL_64:
  v8 = v46;
  a3 = v12;
  if (v29 == v10)
  {
    goto LABEL_62;
  }

LABEL_65:
  if (v29)
  {
    (*(*v29 + 40))(v29);
  }

LABEL_27:
  if (v19 < 0)
  {
    operator delete(v21);
  }

  if (v30 == 3)
  {
    goto LABEL_5;
  }

  if (v30 == 2)
  {
    goto LABEL_70;
  }
}

void swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::readELFSections<anonymous namespace::ELFTraits<(unsigned char)1>>(swift::remote::RemoteAddress,std::optional<llvm::sys::MemoryBlock>,llvm::SmallVector<llvm::StringRef,1u>)::{lambda(llvm::StringRef,BOOL)#1}::operator()(uint64_t a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if ((**a1 & 1) != 0 || (v6 = *(a1 + 8), v7 = *v6, v8 = v6[1], *v6 == v8))
  {
LABEL_71:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    return;
  }

  v42 = *(a1 + 48);
  v10 = &v54;
  v46 = v6[1];
  while (1)
  {
    v12 = *v7;
    if (!(*v7)[1])
    {
      goto LABEL_6;
    }

    v13 = a3;
    v14 = v10;
    v15 = *v12;
    v16 = **(a1 + 16);
    v17 = (**(a1 + 24) - v15);
    v18 = strnlen((v16 + v15), v17);
    if (v18 > v17)
    {
      **a1 = 1;
      goto LABEL_71;
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    v57 = v18;
    if (v18)
    {
      memmove(__dst, (v16 + v15), v18);
    }

    v10 = v14;
    *(__dst + v19) = 0;
    v20 = v57;
    v22 = __dst[0];
    v21 = __dst[1];
    if (v57 >= 0)
    {
      v23 = __dst;
    }

    else
    {
      v23 = __dst[0];
    }

    if (v57 >= 0)
    {
      v21 = v57;
    }

    a3 = v13;
    if (v21 != v13 || v13 && memcmp(v23, a2, v13) || ((*(v12 + 10) & 0x20) == 0) == a4)
    {
      v11 = 3;
      if (v20 < 0)
      {
        break;
      }

      goto LABEL_5;
    }

    v25 = *(a1 + 32);
    v24 = *(a1 + 40);
    v26 = *v25 + v12[3];
    v27 = v43 & 0xFFFFFFFFFFFFFF00 | *(v25 + 8);
    v28 = v12[5];
    v53 = 0;
    v55 = 0;
    v43 = v27;
    if (*(v24 + 24) == 1)
    {
      v29 = v12[4];
      if (*(v24 + 8) < (v29 + v28))
      {
        v30 = 0;
        **a1 = 1;
        v11 = 2;
LABEL_53:
        v53 = 0;
        v8 = v46;
        v10 = v14;
        goto LABEL_63;
      }

      v41 = v26;
      v33 = malloc_type_malloc(v28, 0xFC2F0DA2uLL);
      v48[0] = off_E0DD8;
      v49 = v48;
      v50 = v33;
      v40 = v33;
      v52 = v51;
      v51[0] = off_E0DD8;
      std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](&v53, &v50);
      v34 = v50;
      v50 = 0;
      if (v34)
      {
        v58 = v34;
        if (!v52)
        {
          goto LABEL_72;
        }

        (*(*v52 + 48))(v52, &v58);
      }

      if (v52 == v51)
      {
        (*(*v52 + 32))(v52);
      }

      else if (v52)
      {
        (*(*v52 + 40))(v52);
      }

      if (v49 == v48)
      {
        (*(*v49 + 32))(v49);
      }

      else if (v49)
      {
        (*(*v49 + 40))(v49);
      }

      memcpy(v40, (**(a1 + 40) + v29), v28);
      v32 = v53;
      if (!v53)
      {
LABEL_52:
        *a5 = 0;
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
        v11 = 1;
        v30 = v55;
        goto LABEL_53;
      }
    }

    else
    {
      v41 = v26;
      (*(**(v42 + 2800) + 24))(&v50);
      std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](&v53, &v50);
      v31 = v50;
      v50 = 0;
      if (v31)
      {
        v48[0] = v31;
        if (!v52)
        {
          goto LABEL_72;
        }

        (*(*v52 + 48))(v52, v48);
      }

      if (v52 == v51)
      {
        (*(*v52 + 32))(v52);
      }

      else if (v52)
      {
        (*(*v52 + 40))();
        v32 = v53;
        if (!v53)
        {
          goto LABEL_52;
        }

        goto LABEL_41;
      }

      v32 = v53;
      if (!v53)
      {
        goto LABEL_52;
      }
    }

LABEL_41:
    v35 = v42;
    v36 = *(v42 + 2856);
    if (v36 >= *(v42 + 2864))
    {
      v37 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v42 + 2848, &v53);
    }

    else
    {
      v53 = 0;
      *v36 = v32;
      if (v55)
      {
        if (v55 == v14)
        {
          v36[4] = (v36 + 1);
          (*(*v55 + 24))(v55);
        }

        else
        {
          v36[4] = v55;
          v55 = 0;
        }
      }

      else
      {
        v36[4] = 0;
      }

      v37 = v36 + 5;
      v35 = v42;
    }

    v10 = v14;
    *(v35 + 2856) = v37;
    *a5 = v41;
    *(a5 + 8) = v43;
    *(a5 + 16) = v32;
    *(a5 + 24) = v28;
    v38 = v53;
    v30 = v55;
    v53 = 0;
    if (!v38)
    {
      v11 = 1;
      v8 = v46;
LABEL_63:
      a3 = v13;
      if (v30 == v10)
      {
        goto LABEL_60;
      }

      goto LABEL_64;
    }

    v50 = v38;
    v8 = v46;
    if (!v55)
    {
LABEL_72:
      v39 = std::__throw_bad_function_call[abi:nn200100]();
      return;
    }

    a3 = v13;
    (*(*v55 + 48))();
    v11 = 1;
    v30 = v55;
    if (v55 == v14)
    {
LABEL_60:
      (*(*v30 + 32))(v30);
      if (v20 < 0)
      {
        break;
      }

      goto LABEL_5;
    }

LABEL_64:
    if (v30)
    {
      (*(*v30 + 40))(v30);
    }

    if (v20 < 0)
    {
      break;
    }

LABEL_5:
    if (v11 != 3)
    {
      goto LABEL_68;
    }

LABEL_6:
    if (++v7 == v8)
    {
      goto LABEL_71;
    }
  }

  operator delete(v22);
  if (v11 == 3)
  {
    goto LABEL_6;
  }

LABEL_68:
  if (v11 == 2)
  {
    goto LABEL_71;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_readIsaMask::$_0>(swift_reflection_readIsaMask::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(void **a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  IsaEncoding = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getIsaEncoding(*a2);
  if (IsaEncoding == 2)
  {
    v5 = 0;
    result = 1;
  }

  else if (IsaEncoding == 3)
  {
    v5 = *(v3 + 104);
    result = 1;
  }

  else
  {
    v5 = 0;
    result = 0;
  }

  ***v2 = v5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_readIsaMask::$_0>(swift_reflection_readIsaMask::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(void **a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  IsaEncoding = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getIsaEncoding(*a2);
  if (IsaEncoding == 2)
  {
    v5 = 0;
    result = 1;
  }

  else if (IsaEncoding == 3)
  {
    v5 = *(v3 + 104);
    result = 1;
  }

  else
  {
    v5 = 0;
    result = 0;
  }

  ***v2 = v5;
  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getIsaEncoding(uint64_t a1)
{
  result = *(a1 + 96);
  if (!result)
  {
    v3 = *(a1 + 2800);
    operator new();
  }

  return result;
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
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

char *swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *&v196 = a2;
  *(&v196 + 1) = a3;
  LOBYTE(v197) = a4;
  __src[0] = 0;
  if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v196, __src) && __src[0] != (*a1 + 32 * *(a1 + 16)))
  {
    return *(__src[0] + 3);
  }

  v11 = __OFSUB__(a5, 1);
  v12 = (a5 - 1);
  if (v12 < 0 != v11)
  {
    return 0;
  }

  *__src = v196;
  v154 = v197;
  v155 = 0;
  v114.__r_.__value_.__r.__words[0] = 0;
  if ((__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __src, &v114) & 1) == 0)
  {
    v13 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __src, __src, v114.__r_.__value_.__l.__data_);
    v14 = __src[1];
    *v13 = __src[0];
    *(v13 + 8) = v14;
    *(v13 + 16) = v154;
    v13[3] = v155;
  }

  Metadata = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v194);
  v16 = v195;
  if (!v195)
  {
    return 0;
  }

  v17 = *v195;
  if (*v195 > 0x7FFuLL)
  {
    LODWORD(v17) = 0;
  }

  if (v17 <= 770)
  {
    if (v17 <= 514)
    {
      if ((v17 - 512) < 3)
      {
        *__src = v194;
        v154 = v195;
        return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromMetadata(a1, __src, v12, 0);
      }

      if (!v17)
      {
        *__src = v194;
        v154 = v195;
        return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromClassMetadata(a1, __src, v12, a4);
      }

      goto LABEL_46;
    }

    if ((v17 - 515) >= 2)
    {
      if (v17 == 769)
      {
        v154 = 0;
        __src[1] = 0;
        __src[0] = 0;
        std::vector<swift::reflection::TypeRef const*>::reserve(__src, v195[1]);
        v31 = *(v16 + 8);
        if (*(v16 + 8))
        {
          v32 = (v16 + 24);
          do
          {
            v34 = *v32;
            v32 += 2;
            result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v34, a3, 0, v12);
            if (!result)
            {
              goto LABEL_157;
            }

            v35 = __src[1];
            if (__src[1] < v154)
            {
              *__src[1] = result;
              v33 = v35 + 8;
            }

            else
            {
              v36 = __src[0];
              v37 = __src[1] - __src[0];
              v38 = (__src[1] - __src[0]) >> 3;
              v39 = v38 + 1;
              if ((v38 + 1) >> 61)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v40 = v154 - __src[0];
              if ((v154 - __src[0]) >> 2 > v39)
              {
                v39 = v40 >> 2;
              }

              if (v40 >= 0x7FFFFFFFFFFFFFF8)
              {
                v41 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v41 = v39;
              }

              if (v41)
              {
                if (!(v41 >> 61))
                {
                  operator new();
                }

                goto LABEL_224;
              }

              *(8 * v38) = result;
              v33 = (8 * v38 + 8);
              memcpy(0, v36, v37);
              __src[0] = 0;
              __src[1] = v33;
              v154 = 0;
              if (v36)
              {
                operator delete(v36);
              }
            }

            __src[1] = v33;
            --v31;
          }

          while (v31);
        }

        v49 = *(v16 + 16);
        memset(&v114, 0, sizeof(v114));
        if (v49 && !(*(**(a1 + 2800) + 16))(*(a1 + 2800), v49, a3, &v114))
        {
          result = 0;
        }

        else
        {
          memset(&v193, 0, sizeof(v193));
          v50 = std::string::find(&v114, 32, 0);
          if (v50 == -1)
          {
            v54 = 0;
            size = 0;
          }

          else
          {
            v51 = v50;
            v52 = 0;
            do
            {
              if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v53 = &v114;
              }

              else
              {
                v53 = v114.__r_.__value_.__r.__words[0];
              }

              v152.__r_.__value_.__r.__words[0] = v53 + v52;
              v152.__r_.__value_.__l.__size_ = v51 - v52;
              std::vector<__swift::__runtime::llvm::StringRef>::push_back[abi:nn200100](&v193, &v152);
              v52 = v51 + 1;
              v51 = std::string::find(&v114, 32, v51 + 1);
            }

            while (v51 != -1);
            size = v193.__r_.__value_.__l.__size_;
            v54 = v193.__r_.__value_.__r.__words[0];
          }

          v84 = (size - v54) >> 4;
          v85 = __src[0];
          v86 = (__src[1] - __src[0]) >> 3;
          if (v86 > v84)
          {
            v87 = v84 + 1;
            do
            {
              *&v152.__r_.__value_.__l.__data_ = 0uLL;
              std::vector<__swift::__runtime::llvm::StringRef>::push_back[abi:nn200100](&v193, &v152);
              v85 = __src[0];
              v86 = (__src[1] - __src[0]) >> 3;
            }

            while (v86 > v87++);
            v54 = v193.__r_.__value_.__r.__words[0];
          }

          TupleType = swift::reflection::TypeRefBuilder::createTupleType(a1 + 328, v85, v86, v54, (v193.__r_.__value_.__l.__size_ - v54) >> 4);
          v90 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v196);
          result = TupleType;
          *v90 = TupleType;
          if (v193.__r_.__value_.__r.__words[0])
          {
            v193.__r_.__value_.__l.__size_ = v193.__r_.__value_.__r.__words[0];
            operator delete(v193.__r_.__value_.__l.__data_);
            result = TupleType;
          }
        }

        if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
        {
          v91 = result;
          operator delete(v114.__r_.__value_.__l.__data_);
          result = v91;
        }

LABEL_157:
        v25 = __src[0];
        if (!__src[0])
        {
          return result;
        }

        __src[1] = __src[0];
        goto LABEL_169;
      }

      if (v17 == 770)
      {
        memset(&v114, 0, sizeof(v114));
        v19 = *(v195 + 4);
        if (*(v195 + 4))
        {
          v20 = v195 + 3;
          v21 = a3;
          v22 = v195 + 3;
          while (1)
          {
            v24 = *v22++;
            result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v24, v21, 0, v12);
            if (!result)
            {
              goto LABEL_167;
            }

            __src[1] = 0;
            __src[0] = 0;
            v154 = result;
            if ((*(v16 + 8) & 0x2000000) != 0)
            {
              v23 = v20[*(v16 + 8)];
            }

            else
            {
              v23 = 0;
            }

            LODWORD(v155) = v23;
            std::vector<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>>::push_back[abi:nn200100](&v114, __src);
            v20 = (v20 + 4);
            if (!--v19)
            {
              goto LABEL_132;
            }
          }
        }

        v21 = a3;
LABEL_132:
        result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, *(v16 + 16), v21, 0, v12);
        if (!result)
        {
          goto LABEL_167;
        }

        v74 = result;
        v75 = *(v16 + 8);
        if ((v75 & 0x80000000) != 0)
        {
          ExtendedFlags = swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getExtendedFlags(v16);
        }

        else
        {
          ExtendedFlags = 0;
        }

        v77 = *(v16 + 8);
        if ((v77 & 0x10000000) != 0)
        {
          result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, *(((v16 + 8 * *(v16 + 8) + 4 * (*(v16 + 8) & ((*(v16 + 8) << 38) >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 * ((*(v16 + 8) >> 27) & 1)), v21, 0, v12);
          if (!result)
          {
            goto LABEL_167;
          }

          v82 = result;
          v77 = *(v16 + 8);
        }

        else
        {
          v82 = 0;
        }

        if ((v77 & 0x8000000) != 0)
        {
          v92 = *((v16 + 8 * v77 + 4 * (v77 & (v77 << 38 >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8);
          if ((v92 - 1) >= 4)
          {
            v83 = 0;
          }

          else
          {
            v83 = v92;
          }
        }

        else
        {
          v83 = 0;
        }

        if (swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::hasThrownError(v16))
        {
          ThrownError = swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getThrownError(v16);
          result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, ThrownError, v21, 0, v12);
          if (!result)
          {
            goto LABEL_167;
          }
        }

        else
        {
          result = 0;
        }

        FunctionType = swift::reflection::TypeRefBuilder::createFunctionType(a1 + 328, v114.__r_.__value_.__l.__data_, (v114.__r_.__value_.__l.__size_ - v114.__r_.__value_.__r.__words[0]) >> 5, v74, v75, ExtendedFlags, v83, v82, result);
        v95 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v196);
        result = FunctionType;
        *v95 = FunctionType;
LABEL_167:
        v25 = v114.__r_.__value_.__r.__words[0];
        if (!v114.__r_.__value_.__r.__words[0])
        {
          return result;
        }

        v114.__r_.__value_.__l.__size_ = v114.__r_.__value_.__r.__words[0];
        goto LABEL_169;
      }

LABEL_46:
      v18 = swift::reflection::OpaqueTypeRef::get(Metadata);
      goto LABEL_47;
    }

    result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(a1, &v194, 0);
    if (!result)
    {
      return result;
    }

    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, result, v26, &v193);
    if (v193.__r_.__value_.__r.__words[2])
    {
      v154 = 0;
      __src[1] = 0;
      v155 = 0;
      v156 = 2400;
      v157 = 0;
      v158 = 0;
      v192 = 0;
      __src[0] = off_E13E8;
      v159 = 0;
      v161 = 0;
      v160 = 0;
      v162 = 0;
      v174 = 0u;
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v180 = 0u;
      v181 = 0u;
      v182 = 0u;
      v183 = 0u;
      v184 = 0u;
      v185 = 0u;
      v186 = 0u;
      v187 = 0u;
      v188 = 0u;
      v189 = 0u;
      v190 = 0u;
      v163 = 0u;
      v164 = 0u;
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v191 = 0;
      v114 = v193;
      v27 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextMangling(a1, &v114, __src);
      if (v27 && *(v27 + 16) == 243)
      {
        swift::Demangle::__runtime::mangleNode();
        if (LODWORD(v114.__r_.__value_.__l.__data_))
        {
          v28 = 0;
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v152, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v152 = __p;
          }

          v28 = swift::reflection::ForeignClassTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, &v152);
          *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v196) = v28;
          if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v152.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v28 = 0;
      }

      swift::Demangle::__runtime::Demangler::~Demangler(__src);
      return v28;
    }

    return 0;
  }

  if (v17 <= 774)
  {
    if (v17 <= 772)
    {
      if (v17 == 771)
      {
        v42 = *(v195 + 2);
        if ((v42 & 0x40000000) != 0)
        {
          result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v195[2], a3, 0, v12);
          if (!result)
          {
            return result;
          }

          v43 = result;
          v44 = 1;
        }

        else
        {
          v43 = 0;
          v44 = v42 >= 0;
        }

        v154 = 0;
        __src[1] = 0;
        v155 = 0;
        v156 = 2400;
        v157 = 0;
        v158 = 0;
        v192 = 0;
        __src[0] = off_E13E8;
        v159 = 0;
        v161 = 0;
        v160 = 0;
        v162 = 0;
        v174 = 0u;
        v175 = 0u;
        v176 = 0u;
        v177 = 0u;
        v178 = 0u;
        v179 = 0u;
        v180 = 0u;
        v181 = 0u;
        v182 = 0u;
        v183 = 0u;
        v184 = 0u;
        v185 = 0u;
        v186 = 0u;
        v187 = 0u;
        v188 = 0u;
        v189 = 0u;
        v190 = 0u;
        v163 = 0u;
        v164 = 0u;
        v165 = 0u;
        v166 = 0u;
        v167 = 0u;
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        v173 = 0u;
        v191 = 0;
        memset(&v193, 0, sizeof(v193));
        v56 = *(v16 + 12);
        if (v56)
        {
          v112 = v44;
          v57 = 0;
          v58 = (v16 + 8 * ((*(v16 + 8) >> 30) & 1) + 16);
          v59 = 8 * v56;
          v113 = v43;
          do
          {
            v152.__r_.__value_.__r.__words[0] = *v58;
            v152.__r_.__value_.__l.__size_ = v152.__r_.__value_.__r.__words[0];
            v152.__r_.__value_.__r.__words[2] = a3;
            swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readProtocol<swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(swift::remote::RemoteAddress,BOOL,int)::ProtocolResolver>(a1, &v152, __src, a1 + 328, &v114);
            if (__p.__r_.__value_.__s.__data_[8] != 1)
            {
              v79 = 0;
              goto LABEL_139;
            }

            if (v57 >= v193.__r_.__value_.__r.__words[2])
            {
              v61 = v193.__r_.__value_.__r.__words[0];
              v62 = (v57 - v193.__r_.__value_.__r.__words[0]);
              v63 = 1 - 0x3333333333333333 * ((v57 - v193.__r_.__value_.__r.__words[0]) >> 3);
              if (v63 > 0x666666666666666)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              if (0x999999999999999ALL * ((v193.__r_.__value_.__r.__words[2] - v193.__r_.__value_.__r.__words[0]) >> 3) > v63)
              {
                v63 = 0x999999999999999ALL * ((v193.__r_.__value_.__r.__words[2] - v193.__r_.__value_.__r.__words[0]) >> 3);
              }

              if (0xCCCCCCCCCCCCCCCDLL * ((v193.__r_.__value_.__r.__words[2] - v193.__r_.__value_.__r.__words[0]) >> 3) >= 0x333333333333333)
              {
                v64 = 0x666666666666666;
              }

              else
              {
                v64 = v63;
              }

              if (v64)
              {
                if (v64 <= 0x666666666666666)
                {
                  operator new();
                }

LABEL_224:
                std::string::__throw_length_error[abi:nn200100]();
              }

              v62[1].__r_.__value_.__s.__data_[8] = 0;
              v65 = &v62[1].__r_.__value_.__s.__data_[8];
              v66 = v62;
              if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(v62, v114.__r_.__value_.__l.__data_, v114.__r_.__value_.__l.__size_);
                v61 = v193.__r_.__value_.__r.__words[0];
                v62 = (v193.__r_.__value_.__l.__size_ - v193.__r_.__value_.__r.__words[0]);
              }

              else
              {
                *v62 = v114;
              }

              v66[1].__r_.__value_.__s.__data_[0] = __p.__r_.__value_.__s.__data_[0];
              *v65 = 1;
              v57 = (v66 + 40);
              v67 = (v66 - v62);
              memcpy(v67, v61, v62);
              v193.__r_.__value_.__r.__words[0] = v67;
              *&v193.__r_.__value_.__r.__words[1] = v57;
              if (v61)
              {
                operator delete(v61);
              }
            }

            else
            {
              v57->__r_.__value_.__s.__data_[0] = 0;
              v57[1].__r_.__value_.__s.__data_[8] = 0;
              if (__p.__r_.__value_.__s.__data_[8] == 1)
              {
                if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(v57, v114.__r_.__value_.__l.__data_, v114.__r_.__value_.__l.__size_);
                }

                else
                {
                  v60 = *&v114.__r_.__value_.__l.__data_;
                  v57->__r_.__value_.__r.__words[2] = v114.__r_.__value_.__r.__words[2];
                  *&v57->__r_.__value_.__l.__data_ = v60;
                }

                v57[1].__r_.__value_.__s.__data_[0] = __p.__r_.__value_.__s.__data_[0];
                v57[1].__r_.__value_.__s.__data_[8] = 1;
              }

              v57 = (v57 + 40);
            }

            v193.__r_.__value_.__l.__size_ = v57;
            if (__p.__r_.__value_.__s.__data_[8] == 1 && SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v114.__r_.__value_.__l.__data_);
            }

            ++v58;
            v59 -= 8;
          }

          while (v59);
          v78 = v193.__r_.__value_.__r.__words[0];
          v43 = v113;
          v44 = v112;
        }

        else
        {
          v57 = 0;
          v78 = 0;
        }

        ProtocolCompositionType = swift::reflection::TypeRefBuilder::createProtocolCompositionType(a1 + 328, v78, 0xCCCCCCCCCCCCCCCDLL * ((v57 - v78) >> 3), v43, v44);
        v81 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v196);
        v79 = ProtocolCompositionType;
        *v81 = ProtocolCompositionType;
LABEL_139:
        std::vector<std::optional<std::pair<std::string,BOOL>>>::~vector[abi:nn200100](&v193);
        swift::Demangle::__runtime::Demangler::~Demangler(__src);
        return v79;
      }

      result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v195[1], a3, 0, v12);
      if (!result)
      {
        return result;
      }

      v18 = swift::reflection::MetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, result, 0);
LABEL_47:
      v29 = v18;
      v30 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v196);
      result = v29;
      *v30 = v29;
      return result;
    }

    if (v17 != 773)
    {
      result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v195[1], a3, 0, v12);
      if (!result)
      {
        return result;
      }

      v18 = swift::reflection::ExistentialMetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, result);
      goto LABEL_47;
    }

    v45 = v195[1];
    __src[1] = 0;
    __src[0] = 0;
    v154 = 0;
    ObjCClassName = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCClassName(a1, v45, a3, __src);
    result = 0;
    if (ObjCClassName)
    {
      v47 = swift::reflection::ObjCClassTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, __src);
      v48 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v196);
      result = v47;
      *v48 = v47;
    }

LABEL_33:
    if ((SHIBYTE(v154) & 0x80000000) == 0)
    {
      return result;
    }

    v25 = __src[0];
LABEL_169:
    v79 = result;
    operator delete(v25);
    return v79;
  }

  if ((v17 - 1280) < 2)
  {
LABEL_32:
    strcpy(__src, "Bo");
    HIBYTE(v154) = 2;
    result = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, __src);
    goto LABEL_33;
  }

  if (v17 != 775)
  {
    if (v17 != 1024)
    {
      goto LABEL_46;
    }

    goto LABEL_32;
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readShape(a1, *(a1 + 2816) & v195[1], 0, &v193);
  if (!v193.__r_.__value_.__r.__words[2])
  {
    return 0;
  }

  if ((*(v193.__r_.__value_.__r.__words[2] + 1) & 1) != 0 && *(v193.__r_.__value_.__r.__words[2] + 20))
  {
    result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, *(v16 + 16), a3, 0, v12);
    if (result)
    {
      operator new();
    }

    return result;
  }

  v154 = 0;
  __src[1] = 0;
  v155 = 0;
  v156 = 2400;
  v157 = 0;
  v158 = 0;
  v192 = 0;
  __src[0] = off_E13E8;
  v159 = 0;
  v161 = 0;
  v160 = 0;
  v162 = 0;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v191 = 0;
  v68 = *(v193.__r_.__value_.__r.__words[2] + 4);
  if (v68)
  {
    v69 = (v193.__r_.__value_.__r.__words[0] + v68 + 4);
  }

  else
  {
    v69 = 0;
  }

  if (v68)
  {
    v70 = v193.__r_.__value_.__s.__data_[8];
  }

  else
  {
    v70 = 0;
  }

  MangledName = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(a1, v69, v70, 0, __src);
  if (!MangledName)
  {
    goto LABEL_128;
  }

  v152.__r_.__value_.__r.__words[0] = a1 + 328;
  swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v152, MangledName, 0, 0, v72, &v114);
  if (LOWORD(v114.__r_.__value_.__r.__words[2]))
  {
    if (LOWORD(v114.__r_.__value_.__r.__words[2]) == 1)
    {
      (v114.__r_.__value_.__l.__size_)(v114.__r_.__value_.__r.__words[0], 3, 0);
    }

    goto LABEL_128;
  }

  v73 = v114.__r_.__value_.__r.__words[0];
  if (!v114.__r_.__value_.__r.__words[0])
  {
    goto LABEL_129;
  }

  v151 = v193;
  swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGeneralizationSignature(v193.__r_.__value_.__r.__words[2], &v114);
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(a1, &v151, &v114, &v152);
  if (LOWORD(v152.__r_.__value_.__r.__words[2]))
  {
    if (LOWORD(v152.__r_.__value_.__r.__words[2]) == 1)
    {
      (v152.__r_.__value_.__l.__size_)(v152.__r_.__value_.__r.__words[0], 3, 0);
    }

    goto LABEL_128;
  }

  if (!v152.__r_.__value_.__r.__words[0])
  {
LABEL_128:
    v73 = 0;
    goto LABEL_129;
  }

  swift::reflection::TypeRefBuilder::createSubstitutionMap(v152.__r_.__value_.__l.__data_, 0, 0, &v152);
  if (!LODWORD(v152.__r_.__value_.__r.__words[1]))
  {
    v73 = 0;
    goto LABEL_222;
  }

  v73 = swift::reflection::TypeRef::subst(v73, a1 + 328, &v152);
  if (!v73)
  {
    goto LABEL_222;
  }

  v96 = *v193.__r_.__value_.__r.__words[2];
  if ((v96 & 0x200) == 0)
  {
    goto LABEL_221;
  }

  *&v114.__r_.__value_.__r.__words[1] = 0uLL;
  __p.__r_.__value_.__r.__words[0] = 0;
  *&__p.__r_.__value_.__r.__words[1] = 0x960uLL;
  v116 = 0;
  v150 = 0;
  v114.__r_.__value_.__r.__words[0] = off_E13E8;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v97 = ((v193.__r_.__value_.__r.__words[2] + 8 * ((v96 >> 8) & 1) + 19) & 0xFFFFFFFFFFFFFFFCLL);
  v98 = v97 + v193.__r_.__value_.__r.__words[0] - v193.__r_.__value_.__r.__words[2];
  v149 = 0;
  v99 = *v97;
  v100 = (v98 + v99);
  if (v99)
  {
    v101 = v100;
  }

  else
  {
    v101 = 0;
  }

  if (v99)
  {
    v102 = v193.__r_.__value_.__s.__data_[8];
  }

  else
  {
    v102 = 0;
  }

  v103 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(a1, v101, v102, 0, &v114);
  if (!v103)
  {
    swift::Demangle::__runtime::Demangler::~Demangler(&v114);
    v73 = 0;
    goto LABEL_222;
  }

  for (i = v103; *(i + 16) == 243; i = *v111)
  {
    v105 = *(i + 18);
    v106 = i;
    if ((v105 - 1) >= 2)
    {
      if (v105 != 5 || !*(i + 8))
      {
        break;
      }

      v106 = *i;
    }

    if (*(*v106 + 16) != 154)
    {
      break;
    }

    v107 = i;
    if ((v105 - 1) >= 2)
    {
      if (v105 != 5 || !*(i + 8))
      {
        v108 = 0;
        goto LABEL_208;
      }

      v107 = *i;
    }

    v108 = *v107;
LABEL_208:
    v109 = *(v108 + 18);
    if ((v109 - 1) >= 2 && (v109 != 5 || !*(v108 + 8)))
    {
      break;
    }

    v73 = swift::reflection::ExistentialMetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, v73);
    v110 = *(i + 18);
    if ((v110 - 1) < 2)
    {
      goto LABEL_215;
    }

    if (v110 == 5 && *(i + 8))
    {
      i = *i;
LABEL_215:
      v111 = *i;
      goto LABEL_217;
    }

    v111 = 0;
LABEL_217:
    if (*(v111 + 18) - 1 >= 2)
    {
      v111 = *v111;
    }
  }

  swift::Demangle::__runtime::Demangler::~Demangler(&v114);
LABEL_221:
  *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v196) = v73;
LABEL_222:
  __swift::__runtime::llvm::deallocate_buffer(v152.__r_.__value_.__l.__data_, (16 * LODWORD(v152.__r_.__value_.__r.__words[2])), 8uLL);
LABEL_129:
  swift::Demangle::__runtime::Demangler::~Demangler(__src);
  return v73;
}

unint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = result;
  v8 = *(result + 24);
  v9 = *(result + 40);
  if (!v9)
  {
    v18 = 0;
LABEL_15:
    v11 = (v8 + 56 * v18);
    goto LABEL_16;
  }

  v33 = a2;
  v34[0] = a3;
  result = __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(&v33, v34);
  v10 = (v9 - 1) & result;
  v11 = (v8 + 56 * v10);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (a2 != *v11 || a3 != v13)
  {
    v15 = 1;
    while (v12 != -1 || v13)
    {
      v16 = v10 + v15++;
      v10 = v16 & (v9 - 1);
      v11 = (v8 + 56 * v10);
      v12 = *v11;
      v13 = *(v11 + 8);
      if (a2 == *v11 && a3 == v13)
      {
        goto LABEL_16;
      }
    }

    v8 = *(v6 + 24);
    v18 = *(v6 + 40);
    goto LABEL_15;
  }

LABEL_16:
  if (v11 != (*(v6 + 24) + 56 * *(v6 + 40)))
  {
    v19 = v11[2];
    *a4 = a2;
    a4[1] = a3;
    a4[2] = v19;
    return result;
  }

  v39 = 0;
  result = (*(**(v6 + 2800) + 32))(*(v6 + 2800), a2, a3, &v39, 8);
  if ((result & 1) == 0)
  {
    goto LABEL_67;
  }

  v20 = v39;
  if (v39 > 0x7FF)
  {
    v20 = 0;
  }

  if (v20 <= 770)
  {
    if (v20 <= 514)
    {
      if (v20 <= 512)
      {
        if (!v20)
        {
          v27 = a4;
          v28 = v6;
          v29 = a2;
          v30 = a3;
          v26 = 80;
          return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v28, v29, v30, v26, v27);
        }

        if (v20 != 512)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_52;
    }

    if (v20 <= 768)
    {
      if (v20 == 515)
      {
        v27 = a4;
        v28 = v6;
        v29 = a2;
        v30 = a3;
        v26 = 32;
        return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v28, v29, v30, v26, v27);
      }

      if (v20 != 516)
      {
        goto LABEL_68;
      }

      goto LABEL_53;
    }

    if (v20 != 769)
    {
      v33 = 0;
      result = (*(**(v6 + 2800) + 32))(*(v6 + 2800), a2 + 8, a3, &v33, 8);
      if (result)
      {
        v21 = 4 * v33;
        if ((v33 & 0x2000000) == 0)
        {
          v21 = 0;
        }

        v22 = v21 + 8 * v33;
        v23 = v22 + 24;
        v24 = ((v22 + 31) & 0x1FFFF8) + 8;
        if ((v33 & 0x8000000) != 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = v23;
        }

        v26 = (v25 + 7) & 0xFFFFF8;
        goto LABEL_70;
      }

LABEL_67:
      *a4 = 0;
      *(a4 + 8) = 0;
      a4[2] = 0;
      return result;
    }

    v33 = 0;
    result = (*(**(v6 + 2800) + 32))(*(v6 + 2800), a2 + 8, a3, &v33, 8);
    if ((result & 1) == 0 || v33 >= 0x100)
    {
      goto LABEL_67;
    }

    v26 = 16 * v33 + 24;
LABEL_70:
    v27 = a4;
    v28 = v6;
    v29 = a2;
    v30 = a3;
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v28, v29, v30, v26, v27);
  }

  if (v20 > 774)
  {
    if (v20 > 1279)
    {
      if (v20 != 1280)
      {
        if (v20 != 1281)
        {
LABEL_68:
          v27 = a4;
          v28 = v6;
          v29 = a2;
          v30 = a3;
          v26 = 8;
          return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v28, v29, v30, v26, v27);
        }

        goto LABEL_52;
      }
    }

    else
    {
      if (v20 == 775)
      {
        v37 = 0;
        v38 = 0;
        result = (*(**(v6 + 2800) + 96))(*(v6 + 2800), a2 + 8, a3, &v37, 8);
        if ((result & 1) == 0)
        {
          goto LABEL_67;
        }

        v32 = v37;
        if (!v38)
        {
          v32 = *(v6 + 2816) & v37;
        }

        swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readShape(v6, v32, v38, v35);
        result = v36;
        if (!v36)
        {
          goto LABEL_67;
        }

        swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGeneralizationSignature(v36, &v33);
        v26 = 8 * WORD2(v33) + 16;
        goto LABEL_70;
      }

      if (v20 != 1024)
      {
        goto LABEL_68;
      }
    }

    goto LABEL_53;
  }

  if (v20 > 772)
  {
    if (v20 == 773)
    {
      goto LABEL_52;
    }

LABEL_53:
    v27 = a4;
    v28 = v6;
    v29 = a2;
    v30 = a3;
    v26 = 24;
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v28, v29, v30, v26, v27);
  }

  if (v20 == 771)
  {
    LODWORD(v33) = 0;
    result = (*(**(v6 + 2800) + 32))(*(v6 + 2800), a2 + 8, a3, &v33, 4);
    if ((result & 1) == 0)
    {
      goto LABEL_67;
    }

    v31 = v33;
    v35[0] = 0;
    result = (*(**(v6 + 2800) + 32))(*(v6 + 2800), a2 + 12, a3, v35, 4);
    if ((result & 1) == 0 || v35[0] >= 0x100u)
    {
      goto LABEL_67;
    }

    v26 = ((v31 >> 27) & 8) + 8 * v35[0] + 16;
    goto LABEL_70;
  }

LABEL_52:
  v27 = a4;
  v28 = v6;
  v29 = a2;
  v30 = a3;
  v26 = 16;
  return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v28, v29, v30, v26, v27);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromClassMetadata(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  if ((swift_reflection_classIsSwiftMask & *(v4 + 32)) != 0)
  {
    *__p = *a2;
    v23 = v4;
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromMetadata(a1, __p, a3, a4);
  }

  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  v8 = *a2;
  v9 = *(a2 + 8);
  result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCRODataPtr(a1, *a2, v9);
  if (result)
  {
    v19 = 0;
    LOBYTE(v20) = 0;
    if ((*(**(a1 + 2800) + 96))(*(a1 + 2800), result + 24, v11, &v19, 8) && v19 && (*(**(a1 + 2800) + 16))(*(a1 + 2800), v19, v20, __p))
    {
      TypeFromMetadata = swift::reflection::ObjCClassTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, __p);
      if (TypeFromMetadata)
      {
LABEL_10:
        v14 = TypeFromMetadata;
        v19 = v8;
        v20 = v9;
        v21 = a4;
        v24 = 0;
        v15 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v19, &v24);
        v16 = v24;
        if ((v15 & 1) == 0)
        {
          v16 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v19, &v19, v24);
          v17 = v20;
          *v16 = v19;
          *(v16 + 8) = v17;
          *(v16 + 16) = v21;
          v16[3] = 0;
        }

        result = v14;
        v16[3] = v14;
        goto LABEL_14;
      }

      v13 = *(a1 + 2816) & *(v4 + 8);
      if (v13)
      {
        TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v13, 0, a4, a3);
        goto LABEL_10;
      }
    }

    result = 0;
  }

LABEL_14:
  if (SHIBYTE(v23) < 0)
  {
    v18 = result;
    operator delete(__p[0]);
    return v18;
  }

  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromMetadata(unint64_t a1, __int128 *a2, uint64_t a3, int a4)
{
  v43 = *a2;
  v44 = *(a2 + 2);
  result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(a1, &v43, a4);
  if (!result)
  {
    return result;
  }

  v10 = result;
  if (a4 && (v43 != *a2 || BYTE8(v43) != *(a2 + 8)))
  {
    v33 = v43;
    v34 = BYTE8(v43);
    v35 = a4;
    *&v41 = 0;
    v11 = v9;
    v12 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v33, &v41);
    v9 = v11;
    if (v12)
    {
      v13 = v41;
      if (v41 != *a1 + 32 * *(a1 + 16))
      {
        v14 = *(a2 + 1);
        v33 = *a2;
        v34 = v14;
        v35 = a4;
        *&v41 = 0;
        if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v33, &v41))
        {
          v15 = v41;
          *v41 = -2;
          *(v15 + 8) = 0;
          *(v15 + 16) = 0;
          *(a1 + 8) = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
        }

        return *(v13 + 24);
      }
    }
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v10, v9, &v41);
  if (!v42)
  {
    return 0;
  }

  *__p = v41;
  v32 = v42;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(a1, __p, &v33);
  if (v40 != 1)
  {
    goto LABEL_26;
  }

  if ((*v42 & 0x80) == 0)
  {
    result = swift::reflection::NominalTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, &v33, 0);
    goto LABEL_19;
  }

  v29 = v43;
  v30 = v44;
  v27 = v41;
  v28 = v42;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getGenericSubst(a1, &v29, &v27, a3, __p);
  v16 = __p[0];
  v17 = __p[1];
  if (__p[0] != __p[1])
  {
    *&v29 = __p[0];
    *(&v29 + 1) = (__p[1] - __p[0]) >> 3;
    result = swift::reflection::TypeRefBuilder::createBoundGenericType(a1 + 328, &v33, &v29);
    v18 = __p[0];
    if (!__p[0])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  result = 0;
  v18 = __p[0];
  if (__p[0])
  {
LABEL_17:
    __p[1] = v18;
    v19 = result;
    operator delete(v18);
    result = v19;
  }

LABEL_18:
  if (v16 != v17)
  {
LABEL_19:
    if (result)
    {
      v20 = result;
      __p[0] = v43;
      LOBYTE(__p[1]) = BYTE8(v43);
      LOBYTE(v32) = a4;
      *&v29 = 0;
      v21 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __p, &v29);
      v22 = v29;
      if ((v21 & 1) == 0)
      {
        v22 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __p, __p, v29);
        v23 = __p[1];
        *v22 = __p[0];
        *(v22 + 8) = v23;
        *(v22 + 16) = v32;
        v22[3] = 0;
      }

      result = v20;
      v22[3] = v20;
      if (a4)
      {
        v24 = *(a2 + 8);
        if (v43 != *a2 || BYTE8(v43) != v24)
        {
          __p[0] = *a2;
          LOBYTE(__p[1]) = v24;
          LOBYTE(v32) = a4;
          __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::erase(a1, __p);
          result = v20;
        }
      }
    }

    goto LABEL_27;
  }

LABEL_26:
  result = 0;
LABEL_27:
  if (v40 == 1)
  {
    if (v39 == 1 && v37)
    {
      v38 = v37;
      v25 = result;
      operator delete(v37);
      result = v25;
    }

    if (v36 < 0)
    {
      v26 = result;
      operator delete(v33);
      return v26;
    }
  }

  return result;
}

void *std::vector<swift::reflection::TypeRef const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<__swift::__runtime::llvm::StringRef>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(16 * v8) = *a2;
    v5 = 16 * v8 + 16;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  v4 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, a2, &v8);
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v5 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, a2, a2, v8);
    v6 = *(a2 + 8);
    *v5 = *a2;
    *(v5 + 8) = v6;
    *(v5 + 16) = *(a2 + 16);
    v5[3] = 0;
  }

  return v5 + 3;
}

void std::vector<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

uint64_t swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getExtendedFlags(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    return *(((a1 + 8 * *(a1 + 8) + 4 * (*(a1 + 8) & ((*(a1 + 8) << 38) >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 * ((v1 >> 27) & 1) + 8 * ((v1 >> 28) & 1));
  }

  else
  {
    return 0;
  }
}

uint64_t swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::hasThrownError(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    return *(((a1 + 8 * *(a1 + 8) + 4 * (*(a1 + 8) & ((*(a1 + 8) << 38) >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 * ((v1 >> 27) & 1) + 8 * ((v1 >> 28) & 1)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getThrownError(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 & 0x80000000) != 0 && (v2 = (((a1 + 8 * *(a1 + 8) + 4 * (*(a1 + 8) & ((*(a1 + 8) << 38) >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 * ((v1 >> 27) & 1) + 8 * ((*(a1 + 8) >> 28) & 1)), (*v2))
  {
    return *((v2 + 11) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    return 0;
  }
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readProtocol<swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(swift::remote::RemoteAddress,BOOL,int)::ProtocolResolver>(uint64_t a1@<X0>, uint64_t a2@<X1>, swift::Demangle::__runtime::NodeFactory *a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  v25 = a4;
  v8 = *a2;
  if (v8)
  {
    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCProtocolName(a1, v8 & 0xFFFFFFFFFFFFFFFELL, *(a2 + 16), &v27);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v27;
    }

    else
    {
      v16 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    if (size >= 4 && LODWORD(v16->__r_.__value_.__l.__data_) == 1349801055)
    {
      v24 = 0;
      v19 = swift::Demangle::__runtime::Demangler::demangleSymbol(a3, v16, size, v23);
      if (v24 == v23)
      {
        (*(*v24 + 32))(v24);
        if (v19)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v24)
        {
          (*(*v24 + 40))();
        }

        if (v19)
        {
LABEL_34:
          while (1)
          {
            v20 = *(v19 + 16);
            v21 = (v20 - 200) > 0x2F || ((1 << (v20 + 56)) & 0xC80000000001) == 0;
            if (v21 && v20 != 101)
            {
              break;
            }

            v22 = *(v19 + 18);
            if (v22 != 1)
            {
              if (v22 != 5 || *(v19 + 8) != 1)
              {
                goto LABEL_44;
              }

              v19 = *v19;
            }

            v19 = *v19;
          }

          swift::reflection::TypeRefBuilder::createProtocolDecl(a5);
          goto LABEL_21;
        }
      }

LABEL_44:
      a5->__r_.__value_.__s.__data_[0] = 0;
      a5[1].__r_.__value_.__s.__data_[8] = 0;
    }

    else
    {
      swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(swift::remote::RemoteAddress,BOOL,int)::ProtocolResolver::objcProtocol(size, v16, a5);
    }

LABEL_21:
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v18 = v27.__r_.__value_.__r.__words[0];
    goto LABEL_48;
  }

  if (!*(a2 + 16))
  {
    v8 &= *(a1 + 2816);
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v8, *(a2 + 16), &v26);
  v10 = v26.__r_.__value_.__r.__words[2];
  if (!v26.__r_.__value_.__r.__words[2] || (v27 = v26, (v11 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(a1, &v27, a3, 50)) == 0) || ((*v10 & 0x10) != 0 || (*v10 & 0x1F) == 3) && (v12 = v11, Node = swift::Demangle::__runtime::NodeFactory::createNode(a3, 243), swift::Demangle::__runtime::Node::addChild(Node, v12, a3, v14, v15), !Node))
  {
    a5->__r_.__value_.__s.__data_[0] = 0;
    a5[1].__r_.__value_.__s.__data_[8] = 0;
    return;
  }

  swift::Demangle::__runtime::mangleNode();
  if (LODWORD(v27.__r_.__value_.__l.__data_))
  {
    a5->__r_.__value_.__s.__data_[0] = 0;
    a5[1].__r_.__value_.__s.__data_[8] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_47;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = __p;
  }

  *a5 = v26;
  a5[1].__r_.__value_.__s.__data_[0] = 0;
  a5[1].__r_.__value_.__s.__data_[8] = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_47:
    v18 = __p.__r_.__value_.__r.__words[0];
LABEL_48:
    operator delete(v18);
  }
}

void ***std::vector<std::optional<std::pair<std::string,BOOL>>>::~vector[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3;
        v3 -= 5;
        if (*(v5 - 8) == 1 && *(v5 - 17) < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

unint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readShape@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
LABEL_25:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  v7 = result;
  v8 = result + 72;
  v9 = *(result + 72);
  v10 = *(result + 88);
  if (!v10)
  {
    v19 = 0;
LABEL_16:
    v12 = (v9 + 56 * v19);
    goto LABEL_17;
  }

  v26 = a2;
  v27 = a3;
  result = __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(&v26, &v27);
  v11 = (v10 - 1) & result;
  v12 = (v9 + 56 * v11);
  v13 = *v12;
  v14 = *(v12 + 8);
  if (a2 != *v12 || a3 != v14)
  {
    v16 = 1;
    while (v13 != -1 || v14)
    {
      v17 = v11 + v16++;
      v11 = v17 & (v10 - 1);
      v12 = (v9 + 56 * v11);
      v13 = *v12;
      v14 = *(v12 + 8);
      if (a2 == *v12 && a3 == v14)
      {
        goto LABEL_17;
      }
    }

    v9 = *(v7 + 72);
    v19 = *(v7 + 88);
    goto LABEL_16;
  }

LABEL_17:
  if (v12 != (*(v7 + 72) + 56 * *(v7 + 88)))
  {
    v20 = v12[2];
    *a4 = a2;
    *(a4 + 8) = a3;
    *(a4 + 16) = v20;
    return result;
  }

  v34 = 0;
  result = (*(**(v7 + 2800) + 32))(*(v7 + 2800), a2, a3, &v34, 4);
  if ((result & 1) == 0)
  {
    goto LABEL_25;
  }

  HIWORD(v26) = 0;
  result = (*(**(v7 + 2800) + 32))(*(v7 + 2800), a2 + 4, a3, &v26, 8);
  if ((result & 1) == 0)
  {
    goto LABEL_25;
  }

  (*(**(v7 + 2800) + 24))(&v31);
  v21 = v31;
  if (!v31)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    goto LABEL_40;
  }

  v26 = a2;
  v27 = a3;
  v31 = 0;
  v28 = v21;
  if (v33)
  {
    if (v33 == v32)
    {
      v30 = v29;
      (*(*v33 + 24))();
    }

    else
    {
      v30 = v33;
      v33 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>,swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>::try_emplace<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v8, &v26, &v28, v25);
  v22 = v28;
  v28 = 0;
  if (v22)
  {
    v25[0] = v22;
    if (!v30)
    {
      goto LABEL_45;
    }

    (*(*v30 + 48))(v30, v25);
  }

  if (v30 == v29)
  {
    (*(*v30 + 32))(v30);
  }

  else if (v30)
  {
    (*(*v30 + 40))(v30);
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = v21;
  v23 = v31;
  v31 = 0;
  if (!v23)
  {
    goto LABEL_40;
  }

  v26 = v23;
  if (!v33)
  {
LABEL_45:
    v24 = std::__throw_bad_function_call[abi:nn200100]();
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(v24);
  }

  (*(*v33 + 48))(v33, &v26);
LABEL_40:
  result = v33;
  if (v33 == v32)
  {
    return (*(*v33 + 32))(v33);
  }

  if (v33)
  {
    return (*(*v33 + 40))(v33);
  }

  return result;
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1;
  if (*a3)
  {
    if (swift::reflection::GenericTypeParameterTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, 0, 0))
    {
      operator new();
    }

    *(a4 + 16) = 1;
    *a4 = "Failed to read generic parameter type in runtime generic signature.";
    *(a4 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    return;
  }

  v5 = a4;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  if (!*(a3 + 2))
  {
LABEL_66:
    GenericSignature = swift::reflection::TypeRefBuilder::createGenericSignature(v4 + 328, 0, 0);
    *(v5 + 16) = 0;
    *v5 = GenericSignature;
    if (!GenericSignature)
    {
      *v5 = "unknown error";
      *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      *(v5 + 16) = 1;
    }

LABEL_68:
    v39 = v137;
    if (v137)
    {
      goto LABEL_69;
    }

    return;
  }

  v6 = 0;
  v7 = *(a3 + 16);
  v47 = a1 + 328;
  v49 = 12 * *(a3 + 2);
  v50 = v7 + 8;
  while (1)
  {
    v8 = v50 + v6;
    if ((*(v50 + v6 - 8) & 0x1Fu) >= 6 && (*(v50 + v6 - 8) & 0x1F) != 31)
    {
      break;
    }

    v97[1] = 0;
    v97[2] = 0;
    v98 = 0;
    v99 = 2400;
    v100 = 0;
    v101 = 0;
    v97[0] = off_E13E8;
    v136 = 0;
    v103 = 0;
    v104 = 0;
    v102 = 0;
    v105 = 0;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0;
    SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v7 + v6 + *(v8 - 4) + 4), a2);
    v96 = 0;
    v13 = swift::Demangle::__runtime::Demangler::demangleType(v97, SymbolicMangledNameStringRef, v11, v95);
    if (v96 == v95)
    {
      (*(*v96 + 32))(v96);
      if (!v13)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v96)
      {
        (*(*v96 + 40))();
      }

      if (!v13)
      {
        goto LABEL_29;
      }
    }

    v140 = v47;
    swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v140, v13, 0, 0, v12, &v53);
    if (v55)
    {
      if (v55 == 1)
      {
        v54(v53, 3, 0);
      }

LABEL_28:
      LOBYTE(v13) = 0;
LABEL_29:
      *(v5 + 16) = 1;
      *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      v16 = "Failed to read subject type in requirement of runtime generic signature.";
      goto LABEL_30;
    }

    if (!v53)
    {
      goto LABEL_28;
    }

    v15 = *(v8 - 8) & 0x1F;
    if (v15 <= 2)
    {
      v44 = v7;
      if (v15)
      {
        if (v15 != 1)
        {
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 2400;
          v58 = 0;
          v59 = 0;
          v53 = off_E13E8;
          v94 = 0;
          v61 = 0;
          v62 = 0;
          v60 = 0;
          v63 = 0;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0;
          v17 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v7 + v6 + *(v50 + v6) + 8), v14);
          v19 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v7 + v6 + *(v50 + v6) + 8), v18);
          *&v51 = v17;
          *(&v51 + 1) = v40 & 0xFFFFFFFFFFFFFF00;
          v52 = v19;
          v143 = 0;
          swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v19, v20);
          operator new();
        }

        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 2400;
        v58 = 0;
        v59 = 0;
        v53 = off_E13E8;
        v94 = 0;
        v61 = 0;
        v62 = 0;
        v60 = 0;
        v63 = 0;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0;
        v33 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v7 + v6 + *(v50 + v6) + 8), v14);
        v35 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v7 + v6 + *(v50 + v6) + 8), v34);
        *&v51 = v33;
        *(&v51 + 1) = v41 & 0xFFFFFFFFFFFFFF00;
        v52 = v35;
        v143 = 0;
        swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v35, v36);
        operator new();
      }

      v43 = v53;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 2400;
      v58 = 0;
      v59 = 0;
      v53 = off_E13E8;
      v94 = 0;
      v61 = 0;
      v62 = 0;
      v60 = 0;
      v63 = 0;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0;
      v21 = *a2;
      v22 = *(a2 + 8);
      v23 = *(a2 + 2);
      v24 = v44 + v6 + *a2 - v23;
      LODWORD(v51) = 0;
      v25 = (*(**(a1 + 2800) + 32))(*(a1 + 2800), v24 + 8, v22, &v51, 4);
      v26 = 0;
      v27 = 0;
      v28 = v42;
      if (v25)
      {
        v29 = v51;
        v30 = v51 & 0xFFFFFFFFFFFFFFFCLL;
        LODWORD(v51) = v51 & 0xFFFFFFFC;
        v31 = v44 + v6 + v21 + v30 - v23 + 8;
        v140 = v31;
        LOBYTE(v141) = v22;
        if ((v29 & 1) == 0)
        {
          goto LABEL_50;
        }

        v32 = v29;
        if ((*(**(a1 + 2800) + 96))(*(a1 + 2800)))
        {
          v31 = v140;
          v28 = v42;
          v29 = v32;
LABEL_50:
          v26 = v31 | (v29 >> 1) & 1;
          v27 = v141;
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = v42;
        }
      }

      v140 = v26;
      v141 = v26;
      v42 = v27 | v28 & 0xFFFFFFFFFFFFFF00;
      v142 = v42;
      v37 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readProtocol<swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver>(a1, &v140, &v53, v47);
      v13 = v37;
      if (v37)
      {
        *&v51 = v43 & 0xFFFFFFFFFFFFFFF8;
        *(&v51 + 1) = v37;
        std::vector<swift::reflection::TypeRefRequirement>::push_back[abi:nn200100](&v137, &v51);
        v5 = a4;
      }

      else
      {
        v5 = a4;
        *(a4 + 16) = 1;
        *a4 = "Failed to read protocol type in conformance requirement of runtime generic signature.";
        *(a4 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      }

      v7 = v44;
      v53 = off_E13E8;
      if (v94 == &v93)
      {
        (*(*v94 + 32))(v94);
      }

      else if (v94)
      {
        (*(*v94 + 40))();
      }

      v53 = off_E13C0;
      swift::Demangle::__runtime::NodeFactory::freeSlabs(v56);
      if (v58)
      {
        *(v58 + 48) = 0;
      }

      if (!v13)
      {
        goto LABEL_31;
      }

LABEL_65:
      LOBYTE(v13) = 1;
      goto LABEL_31;
    }

    if ((*(v8 - 8) & 0x1Fu) > 4)
    {
      if (v15 == 5)
      {
        LOBYTE(v13) = 0;
        *(v5 + 16) = 1;
        *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
        v16 = "Unexpected invertible protocol in runtime generic signature";
      }

      else
      {
        if (v15 != 31)
        {
          goto LABEL_65;
        }

        LOBYTE(v13) = 0;
        *(v5 + 16) = 1;
        *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
        v16 = "Unexpected layout requirement in runtime generic signature";
      }
    }

    else if (v15 == 3)
    {
      LOBYTE(v13) = 0;
      *(v5 + 16) = 1;
      *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      v16 = "Unexpected same conformance requirement in runtime generic signature";
    }

    else
    {
      if (v15 != 4)
      {
        goto LABEL_65;
      }

      LOBYTE(v13) = 0;
      *(v5 + 16) = 1;
      *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      v16 = "Unexpected same-shape requirement in runtime generic signature";
    }

LABEL_30:
    *v5 = v16;
LABEL_31:
    v97[0] = off_E13E8;
    if (v136 == &v135)
    {
      (*(*v136 + 32))(v136);
    }

    else if (v136)
    {
      (*(*v136 + 40))();
    }

    v97[0] = off_E13C0;
    swift::Demangle::__runtime::NodeFactory::freeSlabs(v98);
    if (v100)
    {
      *(v100 + 48) = 0;
    }

    if ((v13 & 1) == 0)
    {
      goto LABEL_68;
    }

    v6 += 12;
    if (v49 == v6)
    {
      v4 = a1;
      goto LABEL_66;
    }
  }

  *(v5 + 16) = 1;
  *v5 = "unknown kind";
  *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
  v39 = v137;
  if (!v137)
  {
    return;
  }

LABEL_69:
  v138 = v39;
  operator delete(v39);
}

unsigned int *swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGeneralizationSignature@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((v2 & 0x100) == 0)
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(a2 + 24) = 0;
    return result;
  }

  if ((v2 & 0x1000) != 0)
  {
    v3 = &swift::externalTargetImplicitGenericParamDescriptors(void)::buffer;
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = (((result + 27) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v2 >> 9) & 1) + 4 * ((v2 >> 10) & 1));
    if ((v2 & 0x800) == 0)
    {
      v3 += *(result + 4);
LABEL_7:
      v4 = *(result + 4);
      v5 = 1;
      goto LABEL_9;
    }
  }

  v5 = 0;
  v4 = 0;
LABEL_9:
  v6 = *result & 0x1100;
  if (v6 == 256)
  {
    v7 = *(result + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = ((result + 27) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v2 >> 9) & 1) + 4 * ((v2 >> 10) & 1);
  v9 = ((v8 + v7 + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * *(result + 5);
  if ((v2 & 0x2000) != 0)
  {
    if (v5)
    {
      v12 = *(result + 4);
      if (v6 != 256)
      {
LABEL_16:
        v13 = 0;
LABEL_19:
        v14 = ((v8 + v13 + v12 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * *(result + 9);
        if (v5)
        {
          v15 = *(result + 4);
        }

        else
        {
          v15 = 0;
        }

        v10 = *(v14 + 12 * *(result + 5));
        if (v6 == 256)
        {
          v16 = *(result + 8);
        }

        else
        {
          v16 = 0;
        }

        v11 = ((v8 + v16 + v15 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * *(result + 9) + 12 * *(result + 5) + 4;
        goto LABEL_26;
      }
    }

    else
    {
      v12 = 0;
      if (v6 != 256)
      {
        goto LABEL_16;
      }
    }

    v13 = *(result + 8);
    goto LABEL_19;
  }

  v10 = 0;
  v11 = 0;
LABEL_26:
  *a2 = *(result + 2);
  *(a2 + 8) = v3;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void swift::reflection::TypeRefBuilder::createSubstitutionMap(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = v6 - *a1;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (a3 == v7 >> 3 && v6 != v5)
  {
    v12 = 0;
    do
    {
      v13 = 8 * v12;
      v14 = *(a2 + v13);
      v17 = *(*(*a1 + v13) + 12);
      v18 = 0;
      v15 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<unsigned int,unsigned int>>(a4, &v17, &v18);
      v16 = v18;
      if ((v15 & 1) == 0)
      {
        v16 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<unsigned int,unsigned int>>(a4, &v17, &v17, v18);
        *v16 = v17;
        *(v16 + 1) = 0;
      }

      *(v16 + 1) = v14;
      ++v12;
    }

    while (a3 != v12);
  }
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCClassName(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCRODataPtr(a1, a2, a3);
  if (result)
  {
    v8 = 0;
    LOBYTE(v9) = 0;
    result = (*(**(a1 + 2800) + 96))(*(a1 + 2800), result + 24, v7, &v8, 8);
    if (result)
    {
      if (v8)
      {
        return (*(**(a1 + 2800) + 16))(*(a1 + 2800), v8, v9, a4);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(unint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  v5 = *(a2 + 16);
  v6 = *v5;
  if (*v5 > 0x7FF)
  {
    LODWORD(v6) = 0;
  }

  if (v6 > 514)
  {
    if (v6 != 515 && v6 != 516)
    {
      return result;
    }

    return *(a1 + 2816) & v5[1];
  }

  if ((v6 - 512) < 3)
  {
    return *(a1 + 2816) & v5[1];
  }

  if (!v6)
  {
    if ((swift_reflection_classIsSwiftMask & v5[4]) != 0)
    {
      do
      {
        v9 = *(a1 + 2816);
        result = v9 & v5[8];
        if (result || a3 == 0)
        {
          break;
        }

        v11 = v5[1] & v9;
        if (!v11)
        {
          return 0;
        }

        swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v11, 0, &v12);
        v5 = v14;
        if (!v14 || (*v14 - 2048) >= 0xFFFFFFFFFFFFF801)
        {
          return 0;
        }

        result = 0;
        *a2 = v12;
        *(a2 + 8) = v13;
        *(a2 + 16) = v5;
      }

      while ((swift_reflection_classIsSwiftMask & v5[4]) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v5 = *a1;
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    memset(v26, 0, sizeof(v26));
    {
      v25 = a2;
      __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>();
      a2 = v25;
    }

    v29 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
    v6 = a2;
    v7 = (v4 - 1) & __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine<swift::remote::RemoteAddress,BOOL>(v26, 0, v26, v27, a2, (a2 + 16));
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = (v5 + 32 * v7);
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    if (*v6 == *v10 && v8 == v12 && v9 == v13)
    {
      result = 1;
    }

    else
    {
      v16 = 0;
      v17 = 1;
      result = 1;
      while (v11 != -1 || v12 || v13)
      {
        if (v16)
        {
          v19 = 0;
        }

        else
        {
          v19 = v13 == 0;
        }

        if (v19 && v12 == 0 && v11 == -2)
        {
          v16 = v10;
        }

        v22 = v7 + v17++;
        v7 = v22 & (v4 - 1);
        v10 = (v5 + 32 * v7);
        v11 = *v10;
        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        if (*v6 == *v10 && v8 == v12 && v9 == v13)
        {
          goto LABEL_14;
        }
      }

      result = 0;
      if (v16)
      {
        v10 = v16;
      }
    }
  }

  else
  {
    v10 = 0;
    result = 0;
  }

LABEL_14:
  *a3 = v10;
  return result;
}

unint64_t __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine<swift::remote::RemoteAddress,BOOL>(uint64_t a1, unint64_t a2, void *a3, char *a4, unint64_t *a5, char *a6)
{
  v7 = a4;
  v18 = a2;
  v8 = *a5;
  {
    v17 = a3;
    v15 = a1;
    __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>();
    a1 = v15;
    v7 = a4;
    a3 = v17;
  }

  v9 = 0x9DDFEA08EB382D69 * ((__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed + 8 * v8) ^ HIDWORD(v8));
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v9 >> 47) ^ v9);
  v11 = a1;
  v12 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v18, a3, v7, 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47)));
  v19 = v18;
  v13 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(v11, &v19, v12, v7, *a6);
  return __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine(v11, v19, v13, v7);
}

void *__swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(uint64_t a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      __swift::__runtime::llvm::hashing::detail::hash_state::mix((a1 + 64), a1);
      v9 = *a2 + 64;
    }

    else
    {
      v10 = *(a1 + 120);
      v11 = __ROR8__(v10 ^ 0xB492B66FBE98F273, 49);
      v12 = v10 ^ (v10 >> 47);
      v13 = *(a1 + 8);
      v14 = v13 + v10 + v11;
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v17 = *(a1 + 40);
      v18 = v17 + v11 - 0x4B6D499041670D8DLL * __ROR8__(v15 + v10 - 0x4B6D499041670D8DLL * v10, 42);
      v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
      v20 = 0x9DDFEA08EB382D69 * (v10 ^ (((0x9DDFEA08EB382D69 * (v12 ^ (0xB492B66FBE98F273 * v10))) ^ v10) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ (0xB492B66FBE98F273 * v10))));
      v21 = 0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47));
      v22 = 0xB492B66FBE98F273 * __ROR8__(v12 - 0x622015F714C7D297 * (v19 ^ (v19 >> 47)), 33);
      v23 = *a1 - 0x6D8ED9027DD26057 * v10;
      v25 = *(a1 + 16);
      v24 = *(a1 + 24);
      v26 = v23 + v13 + v25;
      v27 = v21 ^ (0xB492B66FBE98F273 * __ROR8__(v14, 37));
      v28 = __ROR8__(v26, 44) + v23 + __ROR8__(v23 + v12 + v24 + v27, 21);
      v29 = v22 + *(a1 + 32) + v21;
      *(a1 + 64) = v22;
      *(a1 + 72) = v18;
      *(a1 + 80) = v27;
      *(a1 + 88) = v26 + v24;
      *(a1 + 96) = v28;
      *(a1 + 104) = v17 + v15 + v29 + v16;
      *(a1 + 112) = __ROR8__(v18 + v25 + v16 + v29, 21) + v29 + __ROR8__(v17 + v15 + v29, 44);
      v9 = 64;
    }

    *a2 = v9;
    if (a1 + 8 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 8 - v8);
      a1 += 8 - v8;
    }
  }

  return a1;
}

uint64_t *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,BOOL>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v5 *= 2;
  }

  else if (v5 + ~v4 - *(a1 + 3) > v5 >> 3)
  {
    goto LABEL_3;
  }

  v9 = a1;
  __swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::grow(a1, v5);
  v11 = 0;
  __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(v9, a3, &v11);
  a1 = v9;
  a4 = v11;
LABEL_3:
  ++*(a1 + 2);
  if (*a4 != -1 || *(a4 + 8) != 0 || *(a4 + 16) != 0)
  {
    --*(a1 + 3);
  }

  return a4;
}

void __swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = __swift::__runtime::llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = &buffer[32 * v10];
      do
      {
        *buffer = -1;
        buffer[8] = 0;
        buffer[16] = 0;
        buffer += 32;
      }

      while (buffer != v11);
    }

    v12 = (32 * v3);
    if (v3)
    {
      v13 = 32 * v3;
      v14 = v4;
      do
      {
        v15 = *(v14 + 8);
        v16 = *(v14 + 16);
        if ((*v14 != -1 || v15 != 0 || v16 != 0) && (*v14 != -2 || v15 != 0 || v16 != 0))
        {
          v25 = 0;
          __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, v14, &v25);
          v21 = v25;
          v22 = *v14;
          *(v25 + 8) = *(v14 + 8);
          *v21 = v22;
          *(v21 + 16) = *(v14 + 16);
          v21[3] = *(v14 + 24);
          ++*(a1 + 8);
        }

        v14 += 32;
        v13 -= 32;
      }

      while (v13);
    }

    __swift::__runtime::llvm::deallocate_buffer(v4, v12, 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v23 = *(a1 + 16);
    if (v23)
    {
      v24 = &buffer[32 * v23];
      do
      {
        *buffer = -1;
        buffer[8] = 0;
        buffer[16] = 0;
        buffer += 32;
      }

      while (buffer != v24);
    }
  }
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a4 > 0x100000)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    return result;
  }

  v8 = result;
  (*(**(result + 2800) + 24))(&v18);
  v9 = v18;
  if (!v18)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    goto LABEL_20;
  }

  v14[0] = a2;
  v14[1] = a3;
  v18 = 0;
  v15 = v9;
  if (v20)
  {
    if (v20 == v19)
    {
      v17 = v16;
      (*(*v20 + 24))();
    }

    else
    {
      v17 = v20;
      v20 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>,swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>::try_emplace<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v8 + 24, v14, &v15, v13);
  v10 = v15;
  v15 = 0;
  if (v10)
  {
    v13[0] = v10;
    if (!v17)
    {
      goto LABEL_25;
    }

    (*(*v17 + 48))(v17, v13);
  }

  if (v17 == v16)
  {
    (*(*v17 + 32))(v17);
  }

  else if (v17)
  {
    (*(*v17 + 40))();
  }

  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = v9;
  v11 = v18;
  v18 = 0;
  if (!v11)
  {
    goto LABEL_20;
  }

  v14[0] = v11;
  if (!v20)
  {
LABEL_25:
    v12 = std::__throw_bad_function_call[abi:nn200100]();
    return __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::erase(v12);
  }

  (*(*v20 + 48))(v20, v14);
LABEL_20:
  result = v20;
  if (v20 == v19)
  {
    return (*(*v20 + 32))(v20);
  }

  if (v20)
  {
    return (*(*v20 + 40))();
  }

  return result;
}

int32x2_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::erase(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, a2, &v5))
  {
    v4 = v5;
    *v5 = -2;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

void *swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v17[1] = 0;
  v17[2] = 0;
  v18 = 0;
  v19 = 2400;
  v20 = 0;
  v21 = 0;
  v56 = 0;
  v17[0] = off_E13E8;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v54 = 0;
  v11 = *a2;
  v4 = *(a2 + 2);
  v12 = v4;
  v5 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(a1, &v11, v17, 50);
  if (v5)
  {
    if ((v6 = v5, (*v4 & 0x10) == 0) && (*v4 & 0x1F) != 3 || (Node = swift::Demangle::__runtime::NodeFactory::createNode(v17, 243), swift::Demangle::__runtime::Node::addChild(Node, v6, v17, v8, v9), (v6 = Node) != 0))
    {
      if (*(v6 + 8) == 243)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v13 = 0;
        operator new();
      }
    }
  }

  *a3 = 0;
  a3[56] = 0;
  v17[0] = off_E13E8;
  if (v56 == &v55)
  {
    (*(*v56 + 32))(v56);
  }

  else if (v56)
  {
    (*(*v56 + 40))();
  }

  v17[0] = off_E13C0;
  result = swift::Demangle::__runtime::NodeFactory::freeSlabs(v18);
  if (v20)
  {
    *(v20 + 48) = 0;
  }

  return result;
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getGenericSubst(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  GenericContext = swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGenericContext(*(a3 + 2));
  if (!GenericContext)
  {
    goto LABEL_23;
  }

  v11 = *(GenericContext + 4);
  v12 = *(a3 + 2);
  v13 = *v12 & 0x1F;
  if ((v13 - 17) < 2)
  {
    LODWORD(v14) = 0;
    LOBYTE(v15) = 2;
    goto LABEL_4;
  }

  if (v13 != 16)
  {
LABEL_23:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  if (v12)
  {
    v17 = *(a3 + 2);
  }

  else
  {
    v17 = 0;
  }

  if ((*v17 & 0x20000000) != 0)
  {
    v22 = *a3;
    v23 = v12;
    v19 = a5;
    v20 = GenericContext;
    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(a1, &v22, &v24);
    GenericContext = v20;
    a5 = v19;
    v15 = v25 >> 3;
    v14 = (v25 >> 3) & 0xFFFFFF00;
    if (!v26)
    {
      LOBYTE(v15) = 0;
      LODWORD(v14) = 0;
    }

    if (v26)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  if ((*v17 & 0x10000000) != 0)
  {
    v18 = 0;
    v14 = 24;
  }

  else
  {
    v18 = v17[7];
    v14 = 32;
  }

  LODWORD(v15) = v18 - *(v17 + v14);
  LODWORD(v14) = v15 & 0xFFFFFF00;
LABEL_4:
  if (*(GenericContext + 2))
  {
    v21 = *(a2 + 8);
    v16 = *a2 + 8 * (v14 | v15);
    if ((GenericContext[12] & 0x3F) == 0 && GenericContext[12] < 0)
    {
      if (v11)
      {
        v24 = 0;
        LOBYTE(v25) = 0;
        if ((*(**(a1 + 2800) + 96))(*(a1 + 2800), v16, v21, &v24, 8))
        {
          if (swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v24, v25, 0, a4))
          {
            operator new();
          }
        }
      }
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}

void swift::reflection::TypeRefBuilder::createTypeDecl(void *a1@<X2>, uint64_t a2@<X8>)
{
  swift::Demangle::__runtime::mangleNode();
  if (v13)
  {
    *a2 = 0;
    *(a2 + 56) = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v7 = __p;
  }

  v4 = a1[1];
  if (v4 != *a1)
  {
    if (((v4 - *a1) & 0x8000000000000000) == 0)
    {
      v5 = v4 - *a1;
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = v7;
  }

  v12 = 1;
  *a2 = *&v8.__r_.__value_.__l.__data_;
  v6 = v8.__r_.__value_.__r.__words[2];
  memset(&v8, 0, sizeof(v8));
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 1;
  if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  operator delete(v7.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_15:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

__n128 std::__function::__func<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1},std::allocator<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}>,void ()(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_E0E40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1},std::allocator<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}>,void ()(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *a2;
  v4 = *(a2 + 16);
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}::operator()((a1 + 8), &v3, a3);
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}::operator()(uint64_t *a1, __int128 *a2, void *a3)
{
  v6 = *a1;
  v21 = *a2;
  v22 = *(a2 + 2);
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readParentContextDescriptor(v6, &v21, v23);
  if (v26 == 1)
  {
    if (v23[0] != 1 || !v25)
    {
      goto LABEL_7;
    }

    v7 = a1[1];
    v21 = *__p;
    v22 = v25;
    v8 = *(v7 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      goto LABEL_27;
    }

    (*(*v8 + 48))(v8, &v21, a3);
    if (v26)
    {
LABEL_7:
      if ((v23[0] & 1) == 0 && SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  GenericContext = swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGenericContext(*(a2 + 2));
  if (GenericContext && (**(a2 + 2) & 0x1Fu) - 16 <= 2)
  {
    v10 = a1[2];
    v11 = *(GenericContext + 2) - *a3;
    v13 = *(v10 + 8);
    v12 = *(v10 + 16);
    if (v13 < v12)
    {
      *v13 = v11;
      v14 = (v13 + 1);
LABEL_24:
      *(v10 + 8) = v14;
      *a3 += *(*(a1[2] + 8) - 8);
      return;
    }

    v15 = *v10;
    v16 = v13 - *v10;
    v17 = v16 >> 3;
    v18 = (v16 >> 3) + 1;
    if (!(v18 >> 61))
    {
      v19 = v12 - v15;
      if (v19 >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 61))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      *(8 * v17) = v11;
      v14 = 8 * v17 + 8;
      memcpy(0, v15, v16);
      *v10 = 0;
      *(v10 + 8) = v14;
      *(v10 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }

      goto LABEL_24;
    }

LABEL_27:
    std::string::__throw_length_error[abi:nn200100]();
  }
}

_BYTE *swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGenericContext(_DWORD *a1)
{
  v1 = *a1;
  if ((*a1 & 0x80) == 0)
  {
    return 0;
  }

  result = 0;
  v4 = v1 & 0x1F;
  if (v4 > 15)
  {
    switch(v4)
    {
      case 16:
        if (a1)
        {
          v8 = a1;
        }

        else
        {
          v8 = 0;
        }

        if ((*v8 & 0x80) != 0)
        {
          if (!v8)
          {
            v8 = 0;
          }

          return v8 + 48;
        }

        else
        {
          return 0;
        }

      case 17:
        if (a1)
        {
          v10 = a1;
        }

        else
        {
          v10 = 0;
        }

        if ((*v10 & 0x80) != 0)
        {
          if (!v10)
          {
            v10 = 0;
          }

          return v10 + 32;
        }

        else
        {
          return 0;
        }

      case 18:
        if (a1)
        {
          v6 = a1;
        }

        else
        {
          v6 = 0;
        }

        if ((*v6 & 0x80) != 0)
        {
          if (!v6)
          {
            v6 = 0;
          }

          return v6 + 32;
        }

        else
        {
          return 0;
        }
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        if (a1)
        {
          v7 = a1;
        }

        else
        {
          v7 = 0;
        }

        if ((*v7 & 0x80) == 0)
        {
          return 0;
        }

        if (!v7)
        {
          v7 = 0;
        }

        v11 = v7 + 12;
        break;
      case 2:
        if (a1)
        {
          v9 = a1;
        }

        else
        {
          v9 = 0;
        }

        if ((*v9 & 0x80) == 0)
        {
          return 0;
        }

        if (!v9)
        {
          v9 = 0;
        }

        v11 = v9 + 8;
        break;
      case 4:
        if (a1)
        {
          v5 = a1;
        }

        else
        {
          v5 = 0;
        }

        if ((*v5 & 0x80) == 0)
        {
          return 0;
        }

        if (!v5)
        {
          v5 = 0;
        }

        v11 = v5 + 8;
        break;
      default:
        return result;
    }

    return v11 - 4;
  }

  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[2];
  if (v5)
  {
    result = a2[2];
  }

  else
  {
    result = 0;
  }

  v7 = result;
  v8 = *result;
  if ((*result & 0x20000000) == 0)
  {
    LODWORD(v9) = 0;
    v10 = 1;
    LODWORD(v11) = 10;
    v12 = 3;
    goto LABEL_6;
  }

  v19 = *a2;
  v20 = *(a2 + 8);
  if (result)
  {
    v21 = result;
  }

  else
  {
    v21 = 0;
  }

  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(v21);
  ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(v21);
  if (!v24)
  {
    v25 = 0;
    if (v21)
    {
      goto LABEL_21;
    }

LABEL_23:
    v26 = 0;
    goto LABEL_24;
  }

  v25 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v24 - 2);
  if (!v21)
  {
    goto LABEL_23;
  }

LABEL_21:
  v26 = v21;
LABEL_24:
  if ((*v26 & 0x80) != 0)
  {
    if (v21)
    {
      v28 = v21;
    }

    else
    {
      v28 = 0;
    }

    v27 = (*(v28 + 29) >> 2) & 1;
  }

  else
  {
    v27 = 0;
  }

  v29 = TrailingObjectsImpl + 12 * v25 + 4 * v27;
  result = swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericValueDescriptor>(v21);
  v30 = (v29 + 4 * result);
  if (v5)
  {
    v31 = v5;
  }

  else
  {
    v31 = 0;
  }

  v32 = *v30;
  v33 = v30 + v19 - v31 + v32;
  if (v32)
  {
    v34 = v33 == 0;
  }

  else
  {
    v34 = 1;
  }

  if (v34 || (v35 = (*v7 >> 25) & 7, v36 = a1, result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::forTypeReference<swift::TargetClassMetadataBounds<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteAddress)#1}>(a1, v35, v33, v20, &v36, &v37), v10 = v38, (v38 & 1) == 0))
  {
    v10 = 0;
    *a3 = 0;
    goto LABEL_40;
  }

  v12 = v37;
  v11 = HIDWORD(v37);
  LODWORD(v9) = v37 >> 8;
  v8 = *v7;
LABEL_6:
  v13 = v7[8];
  v14 = v13 + v11;
  v15 = (v12 | (v9 << 8)) + v13;
  v16 = (v8 & 0x10000000) == 0;
  if ((v8 & 0x10000000) != 0)
  {
    v17 = v11;
  }

  else
  {
    v17 = v14;
  }

  if (v16)
  {
    v9 = v9;
  }

  else
  {
    v12 = v15;
    v9 = v15 >> 8;
  }

  if (v16)
  {
    v18 = 8 * v11;
  }

  else
  {
    v18 = -8 * v15;
  }

  *a3 = v12 | (v9 << 8) | (v17 << 32);
  *(a3 + 8) = v18;
LABEL_40:
  *(a3 + 16) = v10;
  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::forTypeReference<swift::TargetClassMetadataBounds<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteAddress)#1}>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      *&v24 = 0;
      BYTE8(v24) = 0;
      v12 = result;
      result = (*(**(result + 2800) + 96))(*(result + 2800), a3, a4, &v24, 8);
      if (result)
      {
        result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(v12, v24, *(&v24 + 1), &v26);
        if (v27)
        {
          if ((*v27 - 1) > 0x7FE)
          {
            if ((swift_reflection_classIsSwiftMask & *(v27 + 4)) != 0)
            {
              v13 = v27[15];
              v14 = v27[14] - v13;
              v15 = v13 >> 3;
              v16 = v13 >= 0x18;
              v17 = 3;
              if (v16)
              {
                v17 = v15;
              }

              v18 = 10;
              if ((v14 >> 3) > 0xAuLL)
              {
                v18 = (v14 >> 3);
              }

              v19 = v17 | (v18 << 32);
            }

            else
            {
              v19 = 0xA00000003;
              v14 = 80;
            }

            *a6 = v19;
            goto LABEL_29;
          }
        }
      }
    }

    goto LABEL_23;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_23;
    }

    v8 = a5;
    v9 = result;
    result = (*(**(result + 2800) + 32))(*(result + 2800), a3, a4, &v26, 8);
    if (!result)
    {
      goto LABEL_23;
    }

    v10 = 0;
    result = v9;
    v11 = *(v9 + 2816) & v26;
  }

  else
  {
    v11 = a3;
    v8 = a5;
    v10 = a4;
  }

  result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(result, v11, v10 | a4 & 0xFFFFFFFFFFFFFF00, &v24);
  if (!v25 || (v20 = *v25, (*v25 & 0x1F) != 0x10))
  {
LABEL_23:
    *a6 = 0;
    *(a6 + 16) = 0;
    return result;
  }

  if ((v20 & 0x20000000) != 0)
  {
    v23 = *v8;
    v26 = v24;
    v27 = v25;
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(v23, &v26);
  }

  v21 = *(v25 + 3);
  if ((v20 & 0x10000000) != 0)
  {
    v22 = -v25[6];
  }

  else
  {
    v22 = HIDWORD(v21) - v25[8];
  }

  v14 = 8 * v22;
  *a6 = v21;
LABEL_29:
  *(a6 + 8) = v14;
  *(a6 + 16) = 1;
  return result;
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(swift::remote::RemoteAddress,BOOL,int)::ProtocolResolver::objcProtocol(size_t __len@<X2>, const void *a2@<X1>, std::string *a3@<X8>)
{
  if (a2)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v7) = __len;
    if (__len)
    {
      memmove(&__dst, a2, __len);
    }

    *(&__dst + __len) = 0;
    if (SHIBYTE(v7) < 0)
    {
      v5 = __dst;
      std::string::__init_copy_ctor_external(&v8, __dst, *(&__dst + 1));
      *a3 = v8;
      operator delete(v5);
      goto LABEL_12;
    }
  }

  else
  {
    __dst = 0uLL;
    v7 = 0;
  }

  *&a3->__r_.__value_.__l.__data_ = __dst;
  a3->__r_.__value_.__r.__words[2] = v7;
LABEL_12:
  a3[1].__r_.__value_.__s.__data_[0] = 1;
  a3[1].__r_.__value_.__s.__data_[8] = 1;
}

void std::vector<swift::reflection::TypeRefRequirement>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(16 * v8) = *a2;
    v5 = 16 * v8 + 16;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readProtocol<swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver>(uint64_t a1, uint64_t a2, swift::Demangle::__runtime::NodeFactory *a3, uint64_t a4)
{
  v24 = a4;
  v6 = *a2;
  if ((v6 & 1) == 0)
  {
    if (!*(a2 + 16))
    {
      v6 &= *(a1 + 2816);
    }

    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v6, *(a2 + 16), &v25);
    v8 = v26;
    if (v26 && (*__p = v25, v28 = v26, (v9 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(a1, __p, a3, 50)) != 0) && ((v10 = v9, (*v8 & 0x10) == 0) && (*v8 & 0x1F) != 3 || (Node = swift::Demangle::__runtime::NodeFactory::createNode(a3, 243), swift::Demangle::__runtime::Node::addChild(Node, v10, a3, v12, v13), Node)))
    {
      return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver::swiftProtocol(&v24);
    }

    else
    {
      return 0;
    }
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCProtocolName(a1, v6 & 0xFFFFFFFFFFFFFFFELL, *(a2 + 16), __p);
  if (SHIBYTE(v28) >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if (SHIBYTE(v28) >= 0)
  {
    v16 = SHIBYTE(v28);
  }

  else
  {
    v16 = __p[1];
  }

  if (v16 >= 4 && *v15 == 1349801055)
  {
    v23 = 0;
    v18 = swift::Demangle::__runtime::Demangler::demangleSymbol(a3, v15, v16, v22);
    if (v23 == v22)
    {
      (*(*v23 + 32))(v23);
      if (v18)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v23)
      {
        (*(*v23 + 40))();
      }

      if (v18)
      {
LABEL_31:
        while (1)
        {
          v19 = *(v18 + 16);
          v20 = (v19 - 200) > 0x2F || ((1 << (v19 + 56)) & 0xC80000000001) == 0;
          if (v20 && v19 != 101)
          {
            break;
          }

          v21 = *(v18 + 18);
          if (v21 != 1)
          {
            if (v21 != 5 || *(v18 + 8) != 1)
            {
              goto LABEL_41;
            }

            v18 = *v18;
          }

          v18 = *v18;
        }

        result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver::swiftProtocol(&v24);
        goto LABEL_19;
      }
    }

LABEL_41:
    result = 0;
  }

  else
  {
    result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver::objcProtocol(&v24, v15, v16);
  }

LABEL_19:
  if (SHIBYTE(v28) < 0)
  {
    v17 = result;
    operator delete(__p[0]);
    return v17;
  }

  return result;
}

uint64_t swift::reflection::TypeRefBuilder::createGenericSignature(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    swift::reflection::TypeRefBuilder::makeGenericSignatureRef<llvm::ArrayRef<swift::reflection::GenericTypeParameterTypeRef const*>,llvm::ArrayRef<swift::reflection::TypeRefRequirement>>();
  }

  if (*a2)
  {
    v3 = *(*a2 + 8) == 9;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    operator new();
  }

  return 0;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver::swiftProtocol(uint64_t *a1)
{
  swift::Demangle::__runtime::mangleNode();
  v4 = v15;
  if (v15)
  {
    v5 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v4)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v14 = __p;
  }

  size = v14.__r_.__value_.__l.__size_;
  v5 = v14.__r_.__value_.__r.__words[0];
  v13[0] = v14.__r_.__value_.__r.__words[2];
  *(v13 + 3) = *(&v14.__r_.__value_.__r.__words[2] + 3);
  v2 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v4)
  {
    return 0;
  }

LABEL_10:
  v7 = *a1;
  v10.__r_.__value_.__s.__data_[0] = 0;
  v12 = 0;
  if (v2 < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v5, size);
  }

  else
  {
    v10.__r_.__value_.__r.__words[0] = v5;
    v10.__r_.__value_.__l.__size_ = size;
    LODWORD(v10.__r_.__value_.__r.__words[2]) = v13[0];
    *(&v10.__r_.__value_.__r.__words[2] + 3) = *(v13 + 3);
    *(&v10.__r_.__value_.__s + 23) = v2;
  }

  v11 = 0;
  v12 = 1;
  result = swift::reflection::TypeRefBuilder::createProtocolTypeFromDecl(v7, &v10);
  if (v12 == 1 && SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = result;
    operator delete(v10.__r_.__value_.__l.__data_);
    result = v8;
  }

  if (v2 < 0)
  {
    v9 = result;
    operator delete(v5);
    return v9;
  }

  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver::objcProtocol(uint64_t *a1, const void *a2, size_t __len)
{
  if (!a2)
  {
    memset(&__dst, 0, sizeof(__dst));
LABEL_10:
    v17 = __dst;
    size = __dst.__r_.__value_.__l.__size_;
    v5 = __dst.__r_.__value_.__r.__words[0];
    v16[0] = __dst.__r_.__value_.__r.__words[2];
    *(v16 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
    v7 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    goto LABEL_12;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, a2, __len);
  }

  __dst.__r_.__value_.__s.__data_[__len] = 0;
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  v8 = __dst.__r_.__value_.__r.__words[0];
  std::string::__init_copy_ctor_external(&v17, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  size = v17.__r_.__value_.__l.__size_;
  v5 = v17.__r_.__value_.__r.__words[0];
  v16[0] = v17.__r_.__value_.__r.__words[2];
  *(v16 + 3) = *(&v17.__r_.__value_.__r.__words[2] + 3);
  v7 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  operator delete(v8);
LABEL_12:
  v9 = *a1;
  v12.__r_.__value_.__s.__data_[0] = 0;
  v14 = 0;
  if (v7 < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v5, size);
  }

  else
  {
    v12.__r_.__value_.__r.__words[0] = v5;
    v12.__r_.__value_.__l.__size_ = size;
    LODWORD(v12.__r_.__value_.__r.__words[2]) = v16[0];
    *(&v12.__r_.__value_.__r.__words[2] + 3) = *(v16 + 3);
    *(&v12.__r_.__value_.__s + 23) = v7;
  }

  v13 = 1;
  v14 = 1;
  ProtocolTypeFromDecl = swift::reflection::TypeRefBuilder::createProtocolTypeFromDecl(v9, &v12);
  if (v14 == 1 && SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v7 < 0)
  {
    operator delete(v5);
  }

  return ProtocolTypeFromDecl;
}

void *swift::reflection::GenericSignatureRef::GenericSignatureRef(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (((8 * a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  if (a5)
  {
    if (((16 * a5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCRODataPtr(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (!(*(**(a1 + 2800) + 32))(*(a1 + 2800), a2 + 32, a3, &v8, 8))
  {
    return 0;
  }

  v4 = v8 & *(a1 + 2816) & 0x7FFFFFFFFFF8;
  if (v4)
  {
    v7 = 0;
    if (!(*(**(a1 + 2800) + 32))(*(a1 + 2800), v4, 0, &v7, 4))
    {
      return 0;
    }

    if (v7 < 0)
    {
      if (!(*(**(a1 + 2800) + 32))(*(a1 + 2800), v4 + 8, 0, &v8, 8))
      {
        return 0;
      }

      v5 = *(a1 + 2816);
      v4 = v5 & v8;
      if (v5 & v8)
      {
        if ((*(**(a1 + 2800) + 32))(*(a1 + 2800), v4 & 0xFFFFFFFFFFFFFFFELL, 0, &v8, 8))
        {
          return *(a1 + 2816) & v8;
        }

        return 0;
      }
    }
  }

  return v4;
}

uint64_t swift::reflection::ForeignClassTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, char *a2)
{
  v2 = a2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v4 = a2[23];
  v5 = *(a2 + 1);
  if (v4 < 0)
  {
    a2 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  swift::reflection::TypeRefID::addString(&v11, a2, v6);
  v7 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1296), &v11);
  if (!v7)
  {
    if (*(v2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, *v2, v2[1]);
    }

    else
    {
      v10 = *v2;
    }

    operator new();
  }

  v8 = v7[5];
  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  return v8;
}

void swift::reflection::ForeignClassTypeRef::~ForeignClassTypeRef(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
    v1 = vars8;
  }

  operator delete();
}

char *swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(unint64_t a1, unint64_t a2, uint64_t a3, int a4, int a5)
{
  *&v207 = a2;
  *(&v207 + 1) = a3;
  LOBYTE(v208) = a4;
  __src[0] = 0;
  if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v207, __src) && __src[0] != (*a1 + 32 * *(a1 + 16)))
  {
    return *(__src[0] + 3);
  }

  v12 = __OFSUB__(a5, 1);
  v13 = (a5 - 1);
  if (v13 < 0 != v12)
  {
    return 0;
  }

  *__src = v207;
  v166 = v208;
  v167 = 0;
  v126.__r_.__value_.__r.__words[0] = 0;
  if ((__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __src, &v126) & 1) == 0)
  {
    v14 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __src, __src, v126.__r_.__value_.__l.__data_);
    v15 = __src[1];
    *v14 = __src[0];
    *(v14 + 8) = v15;
    *(v14 + 16) = v166;
    v14[3] = v167;
  }

  Metadata = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v205);
  v17 = v206;
  if (!v206)
  {
    return 0;
  }

  v18 = __src;
  v19 = *v206;
  if (*v206 > 0x7FFuLL)
  {
    LODWORD(v19) = 0;
  }

  if (v19 <= 770)
  {
    if (v19 <= 514)
    {
      if ((v19 - 512) < 3)
      {
        *__src = v205;
        v166 = v206;
        return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromMetadata(a1, __src, v13, 0);
      }

      if (!v19)
      {
        *__src = v205;
        v166 = v206;
        return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromClassMetadata(a1, __src, v13, a4);
      }

      goto LABEL_46;
    }

    if ((v19 - 515) >= 2)
    {
      if (v19 == 769)
      {
        v166 = 0;
        __src[1] = 0;
        __src[0] = 0;
        std::vector<swift::reflection::TypeRef const*>::reserve(__src, v206[1]);
        v33 = *(v17 + 8);
        if (*(v17 + 8))
        {
          v34 = (v17 + 24);
          do
          {
            v36 = *v34;
            v34 += 2;
            result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v36, a3, 0, v13);
            if (!result)
            {
              goto LABEL_166;
            }

            v37 = __src[1];
            if (__src[1] < v166)
            {
              *__src[1] = result;
              v35 = v37 + 8;
            }

            else
            {
              v38 = __src[0];
              v39 = __src[1] - __src[0];
              v40 = (__src[1] - __src[0]) >> 3;
              v41 = v40 + 1;
              if ((v40 + 1) >> 61)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v42 = v166 - __src[0];
              if ((v166 - __src[0]) >> 2 > v41)
              {
                v41 = v42 >> 2;
              }

              if (v42 >= 0x7FFFFFFFFFFFFFF8)
              {
                v43 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v43 = v41;
              }

              if (v43)
              {
                if (!(v43 >> 61))
                {
                  operator new();
                }

                goto LABEL_236;
              }

              *(8 * v40) = result;
              v35 = (8 * v40 + 8);
              memcpy(0, v38, v39);
              __src[0] = 0;
              __src[1] = v35;
              v166 = 0;
              if (v38)
              {
                operator delete(v38);
              }
            }

            __src[1] = v35;
            --v33;
          }

          while (v33);
        }

        v51 = *(v17 + 16);
        memset(&v126, 0, sizeof(v126));
        if (v51 && !(*(**(a1 + 2800) + 16))(*(a1 + 2800), v51, a3, &v126))
        {
          result = 0;
        }

        else
        {
          memset(&v209, 0, sizeof(v209));
          v52 = std::string::find(&v126, 32, 0);
          if (v52 == -1)
          {
            v56 = 0;
            size = 0;
          }

          else
          {
            v53 = v52;
            v54 = 0;
            do
            {
              if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v55 = &v126;
              }

              else
              {
                v55 = v126.__r_.__value_.__r.__words[0];
              }

              v164.__r_.__value_.__r.__words[0] = v55 + v54;
              v164.__r_.__value_.__l.__size_ = v53 - v54;
              std::vector<__swift::__runtime::llvm::StringRef>::push_back[abi:nn200100](&v209, &v164);
              v54 = v53 + 1;
              v53 = std::string::find(&v126, 32, v53 + 1);
            }

            while (v53 != -1);
            size = v209.__r_.__value_.__l.__size_;
            v56 = v209.__r_.__value_.__r.__words[0];
          }

          v91 = (size - v56) >> 4;
          v92 = __src[0];
          v93 = (__src[1] - __src[0]) >> 3;
          if (v93 > v91)
          {
            v94 = v91 + 1;
            do
            {
              *&v164.__r_.__value_.__l.__data_ = 0uLL;
              std::vector<__swift::__runtime::llvm::StringRef>::push_back[abi:nn200100](&v209, &v164);
              v92 = __src[0];
              v93 = (__src[1] - __src[0]) >> 3;
            }

            while (v93 > v94++);
            v56 = v209.__r_.__value_.__r.__words[0];
          }

          TupleType = swift::reflection::TypeRefBuilder::createTupleType(a1 + 328, v92, v93, v56, (v209.__r_.__value_.__l.__size_ - v56) >> 4);
          v97 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v207);
          result = TupleType;
          *v97 = TupleType;
          if (v209.__r_.__value_.__r.__words[0])
          {
            v209.__r_.__value_.__l.__size_ = v209.__r_.__value_.__r.__words[0];
            operator delete(v209.__r_.__value_.__l.__data_);
            result = TupleType;
          }
        }

        if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
        {
          v98 = result;
          operator delete(v126.__r_.__value_.__l.__data_);
          result = v98;
        }

LABEL_166:
        v27 = __src[0];
        if (!__src[0])
        {
          return result;
        }

        __src[1] = __src[0];
LABEL_178:
        v103 = result;
        operator delete(v27);
        return v103;
      }

      if (v19 == 770)
      {
        memset(&v126, 0, sizeof(v126));
        v21 = *(v206 + 4);
        if (*(v206 + 4))
        {
          v22 = v206 + 3;
          v23 = a3;
          v24 = v206 + 3;
          while (1)
          {
            v26 = *v24++;
            result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v26, v23, 0, v13);
            if (!result)
            {
              goto LABEL_176;
            }

            __src[1] = 0;
            __src[0] = 0;
            v166 = result;
            if ((*(v17 + 8) & 0x2000000) != 0)
            {
              v25 = v22[*(v17 + 8)];
            }

            else
            {
              v25 = 0;
            }

            LODWORD(v167) = v25;
            std::vector<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>>::push_back[abi:nn200100](&v126, __src);
            v22 = (v22 + 4);
            if (!--v21)
            {
              goto LABEL_145;
            }
          }
        }

        v23 = a3;
LABEL_145:
        result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, *(v17 + 16), v23, 0, v13);
        if (!result)
        {
          goto LABEL_176;
        }

        v84 = result;
        v85 = *(v17 + 8);
        if ((v85 & 0x80000000) != 0)
        {
          ExtendedFlags = swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getExtendedFlags(v17);
        }

        else
        {
          ExtendedFlags = 0;
        }

        v87 = *(v17 + 8);
        if ((v87 & 0x10000000) != 0)
        {
          result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, *(((v17 + 8 * *(v17 + 8) + 4 * (*(v17 + 8) & ((*(v17 + 8) << 38) >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 * ((*(v17 + 8) >> 27) & 1)), v23, 0, v13);
          if (!result)
          {
            goto LABEL_176;
          }

          v89 = result;
          v87 = *(v17 + 8);
        }

        else
        {
          v89 = 0;
        }

        if ((v87 & 0x8000000) != 0)
        {
          v99 = *((v17 + 8 * v87 + 4 * (v87 & (v87 << 38 >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8);
          if ((v99 - 1) >= 4)
          {
            v90 = 0;
          }

          else
          {
            v90 = v99;
          }
        }

        else
        {
          v90 = 0;
        }

        if (swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::hasThrownError(v17))
        {
          ThrownError = swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getThrownError(v17);
          result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, ThrownError, v23, 0, v13);
          if (!result)
          {
            goto LABEL_176;
          }
        }

        else
        {
          result = 0;
        }

        FunctionType = swift::reflection::TypeRefBuilder::createFunctionType(a1 + 328, v126.__r_.__value_.__l.__data_, (v126.__r_.__value_.__l.__size_ - v126.__r_.__value_.__r.__words[0]) >> 5, v84, v85, ExtendedFlags, v90, v89, result);
        v102 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v207);
        result = FunctionType;
        *v102 = FunctionType;
LABEL_176:
        v27 = v126.__r_.__value_.__r.__words[0];
        if (!v126.__r_.__value_.__r.__words[0])
        {
          return result;
        }

        v126.__r_.__value_.__l.__size_ = v126.__r_.__value_.__r.__words[0];
        goto LABEL_178;
      }

LABEL_46:
      v20 = swift::reflection::OpaqueTypeRef::get(Metadata);
      goto LABEL_47;
    }

    result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(a1, &v205, 0);
    if (!result)
    {
      return result;
    }

    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, result, v28, &v209);
    if (v209.__r_.__value_.__r.__words[2])
    {
      v166 = 0;
      __src[1] = 0;
      v167 = 0;
      v168 = 2400;
      v169 = 0;
      v170 = 0;
      v204 = 0;
      __src[0] = off_E13E8;
      v171 = 0;
      v173 = 0;
      v172 = 0;
      v174 = 0;
      v186 = 0u;
      v187 = 0u;
      v188 = 0u;
      v189 = 0u;
      v190 = 0u;
      v191 = 0u;
      v192 = 0u;
      v193 = 0u;
      v194 = 0u;
      v195 = 0u;
      v196 = 0u;
      v197 = 0u;
      v198 = 0u;
      v199 = 0u;
      v200 = 0u;
      v201 = 0u;
      v202 = 0u;
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v180 = 0u;
      v181 = 0u;
      v182 = 0u;
      v183 = 0u;
      v184 = 0u;
      v185 = 0u;
      v203 = 0;
      v126 = v209;
      v29 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextMangling(a1, &v126, __src);
      if (v29 && *(v29 + 16) == 243)
      {
        swift::Demangle::__runtime::mangleNode();
        if (LODWORD(v126.__r_.__value_.__l.__data_))
        {
          v30 = 0;
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v164, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v164 = __p;
          }

          v30 = swift::reflection::ForeignClassTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, &v164);
          *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v207) = v30;
          if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v164.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v30 = 0;
      }

      swift::Demangle::__runtime::Demangler::~Demangler(__src);
      return v30;
    }

    return 0;
  }

  if (v19 > 774)
  {
    if ((v19 - 1280) < 2)
    {
LABEL_32:
      strcpy(__src, "Bo");
      HIBYTE(v166) = 2;
      result = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, __src);
      goto LABEL_33;
    }

    if (v19 != 775)
    {
      if (v19 != 1024)
      {
        goto LABEL_46;
      }

      goto LABEL_32;
    }

    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readShape(a1, *(a1 + 2816) & v206[1], 0, &v209);
    if (!v209.__r_.__value_.__r.__words[2])
    {
      return 0;
    }

    if ((*(v209.__r_.__value_.__r.__words[2] + 1) & 1) != 0 && *(v209.__r_.__value_.__r.__words[2] + 20))
    {
      result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, *(v17 + 16), a3, 0, v13);
      if (result)
      {
        operator new();
      }

      return result;
    }

    v166 = 0;
    __src[1] = 0;
    v167 = 0;
    v168 = 2400;
    v169 = 0;
    v170 = 0;
    v204 = 0;
    __src[0] = off_E13E8;
    v171 = 0;
    v173 = 0;
    v172 = 0;
    v174 = 0;
    v186 = 0u;
    v187 = 0u;
    v188 = 0u;
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v181 = 0u;
    v182 = 0u;
    v183 = 0u;
    v184 = 0u;
    v185 = 0u;
    v203 = 0;
    v77 = *(v209.__r_.__value_.__r.__words[2] + 4);
    if (v77)
    {
      v78 = (v209.__r_.__value_.__r.__words[0] + v77 + 4);
    }

    else
    {
      v78 = 0;
    }

    if (v77)
    {
      v79 = v209.__r_.__value_.__s.__data_[8];
    }

    else
    {
      v79 = 0;
    }

    MangledName = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(a1, v78, v79, 0, __src);
    if (!MangledName)
    {
      goto LABEL_140;
    }

    v164.__r_.__value_.__r.__words[0] = a1 + 328;
    swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v164, MangledName, 0, 0, v81, &v126);
    if (LOWORD(v126.__r_.__value_.__r.__words[2]))
    {
      if (LOWORD(v126.__r_.__value_.__r.__words[2]) == 1)
      {
        (v126.__r_.__value_.__l.__size_)(v126.__r_.__value_.__r.__words[0], 3, 0);
      }

      goto LABEL_140;
    }

    v82 = v126.__r_.__value_.__r.__words[0];
    if (!v126.__r_.__value_.__r.__words[0])
    {
      goto LABEL_141;
    }

    v163 = v209;
    swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGeneralizationSignature(v209.__r_.__value_.__r.__words[2], &v126);
    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(a1, &v163, &v126, &v164);
    if (LOWORD(v164.__r_.__value_.__r.__words[2]))
    {
      if (LOWORD(v164.__r_.__value_.__r.__words[2]) == 1)
      {
        (v164.__r_.__value_.__l.__size_)(v164.__r_.__value_.__r.__words[0], 3, 0);
      }

      goto LABEL_140;
    }

    if (!v164.__r_.__value_.__r.__words[0])
    {
LABEL_140:
      v82 = 0;
      goto LABEL_141;
    }

    swift::reflection::TypeRefBuilder::createSubstitutionMap(v164.__r_.__value_.__l.__data_, 0, 0, &v164);
    if (!LODWORD(v164.__r_.__value_.__r.__words[1]))
    {
      v82 = 0;
      goto LABEL_233;
    }

    v82 = swift::reflection::TypeRef::subst(v82, a1 + 328, &v164);
    if (!v82)
    {
      goto LABEL_233;
    }

    v106 = *v209.__r_.__value_.__r.__words[2];
    if ((v106 & 0x200) == 0)
    {
      goto LABEL_232;
    }

    *&v126.__r_.__value_.__r.__words[1] = 0uLL;
    __p.__r_.__value_.__r.__words[0] = 0;
    *&__p.__r_.__value_.__r.__words[1] = 0x960uLL;
    v128 = 0;
    v162 = 0;
    v126.__r_.__value_.__r.__words[0] = off_E13E8;
    v129 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v107 = ((v209.__r_.__value_.__r.__words[2] + 8 * ((v106 >> 8) & 1) + 19) & 0xFFFFFFFFFFFFFFFCLL);
    v108 = v107 + v209.__r_.__value_.__r.__words[0] - v209.__r_.__value_.__r.__words[2];
    v161 = 0;
    v109 = *v107;
    v110 = (v108 + v109);
    if (v109)
    {
      v111 = v110;
    }

    else
    {
      v111 = 0;
    }

    if (v109)
    {
      v112 = v209.__r_.__value_.__s.__data_[8];
    }

    else
    {
      v112 = 0;
    }

    v113 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(a1, v111, v112, 0, &v126);
    if (!v113)
    {
      swift::Demangle::__runtime::Demangler::~Demangler(&v126);
      v82 = 0;
      goto LABEL_233;
    }

    for (i = v113; ; i = *v121)
    {
      if (*(i + 16) != 243)
      {
LABEL_231:
        swift::Demangle::__runtime::Demangler::~Demangler(&v126);
LABEL_232:
        *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v207) = v82;
LABEL_233:
        __swift::__runtime::llvm::deallocate_buffer(v164.__r_.__value_.__l.__data_, (16 * LODWORD(v164.__r_.__value_.__r.__words[2])), 8uLL);
LABEL_141:
        swift::Demangle::__runtime::Demangler::~Demangler(__src);
        return v82;
      }

      v115 = *(i + 18);
      v116 = i;
      if ((v115 - 1) >= 2)
      {
        if (v115 != 5 || !*(i + 8))
        {
          goto LABEL_231;
        }

        v116 = *i;
      }

      if (*(*v116 + 16) != 154)
      {
        goto LABEL_231;
      }

      v117 = i;
      if ((v115 - 1) >= 2)
      {
        if (v115 != 5 || !*(i + 8))
        {
          v118 = 0;
          goto LABEL_219;
        }

        v117 = *i;
      }

      v118 = *v117;
LABEL_219:
      v119 = *(v118 + 18);
      if ((v119 - 1) >= 2 && (v119 != 5 || !*(v118 + 8)))
      {
        goto LABEL_231;
      }

      v82 = swift::reflection::ExistentialMetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, v82);
      v120 = *(i + 18);
      if ((v120 - 1) < 2)
      {
        goto LABEL_226;
      }

      if (v120 == 5 && *(i + 8))
      {
        i = *i;
LABEL_226:
        v121 = *i;
        goto LABEL_228;
      }

      v121 = 0;
LABEL_228:
      if (*(v121 + 18) - 1 >= 2)
      {
        v121 = *v121;
      }
    }
  }

  if (v19 > 772)
  {
    if (v19 != 773)
    {
      result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v206[1], a3, 0, v13);
      if (!result)
      {
        return result;
      }

      v20 = swift::reflection::ExistentialMetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, result);
LABEL_47:
      v31 = v20;
      v32 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v207);
      result = v31;
      *v32 = v31;
      return result;
    }

    v47 = v206[1];
    __src[1] = 0;
    __src[0] = 0;
    v166 = 0;
    ObjCClassName = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCClassName(a1, v47, a3, __src);
    result = 0;
    if (ObjCClassName)
    {
      v49 = swift::reflection::ObjCClassTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, __src);
      v50 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v207);
      result = v49;
      *v50 = v49;
    }

LABEL_33:
    if ((SHIBYTE(v166) & 0x80000000) == 0)
    {
      return result;
    }

    v27 = __src[0];
    goto LABEL_178;
  }

  if (v19 != 771)
  {
    result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v206[1], a3, 0, v13);
    if (!result)
    {
      return result;
    }

    v20 = swift::reflection::MetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, result, 0);
    goto LABEL_47;
  }

  v44 = *(v206 + 2);
  if ((v44 & 0x40000000) != 0)
  {
    result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v206[2], a3, 0, v13);
    if (!result)
    {
      return result;
    }

    v45 = result;
    v46 = 1;
  }

  else
  {
    v45 = 0;
    v46 = v44 >= 0;
  }

  v166 = 0;
  __src[1] = 0;
  v167 = 0;
  v168 = 2400;
  v169 = 0;
  v170 = 0;
  v204 = 0;
  __src[0] = off_E13E8;
  v171 = 0;
  v173 = 0;
  v172 = 0;
  v174 = 0;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v203 = 0;
  memset(&v164, 0, sizeof(v164));
  v58 = *(v17 + 12);
  if (v58)
  {
    v122 = v46;
    v59 = 0;
    v60 = (v17 + 8 * ((*(v17 + 8) >> 30) & 1) + 16);
    v61 = a3;
    v62 = 8 * v58;
    v123 = v45;
    v124 = a3;
    do
    {
      v63 = *v60 & 0xFFFFFFFFFFFFFFFELL;
      if (!v61)
      {
        v63 &= *(a1 + 2816);
      }

      swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v63, v61, &v209);
      v64 = v209.__r_.__value_.__r.__words[2];
      if (!v209.__r_.__value_.__r.__words[2])
      {
        goto LABEL_143;
      }

      v126 = v209;
      v65 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(a1, &v126, __src, 50);
      if (!v65)
      {
        goto LABEL_143;
      }

      if ((*v64 & 0x10) != 0 || (*v64 & 0x1F) == 3)
      {
        v66 = v65;
        Node = swift::Demangle::__runtime::NodeFactory::createNode(__src, 243);
        swift::Demangle::__runtime::Node::addChild(Node, v66, __src, v68, v69);
        if (!Node)
        {
          goto LABEL_143;
        }
      }

      swift::Demangle::__runtime::mangleNode();
      data = v126.__r_.__value_.__l.__data_;
      if (LODWORD(v126.__r_.__value_.__l.__data_))
      {
        v18 &= 0xFFFFFFFFFFFFFF00;
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v209, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v209 = __p;
        }

        __sz = v209.__r_.__value_.__l.__size_;
        v18 = v209.__r_.__value_.__r.__words[0];
        LODWORD(v163.__r_.__value_.__l.__data_) = v209.__r_.__value_.__r.__words[2];
        *(v163.__r_.__value_.__r.__words + 3) = *(&v209.__r_.__value_.__r.__words[2] + 3);
        v5 = HIBYTE(v209.__r_.__value_.__r.__words[2]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (data)
      {
LABEL_143:
        v83 = 0;
        goto LABEL_185;
      }

      if (v59 >= v164.__r_.__value_.__r.__words[2])
      {
        v71 = v164.__r_.__value_.__r.__words[0];
        v72 = v59 - v164.__r_.__value_.__r.__words[0];
        v73 = 0xCCCCCCCCCCCCCCCDLL * ((v59 - v164.__r_.__value_.__r.__words[0]) >> 3) + 1;
        if (v73 > 0x666666666666666)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (0x999999999999999ALL * ((v164.__r_.__value_.__r.__words[2] - v164.__r_.__value_.__r.__words[0]) >> 3) > v73)
        {
          v73 = 0x999999999999999ALL * ((v164.__r_.__value_.__r.__words[2] - v164.__r_.__value_.__r.__words[0]) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v164.__r_.__value_.__r.__words[2] - v164.__r_.__value_.__r.__words[0]) >> 3) >= 0x333333333333333)
        {
          v74 = 0x666666666666666;
        }

        else
        {
          v74 = v73;
        }

        if (v74)
        {
          if (v74 <= 0x666666666666666)
          {
            operator new();
          }

LABEL_236:
          std::string::__throw_length_error[abi:nn200100]();
        }

        v75 = 8 * ((v59 - v164.__r_.__value_.__r.__words[0]) >> 3);
        *v75 = 0;
        *(v75 + 32) = 0;
        if (v5 < 0)
        {
          std::string::__init_copy_ctor_external(v75, v18, __sz);
          v71 = v164.__r_.__value_.__r.__words[0];
          v72 = v164.__r_.__value_.__l.__size_ - v164.__r_.__value_.__r.__words[0];
        }

        else
        {
          *v75 = v18;
          *(v75 + 8) = __sz;
          *(v75 + 16) = v163.__r_.__value_.__l.__data_;
          *(v75 + 19) = *(v163.__r_.__value_.__r.__words + 3);
          *(v75 + 23) = v5;
        }

        *(v75 + 24) = 0;
        *(v75 + 32) = 1;
        v59 = v75 + 40;
        v76 = (v75 - v72);
        memcpy(v76, v71, v72);
        v164.__r_.__value_.__r.__words[0] = v76;
        v164.__r_.__value_.__r.__words[2] = 0;
        if (v71)
        {
          operator delete(v71);
        }

        v61 = v124;
      }

      else
      {
        *v59 = 0;
        *(v59 + 32) = 0;
        if (v5 < 0)
        {
          std::string::__init_copy_ctor_external(v59, v18, __sz);
        }

        else
        {
          *v59 = v18;
          *(v59 + 8) = __sz;
          *(v59 + 16) = v163.__r_.__value_.__l.__data_;
          *(v59 + 19) = *(v163.__r_.__value_.__r.__words + 3);
          *(v59 + 23) = v5;
        }

        *(v59 + 24) = 0;
        *(v59 + 32) = 1;
        v59 += 40;
      }

      v164.__r_.__value_.__l.__size_ = v59;
      if (v5 < 0)
      {
        operator delete(v18);
      }

      ++v60;
      v62 -= 8;
    }

    while (v62);
    v88 = v164.__r_.__value_.__r.__words[0];
    v45 = v123;
    v46 = v122;
  }

  else
  {
    v59 = 0;
    v88 = 0;
  }

  ProtocolCompositionType = swift::reflection::TypeRefBuilder::createProtocolCompositionType(a1 + 328, v88, 0xCCCCCCCCCCCCCCCDLL * ((v59 - v88) >> 3), v45, v46);
  v105 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v207);
  v83 = ProtocolCompositionType;
  *v105 = ProtocolCompositionType;
LABEL_185:
  std::vector<std::optional<std::pair<std::string,BOOL>>>::~vector[abi:nn200100](&v164);
  swift::Demangle::__runtime::Demangler::~Demangler(__src);
  return v83;
}

unint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = result;
  v8 = *(result + 24);
  v9 = *(result + 40);
  if (!v9)
  {
    v18 = 0;
LABEL_15:
    v11 = (v8 + 56 * v18);
    goto LABEL_16;
  }

  v33 = a2;
  v34[0] = a3;
  result = __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(&v33, v34);
  v10 = (v9 - 1) & result;
  v11 = (v8 + 56 * v10);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (a2 != *v11 || a3 != v13)
  {
    v15 = 1;
    while (v12 != -1 || v13)
    {
      v16 = v10 + v15++;
      v10 = v16 & (v9 - 1);
      v11 = (v8 + 56 * v10);
      v12 = *v11;
      v13 = *(v11 + 8);
      if (a2 == *v11 && a3 == v13)
      {
        goto LABEL_16;
      }
    }

    v8 = *(v6 + 24);
    v18 = *(v6 + 40);
    goto LABEL_15;
  }

LABEL_16:
  if (v11 != (*(v6 + 24) + 56 * *(v6 + 40)))
  {
    v19 = v11[2];
    *a4 = a2;
    a4[1] = a3;
    a4[2] = v19;
    return result;
  }

  v39 = 0;
  result = (*(**(v6 + 2800) + 32))(*(v6 + 2800), a2, a3, &v39, 8);
  if ((result & 1) == 0)
  {
    goto LABEL_67;
  }

  v20 = v39;
  if (v39 > 0x7FF)
  {
    v20 = 0;
  }

  if (v20 <= 770)
  {
    if (v20 <= 514)
    {
      if (v20 <= 512)
      {
        if (!v20)
        {
          v27 = a4;
          v28 = v6;
          v29 = a2;
          v30 = a3;
          v26 = 56;
          return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v28, v29, v30, v26, v27);
        }

        if (v20 != 512)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_52;
    }

    if (v20 <= 768)
    {
      if (v20 == 515)
      {
        v27 = a4;
        v28 = v6;
        v29 = a2;
        v30 = a3;
        v26 = 32;
        return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v28, v29, v30, v26, v27);
      }

      if (v20 != 516)
      {
        goto LABEL_68;
      }

      goto LABEL_53;
    }

    if (v20 != 769)
    {
      v33 = 0;
      result = (*(**(v6 + 2800) + 32))(*(v6 + 2800), a2 + 8, a3, &v33, 8);
      if (result)
      {
        v21 = 4 * v33;
        if ((v33 & 0x2000000) == 0)
        {
          v21 = 0;
        }

        v22 = v21 + 8 * v33;
        v23 = v22 + 24;
        v24 = ((v22 + 31) & 0x1FFFF8) + 8;
        if ((v33 & 0x8000000) != 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = v23;
        }

        v26 = (v25 + 7) & 0xFFFFF8;
        goto LABEL_70;
      }

LABEL_67:
      *a4 = 0;
      *(a4 + 8) = 0;
      a4[2] = 0;
      return result;
    }

    v33 = 0;
    result = (*(**(v6 + 2800) + 32))(*(v6 + 2800), a2 + 8, a3, &v33, 8);
    if ((result & 1) == 0 || v33 >= 0x100)
    {
      goto LABEL_67;
    }

    v26 = 16 * v33 + 24;
LABEL_70:
    v27 = a4;
    v28 = v6;
    v29 = a2;
    v30 = a3;
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v28, v29, v30, v26, v27);
  }

  if (v20 > 774)
  {
    if (v20 > 1279)
    {
      if (v20 != 1280)
      {
        if (v20 != 1281)
        {
LABEL_68:
          v27 = a4;
          v28 = v6;
          v29 = a2;
          v30 = a3;
          v26 = 8;
          return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v28, v29, v30, v26, v27);
        }

        goto LABEL_52;
      }
    }

    else
    {
      if (v20 == 775)
      {
        v37 = 0;
        v38 = 0;
        result = (*(**(v6 + 2800) + 96))(*(v6 + 2800), a2 + 8, a3, &v37, 8);
        if ((result & 1) == 0)
        {
          goto LABEL_67;
        }

        v32 = v37;
        if (!v38)
        {
          v32 = *(v6 + 2816) & v37;
        }

        swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readShape(v6, v32, v38, v35);
        result = v36;
        if (!v36)
        {
          goto LABEL_67;
        }

        swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGeneralizationSignature(v36, &v33);
        v26 = 8 * WORD2(v33) + 16;
        goto LABEL_70;
      }

      if (v20 != 1024)
      {
        goto LABEL_68;
      }
    }

    goto LABEL_53;
  }

  if (v20 > 772)
  {
    if (v20 == 773)
    {
      goto LABEL_52;
    }

LABEL_53:
    v27 = a4;
    v28 = v6;
    v29 = a2;
    v30 = a3;
    v26 = 24;
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v28, v29, v30, v26, v27);
  }

  if (v20 == 771)
  {
    LODWORD(v33) = 0;
    result = (*(**(v6 + 2800) + 32))(*(v6 + 2800), a2 + 8, a3, &v33, 4);
    if ((result & 1) == 0)
    {
      goto LABEL_67;
    }

    v31 = v33;
    v35[0] = 0;
    result = (*(**(v6 + 2800) + 32))(*(v6 + 2800), a2 + 12, a3, v35, 4);
    if ((result & 1) == 0 || v35[0] >= 0x100u)
    {
      goto LABEL_67;
    }

    v26 = ((v31 >> 27) & 8) + 8 * v35[0] + 16;
    goto LABEL_70;
  }

LABEL_52:
  v27 = a4;
  v28 = v6;
  v29 = a2;
  v30 = a3;
  v26 = 16;
  return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v28, v29, v30, v26, v27);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromClassMetadata(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a2 + 16);
  v6 = *a2;
  v7 = v4;
  return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromMetadata(a1, &v6, a3, a4);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromMetadata(unint64_t a1, __int128 *a2, uint64_t a3, int a4)
{
  v43 = *a2;
  v44 = *(a2 + 2);
  result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(a1, &v43, a4);
  if (!result)
  {
    return result;
  }

  v10 = result;
  if (a4 && (v43 != *a2 || BYTE8(v43) != *(a2 + 8)))
  {
    v33 = v43;
    v34 = BYTE8(v43);
    v35 = a4;
    *&v41 = 0;
    v11 = v9;
    v12 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v33, &v41);
    v9 = v11;
    if (v12)
    {
      v13 = v41;
      if (v41 != *a1 + 32 * *(a1 + 16))
      {
        v14 = *(a2 + 1);
        v33 = *a2;
        v34 = v14;
        v35 = a4;
        *&v41 = 0;
        if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v33, &v41))
        {
          v15 = v41;
          *v41 = -2;
          *(v15 + 8) = 0;
          *(v15 + 16) = 0;
          *(a1 + 8) = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
        }

        return *(v13 + 24);
      }
    }
  }

  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v10, v9, &v41);
  if (!v42)
  {
    return 0;
  }

  *__p = v41;
  v32 = v42;
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(a1, __p, &v33);
  if (v40 != 1)
  {
    goto LABEL_26;
  }

  if ((*v42 & 0x80) == 0)
  {
    result = swift::reflection::NominalTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, &v33, 0);
    goto LABEL_19;
  }

  v29 = v43;
  v30 = v44;
  v27 = v41;
  v28 = v42;
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getGenericSubst(a1, &v29, &v27, a3, __p);
  v16 = __p[0];
  v17 = __p[1];
  if (__p[0] != __p[1])
  {
    *&v29 = __p[0];
    *(&v29 + 1) = (__p[1] - __p[0]) >> 3;
    result = swift::reflection::TypeRefBuilder::createBoundGenericType(a1 + 328, &v33, &v29);
    v18 = __p[0];
    if (!__p[0])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  result = 0;
  v18 = __p[0];
  if (__p[0])
  {
LABEL_17:
    __p[1] = v18;
    v19 = result;
    operator delete(v18);
    result = v19;
  }

LABEL_18:
  if (v16 != v17)
  {
LABEL_19:
    if (result)
    {
      v20 = result;
      __p[0] = v43;
      LOBYTE(__p[1]) = BYTE8(v43);
      LOBYTE(v32) = a4;
      *&v29 = 0;
      v21 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __p, &v29);
      v22 = v29;
      if ((v21 & 1) == 0)
      {
        v22 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __p, __p, v29);
        v23 = __p[1];
        *v22 = __p[0];
        *(v22 + 8) = v23;
        *(v22 + 16) = v32;
        v22[3] = 0;
      }

      result = v20;
      v22[3] = v20;
      if (a4)
      {
        v24 = *(a2 + 8);
        if (v43 != *a2 || BYTE8(v43) != v24)
        {
          __p[0] = *a2;
          LOBYTE(__p[1]) = v24;
          LOBYTE(v32) = a4;
          __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::erase(a1, __p);
          result = v20;
        }
      }
    }

    goto LABEL_27;
  }

LABEL_26:
  result = 0;
LABEL_27:
  if (v40 == 1)
  {
    if (v39 == 1 && v37)
    {
      v38 = v37;
      v25 = result;
      operator delete(v37);
      result = v25;
    }

    if (v36 < 0)
    {
      v26 = result;
      operator delete(v33);
      return v26;
    }
  }

  return result;
}

void swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1;
  v5 = a4;
  if (*a3)
  {
    if (swift::reflection::GenericTypeParameterTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, 0, 0))
    {
      operator new();
    }

    *(a4 + 16) = 1;
    *a4 = "Failed to read generic parameter type in runtime generic signature.";
    *(a4 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    return;
  }

  v142 = 0;
  v143 = 0;
  v144 = 0;
  if (!*(a3 + 2))
  {
LABEL_77:
    GenericSignature = swift::reflection::TypeRefBuilder::createGenericSignature(v4 + 328, 0, 0);
    *(v5 + 16) = 0;
    *v5 = GenericSignature;
    if (!GenericSignature)
    {
      *v5 = "unknown error";
      *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      *(v5 + 16) = 1;
    }

LABEL_79:
    v45 = v142;
    if (v142)
    {
      goto LABEL_80;
    }

    return;
  }

  v6 = 0;
  v7 = *(a3 + 16);
  v56 = 12 * *(a3 + 2);
  v57 = v7 + 8;
  while (1)
  {
    v8 = v57 + v6;
    if ((*(v57 + v6 - 8) & 0x1Fu) >= 6 && (*(v57 + v6 - 8) & 0x1F) != 31)
    {
      break;
    }

    v102[1] = 0;
    v102[2] = 0;
    v103 = 0;
    v104 = 2400;
    v105 = 0;
    v106 = 0;
    v102[0] = off_E13E8;
    v141 = 0;
    v108 = 0;
    v109 = 0;
    v107 = 0;
    v110 = 0;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0;
    SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v7 + v6 + *(v8 - 4) + 4), a2);
    v101 = 0;
    v13 = swift::Demangle::__runtime::Demangler::demangleType(v102, SymbolicMangledNameStringRef, v11, v100);
    if (v101 == v100)
    {
      (*(*v101 + 32))(v101);
      if (!v13)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v101)
      {
        (*(*v101 + 40))();
      }

      if (!v13)
      {
        goto LABEL_29;
      }
    }

    *&v146 = v4 + 328;
    swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v146, v13, 0, 0, v12, &v58);
    if (v60)
    {
      if (v60 == 1)
      {
        v59(v58, 3, 0);
      }

LABEL_28:
      LOBYTE(v13) = 0;
LABEL_29:
      *(v5 + 16) = 1;
      *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      v16 = "Failed to read subject type in requirement of runtime generic signature.";
LABEL_30:
      *v5 = v16;
      goto LABEL_31;
    }

    if (!v58)
    {
      goto LABEL_28;
    }

    v15 = *(v8 - 8) & 0x1F;
    if (v15 > 2)
    {
      if ((*(v8 - 8) & 0x1Fu) > 4)
      {
        if (v15 == 5)
        {
          LOBYTE(v13) = 0;
          *(v5 + 16) = 1;
          *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
          v16 = "Unexpected invertible protocol in runtime generic signature";
        }

        else
        {
          if (v15 != 31)
          {
            goto LABEL_76;
          }

          LOBYTE(v13) = 0;
          *(v5 + 16) = 1;
          *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
          v16 = "Unexpected layout requirement in runtime generic signature";
        }
      }

      else if (v15 == 3)
      {
        LOBYTE(v13) = 0;
        *(v5 + 16) = 1;
        *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
        v16 = "Unexpected same conformance requirement in runtime generic signature";
      }

      else
      {
        if (v15 != 4)
        {
          goto LABEL_76;
        }

        LOBYTE(v13) = 0;
        *(v5 + 16) = 1;
        *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
        v16 = "Unexpected same-shape requirement in runtime generic signature";
      }

      goto LABEL_30;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v62 = 2400;
        v63 = 0;
        v64 = 0;
        v58 = off_E13E8;
        v99 = 0;
        v66 = 0;
        v67 = 0;
        v65 = 0;
        v68 = 0;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v17 = v7 + v6;
        v97 = 0;
        v46 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v17 + *(v57 + v6) + 8), v14);
        v19 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v17 + *(v57 + v6) + 8), v18);
        *&v148 = v46;
        *(&v148 + 1) = v48 & 0xFFFFFFFFFFFFFF00;
        v149 = v19;
        LOBYTE(v145) = 0;
        swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v19, v20);
        operator new();
      }

      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 2400;
      v63 = 0;
      v64 = 0;
      v58 = off_E13E8;
      v99 = 0;
      v66 = 0;
      v67 = 0;
      v65 = 0;
      v68 = 0;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v29 = v7 + v6;
      v97 = 0;
      v47 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v29 + *(v57 + v6) + 8), v14);
      v31 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v29 + *(v57 + v6) + 8), v30);
      *&v148 = v47;
      *(&v148 + 1) = v49 & 0xFFFFFFFFFFFFFF00;
      v149 = v31;
      LOBYTE(v145) = 0;
      swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v31, v32);
      operator new();
    }

    v50 = v58;
    v54 = v5;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 2400;
    v63 = 0;
    v64 = 0;
    v58 = off_E13E8;
    v99 = 0;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    v68 = 0;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    v21 = v7;
    v22 = *a2;
    v23 = *(a2 + 8);
    v24 = *(a2 + 2);
    v51 = v21;
    v25 = v21 + v6;
    v26 = v21 + v6 + *a2 - v24;
    LODWORD(v148) = 0;
    if ((*(**(a1 + 2800) + 32))(*(a1 + 2800), v26 + 8, v23, &v148, 4))
    {
      v27 = v148;
      LODWORD(v148) = v148 & 0xFFFFFFFC;
      v28 = v25 + v22 + (v27 & 0xFFFFFFFFFFFFFFFCLL) - v24 + 8;
      *&v146 = v28;
      BYTE8(v146) = v23;
      if ((v27 & 1) == 0)
      {
        v5 = v54;
        goto LABEL_55;
      }

      v5 = v54;
      if ((*(**(a1 + 2800) + 96))(*(a1 + 2800)))
      {
        v28 = v146;
LABEL_55:
        v35 = BYTE8(v146);
        v33 = v28 & 0xFFFFFFFFFFFFFFFELL;
        v34 = a1;
        v145 = v4 + 328;
        if (BYTE8(v146))
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      v33 = 0;
      v34 = a1;
      v145 = v4 + 328;
    }

    else
    {
      v33 = 0;
      v34 = a1;
      v145 = v4 + 328;
      v5 = v54;
    }

LABEL_58:
    v35 = 0;
    v33 &= *(v34 + 2816);
LABEL_59:
    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(v34, v33, v35, &v148);
    v36 = v149;
    if (v149 && (v146 = v148, v147 = v149, (v37 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(v34, &v146, &v58, 50)) != 0) && ((v38 = v37, (*v36 & 0x10) == 0) && (*v36 & 0x1F) != 3 || (v39 = swift::Demangle::__runtime::NodeFactory::createNode(&v58, 243), swift::Demangle::__runtime::Node::addChild(v39, v38, &v58, v40, v41), v39)) && (v42 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver::swiftProtocol(&v145)) != 0)
    {
      *&v146 = v50 & 0xFFFFFFFFFFFFFFF8;
      *(&v146 + 1) = v42;
      std::vector<swift::reflection::TypeRefRequirement>::push_back[abi:nn200100](&v142, &v146);
      v43 = 0;
    }

    else
    {
      v43 = 1;
      *(v5 + 16) = 1;
      *v5 = "Failed to read protocol type in conformance requirement of runtime generic signature.";
      *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    }

    v58 = off_E13E8;
    if (v99 == &v98)
    {
      (*(*v99 + 32))(v99);
    }

    else if (v99)
    {
      (*(*v99 + 40))();
    }

    v58 = off_E13C0;
    swift::Demangle::__runtime::NodeFactory::freeSlabs(v61);
    if (v63)
    {
      *(v63 + 48) = 0;
    }

    if ((v43 & 1) == 0)
    {
      v7 = v51;
LABEL_76:
      LOBYTE(v13) = 1;
      goto LABEL_31;
    }

    LOBYTE(v13) = 0;
    v7 = v51;
LABEL_31:
    v102[0] = off_E13E8;
    if (v141 == &v140)
    {
      (*(*v141 + 32))(v141);
    }

    else if (v141)
    {
      (*(*v141 + 40))();
    }

    v102[0] = off_E13C0;
    swift::Demangle::__runtime::NodeFactory::freeSlabs(v103);
    if (v105)
    {
      *(v105 + 48) = 0;
    }

    if ((v13 & 1) == 0)
    {
      goto LABEL_79;
    }

    v6 += 12;
    if (v56 == v6)
    {
      v4 = a1;
      goto LABEL_77;
    }
  }

  *(v5 + 16) = 1;
  *v5 = "unknown kind";
  *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
  v45 = v142;
  if (!v142)
  {
    return;
  }

LABEL_80:
  v143 = v45;
  operator delete(v45);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(unint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  v5 = *(a2 + 16);
  v6 = *v5;
  if (*v5 > 0x7FF)
  {
    LODWORD(v6) = 0;
  }

  if (v6 > 514)
  {
    if (v6 != 515 && v6 != 516)
    {
      return result;
    }

    return *(a1 + 2816) & v5[1];
  }

  if ((v6 - 512) < 3)
  {
    return *(a1 + 2816) & v5[1];
  }

  if (!v6)
  {
    v7 = *(a1 + 2816);
    result = v7 & v5[5];
    if (!result && a3 != 0)
    {
      while (1)
      {
        v10 = v5[1] & v7;
        if (!v10)
        {
          break;
        }

        swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v10, 0, &v11);
        v5 = v13;
        if (!v13 || (*v13 - 2048) >= 0xFFFFFFFFFFFFF801)
        {
          break;
        }

        *a2 = v11;
        *(a2 + 8) = v12;
        *(a2 + 16) = v5;
        v7 = *(a1 + 2816);
        result = v7 & v5[5];
        if (result)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

void *swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v17[1] = 0;
  v17[2] = 0;
  v18 = 0;
  v19 = 2400;
  v20 = 0;
  v21 = 0;
  v56 = 0;
  v17[0] = off_E13E8;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v54 = 0;
  v11 = *a2;
  v4 = *(a2 + 2);
  v12 = v4;
  v5 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(a1, &v11, v17, 50);
  if (v5)
  {
    if ((v6 = v5, (*v4 & 0x10) == 0) && (*v4 & 0x1F) != 3 || (Node = swift::Demangle::__runtime::NodeFactory::createNode(v17, 243), swift::Demangle::__runtime::Node::addChild(Node, v6, v17, v8, v9), (v6 = Node) != 0))
    {
      if (*(v6 + 8) == 243)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v13 = 0;
        operator new();
      }
    }
  }

  *a3 = 0;
  a3[56] = 0;
  v17[0] = off_E13E8;
  if (v56 == &v55)
  {
    (*(*v56 + 32))(v56);
  }

  else if (v56)
  {
    (*(*v56 + 40))();
  }

  v17[0] = off_E13C0;
  result = swift::Demangle::__runtime::NodeFactory::freeSlabs(v18);
  if (v20)
  {
    *(v20 + 48) = 0;
  }

  return result;
}

void swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getGenericSubst(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  GenericContext = swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGenericContext(*(a3 + 2));
  if (!GenericContext)
  {
    goto LABEL_23;
  }

  v11 = *(GenericContext + 4);
  v12 = *(a3 + 2);
  v13 = *v12 & 0x1F;
  if ((v13 - 17) < 2)
  {
    LODWORD(v14) = 0;
    LOBYTE(v15) = 2;
    goto LABEL_4;
  }

  if (v13 != 16)
  {
LABEL_23:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  if (v12)
  {
    v17 = *(a3 + 2);
  }

  else
  {
    v17 = 0;
  }

  if ((*v17 & 0x20000000) != 0)
  {
    v22 = *a3;
    v23 = v12;
    v19 = a5;
    v20 = GenericContext;
    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(a1, &v22, &v24);
    GenericContext = v20;
    a5 = v19;
    v15 = v25 >> 3;
    v14 = (v25 >> 3) & 0xFFFFFF00;
    if (!v26)
    {
      LOBYTE(v15) = 0;
      LODWORD(v14) = 0;
    }

    if (v26)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  if ((*v17 & 0x10000000) != 0)
  {
    v18 = 0;
    v14 = 24;
  }

  else
  {
    v18 = v17[7];
    v14 = 32;
  }

  LODWORD(v15) = v18 - *(v17 + v14);
  LODWORD(v14) = v15 & 0xFFFFFF00;
LABEL_4:
  if (*(GenericContext + 2))
  {
    v21 = *(a2 + 8);
    v16 = *a2 + 8 * (v14 | v15);
    if ((GenericContext[12] & 0x3F) == 0 && GenericContext[12] < 0)
    {
      if (v11)
      {
        v24 = 0;
        LOBYTE(v25) = 0;
        if ((*(**(a1 + 2800) + 96))(*(a1 + 2800), v16, v21, &v24, 8))
        {
          if (swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v24, v25, 0, a4))
          {
            operator new();
          }
        }
      }
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}

__n128 std::__function::__func<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1},std::allocator<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}>,void ()(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_E0EA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1},std::allocator<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}>,void ()(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *a2;
  v4 = *(a2 + 16);
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}::operator()((a1 + 8), &v3, a3);
}

void swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}::operator()(uint64_t *a1, __int128 *a2, void *a3)
{
  v6 = *a1;
  v21 = *a2;
  v22 = *(a2 + 2);
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readParentContextDescriptor(v6, &v21, v23);
  if (v26 == 1)
  {
    if (v23[0] != 1 || !v25)
    {
      goto LABEL_7;
    }

    v7 = a1[1];
    v21 = *__p;
    v22 = v25;
    v8 = *(v7 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      goto LABEL_27;
    }

    (*(*v8 + 48))(v8, &v21, a3);
    if (v26)
    {
LABEL_7:
      if ((v23[0] & 1) == 0 && SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  GenericContext = swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGenericContext(*(a2 + 2));
  if (GenericContext && (**(a2 + 2) & 0x1Fu) - 16 <= 2)
  {
    v10 = a1[2];
    v11 = *(GenericContext + 2) - *a3;
    v13 = *(v10 + 8);
    v12 = *(v10 + 16);
    if (v13 < v12)
    {
      *v13 = v11;
      v14 = (v13 + 1);
LABEL_24:
      *(v10 + 8) = v14;
      *a3 += *(*(a1[2] + 8) - 8);
      return;
    }

    v15 = *v10;
    v16 = v13 - *v10;
    v17 = v16 >> 3;
    v18 = (v16 >> 3) + 1;
    if (!(v18 >> 61))
    {
      v19 = v12 - v15;
      if (v19 >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 61))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      *(8 * v17) = v11;
      v14 = 8 * v17 + 8;
      memcpy(0, v15, v16);
      *v10 = 0;
      *(v10 + 8) = v14;
      *(v10 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }

      goto LABEL_24;
    }

LABEL_27:
    std::string::__throw_length_error[abi:nn200100]();
  }
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[2];
  if (v5)
  {
    result = a2[2];
  }

  else
  {
    result = 0;
  }

  v7 = result;
  v8 = *result;
  if ((*result & 0x20000000) == 0)
  {
    LODWORD(v9) = 0;
    v10 = 1;
    LODWORD(v11) = 7;
    v12 = 3;
    goto LABEL_6;
  }

  v19 = *a2;
  v20 = *(a2 + 8);
  if (result)
  {
    v21 = result;
  }

  else
  {
    v21 = 0;
  }

  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(v21);
  ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(v21);
  if (!v24)
  {
    v25 = 0;
    if (v21)
    {
      goto LABEL_21;
    }

LABEL_23:
    v26 = 0;
    goto LABEL_24;
  }

  v25 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v24 - 2);
  if (!v21)
  {
    goto LABEL_23;
  }

LABEL_21:
  v26 = v21;
LABEL_24:
  if ((*v26 & 0x80) != 0)
  {
    if (v21)
    {
      v28 = v21;
    }

    else
    {
      v28 = 0;
    }

    v27 = (*(v28 + 29) >> 2) & 1;
  }

  else
  {
    v27 = 0;
  }

  v29 = TrailingObjectsImpl + 12 * v25 + 4 * v27;
  result = swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericValueDescriptor>(v21);
  v30 = (v29 + 4 * result);
  if (v5)
  {
    v31 = v5;
  }

  else
  {
    v31 = 0;
  }

  v32 = *v30;
  v33 = v30 + v19 - v31 + v32;
  if (v32)
  {
    v34 = v33 == 0;
  }

  else
  {
    v34 = 1;
  }

  if (v34 || (v35 = (*v7 >> 25) & 7, v36 = a1, result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::forTypeReference<swift::TargetClassMetadataBounds<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetMetadata<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteAddress)#1}>(a1, v35, v33, v20, &v36, &v37), v10 = v38, (v38 & 1) == 0))
  {
    v10 = 0;
    *a3 = 0;
    goto LABEL_40;
  }

  v12 = v37;
  v11 = HIDWORD(v37);
  LODWORD(v9) = v37 >> 8;
  v8 = *v7;
LABEL_6:
  v13 = v7[8];
  v14 = v13 + v11;
  v15 = (v12 | (v9 << 8)) + v13;
  v16 = (v8 & 0x10000000) == 0;
  if ((v8 & 0x10000000) != 0)
  {
    v17 = v11;
  }

  else
  {
    v17 = v14;
  }

  if (v16)
  {
    v9 = v9;
  }

  else
  {
    v12 = v15;
    v9 = v15 >> 8;
  }

  if (v16)
  {
    v18 = 8 * v11;
  }

  else
  {
    v18 = -8 * v15;
  }

  *a3 = v12 | (v9 << 8) | (v17 << 32);
  *(a3 + 8) = v18;
LABEL_40:
  *(a3 + 16) = v10;
  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::forTypeReference<swift::TargetClassMetadataBounds<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetMetadata<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteAddress)#1}>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      *&v23 = 0;
      BYTE8(v23) = 0;
      v12 = result;
      result = (*(**(result + 2800) + 96))(*(result + 2800), a3, a4, &v23, 8);
      if (result)
      {
        result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(v12, v23, *(&v23 + 1), &v25);
        if (v26)
        {
          if ((*v26 - 1) > 0x7FE)
          {
            v13 = v26[9];
            v14 = v26[8] - v13;
            v15 = v13 >> 3;
            v16 = v13 >= 0x18;
            v17 = 3;
            if (v16)
            {
              v17 = v15;
            }

            v18 = 7;
            if (((v14 >> 3) & 0xFFFFFFF8) != 0)
            {
              v18 = (v14 >> 3);
            }

            *a6 = v17 | (v18 << 32);
            goto LABEL_26;
          }
        }
      }
    }

    goto LABEL_22;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_22;
    }

    v8 = a5;
    v9 = result;
    result = (*(**(result + 2800) + 32))(*(result + 2800), a3, a4, &v25, 8);
    if (!result)
    {
      goto LABEL_22;
    }

    v10 = 0;
    result = v9;
    v11 = *(v9 + 2816) & v25;
  }

  else
  {
    v11 = a3;
    v8 = a5;
    v10 = a4;
  }

  result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(result, v11, v10 | a4 & 0xFFFFFFFFFFFFFF00, &v23);
  if (!v24 || (v19 = *v24, (*v24 & 0x1F) != 0x10))
  {
LABEL_22:
    *a6 = 0;
    *(a6 + 16) = 0;
    return result;
  }

  if ((v19 & 0x20000000) != 0)
  {
    v22 = *v8;
    v25 = v23;
    v26 = v24;
    return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(v22, &v25);
  }

  v20 = *(v24 + 3);
  if ((v19 & 0x10000000) != 0)
  {
    v21 = -v24[6];
  }

  else
  {
    v21 = HIDWORD(v20) - v24[8];
  }

  v14 = 8 * v21;
  *a6 = v20;
LABEL_26:
  *(a6 + 8) = v14;
  *(a6 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_ownsObject::$_0>(swift_reflection_ownsObject::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(*a2, ****a1, 0, v4);
  if (v5 == 1)
  {
    return swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::ownsAddress(v2, v4[0], v4[1], 1);
  }

  else
  {
    return 1;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_ownsObject::$_0>(swift_reflection_ownsObject::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(*a2, ****a1, 0, v4);
  if (v5 == 1)
  {
    return swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::ownsAddress(v2, v4[0], v4[1], 1);
  }

  else
  {
    return 1;
  }
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getTaggedPointerEncoding(a1) != 2 || ((*(a1 + 264) ^ a2) & *(a1 + 184)) == 0)
  {
    result = (*(**(a1 + 2800) + 32))(*(a1 + 2800), a2, a3, &v15, 8);
    if ((result & 1) == 0)
    {
LABEL_9:
      *a4 = 0;
      a4[16] = 0;
      return result;
    }

    result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getIsaEncoding(a1);
    if (result > 2)
    {
      if (result == 3)
      {
        v9 = *(a1 + 2816) & v15 & *(a1 + 104);
        goto LABEL_20;
      }

      if (result == 4)
      {
        v9 = v15;
        if ((*(a1 + 120) & v15) == *(a1 + 128))
        {
          v10 = (*(a1 + 104) & v15) >> *(a1 + 112);
          if (!v10)
          {
            goto LABEL_9;
          }

          if (v10 >= *(a1 + 168))
          {
            *&v14 = 0;
            result = (*(**(a1 + 2800) + 32))(*(a1 + 2800), *(a1 + 152), *(a1 + 160), &v14, 8);
            if (!result)
            {
              goto LABEL_9;
            }

            v13 = v14;
            *(a1 + 168) = v14;
            if (v10 >= v13)
            {
              goto LABEL_9;
            }
          }

          v11 = *(a1 + 136) + 8 * v10;
          v12 = *(a1 + 144);
          *&v14 = 0;
          BYTE8(v14) = 0;
          result = (*(**(a1 + 2800) + 96))(*(a1 + 2800), v11, v12, &v14, 8);
          if ((result & 1) == 0)
          {
            goto LABEL_9;
          }

          *a4 = v14;
LABEL_21:
          a4[16] = 1;
          return result;
        }

LABEL_20:
        *a4 = v9;
        a4[8] = 0;
        goto LABEL_21;
      }
    }

    else
    {
      if (result < 2)
      {
        goto LABEL_9;
      }

      if (result == 2)
      {
        v9 = *(a1 + 2816) & v15;
        goto LABEL_20;
      }
    }

    __break(1u);
    return result;
  }

  return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromTaggedPointer(a1, a2, a4);
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::ownsAddress(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = a1[359];
  v6 = a1[360];
  if (v5 != v6)
  {
    v7 = v5 + 2;
    do
    {
      v8 = v7 - 2;
      v9 = *(v7 - 8) != a3 || *(v7 - 2) > a2;
      if (!v9 && a2 < *v7)
      {
        return 1;
      }

      v7 += 4;
    }

    while (v8 + 4 != v6);
  }

  v10 = a1[362];
  v11 = a1[363];
  if (v10 != v11)
  {
    v12 = v10 + 2;
    do
    {
      v13 = v12 - 2;
      v14 = *(v12 - 8) != a3 || *(v12 - 2) > a2;
      if (!v14 && a2 < *v12)
      {
        return 1;
      }

      v12 += 4;
    }

    while (v13 + 4 != v11);
  }

  if (a4)
  {
    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, v23);
    if (v23[2])
    {
      AddressOfNominalTypeDescriptor = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(a1, v23, 1);
      if (AddressOfNominalTypeDescriptor)
      {
        v18 = a1[359];
        v19 = a1[360];
        if (v18 != v19)
        {
          for (i = v18 + 2; ; i += 4)
          {
            v21 = i - 2;
            v22 = *(i - 8) != v17 || *(i - 2) > AddressOfNominalTypeDescriptor;
            if (!v22 && AddressOfNominalTypeDescriptor < *i)
            {
              break;
            }

            if (v21 + 4 == v19)
            {
              return 0;
            }
          }

          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromTaggedPointer@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 224);
  if (v5 && (v5 & ~(*(a1 + 264) ^ a2)) == 0)
  {
    v6 = *(a1 + 256);
    v7 = *(a1 + 248) + 8 * ((a2 >> *(a1 + 232)) & *(a1 + 240));
    v14 = 0;
    v15 = 0;
    result = (*(**(a1 + 2800) + 96))(*(a1 + 2800), v7, v6, &v14, 8);
    if ((result & 1) == 0)
    {
      *a3 = 0;
      a3[16] = 0;
      return result;
    }

    goto LABEL_6;
  }

  v9 = *(a1 + 216);
  v10 = *(a1 + 208) + 8 * ((a2 >> *(a1 + 192)) & *(a1 + 200));
  v14 = 0;
  v15 = 0;
  result = (*(**(a1 + 2800) + 96))(*(a1 + 2800), v10, v9, &v14, 8);
  if (result)
  {
LABEL_6:
    v11 = v14;
    v12 = v15;
    if (!v15)
    {
      v11 = *(a1 + 2816) & v14;
    }

    *a3 = v11;
    a3[8] = v12;
    v13 = 1;
    goto LABEL_10;
  }

  v13 = 0;
  *a3 = 0;
LABEL_10:
  a3[16] = v13;
  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getTaggedPointerEncoding(uint64_t a1)
{
  result = *(a1 + 176);
  if (!result)
  {
    v3 = *(a1 + 2800);
    operator new();
  }

  return result;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::ownsAddress(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = a1[359];
  v6 = a1[360];
  if (v5 != v6)
  {
    v7 = v5 + 2;
    do
    {
      v8 = v7 - 2;
      v9 = *(v7 - 8) != a3 || *(v7 - 2) > a2;
      if (!v9 && a2 < *v7)
      {
        return 1;
      }

      v7 += 4;
    }

    while (v8 + 4 != v6);
  }

  v10 = a1[362];
  v11 = a1[363];
  if (v10 != v11)
  {
    v12 = v10 + 2;
    do
    {
      v13 = v12 - 2;
      v14 = *(v12 - 8) != a3 || *(v12 - 2) > a2;
      if (!v14 && a2 < *v12)
      {
        return 1;
      }

      v12 += 4;
    }

    while (v13 + 4 != v11);
  }

  if (a4)
  {
    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, v23);
    if (v23[2])
    {
      AddressOfNominalTypeDescriptor = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(a1, v23, 1);
      if (AddressOfNominalTypeDescriptor)
      {
        v18 = a1[359];
        v19 = a1[360];
        if (v18 != v19)
        {
          for (i = v18 + 2; ; i += 4)
          {
            v21 = i - 2;
            v22 = *(i - 8) != v17 || *(i - 2) > AddressOfNominalTypeDescriptor;
            if (!v22 && AddressOfNominalTypeDescriptor < *i)
            {
              break;
            }

            if (v21 + 4 == v19)
            {
              return 0;
            }
          }

          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_ownsAddressStrict::$_0>(swift_reflection_ownsAddressStrict::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = ****a1;
  v4 = *(*a2 + 2872);
  v5 = *(*a2 + 2880);
  if (v4 == v5)
  {
LABEL_10:
    v10 = *(v2 + 2896);
    v11 = *(v2 + 2904);
    if (v10 == v11)
    {
      return 0;
    }

    else
    {
      for (i = v10 + 2; ; i += 4)
      {
        v13 = i - 2;
        v14 = *(i - 8) || *(i - 2) > v3;
        if (!v14 && v3 < *i)
        {
          break;
        }

        if (v13 + 4 == v11)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else
  {
    v6 = v4 + 2;
    while (1)
    {
      v7 = v6 - 2;
      v8 = *(v6 - 8) || *(v6 - 2) > v3;
      if (!v8 && v3 < *v6)
      {
        return 1;
      }

      v6 += 4;
      if (v7 + 4 == v5)
      {
        goto LABEL_10;
      }
    }
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_ownsAddressStrict::$_0>(swift_reflection_ownsAddressStrict::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = ****a1;
  v4 = *(*a2 + 2872);
  v5 = *(*a2 + 2880);
  if (v4 == v5)
  {
LABEL_10:
    v10 = *(v2 + 2896);
    v11 = *(v2 + 2904);
    if (v10 == v11)
    {
      return 0;
    }

    else
    {
      for (i = v10 + 2; ; i += 4)
      {
        v13 = i - 2;
        v14 = *(i - 8) || *(i - 2) > v3;
        if (!v14 && v3 < *i)
        {
          break;
        }

        if (v13 + 4 == v11)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else
  {
    v6 = v4 + 2;
    while (1)
    {
      v7 = v6 - 2;
      v8 = *(v6 - 8) || *(v6 - 2) > v3;
      if (!v8 && v3 < *v6)
      {
        return 1;
      }

      v6 += 4;
      if (v7 + 4 == v5)
      {
        goto LABEL_10;
      }
    }
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long SwiftReflectionContext::withContext<unsigned long,swift_reflection_metadataForObject::$_0>(swift_reflection_metadataForObject::$_0 const&)::{lambda(unsigned long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(*a2, ****a1, 0, &v3);
  if (v4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long SwiftReflectionContext::withContext<unsigned long,swift_reflection_metadataForObject::$_0>(swift_reflection_metadataForObject::$_0 const&)::{lambda(unsigned long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(*a2, ****a1, 0, &v3);
  if (v4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_metadataNominalTypeDescriptor::$_0>(swift_reflection_metadataNominalTypeDescriptor::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, unint64_t *a2)
{
  v2 = *a2;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(*a2, ****a1, 0, v4);
  if (v4[2])
  {
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(v2, v4, 1);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_metadataNominalTypeDescriptor::$_0>(swift_reflection_metadataNominalTypeDescriptor::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, unint64_t *a2)
{
  v2 = *a2;
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(*a2, ****a1, 0, v4);
  if (v4[2])
  {
    return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(v2, v4, 1);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::metadataIsActor(unint64_t a1, unint64_t a2, uint64_t a3)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v18);
  if (!v19)
  {
    return 0;
  }

  if ((*v19 - 2048) > 0xFFFFFFFFFFFFF800)
  {
    return 0;
  }

  if ((swift_reflection_classIsSwiftMask & v19[4]) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 2816) & v19[8];
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 2872);
  v6 = *(a1 + 2880);
  if (v5 == v6)
  {
    return 0;
  }

  for (i = v5 + 2; ; i += 4)
  {
    v8 = i - 2;
    v9 = *(i - 8) || *(i - 2) > v4;
    if (!v9 && v4 < *i)
    {
      break;
    }

    if (v8 + 4 == v6)
    {
      return 0;
    }
  }

  (*(**(a1 + 2800) + 24))(&v15);
  v10 = v15;
  if (v15)
  {
    v11 = *v15;
    v15 = 0;
    v20 = v10;
    if (!v17)
    {
      v14 = std::__throw_bad_function_call[abi:nn200100]();
      return swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::metadataIsActor(v14);
    }

    v12 = (v11 >> 23) & 1;
    (*(*v17 + 48))(v17, &v20);
  }

  else
  {
    v12 = 0;
  }

  if (v17 == &v16)
  {
    (*(*v17 + 32))(v17);
  }

  else if (v17)
  {
    (*(*v17 + 40))();
  }

  return v12;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::metadataIsActor(unint64_t a1, unint64_t a2, uint64_t a3)
{
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v18);
  if (!v19)
  {
    return 0;
  }

  if ((*v19 - 2048) > 0xFFFFFFFFFFFFF800)
  {
    return 0;
  }

  v4 = *(a1 + 2816) & v19[5];
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 2872);
  v6 = *(a1 + 2880);
  if (v5 == v6)
  {
    return 0;
  }

  for (i = v5 + 2; ; i += 4)
  {
    v8 = i - 2;
    v9 = *(i - 8) || *(i - 2) > v4;
    if (!v9 && v4 < *i)
    {
      break;
    }

    if (v8 + 4 == v6)
    {
      return 0;
    }
  }

  (*(**(a1 + 2800) + 24))(&v15);
  v10 = v15;
  if (v15)
  {
    v11 = *v15;
    v15 = 0;
    v20 = v10;
    if (!v17)
    {
      v14 = std::__throw_bad_function_call[abi:nn200100]();
      return std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_typeRefForInstance::$_0>(swift_reflection_typeRefForInstance::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(v14);
    }

    v12 = (v11 >> 23) & 1;
    (*(*v17 + 48))(v17, &v20);
  }

  else
  {
    v12 = 0;
  }

  if (v17 == &v16)
  {
    (*(*v17 + 32))(v17);
  }

  else if (v17)
  {
    (*(*v17 + 40))();
  }

  return v12;
}

char *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_typeRefForInstance::$_0>(swift_reflection_typeRefForInstance::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(*a2, ****a1, 0, v4);
  result = 0;
  if (v5 == 1)
  {
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(v2, v4[0], v4[1], 0, 50);
  }

  return result;
}

char *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_typeRefForInstance::$_0>(swift_reflection_typeRefForInstance::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(*a2, ****a1, 0, v4);
  result = 0;
  if (v5 == 1)
  {
    return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(v2, v4[0], v4[1], 0, 50);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_typeRefForMangledTypeName::$_0>(swift_reflection_typeRefForMangledTypeName::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(_WORD *****a1, uint64_t *a2)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMangledName(*a2, ****a1, *(**a1)[1], v3);
  if (v4 == 1)
  {
    (v3[1])(v3[0], 3, 0);
  }

  else if (!v4)
  {
    return v3[0];
  }

  return 0;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_typeRefForMangledTypeName::$_0>(swift_reflection_typeRefForMangledTypeName::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(_WORD *****a1, uint64_t *a2)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMangledName(*a2, ****a1, *(**a1)[1], v3);
  if (v4 == 1)
  {
    (v3[1])(v3[0], 3, 0);
  }

  else if (!v4)
  {
    return v3[0];
  }

  return 0;
}

void *swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMangledName@<X0>(uint64_t a1@<X0>, _WORD *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v11[1] = 0;
  v11[2] = 0;
  v12 = 0;
  v13 = 2400;
  v14 = 0;
  v15 = 0;
  v50 = 0;
  v11[0] = off_E13E8;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v48 = 0;
  v10 = 0;
  v7 = swift::Demangle::__runtime::Demangler::demangleSymbol(v11, a2, a3, v9);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))();
  }

  v51 = a1 + 328;
  swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v51, v7, 0, 0, v6, a4);
  v11[0] = off_E13E8;
  if (v50 == &v49)
  {
    (*(*v50 + 32))(v50);
  }

  else if (v50)
  {
    (*(*v50 + 40))();
  }

  v11[0] = off_E13C0;
  result = swift::Demangle::__runtime::NodeFactory::freeSlabs(v12);
  if (v14)
  {
    *(v14 + 48) = 0;
  }

  return result;
}

char *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char * SwiftReflectionContext::withContext<char *,swift_reflection_copyDemangledNameForProtocolDescriptor::$_0>(swift_reflection_copyDemangledNameForProtocolDescriptor::$_0 const&)::{lambda(char *&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v19[1] = 0;
  v19[2] = 0;
  v20 = 0;
  v21 = 2400;
  v22 = 0;
  v23 = 0;
  v58 = 0;
  v19[0] = off_E13E8;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v56 = 0;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(v3, **v2, 0, &__s1);
  v5 = v60;
  if (v60)
  {
    *v14 = __s1;
    *&v14[16] = v60;
    v6 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(v3, v14, v19, 50);
    if (v6 && ((*v5 & 0x10) != 0 || (*v5 & 0x1F) == 3))
    {
      v7 = v6;
      Node = swift::Demangle::__runtime::NodeFactory::createNode(v19, 243);
      swift::Demangle::__runtime::Node::addChild(Node, v7, v19, v9, v10);
      v6 = Node;
    }
  }

  else
  {
    v6 = 0;
  }

  v14[0] = 0;
  *&v14[1] = 0x101010101010101;
  v14[9] = 1;
  *&v14[10] = 0x101010100000000;
  v14[18] = 1;
  *&v14[19] = 256;
  v14[21] = 1;
  v15 = 0;
  v16 = 0;
  v17[0] = off_E0BC8;
  v17[1] = swift::Demangle::__runtime::genericParameterName;
  v18 = v17;
  swift::Demangle::__runtime::nodeToString(v6, v14, v4, &__s1);
  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
LABEL_11:
      v11 = strdup(&__s1);
      goto LABEL_14;
    }
  }

  else
  {
    if (v18)
    {
      (*(*v18 + 40))();
    }

    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  v12 = __s1;
  v11 = strdup(__s1);
  operator delete(v12);
LABEL_14:
  v19[0] = off_E13E8;
  if (v58 == &v57)
  {
    (*(*v58 + 32))(v58);
  }

  else if (v58)
  {
    (*(*v58 + 40))();
  }

  v19[0] = off_E13C0;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v20);
  if (v22)
  {
    *(v22 + 48) = 0;
  }

  return v11;
}

char *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char * SwiftReflectionContext::withContext<char *,swift_reflection_copyDemangledNameForProtocolDescriptor::$_0>(swift_reflection_copyDemangledNameForProtocolDescriptor::$_0 const&)::{lambda(char *&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v19[1] = 0;
  v19[2] = 0;
  v20 = 0;
  v21 = 2400;
  v22 = 0;
  v23 = 0;
  v58 = 0;
  v19[0] = off_E13E8;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v56 = 0;
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(v3, **v2, 0, &__s1);
  v5 = v60;
  if (v60)
  {
    *v14 = __s1;
    *&v14[16] = v60;
    v6 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(v3, v14, v19, 50);
    if (v6 && ((*v5 & 0x10) != 0 || (*v5 & 0x1F) == 3))
    {
      v7 = v6;
      Node = swift::Demangle::__runtime::NodeFactory::createNode(v19, 243);
      swift::Demangle::__runtime::Node::addChild(Node, v7, v19, v9, v10);
      v6 = Node;
    }
  }

  else
  {
    v6 = 0;
  }

  v14[0] = 0;
  *&v14[1] = 0x101010101010101;
  v14[9] = 1;
  *&v14[10] = 0x101010100000000;
  v14[18] = 1;
  *&v14[19] = 256;
  v14[21] = 1;
  v15 = 0;
  v16 = 0;
  v17[0] = off_E0BC8;
  v17[1] = swift::Demangle::__runtime::genericParameterName;
  v18 = v17;
  swift::Demangle::__runtime::nodeToString(v6, v14, v4, &__s1);
  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
LABEL_11:
      v11 = strdup(&__s1);
      goto LABEL_14;
    }
  }

  else
  {
    if (v18)
    {
      (*(*v18 + 40))();
    }

    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  v12 = __s1;
  v11 = strdup(__s1);
  operator delete(v12);
LABEL_14:
  v19[0] = off_E13E8;
  if (v58 == &v57)
  {
    (*(*v58 + 32))(v58);
  }

  else if (v58)
  {
    (*(*v58 + 40))();
  }

  v19[0] = off_E13C0;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v20);
  if (v22)
  {
    *(v22 + 48) = 0;
  }

  return v11;
}

double std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_typeinfo SwiftReflectionContext::withContext<swift_typeinfo,swift_reflection_infoForTypeRef::$_0>(swift_reflection_infoForTypeRef::$_0 const&)::{lambda(swift_typeinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<D0>(swift::reflection::TypeRefBuilder ******a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = ****a1;
  if (v4 && (TypeInfo = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, v4, 0)) != 0)
  {
    v7 = *(TypeInfo + 2);
    if (v7 == 4 || v7 == 1)
    {
      v9 = -1431655765 * ((TypeInfo[6] - TypeInfo[5]) >> 4);
    }

    else
    {
      v9 = 0;
    }

    v10 = TypeInfo;
    *a3 = getTypeInfoKind(TypeInfo);
    result = *(v10 + 12);
    *(a3 + 4) = result;
    *(a3 + 12) = *(v10 + 5);
    *(a3 + 16) = v9;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_typeinfo SwiftReflectionContext::withContext<swift_typeinfo,swift_reflection_infoForTypeRef::$_0>(swift_reflection_infoForTypeRef::$_0 const&)::{lambda(swift_typeinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<D0>(swift::reflection::TypeRefBuilder ******a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = ****a1;
  if (v4 && (TypeInfo = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, v4, 0)) != 0)
  {
    v7 = *(TypeInfo + 2);
    if (v7 == 4 || v7 == 1)
    {
      v9 = -1431655765 * ((TypeInfo[6] - TypeInfo[5]) >> 4);
    }

    else
    {
      v9 = 0;
    }

    v10 = TypeInfo;
    *a3 = getTypeInfoKind(TypeInfo);
    result = *(v10 + 12);
    *(a3 + 4) = result;
    *(a3 + 12) = *(v10 + 5);
    *(a3 + 16) = v9;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_childinfo SwiftReflectionContext::withContext<swift_childinfo,swift_reflection_childOfTypeRef::$_0>(swift_reflection_childOfTypeRef::$_0 const&)::{lambda(swift_childinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **result;
  if (**v4 && (result = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, **v4, 0)) != 0)
  {
    v5 = *(result + 8);
    if (v5 == 1 || v5 == 4)
    {
      v7 = *(result + 40) + 48 * **(v4 + 8);
      v8 = v7;
      if (*(v7 + 23) < 0)
      {
        v8 = *v7;
      }

      *a3 = v8;
      *(a3 + 8) = *(v7 + 24);
      result = getTypeInfoKind(*(v7 + 40));
      *(a3 + 12) = result;
      *(a3 + 16) = *(v7 + 32);
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = "unknown TypeInfo kind";
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_childinfo SwiftReflectionContext::withContext<swift_childinfo,swift_reflection_childOfTypeRef::$_0>(swift_reflection_childOfTypeRef::$_0 const&)::{lambda(swift_childinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **result;
  if (**v4 && (result = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, **v4, 0)) != 0)
  {
    v5 = *(result + 8);
    if (v5 == 1 || v5 == 4)
    {
      v7 = *(result + 40) + 48 * **(v4 + 8);
      v8 = v7;
      if (*(v7 + 23) < 0)
      {
        v8 = *v7;
      }

      *a3 = v8;
      *(a3 + 8) = *(v7 + 24);
      result = getTypeInfoKind(*(v7 + 40));
      *(a3 + 12) = result;
      *(a3 + 16) = *(v7 + 32);
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = "unknown TypeInfo kind";
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_typeinfo SwiftReflectionContext::withContext<swift_typeinfo,swift_reflection_infoForMetadata::$_0>(swift_reflection_infoForMetadata::$_0 const&)::{lambda(swift_typeinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<D0>(unint64_t ****a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  MetadataTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(*a2, ****a1, 0, 0);
  if (MetadataTypeInfo)
  {
    v6 = *(MetadataTypeInfo + 8);
    if (v6 == 4 || v6 == 1)
    {
      v8 = -1431655765 * ((*(MetadataTypeInfo + 48) - *(MetadataTypeInfo + 40)) >> 4);
    }

    else
    {
      v8 = 0;
    }

    v9 = MetadataTypeInfo;
    *a3 = getTypeInfoKind(MetadataTypeInfo);
    result = *(v9 + 12);
    *(a3 + 4) = result;
    *(a3 + 12) = *(v9 + 20);
    *(a3 + 16) = v8;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_typeinfo SwiftReflectionContext::withContext<swift_typeinfo,swift_reflection_infoForMetadata::$_0>(swift_reflection_infoForMetadata::$_0 const&)::{lambda(swift_typeinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<D0>(unint64_t ****a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  MetadataTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(*a2, ****a1, 0, 0);
  if (MetadataTypeInfo)
  {
    v6 = *(MetadataTypeInfo + 8);
    if (v6 == 4 || v6 == 1)
    {
      v8 = -1431655765 * ((*(MetadataTypeInfo + 48) - *(MetadataTypeInfo + 40)) >> 4);
    }

    else
    {
      v8 = 0;
    }

    v9 = MetadataTypeInfo;
    *a3 = getTypeInfoKind(MetadataTypeInfo);
    result = *(v9 + 12);
    *(a3 + 4) = result;
    *(a3 + 12) = *(v9 + 20);
    *(a3 + 16) = v8;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = (*(*a4 + 24))(a4);
  }

  else
  {
    v8 = 0;
  }

  *&v20 = a2;
  *(&v20 + 1) = a3;
  v21 = v8;
  v22 = 0;
  if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,void *>>((a1 + 2824), &v20, &v22) && v22 != (*(a1 + 2824) + 32 * *(a1 + 2840)))
  {
    return v22[3];
  }

  TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, a2, a3, 0, 50);
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v20);
  if (!v21)
  {
    goto LABEL_21;
  }

  v9 = 0;
  v12 = *v21 < 0x800uLL && *v21 != 0;
  if (TypeFromMetadata && !v12)
  {
    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v20);
    if (v21)
    {
      if ((*v21 - 2048) <= 0xFFFFFFFFFFFFF800)
      {
        ObjCRODataPtr = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCRODataPtr(a1, a2, a3);
        if (ObjCRODataPtr)
        {
          LODWORD(v22) = 0;
          if ((*(**(a1 + 2800) + 32))(*(a1 + 2800), ObjCRODataPtr + 4, v14, &v22, 4))
          {
            swift::reflection::TypeConverter::getClassInstanceTypeInfo((a1 + 976), TypeFromMetadata, v22, a4);
            v9 = v15;
            goto LABEL_22;
          }
        }
      }
    }

LABEL_21:
    v9 = 0;
  }

LABEL_22:
  *&v20 = a2;
  *(&v20 + 1) = a3;
  v21 = v8;
  v22 = 0;
  v16 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,void *>>((a1 + 2824), &v20, &v22);
  v17 = v22;
  if ((v16 & 1) == 0)
  {
    v17 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,void *>>((a1 + 2824), &v20, &v20, v22);
    v18 = BYTE8(v20);
    *v17 = v20;
    *(v17 + 8) = v18;
    v17[2] = v21;
    v17[3] = 0;
  }

  v17[3] = v9;
  return v9;
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,void *>>(uint64_t *a1, __int128 *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v15 = 0;
    result = 0;
    goto LABEL_27;
  }

  v5 = *a1;
  v24 = *a2;
  v7 = __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(&v24, &v24 + 8);
  v8 = 0;
  v9 = *(a2 + 2);
  v10 = ((v9 >> 4) ^ (v9 >> 9) | (v7 << 32)) + ~(((v9 >> 4) ^ (v9 >> 9)) << 32);
  v11 = (v10 ^ (v10 >> 22)) + ~((v10 ^ (v10 >> 22)) << 13);
  v12 = (9 * (v11 ^ (v11 >> 8))) ^ ((9 * (v11 ^ (v11 >> 8))) >> 15);
  v13 = (v4 - 1) & (((v12 + ~(v12 << 27)) >> 31) ^ (v12 + ~(v12 << 27)));
  for (i = 1; ; ++i)
  {
    v15 = (v5 + 32 * v13);
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *a2 == *v15 && *(a2 + 8) == v17;
    if (v18 && v9 == v15[2])
    {
      result = 1;
      goto LABEL_27;
    }

    if (v16 == -1 && v17 == 0)
    {
      break;
    }

    if (v16 != -2 || v17 != 0)
    {
      goto LABEL_20;
    }

    v21 = v15[2] == -8192;
LABEL_22:
    if (v21 && v8 == 0)
    {
      v8 = (v5 + 32 * v13);
    }

    v22 = v13 + i;
    v13 = v22 & (v4 - 1);
  }

  if (v15[2] != -4096)
  {
LABEL_20:
    v21 = 0;
    goto LABEL_22;
  }

  result = 0;
  if (v8)
  {
    v15 = v8;
  }

LABEL_27:
  *a3 = v15;
  return result;
}

uint64_t *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,void *>>(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v5 *= 2;
  }

  else if (v5 + ~v4 - *(a1 + 3) > v5 >> 3)
  {
    goto LABEL_3;
  }

  v8 = a1;
  __swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::grow(a1, v5);
  v10 = 0;
  __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,void *>>(v8, a3, &v10);
  a1 = v8;
  a4 = v10;
LABEL_3:
  ++*(a1 + 2);
  if (*a4 == -1)
  {
    v6 = *(a4 + 8) == 0;
    *(a4 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || a4[2] != -4096)
  {
    --*(a1 + 3);
  }

  return a4;
}

void __swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = __swift::__runtime::llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = &buffer[32 * v10];
      do
      {
        *buffer = -1;
        buffer[8] = 0;
        *(buffer + 2) = -4096;
        buffer += 32;
      }

      while (buffer != v11);
    }

    v12 = (32 * v3);
    if (v3)
    {
      v13 = 32 * v3;
      v14 = v4;
      while (1)
      {
        v17 = *(v14 + 8);
        if (*v14 == -1)
        {
          v18 = v17 == 0;
          *(v14 + 8);
        }

        else
        {
          v18 = 0;
        }

        if (!v18)
        {
          break;
        }

        if (*(v14 + 2) != -4096)
        {
          goto LABEL_11;
        }

LABEL_12:
        v14 = (v14 + 32);
        v13 -= 32;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      if (*v14 == -2)
      {
        v19 = v17 == 0;
        *(v14 + 8);
      }

      else
      {
        v19 = 0;
      }

      if (v19 && *(v14 + 2) == -8192)
      {
        goto LABEL_12;
      }

LABEL_11:
      v22 = 0;
      __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,void *>>(a1, v14, &v22);
      v15 = v22;
      v16 = *v14;
      *(v22 + 8) = *(v14 + 8);
      *v15 = v16;
      v15[2] = *(v14 + 2);
      v15[3] = *(v14 + 3);
      ++*(a1 + 8);
      goto LABEL_12;
    }

LABEL_24:
    __swift::__runtime::llvm::deallocate_buffer(v4, v12, 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = &buffer[32 * v20];
      do
      {
        *buffer = -1;
        buffer[8] = 0;
        *(buffer + 2) = -4096;
        buffer += 32;
      }

      while (buffer != v21);
    }
  }
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = (*(*a4 + 24))(a4);
  }

  else
  {
    v8 = 0;
  }

  *&v19 = a2;
  *(&v19 + 1) = a3;
  v20 = v8;
  v21 = 0;
  if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,void *>>((a1 + 2824), &v19, &v21) && v21 != (*(a1 + 2824) + 32 * *(a1 + 2840)))
  {
    return v21[3];
  }

  TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, a2, a3, 0, 50);
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v19);
  if (!v20)
  {
LABEL_17:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v12 = *v20 < 0x800uLL && *v20 != 0;
  if (TypeFromMetadata && !v12)
  {
    InstanceStartFromClassMetadata = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readInstanceStartFromClassMetadata(a1, a2, a3);
    if ((InstanceStartFromClassMetadata & 0x100000000) != 0)
    {
      swift::reflection::TypeConverter::getClassInstanceTypeInfo((a1 + 976), TypeFromMetadata, InstanceStartFromClassMetadata, a4);
      v9 = v14;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_19:
  *&v19 = a2;
  *(&v19 + 1) = a3;
  v20 = v8;
  v21 = 0;
  v15 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,void *>>((a1 + 2824), &v19, &v21);
  v16 = v21;
  if ((v15 & 1) == 0)
  {
    v16 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,void *>>((a1 + 2824), &v19, &v19, v21);
    v17 = BYTE8(v19);
    *v16 = v19;
    *(v16 + 8) = v17;
    v16[2] = v20;
    v16[3] = 0;
  }

  v16[3] = v9;
  return v9;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readInstanceStartFromClassMetadata(unint64_t a1, unint64_t a2, uint64_t a3)
{
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v14);
  v4 = v16;
  if (!v16)
  {
    goto LABEL_9;
  }

  if ((*v16 - 2048) > 0xFFFFFFFFFFFFF800)
  {
LABEL_8:
    v4 = 0;
LABEL_9:
    v9 = 0;
    v8 = 0;
    return v9 | v4 | v8;
  }

  v5 = v16[1];
  v6 = *(a1 + 2816);
  for (i = 16; (v6 & v5) != 0; v6 = *(a1 + 2816))
  {
    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v5 & v6, 0, &v11);
    v14 = v11;
    v15 = v12;
    v4 = v13;
    v16 = v13;
    if (!v13)
    {
      goto LABEL_9;
    }

    if ((*v13 - 2048) > 0xFFFFFFFFFFFFF800)
    {
      goto LABEL_8;
    }

    i = i + *(v13 + 24) - 16;
    v5 = *(v13 + 8);
  }

  v8 = i & 0xFFFFFF00;
  v9 = i;
  v4 = 0x100000000;
  return v9 | v4 | v8;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_childinfo SwiftReflectionContext::withContext<swift_childinfo,swift_reflection_childOfMetadata::$_0>(swift_reflection_childOfMetadata::$_0 const&)::{lambda(swift_childinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<X0>(uint64_t **a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  result = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(*a2, **v4, 0, 0);
  if (result)
  {
    v6 = *(result + 8);
    if (v6 == 1 || v6 == 4)
    {
      v8 = *(result + 40) + 48 * **(v4 + 8);
      v9 = v8;
      if (*(v8 + 23) < 0)
      {
        v9 = *v8;
      }

      *a3 = v9;
      *(a3 + 8) = *(v8 + 24);
      result = getTypeInfoKind(*(v8 + 40));
      *(a3 + 12) = result;
      *(a3 + 16) = *(v8 + 32);
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = "unknown TypeInfo kind";
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_childinfo SwiftReflectionContext::withContext<swift_childinfo,swift_reflection_childOfMetadata::$_0>(swift_reflection_childOfMetadata::$_0 const&)::{lambda(swift_childinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<X0>(uint64_t **a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  result = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(*a2, **v4, 0, 0);
  if (result)
  {
    v6 = *(result + 8);
    if (v6 == 1 || v6 == 4)
    {
      v8 = *(result + 40) + 48 * **(v4 + 8);
      v9 = v8;
      if (*(v8 + 23) < 0)
      {
        v9 = *v8;
      }

      *a3 = v9;
      *(a3 + 8) = *(v8 + 24);
      result = getTypeInfoKind(*(v8 + 40));
      *(a3 + 12) = result;
      *(a3 + 16) = *(v8 + 32);
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = "unknown TypeInfo kind";
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_typeinfo SwiftReflectionContext::withContext<swift_typeinfo,swift_reflection_infoForInstance::$_0>(swift_reflection_infoForInstance::$_0 const&)::{lambda(swift_typeinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<D0>(unint64_t ****a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  InstanceTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(*a2, ****a1, 0, 0);
  if (InstanceTypeInfo)
  {
    v6 = *(InstanceTypeInfo + 2);
    if (v6 == 4 || v6 == 1)
    {
      v8 = -1431655765 * ((InstanceTypeInfo[6] - InstanceTypeInfo[5]) >> 4);
    }

    else
    {
      v8 = 0;
    }

    v9 = InstanceTypeInfo;
    *a3 = getTypeInfoKind(InstanceTypeInfo);
    result = *(v9 + 12);
    *(a3 + 4) = result;
    *(a3 + 12) = *(v9 + 5);
    *(a3 + 16) = v8;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}