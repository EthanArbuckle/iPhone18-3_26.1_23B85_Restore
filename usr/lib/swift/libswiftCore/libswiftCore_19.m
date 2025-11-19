uint64_t *anonymous namespace::Remangler::mangleKeyPathThunkHelper@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *(a2 + 18);
  v13 = a2;
  if ((v12 - 1) >= 2)
  {
    if (v12 == 5)
    {
      v14 = *a2;
      v13 = *a2;
LABEL_9:
      v15 = (v14 + 8 * *(a2 + 8));
      goto LABEL_14;
    }

    v13 = 0;
  }

  switch(v12)
  {
    case 1:
      v15 = (a2 + 8);
      goto LABEL_14;
    case 2:
      v15 = (a2 + 16);
      goto LABEL_14;
    case 5:
      v14 = *a2;
      goto LABEL_9;
  }

  v15 = 0;
LABEL_14:
  while (v13 != v15)
  {
    if (*(*v13 + 8) != 228)
    {
      if (*a6)
      {
        return result;
      }
    }

    ++v13;
  }

  result = swift::Demangle::__runtime::CharVector::append((a1 + 12728), a3, a4, *(a1 + 12744));
  v17 = *(a2 + 18);
  v18 = a2;
  if ((v17 - 1) >= 2)
  {
    if (v17 == 5)
    {
      v19 = *a2;
      v18 = *a2;
LABEL_26:
      v20 = (v19 + 8 * *(a2 + 8));
      goto LABEL_31;
    }

    v18 = 0;
  }

  switch(v17)
  {
    case 1:
      v20 = (a2 + 8);
      goto LABEL_31;
    case 2:
      v20 = (a2 + 16);
      goto LABEL_31;
    case 5:
      v19 = *a2;
      goto LABEL_26;
  }

  v20 = 0;
LABEL_31:
  while (v18 != v20)
  {
    if (*(*v18 + 8) == 228)
    {
      if (*a6)
      {
        return result;
      }
    }

    ++v18;
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  return result;
}

uint64_t *anonymous namespace::Remangler::mangleProtocolList@<X0>(const void **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, swift::Demangle::__runtime::Node *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v11 = *(a2 + 18);
  if ((v11 - 1) >= 2)
  {
    if (v11 != 5 || !*(a2 + 2))
    {
      v12 = 0;
      goto LABEL_7;
    }

    a2 = *a2;
  }

  v12 = *a2;
LABEL_7:
  v42 = 1;
  v13 = *(v12 + 18);
  v14 = v12;
  if ((v13 - 1) >= 2)
  {
    if (v13 == 5)
    {
      v15 = *v12;
      v14 = *v12;
      goto LABEL_15;
    }

    v14 = 0;
  }

  switch(v13)
  {
    case 1:
      v16 = v12 + 1;
      if (v14 != v12 + 1)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    case 2:
      v16 = v12 + 2;
      if (v14 != v12 + 2)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    case 5:
      v15 = *v12;
LABEL_15:
      v16 = (v15 + 8 * *(v12 + 2));
      if (v14 != v16)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
  }

  v16 = 0;
  if (!v14)
  {
LABEL_22:
    v17 = 1;
    goto LABEL_23;
  }

  do
  {
LABEL_31:
    v23 = *v14;
    if (*(*v14 + 8) != 243)
    {
      goto LABEL_38;
    }

    v24 = *(v23 + 18);
    if ((v24 - 1) < 2)
    {
      goto LABEL_36;
    }

    if (v24 == 5 && *(v23 + 2))
    {
      v23 = *v23;
LABEL_36:
      v23 = *v23;
      goto LABEL_38;
    }

    v23 = 0;
LABEL_38:
    {
      v25 = *(v23 + 18);
      v26 = v23;
      if ((v25 - 1) >= 2)
      {
        if (v25 == 5)
        {
          v27 = *v23;
          v26 = *v23;
LABEL_47:
          v28 = (v27 + 8 * *(v23 + 2));
          goto LABEL_53;
        }

        v26 = 0;
      }

      switch(v25)
      {
        case 1:
          v28 = (v23 + 8);
          goto LABEL_53;
        case 2:
          v28 = (v23 + 16);
          goto LABEL_53;
        case 5:
          v27 = *v23;
          goto LABEL_47;
      }

      v28 = 0;
LABEL_53:
      while (v26 != v28)
      {
        if (*a6)
        {
          return result;
        }

        ++v26;
      }
    }

    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    ++v14;
  }

  while (v14 != v16);
  v17 = v42;
LABEL_23:
  if (!a3)
  {
    v20 = this[1593];
    if (a4)
    {
      v21 = "Xl";
      v22 = (this + 1591);
LABEL_57:
      result = swift::Demangle::__runtime::CharVector::append(v22, v21, 2uLL, v20);
      v29 = 0;
      a3 = 0;
      v30 = 0;
      goto LABEL_77;
    }

    v31 = *(this + 3184);
    v32 = *(this + 3185);
    v33 = this[1591];
    if (v31 < v32)
    {
      goto LABEL_76;
    }

    v34 = v20[1];
    if (&v33[v32] == v34)
    {
      v35 = v20[2];
      if ((v34 + 1) <= v35)
      {
        v20[1] = v34 + 1;
        LODWORD(v36) = 1;
LABEL_75:
        *(this + 3185) = v32 + v36;
LABEL_76:
        v29 = 0;
        a3 = 0;
        v30 = 0;
        *(this + 3184) = v31 + 1;
        v33[v31] = 112;
        goto LABEL_77;
      }
    }

    else
    {
      v35 = v20[2];
    }

    if ((2 * v32) <= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = (2 * v32);
    }

    v37 = v36 + v32;
    if (!v34 || &v34[v37] > v35)
    {
      v38 = 2 * v20[4];
      if (v38 <= v37 + 1)
      {
        v38 = v37 + 1;
      }

      v20[4] = v38;
      v39 = v38 + 8;
      v40 = v20;
      result = malloc_type_malloc(v38 + 8, 0x2004093837F09uLL);
      v20 = v40;
      v41 = result + v39;
      *result = v40[3];
      v34 = (result + 1);
      v40[2] = v41;
      v40[3] = result;
    }

    v20[1] = &v34[v37];
    if (v32)
    {
      result = memcpy(v34, this[1591], v32);
    }

    this[1591] = v34;
    LODWORD(v32) = *(this + 3185);
    v33 = v34;
    v31 = *(this + 3184);
    goto LABEL_75;
  }

  v19 = *(a3 + 18);
  if (v19 == 1)
  {
    goto LABEL_28;
  }

  if (v19 != 5 || *(a3 + 2) != 1)
  {
    v30 = 322;
    v29 = 10;
LABEL_77:
    *a6 = v29;
    *(a6 + 8) = a3;
    *(a6 + 16) = v30;
    return result;
  }

  a3 = *a3;
LABEL_28:
  if (!*a6)
  {
    v20 = this[1593];
    v21 = "Xc";
    v22 = (this + 1591);
    goto LABEL_57;
  }

  return result;
}

uint64_t *anonymous namespace::Remangler::mangleAutoDiffFunctionOrSimpleThunk@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *(a2 + 18);
  v13 = a2;
  if ((v12 - 1) >= 2)
  {
    if (v12 == 5)
    {
      v13 = *a2;
    }

    else
    {
      v13 = 0;
    }
  }

  while (1)
  {
    v14 = *(a2 + 18);
    if (v14 != 5)
    {
      break;
    }

    if (v13 == (*a2 + 8 * *(a2 + 8)))
    {
      goto LABEL_18;
    }

LABEL_15:
    v17 = *v13;
    if (*(*v13 + 8) == 335)
    {
      goto LABEL_18;
    }

    ++v13;
    if (*a6)
    {
      return result;
    }
  }

  if (v14 == 1)
  {
    v15 = (a2 + 8);
  }

  else
  {
    v15 = 0;
  }

  if (v14 == 2)
  {
    v16 = (a2 + 16);
  }

  else
  {
    v16 = v15;
  }

  if (v13 != v16)
  {
    goto LABEL_15;
  }

LABEL_18:
  swift::Demangle::__runtime::CharVector::append((a1 + 12728), a3, a4, *(a1 + 12744));
  if (!*a6)
  {
    if (!*a6)
    {
      v19 = *(a1 + 12736);
      v20 = *(a1 + 12740);
      v21 = *(a1 + 12728);
      if (v19 >= v20)
      {
        v22 = *(a1 + 12744);
        v23 = v22[1];
        if (&v21[v20] != v23)
        {
          v24 = v22[2];
          goto LABEL_24;
        }

        v24 = v22[2];
        if ((v23 + 1) <= v24)
        {
          v22[1] = v23 + 1;
          LODWORD(v25) = 1;
        }

        else
        {
LABEL_24:
          if ((2 * v20) <= 4)
          {
            v25 = 4;
          }

          else
          {
            v25 = (2 * v20);
          }

          v26 = v25 + v20;
          if (!v23 || &v23[v26] > v24)
          {
            v27 = 2 * v22[4];
            if (v27 <= v26 + 1)
            {
              v27 = v26 + 1;
            }

            v22[4] = v27;
            v28 = v27 + 8;
            v29 = malloc_type_malloc(v27 + 8, 0x2004093837F09uLL);
            v30 = v29 + v28;
            *v29 = v22[3];
            v23 = (v29 + 1);
            v22[2] = v30;
            v22[3] = v29;
          }

          v22[1] = &v23[v26];
          if (v20)
          {
            memcpy(v23, *(a1 + 12728), v20);
          }

          *(a1 + 12728) = v23;
          LODWORD(v20) = *(a1 + 12740);
          v21 = v23;
          v19 = *(a1 + 12736);
        }

        *(a1 + 12740) = v20 + v25;
      }

      *(a1 + 12736) = v19 + 1;
      v21[v19] = 112;
      if (!*a6)
      {
        v31 = *(a1 + 12736);
        v32 = *(a1 + 12740);
        v33 = *(a1 + 12728);
        if (v31 >= v32)
        {
          v34 = *(a1 + 12744);
          v35 = v34[1];
          if (&v33[v32] != v35)
          {
            v36 = v34[2];
            goto LABEL_42;
          }

          v36 = v34[2];
          if ((v35 + 1) <= v36)
          {
            v34[1] = v35 + 1;
            LODWORD(v37) = 1;
          }

          else
          {
LABEL_42:
            if ((2 * v32) <= 4)
            {
              v37 = 4;
            }

            else
            {
              v37 = (2 * v32);
            }

            v38 = v37 + v32;
            if (!v35 || &v35[v38] > v36)
            {
              v39 = 2 * v34[4];
              if (v39 <= v38 + 1)
              {
                v39 = v38 + 1;
              }

              v34[4] = v39;
              v40 = v39 + 8;
              result = malloc_type_malloc(v39 + 8, 0x2004093837F09uLL);
              v41 = result + v40;
              *result = v34[3];
              v35 = (result + 1);
              v34[2] = v41;
              v34[3] = result;
            }

            v34[1] = &v35[v38];
            if (v32)
            {
              result = memcpy(v35, *(a1 + 12728), v32);
            }

            *(a1 + 12728) = v35;
            LODWORD(v32) = *(a1 + 12740);
            v33 = v35;
            v31 = *(a1 + 12736);
          }

          *(a1 + 12740) = v32 + v37;
        }

        *(a1 + 12736) = v31 + 1;
        v33[v31] = 114;
        *a6 = 0;
        *(a6 + 8) = 0;
        *(a6 + 16) = 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::find<swift::Demangle::__runtime::SubstitutionEntry>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 8);
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = i[1];
    if (v10 == v4)
    {
      if (i[3] == *(a2 + 8) && *(i + 32) == *(a2 + 16))
      {
        v11 = *a2;
        if (*(i + 32))
        {
          if (swift::Demangle::__runtime::SubstitutionEntry::identifierEquals(i[2], *a2, v11))
          {
            return i;
          }
        }

        else if (swift::Demangle::__runtime::SubstitutionEntry::deepEquals((i + 2), i[2], v11))
        {
          return i;
        }
      }
    }

    else
    {
      if (v6 <= 1)
      {
        v10 &= *&v2 - 1;
      }

      else if (v10 >= *&v2)
      {
        v10 %= *&v2;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *std::__hash_table<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::__unordered_map_hasher<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,true>,std::__unordered_map_equal<swift::Demangle::__runtime::SubstitutionEntry,std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>,std::equal_to<swift::Demangle::__runtime::SubstitutionEntry>,swift::Demangle::__runtime::SubstitutionEntry::Hasher,true>,std::allocator<std::__hash_value_type<swift::Demangle::__runtime::SubstitutionEntry,unsigned int>>>::__emplace_unique_key_args<swift::Demangle::__runtime::SubstitutionEntry,std::pair<swift::Demangle::__runtime::SubstitutionEntry const,unsigned int>>(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 8);
    if (v2 >= *&v3)
    {
      v7 = v2 % *&v3;
    }
  }

  else
  {
    v7 = (*&v3 - 1) & v2;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v2)
    {
      break;
    }

    if (v6 <= 1)
    {
      v10 &= *&v3 - 1;
    }

    else if (v10 >= *&v3)
    {
      v10 %= *&v3;
    }

    if (v10 != v7)
    {
      goto LABEL_24;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  if (v9[3] != *(a2 + 8) || *(v9 + 32) != *(a2 + 16))
  {
    goto LABEL_12;
  }

  v11 = *a2;
  if (*(v9 + 32))
  {
    if (swift::Demangle::__runtime::SubstitutionEntry::identifierEquals(v9[2], *a2, v11))
    {
      return v9;
    }

    goto LABEL_12;
  }

  if ((swift::Demangle::__runtime::SubstitutionEntry::deepEquals((v9 + 2), v9[2], v11) & 1) == 0)
  {
    goto LABEL_12;
  }

  return v9;
}

const char *swift::Demangle::__runtime::getNodeKindString(unsigned int a1)
{
  if (a1 > 0x175)
  {
    return "Demangle::Node::Kind::???";
  }

  else
  {
    return off_1E69EB1E8[a1];
  }
}

double swift::Demangle::__runtime::getNodeTreeAsString@<D0>(swift::Demangle::__runtime *this@<X0>, std::string *a2@<X8>)
{
  memset(&v5, 0, sizeof(v5));
  printNode(&v5, this, 0);
  result = *&v5.__r_.__value_.__l.__data_;
  *a2 = v5;
  return result;
}

void printNode(std::string *a1, const swift::Demangle::__runtime::Node *a2, int a3)
{
  for (i = 2 * a3; i; --i)
  {
    std::string::push_back(a1, 32);
  }

  if (a2)
  {
    std::string::append(a1, "kind=", 5uLL);
    v7 = a2 + 16;
    NodeKindString = swift::Demangle::__runtime::getNodeKindString(*(a2 + 8));
    v9 = strlen(NodeKindString);
    std::string::append(a1, NodeKindString, v9);
    v10 = *(a2 + 18);
    if (v10 == 3)
    {
      std::string::append(a1, ", text=", 8uLL);
      std::string::append(a1, *a2, *(a2 + 1));
      std::string::push_back(a1, 34);
      v10 = *(a2 + 18);
    }

    if (v10 == 4)
    {
      std::string::append(a1, ", index=", 8uLL);
      swift::Demangle::__runtime::DemanglerPrinter::operator<<(a1, *a2);
    }

    std::string::push_back(a1, 10);
    v11 = *(a2 + 18);
    v12 = a2;
    if ((v11 - 1) >= 2)
    {
      if (v11 == 5)
      {
        v13 = *a2;
        v12 = *a2;
LABEL_19:
        v7 = &v13[8 * *(a2 + 2)];
        goto LABEL_23;
      }

      v12 = 0;
    }

    switch(v11)
    {
      case 1:
        v7 = a2 + 8;
        break;
      case 2:
        break;
      case 5:
        v13 = *a2;
        goto LABEL_19;
      default:
        v7 = 0;
        break;
    }

LABEL_23:
    while (v12 != v7)
    {
      v14 = *v12;
      v12 += 8;
      printNode(a1, v14, a3 + 1);
    }

    return;
  }

  std::string::append(a1, "<<NULL>>", 8uLL);
}

void swift::Demangle::__runtime::Node::dump(swift::Demangle::__runtime::Node *this)
{
  memset(&v3, 0, sizeof(v3));
  printNode(&v3, this, 0);
  __p = v3;
  if ((v3.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v3.__r_.__value_.__r.__words[0];
  }

  fputs(p_p, *MEMORY[0x1E69E9848]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t swift::Demangle::__runtime::Demangler::dump(swift::Demangle::__runtime::Demangler *this)
{
  v2 = MEMORY[0x1E69E9848];
  if (*(this + 28))
  {
    v3 = 0;
    do
    {
      fprintf(*v2, "Substitution[%c]:\n", v3 + 65);
      v4 = *(*(this + 13) + 8 * v3);
      memset(&v11, 0, sizeof(v11));
      printNode(&v11, v4, 0);
      __p = v11;
      if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v11.__r_.__value_.__r.__words[0];
      }

      fputs(p_p, *v2);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      fputc(10, *v2);
      ++v3;
    }

    while (*(this + 28) > v3);
  }

  if (*(this + 24))
  {
    v6 = 0;
    do
    {
      fprintf(*v2, "NodeStack[%u]:\n", v6);
      v7 = *(*(this + 11) + 8 * v6);
      memset(&v11, 0, sizeof(v11));
      printNode(&v11, v7, 0);
      __p = v11;
      if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &__p;
      }

      else
      {
        v8 = v11.__r_.__value_.__r.__words[0];
      }

      fputs(v8, *v2);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      fputc(10, *v2);
      ++v6;
    }

    while (*(this + 24) > v6);
  }

  return fprintf(*v2, "Position = %zd:\n%.*s\n%*s\n", *(this + 9), *(this + 8), *(this + 7), *(this + 9) + 1, "^");
}

void swift::Demangle::__runtime::warnv(swift::Demangle::__runtime *this, char *__format, va_list a3, char *a4)
{
  v5 = vsnprintf(0, 0, __format, a3);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = (v5 + 1);
    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (v7)
    {
      v8 = v7;
      if ((vsnprintf(v7, v6, __format, a3) & 0x80000000) == 0)
      {
        v9 = MEMORY[0x1E69E9848];
        fputs(v8, *MEMORY[0x1E69E9848]);
        fflush(*v9);
        asl_log(0, 0, 3, "%s", v8);
        free(v8);
        return;
      }

      free(v8);
    }
  }

  v10 = MEMORY[0x1E69E9848];
  fputs("unable to format warning message", *MEMORY[0x1E69E9848]);
  fflush(*v10);
  asl_log(0, 0, 3, "%s", "unable to format warning message");
}

void demangleFatal(char *__format, va_list a2, char *a3)
{
  v4 = vsnprintf(0, 0, __format, a2);
  if ((v4 & 0x80000000) == 0)
  {
    v6 = (v4 + 1);
    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (v7)
    {
      v8 = v7;
      if ((vsnprintf(v7, v6, __format, a2) & 0x80000000) == 0)
      {
        reportError(v8, v9);
        abort();
      }

      free(v8);
    }
  }

  reportError("unable to format fatal error message", v5);
  abort();
}

void reportError(const char *a1, const char *a2)
{
  v3 = MEMORY[0x1E69E9848];
  fputs(a1, *MEMORY[0x1E69E9848]);
  fflush(*v3);
  asl_log(0, 0, 3, "%s", a1);
  v5 = 0;
  v9 = 0;
  for (i = qword_1EA79DC90[0]; ; i = v8)
  {
    if (v5)
    {
      free(v5);
      v9 = 0;
    }

    if (i)
    {
      break;
    }

    v7 = strdup(a1);
    v8 = 0;
    v9 = v7;
    atomic_compare_exchange_strong_explicit(qword_1EA79DC90, &v8, v7, memory_order_release, memory_order_relaxed);
    if (!v8)
    {
      return;
    }

LABEL_3:
    v5 = v9;
  }

  swift_asprintf(&v9, v4, i, a1);
  v8 = i;
  atomic_compare_exchange_strong_explicit(qword_1EA79DC90, &v8, v9, memory_order_release, memory_order_relaxed);
  if (v8 != i)
  {
    goto LABEL_3;
  }

  if (malloc_size(i))
  {

    free(i);
  }
}

unsigned int *swift::Demangle::__runtime::demangleOldSymbolAsNode(_WORD *a1, size_t a2, swift::Demangle::__runtime::NodeFactory *a3)
{
  __p = 0;
  v171 = 0;
  v172 = 0;
  __src = a1;
  __len = a2;
  v175 = a3;
  v3 = a2 - 2;
  if (a2 < 2 || *a1 != 21599)
  {
    goto LABEL_3;
  }

  v8 = a1 + 1;
  __src = a1 + 1;
  __len = a2 - 2;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(a3, 101);
  if (v3 < 2)
  {
    goto LABEL_202;
  }

  if (*v8 != 21332)
  {
    if (*v8 == 28500)
    {
      __src = a1 + 2;
      __len = a2 - 4;
      v11 = a3;
      v12 = 174;
    }

    else
    {
      v11 = a3;
      switch(*v8)
      {
        case 0x4F54:
          __src = a1 + 2;
          __len = a2 - 4;
          v12 = 170;
          break;
        case 0x4454:
          __src = a1 + 2;
          __len = a2 - 4;
          v12 = 57;
          break;
        case 0x6454:
          __src = a1 + 2;
          __len = a2 - 4;
          v12 = 58;
          break;
        case 0x5654:
          __src = a1 + 2;
          __len = a2 - 4;
          v11 = a3;
          v12 = 268;
          break;
        default:
          goto LABEL_202;
      }
    }

    v153 = swift::Demangle::__runtime::NodeFactory::createNode(v11, v12);
    swift::Demangle::__runtime::Node::addChild(Node, v153, a3, v154, v155);
LABEL_202:
    if (!v156)
    {
      goto LABEL_3;
    }

    swift::Demangle::__runtime::Node::addChild(Node, v156, v175, v157, v158);
    v159 = __len;
    if (__len)
    {
      v160 = v175;
      v161 = __src;
      __src = __src + __len;
      __len = 0;
      v162 = *(v175 + 1);
      if (!v162 || (v163 = &v162[v159], &v162[v159] > *(v175 + 2)))
      {
        v164 = 2 * *(v175 + 4);
        if (v164 <= v159 + 1)
        {
          v164 = v159 + 1;
        }

        *(v175 + 4) = v164;
        v165 = v164 + 8;
        v166 = malloc_type_malloc(v164 + 8, 0x2004093837F09uLL);
        *v166 = *(v160 + 3);
        v162 = (v166 + 1);
        *(v160 + 2) = v166 + v165;
        *(v160 + 3) = v166;
        v163 = v166 + v159 + 8;
      }

      *(v160 + 1) = v163;
      memmove(v162, v161, v159);
      NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v160, 232, v162, v159);
      swift::Demangle::__runtime::Node::addChild(Node, NodeWithAllocatedText, v175, v168, v169);
    }

    v4 = Node;
    goto LABEL_4;
  }

  v13 = (a1 + 2);
  v14 = a2 - 4;
  __src = a1 + 2;
  __len = a2 - 4;
  if (a2 == 4)
  {
    goto LABEL_3;
  }

  v15 = "u16";
  while (1)
  {
    v16 = *v13;
    switch(v16)
    {
      case 'f':
        __src = v13 + 1;
        __len = v14 - 1;
        v18 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 79);
        v26 = __len;
        if (__len)
        {
          v27 = __src;
          v28 = *__src;
          if (v28 == 113)
          {
            __src = __src + 1;
            --__len;
            v29 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 228);
            swift::Demangle::__runtime::Node::addChild(v18, v29, v175, v30, v31);
            v26 = __len;
            v32 = v175;
            if (!__len)
            {
              v46 = 4294967294;
              goto LABEL_46;
            }

            v27 = __src;
            LOBYTE(v28) = *__src;
          }

          else
          {
            v32 = v175;
          }

          __src = v27 + 1;
          __len = v26 - 1;
          v46 = (v28 - 48);
        }

        else
        {
          v32 = v175;
          v46 = 4294967294;
        }

LABEL_46:
        v49 = swift::Demangle::__runtime::NodeFactory::createNode(v32, 227, v46);
        while (1)
        {
          while (1)
          {
            while (1)
            {
              swift::Demangle::__runtime::Node::addChild(v18, v49, v175, v47, v48);
              v39 = __len;
              if (__len)
              {
                v40 = __src;
                if (*__src == 95)
                {
                  goto LABEL_191;
                }
              }

              v49 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 80);
              v50 = __len;
              v51 = __len - 2;
              if (__len < 2)
              {
                if (!__len)
                {
                  goto LABEL_3;
                }

                v52 = __src;
                goto LABEL_53;
              }

              v52 = __src;
              if (*__src != 24430)
              {
                break;
              }

              __src = __src + 2;
              __len -= 2;
            }

            if (*__src == 28771)
            {
              break;
            }

            switch(*__src)
            {
              case 0x6C63:
                __src = __src + 2;
                __len -= 2;
                if (!v59)
                {
                  goto LABEL_3;
                }

                v60 = v59;
                v61 = v15;
                v62 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 82, 5);
                swift::Demangle::__runtime::Node::addChild(v49, v62, v175, v63, v64);
                v65 = v175;
                v66 = *(v60 + 8);
                if (v66)
                {
                  v67 = *v60;
                  v68 = *(v175 + 1);
                  if (!v68 || (v69 = &v68[v66], &v68[v66] > *(v175 + 2)))
                  {
                    v70 = 2 * *(v175 + 4);
                    if (v70 <= v66 + 1)
                    {
                      v70 = v66 + 1;
                    }

                    *(v175 + 4) = v70;
                    v71 = v70 + 8;
                    v72 = malloc_type_malloc(v70 + 8, 0x2004093837F09uLL);
                    *v72 = *(v65 + 3);
                    v68 = (v72 + 1);
                    *(v65 + 2) = v72 + v71;
                    *(v65 + 3) = v72;
                    v69 = v72 + v66 + 8;
                  }

                  *(v65 + 1) = v69;
                  memmove(v68, v67, v66);
                }

                else
                {
                  v68 = 0;
                }

                v114 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v65, 83, v68, v66);
                swift::Demangle::__runtime::Node::addChild(v49, v114, v175, v115, v116);
                v15 = v61;
                if (__len)
                {
LABEL_147:
                  if (*__src != 95)
                  {
                    goto LABEL_148;
                  }
                }

                else
                {
LABEL_148:
                  while (1)
                  {
                    if (!v117)
                    {
                      break;
                    }

                    v118 = v117;
                    v119 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 243);
                    swift::Demangle::__runtime::Node::addChild(v119, v118, v175, v120, v121);
                    if (!v119)
                    {
                      break;
                    }

                    swift::Demangle::__runtime::Node::addChild(v49, v119, v175, v47, v48);
                    if (__len)
                    {
                      goto LABEL_147;
                    }
                  }
                }

                if (!__len || *__src != 95)
                {
                  goto LABEL_3;
                }

                __src = __src + 1;
                --__len;
                break;
              case 0x5F69:
                __src = __src + 2;
                __len -= 2;
                v55 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 82, 6);
                if (!v55)
                {
                  goto LABEL_3;
                }

                goto LABEL_77;
              case 0x5F6B:
                __src = __src + 2;
                __len -= 2;
                v55 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 82, 7);
                if (!v55)
                {
                  goto LABEL_3;
                }

                goto LABEL_77;
              case 0x5F72:
                __src = __src + 2;
                __len -= 2;
                v55 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 82, 8);
                if (!v55)
                {
                  goto LABEL_3;
                }

                goto LABEL_77;
              default:
LABEL_53:
                v53 = *v52;
                if (v53 == 100)
                {
                  ++v52;
                  v50 = __len - 1;
                  __src = v52;
                  __len = v50;
                  if (!v50)
                  {
                    goto LABEL_3;
                  }

                  v53 = *v52;
                  v54 = 64;
                }

                else
                {
                  v54 = 0;
                }

                if (v53 == 103)
                {
                  ++v52;
                  --v50;
                  __src = v52;
                  __len = v50;
                  if (!v50)
                  {
                    goto LABEL_3;
                  }

                  v54 |= 0x80uLL;
                  v53 = *v52;
                }

                if (v53 == 111)
                {
                  ++v52;
                  --v50;
                  __src = v52;
                  __len = v50;
                  if (!v50)
                  {
                    goto LABEL_3;
                  }

                  v54 |= 0x200uLL;
                  v53 = *v52;
                }

                if (v53 == 115)
                {
                  ++v52;
                  --v50;
                  __src = v52;
                  __len = v50;
                  if (!v50)
                  {
                    goto LABEL_3;
                  }

                  v54 |= 0x100uLL;
                  v53 = *v52;
                }

                if (v53 != 95)
                {
                  goto LABEL_3;
                }

                __src = v52 + 1;
                __len = v50 - 1;
                if (!v54)
                {
                  goto LABEL_3;
                }

                v55 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 82, v54);
                if (!v55)
                {
                  goto LABEL_3;
                }

LABEL_77:
                swift::Demangle::__runtime::Node::addChild(v49, v55, v175, v56, v57);
                break;
            }
          }

          v58 = __src + 2;
          __src = __src + 2;
          __len -= 2;
          if (v51 >= 2)
          {
            if (*v58 != 29286)
            {
              goto LABEL_90;
            }

            __src = v52 + 4;
            __len = v50 - 4;
            if (!v122 || !__len || *__src != 95)
            {
              goto LABEL_3;
            }

            v75 = v122;
            v76 = v15;
            __src = __src + 1;
            --__len;
            v77 = v175;
            v78 = 0;
LABEL_159:
            v123 = swift::Demangle::__runtime::NodeFactory::createNode(v77, 82, v78);
            swift::Demangle::__runtime::Node::addChild(v49, v123, v175, v124, v125);
            v126 = v175;
            v127 = *(v75 + 8);
            if (v127)
            {
              v128 = *v75;
              v129 = *(v175 + 1);
              if (!v129 || (v130 = &v129[v127], &v129[v127] > *(v175 + 2)))
              {
                v131 = 2 * *(v175 + 4);
                if (v131 <= v127 + 1)
                {
                  v131 = v127 + 1;
                }

                *(v175 + 4) = v131;
                v132 = v131 + 8;
                v133 = malloc_type_malloc(v131 + 8, 0x2004093837F09uLL);
                *v133 = *(v126 + 3);
                v129 = (v133 + 1);
                *(v126 + 2) = v133 + v132;
                *(v126 + 3) = v133;
                v130 = v133 + v127 + 8;
              }

              *(v126 + 1) = v130;
              memmove(v129, v128, v127);
            }

            else
            {
              v129 = 0;
            }

            v134 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v126, 83, v129, v127);
            swift::Demangle::__runtime::Node::addChild(v49, v134, v175, v135, v136);
            v15 = v76;
          }

          else
          {
            if (!v51)
            {
              goto LABEL_3;
            }

LABEL_90:
            v73 = *v58;
            if (v73 == 105)
            {
              v79 = v52 + 3;
              memset(&v176, 0, sizeof(v176));
              v80 = v50 - 3;
              __src = v79;
              __len = v80;
              if (v80)
              {
                v81 = *v79;
                if (v81 == 95)
                {
LABEL_106:
                  __src = v79 + 1;
                  __len = v80 - 1;
                  v84 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 82, 2);
                  swift::Demangle::__runtime::Node::addChild(v49, v84, v175, v85, v86);
                  v87 = v175;
                  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v88 = &v176;
                  }

                  else
                  {
                    v88 = v176.__r_.__value_.__r.__words[0];
                  }

                  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = SHIBYTE(v176.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v176.__r_.__value_.__l.__size_;
                  }

                  if (size)
                  {
                    v90 = *(v175 + 1);
                    if (!v90 || (v91 = &v90[size], &v90[size] > *(v175 + 2)))
                    {
                      v92 = 2 * *(v175 + 4);
                      if (v92 <= size + 1)
                      {
                        v92 = size + 1;
                      }

                      *(v175 + 4) = v92;
                      v93 = v92 + 8;
                      v94 = malloc_type_malloc(v92 + 8, 0x2004093837F09uLL);
                      *v94 = *(v87 + 3);
                      v90 = (v94 + 1);
                      *(v87 + 2) = v94 + v93;
                      *(v87 + 3) = v94;
                      v91 = v94 + size + 8;
                    }

                    *(v87 + 1) = v91;
                    memmove(v90, v88, size);
                  }

                  else
                  {
                    v90 = 0;
                  }

                  v149 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v87, 83, v90, size);
                  swift::Demangle::__runtime::Node::addChild(v49, v149, v175, v150, v151);
                  v148 = 1;
                  v15 = "u16";
                  goto LABEL_186;
                }

                while (1)
                {
                  std::string::push_back(&v176, v81);
                  v82 = __len;
                  v83 = __len != 0;
                  v79 = __len ? __src + 1 : __src;
                  v80 = __len - v83;
                  __src = v79;
                  __len -= v83;
                  if (v82 <= 1)
                  {
                    break;
                  }

                  v81 = *v79;
                  if (v81 == 95)
                  {
                    if (!v80)
                    {
                      goto LABEL_183;
                    }

                    goto LABEL_106;
                  }
                }
              }

              goto LABEL_183;
            }

            if (v73 == 103)
            {
              __src = v52 + 3;
              __len = v50 - 3;
              if (!v74 || !__len || *__src != 95)
              {
                goto LABEL_3;
              }

              v75 = v74;
              v76 = v15;
              __src = __src + 1;
              --__len;
              v77 = v175;
              v78 = 1;
              goto LABEL_159;
            }

            if (v51 >= 2 && *v58 == 27750)
            {
              v137 = v52 + 4;
              memset(&v176, 0, sizeof(v176));
              v138 = v50 - 4;
              __src = v137;
              __len = v138;
              if (!v138)
              {
                goto LABEL_183;
              }

              v139 = *v137;
              if (v139 != 95)
              {
                while (1)
                {
                  std::string::push_back(&v176, v139);
                  v140 = __len;
                  v141 = __len != 0;
                  v137 = __len ? __src + 1 : __src;
                  v138 = __len - v141;
                  __src = v137;
                  __len -= v141;
                  if (v140 <= 1)
                  {
                    break;
                  }

                  v139 = *v137;
                  if (v139 == 95)
                  {
                    if (!v138)
                    {
                      break;
                    }

                    goto LABEL_176;
                  }
                }

LABEL_183:
                v148 = 0;
                goto LABEL_186;
              }

LABEL_176:
              __src = v137 + 1;
              __len = v138 - 1;
              v142 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 82, 3);
              swift::Demangle::__runtime::Node::addChild(v49, v142, v175, v143, v144);
              v111 = v175;
              if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v112 = &v176;
              }

              else
              {
                v112 = v176.__r_.__value_.__r.__words[0];
              }

              if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v113 = SHIBYTE(v176.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v113 = v176.__r_.__value_.__l.__size_;
              }
            }

            else
            {
              if (v73 != 115)
              {
                goto LABEL_3;
              }

              __src = v52 + 3;
              __len = v50 - 3;
              if (v50 == 3)
              {
                goto LABEL_3;
              }

              if (v52[3] != 101)
              {
                goto LABEL_3;
              }

              v95 = (v52 + 4);
              __src = v95;
              __len = v50 - 4;
              if (v50 == 4)
              {
                goto LABEL_3;
              }

              v96 = *v95;
              if ((v96 - 50) < 0xFFFFFFFE)
              {
                goto LABEL_3;
              }

              memset(&v176, 0, sizeof(v176));
              if (v96 == 48)
              {
                v97 = "u8";
              }

              else
              {
                v97 = v15;
              }

              std::string::append(&v176, v97);
              v98 = __src;
              v99 = __len;
              if (__len)
              {
                v98 = __src + 1;
              }

              v100 = __len - (__len != 0);
              __src = v98;
              __len = v100;
              if (v99 < 2)
              {
                goto LABEL_183;
              }

              if (*v98 != 118)
              {
                goto LABEL_183;
              }

              __src = v98 + 1;
              __len = v100 - 1;
              if (!v101 || !__len || *__src != 95)
              {
                goto LABEL_183;
              }

              v102 = v101;
              __src = __src + 1;
              --__len;
              v103 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 82, 4);
              swift::Demangle::__runtime::Node::addChild(v49, v103, v175, v104, v105);
              if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v106 = &v176;
              }

              else
              {
                v106 = v176.__r_.__value_.__r.__words[0];
              }

              if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v107 = SHIBYTE(v176.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v107 = v176.__r_.__value_.__l.__size_;
              }

              v108 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 83, v106, v107);
              swift::Demangle::__runtime::Node::addChild(v49, v108, v175, v109, v110);
              v111 = v175;
              v112 = *v102;
              v113 = *(v102 + 8);
            }

            v145 = swift::Demangle::__runtime::NodeFactory::createNode(v111, 83, v112, v113);
            swift::Demangle::__runtime::Node::addChild(v49, v145, v175, v146, v147);
            v148 = 1;
LABEL_186:
            if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v176.__r_.__value_.__l.__data_);
            }

            v4 = 0;
            if ((v148 & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }

      case 'g':
        v17 = 93;
        break;
      case 'r':
        v17 = 94;
        break;
      default:
        goto LABEL_3;
    }

    __src = v13 + 1;
    __len = v14 - 1;
    v18 = swift::Demangle::__runtime::NodeFactory::createNode(v175, v17);
    v19 = __len;
    if (!__len)
    {
      v25 = v175;
      v33 = 4294967294;
      goto LABEL_33;
    }

    v20 = __src;
    v21 = *__src;
    if (v21 != 113)
    {
      v25 = v175;
      goto LABEL_32;
    }

    __src = __src + 1;
    --__len;
    v22 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 228);
    swift::Demangle::__runtime::Node::addChild(v18, v22, v175, v23, v24);
    v19 = __len;
    v25 = v175;
    if (__len)
    {
      v20 = __src;
      LOBYTE(v21) = *__src;
LABEL_32:
      __src = v20 + 1;
      __len = v19 - 1;
      v33 = (v21 - 48);
      goto LABEL_33;
    }

    v33 = 4294967294;
LABEL_33:
    v36 = swift::Demangle::__runtime::NodeFactory::createNode(v25, 227, v33);
    while (1)
    {
      swift::Demangle::__runtime::Node::addChild(v18, v36, v175, v34, v35);
      v39 = __len;
      if (__len)
      {
        v40 = __src;
        if (*__src == 95)
        {
          break;
        }
      }

      v36 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 96);
      if (!v4)
      {
        goto LABEL_4;
      }

      v41 = swift::Demangle::__runtime::NodeFactory::createNode(v175, 243);
      swift::Demangle::__runtime::Node::addChild(v41, v4, v175, v42, v43);
      if (!v41)
      {
        goto LABEL_3;
      }

      while (1)
      {
        swift::Demangle::__runtime::Node::addChild(v36, v41, v175, v44, v45);
        if (__len)
        {
          if (*__src == 95)
          {
            break;
          }
        }

        v4 = 0;
        if (!v41)
        {
          goto LABEL_4;
        }
      }

      __src = __src + 1;
      --__len;
    }

LABEL_191:
    __src = v40 + 1;
    __len = v39 - 1;
    if (!v18)
    {
      goto LABEL_3;
    }

    swift::Demangle::__runtime::Node::addChild(Node, v18, v175, v37, v38);
    v171 = __p;
    if (__len < 4)
    {
      break;
    }

    v152 = __src;
    if (*__src != 1398035551)
    {
      goto LABEL_213;
    }

    v4 = 0;
    v13 = __src + 4;
    v14 = __len - 4;
    __src = __src + 4;
    __len = v14;
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  if (__len >= 2)
  {
    v152 = __src;
LABEL_213:
    if (*v152 == 21599)
    {
      __src = v152 + 1;
      __len -= 2;
      goto LABEL_202;
    }
  }

LABEL_3:
  v4 = 0;
LABEL_4:
  if (__p)
  {
    v171 = __p;
    operator delete(__p);
  }

  return v4;
}

unsigned int *anonymous namespace::OldDemangler::demangleGlobal(_anonymous_namespace_::OldDemangler *this, unsigned int a2)
{
  if (a2 > 0x400)
  {
    return 0;
  }

  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  v4 = *v3;
  if (v4 == 77)
  {
    *(this + 3) = v3 + 1;
    *(this + 4) = v2 - 1;
    if (v2 == 1)
    {
      goto LABEL_39;
    }

    v5 = v3[1];
    if (v5 > 0x65)
    {
      if (v3[1] <= 0x6Du)
      {
        if (v5 != 102)
        {
          if (v5 == 109)
          {
            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            v6 = this;
            v7 = *(this + 5);
            v8 = a2;
            v9 = 156;
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v6 = this;
        v7 = *(this + 5);
        v8 = a2;
        v9 = 77;
LABEL_40:
        Node = swift::Demangle::__runtime::NodeFactory::createNode(v7, v9);
        v35 = v8 + 1;
        v33 = v6;
        if (v34)
        {
          goto LABEL_41;
        }

        return 0;
      }

      if (v5 == 110)
      {
        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v6 = this;
        v7 = *(this + 5);
        v8 = a2;
        v9 = 168;
        goto LABEL_40;
      }

      if (v5 == 112)
      {
        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 196);
        v32 = a2 + 1;
        v33 = this;
        if (v34)
        {
LABEL_41:
          v36 = v34;
          v37 = *(v33 + 5);
LABEL_42:
          v38 = Node;
LABEL_43:
          swift::Demangle::__runtime::Node::addChild(v38, v36, v37, v23, v24);
          return Node;
        }

        return 0;
      }

LABEL_39:
      v6 = this;
      v7 = *(this + 5);
      v8 = a2;
      v9 = 248;
      goto LABEL_40;
    }

    v8 = a2;
    switch(v5)
    {
      case 'L':
        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v6 = this;
        v7 = *(this + 5);
        v9 = 256;
        goto LABEL_40;
      case 'P':
        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v25 = this;
        v26 = *(this + 5);
        v27 = 99;
        break;
      case 'a':
        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v25 = this;
        v26 = *(this + 5);
        v27 = 249;
        break;
      default:
        goto LABEL_39;
    }

LABEL_69:
    Node = swift::Demangle::__runtime::NodeFactory::createNode(v26, v27);
    v63 = v25;
    if (v64)
    {
      v65 = v64;
      v66 = swift::Demangle::__runtime::NodeFactory::createNode(*(v25 + 5), 243);
      swift::Demangle::__runtime::Node::addChild(v66, v65, *(v63 + 5), v67, v68);
      if (v66)
      {
        v37 = *(v63 + 5);
        v38 = Node;
        v36 = v66;
        goto LABEL_43;
      }
    }

    return 0;
  }

  v10 = v2 - 1;
  if (v2 != 1 && *v3 == 16720)
  {
    *(this + 3) = v3 + 2;
    *(this + 4) = v2 - 2;
    if (v2 == 2 || v3[2] != 111)
    {
      v28 = a2;
      v29 = 180;
    }

    else
    {
      v28 = a2;
      *(this + 3) = v3 + 3;
      *(this + 4) = v2 - 3;
      v29 = 181;
    }

    v11 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), v29);
    v54 = *(this + 4);
    v55 = v54 >= 3;
    v56 = v54 - 3;
    if (!v55)
    {
      return v11;
    }

    v57 = *(this + 3);
    if (*v57 != 24415 || *(v57 + 2) != 84)
    {
      return v11;
    }

    v59 = v11;
    *(this + 3) = v57 + 3;
    *(this + 4) = v56;
    if (v60)
    {
      swift::Demangle::__runtime::Node::addChild(v59, v60, *(this + 5), v61, v62);
      return v59;
    }

    return 0;
  }

  if (*v3 > 0x73u)
  {
    if (v4 == 119)
    {
      *(this + 3) = v3 + 1;
      *(this + 4) = v10;
      v15 = this;
      if ((v47 & 0x100000000) == 0)
      {
        return 0;
      }

      v48 = v47;
      v49 = swift::Demangle::__runtime::NodeFactory::createNode(*(v15 + 5), 264);
      v50 = swift::Demangle::__runtime::NodeFactory::createNode(*(v15 + 5), 104, v48);
      Node = v49;
      swift::Demangle::__runtime::Node::addChild(v49, v50, *(v15 + 5), v51, v52);
      if (!v22)
      {
        return 0;
      }

      goto LABEL_54;
    }

    if (v4 == 116)
    {
      *(this + 3) = v3 + 1;
      *(this + 4) = v10;
      v25 = this;
      v26 = *(this + 5);
      v8 = a2;
      v27 = 247;
      goto LABEL_69;
    }
  }

  else
  {
    if (v4 == 84)
    {
      *(this + 3) = v3 + 1;
      *(this + 4) = v2 - 1;
      if (v2 == 1)
      {
        return 0;
      }

      v41 = v3[1];
      switch(v41)
      {
        case 'r':
          *(this + 3) = v3 + 2;
          *(this + 4) = v2 - 2;
          v42 = this;
          v43 = *(this + 5);
          v44 = a2;
          v45 = 210;
          break;
        case 'W':
          *(this + 3) = v3 + 2;
          *(this + 4) = v2 - 2;
          Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 206);
          v76 = a2;
          v77 = a2 + 1;
          v33 = this;
          if (v78)
          {
            swift::Demangle::__runtime::Node::addChild(Node, v78, *(this + 5), v79, v80);
            if (v34)
            {
              goto LABEL_41;
            }
          }

          return 0;
        case 'R':
          *(this + 3) = v3 + 2;
          *(this + 4) = v2 - 2;
          v42 = this;
          v43 = *(this + 5);
          v44 = a2;
          v45 = 211;
          break;
        default:
          return 0;
      }

      v81 = swift::Demangle::__runtime::NodeFactory::createNode(v43, v45);
      {
        return v81;
      }

      else
      {
        return 0;
      }
    }

    if (v4 == 87)
    {
      v11 = v2 - 1;
      *(this + 3) = v3 + 1;
      *(this + 4) = v2 - 1;
      if (v2 == 1)
      {
        return v11;
      }

      v11 = 0;
      v12 = v3[1];
      if (v12 > 0x55)
      {
        if (v3[1] <= 0x6Bu)
        {
          v8 = a2;
          if (v12 == 86)
          {
            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            v6 = this;
            v7 = *(this + 5);
            v9 = 265;
            goto LABEL_40;
          }

          if (v12 != 97)
          {
            return v11;
          }

          *(this + 3) = v3 + 2;
          *(this + 4) = v2 - 2;
          v82 = this;
          v83 = *(this + 5);
          v84 = 208;
          goto LABEL_101;
        }

        if (v12 != 108)
        {
          if (v12 == 116)
          {
            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 6);
            v15 = this;
            if (!v96)
            {
              return 0;
            }

            swift::Demangle::__runtime::Node::addChild(Node, v96, *(this + 5), v97, v98);
            if (!v22)
            {
              return 0;
            }
          }

          else
          {
            if (v12 != 118)
            {
              return v11;
            }

            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            v15 = this;
            v70 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 75);
            v11 = *(v15 + 4);
            if (!v11)
            {
              return v11;
            }

            v71 = *(v15 + 3);
            v72 = *v71;
            if (v72 == 100)
            {
              Node = v70;
              v73 = 0;
            }

            else
            {
              if (v72 != 105)
              {
                return 0;
              }

              Node = v70;
              v73 = 1;
            }

            *(v15 + 3) = v71 + 1;
            *(v15 + 4) = v11 - 1;
            v99 = swift::Demangle::__runtime::NodeFactory::createNode(*(v15 + 5), 54, v73);
            swift::Demangle::__runtime::Node::addChild(Node, v99, *(v15 + 5), v100, v101);
            if (!v22)
            {
              return 0;
            }
          }

LABEL_54:
          v36 = v22;
          v37 = *(v15 + 5);
          goto LABEL_42;
        }

        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v85 = this;
        v86 = *(this + 5);
        v87 = a2;
        v88 = 144;
      }

      else
      {
        if (v3[1] <= 0x4Bu)
        {
          v8 = a2;
          if (v12 == 71)
          {
            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            v82 = this;
            v83 = *(this + 5);
            v84 = 90;
          }

          else
          {
            if (v12 != 73)
            {
              return v11;
            }

            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            v82 = this;
            v83 = *(this + 5);
            v84 = 91;
          }

          goto LABEL_101;
        }

        if (v12 != 76)
        {
          v8 = a2;
          if (v12 != 80)
          {
            if (v12 == 84)
            {
              *(this + 3) = v3 + 2;
              *(this + 4) = v2 - 2;
              Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 9);
              v15 = this;
              if (!v16)
              {
                return 0;
              }

              swift::Demangle::__runtime::Node::addChild(Node, v16, *(this + 5), v17, v18);
              if (!v19)
              {
                return 0;
              }

              swift::Demangle::__runtime::Node::addChild(Node, v19, *(this + 5), v20, v21);
              if (!v22)
              {
                return 0;
              }

              goto LABEL_54;
            }

            return v11;
          }

          *(this + 3) = v3 + 2;
          *(this + 4) = v2 - 2;
          v82 = this;
          v83 = *(this + 5);
          v84 = 207;
LABEL_101:
          Node = swift::Demangle::__runtime::NodeFactory::createNode(v83, v84);
          v94 = v8 + 1;
          v33 = v82;
          if (v34)
          {
            goto LABEL_41;
          }

          return 0;
        }

        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v85 = this;
        v86 = *(this + 5);
        v87 = a2;
        v88 = 145;
      }

      Node = swift::Demangle::__runtime::NodeFactory::createNode(v86, v88);
      v89 = v87;
      v90 = v87 + 1;
      v33 = v85;
      if (v91)
      {
        swift::Demangle::__runtime::Node::addChild(Node, v91, v85[5], v92, v93);
        if (v34)
        {
          goto LABEL_41;
        }
      }

      return 0;
    }
  }

  v39 = a2 + 1;
}

unsigned int *anonymous namespace::OldDemangler::demangleType(swift::Demangle::__runtime::NodeFactory **this, uint64_t a2)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
  swift::Demangle::__runtime::Node::addChild(Node, v4, this[5], v6, v7);
  return Node;
}

unsigned int *anonymous namespace::OldDemangler::demangleProtocolConformance(swift::Demangle::__runtime::NodeFactory **this, int a2)
{
  if (result)
  {
    v5 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
    swift::Demangle::__runtime::Node::addChild(Node, v5, this[5], v7, v8);
    if (!Node)
    {
      return 0;
    }

    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
    swift::Demangle::__runtime::Node::addChild(v10, v9, this[5], v11, v12);
    if (v10)
    {
      if (result)
      {
        v13 = result;
        v14 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 192);
        swift::Demangle::__runtime::Node::addChild(v14, Node, this[5], v15, v16);
        swift::Demangle::__runtime::Node::addChild(v14, v10, this[5], v17, v18);
        swift::Demangle::__runtime::Node::addChild(v14, v13, this[5], v19, v20);
        return v14;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleTypeImpl(_anonymous_namespace_::OldDemangler *this, uint64_t a2)
{
  if (a2 > 0x400)
  {
    return 0;
  }

  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  Node = 0;
  v4 = *(this + 3);
  v6 = *v4;
  v5 = v4 + 1;
  *(this + 3) = v4 + 1;
  *(this + 4) = v2 - 1;
  v7 = 25;
  switch(v6)
  {
    case 'B':
      Node = 0;
      if (v2 == 1)
      {
        return Node;
      }

      v8 = v4[1];
      *(this + 3) = v4 + 2;
      *(this + 4) = v2 - 2;
      if (v8 > 110)
      {
        if (v8 <= 115)
        {
          if (v8 == 111)
          {
            v73 = *(this + 5);
            v74 = "Builtin.NativeObject";
          }

          else
          {
            if (v8 != 112)
            {
              return Node;
            }

            v73 = *(this + 5);
            v74 = "Builtin.RawPointer";
          }
        }

        else
        {
          switch(v8)
          {
            case 't':
              v73 = *(this + 5);
              v74 = "Builtin.SILToken";
              break;
            case 'v':
              v145 = 0;
              v101 = this;
              {
                return 0;
              }

              v102 = *(v101 + 4);
              if (!v102)
              {
                return 0;
              }

              v103 = *(v101 + 3);
              if (*v103 != 66)
              {
                return 0;
              }

              *(v101 + 3) = v103 + 1;
              *(v101 + 4) = v102 - 1;
              if (v102 == 1)
              {
                return 0;
              }

              v104 = v103[1];
              switch(v104)
              {
                case 'f':
                  *(v101 + 3) = v103 + 2;
                  *(v101 + 4) = v102 - 2;
                  v143 = 0;
                  Node = 0;
                  {
                    return Node;
                  }

                  v10 = *(v101 + 5);
                  memset(&v144, 0, sizeof(v144));
                  std::string::append(&v144, "Builtin.Vec", 0xBuLL);
                  v105 = swift::Demangle::__runtime::DemanglerPrinter::operator<<(&v144, v145);
                  v106 = v105;
                  v107 = "xFPIEEE";
                  v108 = 7;
                  break;
                case 'p':
                  *(v101 + 3) = v103 + 2;
                  *(v101 + 4) = v102 - 2;
                  v10 = *(v101 + 5);
                  memset(&v144, 0, sizeof(v144));
                  std::string::append(&v144, "Builtin.Vec", 0xBuLL);
                  v135 = swift::Demangle::__runtime::DemanglerPrinter::operator<<(&v144, v145);
                  std::string::append(v135, "xRawPointer", 0xBuLL);
                  v99 = SHIBYTE(v135->__r_.__value_.__r.__words[2]);
                  size = v135->__r_.__value_.__l.__size_;
                  if (v99 >= 0)
                  {
                    v59 = v135;
                  }

                  else
                  {
                    v59 = v135->__r_.__value_.__r.__words[0];
                  }

                  goto LABEL_150;
                case 'i':
                  *(v101 + 3) = v103 + 2;
                  *(v101 + 4) = v102 - 2;
                  v143 = 0;
                  Node = 0;
                  {
                    return Node;
                  }

                  v10 = *(v101 + 5);
                  memset(&v144, 0, sizeof(v144));
                  std::string::append(&v144, "Builtin.Vec", 0xBuLL);
                  v105 = swift::Demangle::__runtime::DemanglerPrinter::operator<<(&v144, v145);
                  v106 = v105;
                  v107 = "xInt";
                  v108 = 4;
                  break;
                default:
                  return 0;
              }

              std::string::append(v105, v107, v108);
              v96 = v143;
              v97 = v106;
LABEL_147:
              v98 = swift::Demangle::__runtime::DemanglerPrinter::operator<<(v97, v96);
              v99 = SHIBYTE(v98->__r_.__value_.__r.__words[2]);
              size = v98->__r_.__value_.__l.__size_;
              if (v99 >= 0)
              {
                v59 = v98;
              }

              else
              {
                v59 = v98->__r_.__value_.__r.__words[0];
              }

LABEL_150:
              if (v99 >= 0)
              {
                v61 = v99;
              }

              else
              {
                v61 = size;
              }

              v58 = v10;
              v60 = 20;
LABEL_154:
              Node = swift::Demangle::__runtime::NodeFactory::createNode(v58, v60, v59, v61);
              if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v144.__r_.__value_.__l.__data_);
              }

              return Node;
            case 'w':
              v73 = *(this + 5);
              v74 = "Builtin.Word";
              break;
            default:
              return Node;
          }
        }
      }

      else if (v8 <= 97)
      {
        if (v8 == 66)
        {
          v73 = *(this + 5);
          v74 = "Builtin.UnsafeValueBuffer";
        }

        else
        {
          if (v8 != 79)
          {
            return Node;
          }

          v73 = *(this + 5);
          v74 = "Builtin.UnknownObject";
        }
      }

      else
      {
        if (v8 != 98)
        {
          if (v8 == 102)
          {
            v145 = 0;
            v95 = this;
            {
              return 0;
            }

            v10 = *(v95 + 5);
            memset(&v144, 0, sizeof(v144));
            v11 = "Builtin.FPIEEE";
            v12 = 14;
            goto LABEL_146;
          }

          if (v8 != 105)
          {
            return Node;
          }

          v145 = 0;
          v9 = this;
          {
            v10 = *(v9 + 5);
            memset(&v144, 0, sizeof(v144));
            v11 = "Builtin.Int";
            v12 = 11;
LABEL_146:
            std::string::append(&v144, v11, v12);
            v96 = v145;
            v97 = &v144;
            goto LABEL_147;
          }

          return 0;
        }

        v73 = *(this + 5);
        v74 = "Builtin.BridgeObject";
      }

      return swift::Demangle::__runtime::NodeFactory::createNode(v73, 20, v74);
    case 'C':
      goto LABEL_69;
    case 'D':
      v26 = this;
      if (!v27)
      {
        return 0;
      }

      v28 = v27;
      v29 = swift::Demangle::__runtime::NodeFactory::createNode(*(v26 + 5), 243);
      swift::Demangle::__runtime::Node::addChild(v29, v28, *(v26 + 5), v30, v31);
      if (!v29)
      {
        return 0;
      }

      v32 = *(v26 + 5);
      v33 = 59;
      goto LABEL_67;
    case 'E':
      if (v2 == 1)
      {
        return 0;
      }

      if (*v5 != 82)
      {
        return 0;
      }

      *(this + 3) = v4 + 2;
      *(this + 4) = v2 - 2;
      if (v2 == 2 || v4[2] != 82)
      {
        return 0;
      }

      *(this + 3) = v4 + 3;
      *(this + 4) = v2 - 3;
      v58 = *(this + 5);
      memset(&v144, 0, sizeof(v144));
      v59 = &v144;
      v60 = 65;
      v61 = 0;
      goto LABEL_154;
    case 'F':
      v13 = a2 + 1;
      v14 = 84;
      goto LABEL_83;
    case 'G':
      v34 = a2;
      v35 = this;
      if (!v36)
      {
        return 0;
      }

    case 'K':
      v13 = a2 + 1;
      v14 = 11;
      goto LABEL_83;
    case 'M':
      v55 = this;
      if (!v56)
      {
        return 0;
      }

      v29 = v56;
      v26 = v55;
      v32 = *(v55 + 5);
      v33 = 154;
      goto LABEL_67;
    case 'O':
      v7 = 63;
      goto LABEL_69;
    case 'P':
      if (v2 == 1 || *v5 != 77)
      {
        goto LABEL_112;
      }

      *(this + 3) = v4 + 2;
      *(this + 4) = v2 - 2;
      v62 = this;
      if (!v63)
      {
        return 0;
      }

      v29 = v63;
      v26 = v62;
      v32 = *(v62 + 5);
      v33 = 71;
      goto LABEL_67;
    case 'Q':
      if (v2 == 1)
      {
        goto LABEL_89;
      }

      v23 = *v5;
      if (v23 != 85)
      {
        if (v23 == 117)
        {
          *(this + 3) = v4 + 2;
          *(this + 4) = v2 - 2;
          v24 = *(this + 5);

          return swift::Demangle::__runtime::NodeFactory::createNode(v24, 322);
        }

        else
        {
LABEL_89:
          v72 = a2 + 1;
        }
      }

      *(this + 3) = v4 + 2;
      *(this + 4) = v2 - 2;
      v144.__r_.__value_.__r.__words[0] = 0;
      v76 = this;
      Node = 0;
      {
        return Node;
      }

      Node = swift::Demangle::__runtime::NodeFactory::createNode(*(v76 + 5), 322);
      v41 = swift::Demangle::__runtime::NodeFactory::createNode(*(v76 + 5), 355, v144.__r_.__value_.__l.__data_);
      v42 = *(v76 + 5);
      v43 = Node;
      goto LABEL_49;
    case 'R':
      v15 = this;
      v16 = *(this + 5);
      v17 = a2;
      v18 = 128;
      goto LABEL_43;
    case 'S':

    case 'T':
      v19 = a2 + 1;
      v20 = 0;
      goto LABEL_19;
    case 'V':
      v7 = 230;
LABEL_69:
      v67 = a2 + 1;
      v68 = v7;
      goto LABEL_71;
    case 'W':
      v57 = a2 + 1;

    case 'X':
      Node = 0;
      if (v2 == 1)
      {
        return Node;
      }

      v69 = *v5;
      if (v69 > 0x61)
      {
        if (*v5 <= 0x6Eu)
        {
          if (v69 != 98)
          {
            if (v69 != 102)
            {
              return Node;
            }

            *(this + 3) = v4 + 2;
            *(this + 4) = v2 - 2;
            v13 = a2 + 1;
            v14 = 233;
LABEL_83:
          }

          *(this + 3) = v4 + 2;
          *(this + 4) = v2 - 2;
          v91 = this;
          if (!v92)
          {
            return 0;
          }

          v29 = v92;
          v26 = v91;
          v32 = *(v91 + 5);
          v33 = 221;
        }

        else
        {
          switch(v69)
          {
            case 'o':
              *(this + 3) = v4 + 2;
              *(this + 4) = v2 - 2;
              v89 = this;
              if (!v90)
              {
                return 0;
              }

              v29 = v90;
              v26 = v89;
              v32 = *(v89 + 5);
              v33 = 260;
              break;
            case 'u':
              *(this + 3) = v4 + 2;
              *(this + 4) = v2 - 2;
              v93 = this;
              if (!v94)
              {
                return 0;
              }

              v29 = v94;
              v26 = v93;
              v32 = *(v93 + 5);
              v33 = 261;
              break;
            case 'w':
              *(this + 3) = v4 + 2;
              *(this + 4) = v2 - 2;
              v70 = this;
              if (!v71)
              {
                return 0;
              }

              v29 = v71;
              v26 = v70;
              v32 = *(v70 + 5);
              v33 = 259;
              break;
            default:
              return Node;
          }
        }

LABEL_67:
        v64 = swift::Demangle::__runtime::NodeFactory::createNode(v32, v33);
        swift::Demangle::__runtime::Node::addChild(v64, v29, *(v26 + 5), v65, v66);
        return v64;
      }

      if (*v5 > 0x4Cu)
      {
        if (v69 == 77)
        {
          v85 = a2;
          *(this + 3) = v4 + 2;
          *(this + 4) = v2 - 2;
          v86 = this;
          if (!v87)
          {
            return 0;
          }

          v47 = v87;
          if (!v88)
          {
            return 0;
          }

          v49 = v88;
          v50 = v86;
          v51 = *(v86 + 5);
          v52 = 154;
        }

        else
        {
          if (v69 != 80)
          {
            return Node;
          }

          *(this + 3) = v4 + 2;
          *(this + 4) = v2 - 2;
          if (v2 == 2 || v4[2] != 77)
          {
LABEL_112:
            v81 = a2 + 1;
          }

          v77 = a2;
          *(this + 3) = v4 + 3;
          *(this + 4) = v2 - 3;
          v78 = this;
          if (!v79)
          {
            return 0;
          }

          v47 = v79;
          if (!v80)
          {
            return 0;
          }

          v49 = v80;
          v50 = v78;
          v51 = *(v78 + 5);
          v52 = 71;
        }

LABEL_48:
        Node = swift::Demangle::__runtime::NodeFactory::createNode(v51, v52);
        swift::Demangle::__runtime::Node::addChild(Node, v47, *(v50 + 5), v53, v54);
        v42 = *(v50 + 5);
        v43 = Node;
        v41 = v49;
LABEL_49:
        swift::Demangle::__runtime::Node::addChild(v43, v41, v42, v39, v40);
        return Node;
      }

      if (v69 != 66)
      {
        if (v69 != 70)
        {
          return Node;
        }

        *(this + 3) = v4 + 2;
        *(this + 4) = v2 - 2;
        v75 = a2 + 1;
      }

      *(this + 3) = v4 + 2;
      *(this + 4) = v2 - 2;
      if (v2 == 2 || v4[2] != 71)
      {
        v83 = a2;
        v84 = 0;
      }

      else
      {
        *(this + 3) = v4 + 3;
        *(this + 4) = v2 - 3;
        v82 = this;
        v83 = a2;
        this = v82;
        if (!v84)
        {
          return 0;
        }
      }

      v109 = this;
      v110 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 223);
      v111 = *(v109 + 4);
      if (!v111)
      {
        return 0;
      }

      v112 = v110;
      v113 = v109;
      v114 = v83;
      break;
    case 'a':
      v67 = a2 + 1;
      v68 = 245;
LABEL_71:

    case 'b':
      v13 = a2 + 1;
      v14 = 175;
      goto LABEL_83;
    case 'c':
      v13 = a2 + 1;
      v14 = 23;
      goto LABEL_83;
    case 'f':
      v13 = a2 + 1;
      v14 = 257;
      goto LABEL_83;
    case 'k':
      v15 = this;
      v16 = *(this + 5);
      v17 = a2;
      v18 = 340;
LABEL_43:
      v37 = swift::Demangle::__runtime::NodeFactory::createNode(v16, v18);
      if (!v38)
      {
        return 0;
      }

      v41 = v38;
      v42 = *(v15 + 5);
      Node = v37;
      v43 = v37;
      goto LABEL_49;
    case 'q':
      v25 = a2 + 1;

    case 't':
      v19 = a2 + 1;
      v20 = 1;
LABEL_19:

    case 'u':
      v44 = a2;
      v45 = this;
      if (!v46)
      {
        return 0;
      }

      v47 = v46;
      if (!v48)
      {
        return 0;
      }

      v49 = v48;
      v50 = v45;
      v51 = *(v45 + 5);
      v52 = 45;
      goto LABEL_48;
    case 'w':
      v21 = a2 + 1;

    case 'x':

    default:
      return Node;
  }

  while (1)
  {
    v115 = *(v113 + 3);
    v116 = *v115;
    if (v116 == 105)
    {
      v117 = 225;
      goto LABEL_172;
    }

    if (v116 != 109)
    {
      break;
    }

    v117 = 224;
LABEL_172:
    *(v113 + 3) = v115 + 1;
    *(v113 + 4) = v111 - 1;
    v118 = v114;
    if (!v119)
    {
      return 0;
    }

    v120 = v119;
    v121 = swift::Demangle::__runtime::NodeFactory::createNode(*(v109 + 5), 243);
    swift::Demangle::__runtime::Node::addChild(v121, v120, *(v109 + 5), v122, v123);
    if (!v121)
    {
      return 0;
    }

    v124 = swift::Demangle::__runtime::NodeFactory::createNode(*(v109 + 5), v117);
    swift::Demangle::__runtime::Node::addChild(v124, v121, *(v109 + 5), v125, v126);
    swift::Demangle::__runtime::Node::addChild(v112, v124, *(v109 + 5), v127, v128);
    v113 = v109;
    Node = 0;
    v111 = *(v109 + 4);
    v114 = v118;
    if (!v111)
    {
      return Node;
    }
  }

  if (v116 != 95)
  {
    return 0;
  }

  *(v113 + 3) = v115 + 1;
  *(v113 + 4) = v111 - 1;
  if (v84)
  {
    for (i = swift::Demangle::__runtime::NodeFactory::createNode(*(v109 + 5), 246); ; swift::Demangle::__runtime::Node::addChild(i, v132, *(v109 + 5), v133, v134))
    {
      v130 = *(v109 + 4);
      if (v130)
      {
        v131 = *(v109 + 3);
        if (*v131 == 95)
        {
          break;
        }
      }

      if (!v132)
      {
        return 0;
      }
    }

    *(v109 + 3) = v131 + 1;
    *(v109 + 4) = v130 - 1;
  }

  else
  {
    i = 0;
  }

  v136 = swift::Demangle::__runtime::NodeFactory::createNode(*(v109 + 5), 222);
  swift::Demangle::__runtime::Node::addChild(v136, v112, *(v109 + 5), v137, v138);
  if (v84)
  {
    swift::Demangle::__runtime::Node::addChild(v136, v84, *(v109 + 5), v139, v140);
    swift::Demangle::__runtime::Node::addChild(v136, i, *(v109 + 5), v141, v142);
  }

  return v136;
}

uint64_t anonymous namespace::OldDemangler::demangleBuiltinSize(_anonymous_namespace_::OldDemangler *this, unint64_t *a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  v6 = *v3;
  v4 = v3 + 1;
  v5 = *v3;
  *(this + 3) = v3 + 1;
  *(this + 4) = v2 - 1;
  if ((v6 - 48) > 9)
  {
    return 0;
  }

  v7 = v5 & 0xF;
  *a2 = v7;
  if (v2 == 1)
  {
    return 0;
  }

  v8 = v3 + 2;
  v9 = v2 - 2;
  while (1)
  {
    v10 = *v4;
    if ((v10 - 58) < 0xFFFFFFF6)
    {
      break;
    }

    v7 = (v10 & 0xF) + 10 * v7;
    *a2 = v7;
    ++v4;
    *(this + 3) = v8;
    *(this + 4) = v9;
    ++v8;
    if (--v9 == -1)
    {
      return 0;
    }
  }

  if (v10 != 95)
  {
    return 0;
  }

  *(this + 3) = v8;
  *(this + 4) = v9;
  return 1;
}

uint64_t anonymous namespace::OldDemangler::demangleNatural(_anonymous_namespace_::OldDemangler *this, unint64_t *a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  v6 = *v3;
  v4 = v3 + 1;
  v5 = *v3;
  *(this + 3) = v3 + 1;
  *(this + 4) = v2 - 1;
  if ((v6 - 48) > 9)
  {
    return 0;
  }

  v7 = v5 & 0xF;
  *a2 = v7;
  if (v2 != 1)
  {
    v8 = v3 + 2;
    v9 = v2 - 2;
    do
    {
      v10 = *v4;
      if ((v10 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v7 = (v10 & 0xF) + 10 * v7;
      *a2 = v7;
      ++v4;
      *(this + 3) = v8;
      *(this + 4) = v9;
      ++v8;
      --v9;
    }

    while (v9 != -1);
  }

  return 1;
}

unsigned int *anonymous namespace::OldDemangler::demangleDeclarationName(swift::Demangle::__runtime::NodeFactory **a1, __int16 a2, int a3)
{
  if (result)
  {
    v6 = result;
    if (result)
    {
      v7 = result;
      Node = swift::Demangle::__runtime::NodeFactory::createNode(a1[5], a2);
      swift::Demangle::__runtime::Node::addChild(Node, v6, a1[5], v8, v9);
      swift::Demangle::__runtime::Node::addChild(Node, v7, a1[5], v10, v11);
      std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](a1, &Node);
      return Node;
    }
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleFunctionType(_anonymous_namespace_::OldDemangler *this, __int16 a2, int a3)
{
  v6 = *(this + 4);
  if (!v6)
  {
    Node = 0;
    v13 = 0;
    v12 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_28;
  }

  v7 = *(this + 3);
  v8 = *v7;
  v9 = v8 == 122;
  if (v8 == 122)
  {
    ++v7;
    --v6;
    *(this + 3) = v7;
    *(this + 4) = v6;
    if (!v6)
    {
      Node = 0;
      v13 = 0;
      v12 = 0;
      v10 = 0;
      v9 = 1;
      goto LABEL_28;
    }

    v8 = *v7;
  }

  v10 = v8 == 121;
  if (v8 == 121)
  {
    ++v7;
    --v6;
    *(this + 3) = v7;
    *(this + 4) = v6;
    if (!v6)
    {
      Node = 0;
      v13 = 0;
      v12 = 0;
      v10 = 1;
      goto LABEL_28;
    }
  }

  v11 = *v7;
  v12 = v11 == 90;
  if (v11 == 90)
  {
    ++v7;
    --v6;
    *(this + 3) = v7;
    *(this + 4) = v6;
    if (!v6)
    {
      Node = 0;
      v13 = 0;
      v12 = 1;
      goto LABEL_28;
    }

    v11 = *v7;
  }

  if (v11 == 68)
  {
    *(this + 3) = v7 + 1;
    *(this + 4) = v6 - 1;
    if (v6 == 1)
    {
      v6 = 0;
      v13 = 46;
      ++v7;
    }

    else
    {
      v13 = v7[1];
      v7 += 2;
      v6 -= 2;
      *(this + 3) = v7;
      *(this + 4) = v6;
    }

    v15 = (((v13 - 100) >> 1) | ((v13 - 100) << 7));
    if (v15 <= 7 && ((1 << v15) & 0x93) != 0)
    {
      if (!v6)
      {
LABEL_27:
        Node = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v13 = 0;
      if (!v6)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  if (*v7 != 89)
  {
    goto LABEL_27;
  }

  *(this + 3) = v7 + 1;
  *(this + 4) = v6 - 1;
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::__runtime::Node::addChild(Node, v17, *(this + 5), v18, v19);
  if (!Node)
  {
    return 0;
  }

LABEL_28:
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v22 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::__runtime::Node::addChild(v22, v21, *(this + 5), v23, v24);
  if (!v22)
  {
    return 0;
  }

  if (!v25)
  {
    return 0;
  }

  v26 = v25;
  v27 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::__runtime::Node::addChild(v27, v26, *(this + 5), v28, v29);
  if (!v27)
  {
    return 0;
  }

  v30 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), a2);
  if (v9)
  {
    v31 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 285);
    swift::Demangle::__runtime::Node::addChild(v30, v31, *(this + 5), v32, v33);
    if (!v12)
    {
      goto LABEL_34;
    }
  }

  else if (!v12)
  {
LABEL_34:
    if (v10)
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  v38 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 284);
  swift::Demangle::__runtime::Node::addChild(v30, v38, *(this + 5), v39, v40);
  if (v10)
  {
LABEL_35:
    v34 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 68);
    swift::Demangle::__runtime::Node::addChild(v30, v34, *(this + 5), v35, v36);
    if (!v13)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_41:
  if (v13)
  {
LABEL_42:
    v41 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 70, v13);
    swift::Demangle::__runtime::Node::addChild(v30, v41, *(this + 5), v42, v43);
  }

LABEL_43:
  if (Node)
  {
    v44 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 69);
    swift::Demangle::__runtime::Node::addChild(v44, Node, *(this + 5), v45, v46);
    swift::Demangle::__runtime::Node::addChild(v30, v44, *(this + 5), v47, v48);
  }

  v49 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 3);
  swift::Demangle::__runtime::Node::addChild(v30, v49, *(this + 5), v50, v51);
  swift::Demangle::__runtime::Node::addChild(v49, v22, *(this + 5), v52, v53);
  v54 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 218);
  swift::Demangle::__runtime::Node::addChild(v54, v27, *(this + 5), v55, v56);
  swift::Demangle::__runtime::Node::addChild(v30, v54, *(this + 5), v57, v58);
  return v30;
}

unsigned __int16 *anonymous namespace::OldDemangler::demangleGenericSignature(_anonymous_namespace_::OldDemangler *this, int a2, int a3)
{
  v5 = *(this + 5);
  if (a3)
  {
    v6 = 47;
  }

  else
  {
    v6 = 44;
  }

  Node = swift::Demangle::__runtime::NodeFactory::createNode(v5, v6);
  v8 = *(this + 4);
  if (v8)
  {
    v9 = Node;
    v10 = -1;
    while (1)
    {
      v14 = *(this + 3);
      v15 = *v14;
      if (v15 == 122)
      {
        v10 = 0;
        *(this + 3) = v14 + 1;
        *(this + 4) = v8 - 1;
        goto LABEL_7;
      }

      if (v15 == 82 || v15 == 114)
      {
        break;
      }

      v16 = v14 + 1;
      *(this + 3) = v14 + 1;
      *(this + 4) = v8 - 1;
      if (v15 == 95)
      {
        v10 = 1;
      }

      else
      {
        result = 0;
        if (v8 == 1 || (v15 - 58) < 0xFFFFFFF6)
        {
          return result;
        }

        v18 = v15 & 0xF;
        v19 = v14 + 2;
        v20 = v8 - 2;
        while (1)
        {
          v21 = *v16;
          if ((v21 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          v18 = (v21 & 0xF) + 10 * v18;
          ++v16;
          *(this + 3) = v19;
          *(this + 4) = v20;
          ++v19;
          if (--v20 == -1)
          {
            return 0;
          }
        }

        if (v21 != 95)
        {
          return 0;
        }

        *(this + 3) = v19;
        *(this + 4) = v20;
        v10 = v18 + 2;
      }

LABEL_7:
      v11 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 38, v10);
      swift::Demangle::__runtime::Node::addChild(v9, v11, *(this + 5), v12, v13);
      v8 = *(this + 4);
      if (!v8)
      {
        return 0;
      }
    }

    if (v10 != -1 || (v22 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 38, 1), swift::Demangle::__runtime::Node::addChild(v9, v22, *(this + 5), v23, v24), (v8 = *(this + 4)) != 0))
    {
      v25 = *(this + 3);
      v26 = *v25;
      if (v26 == 114)
      {
LABEL_115:
        *(this + 3) = v25 + 1;
        *(this + 4) = v8 - 1;
        return v9;
      }

      if (v26 == 82)
      {
        --v8;
        *(this + 3) = v25 + 1;
        *(this + 4) = v8;
        v27 = "U";
        v28 = "B";
        v29 = "E";
        if (v8)
        {
          goto LABEL_26;
        }

LABEL_39:
        if (v35)
        {
          while (1)
          {
            v41 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
            swift::Demangle::__runtime::Node::addChild(v41, v35, *(this + 5), v42, v43);
            if (!v41)
            {
              return 0;
            }

            v46 = *(this + 4);
            if (!v46)
            {
              return 0;
            }

            v47 = *(this + 3);
            v48 = *v47;
            if (v48 <= 0x6B)
            {
              break;
            }

            if (v48 != 108)
            {
              if (v48 == 122)
              {
                *(this + 3) = v47 + 1;
                *(this + 4) = v46 - 1;
                if (!result)
                {
                  return result;
                }

                v54 = result;
                v51 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
                swift::Demangle::__runtime::Node::addChild(v51, v54, *(this + 5), v55, v56);
                if (!v51)
                {
                  return 0;
                }

                v57 = *(this + 5);
                v58 = 40;
                goto LABEL_61;
              }

LABEL_56:
              if (!result)
              {
                return result;
              }

LABEL_59:
              v59 = result;
              v51 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
              swift::Demangle::__runtime::Node::addChild(v51, v59, *(this + 5), v60, v61);
              if (!v51)
              {
                return 0;
              }

              goto LABEL_60;
            }

            v95 = -1;
            v96 = -1;
            *(this + 3) = v47 + 1;
            *(this + 4) = v46 - 1;
            v62 = 0;
            if (v46 != 1)
            {
              v67 = v47[1];
              if (v67 > 0x52)
              {
                if (v47[1] <= 0x54u)
                {
                  if (v67 == 83)
                  {
                    v68 = v29;
                    v69 = v28;
                    v70 = v27;
                    *(this + 3) = v47 + 2;
                    *(this + 4) = v46 - 2;
                    v27 = "S";
                    {
                      goto LABEL_100;
                    }

                    goto LABEL_110;
                  }

                  if (v67 == 84)
                  {
                    v68 = v29;
                    v69 = v28;
                    v70 = v27;
                    v27 = "T";
                    goto LABEL_99;
                  }
                }

                else
                {
                  switch(v67)
                  {
                    case 'U':
                      v68 = v29;
                      v69 = v28;
                      v70 = v27;
                      goto LABEL_99;
                    case 'e':
                      v68 = v29;
                      v69 = v28;
                      v70 = v27;
                      *(this + 3) = v47 + 2;
                      *(this + 4) = v46 - 2;
                      v27 = "e";
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_100;
                    case 'm':
                      v68 = v29;
                      v69 = v28;
                      v70 = v27;
                      *(this + 3) = v47 + 2;
                      *(this + 4) = v46 - 2;
                      v27 = "m";
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_100;
                  }
                }
              }

              else if (v47[1] <= 0x4Cu)
              {
                if (v67 == 66)
                {
                  v68 = v29;
                  v74 = v28;
                  v70 = v27;
                  v69 = v74;
                  v27 = v74;
                  goto LABEL_99;
                }

                if (v67 == 69)
                {
                  *(this + 3) = v47 + 2;
                  *(this + 4) = v46 - 2;
                  {
                    v71 = *(this + 4);
                    if (v71)
                    {
                      v72 = *(this + 3);
                      if (*v72 == 95)
                      {
                        v73 = v29;
                        v69 = v28;
                        v70 = v27;
                        *(this + 3) = v72 + 1;
                        *(this + 4) = v71 - 1;
                        v68 = v73;
                        v27 = v73;
                        {
                          goto LABEL_110;
                        }

LABEL_100:
                        v77 = *(this + 5);
                        v78 = v77[1];
                        if (!v78 || (v79 = v78 + 1, (v78 + 1) > v77[2]))
                        {
                          v80 = 2 * v77[4];
                          if (v80 <= 2)
                          {
                            v80 = 2;
                          }

                          v77[4] = v80;
                          v81 = v80 + 8;
                          v82 = malloc_type_malloc(v80 + 8, 0x2004093837F09uLL);
                          v78 = (v82 + 1);
                          *v82 = v77[3];
                          v79 = v82 + 9;
                          v77[2] = v82 + v81;
                          v77[3] = v82;
                        }

                        v77[1] = v79;
                        *v78 = *v27;
                        NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v77, 103, v78, 1);
                        if (NodeWithAllocatedText)
                        {
                          v84 = NodeWithAllocatedText;
                          v62 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 42);
                          swift::Demangle::__runtime::Node::addChild(v62, v41, *(this + 5), v85, v86);
                          swift::Demangle::__runtime::Node::addChild(v62, v84, *(this + 5), v87, v88);
                          v27 = v70;
                          if (v96 != -1)
                          {
                            v89 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 171, v96);
                            swift::Demangle::__runtime::Node::addChild(v62, v89, *(this + 5), v90, v91);
                            v28 = v69;
                            if (v95 != -1)
                            {
                              v92 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 171, v95);
                              swift::Demangle::__runtime::Node::addChild(v62, v92, *(this + 5), v93, v94);
                            }

                            goto LABEL_112;
                          }

LABEL_111:
                          v28 = v69;
LABEL_112:
                          v29 = v68;
                          goto LABEL_62;
                        }

LABEL_110:
                        v62 = 0;
                        v27 = v70;
                        goto LABEL_111;
                      }
                    }
                  }

                  goto LABEL_96;
                }
              }

              else
              {
                switch(v67)
                {
                  case 'M':
                    *(this + 3) = v47 + 2;
                    *(this + 4) = v46 - 2;
                    {
                      v75 = *(this + 4);
                      if (v75)
                      {
                        v76 = *(this + 3);
                        if (*v76 == 95)
                        {
                          v68 = v29;
                          v69 = v28;
                          v70 = v27;
                          *(this + 3) = v76 + 1;
                          *(this + 4) = v75 - 1;
                          v27 = "M";
                          {
                            goto LABEL_100;
                          }

                          goto LABEL_110;
                        }
                      }
                    }

LABEL_96:
                    v62 = 0;
                    break;
                  case 'N':
                    v68 = v29;
                    v69 = v28;
                    v70 = v27;
                    v27 = "N";
                    goto LABEL_99;
                  case 'R':
                    v68 = v29;
                    v69 = v28;
                    v70 = v27;
                    v27 = "R";
LABEL_99:
                    *(this + 3) = v47 + 2;
                    *(this + 4) = v46 - 2;
                    goto LABEL_100;
                }
              }
            }

LABEL_62:
            if (!v62)
            {
              return 0;
            }

            swift::Demangle::__runtime::Node::addChild(v9, v62, *(this + 5), v44, v45);
            v8 = *(this + 4);
            if (!v8)
            {
              goto LABEL_39;
            }

LABEL_26:
            v25 = *(this + 3);
            v30 = *v25;
            switch(v30)
            {
              case 'W':
                *(this + 3) = v25 + 1;
                *(this + 4) = v8 - 1;
                if (!result)
                {
                  return result;
                }

                v35 = result;
                while (1)
                {
                  v39 = *(this + 4);
                  if (v39)
                  {
                    v40 = *(this + 3);
                    if (*v40 == 95)
                    {
                      break;
                    }
                  }

                  v36 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
                  swift::Demangle::__runtime::Node::addChild(v36, v35, *(this + 5), v37, v38);
                  result = 0;
                  if (!v35)
                  {
                    return result;
                  }
                }

                *(this + 3) = v40 + 1;
                *(this + 4) = v39 - 1;
                break;
              case 'w':
                *(this + 3) = v25 + 1;
                *(this + 4) = v8 - 1;
                if (!result)
                {
                  return result;
                }

                v31 = result;
                v32 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
                swift::Demangle::__runtime::Node::addChild(v32, v31, *(this + 5), v33, v34);
                if (!v35)
                {
                  return 0;
                }

                break;
              case 'r':
                goto LABEL_115;
              default:
                goto LABEL_39;
            }
          }

          if (v48 == 67)
          {
            if (!result)
            {
              return result;
            }

            goto LABEL_59;
          }

          if (v48 != 83)
          {
            goto LABEL_56;
          }

          *(this + 3) = v47 + 1;
          *(this + 4) = v46 - 1;
          if (!result)
          {
            return result;
          }

          v49 = result;
          v50 = result[8];
          if (v50 != 25 && v50 != 190)
          {
            if (v50 != 163)
            {
              return 0;
            }

            v49 = result;
            if (!result)
            {
              return result;
            }
          }

          v51 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
          swift::Demangle::__runtime::Node::addChild(v51, v49, *(this + 5), v52, v53);
LABEL_60:
          v57 = *(this + 5);
          v58 = 37;
LABEL_61:
          v62 = swift::Demangle::__runtime::NodeFactory::createNode(v57, v58);
          swift::Demangle::__runtime::Node::addChild(v62, v41, *(this + 5), v63, v64);
          swift::Demangle::__runtime::Node::addChild(v62, v51, *(this + 5), v65, v66);
          goto LABEL_62;
        }
      }
    }
  }

  return 0;
}

unint64_t anonymous namespace::OldDemangler::demangleMetatypeRepresentation(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *v2;
  if (v3 == 116)
  {
    v4 = "@thin";
    goto LABEL_9;
  }

  if (v3 == 111)
  {
    v4 = "@objc_metatype";
    goto LABEL_9;
  }

  if (v3 != 84)
  {
    return 0;
  }

  v4 = "@thick";
LABEL_9:
  *(this + 3) = v2 + 1;
  *(this + 4) = v1 - 1;
  return swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 155, v4);
}

unsigned int *anonymous namespace::OldDemangler::demangleProtocolList(_anonymous_namespace_::OldDemangler *this, int a2)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 200);
  v7 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 246);
  v8 = *(this + 5);
  v9 = Node;
  v10 = Node;
  for (i = v7; ; i = v16)
  {
    swift::Demangle::__runtime::Node::addChild(v10, i, v8, v5, v6);
    v12 = *(this + 4);
    if (v12)
    {
      v13 = *(this + 3);
      if (*v13 == 95)
      {
        break;
      }
    }

    if (!result)
    {
      return result;
    }

    v15 = result;
    v16 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
    swift::Demangle::__runtime::Node::addChild(v16, v15, *(this + 5), v17, v18);
    if (!v16)
    {
      return 0;
    }

    v8 = *(this + 5);
    v10 = v7;
  }

  *(this + 3) = v13 + 1;
  *(this + 4) = v12 - 1;
  return v9;
}

uint64_t anonymous namespace::OldDemangler::demangleIndex(_anonymous_namespace_::OldDemangler *this, unint64_t *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 3);
    v4 = v3 + 1;
    v5 = *v3;
    *(this + 3) = v3 + 1;
    *(this + 4) = v2 - 1;
    if (v5 == 95)
    {
      v6 = 0;
LABEL_4:
      *a2 = v6;
      return 1;
    }

    if ((v5 - 48) <= 9)
    {
      v8 = v5 & 0xF;
      *a2 = v8;
      if (v2 != 1)
      {
        v9 = v3 + 2;
        v10 = v2 - 2;
        while (1)
        {
          v11 = *v4;
          if ((v11 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          v8 = (v11 & 0xF) + 10 * v8;
          *a2 = v8;
          ++v4;
          *(this + 3) = v9;
          *(this + 4) = v10;
          ++v9;
          if (--v10 == -1)
          {
            return 0;
          }
        }

        if (v11 == 95)
        {
          *(this + 3) = v9;
          *(this + 4) = v10;
          v6 = v8 + 1;
          goto LABEL_4;
        }
      }
    }
  }

  return 0;
}

unsigned int *anonymous namespace::OldDemangler::demangleArchetypeType(_anonymous_namespace_::OldDemangler *this, int a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + 3);
  v5 = *v4;
  if (v5 == 115)
  {
    *(this + 3) = v4 + 1;
    *(this + 4) = v2 - 1;
    v7 = *(this + 5);
    v8 = v7[1];
    v9 = (v8 + 5);
    if (v8)
    {
      v10 = v9 > v7[2];
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 2 * v7[4];
      if (v11 <= 6)
      {
        v11 = 6;
      }

      v7[4] = v11;
      v12 = v11 + 8;
      v13 = malloc_type_malloc(v11 + 8, 0x2004093837F09uLL);
      *v13 = v7[3];
      v9 = v13 + 13;
      v8 = (v13 + 1);
      v7[2] = v13 + v12;
      v7[3] = v13;
    }

    v7[1] = v9;
    *(v8 + 4) = 116;
    *v8 = 1718187859;
    result = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v7, 163, v8, 5);
    goto LABEL_19;
  }

  if (v5 == 83)
  {
    *(this + 3) = v4 + 1;
    *(this + 4) = v2 - 1;
    if (!result)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v5 != 81)
  {
    return 0;
  }

  *(this + 3) = v4 + 1;
  *(this + 4) = v2 - 1;
  if (result)
  {
LABEL_19:
    v14 = result;
    if (result)
    {
      v15 = result;
      Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 5);
      swift::Demangle::__runtime::Node::addChild(Node, v14, *(this + 5), v16, v17);
      swift::Demangle::__runtime::Node::addChild(Node, v15, *(this + 5), v18, v19);
      std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](this, &Node);
      return Node;
    }
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleDependentType(_anonymous_namespace_::OldDemangler *this, int a2)
{
  if (!*(this + 4))
  {
    return 0;
  }

  v2 = **(this + 3);
  if (v2 == 95 || v2 == 100 || (v2 - 48) < 0xA)
  {
  }

  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::__runtime::Node::addChild(Node, v7, *(this + 5), v9, v10);
  if (!Node)
  {
    return 0;
  }
}

unsigned int *anonymous namespace::OldDemangler::getDependentGenericParamType(_anonymous_namespace_::OldDemangler *this, swift::Demangle::__runtime *a2, unsigned int a3)
{
  memset(&v17, 0, sizeof(v17));
  v4 = a2;
  v5 = a3;
  swift::Demangle::__runtime::genericParameterName(a2, a3, &__p);
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

  std::string::append(&v17, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 39);
  v9 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 104, v4);
  swift::Demangle::__runtime::Node::addChild(Node, v9, *(this + 5), v10, v11);
  v12 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 104, v5);
  swift::Demangle::__runtime::Node::addChild(Node, v12, *(this + 5), v13, v14);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return Node;
}

unsigned int *anonymous namespace::OldDemangler::demangleAssociatedTypeSimple(swift::Demangle::__runtime::NodeFactory **this, int a2)
{
  if (result)
  {
    v5 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
    swift::Demangle::__runtime::Node::addChild(Node, v5, this[5], v7, v8);
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleAssociatedTypeCompound(swift::Demangle::__runtime::NodeFactory **this, int a2)
{
  {
    v8 = result;
    if (!result)
    {
      break;
    }

    v9 = this[4];
    if (v9)
    {
      v10 = this[3];
      if (*v10 == 95)
      {
        this[3] = (v10 + 1);
        this[4] = (v9 - 1);
        return result;
      }
    }

    Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
    swift::Demangle::__runtime::Node::addChild(Node, v8, this[5], v6, v7);
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleSubstitutionIndex(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 3);
  switch(*v2)
  {
    case 'C':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v3 = *(this + 5);
      v4 = v3[1];
      v5 = v4 + 15;
      if (v4)
      {
        v6 = v5 > v3[2];
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {
        v7 = 2 * v3[4];
        if (v7 <= 0x10)
        {
          v7 = 16;
        }

        v3[4] = v7;
        v8 = v7 + 8;
        v9 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
        v4 = v9 + 1;
        *v9 = v3[3];
        v5 = v9 + 23;
        v3[2] = v9 + v8;
        v3[3] = v9;
      }

      v3[1] = v5;
      qmemcpy(v4, "__C_Synthesized", 15);
      v10 = v3;
      v11 = 15;
      goto LABEL_24;
    case 'P':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafePointer";
      goto LABEL_45;
    case 'Q':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "ImplicitlyUnwrappedOptional";
      v13 = 63;
      v14 = 27;
      goto LABEL_49;
    case 'R':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeBufferPointer";
      v13 = 230;
      v14 = 19;
      goto LABEL_49;
    case 'S':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "String";
      goto LABEL_43;
    case 'V':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeRawPointer";
      v13 = 230;
      v14 = 16;
      goto LABEL_49;
    case 'a':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Array";
      goto LABEL_38;
    case 'b':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Bool";
      goto LABEL_48;
    case 'c':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnicodeScalar";
LABEL_45:
      v13 = 230;
      v14 = 13;
      goto LABEL_49;
    case 'd':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Double";
LABEL_43:
      v13 = 230;
      v14 = 6;
      goto LABEL_49;
    case 'f':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Float";
LABEL_38:
      v13 = 230;
      v14 = 5;
      goto LABEL_49;
    case 'i':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Int";
      v13 = 230;
      v14 = 3;
      goto LABEL_49;
    case 'o':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v15 = *(this + 5);
      v4 = v15[1];
      v16 = v4 + 3;
      if (v4)
      {
        v17 = v16 > v15[2];
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = 2 * v15[4];
        if (v18 <= 4)
        {
          v18 = 4;
        }

        v15[4] = v18;
        v19 = v18 + 8;
        v20 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
        v4 = v20 + 1;
        *v20 = v15[3];
        v16 = v20 + 11;
        v15[2] = v20 + v19;
        v15[3] = v20;
      }

      v15[1] = v16;
      v4[2] = 67;
      *v4 = 24415;
      v10 = v15;
      v11 = 3;
LABEL_24:

      return swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v10, 163, v4, v11);
    case 'p':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeMutablePointer";
      v13 = 230;
      v14 = 20;
      goto LABEL_49;
    case 'q':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Optional";
      v13 = 63;
      v14 = 8;
      goto LABEL_49;
    case 'r':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeMutableBufferPointer";
      v13 = 230;
      v14 = 26;
      goto LABEL_49;
    case 'u':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UInt";
LABEL_48:
      v13 = 230;
      v14 = 4;
      goto LABEL_49;
    case 'v':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeMutableRawPointer";
      v13 = 230;
      v14 = 23;
LABEL_49:

      break;
    default:
      v23 = 0;
      {
        return 0;
      }

      result = *(*this + 8 * v23);
      break;
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleTuple(uint64_t a1, int a2, int a3)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 234);
  v8 = *(a1 + 32);
  if (!v8)
  {
    return 0;
  }

  v9 = Node;
  v10 = *(a1 + 24);
  if (*v10 != 95)
  {
    while (1)
    {
      v11 = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 235);
      if (!*(a1 + 32))
      {
        break;
      }

      v15 = **(a1 + 24);
      if (v15 != 111)
      {
        goto LABEL_11;
      }

LABEL_12:
      v3 = v3 & 0xFFFFFFFF00000000 | 0x100EC;
      if (!v16)
      {
        return 0;
      }

      swift::Demangle::__runtime::Node::addChild(v11, v16, *(a1 + 40), v17, v18);
LABEL_14:
      if (!v19)
      {
        return 0;
      }

      v20 = v19;
      v21 = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 243);
      swift::Demangle::__runtime::Node::addChild(v21, v20, *(a1 + 40), v22, v23);
      if (!v21)
      {
        return 0;
      }

      swift::Demangle::__runtime::Node::addChild(v11, v21, *(a1 + 40), v24, v25);
      swift::Demangle::__runtime::Node::addChild(v9, v11, *(a1 + 40), v26, v27);
      v8 = *(a1 + 32);
      if (!v8)
      {
        return 0;
      }

      v10 = *(a1 + 24);
      if (*v10 == 95)
      {
        goto LABEL_4;
      }
    }

    v15 = 46;
LABEL_11:
    if ((v15 - 48) > 9)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v11 = 0;
LABEL_4:
  *(a1 + 24) = v10 + 1;
  *(a1 + 32) = v8 - 1;
  if (a2 == 1 && v11)
  {
    swift::Demangle::__runtime::Node::reverseChildren(v11, 0);
    v12 = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 289);
    swift::Demangle::__runtime::Node::addChild(v11, v12, *(a1 + 40), v13, v14);
    swift::Demangle::__runtime::Node::reverseChildren(v11, 0);
  }

  return v9;
}

swift::Demangle::__runtime::Node *anonymous namespace::OldDemangler::demangleImplFunctionType(_anonymous_namespace_::OldDemangler *this, int a2)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 119);
  v5 = *(this + 4);
  if (v5 && (v6 = *(this + 3), *v6 == 116))
  {
    *(this + 3) = v6 + 1;
    *(this + 4) = v5 - 1;
    v7 = "@convention(thin)";
    v8 = 17;
  }

  else
  {
    if (!v10)
    {
      return 0;
    }

    v7 = v9;
    v8 = v10;
  }

  v11 = *(this + 5);
  v12 = v11[1];
  v13 = &v12[v8];
  if (v12)
  {
    v14 = v13 > v11[2];
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 2 * v11[4];
    if (v15 <= v8 + 1)
    {
      v15 = v8 + 1;
    }

    v11[4] = v15;
    v16 = v15 + 8;
    v17 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
    v18 = v17 + v16;
    *v17 = v11[3];
    v12 = (v17 + 1);
    v11[2] = v18;
    v11[3] = v17;
    v13 = v17 + v8 + 8;
  }

  v11[1] = v13;
  memmove(v12, v7, v8);
  NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v11, 108, v12, v8);
  swift::Demangle::__runtime::Node::addChild(Node, NodeWithAllocatedText, *(this + 5), v20, v21);
  v22 = *(this + 4);
  if (!v22)
  {
    return 0;
  }

  v23 = *(this + 3);
  if (*v23 == 67)
  {
    *(this + 3) = v23 + 1;
    *(this + 4) = v22 - 1;
    result = 0;
    if (v22 == 1)
    {
      return result;
    }

    v25 = v23[1];
    if (v25 <= 0x62)
    {
      if (v25 == 79)
      {
        v26 = "objc_method";
        v27 = 11;
      }

      else
      {
        if (v25 != 98)
        {
          return result;
        }

        v26 = "block";
        v27 = 5;
      }
    }

    else
    {
      switch(v25)
      {
        case 'w':
          v26 = "witness_method";
          v27 = 14;
          break;
        case 'm':
          v26 = "method";
          v27 = 6;
          break;
        case 'c':
          v26 = "c";
          v27 = 1;
          break;
        default:
          return result;
      }
    }

    *(this + 3) = v23 + 2;
    *(this + 4) = v22 - 2;
    v28 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 117);
    v29 = *(this + 5);
    v30 = v29[1];
    if (!v30 || (v31 = &v30[v27], &v30[v27] > v29[2]))
    {
      v32 = 2 * v29[4];
      if (v32 <= v27 + 1)
      {
        v32 = v27 + 1;
      }

      v29[4] = v32;
      v33 = v32 + 8;
      v34 = malloc_type_malloc(v32 + 8, 0x2004093837F09uLL);
      v35 = v34 + v33;
      *v34 = v29[3];
      v30 = (v34 + 1);
      v29[2] = v35;
      v29[3] = v34;
      v31 = v34 + v27 + 8;
    }

    v29[1] = v31;
    memmove(v30, v26, v27);
    v36 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v29, 118, v30, v27);
    swift::Demangle::__runtime::Node::addChild(v28, v36, *(this + 5), v37, v38);
    swift::Demangle::__runtime::Node::addChild(Node, v28, *(this + 5), v39, v40);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }
  }

  v41 = *(this + 3);
  v42 = *v41;
  if (v42 == 104)
  {
    *(this + 3) = v41 + 1;
    *(this + 4) = v22 - 1;
    v43 = *(this + 5);
    v44 = v43[1];
    if (!v44 || (v45 = (v44 + 9), (v44 + 9) > v43[2]))
    {
      v46 = 2 * v43[4];
      if (v46 <= 0xA)
      {
        v46 = 10;
      }

      v43[4] = v46;
      v47 = v46 + 8;
      v48 = malloc_type_malloc(v46 + 8, 0x2004093837F09uLL);
      v44 = (v48 + 1);
      *v48 = v43[3];
      v45 = v48 + 17;
      v43[2] = v48 + v47;
      v43[3] = v48;
    }

    v43[1] = v45;
    *v44 = *"@Sendable";
    *(v44 + 8) = 101;
    v49 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v43, 116, v44, 9);
    swift::Demangle::__runtime::Node::addChild(Node, v49, *(this + 5), v50, v51);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }

    v41 = *(this + 3);
    v42 = *v41;
  }

  if (v42 == 72)
  {
    *(this + 3) = v41 + 1;
    *(this + 4) = v22 - 1;
    v52 = *(this + 5);
    v53 = v52[1];
    if (!v53 || (v54 = (v53 + 6), (v53 + 6) > v52[2]))
    {
      v55 = 2 * v52[4];
      if (v55 <= 7)
      {
        v55 = 7;
      }

      v52[4] = v55;
      v56 = v55 + 8;
      v57 = malloc_type_malloc(v55 + 8, 0x2004093837F09uLL);
      v53 = (v57 + 1);
      *v57 = v52[3];
      v54 = v57 + 14;
      v52[2] = v57 + v56;
      v52[3] = v57;
    }

    v52[1] = v54;
    *(v53 + 4) = 25454;
    *v53 = 2037604672;
    v58 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v52, 116, v53, 6);
    swift::Demangle::__runtime::Node::addChild(Node, v58, *(this + 5), v59, v60);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }

    v41 = *(this + 3);
    v42 = *v41;
  }

  if ((v42 | 0x20) == 0x67)
  {
    *(this + 3) = v41 + 1;
    *(this + 4) = v22 - 1;
    if (!result)
    {
      return result;
    }

    swift::Demangle::__runtime::Node::addChild(Node, result, *(this + 5), v61, v62);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }

    v41 = *(this + 3);
    v42 = *v41;
  }

  if (v42 != 95)
  {
    return 0;
  }

  v63 = v22 - 1;
  *(this + 3) = v41 + 1;
  *(this + 4) = v63;
  if (!v63)
  {
    goto LABEL_57;
  }

LABEL_56:
  v64 = *(this + 3);
  if (*v64 == 95)
  {
    v67 = v63 - 1;
    *(this + 3) = v64 + 1;
    *(this + 4) = v67;
    if (!v67)
    {
      goto LABEL_64;
    }

LABEL_63:
    v68 = *(this + 3);
    if (*v68 == 95)
    {
      *(this + 3) = v68 + 1;
      *(this + 4) = v67 - 1;
      return Node;
    }

    else
    {
LABEL_64:
      while (1)
      {
        if (!result)
        {
          break;
        }

        swift::Demangle::__runtime::Node::addChild(Node, result, *(this + 5), v69, v70);
        v67 = *(this + 4);
        if (v67)
        {
          goto LABEL_63;
        }
      }
    }
  }

  else
  {
LABEL_57:
    while (1)
    {
      if (!result)
      {
        break;
      }

      swift::Demangle::__runtime::Node::addChild(Node, result, *(this + 5), v65, v66);
      v63 = *(this + 4);
      if (v63)
      {
        goto LABEL_56;
      }
    }
  }

  return result;
}

_anonymous_namespace_::OldDemangler *anonymous namespace::OldDemangler::demangleContext(_anonymous_namespace_::OldDemangler *this, int a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  v4 = *v3;
  if (v4 > 0x52)
  {
    if (*v3 > 0x64u)
    {
      if (v4 == 101)
      {
        *(this + 3) = v3 + 1;
        *(this + 4) = v2 - 1;
        Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 73);
        v23 = this;
        if (!result)
        {
          return result;
        }

        v24 = result;
        if (!result)
        {
          return result;
        }

        v25 = result;
        if (!result)
        {
          return result;
        }

        v28 = result;
        swift::Demangle::__runtime::Node::addChild(Node, v24, v23[5], v26, v27);
        swift::Demangle::__runtime::Node::addChild(Node, v28, v23[5], v29, v30);
        v19 = v23[5];
        v20 = Node;
        v21 = v25;
        goto LABEL_37;
      }

      if (v4 != 115)
      {
        if (v4 == 118)
        {
          goto LABEL_24;
        }

        goto LABEL_18;
      }

      *(this + 3) = v3 + 1;
      *(this + 4) = v2 - 1;
      v31 = *(this + 5);
      v32 = v31[1];
      v33 = (v32 + 5);
      if (v32)
      {
        v34 = v33 > v31[2];
      }

      else
      {
        v34 = 1;
      }

      if (v34)
      {
        v35 = 2 * v31[4];
        if (v35 <= 6)
        {
          v35 = 6;
        }

        v31[4] = v35;
        v36 = v35 + 8;
        v37 = malloc_type_malloc(v35 + 8, 0x2004093837F09uLL);
        v32 = (v37 + 1);
        *v37 = v31[3];
        v33 = v37 + 13;
        v31[2] = v37 + v36;
        v31[3] = v37;
      }

      v31[1] = v33;
      *(v32 + 4) = 116;
      *v32 = 1718187859;

      return swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v31, 163, v32, 5);
    }

    else
    {
      if (v4 != 83)
      {
        if (v4 == 86 || v4 == 90)
        {
          goto LABEL_24;
        }

        goto LABEL_18;
      }

      *(this + 3) = v3 + 1;
      *(this + 4) = v2 - 1;
    }
  }

  else
  {
    if (*v3 <= 0x46u)
    {
      if (v4 != 67)
      {
        if (v4 != 69)
        {
          if (v4 != 70)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }

        *(this + 3) = v3 + 1;
        *(this + 4) = v2 - 1;
        Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 73);
        v11 = a2;
        v12 = this;
        if (!result)
        {
          return result;
        }

        v13 = result;
        if (!result)
        {
          return result;
        }

        v16 = result;
        swift::Demangle::__runtime::Node::addChild(Node, v13, v12[5], v14, v15);
        v19 = v12[5];
        v20 = Node;
        v21 = v16;
LABEL_37:
        swift::Demangle::__runtime::Node::addChild(v20, v21, v19, v17, v18);
        return Node;
      }

LABEL_24:
      v7 = a2 + 1;
    }

    if (v4 - 79 < 2)
    {
      goto LABEL_24;
    }

    if (v4 != 71)
    {
      if (v4 == 73)
      {
        goto LABEL_24;
      }

LABEL_18:
    }

    *(this + 3) = v3 + 1;
    *(this + 4) = v2 - 1;
    if (result)
    {
    }
  }

  return result;
}

unint64_t anonymous namespace::OldDemangler::demangleDeclName(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(this + 3);
    v3 = *v2;
    if (v3 == 80)
    {
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      if (v17)
      {
        v9 = v17;
        if (v18)
        {
          v11 = v18;
          v12 = this;
          v13 = *(this + 5);
          v14 = 186;
          goto LABEL_16;
        }
      }

      return 0;
    }

    if (v3 == 76)
    {
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      if (v1 != 1)
      {
        v4 = v2[1];
        v5 = v2 + 2;
        *(this + 3) = v2 + 2;
        *(this + 4) = v1 - 2;
        if (v4 == 95)
        {
          v6 = 0;
        }

        else
        {
          v19 = 0;
          if (v1 == 2 || (v4 - 58) < 0xFFFFFFF6)
          {
            return v19;
          }

          v24 = v4 & 0xF;
          v25 = v2 + 3;
          v26 = v1 - 3;
          while (1)
          {
            v27 = *v5;
            if ((v27 - 58) < 0xFFFFFFF6)
            {
              break;
            }

            v24 = (v27 & 0xF) + 10 * v24;
            ++v5;
            *(this + 3) = v25;
            *(this + 4) = v26;
            ++v25;
            if (--v26 == -1)
            {
              return 0;
            }
          }

          if (v27 != 95)
          {
            return 0;
          }

          *(this + 3) = v25;
          *(this + 4) = v26;
          v6 = v24 + 1;
        }

        Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 171, v6);
        if (Node)
        {
          v9 = Node;
          if (v10)
          {
            v11 = v10;
            v12 = this;
            v13 = *(this + 5);
            v14 = 146;
LABEL_16:
            v19 = swift::Demangle::__runtime::NodeFactory::createNode(v13, v14);
            swift::Demangle::__runtime::Node::addChild(v19, v9, *(v12 + 5), v20, v21);
            swift::Demangle::__runtime::Node::addChild(v19, v11, *(v12 + 5), v22, v23);
            return v19;
          }
        }
      }

      return 0;
    }
  }
}

void std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](uint64_t a1, void *a2)
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

_anonymous_namespace_::OldDemangler *anonymous namespace::OldDemangler::demangleModule(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
LABEL_15:
    v13 = result;
    if (result)
    {
      std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](this, &v13);
      return v13;
    }

    return result;
  }

  v2 = *(this + 3);
  v3 = *v2;
  if (v3 != 83)
  {
    if (v3 == 115)
    {
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v4 = *(this + 5);
      v5 = v4[1];
      v6 = (v5 + 5);
      if (v5)
      {
        v7 = v6 > v4[2];
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        v8 = 2 * v4[4];
        if (v8 <= 6)
        {
          v8 = 6;
        }

        v4[4] = v8;
        v9 = v8 + 8;
        v10 = malloc_type_malloc(v8 + 8, 0x2004093837F09uLL);
        v5 = (v10 + 1);
        *v10 = v4[3];
        v6 = v10 + 13;
        v4[2] = v10 + v9;
        v4[3] = v10;
      }

      v4[1] = v6;
      *(v5 + 4) = 116;
      *v5 = 1718187859;

      return swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v4, 163, v5, 5);
    }

    goto LABEL_15;
  }

  *(this + 3) = v2 + 1;
  *(this + 4) = v1 - 1;
  if (result && *(result + 8) != 163)
  {
    return 0;
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleEntity(_anonymous_namespace_::OldDemangler *this, unsigned int a2)
{
  if (a2 > 0x400)
  {
    return 0;
  }

  v3 = *(this + 4);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(this + 3);
  v5 = *v4;
  if (v5 != 90)
  {
    if (v5 != 70)
    {
      goto LABEL_8;
    }

LABEL_16:
    v7 = 0;
    v8 = 78;
    goto LABEL_17;
  }

  ++v4;
  --v3;
  *(this + 3) = v4;
  *(this + 4) = v3;
  if (!v3)
  {
    goto LABEL_12;
  }

  if (*v4 == 70)
  {
    goto LABEL_16;
  }

LABEL_8:
  v6 = *v4;
  switch(v6)
  {
    case 'I':
      v8 = 130;
      v7 = 1;
      break;
    case 'i':
      v7 = 0;
      v8 = 231;
      break;
    case 'v':
      v7 = 0;
      v8 = 266;
      break;
    default:
LABEL_12:
  }

LABEL_17:
  *(this + 3) = v4 + 1;
  *(this + 4) = v3 - 1;
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = this;
  v13 = *(this + 4);
  if (!v13)
  {
    if ((v7 & 1) == 0)
    {
LABEL_22:
      if (!result)
      {
        return result;
      }

      v18 = result;
LABEL_24:
      v16 = 1;
LABEL_25:
      v12 = this;
LABEL_56:
      v23 = (v12 + 40);
      Node = swift::Demangle::__runtime::NodeFactory::createNode(*(v12 + 5), v8);
      swift::Demangle::__runtime::Node::addChild(Node, v11, *v23, v25, v26);
      if (v18)
      {
        swift::Demangle::__runtime::Node::addChild(Node, v18, *v23, v27, v28);
      }

      if (!v16)
      {
        goto LABEL_116;
      }

      if (!result)
      {
        return result;
      }

      v29 = result;
      v30 = swift::Demangle::__runtime::NodeFactory::createNode(*v23, 243);
      swift::Demangle::__runtime::Node::addChild(v30, v29, *v23, v31, v32);
      if (v30)
      {
        v35 = *v23;
        v36 = Node;
        v37 = v30;
LABEL_115:
        swift::Demangle::__runtime::Node::addChild(v36, v37, v35, v33, v34);
LABEL_116:
        if (v5 != 90)
        {
          return Node;
        }

        v62 = swift::Demangle::__runtime::NodeFactory::createNode(*v23, 229);
        swift::Demangle::__runtime::Node::addChild(v62, Node, *v23, v63, v64);
        return v62;
      }
    }

    return 0;
  }

  v14 = *(this + 3);
  v15 = *v14;
  v16 = 0;
  v17 = 32;
  switch(*v14)
  {
    case 'C':
      v17 = 0;
      goto LABEL_54;
    case 'D':
      goto LABEL_55;
    case 'E':
      v16 = 0;
      v17 = 106;
      goto LABEL_55;
    case 'G':
      *(this + 3) = v14 + 1;
      *(this + 4) = v13 - 1;
      if (!result)
      {
        return result;
      }

      v19 = result;
      v20 = 102;
      goto LABEL_89;
    case 'M':
      *(this + 3) = v14 + 1;
      *(this + 4) = v13 - 1;
      if (!result)
      {
        return result;
      }

      v19 = result;
      v20 = 161;
      goto LABEL_89;
    case 'U':
      *(this + 3) = v14 + 1;
      *(this + 4) = v13 - 1;
      if (!result)
      {
        return result;
      }

      v18 = result;
      v8 = 72;
      goto LABEL_24;
    case 'W':
      *(this + 3) = v14 + 1;
      *(this + 4) = v13 - 1;
      if (!result)
      {
        return result;
      }

      v19 = result;
      v20 = 53;
      goto LABEL_89;
    case 'Z':
      v16 = 0;
      v17 = 133;
      goto LABEL_55;
    case 'a':
      *(this + 3) = v14 + 1;
      *(this + 4) = v13 - 1;
      result = 0;
      if (v13 == 1)
      {
        return result;
      }

      v38 = v14[1];
      if (v38 > 0x6F)
      {
        if (v38 == 112)
        {
          v22 = 167;
        }

        else
        {
          if (v38 != 117)
          {
            return result;
          }

          v22 = 263;
        }
      }

      else if (v38 == 79)
      {
        v22 = 179;
      }

      else
      {
        if (v38 != 111)
        {
          return result;
        }

        v22 = 165;
      }

      goto LABEL_87;
    case 'c':
      v17 = 30;
LABEL_54:
      v16 = 1;
      goto LABEL_55;
    case 'd':
      v16 = 0;
      v17 = 52;
      goto LABEL_55;
    case 'e':
      v16 = 0;
      v17 = 105;
      goto LABEL_55;
    case 'g':
      *(this + 3) = v14 + 1;
      *(this + 4) = v13 - 1;
      if (!result)
      {
        return result;
      }

      v19 = result;
      v20 = 100;
      goto LABEL_89;
    case 'l':
      *(this + 3) = v14 + 1;
      *(this + 4) = v13 - 1;
      result = 0;
      if (v13 == 1)
      {
        return result;
      }

      v21 = v14[1];
      if (v21 > 0x6F)
      {
        if (v21 == 112)
        {
          v22 = 166;
        }

        else
        {
          if (v21 != 117)
          {
            return result;
          }

          v22 = 262;
        }
      }

      else if (v21 == 79)
      {
        v22 = 178;
      }

      else
      {
        if (v21 != 111)
        {
          return result;
        }

        v22 = 164;
      }

LABEL_87:
      *(this + 3) = v14 + 2;
      *(this + 4) = v13 - 2;
      if (!result)
      {
        return result;
      }

      v19 = result;
      v20 = v22;
LABEL_89:
      v23 = (this + 40);
      v39 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), v20);
      v40 = *(v19 + 16);
      if (v40 == 186)
      {
        v42 = *(v19 + 18);
        v43 = v19;
        if (v42 != 2)
        {
          if (v42 != 5 || *(v19 + 8) < 2u)
          {
LABEL_107:
            Node = v39;
            v49 = swift::Demangle::__runtime::NodeFactory::createNode(*v23, 266);
            swift::Demangle::__runtime::Node::addChild(v49, v11, *v23, v50, v51);
            swift::Demangle::__runtime::Node::addChild(v49, v19, *v23, v52, v53);
            v54 = 0;
            goto LABEL_108;
          }

          v43 = *v19;
        }

        v44 = *(v43 + 8);
        if (v44[1] != 9)
        {
          goto LABEL_107;
        }

        v45 = *v44;
        v46 = *v45;
        v47 = *(v45 + 8);
        if (v46 != 0x7069726373627573 || v47 != 116)
        {
          goto LABEL_107;
        }

        if (v42 != 2)
        {
          if (!*(v19 + 8))
          {
            Node = v39;
            v65 = 0;
            goto LABEL_124;
          }

          v19 = *v19;
        }

        Node = v39;
        v65 = *v19;
LABEL_124:
        v19 = swift::Demangle::__runtime::NodeFactory::createNode(*v23, 186);
        swift::Demangle::__runtime::Node::addChild(v19, v65, *v23, v66, v67);
        goto LABEL_125;
      }

      if (v40 != 103 || *(v19 + 8) != 9)
      {
        goto LABEL_107;
      }

      if (**v19 != 0x7069726373627573 || *(*v19 + 8) != 116)
      {
        goto LABEL_107;
      }

      Node = v39;
      v19 = 0;
LABEL_125:
      v49 = swift::Demangle::__runtime::NodeFactory::createNode(*v23, 231);
      swift::Demangle::__runtime::Node::addChild(v49, v11, *v23, v68, v69);
      v54 = 1;
LABEL_108:
      if (result)
      {
        v55 = result;
        v56 = swift::Demangle::__runtime::NodeFactory::createNode(*v23, 243);
        swift::Demangle::__runtime::Node::addChild(v56, v55, *v23, v57, v58);
        if (v56)
        {
          swift::Demangle::__runtime::Node::addChild(v49, v56, *v23, v59, v60);
          v61 = v54 ^ 1;
          if (!v19)
          {
            v61 = 1;
          }

          if ((v61 & 1) == 0)
          {
            swift::Demangle::__runtime::Node::addChild(v49, v19, *v23, v33, v34);
          }

          v35 = *v23;
          v36 = Node;
          v37 = v49;
          goto LABEL_115;
        }

        return 0;
      }

      return result;
    case 'm':
      *(this + 3) = v14 + 1;
      *(this + 4) = v13 - 1;
      if (!result)
      {
        return result;
      }

      v19 = result;
      v20 = 150;
      goto LABEL_89;
    case 'r':
      *(this + 3) = v14 + 1;
      *(this + 4) = v13 - 1;
      if (!result)
      {
        return result;
      }

      v19 = result;
      v20 = 214;
      goto LABEL_89;
    case 's':
      *(this + 3) = v14 + 1;
      *(this + 4) = v13 - 1;
      if (!result)
      {
        return result;
      }

      v19 = result;
      v20 = 226;
      goto LABEL_89;
    case 'u':
      *(this + 3) = v14 + 1;
      *(this + 4) = v13 - 1;
      if (!result)
      {
        return result;
      }

      v18 = result;
      v8 = 122;
      goto LABEL_24;
    case 'w':
      *(this + 3) = v14 + 1;
      *(this + 4) = v13 - 1;
      if (!result)
      {
        return result;
      }

      v19 = result;
      v20 = 269;
      goto LABEL_89;
    default:
      if (!v7)
      {
        goto LABEL_22;
      }

      if (v15 == 105)
      {
        v16 = 0;
        v17 = 130;
LABEL_55:
        v18 = 0;
        *(this + 3) = v14 + 1;
        *(this + 4) = v13 - 1;
        v8 = v17;
        goto LABEL_56;
      }

      if (v15 != 65)
      {
        return 0;
      }

      *(this + 3) = v14 + 1;
      *(this + 4) = v13 - 1;
      if (result)
      {
        v18 = result;
        v16 = 0;
        v8 = 34;
        goto LABEL_25;
      }

      return result;
  }
}

unint64_t anonymous namespace::OldDemangler::demangleIdentifier(void *a1, unint64_t a2)
{
  v2 = a1[4];
  if (!v2)
  {
    return 0;
  }

  v3 = a1[3];
  v4 = *v3;
  if (v4 == 88)
  {
    ++v3;
    __p = 0;
    v29 = 0;
    v30 = 0;
    --v2;
    a1[3] = v3;
    a1[4] = v2;
    if (!v2)
    {
LABEL_14:
      v8 = 0;
      if ((a2 & 0x10000) != 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = 103;
      }

      if (!v2)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }
  }

  else
  {
    __p = 0;
    v29 = 0;
    v30 = 0;
  }

  if (*v3 != 111)
  {
    goto LABEL_14;
  }

  size = 0;
  a1[3] = v3 + 1;
  a1[4] = v2 - 1;
  if (v2 != 1 && ((a2 >> 16) & 1) == 0)
  {
    v6 = v3[1];
    v3 += 2;
    v2 -= 2;
    a1[3] = v3;
    a1[4] = v2;
    switch(v6)
    {
      case 'p':
        v7 = 185;
        break;
      case 'i':
        v7 = 129;
        break;
      case 'P':
        v7 = 183;
        break;
      default:
        goto LABEL_28;
    }

    v8 = 1;
    if (!v2)
    {
      goto LABEL_28;
    }

LABEL_22:
    p_p = (v3 + 1);
    v9 = *v3;
    v11 = v2 - 1;
    a1[3] = v3 + 1;
    a1[4] = v11;
    if ((v9 - 48) > 9)
    {
      goto LABEL_28;
    }

    size = v9 & 0xF;
    if (v11)
    {
      v12 = v3 + 2;
      do
      {
        v13 = p_p->__r_.__value_.__s.__data_[0];
        if ((v13 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        size = (v13 & 0xF) + 10 * size;
        p_p = (p_p + 1);
        --v11;
        a1[3] = v12;
        a1[4] = v11;
        ++v12;
      }

      while (v11);
    }

    if (v11 < size)
    {
      goto LABEL_28;
    }

    a1[3] = p_p + size;
    a1[4] = v11 - size;
    if (v4 != 88)
    {
LABEL_41:
      if (size)
      {
        memset(&v27, 0, sizeof(v27));
        if (v8)
        {
          v16 = a1;
          std::string::reserve(&v27, size);
          do
          {
            v17 = p_p->__r_.__value_.__s.__data_[0];
            if ((v17 & 0x80000000) == 0)
            {
              if (v17 - 123) < 0xE6u || (v18 = v17 - 97, ((0x17007A2uLL >> v18)))
              {
                size = 0;
                if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_29;
                }

                goto LABEL_69;
              }
            }

            std::string::push_back(&v27, v17);
            p_p = (p_p + 1);
            --size;
          }

          while (size);
          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &v27;
          }

          else
          {
            p_p = v27.__r_.__value_.__r.__words[0];
          }

          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v27.__r_.__value_.__l.__size_;
          }

          v19 = v16[5];
          if (!size)
          {
            v20 = 0;
            goto LABEL_68;
          }
        }

        else
        {
          v19 = a1[5];
        }

        v20 = v19[1];
        v21 = &v20[size];
        if (v20)
        {
          v22 = v21 > v19[2];
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          v23 = 2 * v19[4];
          if (v23 <= size + 1)
          {
            v23 = size + 1;
          }

          v19[4] = v23;
          v24 = v23 + 8;
          v25 = malloc_type_malloc(v23 + 8, 0x2004093837F09uLL);
          v26 = v25 + v24;
          *v25 = v19[3];
          v20 = (v25 + 1);
          v19[2] = v26;
          v19[3] = v25;
          v21 = v25 + size + 8;
        }

        v19[1] = v21;
        memmove(v20, p_p, size);
LABEL_68:
        size = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v19, v7, v20, size);
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_69:
          operator delete(v27.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_29;
    }

    v15 = a1;
    if (swift::Punycode::__runtime::decodePunycodeUTF8(p_p, size, &__p))
    {
      if (v30 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v30 >= 0)
      {
        size = SHIBYTE(v30);
      }

      else
      {
        size = v29;
      }

      a1 = v15;
      goto LABEL_41;
    }

LABEL_28:
    size = 0;
  }

LABEL_29:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  return size;
}

unsigned int *anonymous namespace::OldDemangler::demangleNominalType(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(this + 3);
    v3 = *v2;
    if (v3 > 0x4F)
    {
      switch(v3)
      {
        case 'P':
          *(this + 3) = v2 + 1;
          *(this + 4) = v1 - 1;
          break;
        case 'V':
          *(this + 3) = v2 + 1;
          *(this + 4) = v1 - 1;
          break;
        case 'S':
          *(this + 3) = v2 + 1;
          *(this + 4) = v1 - 1;
        default:
          return 0;
      }
    }

    if (v3 == 67)
    {
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
    }

    if (v3 == 79)
    {
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
    }
  }

  return 0;
}

unint64_t anonymous namespace::OldDemangler::demangleIndexAsNode(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 24);
    v3 = v2 + 1;
    v4 = *v2;
    *(a1 + 24) = v2 + 1;
    *(a1 + 32) = v1 - 1;
    if (v4 == 95)
    {
      v5 = 0;
      return swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 171, v5);
    }

    if (v1 != 1 && (v4 - 58) >= 0xFFFFFFF6)
    {
      v8 = v4 & 0xF;
      v9 = v2 + 2;
      v10 = v1 - 2;
      while (1)
      {
        v11 = *v3;
        if ((v11 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        v8 = (v11 & 0xF) + 10 * v8;
        ++v3;
        *(a1 + 24) = v9;
        *(a1 + 32) = v10;
        ++v9;
        if (--v10 == -1)
        {
          return 0;
        }
      }

      if (v11 == 95)
      {
        *(a1 + 24) = v9;
        *(a1 + 32) = v10;
        v5 = v8 + 1;
        return swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 171, v5);
      }
    }
  }

  return 0;
}

swift::Demangle::__runtime::Node *anonymous namespace::OldDemangler::demangleBoundGenericArgs(swift::Demangle::__runtime::NodeFactory **this, swift::Demangle::__runtime::Node *a2, int a3)
{
  v4 = a2;
  v6 = *(a2 + 18);
  v7 = a2;
  if ((v6 - 1) >= 2)
  {
    if (v6 != 5 || !*(a2 + 2))
    {
      return 0;
    }

    v7 = *a2;
  }

  v8 = *v7;
  v9 = *(*v7 + 16);
  if (v9 == 73 || v9 == 78 || v9 == 163)
  {
    goto LABEL_30;
  }

  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], *(v4 + 8));
  swift::Demangle::__runtime::Node::addChild(Node, v11, this[5], v13, v14);
  for (i = 1; ; ++i)
  {
    v19 = *(v4 + 18);
    if (v19 != 1)
    {
      break;
    }

    if (v19 <= i)
    {
      goto LABEL_29;
    }

LABEL_20:
    v20 = v19 - 1;
    if (v19 == 1)
    {
      goto LABEL_23;
    }

    if (v19 != 5)
    {
      v19 = 2;
LABEL_23:
      if (v19 <= i)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

    if (*(v4 + 2) <= i)
    {
LABEL_10:
      v18 = 0;
      goto LABEL_11;
    }

LABEL_26:
    v21 = v4;
    if (v20 >= 2)
    {
      v21 = *v4;
    }

    v18 = *(v21 + i);
LABEL_11:
    swift::Demangle::__runtime::Node::addChild(Node, v18, this[5], v15, v16);
  }

  if (v19 == 5)
  {
    if (*(v4 + 2) <= i)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  if (v19 == 2 && i < 2)
  {
    goto LABEL_20;
  }

LABEL_29:
  v4 = Node;
LABEL_30:
  v22 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 246);
  v23 = this[4];
  while (1)
  {
    if (v23)
    {
      v24 = this[3];
      if (*v24 == 95)
      {
        break;
      }
    }

    if (v25)
    {
      v26 = v25;
      v27 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
      swift::Demangle::__runtime::Node::addChild(v27, v26, this[5], v28, v29);
      if (v27)
      {
        swift::Demangle::__runtime::Node::addChild(v22, v27, this[5], v30, v31);
        v23 = this[4];
        if (v23)
        {
          continue;
        }
      }
    }

    return 0;
  }

  this[3] = (v24 + 1);
  this[4] = (v23 - 1);
  v33 = *(v22 + 18);
  if ((v33 - 1) < 2 || v33 == 5 && *(v22 + 8))
  {
    v34 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
    swift::Demangle::__runtime::Node::addChild(v34, v4, this[5], v35, v36);
    v37 = *(v4 + 8);
    switch(v37)
    {
      case 25:
        v38 = 13;
        break;
      case 63:
        v38 = 14;
        break;
      case 230:
        v38 = 15;
        break;
      default:
        return 0;
    }

    v4 = swift::Demangle::__runtime::NodeFactory::createNode(this[5], v38);
    swift::Demangle::__runtime::Node::addChild(v4, v34, this[5], v39, v40);
    swift::Demangle::__runtime::Node::addChild(v4, v22, this[5], v41, v42);
  }

  return v4;
}

unsigned int *anonymous namespace::OldDemangler::demangleProtocolNameGivenContext(swift::Demangle::__runtime::NodeFactory **this, swift::Demangle::__runtime::Node *a2)
{
  if (result)
  {
    v5 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 190);
    swift::Demangle::__runtime::Node::addChild(Node, a2, this[5], v6, v7);
    swift::Demangle::__runtime::Node::addChild(Node, v5, this[5], v8, v9);
    std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](this, &Node);
    return Node;
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleProtocolName(swift::Demangle::__runtime::NodeFactory **this, unsigned int a2)
{
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(this[5], 243);
  swift::Demangle::__runtime::Node::addChild(Node, v4, this[5], v6, v7);
  return Node;
}

unsigned int *anonymous namespace::OldDemangler::demangleGenericParamIndex(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *v2;
  if (v3 == 120)
  {
    v8 = 0;
    v11 = 0;
    *(this + 3) = v2 + 1;
    *(this + 4) = v1 - 1;
  }

  v4 = v2 + 1;
  if (v3 == 100)
  {
    *(this + 3) = v4;
    *(this + 4) = v1 - 1;
    if (v1 != 1)
    {
      v5 = v2[1];
      i = v2 + 2;
      v7 = v1 - 2;
      *(this + 3) = v2 + 2;
      *(this + 4) = v1 - 2;
      if (v5 == 95)
      {
        v8 = 1;
        if (v1 == 2)
        {
          return 0;
        }
      }

      else
      {
        if (v1 == 2 || (v5 - 58) < 0xFFFFFFF6)
        {
          return 0;
        }

        v17 = v5 & 0xF;
        v18 = v2 + 3;
        v7 = v1 - 3;
        for (i = v18; ; ++i)
        {
          v19 = *(i - 1);
          if ((v19 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          v17 = (v19 & 0xF) + 10 * v17;
          *(this + 3) = v18;
          *(this + 4) = v7;
          ++v18;
          if (--v7 == -1)
          {
            return 0;
          }
        }

        if (v19 != 95)
        {
          return 0;
        }

        *(this + 3) = v18;
        *(this + 4) = v7;
        v8 = (v17 + 2);
        if (!v7)
        {
          return 0;
        }
      }

      v9 = i + 1;
      v10 = *i;
      *(this + 3) = i + 1;
      *(this + 4) = v7 - 1;
      if (v10 == 95)
      {
        v11 = 0;
      }

      if (v7 != 1 && (v10 - 58) >= 0xFFFFFFF6)
      {
        v20 = v10 & 0xF;
        v21 = i + 2;
        v22 = v7 - 2;
        while (1)
        {
          v23 = *v9;
          if ((v23 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          v20 = (v23 & 0xF) + 10 * v20;
          ++v9;
          *(this + 3) = v21;
          *(this + 4) = v22;
          ++v21;
          if (--v22 == -1)
          {
            return 0;
          }
        }

        if (v23 == 95)
        {
          *(this + 3) = v21;
          *(this + 4) = v22;
          v11 = v20 + 1;
        }
      }
    }
  }

  else
  {
    *(this + 3) = v4;
    *(this + 4) = v1 - 1;
    if (v3 == 95)
    {
      v8 = 0;
      v11 = 1;
    }

    if (v1 != 1 && (v3 - 58) >= 0xFFFFFFF6)
    {
      v13 = v3 & 0xF;
      v14 = v2 + 2;
      v15 = v1 - 2;
      while (1)
      {
        v16 = *v4;
        if ((v16 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        v13 = (v16 & 0xF) + 10 * v13;
        ++v4;
        *(this + 3) = v14;
        *(this + 4) = v15;
        ++v14;
        if (--v15 == -1)
        {
          return 0;
        }
      }

      if (v16 == 95)
      {
        v8 = 0;
        *(this + 3) = v14;
        *(this + 4) = v15;
        v11 = v13 + 2;
      }
    }
  }

  return 0;
}

unsigned int *anonymous namespace::OldDemangler::demangleProtocolNameImpl(_anonymous_namespace_::OldDemangler *this, unsigned int a2)
{
  if (a2 > 0x400)
  {
    return 0;
  }

  v3 = *(this + 4);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(this + 3);
  v5 = *v4;
  if (v5 != 115)
  {
    if (v5 == 83)
    {
      *(this + 3) = v4 + 1;
      *(this + 4) = v3 - 1;
      v6 = this;
      if (result)
      {
        v7 = *(result + 8);
        if (v7 != 190)
        {
          if (v7 != 163)
          {
            return 0;
          }

          v8 = result;
          if (result)
          {
            v9 = result;
            Node = swift::Demangle::__runtime::NodeFactory::createNode(v6[5], 190);
            swift::Demangle::__runtime::Node::addChild(Node, v8, v6[5], v10, v11);
            v14 = v6[5];
            v15 = Node;
            v16 = v9;
LABEL_25:
            swift::Demangle::__runtime::Node::addChild(v15, v16, v14, v12, v13);
            std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](v6, &Node);
            return Node;
          }
        }
      }

      return result;
    }

LABEL_12:
  }

  *(this + 3) = v4 + 1;
  *(this + 4) = v3 - 1;
  v6 = this;
  v17 = *(this + 5);
  v18 = v17[1];
  v19 = (v18 + 5);
  if (v18)
  {
    v20 = v19 > v17[2];
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = 2 * v17[4];
    if (v21 <= 6)
    {
      v21 = 6;
    }

    v17[4] = v21;
    v22 = v21 + 8;
    v23 = malloc_type_malloc(v21 + 8, 0x2004093837F09uLL);
    *v23 = v17[3];
    v19 = v23 + 13;
    v18 = (v23 + 1);
    v17[2] = v23 + v22;
    v17[3] = v23;
  }

  v17[1] = v19;
  *(v18 + 4) = 116;
  *v18 = 1718187859;
  NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v17, 163, v18, 5);
  if (result)
  {
    v25 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(v6[5], 190);
    swift::Demangle::__runtime::Node::addChild(Node, NodeWithAllocatedText, v6[5], v26, v27);
    v14 = v6[5];
    v15 = Node;
    v16 = v25;
    goto LABEL_25;
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::demangleDependentMemberTypeName(_anonymous_namespace_::OldDemangler *this, swift::Demangle::__runtime::Node *a2, int a3)
{
  v5 = *(this + 4);
  if (!v5)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v6 = *(this + 3);
  v7 = *v6;
  if (v7 != 80)
  {
    if (v7 == 83)
    {
      *(this + 3) = v6 + 1;
      *(this + 4) = v5 - 1;
      v24 = result;
      if (!result)
      {
        return result;
      }

      if (*(result + 8) != 36)
      {
        return 0;
      }

LABEL_13:
      Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 46);
      swift::Demangle::__runtime::Node::addChild(Node, a2, *(this + 5), v17, v18);
      swift::Demangle::__runtime::Node::addChild(Node, v24, *(this + 5), v19, v20);
      return Node;
    }

    goto LABEL_7;
  }

  *(this + 3) = v6 + 1;
  *(this + 4) = v5 - 1;
  if (!result)
  {
    return result;
  }

  v21 = result;
  v9 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::__runtime::Node::addChild(v9, v21, *(this + 5), v22, v23);
  if (!v9)
  {
    return 0;
  }

LABEL_8:
  if (result)
  {
    v10 = result;
    result = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 36);
    v24 = result;
    if (result)
    {
      v13 = result;
      swift::Demangle::__runtime::Node::addChild(result, v10, *(this + 5), v11, v12);
      if (v9)
      {
        swift::Demangle::__runtime::Node::addChild(v13, v9, *(this + 5), v14, v15);
      }

      std::vector<swift::Demangle::__runtime::Node *>::push_back[abi:nn200100](this, &v24);
      goto LABEL_13;
    }
  }

  return result;
}

unsigned int *anonymous namespace::OldDemangler::createSwiftType(uint64_t a1, __int16 a2, const void *a3, size_t a4)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), a2);
  v8 = *(a1 + 40);
  v9 = v8[1];
  v10 = (v9 + 5);
  if (v9)
  {
    v11 = v10 > v8[2];
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 2 * v8[4];
    if (v12 <= 6)
    {
      v12 = 6;
    }

    v8[4] = v12;
    v13 = v12 + 8;
    v14 = malloc_type_malloc(v12 + 8, 0x2004093837F09uLL);
    v9 = (v14 + 1);
    *v14 = v8[3];
    v10 = v14 + 13;
    v8[2] = v14 + v13;
    v8[3] = v14;
  }

  v8[1] = v10;
  *(v9 + 4) = 116;
  *v9 = 1718187859;
  NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v8, 163, v9, 5);
  swift::Demangle::__runtime::Node::addChild(Node, NodeWithAllocatedText, *(a1 + 40), v16, v17);
  v18 = *(a1 + 40);
  if (a4)
  {
    v19 = v18[1];
    v20 = &v19[a4];
    if (v19)
    {
      v21 = v20 > v18[2];
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v22 = 2 * v18[4];
      if (v22 <= a4 + 1)
      {
        v22 = a4 + 1;
      }

      v18[4] = v22;
      v23 = v22 + 8;
      v24 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
      v25 = v24 + v23;
      *v24 = v18[3];
      v19 = (v24 + 1);
      v18[2] = v25;
      v18[3] = v24;
      v20 = v24 + a4 + 8;
    }

    v18[1] = v20;
    memmove(v19, a3, a4);
  }

  else
  {
    v19 = 0;
  }

  v26 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v18, 103, v19, a4);
  swift::Demangle::__runtime::Node::addChild(Node, v26, *(a1 + 40), v27, v28);
  return Node;
}

const char *anonymous namespace::OldDemangler::demangleImplConvention(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *v3;
  if (v4 > 0x66)
  {
    if (*v3 <= 0x6Bu)
    {
      if (v4 == 103)
      {
        *(a1 + 24) = v3 + 1;
        *(a1 + 32) = v2 - 1;
        return off_1E69EBDB0[a2];
      }

      if (v4 == 105)
      {
        *(a1 + 24) = v3 + 1;
        *(a1 + 32) = v2 - 1;
        return qword_1E69EBDC8[a2];
      }

      return 0;
    }

    if (v4 != 108)
    {
      if (v4 == 111)
      {
        *(a1 + 24) = v3 + 1;
        *(a1 + 32) = v2 - 1;
        return off_1E69EBDE0[a2];
      }

      return 0;
    }

    *(a1 + 24) = v3 + 1;
    *(a1 + 32) = v2 - 1;
    if (a2 == 1)
    {
      return "@inout";
    }

    else
    {
      return 0;
    }
  }

  else if (*v3 > 0x63u)
  {
    if (v4 == 100)
    {
      *(a1 + 24) = v3 + 1;
      *(a1 + 32) = v2 - 1;
      return off_1E69EBD98[a2];
    }

    if (v4 != 101)
    {
      return 0;
    }

    *(a1 + 24) = v3 + 1;
    *(a1 + 32) = v2 - 1;
    if (a2 == 1)
    {
      return "@deallocating";
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v4 != 68)
    {
      if (v4 == 97)
      {
        *(a1 + 24) = v3 + 1;
        *(a1 + 32) = v2 - 1;
        if (a2 >= 2)
        {
          return "@autoreleased";
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    *(a1 + 24) = v3 + 1;
    *(a1 + 32) = v2 - 1;
    if (a2 >= 2)
    {
      return "@unowned_inner_pointer";
    }

    else
    {
      return 0;
    }
  }
}

uint64_t anonymous namespace::OldDemangler::demangleImplParameterOrResult(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 32);
  if (!v5 || (v6 = *(a1 + 24), *v6 != 122))
  {
    if (a2 == 123)
    {
      v7 = 1;
      v8 = 123;
      goto LABEL_9;
    }

    if ((a2 & 0xFFFFFFFD) == 0x7D)
    {
      v8 = a2;
      v7 = 2;
      goto LABEL_9;
    }

    return 0;
  }

  *(a1 + 24) = v6 + 1;
  *(a1 + 32) = v5 - 1;
  if (a2 != 125)
  {
    return 0;
  }

  v7 = 2;
  v8 = 127;
LABEL_9:
  if (!v10)
  {
    return 0;
  }

  v11 = v9;
  v12 = v10;
  if (!result)
  {
    return result;
  }

  v14 = result;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), 243);
  swift::Demangle::__runtime::Node::addChild(Node, v14, *(a1 + 40), v16, v17);
  if (!Node)
  {
    return 0;
  }

  v18 = swift::Demangle::__runtime::NodeFactory::createNode(*(a1 + 40), v8);
  v19 = *(a1 + 40);
  v20 = v19[1];
  if (!v20 || (v21 = &v20[v12], &v20[v12] > v19[2]))
  {
    v22 = 2 * v19[4];
    if (v22 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    v19[4] = v22;
    v23 = v22 + 8;
    v24 = malloc_type_malloc(v22 + 8, 0x2004093837F09uLL);
    v25 = v24 + v23;
    *v24 = v19[3];
    v20 = (v24 + 1);
    v19[2] = v25;
    v19[3] = v24;
    v21 = v24 + v12 + 8;
  }

  v19[1] = v21;
  memmove(v20, v11, v12);
  NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v19, 108, v20, v12);
  swift::Demangle::__runtime::Node::addChild(v18, NodeWithAllocatedText, *(a1 + 40), v27, v28);
  swift::Demangle::__runtime::Node::addChild(v18, Node, *(a1 + 40), v29, v30);
  return v18;
}

unint64_t anonymous namespace::OldDemangler::demangleValueWitnessKind(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 3);
  LOBYTE(v7) = *v2;
  *(this + 3) = v2 + 1;
  *(this + 4) = v1 - 1;
  if (v1 == 1)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v3 = v2[1];
    *(this + 3) = v2 + 2;
    *(this + 4) = v1 - 2;
    HIBYTE(v7) = v3;
    switch(v7)
    {
      case 27745:
        v5 = 0;
        v4 = 0x100000000;
        break;
      case 24931:
        v4 = 0x100000000;
        v5 = 1;
        break;
      case 24948:
        v4 = 0x100000000;
        v5 = 2;
        break;
      case 25956:
        v4 = 0x100000000;
        v5 = 3;
        break;
      case 30840:
        v4 = 0x100000000;
        v5 = 4;
        break;
      case 22616:
        v4 = 0x100000000;
        v5 = 5;
        break;
      case 30808:
        v4 = 0x100000000;
        v5 = 6;
        break;
      case 20547:
        v4 = 0x100000000;
        v5 = 7;
        break;
      case 28739:
        v4 = 0x100000000;
        v5 = 8;
        break;
      case 28771:
        v4 = 0x100000000;
        v5 = 9;
        break;
      case 27476:
        v4 = 0x100000000;
        v5 = 10;
        break;
      case 27508:
        v4 = 0x100000000;
        v5 = 11;
        break;
      case 29296:
        v4 = 0x100000000;
        v5 = 12;
        break;
      case 19284:
        v4 = 0x100000000;
        v5 = 13;
        break;
      case 25411:
        v4 = 0x100000000;
        v5 = 14;
        break;
      case 29780:
        v4 = 0x100000000;
        v5 = 15;
        break;
      case 21620:
        v4 = 0x100000000;
        v5 = 16;
        break;
      case 29560:
        v4 = 0x100000000;
        v5 = 17;
        break;
      case 26488:
        v4 = 0x100000000;
        v5 = 18;
        break;
      case 26485:
        v4 = 0x100000000;
        v5 = 19;
        break;
      case 28789:
        v4 = 0x100000000;
        v5 = 20;
        break;
      case 26997:
        v4 = 0x100000000;
        v5 = 21;
        break;
      case 29797:
        v4 = 0x100000000;
        v5 = 22;
        break;
      default:
        v4 = (v7 == 29811) << 32;
        v5 = 23;
        if (v7 != 29811)
        {
          v5 = 0;
        }

        break;
    }
  }

  return v5 | v4;
}

uint64_t anonymous namespace::OldDemangler::demangleReabstractSignature(_anonymous_namespace_::OldDemangler *this, swift::Demangle::__runtime::Node *a2, int a3)
{
  v6 = *(this + 4);
  if (v6)
  {
    v7 = *(this + 3);
    if (*v7 == 71)
    {
      *(this + 3) = v7 + 1;
      *(this + 4) = v6 - 1;
      if (!result)
      {
        return result;
      }

      swift::Demangle::__runtime::Node::addChild(a2, result, *(this + 5), v9, v10);
    }
  }

  if (result)
  {
    v11 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
    swift::Demangle::__runtime::Node::addChild(Node, v11, *(this + 5), v13, v14);
    if (!Node)
    {
      return 0;
    }

    swift::Demangle::__runtime::Node::addChild(a2, Node, *(this + 5), v15, v16);
    if (!result)
    {
      return result;
    }

    v17 = result;
    v18 = swift::Demangle::__runtime::NodeFactory::createNode(*(this + 5), 243);
    swift::Demangle::__runtime::Node::addChild(v18, v17, *(this + 5), v19, v20);
    if (v18)
    {
      swift::Demangle::__runtime::Node::addChild(a2, v18, *(this + 5), v21, v22);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

swift::Demangle::__runtime::Node *swift::Demangle::__runtime::mangleNodeOld(swift::Demangle::__runtime *this, swift::Demangle::__runtime::Node *a2)
{
  result = MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  if (!result)
  {
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = 0;
    return result;
  }

  v5 = result;
  v53 = &unk_1EEEADB68;
  v54 = 0;
  v55 = 0u;
  v57 = 0;
  v58 = 0;
  v16 = &v53;
  memset(&v17[12312], 0, 17);
  v18 = 0u;
  v19 = 0;
  v21 = 0;
  v20 = 0u;
  v22 = 0u;
  v23 = 0;
  v25 = 0;
  v24 = 0u;
  v27 = 0;
  v26 = 0u;
  v29 = 0;
  v28 = 0u;
  v30 = 0u;
  v31 = 0;
  v33 = 0;
  v32 = 0u;
  v34 = 0u;
  v35 = 0;
  v37 = 0;
  v36 = 0u;
  v38 = 0u;
  v39 = 0;
  v41 = 0;
  v40 = 0u;
  v42 = 0u;
  v43 = 0;
  v45 = 0;
  v44 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  bzero(v17, 0x3011uLL);
  v49 = 1065353216;
  v52 = &v53;
  v56 = 4800;
  v6 = malloc_type_malloc(0x12C8uLL, 0x2004093837F09uLL);
  v7 = *(&v55 + 1);
  *(&v55 + 1) = v6;
  *v6 = v7;
  v54 = v6 + 5;
  *&v55 = v6 + 601;
  __src = v6 + 1;
  __len = 0x2000000000;
  if (!v14)
  {
    if (__src)
    {
      v11 = __len;
      if (__len >= 0x17)
      {
        operator new();
      }

      HIBYTE(v13) = __len;
      if (__len)
      {
        memmove(&__dst, __src, __len);
      }

      *(&__dst + v11) = 0;
    }

    else
    {
      __dst = 0uLL;
      v13 = 0;
    }

    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = __dst;
    *(v4 + 40) = v13;
    v8 = *(&v47 + 1);
    if (!*(&v47 + 1))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *v4 = v14;
  *(v4 + 16) = v15;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v8 = *(&v47 + 1);
  if (*(&v47 + 1))
  {
    do
    {
LABEL_4:
      v9 = *v8;
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

LABEL_5:
  v10 = *(&v46 + 1);
  *(&v46 + 1) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v53 = &unk_1EEEADB68;
  result = swift::Demangle::__runtime::NodeFactory::freeSlabs(*(&v55 + 1));
  if (v57)
  {
    *(v57 + 48) = 0;
  }

  return result;
}

void anonymous namespace::Remangler::mangle(char **this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 < 0x401)
  {
    switch(*(a2 + 8))
    {
      case 0:

        return;
      case 1:

        return;
      case 2:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 529;
        goto LABEL_3;
      case 3:
      case 0x21:
      case 0xDA:
      case 0xF3:
        v5 = a3 + 1;

        return;
      case 4:

        return;
      case 5:

        return;
      case 6:

        return;
      case 7:
        v6 = this[1593];
        v7 = "<default-associated-type-metadata-accessor>";
        goto LABEL_201;
      case 8:

        return;
      case 9:

        return;
      case 0xA:
        v6 = this[1593];
        v7 = "<base-witness-table-accessor>";
        goto LABEL_724;
      case 0xB:

        goto LABEL_100;
      case 0xC:

        return;
      case 0xD:

        goto LABEL_20;
      case 0xE:

        goto LABEL_20;
      case 0xF:

        goto LABEL_20;
      case 0x10:

        goto LABEL_20;
      case 0x11:

        goto LABEL_20;
      case 0x12:

        goto LABEL_20;
      case 0x13:

        goto LABEL_20;
      case 0x14:

        return;
      case 0x15:
        *a4 = 9;
        *(a4 + 8) = a2;
        v4 = 1609;
        goto LABEL_3;
      case 0x16:
        *a4 = 9;
        *(a4 + 8) = a2;
        v4 = 1563;
        goto LABEL_3;
      case 0x17:

        return;
      case 0x18:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 1768;
        goto LABEL_3;
      case 0x19:

        goto LABEL_20;
      case 0x1A:

        return;
      case 0x1B:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 517;
        goto LABEL_3;
      case 0x1C:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 523;
        goto LABEL_3;
      case 0x1D:

        return;
      case 0x1E:

        return;
      case 0x1F:

        return;
      case 0x20:

        return;
      case 0x22:

        return;
      case 0x23:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 535;
        goto LABEL_3;
      case 0x24:

        return;
      case 0x25:

        return;
      case 0x26:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2114;
        goto LABEL_3;
      case 0x27:

        return;
      case 0x28:

        return;
      case 0x29:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2144;
        goto LABEL_3;
      case 0x2A:

        return;
      case 0x2B:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2071;
        goto LABEL_3;
      case 0x2C:
        goto LABEL_616;
      case 0x2D:

        return;
      case 0x2E:

        return;
      case 0x2F:
        ++a3;
LABEL_616:

        return;
      case 0x30:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 541;
        goto LABEL_3;
      case 0x31:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 548;
        goto LABEL_3;
      case 0x32:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 555;
        goto LABEL_3;
      case 0x33:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 562;
        goto LABEL_3;
      case 0x34:

        return;
      case 0x35:

        return;
      case 0x36:

        return;
      case 0x37:
        v6 = this[1593];
        v7 = "TE";
        goto LABEL_750;
      case 0x38:
        v6 = this[1593];
        v7 = "TF";
        goto LABEL_750;
      case 0x39:
        v6 = this[1593];
        v7 = "TD";
        goto LABEL_750;
      case 0x3A:
        v6 = this[1593];
        v7 = "Td";
        goto LABEL_750;
      case 0x3B:

        return;
      case 0x3C:
        v6 = this[1593];
        v7 = "TI";
        goto LABEL_750;
      case 0x3D:
        v6 = this[1593];
        v7 = "Tx";
        goto LABEL_750;
      case 0x3E:
        v6 = this[1593];
        v7 = "TX";
        goto LABEL_750;
      case 0x3F:

        goto LABEL_20;
      case 0x40:

        return;
      case 0x41:
        v6 = this[1593];
        v7 = "ERR";
        goto LABEL_608;
      case 0x42:

LABEL_100:
        return;
      case 0x43:

        goto LABEL_668;
      case 0x44:
        v6 = this[1593];
        v7 = "y";
        goto LABEL_471;
      case 0x45:

        return;
      case 0x46:

        return;
      case 0x47:

        return;
      case 0x48:

        return;
      case 0x49:

        return;
      case 0x4A:

        return;
      case 0x4B:

        return;
      case 0x4C:

        return;
      case 0x4D:

        return;
      case 0x4E:

        return;
      case 0x4F:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 436;
        goto LABEL_3;
      case 0x50:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 468;
        goto LABEL_3;
      case 0x51:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 462;
        goto LABEL_3;
      case 0x52:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 484;
        goto LABEL_3;
      case 0x53:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 476;
        goto LABEL_3;
      case 0x54:

LABEL_668:
        return;
      case 0x55:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 3001;
        goto LABEL_3;
      case 0x56:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 3006;
        goto LABEL_3;
      case 0x57:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 3010;
        goto LABEL_3;
      case 0x58:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 420;
        goto LABEL_3;
      case 0x59:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 426;
        goto LABEL_3;
      case 0x5A:

        return;
      case 0x5B:

        return;
      case 0x5C:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 918;
        goto LABEL_3;
      case 0x5D:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 394;
        goto LABEL_3;
      case 0x5E:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 405;
        goto LABEL_3;
      case 0x5F:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 410;
        goto LABEL_3;
      case 0x60:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 431;
        goto LABEL_3;
      case 0x61:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 400;
        goto LABEL_3;
      case 0x62:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 415;
        goto LABEL_3;
      case 0x63:

        return;
      case 0x64:

        return;
      case 0x65:

        return;
      case 0x66:

        return;
      case 0x67:
      case 0xEC:
        v9 = *(a2 + 1);
        v10 = *a2;
        v11 = 0;
        goto LABEL_695;
      case 0x68:
      case 0xAB:
        v8 = a4;
        goto LABEL_752;
      case 0x69:

        return;
      case 0x6A:

        return;
      case 0x6B:
      case 0x6E:
      case 0x6F:
      case 0x72:
      case 0x73:
      case 0x79:
      case 0x7C:
      case 0x121:
        *a4 = 0;
        goto LABEL_7;
      case 0x6C:

        return;
      case 0x6D:
        v8 = a4;
        swift::Demangle::__runtime::RemanglerBuffer::operator<<(this + 1591, *a2);
        goto LABEL_752;
      case 0x70:

        return;
      case 0x71:

        return;
      case 0x74:

        return;
      case 0x75:

        return;
      case 0x76:

        return;
      case 0x77:

        return;
      case 0x78:

        return;
      case 0x7A:

        return;
      case 0x7B:

        return;
      case 0x7D:

        return;
      case 0x7E:

        return;
      case 0x7F:

        return;
      case 0x80:

        return;
      case 0x81:
        v9 = *(a2 + 1);
        v10 = *a2;
        v11 = 3;
        goto LABEL_695;
      case 0x82:

        return;
      case 0x83:

        return;
      case 0x84:

        return;
      case 0x85:

        return;
      case 0x86:

        return;
      case 0x87:
        v6 = this[1593];
        v7 = "YA";
        goto LABEL_750;
      case 0x88:
        v6 = this[1593];
        v7 = "YC";
        goto LABEL_750;
      case 0x89:
        v6 = this[1593];
        v7 = "YT";
        goto LABEL_750;
      case 0x8A:

        return;
      case 0x8B:

        return;
      case 0x8C:

        return;
      case 0x8D:

        return;
      case 0x8E:

        return;
      case 0x8F:

        return;
      case 0x90:

        return;
      case 0x91:

        return;
      case 0x92:

        return;
      case 0x93:

        return;
      case 0x94:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 1139;
        goto LABEL_3;
      case 0x95:

        return;
      case 0x96:

        return;
      case 0x97:

        return;
      case 0x98:

        return;
      case 0x99:
        v6 = this[1593];
        v7 = "Tm";
        goto LABEL_750;
      case 0x9A:

        return;
      case 0x9B:

        return;
      case 0x9C:

        return;
      case 0x9D:
        v6 = this[1593];
        v7 = "<method-lookup-function>";
        goto LABEL_651;
      case 0x9E:
        v6 = this[1593];
        v7 = "<objc-metadata-update-function>";
        v12 = this + 1591;
        v13 = 31;
        goto LABEL_751;
      case 0x9F:
        v6 = this[1593];
        v7 = "<objc-resilient-class-stub>";
        goto LABEL_329;
      case 0xA0:
        v6 = this[1593];
        v7 = "<full-objc-resilient-class-stub>";
        v12 = this + 1591;
        v13 = 32;
        goto LABEL_751;
      case 0xA1:

        return;
      case 0xA2:

        return;
      case 0xA3:
        v15[0] = 0;
        v17 = 0;
        v18 = 0;
        v16 = 0;
        return;
      case 0xA4:

        return;
      case 0xA5:

        return;
      case 0xA6:

        return;
      case 0xA7:

        return;
      case 0xA8:

        return;
      case 0xA9:

        return;
      case 0xAA:
        v6 = this[1593];
        v7 = "TO";
        goto LABEL_750;
      case 0xAC:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2997;
        goto LABEL_3;
      case 0xAD:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2993;
        goto LABEL_3;
      case 0xAE:
        v6 = this[1593];
        v7 = "To";
        goto LABEL_750;
      case 0xAF:

        return;
      case 0xB0:
        v6 = this[1593];
        v7 = "<escaping block type>";
        goto LABEL_591;
      case 0xB1:

        goto LABEL_20;
      case 0xB2:

        return;
      case 0xB3:

        return;
      case 0xB4:

        return;
      case 0xB5:

        return;
      case 0xB6:

        return;
      case 0xB7:
        v9 = *(a2 + 1);
        v10 = *a2;
        v11 = 2;
        goto LABEL_695;
      case 0xB8:

        return;
      case 0xB9:
        v9 = *(a2 + 1);
        v10 = *a2;
        v11 = 1;
LABEL_695:

        return;
      case 0xBA:

        return;
      case 0xBB:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 679;
        goto LABEL_3;
      case 0xBC:

        return;
      case 0xBD:

        return;
      case 0xBE:

        return;
      case 0xBF:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2892;
        goto LABEL_3;
      case 0xC0:

        return;
      case 0xC1:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 497;
        goto LABEL_3;
      case 0xC2:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 504;
        goto LABEL_3;
      case 0xC3:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 511;
        goto LABEL_3;
      case 0xC4:

        return;
      case 0xC5:

        return;
      case 0xC6:

        return;
      case 0xC7:

        return;
      case 0xC8:

        return;
      case 0xC9:

        return;
      case 0xCA:

        return;
      case 0xCB:

        return;
      case 0xCC:

        return;
      case 0xCD:

        return;
      case 0xCE:

        return;
      case 0xCF:

        return;
      case 0xD0:

        return;
      case 0xD1:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 714;
        goto LABEL_3;
      case 0xD2:
        v6 = this[1593];
        v7 = "<reabstraction-thunk>";
LABEL_591:
        v12 = this + 1591;
        v13 = 21;
        goto LABEL_751;
      case 0xD3:
        v6 = this[1593];
        v7 = "<reabstraction-thunk-helper>";
        goto LABEL_586;
      case 0xD4:
        v6 = this[1593];
        v7 = "<reabstraction-thunk-helper-with-self>";
        v12 = this + 1591;
        v13 = 38;
        goto LABEL_751;
      case 0xD5:
        v6 = this[1593];
        v7 = "<reabstraction-thunk-helper-with-global-actor>";
        goto LABEL_664;
      case 0xD6:

        return;
      case 0xD7:

        return;
      case 0xD8:

        return;
      case 0xD9:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 490;
        goto LABEL_3;
      case 0xDB:

        return;
      case 0xDC:

        return;
      case 0xDD:

        return;
      case 0xDE:

        return;
      case 0xDF:

        return;
      case 0xE0:

        return;
      case 0xE1:

        return;
      case 0xE2:

        return;
      case 0xE3:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 441;
        goto LABEL_3;
      case 0xE4:
        v6 = this[1593];
        v7 = "q";
        goto LABEL_471;
      case 0xE5:

        return;
      case 0xE6:

        goto LABEL_20;
      case 0xE7:

        return;
      case 0xE8:
        v13 = *(a2 + 1);
        v6 = this[1593];
        v12 = this + 1591;
        v7 = *a2;
        goto LABEL_751;
      case 0xE9:

        return;
      case 0xEA:

        return;
      case 0xEB:
        v14 = a3 + 1;

        return;
      case 0xED:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2035;
        goto LABEL_3;
      case 0xEE:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2039;
        goto LABEL_3;
      case 0xEF:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2043;
        goto LABEL_3;
      case 0xF0:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2047;
        goto LABEL_3;
      case 0xF1:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2051;
        goto LABEL_3;
      case 0xF2:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2055;
        goto LABEL_3;
      case 0xF4:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2886;
        goto LABEL_3;
      case 0xF5:

LABEL_20:
        return;
      case 0xF6:

        return;
      case 0xF7:

        return;
      case 0xF8:

        return;
      case 0xF9:

        return;
      case 0xFA:

        return;
      case 0xFB:

        return;
      case 0xFC:

        return;
      case 0xFD:

        return;
      case 0xFE:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 639;
        goto LABEL_3;
      case 0xFF:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 645;
        goto LABEL_3;
      case 0x100:

        return;
      case 0x101:

        return;
      case 0x102:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2335;
        goto LABEL_3;
      case 0x103:

        return;
      case 0x104:

        return;
      case 0x105:

        return;
      case 0x106:

        return;
      case 0x107:

        return;
      case 0x108:

        return;
      case 0x109:

        return;
      case 0x10A:

        return;
      case 0x10B:

        return;
      case 0x10C:
        v6 = this[1593];
        v7 = "TV";
        goto LABEL_750;
      case 0x10D:

        return;
      case 0x10E:
        v6 = this[1593];
        v7 = "MRb";
        goto LABEL_608;
      case 0x10F:
        v6 = this[1593];
        v7 = "MRf";
        goto LABEL_608;
      case 0x110:
        v6 = this[1593];
        v7 = "MRa";
        goto LABEL_608;
      case 0x111:
        v6 = this[1593];
        v7 = "MRc";
        goto LABEL_608;
      case 0x112:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2567;
        goto LABEL_3;
      case 0x113:
        v6 = this[1593];
        v7 = "<curry-thunk>";
        v12 = this + 1591;
        v13 = 13;
        goto LABEL_751;
      case 0x114:
        v6 = this[1593];
        v7 = "<sil-identity-thunk>";
        v12 = this + 1591;
        v13 = 20;
        goto LABEL_751;
      case 0x115:
        v6 = this[1593];
        v7 = "<dispatch-thunk>";
        v12 = this + 1591;
        v13 = 16;
        goto LABEL_751;
      case 0x116:
        v6 = this[1593];
        v7 = "<method-descriptor>";
        goto LABEL_499;
      case 0x117:
        v6 = this[1593];
        v7 = "<protocol-requirements-base-descriptor>";
        v12 = this + 1591;
        v13 = 39;
        goto LABEL_751;
      case 0x118:
        v6 = this[1593];
        v7 = "<associated-conformance-descriptor>";
        v12 = this + 1591;
        v13 = 35;
        goto LABEL_751;
      case 0x119:
        v6 = this[1593];
        v7 = "<default-associated-conformance-descriptor>";
LABEL_201:
        v12 = this + 1591;
        v13 = 43;
        goto LABEL_751;
      case 0x11A:
        v6 = this[1593];
        v7 = "<base-conformance-descriptor>";
LABEL_724:
        v12 = this + 1591;
        v13 = 29;
        goto LABEL_751;
      case 0x11B:
        v6 = this[1593];
        v7 = "<associated-type-descriptor>";
LABEL_586:
        v12 = this + 1591;
        v13 = 28;
        goto LABEL_751;
      case 0x11C:
        v6 = this[1593];
        v7 = "Z";
        goto LABEL_471;
      case 0x11D:
      case 0x11E:
        v6 = this[1593];
        v7 = "z";
        goto LABEL_471;
      case 0x11F:
        v6 = this[1593];
        v7 = "<empty>";
        goto LABEL_490;
      case 0x120:
        v6 = this[1593];
        v7 = "<first>";
LABEL_490:
        v12 = this + 1591;
        v13 = 7;
        goto LABEL_751;
      case 0x122:

        return;
      case 0x123:

        return;
      case 0x124:

        return;
      case 0x125:

        return;
      case 0x126:

        return;
      case 0x127:

        return;
      case 0x128:

        return;
      case 0x129:

        return;
      case 0x12A:

        return;
      case 0x12B:

        return;
      case 0x12C:

        return;
      case 0x12D:

        return;
      case 0x12E:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2863;
        goto LABEL_3;
      case 0x12F:

        return;
      case 0x130:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2867;
        goto LABEL_3;
      case 0x131:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2871;
        goto LABEL_3;
      case 0x132:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2875;
        goto LABEL_3;
      case 0x133:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2880;
        goto LABEL_3;
      case 0x134:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2902;
        goto LABEL_3;
      case 0x135:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2906;
        goto LABEL_3;
      case 0x136:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2914;
        goto LABEL_3;
      case 0x137:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2910;
        goto LABEL_3;
      case 0x138:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2918;
        goto LABEL_3;
      case 0x139:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2972;
        goto LABEL_3;
      case 0x13A:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2944;
        goto LABEL_3;
      case 0x13B:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2898;
        goto LABEL_3;
      case 0x13C:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2948;
        goto LABEL_3;
      case 0x13D:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2952;
        goto LABEL_3;
      case 0x13E:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2956;
        goto LABEL_3;
      case 0x13F:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2960;
        goto LABEL_3;
      case 0x140:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2964;
        goto LABEL_3;
      case 0x141:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2968;
        goto LABEL_3;
      case 0x142:

        return;
      case 0x143:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2941;
        goto LABEL_3;
      case 0x144:

        return;
      case 0x145:

        return;
      case 0x146:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2976;
        goto LABEL_3;
      case 0x147:

        return;
      case 0x148:

        return;
      case 0x149:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2984;
        goto LABEL_3;
      case 0x14A:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2980;
        goto LABEL_3;
      case 0x14B:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2988;
        goto LABEL_3;
      case 0x14C:

        return;
      case 0x14D:
        v6 = this[1593];
        v7 = "Tu";
        goto LABEL_750;
      case 0x14E:
        v6 = this[1593];
        v7 = "<autodiff-function>";
LABEL_499:
        v12 = this + 1591;
        v13 = 19;
        goto LABEL_751;
      case 0x14F:
        v6 = this[1593];
        v7 = "<autodiff-function-kind>";
LABEL_651:
        v12 = this + 1591;
        v13 = 24;
        goto LABEL_751;
      case 0x150:
        v6 = this[1593];
        v7 = "<autodiff-self-reordering-reabstraction-thunk>";
LABEL_664:
        v12 = this + 1591;
        v13 = 46;
        goto LABEL_751;
      case 0x151:
        v6 = this[1593];
        v7 = "<autodiff-subset-parameters-thunk>";
        goto LABEL_319;
      case 0x152:
        v6 = this[1593];
        v7 = "<autodiff-derivative-vtable-thunk>";
LABEL_319:
        v12 = this + 1591;
        v13 = 34;
        goto LABEL_751;
      case 0x153:
        v6 = this[1593];
        v7 = "<differentiability-witness>";
LABEL_329:
        v12 = this + 1591;
        v13 = 27;
        goto LABEL_751;
      case 0x154:

        return;
      case 0x155:
        v6 = this[1593];
        v7 = "<index-subset>";
        v12 = this + 1591;
        v13 = 14;
        goto LABEL_751;
      case 0x156:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 794;
        goto LABEL_3;
      case 0x157:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 798;
        goto LABEL_3;
      case 0x158:
        v6 = this[1593];
        v7 = "HF";
LABEL_750:
        v12 = this + 1591;
        v13 = 2;
        goto LABEL_751;
      case 0x159:

        return;
      case 0x15A:
        v6 = this[1593];
        v7 = "Twb";
        goto LABEL_608;
      case 0x15B:
        v6 = this[1593];
        v7 = "TwB";
        goto LABEL_608;
      case 0x15C:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 3017;
        goto LABEL_3;
      case 0x15D:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 3013;
        goto LABEL_3;
      case 0x15E:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 3026;
        goto LABEL_3;
      case 0x15F:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 3031;
        goto LABEL_3;
      case 0x160:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 3021;
        goto LABEL_3;
      case 0x161:

        return;
      case 0x162:
        v6 = this[1593];
        v7 = "TwS";
        goto LABEL_608;
      case 0x163:
      case 0x164:
        *a4 = 11;
LABEL_7:
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        return;
      case 0x165:

        return;
      case 0x166:

        return;
      case 0x167:

        return;
      case 0x168:
        v6 = this[1593];
        v7 = "a";
LABEL_471:
        v12 = this + 1591;
        v13 = 1;
        goto LABEL_751;
      case 0x169:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 3036;
        goto LABEL_3;
      case 0x16A:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2684;
        goto LABEL_3;
      case 0x16B:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2689;
        goto LABEL_3;
      case 0x16C:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2694;
        goto LABEL_3;
      case 0x16D:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2699;
        goto LABEL_3;
      case 0x16E:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 2703;
        goto LABEL_3;
      case 0x16F:

        return;
      case 0x170:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 3150;
        goto LABEL_3;
      case 0x171:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 3154;
        goto LABEL_3;
      case 0x172:
        *a4 = 7;
        *(a4 + 8) = a2;
        v4 = 3159;
        goto LABEL_3;
      case 0x173:
        v6 = this[1593];
        v7 = "Twc";
        goto LABEL_608;
      case 0x174:
        v6 = this[1593];
        v7 = "Twd";
LABEL_608:
        v12 = this + 1591;
        v13 = 3;
LABEL_751:
        v8 = a4;
        swift::Demangle::__runtime::CharVector::append(v12, v7, v13, v6);
LABEL_752:
        *v8 = 0;
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        break;
      case 0x175:

        break;
      default:
        *a4 = 4;
        *(a4 + 8) = a2;
        v4 = 83;
        goto LABEL_3;
    }
  }

  else
  {
    *a4 = 3;
    *(a4 + 8) = a2;
    v4 = 74;
LABEL_3:
    *(a4 + 16) = v4;
  }
}

void swift::Demangle::__runtime::mangleNodeOld(swift::Demangle::__runtime *this, swift::Demangle::__runtime::Node *a2, swift::Demangle::__runtime::NodeFactory *a3)
{
  v3 = MEMORY[0x1EEE9AC00](this);
  v6 = v5;
  if (!v3)
  {
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    return;
  }

  v7 = v4;
  v8 = v3;
  memset(&v22[12312], 0, 17);
  v23 = 0u;
  v24 = 0;
  v26 = 0;
  v25 = 0u;
  v27 = 0u;
  v28 = 0;
  v30 = 0;
  v29 = 0u;
  v32 = 0;
  v31 = 0u;
  v34 = 0;
  v33 = 0u;
  v35 = 0u;
  v36 = 0;
  v38 = 0;
  v37 = 0u;
  v39 = 0u;
  v40 = 0;
  v42 = 0;
  v41 = 0u;
  v43 = 0u;
  v44 = 0;
  v46 = 0;
  v45 = 0u;
  v47 = 0u;
  v48 = 0;
  v50 = 0;
  v49 = 0u;
  v51 = 0u;
  v52 = 0u;
  v21 = v4;
  v53 = 0;
  bzero(v22, 0x3011uLL);
  v54 = 1065353216;
  v57 = v7;
  v9 = *(v7 + 1);
  if (!v9 || (v9 + 4) > *(v7 + 2))
  {
    v10 = 2 * *(v7 + 4);
    if (v10 <= 0x21)
    {
      v10 = 33;
    }

    *(v7 + 4) = v10;
    v11 = v10 + 8;
    v12 = malloc_type_malloc(v10 + 8, 0x2004093837F09uLL);
    *v12 = *(v7 + 3);
    v9 = v12 + 1;
    *(v7 + 2) = v12 + v11;
    *(v7 + 3) = v12;
  }

  *(v7 + 1) = v9 + 4;
  v55 = v9;
  v56 = 0x2000000000;
  if (v19)
  {
    *v6 = v19;
    v13 = v20;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = v13;
    v14 = *(&v52 + 1);
    if (*(&v52 + 1))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v17 = v55;
    v18 = v56;
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *(v6 + 24) = v17;
    *(v6 + 32) = v18;
    v14 = *(&v52 + 1);
    if (*(&v52 + 1))
    {
      do
      {
LABEL_9:
        v15 = *v14;
        operator delete(v14);
        v14 = v15;
      }

      while (v15);
    }
  }

  v16 = *(&v51 + 1);
  *(&v51 + 1) = 0;
  if (v16)
  {
    operator delete(v16);
  }
}

void swift::Demangle::__runtime::mangleNodeAsObjcCString(swift::Demangle::__runtime *this, swift::Demangle::__runtime::Node *a2, swift::Demangle::__runtime::NodeFactory *a3)
{
  v3 = MEMORY[0x1EEE9AC00](this);
  v6 = v5;
  if (!v3)
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 3107;
    return;
  }

  v7 = v4;
  v8 = v3;
  memset(&v20[12312], 0, 17);
  v21 = 0u;
  v22 = 0;
  v24 = 0;
  v23 = 0u;
  v25 = 0u;
  v26 = 0;
  v28 = 0;
  v27 = 0u;
  v30 = 0;
  v29 = 0u;
  v32 = 0;
  v31 = 0u;
  v33 = 0u;
  v34 = 0;
  v36 = 0;
  v35 = 0u;
  v37 = 0u;
  v38 = 0;
  v40 = 0;
  v39 = 0u;
  v41 = 0u;
  v42 = 0;
  v44 = 0;
  v43 = 0u;
  v45 = 0u;
  v46 = 0;
  v48 = 0;
  v47 = 0u;
  v49 = 0u;
  v50 = 0u;
  v19 = v4;
  v51 = 0;
  bzero(v20, 0x3011uLL);
  v52 = 1065353216;
  v54 = v7;
  v9 = *(v7 + 1);
  if (!v9 || (v9 + 32) > *(v7 + 2))
  {
    v10 = 2 * *(v7 + 4);
    if (v10 <= 0x21)
    {
      v10 = 33;
    }

    *(v7 + 4) = v10;
    v11 = v10 + 8;
    v12 = malloc_type_malloc(v10 + 8, 0x2004093837F09uLL);
    *v12 = *(v7 + 3);
    v9 = (v12 + 1);
    *(v7 + 2) = v12 + v11;
    *(v7 + 3) = v12;
  }

  *(v7 + 1) = v9 + 32;
  v53[0] = v9;
  v53[1] = 0x2000000000;
  swift::Demangle::__runtime::CharVector::append(v53, "_Tt", 3uLL, v7);
  if (v17)
  {
    *v6 = v17;
    *(v6 + 16) = v18;
    v13 = *(&v50 + 1);
    if (*(&v50 + 1))
    {
      goto LABEL_9;
    }
  }

  else
  {
    swift::Demangle::__runtime::CharVector::append(v53, "_", 2uLL, v54);
    v16 = v53[0];
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *(v6 + 24) = v16;
    v13 = *(&v50 + 1);
    if (*(&v50 + 1))
    {
      do
      {
LABEL_9:
        v14 = *v13;
        operator delete(v13);
        v13 = v14;
      }

      while (v14);
    }
  }

  v15 = *(&v49 + 1);
  *(&v49 + 1) = 0;
  if (v15)
  {
    operator delete(v15);
  }
}

void anonymous namespace::Remangler::mangleAllocator(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleAnonymousContext(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4[0] = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void anonymous namespace::Remangler::mangleAssociatedType(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 18);
  if (v5 != 1)
  {
    if (v5 == 2)
    {
      goto LABEL_10;
    }

    if (v5 == 5)
    {
      v6 = *(a2 + 2);
      if (v6)
      {
        if (v6 == 1)
        {
          a2 = *a2;
          goto LABEL_7;
        }

LABEL_10:
        *a4 = 1;
        *(a4 + 8) = a2;
        *(a4 + 16) = 2181;
        return;
      }
    }

    v9 = *(this + 3184);
    v10 = *(this + 3185);
    v11 = *(this + 1591);
    if (v9 < v10)
    {
LABEL_30:
      *(this + 3184) = v9 + 1;
      v11[v9] = 95;
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return;
    }

    v12 = *(this + 1593);
    v13 = v12[1];
    if (&v11[v10] == v13)
    {
      v14 = v12[2];
      if ((v13 + 1) <= v14)
      {
        v12[1] = v13 + 1;
        LODWORD(v15) = 1;
LABEL_29:
        *(this + 3185) = v10 + v15;
        goto LABEL_30;
      }
    }

    else
    {
      v14 = v12[2];
    }

    if ((2 * v10) <= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = (2 * v10);
    }

    v16 = v15 + v10;
    if (v13)
    {
      v17 = &v13[v15 + v10] > v14;
    }

    else
    {
      v17 = 1;
    }

    v11 = v12[1];
    if (v17)
    {
      v18 = 2 * v12[4];
      if (v18 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      v12[4] = v18;
      v19 = v18 + 8;
      v20 = this;
      v21 = a4;
      v22 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
      a4 = v21;
      v23 = v22;
      this = v20;
      v24 = v23 + v19;
      *v23 = v12[3];
      v11 = v23 + 1;
      v12[2] = v24;
      v12[3] = v23;
    }

    v12[1] = &v11[v16];
    if (v10)
    {
      v25 = this;
      v26 = v10;
      v27 = a4;
      memcpy(v11, *(this + 1591), v26);
      this = v25;
      a4 = v27;
    }

    *(this + 1591) = v11;
    LODWORD(v10) = *(this + 3185);
    v9 = *(this + 3184);
    goto LABEL_29;
  }

LABEL_7:
  v7 = *a2;
  v8 = a3 + 1;
}

uint64_t anonymous namespace::Remangler::mangleAssociatedTypeRef@<X0>(_anonymous_namespace_::Remangler *this@<X0>, swift::Demangle::__runtime::Node *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v41 = 0uLL;
  v42 = 0;
  if (result)
  {
    goto LABEL_41;
  }

  swift::Demangle::__runtime::RemanglerBase::entryForNode(&v43, this, a2, 0);
  v41 = v43;
  v42 = v44;
  result = swift::Demangle::__runtime::RemanglerBase::findSubstitution(this, &v41);
  v9 = *(this + 1593);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(this + 3184);
    v11 = *(this + 3185);
    v12 = *(this + 1591);
    if (v10 < v11)
    {
      goto LABEL_22;
    }

    v13 = v9[1];
    if (&v12[v11] == v13)
    {
      v14 = v9[2];
      if ((v13 + 1) <= v14)
      {
        v9[1] = v13 + 1;
        LODWORD(v18) = 1;
LABEL_21:
        *(this + 3185) = v11 + v18;
LABEL_22:
        *(this + 3184) = v10 + 1;
        v12[v10] = 83;
        if (result)
        {
          result = swift::Demangle::__runtime::CharVector::append(this + 3182, result - 1, *(this + 1593));
        }

        v28 = *(this + 3184);
        v29 = *(this + 3185);
        v30 = *(this + 1591);
        if (v28 < v29)
        {
          goto LABEL_40;
        }

        v31 = *(this + 1593);
        v32 = v31[1];
        if (&v30[v29] == v32)
        {
          v33 = v31[2];
          if ((v32 + 1) <= v33)
          {
            v31[1] = v32 + 1;
            LODWORD(v34) = 1;
LABEL_39:
            *(this + 3185) = v29 + v34;
LABEL_40:
            *(this + 3184) = v28 + 1;
            v30[v28] = 95;
LABEL_41:
            *a4 = 0;
            *(a4 + 8) = 0;
            v39 = (a4 + 16);
            goto LABEL_42;
          }
        }

        else
        {
          v33 = v31[2];
        }

        if ((2 * v29) <= 4)
        {
          v34 = 4;
        }

        else
        {
          v34 = (2 * v29);
        }

        v35 = v34 + v29;
        if (!v32 || &v32[v35] > v33)
        {
          v36 = 2 * v31[4];
          if (v36 <= v35 + 1)
          {
            v36 = v35 + 1;
          }

          v31[4] = v36;
          v37 = v36 + 8;
          result = malloc_type_malloc(v36 + 8, 0x2004093837F09uLL);
          v38 = result + v37;
          *result = v31[3];
          v32 = (result + 8);
          v31[2] = v38;
          v31[3] = result;
        }

        v31[1] = &v32[v35];
        if (v29)
        {
          result = memcpy(v32, *(this + 1591), v29);
        }

        *(this + 1591) = v32;
        LODWORD(v29) = *(this + 3185);
        v30 = v32;
        v28 = *(this + 3184);
        goto LABEL_39;
      }
    }

    else
    {
      v14 = v9[2];
    }

    if ((2 * v11) <= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = (2 * v11);
    }

    v19 = v18 + v11;
    if (!v13 || &v13[v19] > v14)
    {
      v20 = 2 * v9[4];
      if (v20 <= v19 + 1)
      {
        v20 = v19 + 1;
      }

      v9[4] = v20;
      v21 = v20 + 8;
      v22 = result;
      v23 = v9;
      v24 = malloc_type_malloc(v20 + 8, 0x2004093837F09uLL);
      v9 = v23;
      v25 = v24;
      result = v22;
      v26 = v25 + v21;
      *v25 = v23[3];
      v13 = (v25 + 1);
      v23[2] = v26;
      v23[3] = v25;
    }

    v9[1] = &v13[v19];
    if (v11)
    {
      v27 = result;
      memcpy(v13, *(this + 1591), v11);
      result = v27;
    }

    *(this + 1591) = v13;
    LODWORD(v11) = *(this + 3185);
    v12 = v13;
    v10 = *(this + 3184);
    goto LABEL_21;
  }

  swift::Demangle::__runtime::CharVector::append(this + 1591, "Q", 1uLL, v9);
  v15 = *(a2 + 18);
  v16 = a2;
  if ((v15 - 1) >= 2)
  {
    if (v15 == 5)
    {
      v17 = *a2;
      v16 = *a2;
LABEL_49:
      v40 = (v17 + 8 * *(a2 + 2));
      goto LABEL_55;
    }

    v16 = 0;
  }

  switch(v15)
  {
    case 1:
      v40 = (a2 + 8);
      goto LABEL_55;
    case 2:
      v40 = (a2 + 16);
      goto LABEL_55;
    case 5:
      v17 = *a2;
      goto LABEL_49;
  }

  v40 = 0;
LABEL_55:
  while (v16 != v40)
  {
    if (*a4)
    {
      return result;
    }

    ++v16;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v39 = (a4 + 16);
  result = swift::Demangle::__runtime::RemanglerBase::addSubstitution(this, &v41);
  *a4 = 0;
  *(a4 + 8) = 0;
LABEL_42:
  *v39 = 0;
  return result;
}

void *anonymous namespace::Remangler::mangleAssociatedTypeMetadataAccessor@<X0>(char **this@<X0>, swift::Demangle::__runtime::Node **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  result = swift::Demangle::__runtime::CharVector::append(this + 1591, "Wt", 2uLL, this[1593]);
  v9 = *(a2 + 18);
  v10 = a2;
  if ((v9 - 1) >= 2)
  {
    if (v9 == 5)
    {
      v11 = *a2;
      v10 = *a2;
LABEL_9:
      v12 = (v11 + 8 * *(a2 + 2));
      goto LABEL_15;
    }

    v10 = 0;
  }

  switch(v9)
  {
    case 1:
      v12 = a2 + 1;
      goto LABEL_15;
    case 2:
      v12 = a2 + 2;
      goto LABEL_15;
    case 5:
      v11 = *a2;
      goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  while (v10 != v12)
  {
    if (*a4)
    {
      return result;
    }

    ++v10;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}