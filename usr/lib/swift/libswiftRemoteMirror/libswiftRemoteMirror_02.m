unsigned __int16 ***swift::Demangle::__runtime::getObjCClassOrProtocolName@<X0>(unsigned __int16 ***result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  if (v2 != 25 && v2 != 190)
  {
    goto LABEL_21;
  }

  v3 = *(result + 18);
  v4 = result;
  if (v3 != 2)
  {
    if (v3 != 5 || *(result + 2) != 2)
    {
      goto LABEL_21;
    }

    v4 = *result;
  }

  v5 = *v4;
  if (*(v5 + 8) != 163 || v5[1] != (&dword_0 + 3))
  {
    goto LABEL_21;
  }

  v6 = *v5;
  v7 = *v6;
  v8 = *(v6 + 2);
  if (v7 != 24415 || v8 != 67)
  {
    goto LABEL_21;
  }

  if (v3 == 2)
  {
    goto LABEL_17;
  }

  if (*(result + 2) >= 2u)
  {
    result = *result;
LABEL_17:
    v10 = result[1];
    goto LABEL_19;
  }

  v10 = 0;
LABEL_19:
  if (*(v10 + 8) == 103)
  {
    *a2 = *v10;
    *(a2 + 16) = 1;
    return result;
  }

LABEL_21:
  *a2 = 0;
  *(a2 + 16) = 0;
  return result;
}

void swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledTypeDecl(swift::Demangle::__runtime::Node **a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  if (a3 > 0x400)
  {
LABEL_2:
    v7 = "Mangled type is too complex";
    goto LABEL_3;
  }

  v9 = a3 + 1;
  while (1)
  {
    v10 = *(a2 + 16);
    if (v10 != 243)
    {
      break;
    }

    v11 = *(a2 + 18);
    if ((v11 - 1) >= 2)
    {
      if (v11 != 5 || !*(a2 + 8))
      {
        a2 = 0;
        goto LABEL_8;
      }

      a2 = *a2;
    }

    a2 = *a2;
LABEL_8:
    v9 = (v9 + 1);
    if (v9 == 1026)
    {
      goto LABEL_2;
    }
  }

  if (v10 != 244)
  {
    v13 = *(a2 + 18);
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v15 = *(a2 + 8);
        v16 = *a2;
        goto LABEL_33;
      }

      if (v13 != 5 || *(a2 + 8) <= 1u)
      {
LABEL_33:
        operator new();
      }

      v14 = *a2;
    }

    else
    {
      if (v13 == 1)
      {
        goto LABEL_33;
      }

      v14 = a2;
      if (v13 != 2)
      {
        goto LABEL_33;
      }
    }

    v17 = *v14;
    v18 = *(*v14 + 16);
    if (v18 == 163)
    {
      goto LABEL_14;
    }

    if (v18 == 73)
    {
      v19 = *(v17 + 18);
      if (v19 != 2)
      {
        if (v19 == 3)
        {
          v22 = *(v17 + 2);
          v23 = *v17;
          goto LABEL_44;
        }

        if (v19 != 5 || *(v17 + 2) < 2u)
        {
LABEL_44:
          if (v13 != 2)
          {
            v24 = *(a2 + 8);
          }

          operator new();
        }

        v17 = *v17;
      }

      v20 = a5;
      v21 = a2;
      v17 = v17[1];
    }

    else
    {
      v20 = a5;
      v21 = a2;
    }

    v25 = a1;
    swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v28, a1, v17, v9, 1);
    v26 = LOWORD(v28.__r_.__value_.__r.__words[2]);
    if (LOWORD(v28.__r_.__value_.__r.__words[2]))
    {
      *v20 = 0;
      v27 = v21;
      if (v26 != 1)
      {
LABEL_54:
        swift::Demangle::__runtime::getUnspecialized(v27, *v25, &v28);
        if (!LODWORD(v28.__r_.__value_.__l.__data_))
        {
          a1 = v25;
          goto LABEL_14;
        }

        v7 = "Failed to unspecialize type";
        goto LABEL_3;
      }

      (v28.__r_.__value_.__l.__size_)(v28.__r_.__value_.__r.__words[0], 3, 0);
    }

    else
    {
      *v20 = v28.__r_.__value_.__r.__words[0];
    }

    v27 = v21;
    goto LABEL_54;
  }

LABEL_14:
  v12 = *a1;
  swift::reflection::TypeRefBuilder::createTypeDecl(&v28);
  std::__optional_storage_base<swift::reflection::TypeRefDecl,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<swift::reflection::TypeRefDecl,false>>(a4, &v28);
  if (v32 != 1)
  {
    goto LABEL_19;
  }

  if (v31 == 1 && __p)
  {
    v30 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((*(a4 + 56) & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_20:
    *a6 = 0;
    *(a6 + 16) = 0;
  }

  else
  {
LABEL_19:
    if (*(a4 + 56))
    {
      goto LABEL_20;
    }

LABEL_30:
    v7 = "Failed to create type decl";
LABEL_3:
    *a6 = v7;
    *(a6 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    *(a6 + 16) = 1;
  }
}

void *swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeGenericArgs@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a2 + 2;
  if (*(a2 + 8) != 246)
  {
    if (*(a2 + 18) == 3)
    {
      v13 = *(a2 + 2);
      v14 = *a2;
    }

    operator new();
  }

  v9 = result;
  v10 = *(a2 + 18);
  v11 = a2;
  if ((v10 - 1) >= 2)
  {
    if (v10 == 5)
    {
      v12 = *a2;
      v11 = *a2;
      goto LABEL_13;
    }

    v11 = 0;
  }

  switch(v10)
  {
    case 1:
      v6 = a2 + 1;
      if (v11 == a2 + 1)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    case 2:
      goto LABEL_18;
    case 5:
      v12 = *a2;
LABEL_13:
      v6 = (v12 + 8 * *(a2 + 2));
      if (v11 == v6)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
  }

  v6 = 0;
  if (!v11)
  {
LABEL_31:
    *a5 = 0;
    *(a5 + 16) = 0;
    return result;
  }

LABEL_18:
  v15 = *(a5 + 16);
  while (1)
  {
    result = swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v22, v9, *v11, a3, 0);
    v16 = v24;
    if (v24 == 1)
    {
      v17 = v22;
      v18 = v23;
      *(a5 + 8) = v23;
      result = v18(v17, 2, 0);
      *a5 = result;
      v15 = 1;
    }

    else
    {
      v19 = v22;
      v20 = *(a4 + 8);
      if (v20 >= *(a4 + 12))
      {
        result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v20 + 1, 8);
        v20 = *(a4 + 8);
      }

      v21 = v16 ? 0 : v19;
      *(*a4 + 8 * v20) = v21;
      ++*(a4 + 8);
    }

    if (v24 == 1)
    {
      result = v23(v22, 3, 0);
    }

    if (v16 == 1)
    {
      break;
    }

    if (++v11 == v6)
    {
      goto LABEL_31;
    }
  }

  *(a5 + 16) = v15;
  return result;
}

uint64_t swift::reflection::TypeRefBuilder::createBoundGenericType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a3;
  v10[1] = a4;
  if (*(a2 + 56) != 1)
  {
    return 0;
  }

  if (*(a2 + 48))
  {
    return swift::reflection::TypeRefBuilder::createBoundGenericType(a1, a2, v10);
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  if (a4)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = swift::reflection::BoundGenericTypeRef::create<swift::reflection::TypeRefBuilder>(a1, a2, &__p, a5);
  if (__p)
  {
    v8 = __p;
    v6 = result;
    operator delete(__p);
    return v6;
  }

  return result;
}

uint64_t swift::reflection::TypeRefBuilder::createBuiltinType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    v3 = a1;
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    a1 = v3;
  }

  else
  {
    __p = *a3;
  }

  result = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v5;
  }

  return result;
}

void swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledProtocolType(uint64_t *a1@<X1>, unsigned int a2@<W2>, std::string *a3@<X8>)
{
  if (a2 > 0x400)
  {
LABEL_2:
    a3->__r_.__value_.__s.__data_[0] = 0;
    a3[1].__r_.__value_.__s.__data_[8] = 0;
    return;
  }

  v3 = a2 - 1025;
  while (1)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 18);
    if (v5 != 243)
    {
      break;
    }

    if ((v6 - 1) < 2)
    {
      goto LABEL_7;
    }

    if (v6 == 5 && *(a1 + 2))
    {
      a1 = *a1;
LABEL_7:
      a1 = *a1;
      v4 = __CFADD__(v3++, 1);
      if (v4)
      {
        goto LABEL_2;
      }
    }

    else
    {
      a1 = 0;
      v4 = __CFADD__(v3++, 1);
      if (v4)
      {
        goto LABEL_2;
      }
    }
  }

  if (v6 == 2)
  {
    v9 = a1;
    if (v5 != 190)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  if (v6 == 5)
  {
    v7 = *(a1 + 2);
    if (v5 == 190 && v7 > 1)
    {
      if (v7 != 2)
      {
        goto LABEL_45;
      }

      v9 = *a1;
LABEL_27:
      v10 = *v9;
      if (*(v10 + 8) != 163 || v10[1] != (&dword_0 + 3))
      {
        goto LABEL_45;
      }

      v11 = *v10;
      v12 = *v11;
      v13 = *(v11 + 2);
      if (v12 != 24415 || v13 != 67)
      {
        goto LABEL_45;
      }

      v15 = a1;
      if (v6 != 2)
      {
        if (*(a1 + 2) < 2u)
        {
          v16 = 0;
LABEL_39:
          if (*(v16 + 16) != 103)
          {
            goto LABEL_45;
          }

          v17 = *v16;
          if (*v16)
          {
            v18 = *(v16 + 8);
            if (v18 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v19 = a3;
            if (v18 >= 0x17)
            {
              operator new();
            }

            *(&v23.__r_.__value_.__s + 23) = *(v16 + 8);
            if (v18)
            {
              memmove(&v23, v17, v18);
            }

            a3 = v19;
            v23.__r_.__value_.__s.__data_[v18] = 0;
            if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
            {
              v22 = v23.__r_.__value_.__r.__words[0];
              std::string::__init_copy_ctor_external(&v24, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
              *v19 = v24;
              operator delete(v22);
              a3 = v19;
              goto LABEL_59;
            }
          }

          else
          {
            memset(&v23, 0, sizeof(v23));
          }

          *a3 = v23;
LABEL_59:
          a3[1].__r_.__value_.__s.__data_[0] = 1;
          a3[1].__r_.__value_.__s.__data_[8] = 1;
          return;
        }

        v15 = *a1;
      }

      v16 = v15[1];
      goto LABEL_39;
    }
  }

LABEL_24:
  if (v5 != 191 && v5 != 361)
  {
    goto LABEL_2;
  }

LABEL_45:
  v20 = a3;
  swift::Demangle::__runtime::mangleNode();
  if (LODWORD(v24.__r_.__value_.__l.__data_))
  {
    v20->__r_.__value_.__s.__data_[0] = 0;
    v20[1].__r_.__value_.__s.__data_[8] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v21 = v20;
    }

    else
    {
      v21 = v20;
      v23 = __p;
    }

    *v21 = v23;
    v21[1].__r_.__value_.__s.__data_[0] = 0;
    v21[1].__r_.__value_.__s.__data_[8] = 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_52:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t __swift::__runtime::llvm::SmallVectorTemplateBase<std::optional<std::pair<std::string,BOOL>>,false>::push_back(uint64_t result, __int128 *a2)
{
  v2 = *(result + 8);
  v3 = *result;
  if (v2 >= *(result + 12))
  {
    v8 = a2;
    if (v3 <= a2 && v3 + 40 * v2 > a2)
    {
      v11 = a2 - v3;
      v12 = result;
      __swift::__runtime::llvm::SmallVectorTemplateBase<std::optional<std::pair<std::string,BOOL>>,false>::grow(result, v2 + 1);
      result = v12;
      v3 = *v12;
      a2 = (*v12 + v11);
    }

    else
    {
      v10 = result;
      __swift::__runtime::llvm::SmallVectorTemplateBase<std::optional<std::pair<std::string,BOOL>>,false>::grow(result, v2 + 1);
      result = v10;
      v3 = *v10;
      a2 = v8;
    }
  }

  v4 = (v3 + 40 * *(result + 8));
  v4->__r_.__value_.__s.__data_[0] = 0;
  v4[1].__r_.__value_.__s.__data_[8] = 0;
  if (*(a2 + 32) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v6 = result;
      v7 = a2;
      std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
      a2 = v7;
      result = v6;
    }

    else
    {
      v5 = *a2;
      v4->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v4->__r_.__value_.__l.__data_ = v5;
    }

    v4[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
    v4[1].__r_.__value_.__s.__data_[8] = 1;
  }

  ++*(result + 8);
  return result;
}

uint64_t swift::reflection::TypeRefBuilder::createProtocolCompositionType(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, int a5)
{
  if (a3)
  {
    v12 = a4;
    v13 = a5;
    v7 = 40 * a3;
    do
    {
      if (*(a2 + 32) == 1)
      {
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 1));
        }

        else
        {
          v8 = *a2;
          v17.__r_.__value_.__r.__words[2] = *(a2 + 2);
          *&v17.__r_.__value_.__l.__data_ = v8;
        }

        v18 = *(a2 + 24);
        v19 = 1;
        ProtocolTypeFromDecl = swift::reflection::TypeRefBuilder::createProtocolTypeFromDecl(a1, &v17);
        if (v19 == 1 && SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }

        if (ProtocolTypeFromDecl)
        {
          operator new();
        }
      }

      a2 = (a2 + 40);
      v7 -= 40;
    }

    while (v7);
    __p = 0;
    v15 = 0;
    v16 = 0;
    a5 = v13;
    a4 = v12;
  }

  else
  {
    __p = 0;
    v15 = 0;
    v16 = 0;
  }

  v10 = swift::reflection::ProtocolCompositionTypeRef::create<swift::reflection::TypeRefBuilder>(a1, &__p, a4, a5);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v10;
}

uint64_t swift::Demangle::__runtime::decodeRequirement<swift::reflection::TypeRef const*,swift::reflection::TypeRefRequirement,swift::reflection::TypeRefInverseRequirement,swift::reflection::TypeRefLayoutConstraint,swift::reflection::TypeRefBuilder>(uint64_t result, uint64_t a2, uint64_t a3, swift::reflection::TypeRefBuilder *a4)
{
  v7 = *(result + 18);
  v8 = result;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *result;
      v8 = *result;
      goto LABEL_9;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = result + 8;
      if (v8 != (result + 8))
      {
        goto LABEL_24;
      }

      break;
    case 2:
      v10 = result + 16;
      if (v8 != (result + 16))
      {
        goto LABEL_24;
      }

      break;
    case 5:
      v9 = *result;
LABEL_9:
      v10 = &v9[*(result + 8)];
      if (v8 == v10)
      {
        return result;
      }

      while (1)
      {
LABEL_24:
        v15 = *v8;
        v16 = *(*v8 + 8);
        if (v16 == 38 || v16 == 43 || v16 == 370)
        {
          goto LABEL_23;
        }

        v17 = *(v15 + 18);
        if (v17 != 2)
        {
          if (v17 != 5 || *(v15 + 2) != 2)
          {
            return result;
          }

          v15 = *v15;
        }

        result = swift::reflection::TypeRefBuilder::decodeMangledType(a4, *v15, 1);
        if (!result)
        {
          return result;
        }

        v18 = result;
        v19 = *v8;
        v20 = *(*v8 + 8);
        if (v20 == 367)
        {
          v25 = *(v19 + 18);
          v26 = *v8;
          if ((v25 - 1) < 2)
          {
            goto LABEL_49;
          }

          if (v25 == 5 && *(v19 + 2))
          {
            v26 = *v19;
LABEL_49:
            v27 = *v26;
          }

          else
          {
            v27 = 0;
          }

          if (*(v27 + 16) != 243)
          {
            return result;
          }

          v34 = *(v27 + 18);
          if (v34 != 1 && (v34 != 5 || *(v27 + 8) != 1))
          {
            return result;
          }

          if (v25 == 5)
          {
            v19 = *v19;
          }

          v35 = **(v19 + 1);
          v36 = *(a3 + 8);
          if (v36 >= *(a3 + 12))
          {
            result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v36 + 1, 8);
            v36 = *(a3 + 8);
          }

          *(*a3 + 8 * v36) = v35 | v18 & 0xFFFFFFFFFFFFFFF8;
          v14 = (a3 + 8);
          goto LABEL_22;
        }

        if (v20 == 40)
        {
          v23 = *(v19 + 18);
          if (v23 == 2)
          {
            goto LABEL_44;
          }

          if (v23 == 5 && *(v19 + 2) >= 2u)
          {
            v19 = *v19;
LABEL_44:
            v24 = *(v19 + 1);
          }

          else
          {
            v24 = 0;
          }

          result = swift::reflection::TypeRefBuilder::decodeMangledType(a4, v24, 0);
          if (!result)
          {
            return result;
          }

          goto LABEL_56;
        }

        if (v20 != 37)
        {
          result = 0;
          goto LABEL_56;
        }

        v21 = *(v19 + 18);
        if (v21 == 2)
        {
          goto LABEL_39;
        }

        if (v21 == 5 && *(v19 + 2) >= 2u)
        {
          break;
        }

        v22 = 0;
LABEL_55:
        result = swift::reflection::TypeRefBuilder::decodeMangledType(a4, v22, 1);
        if (!result)
        {
          return result;
        }

LABEL_56:
        v28 = *v8;
        v29 = *(*v8 + 8);
        if (v29 != 42)
        {
          if (v29 == 40)
          {
            v11 = *(a2 + 8);
            if (v11 >= *(a2 + 12))
            {
              v37 = result;
              __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v11 + 1, 16);
              result = v37;
              v11 = *(a2 + 8);
            }

            v12 = v18 & 0xFFFFFFFFFFFFFFF8 | 2;
          }

          else
          {
            if (v29 != 37)
            {
              goto LABEL_23;
            }

            v11 = *(a2 + 8);
            if (v11 >= *(a2 + 12))
            {
              v38 = result;
              __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v11 + 1, 16);
              result = v38;
              v11 = *(a2 + 8);
            }

            v12 = v18 & 0xFFFFFFFFFFFFFFF8;
          }

          v13 = (*a2 + 16 * v11);
          *v13 = v12;
          v13[1] = result;
          goto LABEL_21;
        }

        v30 = *(v28 + 18);
        if (v30 == 2)
        {
          goto LABEL_66;
        }

        if (v30 == 5 && *(v28 + 2) >= 2u)
        {
          v28 = *v28;
LABEL_66:
          v31 = *(v28 + 1);
          goto LABEL_68;
        }

        v31 = 0;
LABEL_68:
        if (*(v31 + 8) != 103)
        {
          return result;
        }

        if (v31[1] != &dword_0 + 1)
        {
          return result;
        }

        v32 = **v31 - 66;
        if (v32 > 0x2B || ((1 << v32) & 0x808000F180FLL) == 0)
        {
          return result;
        }

        v33 = *(a2 + 8);
        if (v33 >= *(a2 + 12))
        {
          result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v33 + 1, 16);
          v33 = *(a2 + 8);
        }

        *(*a2 + 16 * v33) = v18 & 0xFFFFFFFFFFFFFFF8 | 3;
LABEL_21:
        v14 = (a2 + 8);
LABEL_22:
        ++*v14;
LABEL_23:
        if (++v8 == v10)
        {
          return result;
        }
      }

      v19 = *v19;
LABEL_39:
      v22 = *(v19 + 1);
      goto LABEL_55;
    default:
      v10 = 0;
      if (v8)
      {
        goto LABEL_24;
      }

      break;
  }

  return result;
}

uint64_t swift::reflection::TypeRefBuilder::createConstrainedExistentialType(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a2 && *(a2 + 8) == 5)
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    if (a4)
    {
      if ((a4 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    result = swift::reflection::ConstrainedExistentialTypeRef::create<swift::reflection::TypeRefBuilder>(a1, a2, &__p);
    if (__p)
    {
      v8 = __p;
      v6 = result;
      operator delete(__p);
      return v6;
    }
  }

  return result;
}

void *swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledFunctionInputType@<X0>(void *result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a3 > 0x400)
  {
LABEL_2:
    *a6 = 0;
    *(a6 + 16) = 0;
    return result;
  }

  while (1)
  {
    v6 = *(a2 + 16);
    if (v6 != 243 && v6 != 3)
    {
      break;
    }

    v8 = *(a2 + 18);
    if ((v8 - 1) >= 2)
    {
      if (v8 != 5 || !*(a2 + 8))
      {
        a2 = 0;
        goto LABEL_7;
      }

      a2 = *a2;
    }

    a2 = *a2;
LABEL_7:
    if (++a3 == 1025)
    {
      goto LABEL_2;
    }
  }

  v29 = a3;
  v28[0] = a5;
  v28[1] = &v29;
  v28[2] = a4;
  v28[3] = result;
  v27[0] = a5;
  v27[1] = v28;
  if (v6 == 234)
  {
    v9 = *(a2 + 18);
    v10 = a2;
    if ((v9 - 1) >= 2)
    {
      if (v9 == 5)
      {
        v11 = a6;
        v12 = *a2;
        v10 = *a2;
LABEL_29:
        v17 = (v12 + 8 * *(a2 + 8));
        goto LABEL_35;
      }

      v10 = 0;
    }

    v11 = a6;
    switch(v9)
    {
      case 1:
        v17 = (a2 + 8);
        goto LABEL_35;
      case 2:
        v17 = (a2 + 16);
        goto LABEL_35;
      case 5:
        v12 = *a2;
        goto LABEL_29;
    }

    v17 = 0;
    while (1)
    {
LABEL_35:
      if (v10 == v17)
      {
        *v11 = 0;
        *(v11 + 16) = 0;
        return result;
      }

      result = swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledFunctionInputType(swift::Demangle::__runtime::Node *,unsigned int,llvm::SmallVectorImpl<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>> &,BOOL &)::{lambda(swift::Demangle::__runtime::Node *)#1}::operator()(v27, *v10, &v23);
      if (v25 == 1)
      {
        break;
      }

      ++v10;
    }

    v18 = v23;
    v19 = v24;
    *(v11 + 8) = v24;
    result = v19(v18, 2, 0);
    *v11 = result;
    *(v11 + 16) = 1;
    if (v25 == 1)
    {
      return v24(v23, 3, 0);
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v26 = 0;
    result = swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledFunctionInputType(swift::Demangle::__runtime::Node *,unsigned int,llvm::SmallVectorImpl<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>> &,BOOL &)::{lambda(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>&)#1}::operator()(v28, a2, &v23, &v20);
    if (v22 == 1)
    {
      v14 = v20;
      v15 = v21;
      *(a6 + 8) = v21;
      result = v15(v14, 2, 0);
      *a6 = result;
      v16 = v22;
      *(a6 + 16) = 1;
      if (v16)
      {
        return v21(v20, 3, 0);
      }
    }

    else
    {
      *a6 = 0;
      *(a6 + 16) = 0;
    }
  }

  return result;
}

uint64_t swift::reflection::TypeRefBuilder::createFunctionType(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, int a6, uint64_t a7, char *a8, char *a9)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = swift::reflection::FunctionTypeRef::create<swift::reflection::TypeRefBuilder>(a1, &__p, a4, a5, a6, a7, a8, a9);
  if (__p)
  {
    v12 = __p;
    v10 = result;
    operator delete(__p);
    return v10;
  }

  return result;
}

uint64_t swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeImplFunctionParam<swift::Demangle::__runtime::ImplFunctionParam<swift::reflection::TypeRef const*>>(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 > 0x400)
  {
    return 1;
  }

  v6 = *(a2 + 18);
  v4 = 1;
  if (v6 == 2)
  {
    v8 = a2;
  }

  else
  {
    if (v6 != 5)
    {
      return v4;
    }

    v7 = *(a2 + 8);
    if (v7 < 2)
    {
      return 1;
    }

    v8 = *a2;
    v4 = v7 - 1;
  }

  if (*(*v8 + 8) != 108)
  {
    return 1;
  }

  v9 = v8[v4];
  if (*(v9 + 8) != 243)
  {
    return 1;
  }

  ConventionFromString = swift::Demangle::__runtime::ImplFunctionParam<swift::reflection::TypeRef const*>::getConventionFromString(**v8, (*v8)[1]);
  v34 = ConventionFromString;
  v35 = BYTE4(ConventionFromString);
  v4 = 1;
  if ((ConventionFromString & 0x100000000) == 0)
  {
    return v4;
  }

  swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(v32, a1, v9, a3 + 1, 1);
  v15 = v33;
  if (v33 == 1)
  {
LABEL_50:
    (v32[1])(v32[0], 3, 0);
    return v4;
  }

  v16 = 0;
  v17 = *(a2 + 18);
  for (i = 1; ; ++i)
  {
    switch(v17)
    {
      case 2:
        v19 = 1;
        break;
      case 5:
        v19 = *(a2 + 8) - 1;
        break;
      case 1:
        goto LABEL_45;
      default:
LABEL_29:
        v22 = 0;
        goto LABEL_30;
    }

    if (v19 <= i)
    {
LABEL_45:
      v31 = v16;
      if (v33)
      {
        v29 = 0;
      }

      else
      {
        v29 = v32[0];
      }

      v30 = v29;
      __swift::__runtime::llvm::SmallVectorImpl<swift::Demangle::__runtime::ImplFunctionParam<swift::reflection::TypeRef const*>>::emplace_back<swift::reflection::TypeRef const*,swift::Demangle::__runtime::ImplParameterConvention &,swift::optionset::OptionSet<swift::Demangle::__runtime::ImplParameterInfoFlags,unsigned char> &>(a4, &v30, &v34, &v31);
      v4 = 0;
      v15 = v33;
LABEL_49:
      if (v15 != 1)
      {
        return v4;
      }

      goto LABEL_50;
    }

    v20 = *(a2 + 18);
    if (v17 != 2)
    {
      v20 = *(a2 + 8);
    }

    if (v20 <= i)
    {
      goto LABEL_29;
    }

    v21 = a2;
    if ((v17 - 1) >= 2)
    {
      v21 = *a2;
    }

    v22 = v21[i];
LABEL_30:
    v23 = *(v22 + 16);
    v4 = 1;
    if (v23 > 0x71)
    {
      if (v23 == 114)
      {
        LOBYTE(v4) = 4;
      }

      else
      {
        if (v23 != 115)
        {
          goto LABEL_49;
        }

        LOBYTE(v4) = 8;
      }

      goto LABEL_15;
    }

    if (v23 != 112)
    {
      if (v23 != 113)
      {
        goto LABEL_49;
      }

      LOBYTE(v4) = 2;
      goto LABEL_15;
    }

    v24 = *(v22 + 8);
    if (!v24)
    {
      LOBYTE(v4) = 0;
      goto LABEL_15;
    }

    if (v24 != 13)
    {
      break;
    }

    v25 = *v22;
    v26 = *v25;
    v27 = *(v25 + 5);
    v28 = v26 == 0x76697265446F6E40 && v27 == 0x6576697461766972;
    v4 = 1;
    if (!v28)
    {
      goto LABEL_49;
    }

LABEL_15:
    v16 |= v4;
  }

  v4 = 1;
  if (v33 == 1)
  {
    goto LABEL_50;
  }

  return v4;
}

uint64_t swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeImplFunctionResult<swift::Demangle::__runtime::ImplFunctionResult<swift::reflection::TypeRef const*>>(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 > 0x400)
  {
    return 1;
  }

  v6 = *(a2 + 18);
  v4 = 1;
  if (v6 == 2)
  {
    v8 = a2;
  }

  else
  {
    if (v6 != 5)
    {
      return v4;
    }

    v7 = *(a2 + 8);
    if (v7 < 2)
    {
      return 1;
    }

    v8 = *a2;
    v4 = v7 - 1;
  }

  if (*(*v8 + 8) != 108)
  {
    return 1;
  }

  v9 = v8[v4];
  if (*(v9 + 8) != 243)
  {
    return 1;
  }

  ConventionFromString = swift::Demangle::__runtime::ImplFunctionResult<swift::reflection::TypeRef const*>::getConventionFromString(**v8, (*v8)[1]);
  v34 = ConventionFromString;
  v35 = BYTE4(ConventionFromString);
  v4 = 1;
  if ((ConventionFromString & 0x100000000) == 0)
  {
    return v4;
  }

  swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(v32, a1, v9, a3 + 1, 1);
  v15 = v33;
  if (v33 == 1)
  {
    goto LABEL_46;
  }

  v16 = 0;
  v17 = *(a2 + 18);
  for (i = 1; ; ++i)
  {
    switch(v17)
    {
      case 2:
        v19 = 1;
        break;
      case 5:
        v19 = *(a2 + 8) - 1;
        break;
      case 1:
        goto LABEL_40;
      default:
LABEL_29:
        v22 = 0;
        goto LABEL_30;
    }

    if (v19 <= i)
    {
      break;
    }

    v20 = *(a2 + 18);
    if (v17 != 2)
    {
      v20 = *(a2 + 8);
    }

    if (v20 <= i)
    {
      goto LABEL_29;
    }

    v21 = a2;
    if ((v17 - 1) >= 2)
    {
      v21 = *a2;
    }

    v22 = v21[i];
LABEL_30:
    v23 = *(v22 + 8);
    if (v23 == 113)
    {
      LOBYTE(v4) = 2;
    }

    else
    {
      if (v23 != 112)
      {
        goto LABEL_44;
      }

      v24 = *(v22 + 1);
      if (v24)
      {
        if (v24 != 13)
        {
LABEL_44:
          v4 = 1;
          goto LABEL_45;
        }

        v25 = *v22;
        v26 = *v25;
        v27 = *(v25 + 5);
        v28 = v26 == 0x76697265446F6E40 && v27 == 0x6576697461766972;
        v4 = 1;
        if (!v28)
        {
          goto LABEL_45;
        }
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }

    v16 |= v4;
  }

LABEL_40:
  v31 = v16;
  if (v33)
  {
    v29 = 0;
  }

  else
  {
    v29 = v32[0];
  }

  v30 = v29;
  __swift::__runtime::llvm::SmallVectorImpl<swift::Demangle::__runtime::ImplFunctionParam<swift::reflection::TypeRef const*>>::emplace_back<swift::reflection::TypeRef const*,swift::Demangle::__runtime::ImplParameterConvention &,swift::optionset::OptionSet<swift::Demangle::__runtime::ImplParameterInfoFlags,unsigned char> &>(a4, &v30, &v34, &v31);
  v4 = 0;
  v15 = v33;
LABEL_45:
  if (v15 == 1)
  {
LABEL_46:
    (v32[1])(v32[0], 3, 0);
  }

  return v4;
}

uint64_t swift::reflection::TypeRefBuilder::createImplFunctionType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v13 = qword_DA780[a12 & 7];
  if (((a12 >> 8) & 7) - 1 < 4)
  {
    v14 = (((a12 >> 8) & 7) - 1) + 1;
  }

  else
  {
    v14 = 0;
  }

  TupleType = swift::reflection::TypeRefBuilder::createTupleType(a1, 0, 0, 0, 0);
  v19 = 0;
  v20 = 0;
  __p = 0;
  result = swift::reflection::FunctionTypeRef::create<swift::reflection::TypeRefBuilder>(a1, &__p, TupleType, (a12 << 25) & 0x40000000 | (((a12 >> 6) & 1) << 29) | (((a12 & 0x700) != 0) << 27) | v13, (a12 >> 7) & 0x10, v14, 0, 0);
  if (__p)
  {
    v19 = __p;
    v17 = result;
    operator delete(__p);
    return v17;
  }

  return result;
}

void *swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeTypeSequenceElement<swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(swift::Demangle::__runtime::Node *,unsigned int,BOOL)::{lambda(swift::reflection::TypeRef const*)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a2 + 8) == 243)
  {
    v7 = *(a2 + 18);
    if ((v7 - 1) < 2)
    {
LABEL_6:
      a2 = *a2;
      goto LABEL_8;
    }

    if (v7 == 5 && *(a2 + 2))
    {
      a2 = *a2;
      goto LABEL_6;
    }

    a2 = 0;
  }

LABEL_8:
  if (*(a2 + 8) == 240)
  {
    v8 = *(a2 + 18);
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        v20 = *(a2 + 2);
        v21 = *a2;
        goto LABEL_31;
      }

      if (v8 != 5 || *(a2 + 2) <= 1u)
      {
LABEL_31:
        operator new();
      }

      a2 = *a2;
    }

    else if (v8 != 2)
    {
      goto LABEL_31;
    }

    v22 = *a2;
    swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v45, a1, a2[1], a3, 1);
    if (v47 == 1)
    {
      v25 = v45;
      v26 = v46;
      *(a5 + 8) = v46;
      result = v26(v25, 2, 0);
      v27 = 0;
      *a5 = result;
      *(a5 + 16) = 1;
    }

    else
    {
      v28 = *a1;
      if (v47)
      {
        v29 = 0;
      }

      else
      {
        v29 = v45;
      }

      v42 = v29;
      std::vector<swift::reflection::TypeRef const*>::push_back[abi:nn200100](v28 + 624, &v42);
      swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v42, a1, v22, a3, 1);
      v30 = v44;
      if (v44 == 1)
      {
        v31 = v42;
        v32 = v43;
        *(a5 + 8) = v43;
        result = v32(v31, 2, 0);
        *a5 = result;
        *(a5 + 16) = 1;
      }

      else
      {
        if (v44)
        {
          v33 = 0;
        }

        else
        {
          v33 = v42;
        }

        result = swift::reflection::PackExpansionTypeRef::create<swift::reflection::TypeRefBuilder>(*a1, v33, *(*(*a1 + 632) - 8));
        v34 = *a4;
        v35 = *(*a4 + 8);
        if (v35 >= *(*a4 + 12))
        {
          v39 = result;
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(*a4, v34 + 16, v35 + 1, 8);
          result = v39;
          LODWORD(v35) = *(v34 + 8);
        }

        *(*v34 + 8 * v35) = result;
        ++*(v34 + 8);
        v36 = a4[1];
        v37 = *a4[2];
        v38 = *(v36 + 8);
        if (v38 >= *(v36 + 12))
        {
          v41 = *a4[2];
          result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a4[1], v36 + 16, v38 + 1, 16);
          v37 = v41;
          LODWORD(v38) = *(v36 + 8);
        }

        *(*v36 + 16 * v38) = v37;
        ++*(v36 + 8);
      }

      if (v44 == 1)
      {
        result = v43(v42, 3, 0);
      }

      if (v30 == 1)
      {
        v27 = 0;
      }

      else
      {
        *(*a1 + 632) -= 8;
        v27 = 1;
      }
    }

    if (v47 == 1)
    {
      result = v46(v45, 3, 0);
    }

    if (v27)
    {
      goto LABEL_56;
    }
  }

  else
  {
    result = swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v45, a1, a2, a3, 0);
    v10 = v47;
    if (v47 == 1)
    {
      v11 = v45;
      v12 = v46;
      *(a5 + 8) = v46;
      result = v12(v11, 2, 0);
      *a5 = result;
      *(a5 + 16) = 1;
    }

    else
    {
      v13 = v45;
      v14 = *a4;
      v15 = *(*a4 + 8);
      if (v15 >= *(*a4 + 12))
      {
        result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(*a4, v14 + 16, v15 + 1, 8);
        LODWORD(v15) = *(v14 + 8);
      }

      if (v10)
      {
        v16 = 0;
      }

      else
      {
        v16 = v13;
      }

      *(*v14 + 8 * v15) = v16;
      ++*(v14 + 8);
      v17 = a4[1];
      v18 = *a4[2];
      v19 = *(v17 + 8);
      if (v19 >= *(v17 + 12))
      {
        v40 = *a4[2];
        result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a4[1], v17 + 16, v19 + 1, 16);
        v18 = v40;
        LODWORD(v19) = *(v17 + 8);
      }

      *(*v17 + 16 * v19) = v18;
      ++*(v17 + 8);
    }

    if (v47 == 1)
    {
      result = v46(v45, 3, 0);
    }

    if (v10 != 1)
    {
LABEL_56:
      *a5 = 0;
      *(a5 + 16) = 0;
    }
  }

  return result;
}

uint64_t swift::reflection::TypeRefBuilder::createTupleType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<__swift::__runtime::llvm::StringRef const*,__swift::__runtime::llvm::StringRef const*>(&v23, a4, a4 + 16 * a5, (16 * a5) >> 4);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  __p = 0;
  v18 = 0;
  v19 = 0;
  if (v24 != v23)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = swift::reflection::TupleTypeRef::create<swift::reflection::TypeRefBuilder>(a1, &v20, &__p);
  v8 = __p;
  if (__p)
  {
    v9 = v18;
    v10 = __p;
    if (v18 != __p)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v18 = v8;
    operator delete(v10);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  v12 = v23;
  if (v23)
  {
    v13 = v24;
    v14 = v23;
    if (v24 != v23)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = v23;
    }

    v24 = v12;
    operator delete(v14);
  }

  return v7;
}

void *swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeTypeSequenceElement<swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(swift::Demangle::__runtime::Node *,unsigned int,BOOL)::{lambda(swift::reflection::TypeRef const*)#2}>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a2 + 8) == 243)
  {
    v7 = *(a2 + 18);
    if ((v7 - 1) < 2)
    {
LABEL_6:
      a2 = *a2;
      goto LABEL_8;
    }

    if (v7 == 5 && *(a2 + 2))
    {
      a2 = *a2;
      goto LABEL_6;
    }

    a2 = 0;
  }

LABEL_8:
  if (*(a2 + 8) == 240)
  {
    v8 = *(a2 + 18);
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        v16 = *(a2 + 2);
        v17 = *a2;
        goto LABEL_29;
      }

      if (v8 != 5 || *(a2 + 2) <= 1u)
      {
LABEL_29:
        operator new();
      }

      a2 = *a2;
    }

    else if (v8 != 2)
    {
      goto LABEL_29;
    }

    v18 = *a2;
    swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v35, a1, a2[1], a3, 1);
    if (v37 == 1)
    {
      v21 = v35;
      v22 = v36;
      *(a5 + 8) = v36;
      result = v22(v21, 2, 0);
      v23 = 0;
      *a5 = result;
      *(a5 + 16) = 1;
    }

    else
    {
      v24 = *a1;
      if (v37)
      {
        v25 = 0;
      }

      else
      {
        v25 = v35;
      }

      v32 = v25;
      std::vector<swift::reflection::TypeRef const*>::push_back[abi:nn200100](v24 + 624, &v32);
      swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v32, a1, v18, a3, 1);
      v26 = v34;
      if (v34 == 1)
      {
        v27 = v32;
        v28 = v33;
        *(a5 + 8) = v33;
        result = v28(v27, 2, 0);
        *a5 = result;
        *(a5 + 16) = 1;
      }

      else
      {
        if (v34)
        {
          v29 = 0;
        }

        else
        {
          v29 = v32;
        }

        result = swift::reflection::PackExpansionTypeRef::create<swift::reflection::TypeRefBuilder>(*a1, v29, *(*(*a1 + 632) - 8));
        v30 = *(a4 + 8);
        if (v30 >= *(a4 + 12))
        {
          v31 = result;
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v30 + 1, 8);
          result = v31;
          LODWORD(v30) = *(a4 + 8);
        }

        *(*a4 + 8 * v30) = result;
        ++*(a4 + 8);
      }

      if (v34 == 1)
      {
        result = v33(v32, 3, 0);
      }

      if (v26 == 1)
      {
        v23 = 0;
      }

      else
      {
        *(*a1 + 632) -= 8;
        v23 = 1;
      }
    }

    if (v37 == 1)
    {
      result = v36(v35, 3, 0);
    }

    if (v23)
    {
      goto LABEL_52;
    }
  }

  else
  {
    result = swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v35, a1, a2, a3, 0);
    v10 = v37;
    if (v37 == 1)
    {
      v11 = v35;
      v12 = v36;
      *(a5 + 8) = v36;
      result = v12(v11, 2, 0);
      *a5 = result;
      *(a5 + 16) = 1;
    }

    else
    {
      v13 = v35;
      v14 = *(a4 + 8);
      if (v14 >= *(a4 + 12))
      {
        result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v14 + 1, 8);
        LODWORD(v14) = *(a4 + 8);
      }

      if (v10)
      {
        v15 = 0;
      }

      else
      {
        v15 = v13;
      }

      *(*a4 + 8 * v14) = v15;
      ++*(a4 + 8);
    }

    if (v37 == 1)
    {
      result = v36(v35, 3, 0);
    }

    if (v10 != 1)
    {
LABEL_52:
      *a5 = 0;
      *(a5 + 16) = 0;
    }
  }

  return result;
}

uint64_t swift::reflection::TypeRefBuilder::createPackType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = swift::reflection::PackTypeRef::create<swift::reflection::TypeRefBuilder>(a1, &__p);
  if (__p)
  {
    v6 = __p;
    v4 = result;
    operator delete(__p);
    return v4;
  }

  return result;
}

uint64_t __swift::__runtime::llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    v3 = a2;
    v4 = result;
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v2 + 1, 4);
    a2 = v3;
    result = v4;
    LODWORD(v2) = *(v4 + 8);
  }

  *(*result + 4 * v2) = a2;
  ++*(result + 8);
  return result;
}

uint64_t __swift::__runtime::llvm::SmallVectorImpl<std::pair<unsigned int,unsigned int>>::emplace_back<unsigned long long,unsigned long long>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    return __swift::__runtime::llvm::SmallVectorTemplateBase<std::pair<unsigned int,unsigned int>,true>::growAndEmplaceBack<unsigned long long,unsigned long long>(a1, a2, a3);
  }

  v4 = *a1;
  v5 = (*a1 + 8 * v3);
  v6 = *a3;
  *v5 = *a2;
  v5[1] = v6;
  v7 = v3 + 1;
  *(a1 + 8) = v7;
  return v4 + 8 * v7 - 8;
}

uint64_t llvm::SmallVectorImpl<std::pair<swift::reflection::TypeRef const*,swift::reflection::TypeRef const*>>::emplace_back<swift::reflection::TypeRef const*&,swift::reflection::TypeRef const*>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    return __swift::__runtime::llvm::SmallVectorTemplateBase<std::pair<swift::reflection::TypeRef const*,swift::reflection::TypeRef const*>,true>::growAndEmplaceBack<swift::reflection::TypeRef const*&,swift::reflection::TypeRef const*>(a1, a2, a3);
  }

  v4 = *a1;
  v5 = (*a1 + 16 * v3);
  *v5 = *a2;
  v5[1] = *a3;
  v6 = v3 + 1;
  *(a1 + 8) = v6;
  return v4 + 16 * v6 - 16;
}

uint64_t llvm::SmallVectorImpl<swift::reflection::SILBoxTypeWithLayoutTypeRef::Field>::emplace_back<swift::reflection::TypeRef const*,BOOL &>(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    return __swift::__runtime::llvm::SmallVectorTemplateBase<swift::reflection::SILBoxTypeWithLayoutTypeRef::Field,true>::growAndEmplaceBack<swift::reflection::TypeRef const*,BOOL &>(a1, a2, a3);
  }

  v4 = *a1;
  v5 = 4;
  if (!*a3)
  {
    v5 = 0;
  }

  *(v4 + 8 * v3) = v5 | *a2 & 0xFFFFFFFFFFFFFFFBLL;
  v6 = v3 + 1;
  *(a1 + 8) = v6;
  return v4 + 8 * v6 - 8;
}

void std::vector<unsigned int>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
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

uint64_t std::vector<llvm::ArrayRef<swift::reflection::TypeRef const*>>::emplace_back<swift::reflection::TypeRef const**,unsigned int>(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
    v9 = *a1;
    v10 = v5 - *a1;
    v11 = v10 >> 4;
    v12 = (v10 >> 4) + 1;
    if (v12 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v15 = (16 * v11);
    v16 = *a3;
    *v15 = *a2;
    v15[1] = v16;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    *a1 = 0;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    v7 = *a3;
    *v5 = *a2;
    v5[1] = v7;
    v8 = (v5 + 2);
  }

  *(a1 + 8) = v8;
  return v8 - 16;
}

char *swift::reflection::TypeRefBuilder::resolveOpaqueType(uint64_t a1, swift::Demangle::__runtime *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a2 + 8) != 315)
  {
    swift::Demangle::__runtime::mangleNode();
    result = 0;
    if (v54)
    {
      return result;
    }

    v35 = v56;
    v36 = v57;
    v46[0] = 0;
    *&v46[1] = 0x101010101010101;
    v46[9] = 1;
    *&v46[10] = 0x101010100000000;
    v46[18] = 1;
    *&v46[19] = 256;
    v47 = 1;
    v48 = 0;
    v49 = 0;
    v50[0] = off_E0BC8;
    v50[1] = swift::Demangle::__runtime::genericParameterName;
    v51 = v50;
    swift::Demangle::__runtime::nodeToString(a2, v46, v34, __p);
    if (v53 >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    if (v53 >= 0)
    {
      v38 = v53;
    }

    else
    {
      v38 = __p[1];
    }

    result = swift::reflection::OpaqueArchetypeTypeRef::create<swift::reflection::TypeRefBuilder>(a1, v35, v36, v37, v38, a5, a3, a4);
    if (v53 < 0)
    {
      v39 = result;
      operator delete(__p[0]);
      result = v39;
    }

    if (v51 == v50)
    {
      v40 = result;
      (*(*v51 + 32))(v51);
    }

    else
    {
      if (!v51)
      {
        return result;
      }

      v40 = result;
      (*(*v51 + 40))(v51);
    }

    return v40;
  }

  *v46 = *a2;
  *&v46[8] = 0;
  LODWORD(v54) = a5;
  v8 = *(a1 + 2288);
  if (!v8)
  {
    v41 = std::__throw_bad_function_call[abi:nn200100]();
    return swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,char const*>(char const*,int,unsigned int,int,char const*,char const*)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,char const*>(char const*,int,unsigned int,int,char const*,char const*)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(v41, v42, v43);
  }

  result = (*(*v8 + 48))(v8, v46, &v54);
  if (result)
  {
    v44 = result;
    v45 = a1;
    memset(v46, 0, 20);
    if (a4)
    {
      v10 = 0;
      while (1)
      {
        v11 = a3 + 16 * v10;
        v12 = *(v11 + 8);
        if (*(v11 + 8))
        {
          break;
        }

LABEL_6:
        if (++v10 == a4)
        {
          goto LABEL_48;
        }
      }

      v13 = 0;
      v14 = *v11;
      while (1)
      {
        v54 = v10 | (v13 << 32);
        v55 = *(v14 + 8 * v13);
        if (*&v46[16])
        {
          v15 = (v10 | (v13 << 32)) >> 32;
          v16 = ((0x2500000000 * v10) | (37 * v15)) + ~(0x2500000000 * v15);
          v17 = (v16 ^ (v16 >> 22)) + ~((v16 ^ (v16 >> 22)) << 13);
          v18 = (9 * (v17 ^ (v17 >> 8))) ^ ((9 * (v17 ^ (v17 >> 8))) >> 15);
          v19 = (*&v46[16] - 1) & (((v18 + ~(v18 << 27)) >> 31) ^ (v18 + ~(v18 << 27)));
          v20 = (*v46 + 16 * v19);
          v21 = *v20;
          v22 = v20[1];
          if (*v20 == v10 && v22 == v15)
          {
            goto LABEL_14;
          }

          v26 = 0;
          v27 = 1;
          while (v21 != -1 || v22 != -1)
          {
            if (v26)
            {
              v28 = 0;
            }

            else
            {
              v28 = v22 == -2;
            }

            if (v28 && v21 == -2)
            {
              v26 = v20;
            }

            v30 = v19 + v27++;
            v19 = v30 & (*&v46[16] - 1);
            v20 = (*v46 + 16 * v19);
            v21 = *v20;
            v22 = v20[1];
            if (*v20 == v10 && v22 == v15)
            {
              goto LABEL_14;
            }
          }

          if (v26)
          {
            v24 = v26;
          }

          else
          {
            v24 = v20;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<unsigned int,unsigned int>>(v46, &v54, &v54, v24);
        *v25 = v54;
        v25[1] = v55;
LABEL_14:
        if (++v13 == v12)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_48:
    v40 = swift::reflection::TypeRef::subst(v44, v45, v46);
    __swift::__runtime::llvm::deallocate_buffer(*v46, (16 * *&v46[16]), 8uLL);
    return v40;
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,char const*>(char const*,int,unsigned int,int,char const*,char const*)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,char const*>(char const*,int,unsigned int,int,char const*,char const*)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      operator new();
    }

    if (result)
    {
      operator delete();
    }
  }

  else if (a2)
  {
    free(a3);
    return 0;
  }

  else
  {
    v3 = 0;
    swift_asprintf(&v3, *result, a3, *(result + 2), *(result + 3), *(result + 4), *(result + 3), *(result + 4));
    return v3;
  }

  return result;
}

void swift_asprintf(char **a1, const char *__format, ...)
{
  va_start(va, __format);
  v4 = vsnprintf(0, 0, __format, va);
  *a1 = 0;
  if ((v4 & 0x80000000) == 0)
  {
    v5 = (v4 + 1);
    v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
    if (v6)
    {
      v7 = v6;
      if (vsnprintf(v6, v5, __format, va) < 0)
      {
        free(v7);
      }

      else
      {
        *a1 = v7;
      }
    }
  }
}

uint64_t swift::reflection::ObjCClassTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, char *a2)
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
  v7 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1336), &v11);
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

void swift::reflection::TypeRefID::addString(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a3)
  {
    v16 = 0;
    std::vector<unsigned int>::push_back[abi:nn200100](a1, &v16);
    return;
  }

  if (a3 < 4)
  {
    v4 = 0;
    v5 = a3;
LABEL_9:
    v12 = &a2[v4];
    do
    {
      v13 = *v12++;
      v14 = v13;
      std::vector<unsigned int>::push_back[abi:nn200100](a1, &v14);
      --v5;
    }

    while (v5);
    return;
  }

  v6 = 0;
  v8 = a3 >> 2;
  v9 = a2;
  v10 = a2;
  do
  {
    v15 = *v10 + (v10[1] << 8) + (v10[2] << 16) + (v10[3] << 24);
    std::vector<unsigned int>::push_back[abi:nn200100](a1, &v15);
    v6 -= 4;
    v10 += 4;
    --v8;
  }

  while (v8);
  v4 = -v6;
  a2 = v9;
  v11 = a3 >= -v6;
  v5 = a3 + v6;
  if (v5 != 0 && v11)
  {
    goto LABEL_9;
  }
}

void *std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>(void *a1, char **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
    v7 = a1[1];
    if (!*&v7)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = *v5;
      v5 += 4;
      v4 ^= (v4 << 6) + (v4 >> 2) + 2654435769u + v6;
    }

    while (v5 != v2);
    v7 = a1[1];
    if (!*&v7)
    {
      return 0;
    }
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2 - v3;
    do
    {
      v14 = v12[1];
      if (v14 == v4)
      {
        v15 = v12[2];
        if (v12[3] - v15 == v13 && !memcmp(v15, v3, v13))
        {
          return v12;
        }
      }

      else
      {
        if (v9 <= 1)
        {
          v14 &= *&v7 - 1;
        }

        else if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }

        if (v14 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void std::vector<std::unique_ptr<swift::reflection::TypeRef const>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = v8 >> 3;
    v10 = (v8 >> 3) + 1;
    if (v10 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v3 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = *a2;
    *a2 = 0;
    *(8 * v9) = v13;
    v6 = 8 * v9 + 8;
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
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
  }

  *(a1 + 8) = v6;
}

void swift::reflection::ObjCClassTypeRef::~ObjCClassTypeRef(void **this)
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

void *std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::__emplace_unique_key_args<swift::reflection::TypeRefID,std::pair<swift::reflection::TypeRefID const,swift::reflection::ObjCClassTypeRef const*>>(void *a1, char **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
    v7 = a1[1];
    if (!*&v7)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = *v5;
      v5 += 4;
      v4 ^= (v4 << 6) + (v4 >> 2) + 2654435769u + v6;
    }

    while (v5 != v2);
    v7 = a1[1];
    if (!*&v7)
    {
      goto LABEL_24;
    }
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_24:
    operator new();
  }

  v13 = v2 - v3;
  while (1)
  {
    v14 = v12[1];
    if (v14 == v4)
    {
      break;
    }

    if (v9 <= 1)
    {
      v14 &= *&v7 - 1;
    }

    else if (v14 >= *&v7)
    {
      v14 %= *&v7;
    }

    if (v14 != v10)
    {
      goto LABEL_24;
    }

LABEL_16:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_24;
    }
  }

  v15 = v12[2];
  if (v12[3] - v15 != v13 || memcmp(v15, v3, v13))
  {
    goto LABEL_16;
  }

  return v12;
}

void std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void swift::reflection::TypeRefBuilder::createTypeDecl(std::string *a1@<X8>)
{
  swift::Demangle::__runtime::mangleNode();
  if (v9)
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[2].__r_.__value_.__s.__data_[8] = 0;
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    __p = v10;
LABEL_6:
    v6 = __p;
    goto LABEL_9;
  }

  std::string::__init_copy_ctor_external(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  std::string::__init_copy_ctor_external(&v6, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
LABEL_9:
  v7 = 0;
  v8 = 0;
  *a1 = v6;
  memset(&v6, 0, sizeof(v6));
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  a1[2].__r_.__value_.__s.__data_[0] = 0;
  a1[2].__r_.__value_.__s.__data_[8] = 1;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_11:
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void std::__optional_storage_base<swift::reflection::TypeRefDecl,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<swift::reflection::TypeRefDecl,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == *(a2 + 56))
  {
    if (*(a1 + 56))
    {

      swift::reflection::TypeRefDecl::operator=(a1, a2);
    }
  }

  else if (*(a1 + 56))
  {
    if (*(a1 + 48) == 1)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        *(a1 + 32) = v3;
        v4 = a1;
        operator delete(v3);
        a1 = v4;
      }
    }

    if (*(a1 + 23) < 0)
    {
      v5 = a1;
      operator delete(*a1);
      a1 = v5;
    }

    *(a1 + 56) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v6;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
    if (*(a2 + 48) == 1)
    {
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a1 + 48) = 1;
    }

    *(a1 + 56) = 1;
  }
}

__n128 swift::reflection::TypeRefDecl::operator=(void *a1, uint64_t a2)
{
  if (*(a1 + 23) < 0)
  {
    v3 = a1;
    operator delete(*a1);
    a1 = v3;
  }

  result = *a2;
  a1[2] = *(a2 + 16);
  *a1 = result;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      v5 = a1[3];
      if (v5)
      {
        a1[4] = v5;
        v6 = a1;
        operator delete(v5);
        a1 = v6;
        v6[3] = 0;
        v6[4] = 0;
        v6[5] = 0;
      }

      result = *(a2 + 24);
      *(a1 + 3) = result;
      a1[5] = *(a2 + 40);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
    }
  }

  else if (*(a1 + 48))
  {
    v7 = a1[3];
    if (v7)
    {
      a1[4] = v7;
      v8 = a1;
      operator delete(v7);
      a1 = v8;
    }

    *(a1 + 48) = 0;
  }

  else
  {
    a1[3] = 0;
    a1[4] = 0;
    a1[5] = 0;
    result = *(a2 + 24);
    *(a1 + 3) = result;
    a1[5] = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = 1;
  }

  return result;
}

uint64_t swift::reflection::NominalTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  __p = a3;
  std::vector<unsigned int>::push_back[abi:nn200100](&v13, &__p);
  std::vector<unsigned int>::push_back[abi:nn200100](&v13, &__p + 1);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  swift::reflection::TypeRefID::addString(&v13, v6, v7);
  v8 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 896), &v13);
  if (!v8)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, *a2, *(a2 + 8));
    }

    else
    {
      v12 = *a2;
    }

    operator new();
  }

  v9 = v8[5];
  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  return v9;
}

void swift::reflection::NominalTypeRef::~NominalTypeRef(void **this)
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

uint64_t std::optional<swift::reflection::TypeRefDecl>::~optional(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    if (*(result + 48) == 1)
    {
      v1 = *(result + 24);
      if (v1)
      {
        *(result + 32) = v1;
        v2 = result;
        operator delete(v1);
        result = v2;
      }
    }

    if (*(result + 23) < 0)
    {
      v3 = result;
      operator delete(*result);
      return v3;
    }
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,unsigned long>(char const*,int,unsigned int,int,char const*,unsigned long)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,unsigned long>(char const*,int,unsigned int,int,char const*,unsigned long)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      operator new();
    }

    if (result)
    {
      operator delete();
    }
  }

  else if (a2)
  {
    free(a3);
    return 0;
  }

  else
  {
    v3 = 0;
    swift_asprintf(&v3, *result, a3, *(result + 2), *(result + 3), *(result + 4), *(result + 3), *(result + 4));
    return v3;
  }

  return result;
}

uint64_t swift::reflection::BoundGenericTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift::reflection::BoundGenericTypeRef::Profile(a2, a3, a4, v12);
  v7 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 936), v12);
  if (!v7)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
    }

    else
    {
      v11 = *a2;
    }

    v9 = *(a3 + 8) - *a3;
    if (v9)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    swift::reflection::TypeRefBuilder::makeTypeRef<swift::reflection::BoundGenericTypeRef,std::string,std::vector<swift::reflection::TypeRef const*>,swift::reflection::TypeRef const*>();
  }

  v8 = v7[5];
  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v8;
}

uint64_t swift::reflection::TypeRefBuilder::createBoundGenericType(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 56) != 1)
  {
    return 0;
  }

  if (*(a2 + 48) != 1)
  {
    v13 = *a3;
    v12 = a3[1];
    v44 = 0;
    v45 = 0;
    v43 = 0;
    if (v12)
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    result = swift::reflection::BoundGenericTypeRef::create<swift::reflection::TypeRefBuilder>(a1, a2, &v43, 0);
    v14 = v43;
    if (v43)
    {
      v15 = result;
      v44 = v43;
LABEL_35:
      operator delete(v14);
      return v15;
    }

    return result;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v49 = 1;
  v6 = *(a2 + 23);
  v7 = *(a2 + 8);
  if (v6 < 0)
  {
    a2 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v42 = 0;
  v10 = swift::Demangle::__runtime::Demangler::demangleType(a1, a2, v8, v41);
  if (v42 == v41)
  {
    (*(*v42 + 32))(v42);
    if (!v10)
    {
LABEL_32:
      result = 0;
LABEL_33:
      v14 = v46;
      if (!v46)
      {
        return result;
      }

      v15 = result;
      v47 = v46;
      goto LABEL_35;
    }
  }

  else
  {
    if (v42)
    {
      (*(*v42 + 40))();
    }

    if (!v10)
    {
      goto LABEL_32;
    }
  }

  v16 = *(v10 + 18);
  if ((v16 - 1) >= 2 && (v16 != 5 || !*(v10 + 8)) || *(v10 + 16) != 243)
  {
    goto LABEL_32;
  }

  if ((v16 - 1) < 2)
  {
LABEL_31:
    v17 = *v10;
    goto LABEL_38;
  }

  if (v16 == 5 && *(v10 + 8))
  {
    v10 = *v10;
    goto LABEL_31;
  }

  v17 = 0;
LABEL_38:
  swift::Demangle::__runtime::mangleNode();
  if (v38)
  {
    result = 0;
    goto LABEL_60;
  }

  std::vector<unsigned long>::vector[abi:nn200100](&v36, &v46);
  v18 = v36;
  v19 = (v37 - v36) >> 3;
  if (v19 > 0x3E8)
  {
    goto LABEL_57;
  }

  v20 = a3[1];
  if (v20 > 0x3E8)
  {
    goto LABEL_57;
  }

  if (v37 == v36)
  {
    v21 = 0;
    v24 = a1;
LABEL_51:
    if (v21 == v20)
    {
      v26 = a3;
      v27 = v24;
      v28 = swift::reflection::TypeRefBuilder::reconstructParentsOfBoundGenericType(v24, v17, &v36);
      v29 = *v26 + 8 * v26[1];
      std::vector<swift::reflection::TypeRef const*>::vector[abi:nn200100]<swift::reflection::TypeRef const* const*,0>(v35, v29 - 8 * *(v37 - 1), v29);
      std::vector<swift::reflection::TypeRef const*>::vector[abi:nn200100](__p, v35);
      result = swift::reflection::BoundGenericTypeRef::create<swift::reflection::TypeRefBuilder>(v27, &v39, __p, v28);
      if (__p[0])
      {
        __p[1] = __p[0];
        v30 = result;
        operator delete(__p[0]);
        result = v30;
      }

      if (v35[0])
      {
        v35[1] = v35[0];
        v31 = result;
        operator delete(v35[0]);
        result = v31;
      }

      v18 = v36;
LABEL_58:
      if (!v18)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

LABEL_57:
    result = 0;
    goto LABEL_58;
  }

  v21 = 0;
  v22 = 0;
  if (v19 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = (v37 - v36) >> 3;
  }

  v24 = a1;
  while (1)
  {
    v25 = *(v36 + v22);
    if (v25 > v20)
    {
      break;
    }

    v21 += v25;
    if (v23 == ++v22)
    {
      goto LABEL_51;
    }
  }

  result = 0;
LABEL_59:
  v37 = v18;
  v32 = result;
  operator delete(v18);
  result = v32;
LABEL_60:
  if (v40 < 0)
  {
    v33 = result;
    operator delete(v39);
    result = v33;
  }

  if (v49)
  {
    goto LABEL_33;
  }

  return result;
}

void swift::reflection::BoundGenericTypeRef::Profile(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v13 = a3;
  std::vector<unsigned int>::push_back[abi:nn200100](a4, &v13);
  std::vector<unsigned int>::push_back[abi:nn200100](a4, &v13 + 1);
  v7 = *(a1 + 23);
  if (v7 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 23);
  }

  else
  {
    v9 = *(a1 + 8);
  }

  swift::reflection::TypeRefID::addString(a4, v8, v9);
  v11 = *a2;
  v10 = a2[1];
  while (v11 != v10)
  {
    v12 = *v11++;
    v13 = v12;
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v13);
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v13 + 1);
  }
}

void swift::reflection::BoundGenericTypeRef::~BoundGenericTypeRef(swift::reflection::BoundGenericTypeRef *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  operator delete();
}

void *std::vector<swift::reflection::TypeRef const*>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void *std::vector<swift::reflection::TypeRef const*>::vector[abi:nn200100]<swift::reflection::TypeRef const* const*,0>(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    if (((a3 - a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t swift::reflection::TypeRefBuilder::reconstructParentsOfBoundGenericType(uint64_t a1, uint64_t *a2, void *a3)
{
  if (a3[1] - *a3 == 8)
  {
    return 0;
  }

  do
  {
    if (!a2)
    {
      break;
    }

    v5 = *(a2 + 18);
    if ((v5 - 1) >= 2)
    {
      if (v5 != 5 || !*(a2 + 2))
      {
        return 0;
      }

      a2 = *a2;
    }

    a2 = *a2;
    v6 = *(a2 + 8);
    if (v6 == 25 || v6 == 230 || v6 == 63)
    {
      operator new();
    }
  }

  while ((a3[1] - *a3) >> 3 != 1);
  return 0;
}

void *std::vector<unsigned long>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,swift::Demangle::__runtime::ManglingError::Code,unsigned int>(char const*,int,unsigned int,int,char const*,swift::Demangle::__runtime::ManglingError::Code,unsigned int)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,swift::Demangle::__runtime::ManglingError::Code,unsigned int>(char const*,int,unsigned int,int,char const*,swift::Demangle::__runtime::ManglingError::Code,unsigned int)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      operator new();
    }

    if (result)
    {
      operator delete();
    }
  }

  else if (a2)
  {
    free(a3);
    return 0;
  }

  else
  {
    v3 = 0;
    swift_asprintf(&v3, *result, a3, *(result + 2), *(result + 3), *(result + 4), *(result + 3), *(result + 8), *(result + 9));
    return v3;
  }

  return result;
}

uint64_t swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, char *a2)
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
  v7 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 856), &v11);
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

void swift::reflection::BuiltinTypeRef::~BuiltinTypeRef(void **this)
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

uint64_t swift::reflection::MetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, void *a2, int a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  __p = a2;
  std::vector<unsigned int>::push_back[abi:nn200100](&v9, &__p);
  std::vector<unsigned int>::push_back[abi:nn200100](&v9, &__p + 1);
  LODWORD(__p) = a3;
  std::vector<unsigned int>::push_back[abi:nn200100](&v9, &__p);
  v5 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1136), &v9);
  if (!v5)
  {
    operator new();
  }

  v6 = v5[5];
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  return v6;
}

uint64_t swift::reflection::ExistentialMetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  __p = a2;
  std::vector<unsigned int>::push_back[abi:nn200100](&v7, &__p);
  std::vector<unsigned int>::push_back[abi:nn200100](&v7, &__p + 1);
  v3 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1176), &v7);
  if (!v3)
  {
    operator new();
  }

  v4 = v3[5];
  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  return v4;
}

double swift::reflection::TypeRefBuilder::createProtocolDecl@<D0>(std::string *a1@<X8>)
{
  swift::Demangle::__runtime::mangleNode();
  if (v6)
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[8] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = __p;
  }

  result = *&v5.__r_.__value_.__l.__data_;
  *a1 = v5;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[8] = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_3:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return result;
}

void __swift::__runtime::llvm::SmallVectorTemplateBase<std::optional<std::pair<std::string,BOOL>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a2, 40, &v13);
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = 40 * v5;
    v7 = v3 + 32;
    do
    {
      *(v7 - 32) = 0;
      *v7 = 0;
      if (*(v4 + 32) == 1)
      {
        v8 = *v4;
        *(v7 - 2) = v4[2];
        *(v7 - 2) = v8;
        v4[1] = 0;
        v4[2] = 0;
        *v4 = 0;
        *(v7 - 8) = *(v4 + 24);
        *v7 = 1;
      }

      v4 += 5;
      v7 += 40;
      v6 -= 40;
    }

    while (v6);
    v4 = *a1;
    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = &v4[5 * v9 - 2] - 1;
      v11 = -40 * v9;
      do
      {
        if (v10[9] == 1 && *v10 < 0)
        {
          operator delete(*(v10 - 23));
        }

        v10 -= 40;
        v11 += 40;
      }

      while (v11);
      v4 = *a1;
    }
  }

  v12 = v13;
  if (v4 != (a1 + 16))
  {
    free(v4);
  }

  *a1 = v3;
  *(a1 + 12) = v12;
}

uint64_t swift::reflection::TypeRefBuilder::createProtocolTypeFromDecl(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) != 1)
  {
    v18 = v2;
    v19 = v3;
    if (*(a2 + 23) < 0)
    {
      v5 = a1;
      std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
      a1 = v5;
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = *a2;
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_7:
        v9 = v8;
        goto LABEL_10;
      }
    }

    v6 = a1;
    std::string::__init_copy_ctor_external(&v9, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    a1 = v6;
LABEL_10:
    LOBYTE(__p) = 0;
    v12 = 0;
    v13 = v9;
    memset(&v9, 0, sizeof(v9));
    LOBYTE(v14) = 0;
    v16 = 0;
    v17 = 1;
    v7 = swift::reflection::NominalTypeRef::create<swift::reflection::TypeRefBuilder>(a1, &v13, 0);
    if (v17 == 1)
    {
      if (v16 == 1 && v14)
      {
        v15 = v14;
        operator delete(v14);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }

    if (v12 == 1 && __p)
    {
      v11 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v7;
      }
    }

    else if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v7;
    }

    operator delete(v8.__r_.__value_.__l.__data_);
    return v7;
  }

  return swift::reflection::ObjCProtocolTypeRef::create<swift::reflection::TypeRefBuilder>(a1, a2);
}

void std::vector<swift::reflection::TypeRef const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
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
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
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

uint64_t swift::reflection::ProtocolCompositionTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2[1];
  if (v7 != *a2)
  {
    if (((v7 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_13;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  LODWORD(v12[0]) = a4;
  std::vector<unsigned int>::push_back[abi:nn200100](&v13, v12);
  v12[0] = a3;
  std::vector<unsigned int>::push_back[abi:nn200100](&v13, v12);
  std::vector<unsigned int>::push_back[abi:nn200100](&v13, v12 + 1);
  v8 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1056), &v13);
  if (!v8)
  {
    memset(&v12[4], 0, 24);
    v10 = a2[1] - *a2;
    if (!v10)
    {
      swift::reflection::TypeRefBuilder::makeTypeRef<swift::reflection::ProtocolCompositionTypeRef,std::vector<swift::reflection::TypeRef const*>,swift::reflection::TypeRef const*,BOOL>();
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_13:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = v8[5];
  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  return v9;
}

uint64_t swift::reflection::ObjCProtocolTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, char *a2)
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
  v7 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1376), &v11);
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

void swift::reflection::ObjCProtocolTypeRef::~ObjCProtocolTypeRef(void **this)
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

void swift::reflection::ProtocolCompositionTypeRef::~ProtocolCompositionTypeRef(swift::reflection::ProtocolCompositionTypeRef *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    *(this + 3) = v1;
    operator delete(v1);
  }
}

{
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

char **__swift::__runtime::llvm::SmallVector<std::optional<std::pair<std::string,BOOL>>,8u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[40 * v3 - 17];
    v5 = -40 * v3;
    do
    {
      if (v4[9] == 1 && *v4 < 0)
      {
        operator delete(*(v4 - 23));
      }

      v4 -= 40;
      v5 += 40;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t swift::reflection::ConstrainedExistentialTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, unint64_t a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  __p = 0;
  v5 = a3[1];
  if (v5 != *a3)
  {
    if (((v5 - *a3) & 0x8000000000000000) == 0)
    {
      v6 = v5 - *a3;
      operator new();
    }

    goto LABEL_15;
  }

  swift::reflection::ConstrainedExistentialTypeRef::Profile(a2, &__p, v14);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  v7 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1096), v14);
  if (!v7)
  {
    v9 = a3[1] - *a3;
    if (!v9)
    {
      swift::reflection::TypeRefBuilder::makeTypeRef<swift::reflection::ConstrainedExistentialTypeRef,swift::reflection::ProtocolCompositionTypeRef const*,std::vector<swift::reflection::TypeRefRequirement>>();
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_15:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = v7[5];
  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  return v8;
}

void swift::reflection::ConstrainedExistentialTypeRef::Profile(unint64_t a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v11 = a1;
  std::vector<unsigned int>::push_back[abi:nn200100](a3, &v11);
  std::vector<unsigned int>::push_back[abi:nn200100](a3, &v11 + 1);
  v6 = *a2;
  v5 = a2[1];
  while (v6 != v5)
  {
    v8 = *v6;
    v9 = v6[1];
    v11 = *v6 & 0xFFFFFFFFFFFFFFF8;
    std::vector<unsigned int>::push_back[abi:nn200100](a3, &v11);
    std::vector<unsigned int>::push_back[abi:nn200100](a3, &v11 + 1);
    v10 = v8 & 7;
    if (v10 == 3)
    {
      LODWORD(v11) = 0;
      v7 = &v11;
    }

    else
    {
      v11 = v9;
      std::vector<unsigned int>::push_back[abi:nn200100](a3, &v11);
      v7 = (&v11 + 4);
    }

    std::vector<unsigned int>::push_back[abi:nn200100](a3, v7);
    LODWORD(v11) = v10;
    std::vector<unsigned int>::push_back[abi:nn200100](a3, &v11);
    v6 += 2;
  }
}

void swift::reflection::ConstrainedExistentialTypeRef::~ConstrainedExistentialTypeRef(swift::reflection::ConstrainedExistentialTypeRef *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    *(this + 4) = v1;
    operator delete(v1);
  }
}

{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

uint64_t swift::reflection::GenericTypeParameterTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, int a2, int a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  LODWORD(__p) = a2;
  std::vector<unsigned int>::push_back[abi:nn200100](&v9, &__p);
  LODWORD(__p) = a3;
  std::vector<unsigned int>::push_back[abi:nn200100](&v9, &__p);
  v5 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1216), &v9);
  if (!v5)
  {
    operator new();
  }

  v6 = v5[5];
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  return v6;
}

char *swift::TypeLookupError::TypeLookupError<swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,unsigned long,unsigned int>(char const*,int,unsigned int,int,char const*,unsigned long,unsigned int)::{lambda(void)#1}>(swift::TypeLookupError swift::TypeLookupErrorImpl<int,unsigned int,int,char const*,unsigned long,unsigned int>(char const*,int,unsigned int,int,char const*,unsigned long,unsigned int)::{lambda(void)#1} const&)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke(char *result, int a2, void *a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      operator new();
    }

    if (result)
    {
      operator delete();
    }
  }

  else if (a2)
  {
    free(a3);
    return 0;
  }

  else
  {
    v3 = 0;
    swift_asprintf(&v3, *result, a3, *(result + 2), *(result + 3), *(result + 4), *(result + 3), *(result + 4), *(result + 10));
    return v3;
  }

  return result;
}

void *swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledFunctionInputType(swift::Demangle::__runtime::Node *,unsigned int,llvm::SmallVectorImpl<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>> &,BOOL &)::{lambda(swift::Demangle::__runtime::Node *)#1}::operator()@<X0>(void *result@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = (a2 + 2);
  if (*(a2 + 8) == 235)
  {
    v5 = result;
    v13 = 0uLL;
    v14 = 0;
    v6 = *(a2 + 18);
    v7 = a2;
    if ((v6 - 1) >= 2)
    {
      if (v6 == 5)
      {
        v8 = *a2;
        v7 = *a2;
        goto LABEL_10;
      }

      v7 = 0;
    }

    switch(v6)
    {
      case 1:
        v4 = (a2 + 1);
        if (v7 != a2 + 1)
        {
          goto LABEL_18;
        }

        goto LABEL_30;
      case 2:
        goto LABEL_18;
      case 5:
        v8 = *a2;
LABEL_10:
        v4 = &v8[*(a2 + 2)];
        if (v7 != v4)
        {
          goto LABEL_18;
        }

        goto LABEL_30;
    }

    v4 = 0;
    if (v7)
    {
      while (1)
      {
LABEL_18:
        v9 = *v7;
        v10 = *(*v7 + 16);
        if (v10 == 289)
        {
          v14 |= 0x80u;
          **v5 = 1;
          goto LABEL_17;
        }

        if (v10 != 243)
        {
          if (v10 != 236)
          {
            operator new();
          }

          v13 = *v9;
          goto LABEL_17;
        }

        v11 = *(v9 + 18);
        if ((v11 - 1) < 2)
        {
          goto LABEL_26;
        }

        if (v11 == 5 && *(v9 + 2))
        {
          break;
        }

        v12 = 0;
LABEL_28:
        result = swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledFunctionInputType(swift::Demangle::__runtime::Node *,unsigned int,llvm::SmallVectorImpl<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>> &,BOOL &)::{lambda(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>&)#1}::operator()(v5[1], v12, &v13, a3);
        if (a3[16])
        {
          return result;
        }

LABEL_17:
        if (++v7 == v4)
        {
          goto LABEL_30;
        }
      }

      v9 = *v9;
LABEL_26:
      v12 = *v9;
      goto LABEL_28;
    }
  }

LABEL_30:
  *a3 = 0;
  a3[16] = 0;
  return result;
}

void *swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledFunctionInputType(swift::Demangle::__runtime::Node *,unsigned int,llvm::SmallVectorImpl<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>> &,BOOL &)::{lambda(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>&)#1}::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 24);
  v6 = *(a3 + 24);
  while (1)
  {
    v7 = *(a2 + 16);
    if (v7 <= 0xDA)
    {
      break;
    }

    switch(v7)
    {
      case 0xDBu:
        v6 = v6 & 0xFFFFFF80 | 2;
        break;
      case 0xDCu:
        v6 = v6 & 0xFFFFFF80 | 3;
        break;
      case 0x154u:
        v6 |= 0x200u;
        break;
      default:
        return swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeTypeSequenceElement<swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledFunctionInputType(swift::Demangle::__runtime::Node *,unsigned int,llvm::SmallVectorImpl<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>> &,BOOL &)::{lambda(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>&)#1}::operator() const(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>&)::{lambda(swift::reflection::TypeRef const*)#1}>(v5, a2, (**(a1 + 8) + 1), a3, *(a1 + 16), a4);
    }

LABEL_20:
    *(a3 + 24) = v6;
    v8 = *(a2 + 18);
    if ((v8 - 1) < 2)
    {
      goto LABEL_4;
    }

    if (v8 == 5 && *(a2 + 8))
    {
      a2 = *a2;
LABEL_4:
      a2 = *a2;
      goto LABEL_5;
    }

    a2 = 0;
LABEL_5:
    **a1 = 1;
  }

  if (*(a2 + 16) > 0x83u)
  {
    if (v7 == 132)
    {
      v6 |= 0x400u;
    }

    else
    {
      if (v7 != 134)
      {
        return swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeTypeSequenceElement<swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledFunctionInputType(swift::Demangle::__runtime::Node *,unsigned int,llvm::SmallVectorImpl<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>> &,BOOL &)::{lambda(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>&)#1}::operator() const(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>&)::{lambda(swift::reflection::TypeRef const*)#1}>(v5, a2, (**(a1 + 8) + 1), a3, *(a1 + 16), a4);
      }

      v6 |= 0x800u;
    }

    goto LABEL_20;
  }

  if (v7 == 128)
  {
    v6 = v6 & 0xFFFFFF80 | 1;
    goto LABEL_20;
  }

  if (v7 == 11 || v7 == 66)
  {
    *(a3 + 24) = v6 | 0x100;
    **a1 = 1;
  }

  return swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeTypeSequenceElement<swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledFunctionInputType(swift::Demangle::__runtime::Node *,unsigned int,llvm::SmallVectorImpl<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>> &,BOOL &)::{lambda(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>&)#1}::operator() const(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>&)::{lambda(swift::reflection::TypeRef const*)#1}>(v5, a2, (**(a1 + 8) + 1), a3, *(a1 + 16), a4);
}

char *_ZZN5swift15TypeLookupErrorC1IZNS_L19TypeLookupErrorImplIJEEES0_PKcDpT_EUlvE_EERKT_ENUlPvNS0_7CommandESB_E_8__invokeESB_SC_SB_(char *result, int a2, void *a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      operator new();
    }

    if (result)
    {
      operator delete();
    }
  }

  else if (a2)
  {
    free(a3);
    return 0;
  }

  else
  {
    v3 = 0;
    swift_asprintf(&v3, *result, a3);
    return v3;
  }

  return result;
}

void *swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeTypeSequenceElement<swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledFunctionInputType(swift::Demangle::__runtime::Node *,unsigned int,llvm::SmallVectorImpl<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>> &,BOOL &)::{lambda(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>&)#1}::operator() const(swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>&)::{lambda(swift::reflection::TypeRef const*)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a2 + 8) == 243)
  {
    v9 = *(a2 + 18);
    if ((v9 - 1) < 2)
    {
LABEL_6:
      a2 = *a2;
      goto LABEL_8;
    }

    if (v9 == 5 && *(a2 + 2))
    {
      a2 = *a2;
      goto LABEL_6;
    }

    a2 = 0;
  }

LABEL_8:
  if (*(a2 + 8) == 240)
  {
    v10 = *(a2 + 18);
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v20 = *(a2 + 2);
        v21 = *a2;
        goto LABEL_27;
      }

      if (v10 != 5 || *(a2 + 2) <= 1u)
      {
LABEL_27:
        operator new();
      }

      a2 = *a2;
    }

    else if (v10 != 2)
    {
      goto LABEL_27;
    }

    v22 = *a2;
    swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v43, a1, a2[1], a3, 1);
    if (v45 == 1)
    {
      v25 = v43;
      v26 = v44;
      *(a6 + 8) = v44;
      result = v26(v25, 2, 0);
      v27 = 0;
      *a6 = result;
      *(a6 + 16) = 1;
    }

    else
    {
      v28 = *a1;
      if (v45)
      {
        v29 = 0;
      }

      else
      {
        v29 = v43;
      }

      v40 = v29;
      std::vector<swift::reflection::TypeRef const*>::push_back[abi:nn200100](v28 + 624, &v40);
      swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v40, a1, v22, a3, 1);
      v30 = v42;
      if (v42 == 1)
      {
        v31 = v40;
        v32 = v41;
        *(a6 + 8) = v41;
        result = v32(v31, 2, 0);
        *a6 = result;
        *(a6 + 16) = 1;
      }

      else
      {
        if (v42)
        {
          v33 = 0;
        }

        else
        {
          v33 = v40;
        }

        result = swift::reflection::PackExpansionTypeRef::create<swift::reflection::TypeRefBuilder>(*a1, v33, *(*(*a1 + 632) - 8));
        *(a4 + 16) = result;
        v34 = *(a5 + 8);
        v35 = *a5;
        if (v34 >= *(a5 + 12))
        {
          if (v35 <= a4 && v35 + 32 * v34 > a4)
          {
            v39 = a4 - v35;
            result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v34 + 1, 32);
            v35 = *a5;
            a4 = *a5 + v39;
          }

          else
          {
            result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v34 + 1, 32);
            v35 = *a5;
          }
        }

        v36 = (v35 + 32 * *(a5 + 8));
        v37 = *(a4 + 16);
        *v36 = *a4;
        v36[1] = v37;
        ++*(a5 + 8);
      }

      if (v42 == 1)
      {
        result = v41(v40, 3, 0);
      }

      if (v30 == 1)
      {
        v27 = 0;
      }

      else
      {
        *(*a1 + 632) -= 8;
        v27 = 1;
      }
    }

    if (v45 == 1)
    {
      result = v44(v43, 3, 0);
    }

    if (v27)
    {
      goto LABEL_49;
    }
  }

  else
  {
    result = swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v43, a1, a2, a3, 0);
    v12 = v45;
    if (v45 == 1)
    {
      v13 = v43;
      v14 = v44;
      *(a6 + 8) = v44;
      result = v14(v13, 2, 0);
      *a6 = result;
      *(a6 + 16) = 1;
    }

    else
    {
      v15 = v43;
      if (v45)
      {
        v15 = 0;
      }

      *(a4 + 16) = v15;
      v16 = *(a5 + 8);
      v17 = *a5;
      if (v16 >= *(a5 + 12))
      {
        if (v17 <= a4 && v17 + 32 * v16 > a4)
        {
          v38 = a4 - v17;
          result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v16 + 1, 32);
          v17 = *a5;
          a4 = *a5 + v38;
        }

        else
        {
          result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v16 + 1, 32);
          v17 = *a5;
        }
      }

      v18 = (v17 + 32 * *(a5 + 8));
      v19 = *(a4 + 16);
      *v18 = *a4;
      v18[1] = v19;
      ++*(a5 + 8);
    }

    if (v45 == 1)
    {
      result = v44(v43, 3, 0);
    }

    if (v12 != 1)
    {
LABEL_49:
      *a6 = 0;
      *(a6 + 16) = 0;
    }
  }

  return result;
}

uint64_t swift::reflection::PackExpansionTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, void *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  __p = a2;
  std::vector<unsigned int>::push_back[abi:nn200100](&v9, &__p);
  std::vector<unsigned int>::push_back[abi:nn200100](&v9, &__p + 1);
  __p = a3;
  std::vector<unsigned int>::push_back[abi:nn200100](&v9, &__p);
  std::vector<unsigned int>::push_back[abi:nn200100](&v9, &__p + 1);
  v5 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1816), &v9);
  if (!v5)
  {
    operator new();
  }

  v6 = v5[5];
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  return v6;
}

uint64_t swift::reflection::FunctionTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, int a5, uint64_t a6, char *a7, char *a8)
{
  swift::reflection::FunctionTypeRef::Profile(a2, a3, a4, a5, a6, a7, a8, v14);
  v10 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1016), v14);
  if (!v10)
  {
    v12 = a2[1] - *a2;
    if (v12)
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    swift::reflection::TypeRefBuilder::makeTypeRef<swift::reflection::FunctionTypeRef,std::vector<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>>,swift::reflection::TypeRef const*,swift::TargetFunctionTypeFlags<unsigned long>,swift::TargetExtendedFunctionTypeFlags<unsigned int>,swift::TargetFunctionMetadataDifferentiabilityKind<unsigned long>,swift::reflection::TypeRef const*,swift::reflection::TypeRef const*>();
  }

  v11 = v10[5];
  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  return v11;
}

void swift::reflection::FunctionTypeRef::Profile(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, void *a8@<X8>)
{
  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
  v9 = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    do
    {
      v11 = *v9;
      if (*v9)
      {
        v12 = *(v9 + 8);
        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (v12 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v26) = *(v9 + 8);
        if (v12)
        {
          memmove(&__dst, v11, v12);
        }

        *(&__dst + v12) = 0;
        v15 = HIBYTE(v26);
        v14 = __dst;
        v13 = v25;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        __dst = 0;
        v25 = 0;
        v26 = 0;
      }

      if ((v15 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = v14;
      }

      if ((v15 & 0x80u) == 0)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      swift::reflection::TypeRefID::addString(a8, p_dst, v17);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__dst);
      }

      __dst = *(v9 + 16);
      std::vector<unsigned int>::push_back[abi:nn200100](a8, &__dst);
      std::vector<unsigned int>::push_back[abi:nn200100](a8, &__dst + 1);
      LODWORD(__dst) = *(v9 + 24);
      std::vector<unsigned int>::push_back[abi:nn200100](a8, &__dst);
      v9 += 32;
    }

    while (v9 != v10);
  }

  __dst = a2;
  std::vector<unsigned int>::push_back[abi:nn200100](a8, &__dst);
  std::vector<unsigned int>::push_back[abi:nn200100](a8, &__dst + 1);
  LODWORD(__dst) = a3;
  std::vector<unsigned int>::push_back[abi:nn200100](a8, &__dst);
  LODWORD(__dst) = HIDWORD(a3);
  std::vector<unsigned int>::push_back[abi:nn200100](a8, &__dst);
  LODWORD(__dst) = a4;
  std::vector<unsigned int>::push_back[abi:nn200100](a8, &__dst);
  LODWORD(__dst) = 0;
  std::vector<unsigned int>::push_back[abi:nn200100](a8, &__dst);
  LODWORD(__dst) = a5;
  std::vector<unsigned int>::push_back[abi:nn200100](a8, &__dst);
  LODWORD(__dst) = HIDWORD(a5);
  std::vector<unsigned int>::push_back[abi:nn200100](a8, &__dst);
  __dst = a6;
  std::vector<unsigned int>::push_back[abi:nn200100](a8, &__dst);
  std::vector<unsigned int>::push_back[abi:nn200100](a8, &__dst + 1);
  __dst = a7;
  std::vector<unsigned int>::push_back[abi:nn200100](a8, &__dst);
  std::vector<unsigned int>::push_back[abi:nn200100](a8, &__dst + 1);
}

void swift::reflection::FunctionTypeRef::~FunctionTypeRef(swift::reflection::FunctionTypeRef *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    *(this + 3) = v1;
    operator delete(v1);
  }
}

{
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

uint64_t swift::Demangle::__runtime::ImplFunctionParam<swift::reflection::TypeRef const*>::getConventionFromString(uint64_t a1, uint64_t __n)
{
  if (__n <= 10)
  {
    if (__n == 3)
    {
      if (*a1 == 26944 && *(a1 + 2) == 110)
      {
        v3 = 0;
        v2 = 0x100000000;
        return v3 | v2;
      }
    }

    else if (__n == 6)
    {
      if (!memcmp(a1, "@inout", 6uLL))
      {
        v2 = 0x100000000;
        v3 = 3;
        return v3 | v2;
      }

      if (!memcmp(a1, "@owned", 6uLL))
      {
        v2 = 0x100000000;
        v3 = 5;
        return v3 | v2;
      }
    }

    else if (__n == 8 && !memcmp(a1, "@unowned", 8uLL))
    {
      v2 = 0x100000000;
      v3 = 6;
      return v3 | v2;
    }

LABEL_34:
    v2 = 0;
    v3 = 0;
    return v3 | v2;
  }

  if (__n > 13)
  {
    if (__n == 14)
    {
      if (!memcmp(a1, "@in_guaranteed", 0xEuLL))
      {
        v2 = 0x100000000;
        v3 = 2;
        return v3 | v2;
      }
    }

    else if (__n == 16)
    {
      if (!memcmp(a1, "@inout_aliasable", 0x10uLL))
      {
        v2 = 0x100000000;
        v3 = 4;
        return v3 | v2;
      }

      if (!memcmp(a1, "@pack_guaranteed", 0x10uLL))
      {
        v2 = 0x100000000;
        v3 = 9;
        return v3 | v2;
      }
    }

    goto LABEL_34;
  }

  if (__n == 11)
  {
    if (!memcmp(a1, "@guaranteed", 0xBuLL))
    {
      v2 = 0x100000000;
      v3 = 7;
      return v3 | v2;
    }

    if (*a1 == 0x776F5F6B63617040 && *(a1 + 3) == 0x64656E776F5F6B63)
    {
      v2 = 0x100000000;
      v3 = 8;
      return v3 | v2;
    }

    if (!memcmp(a1, "@pack_inout", 0xBuLL))
    {
      v2 = 0x100000000;
      v3 = 10;
      return v3 | v2;
    }

    goto LABEL_34;
  }

  if (__n != 12 || memcmp(a1, "@in_constant", 0xCuLL))
  {
    goto LABEL_34;
  }

  v2 = 0x100000000;
  v3 = 1;
  return v3 | v2;
}

uint64_t __swift::__runtime::llvm::SmallVectorImpl<swift::Demangle::__runtime::ImplFunctionParam<swift::reflection::TypeRef const*>>::emplace_back<swift::reflection::TypeRef const*,swift::Demangle::__runtime::ImplParameterConvention &,swift::optionset::OptionSet<swift::Demangle::__runtime::ImplParameterInfoFlags,unsigned char> &>(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned __int8 *a4)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    return __swift::__runtime::llvm::SmallVectorTemplateBase<swift::Demangle::__runtime::ImplFunctionParam<swift::reflection::TypeRef const*>,true>::growAndEmplaceBack<swift::reflection::TypeRef const*,swift::Demangle::__runtime::ImplParameterConvention &,swift::optionset::OptionSet<swift::Demangle::__runtime::ImplParameterInfoFlags,unsigned char> &>(a1, a2, a3, a4);
  }

  v5 = *a1 + 16 * v4;
  v6 = *a3;
  v7 = *a4;
  *v5 = *a2;
  *(v5 + 8) = v6;
  *(v5 + 12) = v7;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 16 * v5 - 16;
}

uint64_t __swift::__runtime::llvm::SmallVectorTemplateBase<swift::Demangle::__runtime::ImplFunctionParam<swift::reflection::TypeRef const*>,true>::growAndEmplaceBack<swift::reflection::TypeRef const*,swift::Demangle::__runtime::ImplParameterConvention &,swift::optionset::OptionSet<swift::Demangle::__runtime::ImplParameterInfoFlags,unsigned char> &>(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned __int8 *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  v7 = *(a1 + 8);
  if (v7 >= *(a1 + 12))
  {
    v10 = a1;
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v7 + 1, 16);
    a1 = v10;
    LODWORD(v7) = *(v10 + 8);
  }

  v8 = (*a1 + 16 * v7);
  *v8 = v4;
  v8[1] = v5 | (v6 << 32);
  LODWORD(v8) = *(a1 + 8) + 1;
  *(a1 + 8) = v8;
  return *a1 + 16 * v8 - 16;
}

uint64_t swift::Demangle::__runtime::ImplFunctionResult<swift::reflection::TypeRef const*>::getConventionFromString(_DWORD *a1, uint64_t __n)
{
  if (__n > 8)
  {
    if (__n == 9)
    {
      if (!memcmp(a1, "@pack_out", 9uLL))
      {
        v2 = 0x100000000;
        v3 = 5;
        return v3 | v2;
      }
    }

    else if (__n == 13)
    {
      if (!memcmp(a1, "@autoreleased", 0xDuLL))
      {
        v2 = 0x100000000;
        v3 = 4;
        return v3 | v2;
      }
    }

    else if (__n == 22 && !memcmp(a1, "@unowned_inner_pointer", 0x16uLL))
    {
      v2 = 0x100000000;
      v3 = 3;
      return v3 | v2;
    }

LABEL_19:
    v2 = 0;
    v3 = 0;
    return v3 | v2;
  }

  if (__n == 4)
  {
    if (*a1 == 1953853248)
    {
      v3 = 0;
      v2 = 0x100000000;
      return v3 | v2;
    }

    goto LABEL_19;
  }

  if (__n == 6)
  {
    if (!memcmp(a1, "@owned", 6uLL))
    {
      v2 = 0x100000000;
      v3 = 1;
      return v3 | v2;
    }

    goto LABEL_19;
  }

  if (__n != 8 || memcmp(a1, "@unowned", 8uLL))
  {
    goto LABEL_19;
  }

  v2 = 0x100000000;
  v3 = 2;
  return v3 | v2;
}

uint64_t swift::reflection::TupleTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift::reflection::TupleTypeRef::Profile(a2, a3, v12);
  v6 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 976), v12);
  if (!v6)
  {
    v8 = *(a2 + 8);
    if (v8 != *a2)
    {
      if (((v8 - *a2) & 0x8000000000000000) == 0)
      {
        v9 = v8 - *a2;
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = *(a3 + 8) - *a3;
    if (v10)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v10 >> 3) < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  v7 = v6[5];
  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v7;
}

void std::vector<std::string>::__init_with_size[abi:nn200100]<__swift::__runtime::llvm::StringRef const*,__swift::__runtime::llvm::StringRef const*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void swift::reflection::TupleTypeRef::Profile(std::string::size_type **a1@<X0>, __int128 **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      v7 = *v5++;
      __p.__r_.__value_.__r.__words[0] = v7;
      std::vector<unsigned int>::push_back[abi:nn200100](a3, &__p);
      std::vector<unsigned int>::push_back[abi:nn200100](a3, __p.__r_.__value_.__r.__words + 1);
    }

    while (v5 != v6);
  }

  v9 = *a2;
  for (i = a2[1]; v9 != i; v9 = (v9 + 24))
  {
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      __p.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&__p.__r_.__value_.__l.__data_ = v10;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    swift::reflection::TypeRefID::addString(a3, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void swift::reflection::TupleTypeRef::~TupleTypeRef(swift::reflection::TupleTypeRef *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }
}

{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }

  operator delete();
}

uint64_t swift::reflection::PackTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, void ***a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = *v4++;
      __p = v6;
      std::vector<unsigned int>::push_back[abi:nn200100](&v12, &__p);
      std::vector<unsigned int>::push_back[abi:nn200100](&v12, &__p + 1);
    }

    while (v4 != v5);
  }

  v7 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1776), &v12);
  if (!v7)
  {
    v9 = a2[1] - *a2;
    if (v9)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  v8 = v7[5];
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return v8;
}

void swift::reflection::PackTypeRef::~PackTypeRef(swift::reflection::PackTypeRef *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    *(this + 3) = v1;
    operator delete(v1);
  }
}

{
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

uint64_t swift::reflection::DependentMemberTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v8 = a2[23];
  v9 = *(a2 + 1);
  if (v8 < 0)
  {
    a2 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  swift::reflection::TypeRefID::addString(&v20, a2, v10);
  __p = a3;
  std::vector<unsigned int>::push_back[abi:nn200100](&v20, &__p);
  std::vector<unsigned int>::push_back[abi:nn200100](&v20, &__p + 1);
  v11 = *(a4 + 23);
  if (v11 >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = *a4;
  }

  if (v11 >= 0)
  {
    v13 = *(a4 + 23);
  }

  else
  {
    v13 = *(a4 + 8);
  }

  swift::reflection::TypeRefID::addString(&v20, v12, v13);
  v14 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1256), &v20);
  if (!v14)
  {
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, *v6, v6[1]);
      if ((*(a4 + 23) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = *v6;
      if ((*(a4 + 23) & 0x80000000) == 0)
      {
LABEL_16:
        v18 = *a4;
        goto LABEL_19;
      }
    }

    std::string::__init_copy_ctor_external(&v18, *a4, *(a4 + 8));
LABEL_19:
    swift::reflection::TypeRefBuilder::makeTypeRef<swift::reflection::DependentMemberTypeRef,std::string,swift::reflection::TypeRef const*,std::string>();
  }

  v15 = v14[5];
  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  return v15;
}

void swift::reflection::DependentMemberTypeRef::~DependentMemberTypeRef(void **this)
{
  if ((*(this + 71) & 0x80000000) == 0)
  {
    if ((*(this + 39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[2]);
    return;
  }

  operator delete(this[6]);
  if (*(this + 39) < 0)
  {
    goto LABEL_5;
  }
}

{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(this + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[2]);
LABEL_3:

  operator delete();
}

std::string *std::optional<std::pair<std::string,BOOL>>::optional[abi:nn200100](std::string *result, __int128 *a2)
{
  result->__r_.__value_.__s.__data_[0] = 0;
  result[1].__r_.__value_.__s.__data_[8] = 0;
  if (*(a2 + 32) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v3 = result;
      v4 = a2;
      std::string::__init_copy_ctor_external(result, *a2, *(a2 + 1));
      a2 = v4;
      result = v3;
    }

    else
    {
      v2 = *a2;
      result->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&result->__r_.__value_.__l.__data_ = v2;
    }

    result[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
    result[1].__r_.__value_.__s.__data_[8] = 1;
  }

  return result;
}

uint64_t swift::reflection::UnownedStorageTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  __p = a2;
  std::vector<unsigned int>::push_back[abi:nn200100](&v7, &__p);
  std::vector<unsigned int>::push_back[abi:nn200100](&v7, &__p + 1);
  v3 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1536), &v7);
  if (!v3)
  {
    operator new();
  }

  v4 = v3[5];
  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  return v4;
}

uint64_t swift::reflection::UnmanagedStorageTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  __p = a2;
  std::vector<unsigned int>::push_back[abi:nn200100](&v7, &__p);
  std::vector<unsigned int>::push_back[abi:nn200100](&v7, &__p + 1);
  v3 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1576), &v7);
  if (!v3)
  {
    operator new();
  }

  v4 = v3[5];
  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  return v4;
}

uint64_t swift::reflection::WeakStorageTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  __p = a2;
  std::vector<unsigned int>::push_back[abi:nn200100](&v7, &__p);
  std::vector<unsigned int>::push_back[abi:nn200100](&v7, &__p + 1);
  v3 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1496), &v7);
  if (!v3)
  {
    operator new();
  }

  v4 = v3[5];
  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  return v4;
}

uint64_t swift::reflection::SILBoxTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  __p = a2;
  std::vector<unsigned int>::push_back[abi:nn200100](&v7, &__p);
  std::vector<unsigned int>::push_back[abi:nn200100](&v7, &__p + 1);
  v3 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1616), &v7);
  if (!v3)
  {
    operator new();
  }

  v4 = v3[5];
  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  return v4;
}

uint64_t __swift::__runtime::llvm::SmallVectorTemplateBase<std::pair<unsigned int,unsigned int>,true>::growAndEmplaceBack<unsigned long long,unsigned long long>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v8 = a1;
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v5 + 1, 8);
    a1 = v8;
    LODWORD(v5) = *(v8 + 8);
  }

  *(*a1 + 8 * v5) = v3 | (v4 << 32);
  v6 = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 8 * v6 - 8;
}

uint64_t __swift::__runtime::llvm::SmallVectorTemplateBase<std::pair<swift::reflection::TypeRef const*,swift::reflection::TypeRef const*>,true>::growAndEmplaceBack<swift::reflection::TypeRef const*&,swift::reflection::TypeRef const*>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v8 = a1;
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v5 + 1, 16);
    a1 = v8;
    LODWORD(v5) = *(v8 + 8);
  }

  v6 = (*a1 + 16 * v5);
  *v6 = v3;
  v6[1] = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

uint64_t __swift::__runtime::llvm::SmallVectorTemplateBase<swift::reflection::SILBoxTypeWithLayoutTypeRef::Field,true>::growAndEmplaceBack<swift::reflection::TypeRef const*,BOOL &>(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v9 = a1;
    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v5 + 1, 8);
    a1 = v9;
    LODWORD(v5) = *(v9 + 8);
  }

  v6 = 4;
  if (!v4)
  {
    v6 = 0;
  }

  *(*a1 + 8 * v5) = v6 | v3 & 0xFFFFFFFFFFFFFFFBLL;
  v7 = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 8 * v7 - 8;
}

uint64_t swift::reflection::SILBoxTypeWithLayoutTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (a5)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  if (a7)
  {
    if ((a7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  swift::reflection::SILBoxTypeWithLayoutTypeRef::Profile(&v11, &v17, &__p, v20);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  v8 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1656), v20);
  if (!v8)
  {
    operator new();
  }

  v9 = v8[5];
  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  return v9;
}

void swift::reflection::SILBoxTypeWithLayoutTypeRef::Profile(unint64_t **a1@<X0>, unint64_t **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    do
    {
      v9 = *v7++;
      v15 = v9;
      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v15);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v15 + 1);
    }

    while (v7 != v8);
  }

  v11 = *a2;
  for (i = a2[1]; v11 != i; v11 += 2)
  {
    v15 = *v11;
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v15);
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v15 + 1);
    v15 = v11[1];
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v15);
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v15 + 1);
  }

  v13 = *a3;
  for (j = a3[1]; v13 != j; v13 += 16)
  {
    LODWORD(v15) = *v13 & 7;
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v15);
    v15 = *v13 & 0xFFFFFFFFFFFFFFF8;
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v15);
    std::vector<unsigned int>::push_back[abi:nn200100](a4, &v15 + 1);
    if ((*v13 & 7) == 3)
    {
      LODWORD(v15) = 0;
      v14 = &v15;
    }

    else
    {
      v15 = *(v13 + 8);
      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v15);
      v14 = (&v15 + 4);
    }

    std::vector<unsigned int>::push_back[abi:nn200100](a4, v14);
  }
}

uint64_t swift::reflection::SILBoxTypeWithLayoutTypeRef::SILBoxTypeWithLayoutTypeRef(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(result + 8) = 20;
  *result = off_E0790;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  if (a3)
  {
    if (((8 * a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  if (a5)
  {
    if (((16 * a5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  if (a7)
  {
    if (((16 * a7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void swift::reflection::SILBoxTypeWithLayoutTypeRef::~SILBoxTypeWithLayoutTypeRef(swift::reflection::SILBoxTypeWithLayoutTypeRef *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

{
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }

  operator delete();
}

uint64_t swift::reflection::OpaqueArchetypeTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, void *__src, size_t __len, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  swift::reflection::OpaqueArchetypeTypeRef::Profile(__src, __len, a6, a7, a8, v12);
  v9 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1456), v12);
  if (!v9)
  {
    operator new();
  }

  v10 = v9[5];
  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v10;
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<unsigned int,unsigned int>>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = a2[1];
    v6 = ((37 * v5) | ((37 * *a2) << 32)) + ~((37 * v5) << 32);
    v7 = (v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13);
    v8 = (9 * (v7 ^ (v7 >> 8))) ^ ((9 * (v7 ^ (v7 >> 8))) >> 15);
    v9 = ((v8 + ~(v8 << 27)) >> 31) ^ (v8 + ~(v8 << 27));
    v10 = v3 - 1;
    v11 = (v3 - 1) & v9;
    v12 = (*a1 + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    if (*a2 == *v12 && v5 == v14)
    {
      result = 1;
      *a3 = v12;
    }

    else
    {
      v16 = 0;
      v17 = 1;
      result = 1;
      while (v13 != -1 || v14 != -1)
      {
        if (v16)
        {
          v19 = 0;
        }

        else
        {
          v19 = v14 == -2;
        }

        if (v19 && v13 == -2)
        {
          v16 = v12;
        }

        v21 = v11 + v17++;
        v11 = v21 & v10;
        v12 = (v4 + 16 * (v21 & v10));
        v13 = *v12;
        v14 = v12[1];
        if (*a2 == *v12 && v5 == v14)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v16)
      {
        v12 = v16;
      }

      *a3 = v12;
    }
  }

  else
  {
    v12 = 0;
    result = 0;
LABEL_9:
    *a3 = v12;
  }

  return result;
}

_DWORD *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<unsigned int,unsigned int>>(uint64_t *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
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
  __swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::grow(a1, v5);
  v10 = 0;
  __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<unsigned int,unsigned int>>(v8, a3, &v10);
  a1 = v8;
  a4 = v10;
LABEL_3:
  ++*(a1 + 2);
  if (*a4 != -1 || a4[1] != -1)
  {
    --*(a1 + 3);
  }

  return a4;
}

void __swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::grow(uint64_t a1, int a2)
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
  buffer = __swift::__runtime::llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &buffer[2 * v11];
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    v16 = (16 * v3);
    if (v3)
    {
      v17 = 16 * v3;
      v18 = v4;
      do
      {
        v19 = *(v18 + 1);
        if ((*v18 != -1 || v19 != -1) && (*v18 != -2 || v19 != -2))
        {
          v28 = 0;
          __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<unsigned int,unsigned int>>(a1, v18, &v28);
          v22 = v28;
          *v28 = *v18;
          v22[1] = *(v18 + 1);
          *(v22 + 1) = *(v18 + 1);
          ++*(a1 + 8);
        }

        v18 = (v18 + 16);
        v17 -= 16;
      }

      while (v17);
    }

    __swift::__runtime::llvm::deallocate_buffer(v4, v16, 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v23 = *(a1 + 16);
    if (v23)
    {
      if (((v23 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_30;
      }

      v24 = ((v23 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v24 & 0x1FFFFFFFFFFFFFFELL)];
      v25 = buffer + 2;
      v26 = v24 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v25 - 2) = -1;
        *v25 = -1;
        v25 += 4;
        v26 -= 2;
      }

      while (v26);
      if (v24 != (v24 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_30:
        v27 = &buffer[2 * v23];
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != v27);
      }
    }
  }
}

void swift::reflection::OpaqueArchetypeTypeRef::Profile(void *__src@<X0>, size_t __len@<X1>, int a3@<W4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (__src)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v23) = __len;
    if (__len)
    {
      memmove(&__dst, __src, __len);
    }

    *(&__dst + __len) = 0;
    v13 = HIBYTE(v23);
    v12 = __dst;
    v11 = v22;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    __dst = 0;
    v22 = 0;
    v23 = 0;
  }

  if ((v13 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = v12;
  }

  if ((v13 & 0x80u) == 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v11;
  }

  swift::reflection::TypeRefID::addString(a6, p_dst, v15);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst);
  }

  LODWORD(__dst) = a3;
  std::vector<unsigned int>::push_back[abi:nn200100](a6, &__dst);
  if (a5)
  {
    v16 = a4 + 16 * a5;
    do
    {
      v17 = *a4;
      v18 = *(a4 + 8);
      LODWORD(__dst) = 0;
      std::vector<unsigned int>::push_back[abi:nn200100](a6, &__dst);
      if (v18)
      {
        v19 = 8 * v18;
        do
        {
          v20 = *v17++;
          __dst = v20;
          std::vector<unsigned int>::push_back[abi:nn200100](a6, &__dst);
          std::vector<unsigned int>::push_back[abi:nn200100](a6, &__dst + 1);
          v19 -= 8;
        }

        while (v19);
      }

      a4 += 16;
    }

    while (a4 != v16);
  }
}

uint64_t swift::reflection::OpaqueArchetypeTypeRef::OpaqueArchetypeTypeRef(uint64_t a1, const void *a2, size_t __len, void *__src, size_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 8) = 15;
  *a1 = off_E07B0;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_23;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v15 = (a1 + 16);
  *(a1 + 39) = __len;
  if (__len)
  {
    memmove(v15, a2, __len);
  }

  *(v15 + __len) = 0;
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_23:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a5 >= 0x17)
  {
    operator new();
  }

  v16 = (a1 + 40);
  *(a1 + 63) = a5;
  if (a5)
  {
    memmove(v16, __src, a5);
  }

  *(v16 + a5) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 64) = a6;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (a8)
  {
    v17 = a7 + 16 * a8;
    do
    {
      v18 = *a7;
      v19 = *(a7 + 8);
      a7 += 16;
      LODWORD(v25) = v19;
      std::vector<unsigned int>::push_back[abi:nn200100](&v26, &v25);
      std::vector<swift::reflection::TypeRef const*>::__insert_with_size[abi:nn200100]<swift::reflection::TypeRef const* const*,swift::reflection::TypeRef const* const*>(a1 + 72, *(a1 + 80), v18, &v18[8 * v19], v19);
    }

    while (a7 != v17);
    v20 = v26;
    v21 = v27;
    if (v26 != v27)
    {
      v22 = *(a1 + 72);
      do
      {
        v23 = *v20++;
        *&v25 = v22;
        *(&v25 + 1) = v23;
        std::vector<llvm::ArrayRef<swift::reflection::TypeRef const*>>::push_back[abi:nn200100](a1 + 96, &v25);
        v22 += 8 * v23;
      }

      while (v20 != v21);
      v20 = v26;
    }

    if (v20)
    {
      v27 = v20;
      operator delete(v20);
    }
  }

  return a1;
}

void std::vector<llvm::ArrayRef<swift::reflection::TypeRef const*>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
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

void swift::reflection::OpaqueArchetypeTypeRef::~OpaqueArchetypeTypeRef(swift::reflection::OpaqueArchetypeTypeRef *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  if ((*(this + 63) & 0x80000000) == 0)
  {
    if ((*(this + 39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(*(this + 2));
    return;
  }

  operator delete(*(this + 5));
  if (*(this + 39) < 0)
  {
    goto LABEL_9;
  }
}

{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(this + 39) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(this + 2));
LABEL_7:

  operator delete();
}

char *std::vector<swift::reflection::TypeRef const*>::__insert_with_size[abi:nn200100]<swift::reflection::TypeRef const* const*,swift::reflection::TypeRef const* const*>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a5 > (v7 - v8) >> 3)
  {
    v9 = *a1;
    v10 = a5 + ((v8 - *a1) >> 3);
    if (v10 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = __dst - v9;
    v12 = v7 - v9;
    if (v12 >> 2 > v10)
    {
      v10 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v10;
    }

    if (v13)
    {
      if (!(v13 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v38 = (8 * (v11 >> 3));
    v39 = 8 * a5;
    memcpy(v38, __src, 8 * a5);
    v40 = &v38[v39];
    v41 = v8 - v5;
    memcpy(v40, v5, v41);
    *(a1 + 8) = v5;
    memcpy(0, v9, v11);
    *a1 = 0;
    *(a1 + 8) = &v40[v41];
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }

    return (8 * (v11 >> 3));
  }

  v14 = v8 - __dst;
  v15 = (v8 - __dst) >> 3;
  if (v15 >= a5)
  {
    v14 = 8 * a5;
    v25 = &__dst[8 * a5];
    v26 = (v8 - 8 * a5);
    if (v26 >= v8)
    {
      v30 = *(a1 + 8);
    }

    else
    {
      v27 = v26 + 1;
      if (v8 > (v26 + 1))
      {
        v27 = *(a1 + 8);
      }

      v28 = v27 + v14 + ~v8;
      v29 = v28 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v30 = *(a1 + 8);
      if (v29)
      {
        goto LABEL_64;
      }

      v31 = (v28 >> 3) + 1;
      v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
      v26 = (v26 + v32);
      v30 = (v8 + v32);
      v33 = (v8 + 16);
      v34 = (v8 + 16 - v14);
      v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v36 = *v34;
        *(v33 - 1) = *(v34 - 1);
        *v33 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 4;
      }

      while (v35);
      if (v31 != (v31 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_64:
        do
        {
          v37 = *v26++;
          *v30++ = v37;
        }

        while (v26 < v8);
      }
    }

    *(a1 + 8) = v30;
    if (v8 != v25)
    {
      v42 = __src;
      memmove(v25, __dst, v8 - v25);
      __src = v42;
    }

    goto LABEL_58;
  }

  v16 = &__src[v14];
  if (&__src[v14] == a4)
  {
    v18 = *(a1 + 8);
  }

  else
  {
    v17 = &__dst[a4] - __src - v8 - 8;
    if (v17 < 0x18)
    {
      v18 = *(a1 + 8);
    }

    else
    {
      v18 = *(a1 + 8);
      if ((__dst - __src) >= 0x20)
      {
        v19 = (v17 >> 3) + 1;
        v20 = 8 * (v19 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v20;
        v18 = v8 + v20;
        v21 = (v8 + 16);
        v22 = &__src[v8 + 16 - __dst];
        v23 = v19 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v24 = *v22;
          *(v21 - 1) = *(v22 - 1);
          *v21 = v24;
          v21 += 2;
          v22 += 32;
          v23 -= 4;
        }

        while (v23);
        if (v19 == (v19 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_41;
        }
      }
    }

    do
    {
      v43 = *v16;
      v16 += 8;
      *v18 = v43;
      v18 += 8;
    }

    while (v16 != a4);
  }

LABEL_41:
  *(a1 + 8) = v18;
  if (v15 >= 1)
  {
    v44 = a5;
    v45 = &__dst[8 * a5];
    v46 = (v18 - 8 * a5);
    if (v46 >= v8)
    {
      v50 = v18;
    }

    else
    {
      v47 = v46 + 1;
      if (v8 > (v46 + 1))
      {
        v47 = v8;
      }

      v48 = &v47[v44] + ~v18;
      v49 = v48 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v50 = v18;
      if (v49)
      {
        goto LABEL_65;
      }

      v51 = (v48 >> 3) + 1;
      v52 = 8 * (v51 & 0x3FFFFFFFFFFFFFFCLL);
      v46 = (v46 + v52);
      v50 = (v18 + v52);
      v53 = (v18 + 16);
      v54 = (v18 + 16 - v44 * 8);
      v55 = v51 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v56 = *v54;
        *(v53 - 1) = *(v54 - 1);
        *v53 = v56;
        v53 += 2;
        v54 += 2;
        v55 -= 4;
      }

      while (v55);
      if (v51 != (v51 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_65:
        do
        {
          v57 = *v46++;
          *v50++ = v57;
        }

        while (v46 < v8);
      }
    }

    *(a1 + 8) = v50;
    if (v18 != v45)
    {
      v58 = __src;
      memmove(v45, __dst, v18 - v45);
      __src = v58;
    }

    if (v8 != v5)
    {
LABEL_58:
      memmove(v5, __src, v14);
    }
  }

  return v5;
}

uint64_t swift::reflection::IntegerTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(a2);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  LODWORD(__p) = a2;
  std::vector<unsigned int>::push_back[abi:nn200100](&v8, &__p);
  LODWORD(__p) = v2;
  std::vector<unsigned int>::push_back[abi:nn200100](&v8, &__p);
  v4 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1696), &v8);
  if (!v4)
  {
    operator new();
  }

  v5 = v4[5];
  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  return v5;
}

uint64_t swift::reflection::BuiltinFixedArrayTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, void *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  __p = a2;
  std::vector<unsigned int>::push_back[abi:nn200100](&v9, &__p);
  std::vector<unsigned int>::push_back[abi:nn200100](&v9, &__p + 1);
  __p = a3;
  std::vector<unsigned int>::push_back[abi:nn200100](&v9, &__p);
  std::vector<unsigned int>::push_back[abi:nn200100](&v9, &__p + 1);
  v5 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1736), &v9);
  if (!v5)
  {
    operator new();
  }

  v6 = v5[5];
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  return v6;
}

uint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,unsigned int)#2},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,unsigned int)#2}>,std::unique_ptr<void const,std::function<void ()(void const*)>> ()(swift::remote::RemoteAddress,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E0810;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,std::string &)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,std::string &)#1}>,BOOL ()(swift::remote::RemoteAddress,std::string &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E0858;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,unsigned int)#3},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,unsigned int)#3}>,std::optional<swift::remote::RemoteAbsolutePointer> ()(swift::remote::RemoteAddress,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E08A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress)#1}>,std::optional<swift::remote::RemoteAbsolutePointer> ()(swift::remote::RemoteAddress)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E08E8;
  a2[1] = v2;
  return result;
}

double std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress)#1}>,std::optional<swift::remote::RemoteAbsolutePointer> ()(swift::remote::RemoteAddress)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  v5 = *a2;
  (*(**(*(a1 + 8) + 2800) + 72))(&v7);
  *a3 = v7;
  *(a3 + 16) = v8;
  result = *&v9;
  *(a3 + 24) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = 1;
  return result;
}

uint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(std::string,unsigned int)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(std::string,unsigned int)#1}>,std::optional<unsigned long long> ()(std::string,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E0930;
  a2[1] = v2;
  return result;
}

unint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(std::string,unsigned int)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(std::string,unsigned int)#1}>,std::optional<unsigned long long> ()(std::string,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int *a3)
{
  *__p = *a2;
  v6 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  result = swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(std::string,unsigned int)#1}::operator()(a1 + 8, __p, *a3);
  if (SHIBYTE(v6) < 0)
  {
    v4 = result;
    operator delete(__p[0]);
    return v4;
  }

  return result;
}

unint64_t swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(std::string,unsigned int)#1}::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*a1 + 2800);
  v5 = *(*a1 + 2808);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    LOBYTE(v6) = 0;
    v10 = 0;
    if (!v5)
    {
      return v6 | (v10 << 8);
    }

    goto LABEL_21;
  }

  v6 = (*(*v4 + 8))(v4);
  if (!v6)
  {
    goto LABEL_20;
  }

  if (a3 != 4)
  {
    if (a3 == 8)
    {
      v15 = 0;
      v8 = (*(*v4 + 32))(v4, v6, v7, &v15, 8);
      v9 = v15;
      goto LABEL_11;
    }

    LOBYTE(v6) = 0;
LABEL_20:
    v10 = 0;
    if (!v5)
    {
      return v6 | (v10 << 8);
    }

    goto LABEL_21;
  }

  v14 = 0;
  v8 = (*(*v4 + 32))(v4, v6, v7, &v14, 4);
  v9 = v14;
LABEL_11:
  v11 = v8 == 0;
  if (v8)
  {
    LOBYTE(v6) = v9;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 >> 8;
  }

  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = v6;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      LOBYTE(v6) = v12;
    }
  }

  return v6 | (v10 << 8);
}

void std::default_delete<swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 2896);
    if (v3)
    {
      *(a2 + 2904) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 2872);
    if (v4)
    {
      *(a2 + 2880) = v4;
      operator delete(v4);
    }

    std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::~vector[abi:nn200100]((a2 + 2848));
    __swift::__runtime::llvm::deallocate_buffer(*(a2 + 2824), (32 * *(a2 + 2840)), 8uLL);
    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::~MetadataReader(a2);

    operator delete();
  }
}

uint64_t std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::~vector[abi:nn200100](void *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v2)
  {
LABEL_13:
    a1[1] = v2;
    operator delete(v4);
    return a1;
  }

  v5 = v3 - 4;
  v6 = a1[1];
  while (1)
  {
    v8 = *(v6 - 5);
    v6 -= 5;
    v7 = v8;
    *v6 = 0;
    if (v8)
    {
      break;
    }

LABEL_9:
    v10 = *(v3 - 1);
    if (v3 - 4 == v10)
    {
      (*(*v10 + 32))(v10);
    }

    else if (v10)
    {
      (*(*v10 + 40))(v10);
    }

    v5 -= 5;
    v3 = v6;
    if (v6 == v2)
    {
      v4 = *a1;
      goto LABEL_13;
    }
  }

  v13 = v7;
  v9 = *(v3 - 1);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v13);
    goto LABEL_9;
  }

  v12 = std::__throw_bad_function_call[abi:nn200100]();
  return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::~MetadataReader(v12);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::~MetadataReader(uint64_t a1)
{
  v2 = *(a1 + 2808);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  swift::reflection::TypeRefBuilder::~TypeRefBuilder((a1 + 328));
  *(a1 + 272) = off_E13C0;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(*(a1 + 296));
  v3 = *(a1 + 312);
  if (v3)
  {
    *(v3 + 48) = 0;
  }

  __swift::__runtime::llvm::DenseMap<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>::~DenseMap(a1 + 72);
  __swift::__runtime::llvm::DenseMap<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>::~DenseMap(a1 + 48);
  __swift::__runtime::llvm::DenseMap<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>::~DenseMap(a1 + 24);
  __swift::__runtime::llvm::deallocate_buffer(*a1, (32 * *(a1 + 16)), 8uLL);
  return a1;
}

void __swift::__runtime::llvm::DenseMap<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = v3 + 56 * v2;
    v5 = v3 + 24;
    v6 = v3 + 24;
    while (1)
    {
      v7 = v6 - 24;
      if (*(v6 - 3) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v8 = *(v6 - 16) == 0;
        *(v6 - 16);
      }

      else
      {
        v8 = 0;
      }

      if (!v8)
      {
        v9 = *(v6 - 1);
        *(v6 - 1) = 0;
        if (v9)
        {
          v14 = v9;
          v10 = *(v6 + 3);
          if (!v10)
          {
            v13 = std::__throw_bad_function_call[abi:nn200100]();
            swift::reflection::TypeRefBuilder::~TypeRefBuilder(v13);
            return;
          }

          (*(*v10 + 48))(v10, &v14);
        }

        v11 = *(v6 + 3);
        if (v6 == v11)
        {
          (*(*v11 + 32))(v11);
        }

        else if (v11)
        {
          (*(*v11 + 40))(v11);
        }
      }

      v6 += 56;
      v5 += 56;
      if (v7 + 56 == v4)
      {
        v3 = *a1;
        v12 = 56 * *(a1 + 16);
        goto LABEL_17;
      }
    }
  }

  v12 = 0;
LABEL_17:
  __swift::__runtime::llvm::deallocate_buffer(v3, v12, 8uLL);
}

void swift::reflection::TypeRefBuilder::~TypeRefBuilder(swift::reflection::TypeRefBuilder *this)
{
  v2 = this + 2424;
  v3 = *(this + 306);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 302);
  if (v4 == (this + 2392))
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(this + 298);
  if (v5 == (this + 2360))
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = *(this + 294);
  if (v6 == (this + 2328))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = *(this + 290);
  if (v7 == (this + 2296))
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))(v7);
  }

  v8 = *(this + 286);
  if (v8 == (this + 2264))
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  v9 = *(this + 282);
  if (v9 == (this + 2232))
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::~ReflectionTypeDescriptorFinder((this + 1888));
  __swift::__runtime::llvm::deallocate_buffer(*(this + 232), (8 * *(this + 468)), 8uLL);
  v10 = *(this + 229);
  if (v10)
  {
    do
    {
      v64 = *v10;
      v65 = v10[2];
      if (v65)
      {
        v10[3] = v65;
        operator delete(v65);
      }

      operator delete(v10);
      v10 = v64;
    }

    while (v64);
  }

  v11 = *(this + 227);
  *(this + 227) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(this + 224);
  if (v12)
  {
    do
    {
      v66 = *v12;
      v67 = v12[2];
      if (v67)
      {
        v12[3] = v67;
        operator delete(v67);
      }

      operator delete(v12);
      v12 = v66;
    }

    while (v66);
  }

  v13 = *(this + 222);
  *(this + 222) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(this + 219);
  if (v14)
  {
    do
    {
      v68 = *v14;
      v69 = v14[2];
      if (v69)
      {
        v14[3] = v69;
        operator delete(v69);
      }

      operator delete(v14);
      v14 = v68;
    }

    while (v68);
  }

  v15 = *(this + 217);
  *(this + 217) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *(this + 214);
  if (v16)
  {
    do
    {
      v70 = *v16;
      v71 = v16[2];
      if (v71)
      {
        v16[3] = v71;
        operator delete(v71);
      }

      operator delete(v16);
      v16 = v70;
    }

    while (v70);
  }

  v17 = *(this + 212);
  *(this + 212) = 0;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *(this + 209);
  if (v18)
  {
    do
    {
      v72 = *v18;
      v73 = v18[2];
      if (v73)
      {
        v18[3] = v73;
        operator delete(v73);
      }

      operator delete(v18);
      v18 = v72;
    }

    while (v72);
  }

  v19 = *(this + 207);
  *(this + 207) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(this + 204);
  if (v20)
  {
    do
    {
      v74 = *v20;
      v75 = v20[2];
      if (v75)
      {
        v20[3] = v75;
        operator delete(v75);
      }

      operator delete(v20);
      v20 = v74;
    }

    while (v74);
  }

  v21 = *(this + 202);
  *(this + 202) = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = *(this + 199);
  if (v22)
  {
    do
    {
      v76 = *v22;
      v77 = v22[2];
      if (v77)
      {
        v22[3] = v77;
        operator delete(v77);
      }

      operator delete(v22);
      v22 = v76;
    }

    while (v76);
  }

  v23 = *(this + 197);
  *(this + 197) = 0;
  if (v23)
  {
    operator delete(v23);
  }

  v24 = *(this + 194);
  if (v24)
  {
    do
    {
      v78 = *v24;
      v79 = v24[2];
      if (v79)
      {
        v24[3] = v79;
        operator delete(v79);
      }

      operator delete(v24);
      v24 = v78;
    }

    while (v78);
  }

  v25 = *(this + 192);
  *(this + 192) = 0;
  if (v25)
  {
    operator delete(v25);
  }

  v26 = *(this + 189);
  if (v26)
  {
    do
    {
      v80 = *v26;
      v81 = v26[2];
      if (v81)
      {
        v26[3] = v81;
        operator delete(v81);
      }

      operator delete(v26);
      v26 = v80;
    }

    while (v80);
  }

  v27 = *(this + 187);
  *(this + 187) = 0;
  if (v27)
  {
    operator delete(v27);
  }

  v28 = *(this + 184);
  if (v28)
  {
    do
    {
      v82 = *v28;
      v83 = v28[2];
      if (v83)
      {
        v28[3] = v83;
        operator delete(v83);
      }

      operator delete(v28);
      v28 = v82;
    }

    while (v82);
  }

  v29 = *(this + 182);
  *(this + 182) = 0;
  if (v29)
  {
    operator delete(v29);
  }

  v30 = *(this + 179);
  if (v30)
  {
    do
    {
      v84 = *v30;
      v85 = v30[2];
      if (v85)
      {
        v30[3] = v85;
        operator delete(v85);
      }

      operator delete(v30);
      v30 = v84;
    }

    while (v84);
  }

  v31 = *(this + 177);
  *(this + 177) = 0;
  if (v31)
  {
    operator delete(v31);
  }

  v32 = *(this + 174);
  if (v32)
  {
    do
    {
      v86 = *v32;
      v87 = v32[2];
      if (v87)
      {
        v32[3] = v87;
        operator delete(v87);
      }

      operator delete(v32);
      v32 = v86;
    }

    while (v86);
  }

  v33 = *(this + 172);
  *(this + 172) = 0;
  if (v33)
  {
    operator delete(v33);
  }

  v34 = *(this + 169);
  if (v34)
  {
    do
    {
      v88 = *v34;
      v89 = v34[2];
      if (v89)
      {
        v34[3] = v89;
        operator delete(v89);
      }

      operator delete(v34);
      v34 = v88;
    }

    while (v88);
  }

  v35 = *(this + 167);
  *(this + 167) = 0;
  if (v35)
  {
    operator delete(v35);
  }

  v36 = *(this + 164);
  if (v36)
  {
    do
    {
      v90 = *v36;
      v91 = v36[2];
      if (v91)
      {
        v36[3] = v91;
        operator delete(v91);
      }

      operator delete(v36);
      v36 = v90;
    }

    while (v90);
  }

  v37 = *(this + 162);
  *(this + 162) = 0;
  if (v37)
  {
    operator delete(v37);
  }

  v38 = *(this + 159);
  if (v38)
  {
    do
    {
      v92 = *v38;
      v93 = v38[2];
      if (v93)
      {
        v38[3] = v93;
        operator delete(v93);
      }

      operator delete(v38);
      v38 = v92;
    }

    while (v92);
  }

  v39 = *(this + 157);
  *(this + 157) = 0;
  if (v39)
  {
    operator delete(v39);
  }

  v40 = *(this + 154);
  if (v40)
  {
    do
    {
      v94 = *v40;
      v95 = v40[2];
      if (v95)
      {
        v40[3] = v95;
        operator delete(v95);
      }

      operator delete(v40);
      v40 = v94;
    }

    while (v94);
  }

  v41 = *(this + 152);
  *(this + 152) = 0;
  if (v41)
  {
    operator delete(v41);
  }

  v42 = *(this + 149);
  if (v42)
  {
    do
    {
      v96 = *v42;
      v97 = v42[2];
      if (v97)
      {
        v42[3] = v97;
        operator delete(v97);
      }

      operator delete(v42);
      v42 = v96;
    }

    while (v96);
  }

  v43 = *(this + 147);
  *(this + 147) = 0;
  if (v43)
  {
    operator delete(v43);
  }

  v44 = *(this + 144);
  if (v44)
  {
    do
    {
      v98 = *v44;
      v99 = v44[2];
      if (v99)
      {
        v44[3] = v99;
        operator delete(v99);
      }

      operator delete(v44);
      v44 = v98;
    }

    while (v98);
  }

  v45 = *(this + 142);
  *(this + 142) = 0;
  if (v45)
  {
    operator delete(v45);
  }

  v46 = *(this + 139);
  if (v46)
  {
    do
    {
      v100 = *v46;
      v101 = v46[2];
      if (v101)
      {
        v46[3] = v101;
        operator delete(v101);
      }

      operator delete(v46);
      v46 = v100;
    }

    while (v100);
  }

  v47 = *(this + 137);
  *(this + 137) = 0;
  if (v47)
  {
    operator delete(v47);
  }

  v48 = *(this + 134);
  if (v48)
  {
    do
    {
      v102 = *v48;
      v103 = v48[2];
      if (v103)
      {
        v48[3] = v103;
        operator delete(v103);
      }

      operator delete(v48);
      v48 = v102;
    }

    while (v102);
  }

  v49 = *(this + 132);
  *(this + 132) = 0;
  if (v49)
  {
    operator delete(v49);
  }

  v50 = *(this + 129);
  if (v50)
  {
    do
    {
      v104 = *v50;
      v105 = v50[2];
      if (v105)
      {
        v50[3] = v105;
        operator delete(v105);
      }

      operator delete(v50);
      v50 = v104;
    }

    while (v104);
  }

  v51 = *(this + 127);
  *(this + 127) = 0;
  if (v51)
  {
    operator delete(v51);
  }

  v52 = *(this + 124);
  if (v52)
  {
    do
    {
      v106 = *v52;
      v107 = v52[2];
      if (v107)
      {
        v52[3] = v107;
        operator delete(v107);
      }

      operator delete(v52);
      v52 = v106;
    }

    while (v106);
  }

  v53 = *(this + 122);
  *(this + 122) = 0;
  if (v53)
  {
    operator delete(v53);
  }

  v54 = *(this + 119);
  if (v54)
  {
    do
    {
      v108 = *v54;
      v109 = v54[2];
      if (v109)
      {
        v54[3] = v109;
        operator delete(v109);
      }

      operator delete(v54);
      v54 = v108;
    }

    while (v108);
  }

  v55 = *(this + 117);
  *(this + 117) = 0;
  if (v55)
  {
    operator delete(v55);
  }

  v56 = *(this + 114);
  if (v56)
  {
    do
    {
      v110 = *v56;
      v111 = v56[2];
      if (v111)
      {
        v56[3] = v111;
        operator delete(v111);
      }

      operator delete(v56);
      v56 = v110;
    }

    while (v110);
  }

  v57 = *(this + 112);
  *(this + 112) = 0;
  if (v57)
  {
    operator delete(v57);
  }

  v58 = *(this + 109);
  if (v58)
  {
    do
    {
      v112 = *v58;
      v113 = v58[2];
      if (v113)
      {
        v58[3] = v113;
        operator delete(v113);
      }

      operator delete(v58);
      v58 = v112;
    }

    while (v112);
  }

  v59 = *(this + 107);
  *(this + 107) = 0;
  if (v59)
  {
    operator delete(v59);
  }

  swift::reflection::TypeConverter::~TypeConverter((this + 648));
  v60 = *(this + 78);
  if (v60)
  {
    *(this + 79) = v60;
    operator delete(v60);
  }

  v61 = *(this + 75);
  if (v61)
  {
    v62 = *(this + 76);
    v63 = *(this + 75);
    if (v62 != v61)
    {
      do
      {
        v115 = *--v62;
        v114 = v115;
        *v62 = 0;
        if (v115)
        {
          v116 = *(v114 + 24);
          if (v116)
          {
            *(v114 + 32) = v116;
            operator delete(v116);
          }

          v117 = *v114;
          if (*v114)
          {
            *(v114 + 8) = v117;
            operator delete(v117);
          }

          operator delete();
        }
      }

      while (v62 != v61);
      v63 = *(this + 75);
    }

    *(this + 76) = v61;
    operator delete(v63);
  }

  v118 = *(this + 72);
  if (v118)
  {
    v119 = *(this + 73);
    v120 = *(this + 72);
    if (v119 != v118)
    {
      do
      {
        v122 = *--v119;
        v121 = v122;
        *v119 = 0;
        if (v122)
        {
          (*(*v121 + 8))(v121);
        }
      }

      while (v119 != v118);
      v120 = *(this + 72);
    }

    *(this + 73) = v118;
    operator delete(v120);
  }

  *this = off_E13E8;
  v123 = *(this + 71);
  if (v123 == (this + 544))
  {
    (*(*v123 + 32))(v123);
  }

  else if (v123)
  {
    (*(*v123 + 40))(v123);
  }

  *this = off_E13C0;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(*(this + 3));
  v124 = *(this + 5);
  if (v124)
  {
    *(v124 + 48) = 0;
  }
}

void swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::~ReflectionTypeDescriptorFinder(swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder *this)
{
  *this = off_E1720;
  v2 = *(this + 37);
  if (v2)
  {
    v3 = *(this + 38);
    v4 = *(this + 37);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 37);
    }

    *(this + 38) = v2;
    operator delete(v4);
  }

  v7 = *(this + 33);
  if (v7)
  {
    do
    {
      v23 = *v7;
      v24 = v7[2];
      if (v24)
      {
        v7[3] = v24;
        operator delete(v24);
      }

      operator delete(v7);
      v7 = v23;
    }

    while (v23);
  }

  v8 = *(this + 31);
  *(this + 31) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 28);
  if (v9)
  {
    do
    {
      v25 = *v9;
      if (*(v9 + 39) < 0)
      {
        operator delete(v9[2]);
      }

      operator delete(v9);
      v9 = v25;
    }

    while (v25);
  }

  v10 = *(this + 26);
  *(this + 26) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 23);
  while (v11)
  {
    v26 = v11;
    v11 = *v11;
    if (*(v26 + 56) == 1 && *(v26 + 55) < 0)
    {
      v27 = v26;
      operator delete(v26[4]);
      v26 = v27;
    }

    operator delete(v26);
  }

  v12 = *(this + 21);
  *(this + 21) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(this + 18);
  if (v13)
  {
    do
    {
      v28 = *v13;
      if (*(v13 + 39) < 0)
      {
        operator delete(v13[2]);
      }

      operator delete(v13);
      v13 = v28;
    }

    while (v28);
  }

  v14 = *(this + 16);
  *(this + 16) = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(this + 12);
  if (v15)
  {
    do
    {
      v16 = *v15;
      operator delete(v15);
      v15 = v16;
    }

    while (v16);
  }

  v17 = *(this + 10);
  *(this + 10) = 0;
  if (v17)
  {
    operator delete(v17);
  }

  __swift::__runtime::llvm::deallocate_buffer(*(this + 7), (8 * *(this + 18)), 8uLL);
  v18 = *(this + 4);
  if (v18)
  {
    *(this + 5) = v18;
    operator delete(v18);
  }

  v19 = *(this + 1);
  if (v19)
  {
    v20 = *(this + 2);
    v21 = *(this + 1);
    if (v20 != v19)
    {
      v22 = v20 - 16;
      do
      {
        v30 = *(v22 - 2);
        if (v22 != v30)
        {
          free(v30);
        }

        v29 = v22 - 272;
        v22 -= 288;
      }

      while (v29 != v19);
      v21 = *(this + 1);
    }

    *(this + 2) = v19;
    operator delete(v21);
  }
}

{
  swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::~ReflectionTypeDescriptorFinder(this);

  operator delete();
}

void swift::reflection::TypeConverter::~TypeConverter(swift::reflection::TypeConverter *this)
{
  v2 = *(this + 25);
  *(this + 25) = 0;
  if (v2)
  {
    __swift::__runtime::llvm::deallocate_buffer(*v2, (32 * *(v2 + 16)), 8uLL);
    operator delete();
  }

  __swift::__runtime::llvm::deallocate_buffer(*(this + 10), (16 * *(this + 24)), 8uLL);
  __swift::__runtime::llvm::deallocate_buffer(*(this + 7), (8 * *(this + 18)), 8uLL);
  __swift::__runtime::llvm::deallocate_buffer(*(this + 4), (24 * *(this + 12)), 8uLL);
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(this + 2);
    v5 = *(this + 1);
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 24))(v6);
        }
      }

      while (v4 != v3);
      v5 = *(this + 1);
    }

    *(this + 2) = v3;
    operator delete(v5);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_10unique_ptrIN5swift10reflection17ReflectionContextINS9_8ExternalINS9_15WithObjCInteropINS9_13RuntimeTargetILj8EEEEEEEEENS_14default_deleteISI_EEEENS8_INSB_INSC_INS9_13NoObjCInteropISF_EEEEEENSJ_ISP_EEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILST_1EJSL_SR_EEEEEEDcSV_DpT0_(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  if (v3)
  {
    std::default_delete<swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::operator()[abi:nn200100](a2, v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_10unique_ptrIN5swift10reflection17ReflectionContextINS9_8ExternalINS9_15WithObjCInteropINS9_13RuntimeTargetILj8EEEEEEEEENS_14default_deleteISI_EEEENS8_INSB_INSC_INS9_13NoObjCInteropISF_EEEEEENSJ_ISP_EEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILST_1EJSL_SR_EEEEEEDcSV_DpT0_(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  if (v3)
  {
    std::default_delete<swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::operator()[abi:nn200100](a2, v3);
  }
}

double swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2400;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = off_E13E8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 648) = a1;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 684) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0;
  *(a1 + 888) = 1065353216;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 1065353216;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 1065353216;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 1065353216;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 1065353216;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 1065353216;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 1065353216;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 1065353216;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 1065353216;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 1065353216;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 1065353216;
  *(a1 + 1336) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 1065353216;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1408) = 1065353216;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 1065353216;
  *(a1 + 1472) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1488) = 1065353216;
  *(a1 + 1496) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 1065353216;
  *(a1 + 1552) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1568) = 1065353216;
  *(a1 + 1576) = 0u;
  *(a1 + 1592) = 0u;
  *(a1 + 1608) = 1065353216;
  *(a1 + 1632) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1648) = 1065353216;
  *(a1 + 1656) = 0u;
  *(a1 + 1672) = 0u;
  *(a1 + 1688) = 1065353216;
  *(a1 + 1712) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1728) = 1065353216;
  *(a1 + 1736) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1768) = 1065353216;
  *(a1 + 1792) = 0u;
  *(a1 + 1776) = 0u;
  *(a1 + 1808) = 1065353216;
  *(a1 + 1816) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1848) = 1065353216;
  *(a1 + 1872) = 0;
  *(a1 + 1856) = 0u;
  *(a1 + 1880) = a4;
  *(a1 + 1888) = off_E1720;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1960) = 0;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1912) = 0u;
  *(a1 + 2000) = 1065353216;
  *(a1 + 2008) = 0;
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2048) = 1065353216;
  *(a1 + 2056) = 0u;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 1065353216;
  *(a1 + 2112) = 0u;
  *(a1 + 2096) = 0u;
  *(a1 + 2128) = 1065353216;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 1065353216;
  *(a1 + 2176) = 0;
  *(a1 + 2200) = 0;
  *(a1 + 2184) = 0u;
  *(a1 + 2208) = a1;
  *(a1 + 2216) = a3;
  *(a1 + 2224) = 8;
  *(a1 + 2232) = off_E0988;
  *(a1 + 2240) = a1;
  *(a1 + 2248) = a2;
  *(a1 + 2256) = a1 + 2232;
  *(a1 + 2264) = off_E0A18;
  *(a1 + 2272) = a2;
  *(a1 + 2288) = a1 + 2264;
  *(a1 + 2296) = off_E0A60;
  *(a1 + 2304) = a2;
  *(a1 + 2320) = a1 + 2296;
  *(a1 + 2328) = off_E0AA8;
  *(a1 + 2336) = a2;
  *(a1 + 2352) = a1 + 2328;
  *(a1 + 2360) = off_E0AF0;
  *(a1 + 2368) = a2;
  *(a1 + 2384) = a1 + 2360;
  *(a1 + 2392) = off_E0B38;
  *(a1 + 2400) = a2;
  *(a1 + 2416) = a1 + 2392;
  *(a1 + 2424) = off_E0B80;
  *(a1 + 2432) = a2;
  *(a1 + 2448) = a1 + 2424;
  *(a1 + 2456) = 0;
  *(a1 + 2464) = 0;
  return result;
}

__n128 std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteRef<char>,BOOL)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteRef<char>,BOOL)#1}>,swift::Demangle::__runtime::Node * ()(swift::remote::RemoteRef<char>,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_E0988;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteRef<char>,BOOL)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteRef<char>,BOOL)#1}>,swift::Demangle::__runtime::Node * ()(swift::remote::RemoteRef<char>,BOOL)>::operator()(uint64_t a1, __int128 *a2, unsigned __int8 *a3)
{
  v7 = *a2;
  v3 = *a3;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v8 = *(a2 + 2);
  return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::demangle(v4, &v7, 0);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::demangle(uint64_t a1, uint64_t a2, int a3)
{
  swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(*(a2 + 16), a2);
  if (a3 == 1)
  {
    operator new();
  }

  if (!a3)
  {
    operator new();
  }

  return 0;
}

__n128 std::__function::__func<swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::demangle(swift::remote::RemoteRef<char>,swift::remote::MangledNameKind,swift::Demangle::__runtime::Demangler &,BOOL)::{lambda(swift::Demangle::__runtime::SymbolicReferenceKind,swift::Demangle::__runtime::Directness,int,void const*)#1},std::allocator<swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::demangle(swift::remote::RemoteRef<char>,swift::remote::MangledNameKind,swift::Demangle::__runtime::Demangler &,BOOL)::{lambda(swift::Demangle::__runtime::SymbolicReferenceKind,swift::Demangle::__runtime::Directness,int,void const*)#1}>,swift::Demangle::__runtime::Node * ()(swift::Demangle::__runtime::SymbolicReferenceKind,swift::Demangle::__runtime::Directness,int,void const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_E09D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

unint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::demangle(swift::remote::RemoteRef<char>,swift::remote::MangledNameKind,swift::Demangle::__runtime::Demangler &,BOOL)::{lambda(swift::Demangle::__runtime::SymbolicReferenceKind,swift::Demangle::__runtime::Directness,int,void const*)#1}::operator()(uint64_t **a1, int a2, int a3, int a4, uint64_t a5)
{
  v8 = a1[1];
  v9 = **a1;
  v10 = *(*a1 + 8);
  v11 = a5 + a4 - (*a1)[2];
  *__p = 0u;
  memset(v50, 0, 25);
  if (a3 == 1)
  {
    swift::remote::MemoryReader::readPointer(*(v8 + 2800), v11 + v9, v10, 8u, v45);
    if (v48 != 1)
    {
      goto LABEL_73;
    }

    v12 = *(&v46 + 1);
    v13 = v47;
    if (!v47)
    {
      v12 = *(v8 + 2816) & *(&v46 + 1);
    }

    if (v45[23] >= 0)
    {
      v14 = v45;
    }

    else
    {
      v14 = *v45;
    }

    if (v45[23] >= 0)
    {
      v15 = v45[23];
    }

    else
    {
      v15 = *&v45[8];
    }

    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_91;
    }

    v16 = v46;
    if (v15 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v42) = v15;
    if (v15)
    {
      memmove(&v41, v14, v15);
    }

    *(&v41 + v15) = 0;
    *&v43 = v16;
    *(&v43 + 1) = v12;
    v44 = v13;
    if (SBYTE7(v50[0]) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v41;
    *&v50[0] = v42;
    *(v50 + 8) = v43;
    BYTE8(v50[1]) = v44;
    if (v48 == 1 && (v45[23] & 0x80000000) != 0)
    {
      operator delete(*v45);
    }
  }

  else
  {
    (*(**(v8 + 2800) + 64))(v45);
    *__p = *v45;
    *&v50[0] = *&v45[16];
    *(v50 + 8) = v46;
    BYTE8(v50[1]) = v47;
  }

  result = 0;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      result = swift::Demangle::__runtime::NodeFactory::createNode(a1[3], 351, *&v50[1]);
      goto LABEL_74;
    }

    if (a2 == 4)
    {
      LODWORD(v41) = 0;
      (*(**(v8 + 2800) + 32))(*(v8 + 2800), *&v50[1] + 4, BYTE8(v50[1]), &v41, 4);
      (*(**(v8 + 2800) + 64))(v45);
      if (SBYTE7(v50[0]) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *v45;
      *&v50[0] = *&v45[16];
      *(v50 + 8) = v46;
      BYTE8(v50[1]) = v47;
      result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(v8, *(&v46 + 1), v47, 0, a1[3]);
      if (result)
      {
        v18 = *(result + 18);
        if ((v18 - 1) >= 2)
        {
          if (v18 != 5 || !*(result + 8))
          {
            goto LABEL_73;
          }

          result = *result;
        }

        v19 = *result;
        if (*result)
        {
          v20 = *(v19 + 18);
          if ((v20 - 1) >= 2)
          {
            if (v20 != 5 || !*(v19 + 8))
            {
              goto LABEL_73;
            }

            v19 = *v19;
          }

          v21 = *v19;
          if (v21)
          {
            v22 = *(v21 + 18);
            if ((v22 - 1) >= 2)
            {
              if (v22 != 5 || !*(v21 + 8))
              {
                goto LABEL_73;
              }

              v21 = *v21;
            }

            v23 = *v21;
            if (v23)
            {
              v24 = *(v23 + 18);
              if ((v24 - 1) >= 2)
              {
                if (v24 != 5 || !*(v23 + 2))
                {
                  goto LABEL_73;
                }

                v23 = *v23;
              }

              v25 = *v23;
              if (*v23 && *(v25 + 8) == 190)
              {
                Node = swift::Demangle::__runtime::NodeFactory::createNode(a1[3], 243);
                v29 = Node;
                v30 = a1[3];
                v31 = v25;
LABEL_81:
                swift::Demangle::__runtime::Node::addChild(Node, v31, v30, v27, v28);
                result = v29;
                goto LABEL_74;
              }
            }
          }
        }

LABEL_73:
        result = 0;
        goto LABEL_74;
      }
    }

    goto LABEL_74;
  }

  if (a2)
  {
    if (a2 == 2)
    {
      result = swift::Demangle::__runtime::NodeFactory::createNode(a1[3], 350, *&v50[1]);
    }

    goto LABEL_74;
  }

  if ((SBYTE7(v50[0]) & 0x80u) == 0)
  {
    v32 = __p;
  }

  else
  {
    v32 = __p[0];
  }

  if ((SBYTE7(v50[0]) & 0x80u) == 0)
  {
    v33 = SBYTE7(v50[0]);
  }

  else
  {
    v33 = __p[1];
  }

  if (!v33 || *(&v50[0] + 1))
  {
    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(v8, *&v50[1], BYTE8(v50[1]), &v41);
    v45[0] = 1;
    *&v45[8] = v41;
    *&v46 = v42;
    goto LABEL_69;
  }

  v45[0] = 0;
  if (v33 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_91:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v33 >= 0x17)
  {
    operator new();
  }

  BYTE7(v46) = v33;
  memmove(&v45[8], v32, v33);
  v45[v33 + 8] = 0;
  if (v45[0])
  {
LABEL_69:
    if (v46)
    {
      if (*a1[2] == 1 && (*v46 & 0x1F) == 4)
      {
        result = swift::Demangle::__runtime::NodeFactory::createNode(a1[3], 315, *&v45[8]);
        goto LABEL_74;
      }

      v35 = a1[3];
      v41 = *&v45[8];
      v36 = v46;
      v42 = v46;
      result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(v8, &v41, v35, 50);
      if (!result || (*v36 & 0x10) == 0 && (*v36 & 0x1F) != 3)
      {
        goto LABEL_74;
      }

      v37 = result;
      Node = swift::Demangle::__runtime::NodeFactory::createNode(v35, 243);
      v29 = Node;
      v31 = v37;
      v30 = v35;
      goto LABEL_81;
    }

    goto LABEL_73;
  }

  if ((SBYTE7(v46) & 0x80u) == 0)
  {
    v38 = &v45[8];
  }

  else
  {
    v38 = *&v45[8];
  }

  if ((SBYTE7(v46) & 0x80u) == 0)
  {
    v39 = SBYTE7(v46);
  }

  else
  {
    v39 = *&v45[16];
  }

  result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextManglingForSymbol(v8, v38, v39, a1[3]);
  if ((v45[0] & 1) == 0 && SBYTE7(v46) < 0)
  {
    v40 = result;
    operator delete(*&v45[8]);
    result = v40;
  }

LABEL_74:
  if (SBYTE7(v50[0]) < 0)
  {
    v34 = result;
    operator delete(__p[0]);
    return v34;
  }

  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(uint64_t a1, char *a2, std::string::size_type a3, int a4, void *a5)
{
  memset(&v32, 0, sizeof(v32));
  v6 = a2;
  v8 = 0;
  do
  {
    __p = 0;
    v34 = 0;
    v35 = 0;
    if (!(*(**(a1 + 2800) + 16))(*(a1 + 2800), v6, a3, &__p))
    {
      v17 = 1;
      if ((SHIBYTE(v35) & 0x80000000) == 0)
      {
        continue;
      }

LABEL_26:
      operator delete(__p);
      continue;
    }

    if (SHIBYTE(v35) >= 0)
    {
      v9 = HIBYTE(v35);
    }

    else
    {
      v9 = v34;
    }

    v6 += v9 + 1;
    if (SHIBYTE(v35) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    std::string::append(&v32, p_p, v9);
    v11 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v32.__r_.__value_.__r.__words[1];
    }

    v12 = v32.__r_.__value_.__r.__words[0];
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v32;
    }

    while (1)
    {
      v13 = v8;
      if (v8 >= v11)
      {
        break;
      }

      v14 = v12->__r_.__value_.__s.__data_[v8];
      v15 = v14 - 1;
      if ((v14 & 0xF8) == 0x18)
      {
        v16 = 9;
      }

      else
      {
        v16 = 1;
      }

      if (v15 < 0x17)
      {
        v16 = 5;
      }

      v8 = (v16 + v8);
      if (v8 > v11)
      {
        std::string::push_back(&v32, 0);
        v17 = 2;
        goto LABEL_25;
      }
    }

    v17 = 3;
LABEL_25:
    v8 = v13;
    if (SHIBYTE(v35) < 0)
    {
      goto LABEL_26;
    }
  }

  while (v17 == 2);
  if (v17 == 3)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    v19 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    v20 = size + 1;
    v21 = a5[1];
    if (!v21 || &v21[v20] > a5[2])
    {
      v22 = 2 * a5[4];
      v23 = size + 2;
      if (v22 <= v23)
      {
        v22 = v23;
      }

      a5[4] = v22;
      v24 = v22 + 8;
      v25 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
      *v25 = a5[3];
      v21 = (v25 + 1);
      a5[2] = v25 + v24;
      a5[3] = v25;
      v19 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    a5[1] = &v21[v20];
    if (v19 >= 0)
    {
      v26 = &v32;
    }

    else
    {
      v26 = v32.__r_.__value_.__r.__words[0];
    }

    memcpy(v21, v26, v20);
    __p = a2;
    v34 = a3;
    v35 = v21;
    result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::demangle(a1, &__p, a4);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_41:
      v28 = result;
      operator delete(v32.__r_.__value_.__l.__data_);
      return v28;
    }
  }

  else
  {
    result = 0;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_41;
    }
  }

  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  v7 = result;
  (*(**(result + 2800) + 24))(&v37);
  if (!v37)
  {
    goto LABEL_55;
  }

  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  if (!v9)
  {
    v18 = 0;
LABEL_18:
    v11 = (v8 + 56 * v18);
    goto LABEL_19;
  }

  v32 = a2;
  v33 = a3;
  v10 = (v9 - 1) & __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(&v32, &v33);
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
        goto LABEL_19;
      }
    }

    v8 = *(v7 + 48);
    v18 = *(v7 + 64);
    goto LABEL_18;
  }

LABEL_19:
  if (v11 != (*(v7 + 48) + 56 * *(v7 + 64)))
  {
    v19 = v11[2];
    *a4 = a2;
    *(a4 + 8) = a3;
    goto LABEL_56;
  }

  if (v37)
  {
    v20 = v37;
  }

  else
  {
    v20 = 0;
  }

  v21 = *v20 & 0x1F;
  if (v21 > 3)
  {
    if ((*v20 & 0x1Fu) > 0x10)
    {
      if (v21 != 17)
      {
        if (v21 != 18 || (swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetEnumDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>(v7, a2, a3, &v37) & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_45;
      }

      if (swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetStructDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>(v7, a2, a3, &v37))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v21 != 4)
      {
        if (v21 != 16 || (swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>(v7, a2, a3, &v37) & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_45;
      }

      if (swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetOpaqueTypeDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v7, a2, a3, &v37))
      {
        goto LABEL_45;
      }
    }

LABEL_55:
    v19 = 0;
    *a4 = 0;
    *(a4 + 8) = 0;
    goto LABEL_56;
  }

  if ((*v20 & 0x1Fu) > 1)
  {
    if (v21 == 2)
    {
      if ((swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v7, a2, a3, &v37) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (v21 != 3 || (swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetProtocolDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v7, a2, a3, &v37) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    if (!v21)
    {
      (*(**(v7 + 2800) + 24))(&v32);
      std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](&v37, &v32);
      std::unique_ptr<void const,std::function<void ()(void const*)>>::~unique_ptr[abi:nn200100](&v32);
      v22 = v37;
      if (!v37)
      {
        goto LABEL_55;
      }

      goto LABEL_46;
    }

    if ((swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v7, a2, a3, &v37) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

LABEL_45:
  v22 = v37;
  if (!v37)
  {
    v23 = 0;
    goto LABEL_48;
  }

LABEL_46:
  v23 = v22;
LABEL_48:
  v32 = a2;
  v33 = a3;
  v37 = 0;
  v34 = v22;
  if (v39)
  {
    v24 = v23;
    if (v39 == v38)
    {
      v36 = v35;
      (*(*v39 + 24))();
    }

    else
    {
      v36 = v39;
      v39 = 0;
    }
  }

  else
  {
    v24 = v23;
    v36 = 0;
  }

  __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>,swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>::try_emplace<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 48, &v32, &v34, v31);
  v26 = v34;
  v34 = 0;
  if (v26)
  {
    v31[0] = v26;
    if (!v36)
    {
      goto LABEL_74;
    }

    (*(*v36 + 48))(v36, v31);
  }

  if (v36 == v35)
  {
    (*(*v36 + 32))(v36);
  }

  else if (v36)
  {
    (*(*v36 + 40))();
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  v19 = v24;
LABEL_56:
  *(a4 + 16) = v19;
  v25 = v37;
  v37 = 0;
  if (!v25)
  {
    goto LABEL_59;
  }

  v32 = v25;
  if (!v39)
  {
LABEL_74:
    v27 = std::__throw_bad_function_call[abi:nn200100]();
    return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>(v27, v28, v29, v30);
  }

  (*(*v39 + 48))(v39, &v32);
LABEL_59:
  result = v39;
  if (v39 == v38)
  {
    return (*(*v39 + 32))(v39);
  }

  if (v39)
  {
    return (*(*v39 + 40))();
  }

  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift::remote::MemoryReader::readObj<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(*(a1 + 2800), &v30);
  v6 = v30;
  v30 = 0;
  v7 = *a4;
  *a4 = v6;
  if (v7)
  {
    v33 = v7;
    v8 = a4[4];
    if (!v8)
    {
      goto LABEL_64;
    }

    (*(*v8 + 48))(v8, &v33);
  }

  v9 = a4[4];
  a4[4] = 0;
  if (v9 == a4 + 1)
  {
    (*(*v9 + 32))(v9);
    v10 = v32;
    if (v32)
    {
LABEL_8:
      if (v10 == v31)
      {
        a4[4] = (a4 + 1);
        (*(*v10 + 24))(v10, a4 + 1);
      }

      else
      {
        a4[4] = v10;
        v32 = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    v10 = v32;
    if (v32)
    {
      goto LABEL_8;
    }
  }

  a4[4] = 0;
LABEL_13:
  v11 = v30;
  v30 = 0;
  if (!v11)
  {
LABEL_16:
    if (v32 == v31)
    {
      (*(*v32 + 32))(v32);
      if (!*a4)
      {
        return 0;
      }
    }

    else
    {
      if (v32)
      {
        (*(*v32 + 40))();
      }

      if (!*a4)
      {
        return 0;
      }
    }

    v12 = -2;
    v13 = 44;
    while (1)
    {
      if (*a4)
      {
        v14 = *a4;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      if (v14)
      {
        v16 = v12 + 2;
        if (v12 != -2)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v15 = 0;
        v16 = v12 + 2;
        if (v12 != -2)
        {
LABEL_31:
          if (v16 != 1)
          {
            v22 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl( v15,  v12);
            if (v22 > v13)
            {
              goto LABEL_56;
            }

            goto LABEL_25;
          }

          v17 = v15;
          if (v15 == -44)
          {
            v18 = 0;
LABEL_34:
            v19 = v15;
          }

          else
          {
            v18 = v15 + 44;
            if (v15)
            {
              goto LABEL_34;
            }

            v19 = 0;
          }

          v23 = *v19;
          if ((v23 & 0x80) != 0)
          {
            if (v15)
            {
              v25 = v15;
            }

            else
            {
              v25 = 0;
            }

            v24 = *(v25 + 26);
          }

          else
          {
            v24 = 0;
          }

          v26 = &v18[16 * ((v23 >> 7) & 1) + v24];
          goto LABEL_53;
        }
      }

      v17 = v15;
      if (v15 == -44)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15 + 44;
        if (!v15)
        {
          v21 = 0;
          goto LABEL_49;
        }
      }

      v21 = v15;
LABEL_49:
      v26 = &v20[16 * ((*v21 >> 7) & 1)];
LABEL_53:
      if (!v15)
      {
        v17 = 0;
      }

      v22 = v26 - v17;
      if (v26 - v17 > v13)
      {
LABEL_56:
        (*(**(a1 + 2800) + 24))(&v30);
        std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](a4, &v30);
        v27 = v30;
        v30 = 0;
        if (v27)
        {
          v33 = v27;
          if (!v32)
          {
            goto LABEL_64;
          }

          (*(*v32 + 48))(v32, &v33);
        }

        if (v32 == v31)
        {
          (*(*v32 + 32))(v32);
        }

        else if (v32)
        {
          (*(*v32 + 40))();
        }

        v13 = v22;
        if (!*a4)
        {
          return 0;
        }
      }

LABEL_25:
      if (++v12 == 24)
      {
        return 1;
      }
    }
  }

  v33 = v11;
  if (v32)
  {
    (*(*v32 + 48))(v32, &v33);
    goto LABEL_16;
  }

LABEL_64:
  v29 = std::__throw_bad_function_call[abi:nn200100]();
  return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetEnumDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>(v29);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetEnumDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift::remote::MemoryReader::readObj<swift::TargetEnumDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(*(a1 + 2800), &v30);
  v6 = v30;
  v30 = 0;
  v7 = *a4;
  *a4 = v6;
  if (v7)
  {
    v33 = v7;
    v8 = a4[4];
    if (!v8)
    {
      goto LABEL_64;
    }

    (*(*v8 + 48))(v8, &v33);
  }

  v9 = a4[4];
  a4[4] = 0;
  if (v9 == a4 + 1)
  {
    (*(*v9 + 32))(v9);
    v10 = v32;
    if (v32)
    {
LABEL_8:
      if (v10 == v31)
      {
        a4[4] = (a4 + 1);
        (*(*v10 + 24))(v10, a4 + 1);
      }

      else
      {
        a4[4] = v10;
        v32 = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    v10 = v32;
    if (v32)
    {
      goto LABEL_8;
    }
  }

  a4[4] = 0;
LABEL_13:
  v11 = v30;
  v30 = 0;
  if (!v11)
  {
LABEL_16:
    if (v32 == v31)
    {
      (*(*v32 + 32))(v32);
      if (!*a4)
      {
        return 0;
      }
    }

    else
    {
      if (v32)
      {
        (*(*v32 + 40))();
      }

      if (!*a4)
      {
        return 0;
      }
    }

    v12 = -2;
    v13 = 28;
    while (1)
    {
      if (*a4)
      {
        v14 = *a4;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      if (v14)
      {
        v16 = v12 + 2;
        if (v12 != -2)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v15 = 0;
        v16 = v12 + 2;
        if (v12 != -2)
        {
LABEL_31:
          if (v16 != 1)
          {
            v22 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(v15, v12);
            if (v22 > v13)
            {
              goto LABEL_56;
            }

            goto LABEL_25;
          }

          v17 = v15;
          if (v15 == -28)
          {
            v18 = 0;
LABEL_34:
            v19 = v15;
          }

          else
          {
            v18 = v15 + 28;
            if (v15)
            {
              goto LABEL_34;
            }

            v19 = 0;
          }

          v23 = *v19;
          if ((v23 & 0x80) != 0)
          {
            if (v15)
            {
              v25 = v15;
            }

            else
            {
              v25 = 0;
            }

            v24 = *(v25 + 18);
          }

          else
          {
            v24 = 0;
          }

          v26 = &v18[16 * ((v23 >> 7) & 1) + v24];
          goto LABEL_53;
        }
      }

      v17 = v15;
      if (v15 == -28)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15 + 28;
        if (!v15)
        {
          v21 = 0;
          goto LABEL_49;
        }
      }

      v21 = v15;
LABEL_49:
      v26 = &v20[16 * ((*v21 >> 7) & 1)];
LABEL_53:
      if (!v15)
      {
        v17 = 0;
      }

      v22 = v26 - v17;
      if (v26 - v17 > v13)
      {
LABEL_56:
        (*(**(a1 + 2800) + 24))(&v30);
        std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](a4, &v30);
        v27 = v30;
        v30 = 0;
        if (v27)
        {
          v33 = v27;
          if (!v32)
          {
            goto LABEL_64;
          }

          (*(*v32 + 48))(v32, &v33);
        }

        if (v32 == v31)
        {
          (*(*v32 + 32))(v32);
        }

        else if (v32)
        {
          (*(*v32 + 40))();
        }

        v13 = v22;
        if (!*a4)
        {
          return 0;
        }
      }

LABEL_25:
      if (++v12 == 15)
      {
        return 1;
      }
    }
  }

  v33 = v11;
  if (v32)
  {
    (*(*v32 + 48))(v32, &v33);
    goto LABEL_16;
  }

LABEL_64:
  v29 = std::__throw_bad_function_call[abi:nn200100]();
  return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetStructDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>(v29);
}