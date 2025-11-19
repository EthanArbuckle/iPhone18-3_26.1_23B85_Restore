void *PrintTypeRef::visitForeignClassTypeRef(PrintTypeRef *this, const swift::reflection::ForeignClassTypeRef *a2)
{
  v12 = 7;
  strcpy(__p, "foreign");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 7);
  if (v12 < 0)
  {
    operator delete(__p[0]);
    v6 = *(a2 + 39);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_5:
      if (v6)
      {
        v10 = 4;
        strcpy(v9, "name");
        v8 = *(a2 + 16);
        goto LABEL_10;
      }

      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
    }
  }

  else
  {
    v6 = *(a2 + 39);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  if (*(a2 + 3))
  {
    v10 = 4;
    strcpy(v9, "name");
    std::string::__init_copy_ctor_external(&v8, *(a2 + 2), *(a2 + 3));
LABEL_10:
    PrintMetadataSource::printField(this, v9, &v8);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
      }
    }

    else if ((v10 & 0x80000000) == 0)
    {
      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
    }

    operator delete(v9[0]);
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintTypeRef::visitObjCClassTypeRef(PrintTypeRef *this, const swift::reflection::ObjCClassTypeRef *a2)
{
  v12 = 17;
  strcpy(__p, "objective_c_class");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 17);
  if (v12 < 0)
  {
    operator delete(*__p);
    v6 = *(a2 + 39);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_5:
      if (v6)
      {
        v10 = 4;
        strcpy(v9, "name");
        v8 = *(a2 + 16);
        goto LABEL_10;
      }

      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
    }
  }

  else
  {
    v6 = *(a2 + 39);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  if (*(a2 + 3))
  {
    v10 = 4;
    strcpy(v9, "name");
    std::string::__init_copy_ctor_external(&v8, *(a2 + 2), *(a2 + 3));
LABEL_10:
    PrintMetadataSource::printField(this, v9, &v8);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
      }
    }

    else if ((v10 & 0x80000000) == 0)
    {
      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
    }

    operator delete(v9[0]);
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintTypeRef::visitObjCProtocolTypeRef(PrintTypeRef *this, const swift::reflection::ObjCProtocolTypeRef *a2)
{
  v12 = 20;
  strcpy(__p, "objective_c_protocol");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 20);
  if (v12 < 0)
  {
    operator delete(*__p);
    v6 = *(a2 + 39);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_5:
      if (v6)
      {
        v10 = 4;
        strcpy(v9, "name");
        v8 = *(a2 + 16);
        goto LABEL_10;
      }

      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
    }
  }

  else
  {
    v6 = *(a2 + 39);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  if (*(a2 + 3))
  {
    v10 = 4;
    strcpy(v9, "name");
    std::string::__init_copy_ctor_external(&v8, *(a2 + 2), *(a2 + 3));
LABEL_10:
    PrintMetadataSource::printField(this, v9, &v8);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
      }
    }

    else if ((v10 & 0x80000000) == 0)
    {
      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
    }

    operator delete(v9[0]);
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintTypeRef::visitOpaqueTypeRef(PrintTypeRef *this, const swift::reflection::OpaqueTypeRef *a2)
{
  v7 = 6;
  strcpy(__p, "opaque");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, __p, 6);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintTypeRef::visitOpaqueArchetypeTypeRef(PrintTypeRef *this, const swift::reflection::OpaqueArchetypeTypeRef *a2)
{
  v34 = 16;
  strcpy(__p, "opaque_archetype");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 16);
  if (v34 < 0)
  {
    operator delete(*__p);
  }

  v32 = 2;
  strcpy(v31, "id");
  v6 = *(a2 + 39);
  if (v6 >= 0)
  {
    v7 = a2 + 16;
  }

  else
  {
    v7 = *(a2 + 2);
  }

  v8 = *(a2 + 3);
  if (v6 >= 0)
  {
    v9 = *(a2 + 39);
  }

  else
  {
    v9 = *(a2 + 3);
  }

  if (v7)
  {
    if (v9 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_53;
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v30) = v9;
    if (v9)
    {
      memmove(__dst, v7, v9);
    }

    *(__dst + v9) = 0;
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v30 = 0;
  }

  PrintMetadataSource::printField(this, v31, __dst);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__dst[0]);
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((v32 & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v31[0]);
LABEL_22:
  v28 = 11;
  strcpy(v27, "description");
  v10 = *(a2 + 63);
  if (v10 >= 0)
  {
    v11 = a2 + 40;
  }

  else
  {
    v11 = *(a2 + 5);
  }

  v12 = *(a2 + 6);
  if (v10 >= 0)
  {
    v13 = *(a2 + 63);
  }

  else
  {
    v13 = *(a2 + 6);
  }

  if (!v11)
  {
    v25[0] = 0;
    v25[1] = 0;
    v26 = 0;
    goto LABEL_39;
  }

  if (v13 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_53:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v26) = v13;
  if (v13)
  {
    memmove(v25, v11, v13);
  }

  *(v25 + v13) = 0;
LABEL_39:
  PrintMetadataSource::printField(this, v27, v25);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  operator delete(v27[0]);
LABEL_41:
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ordinal ", 9);
  v14 = *(a2 + 16);
  v15 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, " ", 1);
  v16 = *(a2 + 12);
  for (j = *(a2 + 13); v16 != j; v16 += 16)
  {
    v19 = *v16;
    v18 = *(v16 + 8);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
    v20 = *(this + 2);
    v21 = v20 + 2;
    if (v20 != -2)
    {
      do
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
        --v21;
      }

      while (v21);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "args: <", 7);
    if (v18)
    {
      v22 = 8 * v18;
      do
      {
        v23 = *v19++;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
        *(this + 2) += 2;
        swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(this, v23);
        *(this + 2) -= 2;
        v22 -= 8;
      }

      while (v22);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ">", 1);
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintTypeRef::visitSILBoxTypeWithLayoutTypeRef(PrintTypeRef *this, const swift::reflection::SILBoxTypeWithLayoutTypeRef *a2)
{
  v42 = 20;
  strcpy(__p, "sil_box_with_layout\n");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 20);
  if (v42 < 0)
  {
    operator delete(*__p);
  }

  v6 = *(this + 2);
  v40 = 7;
  strcpy(v39, "layout\n");
  v7 = v6 + 2;
  *(this + 2) = v6 + 2;
  if (v6 != -2)
  {
    do
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
      --v7;
    }

    while (v7);
  }

  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  if (v40 >= 0)
  {
    v9 = v39;
  }

  else
  {
    v9 = v39[0];
  }

  if (v40 >= 0)
  {
    v10 = v40;
  }

  else
  {
    v10 = v39[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, v9, v10);
  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  v11 = *(this + 2);
  *(this + 2) = v11 + 2;
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  if (v12 != v13)
  {
    do
    {
      v15 = "var";
      if ((*v12 & 4) == 0)
      {
        v15 = "let";
      }

      v38 = 3;
      LOWORD(v37[0]) = *v15;
      WORD1(v37[0]) = *(v15 + 2);
      for (j = *(this + 2); j; --j)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
      }

      v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
      if (v38 >= 0)
      {
        v18 = v37;
      }

      else
      {
        v18 = v37[0];
      }

      if (v38 >= 0)
      {
        v19 = v38;
      }

      else
      {
        v19 = v37[1];
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, v18, v19);
      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      v14 = *v12++;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
      *(this + 2) += 2;
      swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(this, v14 & 0xFFFFFFFFFFFFFFF8);
      *(this + 2) -= 2;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
    }

    while (v12 != v13);
    v11 = *(this + 2) - 2;
  }

  *(this + 2) = v11;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")\n", 2);
  HIBYTE(v36[2]) = 18;
  strcpy(v36, "generic_signature\n");
  for (k = *(this + 2); k; --k)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, v36, 18);
  if (SHIBYTE(v36[2]) < 0)
  {
    operator delete(v36[0]);
  }

  v22 = *(this + 2);
  *(this + 2) = v22 + 2;
  v23 = *(a2 + 5);
  v24 = *(a2 + 6);
  if (v23 != v24)
  {
    do
    {
      v35 = 12;
      strcpy(v34, "substitution");
      for (m = *(this + 2); m; --m)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
      }

      v28 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
      if (v35 >= 0)
      {
        v29 = v34;
      }

      else
      {
        v29 = v34[0];
      }

      if (v35 >= 0)
      {
        v30 = v35;
      }

      else
      {
        v30 = v34[1];
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, v29, v30);
      if (v35 < 0)
      {
        operator delete(v34[0]);
      }

      v25 = *v23;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
      *(this + 2) += 2;
      swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(this, v25);
      *(this + 2) -= 2;
      v26 = v23[1];
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
      *(this + 2) += 2;
      swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(this, v26);
      *(this + 2) -= 2;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
      v23 += 2;
    }

    while (v23 != v24);
    v22 = *(this + 2) - 2;
  }

  *(this + 2) = v22;
  v32 = *(a2 + 8);
  for (n = *(a2 + 9); v32 != n; v32 += 2)
  {
    PrintTypeRef::visitTypeRefRequirement(this, v32);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintTypeRef::visitIntegerTypeRef(PrintTypeRef *this, const swift::reflection::IntegerTypeRef *a2)
{
  v11 = 7;
  strcpy(__p, "integer");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 7);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = 5;
  strcpy(v8, "value");
  std::to_string(&v7, *(a2 + 2));
  PrintMetadataSource::printField(this, v8, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
    }

LABEL_9:
    operator delete(v8[0]);
    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
  }

  if (v9 < 0)
  {
    goto LABEL_9;
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintTypeRef::visitPackTypeRef(PrintTypeRef *this, const swift::reflection::PackTypeRef *a2)
{
  v11 = 4;
  strcpy(__p, "pack");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(a2 + 2);
  for (j = *(a2 + 3); v6 != j; *(this + 2) -= 2)
  {
    v8 = *v6++;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
    *(this + 2) += 2;
    swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(this, v8);
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintTypeRef::visitPackExpansionTypeRef(PrintTypeRef *this, const swift::reflection::PackExpansionTypeRef *a2)
{
  v18 = 14;
  strcpy(__p, "pack_expansion");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 14);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 2) += 2;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
  v16 = 7;
  strcpy(v15, "pattern");
  for (j = *(this + 2); j; --j)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, v15, 7);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  v8 = *(a2 + 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
  *(this + 2) += 2;
  swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(this, v8);
  *(this + 2) -= 2;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
  v14 = 5;
  strcpy(v13, "count");
  for (k = *(this + 2); k; --k)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v13, 5);
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v11 = *(a2 + 3);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
  *(this + 2) += 2;
  swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(this, v11);
  *(this + 2) -= 2;
  result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
  *(this + 2) -= 2;
  return result;
}

void *PrintTypeRef::visitTypeRefRequirement(void **a1, uint64_t *a2)
{
  v18 = 12;
  strcpy(__p, "requirement ");
  for (i = *(a1 + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 12);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *a2;
  v7 = *a2 & 7;
  if ((*a2 & 7u) > 2)
  {
    if (v7 == 3)
    {
      v12 = *a1;
      v13 = "layout requirement";
      v14 = 18;
    }

    else
    {
      if (v7 != 4)
      {
        return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, ")", 1);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, "\n", 1);
      *(a1 + 2) += 2;
      swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(a1, v6 & 0xFFFFFFFFFFFFFFF8);
      *(a1 + 2) -= 2;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, ".shape == ", 10);
      v11 = a2[1];
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, "\n", 1);
      *(a1 + 2) += 2;
      swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(a1, v11);
      *(a1 + 2) -= 2;
      v12 = *a1;
      v13 = ".shape";
      v14 = 6;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, v13, v14);
    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, ")", 1);
  }

  if (v7 < 2)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, "\n", 1);
    *(a1 + 2) += 2;
    swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(a1, v6 & 0xFFFFFFFFFFFFFFF8);
    *(a1 + 2) -= 2;
    v8 = *a1;
    v9 = " : ";
    v10 = 3;
LABEL_13:
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, v9, v10);
    v15 = a2[1];
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, "\n", 1);
    *(a1 + 2) += 2;
    swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(a1, v15);
    *(a1 + 2) -= 2;
    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, ")", 1);
  }

  if (v7 == 2)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, "\n", 1);
    *(a1 + 2) += 2;
    swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(a1, v6 & 0xFFFFFFFFFFFFFFF8);
    *(a1 + 2) -= 2;
    v8 = *a1;
    v9 = " == ";
    v10 = 4;
    goto LABEL_13;
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*a1, ")", 1);
}

uint64_t TypeRefSubstitution::visitBoundGenericTypeRef(TypeRefSubstitution *this, const swift::reflection::BoundGenericTypeRef *a2)
{
  if (*(a2 + 5))
  {
    v4 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(this);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 6);
  v6 = *(a2 + 7);
  if (v5 != v6)
  {
    v7 = *v5;
    swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(this);
    operator new();
  }

  v8 = *this;
  v12 = 0;
  v13 = 0;
  __p = 0;
  v9 = swift::reflection::BoundGenericTypeRef::create<swift::reflection::TypeRefBuilder>(v8, a2 + 16, &__p, v4);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

const swift::reflection::TupleTypeRef *TypeRefSubstitution::visitTupleTypeRef(TypeRefSubstitution *this, const swift::reflection::TupleTypeRef *a2)
{
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v3 = *(a2 + 5);
  v4 = *(a2 + 6);
  if (v3 == v4)
  {
    v33 = 0;
    v32 = 0;
  }

  else
  {
    v5 = a2;
    v6 = *(a2 + 2);
    do
    {
      v51[0] = v3;
      v51[1] = v6;
      v7 = *v6;
      if (*v6)
      {
        v8 = *(*v6 + 8) == 24;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        v50[0] = &v55;
        v50[1] = v51;
        v50[2] = &v52;
        if ((TypeRefSubstitution::expandPackExpansion<TypeRefSubstitution::visitTupleTypeRef(swift::reflection::TupleTypeRef const*)::{lambda(swift::reflection::TypeRef const*)#1}>(this, v7, v50) & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v9 = v56;
        if (v56 >= v57)
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 3) + 1;
          if (v12 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_78;
          }

          if (0x5555555555555556 * ((v57 - v55) >> 3) > v12)
          {
            v12 = 0x5555555555555556 * ((v57 - v55) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v57 - v55) >> 3) >= 0x555555555555555)
          {
            v13 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v13 = v12;
          }

          if (v13)
          {
            if (v13 <= 0xAAAAAAAAAAAAAAALL)
            {
              v14 = *v6;
              operator new();
            }

LABEL_77:
            std::string::__throw_length_error[abi:nn200100]();
          }

          v16 = *v6;
          v17 = (8 * ((v56 - v55) >> 3));
          if (*(v3 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(v17, *v3, *(v3 + 1));
          }

          else
          {
            v18 = *v3;
            *&dword_10[2 * ((v56 - v55) >> 3)] = *(v3 + 2);
            *&v17->__r_.__value_.__l.__data_ = v18;
          }

          v11 = v17 + 1;
          v19 = v55;
          v20 = (v17 - (v56 - v55));
          memcpy(v20, v55, v56 - v55);
          v55 = v20;
          v56 = v11;
          v57 = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          if (*(v3 + 23) < 0)
          {
            v15 = *v6;
            std::string::__init_copy_ctor_external(v56, *v3, *(v3 + 1));
          }

          else
          {
            v10 = *v3;
            v56->__r_.__value_.__r.__words[2] = *(v3 + 2);
            *&v9->__r_.__value_.__l.__data_ = v10;
          }

          v11 = v9 + 1;
        }

        v56 = v11;
        v21 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(this);
        v22 = v53;
        if (v53 >= v54)
        {
          v24 = v52;
          v25 = v53 - v52;
          v26 = (v53 - v52) >> 3;
          v27 = v26 + 1;
          if ((v26 + 1) >> 61)
          {
            goto LABEL_79;
          }

          v28 = v54 - v52;
          if ((v54 - v52) >> 2 > v27)
          {
            v27 = v28 >> 2;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF8)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            if (!(v29 >> 61))
            {
              operator new();
            }

            goto LABEL_77;
          }

          v30 = (8 * v26);
          v31 = &v30[-((v53 - v52) >> 3)];
          *v30 = v21;
          v23 = (v30 + 1);
          memcpy(v31, v24, v25);
          v52 = v31;
          v53 = v23;
          v54 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v53 = v21;
          v23 = v22 + 8;
        }

        v53 = v23;
      }

      v3 = (v3 + 24);
      ++v6;
    }

    while (v4 != v3);
    v33 = v52;
    v32 = v53;
  }

  if (v32 - v33 == 8)
  {
    if ((SHIBYTE(v55->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (!v55->__r_.__value_.__l.__size_)
      {
        goto LABEL_49;
      }
    }

    else if (!*(&v55->__r_.__value_.__s + 23))
    {
LABEL_49:
      v5 = *v33;
      if (*(*v33 + 2) != 24)
      {
        goto LABEL_66;
      }
    }
  }

  v34 = *this;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  if (v32 != v33)
  {
    if (((v32 - v33) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_79:
    std::string::__throw_length_error[abi:nn200100]();
  }

  __p = 0;
  v45 = 0;
  v46 = 0;
  if (v56 != v55)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

LABEL_78:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = swift::reflection::TupleTypeRef::create<swift::reflection::TypeRefBuilder>(v34, &v47, &__p);
  v35 = __p;
  if (__p)
  {
    v36 = v45;
    v37 = __p;
    if (v45 != __p)
    {
      do
      {
        v38 = *(v36 - 1);
        v36 -= 3;
        if (v38 < 0)
        {
          operator delete(*v36);
        }
      }

      while (v36 != v35);
      v37 = __p;
    }

    v45 = v35;
    operator delete(v37);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

LABEL_66:
  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  v39 = v55;
  if (v55)
  {
    v40 = v56;
    v41 = v55;
    if (v56 != v55)
    {
      do
      {
        v42 = SHIBYTE(v40[-1].__r_.__value_.__r.__words[2]);
        --v40;
        if (v42 < 0)
        {
          operator delete(v40->__r_.__value_.__l.__data_);
        }
      }

      while (v40 != v39);
      v41 = v55;
    }

    v56 = v39;
    operator delete(v41);
  }

  return v5;
}

const swift::reflection::FunctionTypeRef *TypeRefSubstitution::visitFunctionTypeRef(TypeRefSubstitution *this, __int128 **a2)
{
  v2 = a2;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v4 = a2[2];
  for (i = a2[3]; v4 != i; v4 += 2)
  {
    v8 = *(v4 + 2);
    if (v8)
    {
      v9 = *(v8 + 8) == 24;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      *&v21 = &v24;
      *(&v21 + 1) = v4;
      v22 = this;
      if ((TypeRefSubstitution::expandPackExpansion<TypeRefSubstitution::visitFunctionTypeRef(swift::reflection::FunctionTypeRef const*)::{lambda(swift::reflection::TypeRef const*)#1}>(this, v8, &v21) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v6 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(this);
      v7 = *(v4 + 6);
      v21 = *v4;
      v22 = v6;
      v23 = v7;
      std::vector<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>>::push_back[abi:nn200100](&v24, &v21);
    }
  }

  v10 = *(v2 + 5);
  v11 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(this);
  v12 = *(v2 + 6);
  v13 = *(v2 + 14);
  if (!*(v2 + 9))
  {
    v14 = 0;
    if (*(v2 + 10))
    {
      goto LABEL_13;
    }

LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  v14 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(this);
  if (!*(v2 + 10))
  {
    goto LABEL_15;
  }

LABEL_13:
  v15 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(this);
LABEL_16:
  v16 = *this;
  v19 = 0;
  v20 = 0;
  __p = 0;
  if (v25 != v24)
  {
    if (((v25 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v2 = swift::reflection::FunctionTypeRef::create<swift::reflection::TypeRefBuilder>(v16, &__p, v11, v12, v13, *(v2 + 8), v14, v15);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

LABEL_21:
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  return v2;
}

uint64_t TypeRefSubstitution::visitConstrainedExistentialTypeRef(TypeRefSubstitution *this, const swift::reflection::ConstrainedExistentialTypeRef *a2)
{
  v3 = *(a2 + 3);
  v4 = *(a2 + 4);
  if (v3 == v4)
  {
    v6 = *this;
    v7 = *(a2 + 2);
    v12 = 0;
    v13 = 0;
    __p = 0;
  }

  else
  {
    do
    {
      v5 = *v3;
      if (swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(this) && ((v5 & 7) == 3 || swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(this)))
      {
        operator new();
      }

      v3 += 2;
    }

    while (v3 != v4);
    v6 = *this;
    v7 = *(a2 + 2);
    v12 = 0;
    v13 = 0;
    __p = 0;
  }

  v8 = swift::reflection::ConstrainedExistentialTypeRef::create<swift::reflection::TypeRefBuilder>(v6, v7, &__p);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

uint64_t TypeRefSubstitution::visitDependentMemberTypeRef(swift::reflection::TypeRefBuilder **this, const swift::reflection::DependentMemberTypeRef *a2)
{
  v4 = *(a2 + 5);
  v5 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(this);
  do
  {
    v6 = v5;
    if (v5 && (*(v5 + 2) - 3) >= 0xFFFFFFFE)
    {
      v7 = *(a2 + 71);
      v8 = v7 >= 0 ? (a2 + 48) : *(a2 + 6);
      v9 = v7 >= 0 ? *(a2 + 71) : *(a2 + 7);
      v5 = swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::lookupTypeWitness(*this + 236, v5 + 16, a2 + 16, v8, v9);
      if (v5)
      {
        break;
      }
    }

    v5 = swift::reflection::TypeRefBuilder::lookupSuperclass(*this, v6);
  }

  while (v5);
  if ((*(a2 + 71) & 0x80000000) == 0)
  {
    v28 = *(a2 + 2);
    v29 = 0;
    if (v5)
    {
      goto LABEL_14;
    }

LABEL_18:
    v15 = *this;
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
      v26 = v29;
      v16 = 1;
      v27 = 1;
      if (v29)
      {
        v13 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v25 = v28;
      v26 = 0;
      v27 = 1;
    }

    v13 = swift::reflection::DependentMemberTypeRef::create<swift::reflection::TypeRefBuilder>(v15, a2 + 16, v6, &v25);
    v16 = v27;
LABEL_25:
    if ((v16 & 1) == 0 || (SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v17 = v25.__r_.__value_.__r.__words[0];
LABEL_34:
    operator delete(v17);
    goto LABEL_35;
  }

  v14 = v5;
  std::string::__init_copy_ctor_external(&v28, *(a2 + 6), *(a2 + 7));
  v5 = v14;
  v29 = 0;
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_14:
  v10 = v5;
  swift::reflection::TypeRef::getSubstMap(v6, v22);
  v11 = *this;
  if (v24)
  {
    v12 = swift::reflection::TypeRef::subst(v10, *this, v22);
    v30 = *this;
    v13 = swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(&v30, v12);
    if (v24)
    {
      __swift::__runtime::llvm::deallocate_buffer(v22[0], (16 * v23), 8uLL);
    }

    goto LABEL_35;
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v28;
  }

  v20 = v29;
  v21 = 1;
  if (v29)
  {
    v13 = 0;
  }

  else
  {
    v13 = swift::reflection::DependentMemberTypeRef::create<swift::reflection::TypeRefBuilder>(v11, a2 + 16, v6, &__p);
    if ((v21 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v17 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_34;
  }

LABEL_35:
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  return v13;
}

uint64_t TypeRefSubstitution::visitOpaqueArchetypeTypeRef(TypeRefSubstitution *this, const swift::reflection::OpaqueArchetypeTypeRef *a2)
{
  v2 = *(a2 + 12);
  for (i = *(a2 + 13); v2 != i; v2 += 2)
  {
    if (v2[1])
    {
      v4 = **v2;
      swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(this);
      operator new();
    }
  }

  v5 = *(a2 + 39);
  if (v5 >= 0)
  {
    v6 = a2 + 16;
  }

  else
  {
    v6 = *(a2 + 2);
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 39);
  }

  else
  {
    v7 = *(a2 + 3);
  }

  v8 = *(a2 + 63);
  if (v8 >= 0)
  {
    v9 = a2 + 40;
  }

  else
  {
    v9 = *(a2 + 5);
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 63);
  }

  else
  {
    v10 = *(a2 + 6);
  }

  return swift::reflection::OpaqueArchetypeTypeRef::create<swift::reflection::TypeRefBuilder>(*this, v6, v7, v9, v10, *(a2 + 16), 0, 0);
}

const swift::reflection::PackTypeRef *TypeRefSubstitution::visitPackTypeRef(TypeRefSubstitution *this, const swift::reflection::PackTypeRef *a2)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (v3 == v4)
  {
    v16 = *this;
    v19 = 0;
    v20 = 0;
    __p = 0;
  }

  else
  {
    v5 = a2;
    do
    {
      if (*v3)
      {
        v6 = *(*v3 + 8) == 24;
      }

      else
      {
        v6 = 0;
      }

      if (v6)
      {
        if ((TypeRefSubstitution::expandPackExpansion<TypeRefSubstitution::visitPackTypeRef(swift::reflection::PackTypeRef const*)::{lambda(swift::reflection::TypeRef const*)#1}>(this, *v3, &v21) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v7 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(this);
        v8 = v22;
        if (v22 >= v23)
        {
          v10 = v21;
          v11 = v22 - v21;
          v12 = (v22 - v21) >> 3;
          v13 = v12 + 1;
          if ((v12 + 1) >> 61)
          {
            goto LABEL_32;
          }

          v14 = v23 - v21;
          if ((v23 - v21) >> 2 > v13)
          {
            v13 = v14 >> 2;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            if (!(v15 >> 61))
            {
              operator new();
            }

            std::string::__throw_length_error[abi:nn200100]();
          }

          *(8 * v12) = v7;
          v9 = 8 * v12 + 8;
          memcpy(0, v10, v11);
          v21 = 0;
          v22 = v9;
          v23 = 0;
          if (v10)
          {
            operator delete(v10);
          }
        }

        else
        {
          *v22 = v7;
          v9 = (v8 + 8);
        }

        v22 = v9;
      }

      ++v3;
    }

    while (v3 != v4);
    v16 = *this;
    v19 = 0;
    v20 = 0;
    __p = 0;
    if (v22 != v21)
    {
      if (((v22 - v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_32:
      std::string::__throw_length_error[abi:nn200100]();
    }
  }

  v5 = swift::reflection::PackTypeRef::create<swift::reflection::TypeRefBuilder>(v16, &__p);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

LABEL_29:
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return v5;
}

uint64_t TypeRefSubstitution::expandPackExpansion<TypeRefSubstitution::visitTupleTypeRef(swift::reflection::TupleTypeRef const*)::{lambda(swift::reflection::TypeRef const*)#1}>(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift::reflection::TypeRef::subst(*(a2 + 24), *a1, a1 + 1);
  if (v6)
  {
    v7 = *(v6 + 8) == 23;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 0;
  }

  v9 = v6;
  v19 = 0;
  std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 4), &v19);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v10 != v11)
  {
    while (*(*v10 + 8) != 24)
    {
      v14 = *(a2 + 16);
      v20 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(a1);
      v15 = *a3;
      v16 = *a3[1];
      v17 = *(*a3 + 8);
      if (v17 >= *(*a3 + 16))
      {
        v13 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(*a3, v16);
      }

      else
      {
        if (*(v16 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(*(*a3 + 8), *v16, *(v16 + 8));
        }

        else
        {
          v18 = *v16;
          *(v17 + 16) = *(v16 + 16);
          *v17 = v18;
        }

        v13 = (v17 + 24);
      }

      *(v15 + 8) = v13;
      std::vector<swift::reflection::TypeRef const*>::push_back[abi:nn200100](a3[2], &v20);
      v12 = a1[5];
      ++*(v12 - 4);
      v10 += 8;
      if (v10 == v11)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  v12 = a1[5];
LABEL_8:
  a1[5] = v12 - 4;
  return 1;
}

std::string *std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 8));
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  v6 = v5 + 1;
  v7 = *a1;
  v8 = *(a1 + 8) - *a1;
  v9 = v5 - v8;
  memcpy(v9, *a1, v8);
  *a1 = v9;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

uint64_t TypeRefSubstitution::expandPackExpansion<TypeRefSubstitution::visitFunctionTypeRef(swift::reflection::FunctionTypeRef const*)::{lambda(swift::reflection::TypeRef const*)#1}>(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift::reflection::TypeRef::subst(*(a2 + 24), *a1, a1 + 1);
  if (v6)
  {
    v7 = *(v6 + 8) == 23;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 0;
  }

  v9 = v6;
  LODWORD(v18) = 0;
  std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 4), &v18);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v10 != v11)
  {
    while (*(*v10 + 8) != 24)
    {
      v12 = *(a2 + 16);
      swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(a1);
      v13 = a3[1];
      v14 = *a3;
      v15 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(a3[2]);
      v16 = *(v13 + 24);
      v18 = *v13;
      v19 = v15;
      v20 = v16;
      std::vector<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>>::push_back[abi:nn200100](v14, &v18);
      v17 = a1[5];
      ++*(v17 - 4);
      v10 += 8;
      if (v10 == v11)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

  v17 = a1[5];
LABEL_11:
  a1[5] = v17 - 4;
  return 1;
}

uint64_t swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(ThickenMetatype *a1, uint64_t a2)
{
  if (!a2)
  {
    return a2;
  }

  switch(*(a2 + 8))
  {
    case 0:
    case 1:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x14:
    case 0x15:
      return a2;
    case 2:

      result = ThickenMetatype::visitBoundGenericTypeRef(a1, a2);
      break;
    case 3:

      result = ThickenMetatype::visitTupleTypeRef(a1, a2);
      break;
    case 4:

      result = ThickenMetatype::visitFunctionTypeRef(a1, a2);
      break;
    case 6:
      v17 = *a1;
      v22 = 0;
      v23 = 0;
      __p = 0;
      v18 = *(a2 + 24);
      v19 = *(a2 + 32);
      if (v19 != v18)
      {
        if (((v19 - v18) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      a2 = swift::reflection::ConstrainedExistentialTypeRef::create<swift::reflection::TypeRefBuilder>(v17, *(a2 + 16), &__p);
      if (__p)
      {
        v22 = __p;
        v20 = a2;
        operator delete(__p);
        return v20;
      }

      return a2;
    case 7:
      v8 = *a1;
      v9 = swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(a1, *(a2 + 16));

      result = swift::reflection::MetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(v8, v9, 1);
      break;
    case 0x13:
      v10 = *a1;
      v11 = swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(a1, *(a2 + 16));

      result = swift::reflection::SILBoxTypeRef::create<swift::reflection::TypeRefBuilder>(v10, v11);
      break;
    case 0x16:
      v12 = *a1;
      v14 = a2;
      v15 = swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(a1, *(a2 + 16));
      v16 = swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(a1, *(v14 + 24));

      result = swift::reflection::BuiltinFixedArrayTypeRef::create<swift::reflection::TypeRefBuilder>(v12, v15, v16);
      break;
    case 0x17:

      result = ThickenMetatype::visitPackTypeRef(a1, a2);
      break;
    case 0x18:
      v4 = a2;
      v5 = swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(a1, *(a2 + 16));
      v6 = swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(a1, *(v4 + 24));
      v7 = *a1;

      result = swift::reflection::PackExpansionTypeRef::create<swift::reflection::TypeRefBuilder>(v7, v5, v6);
      break;
    default:
      return 0;
  }

  return result;
}

uint64_t ThickenMetatype::visitBoundGenericTypeRef(ThickenMetatype *this, const swift::reflection::BoundGenericTypeRef *a2)
{
  v3 = *(a2 + 6);
  v4 = *(a2 + 7);
  if (v3 != v4)
  {
    swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(this, *v3);
    operator new();
  }

  v5 = *(a2 + 5);
  if (v5)
  {
    v14 = *this;
    v6 = swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(&v14, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *this;
  v12 = 0;
  v13 = 0;
  __p = 0;
  v8 = swift::reflection::BoundGenericTypeRef::create<swift::reflection::TypeRefBuilder>(v7, a2 + 16, &__p, v6);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

uint64_t ThickenMetatype::visitTupleTypeRef(ThickenMetatype *this, const swift::reflection::TupleTypeRef *a2)
{
  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(this, *v2);
    operator new();
  }

  v3 = *(a2 + 5);
  v4 = *(a2 + 6);
  if (v4 != v3)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = *this;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  __p = 0;
  v13 = 0;
  v14 = 0;
  v6 = swift::reflection::TupleTypeRef::create<swift::reflection::TypeRefBuilder>(v5, &v15, &__p);
  v7 = __p;
  if (__p)
  {
    v8 = v13;
    v9 = __p;
    if (v13 != __p)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v13 = v7;
    operator delete(v9);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  return v6;
}

uint64_t ThickenMetatype::visitFunctionTypeRef(ThickenMetatype *this, const swift::reflection::FunctionTypeRef *a2)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  while (v4 != v5)
  {
    v6 = swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(this, *(v4 + 2));
    v7 = *(v4 + 6);
    v8 = *v4;
    v4 += 2;
    v21 = v8;
    v22 = v6;
    v23 = v7;
    std::vector<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>>::push_back[abi:nn200100](&v24, &v21);
  }

  v9 = *(a2 + 9);
  if (v9)
  {
    v10 = swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(this, v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a2 + 14);
  v12 = *(a2 + 10);
  if (v12)
  {
    v13 = swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(this, v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(this, *(a2 + 5));
  v15 = *this;
  v19 = 0;
  v20 = 0;
  __p = 0;
  if (v25 != v24)
  {
    if (((v25 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v16 = swift::reflection::FunctionTypeRef::create<swift::reflection::TypeRefBuilder>(v15, &__p, v14, *(a2 + 6), v11, *(a2 + 8), v10, v13);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  return v16;
}

uint64_t ThickenMetatype::visitPackTypeRef(ThickenMetatype *this, const swift::reflection::PackTypeRef *a2)
{
  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(this, *v2);
    operator new();
  }

  v3 = *this;
  v7 = 0;
  v8 = 0;
  __p = 0;
  v4 = swift::reflection::PackTypeRef::create<swift::reflection::TypeRefBuilder>(v3, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return v4;
}

uint64_t TypeRefSubstitution::expandPackExpansion<TypeRefSubstitution::visitPackTypeRef(swift::reflection::PackTypeRef const*)::{lambda(swift::reflection::TypeRef const*)#1}>(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift::reflection::TypeRef::subst(*(a2 + 24), *a1, a1 + 1);
  if (v6)
  {
    v7 = *(v6 + 8) == 23;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 0;
  }

  v9 = v6;
  v14 = 0;
  std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 4), &v14);
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  if (v11 != v10)
  {
    while (*(*v11 + 8) != 24)
    {
      v12 = *(a2 + 16);
      v15 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(a1);
      std::vector<swift::reflection::TypeRef const*>::push_back[abi:nn200100](a3, &v15);
      v13 = a1[5];
      ++*(v13 - 4);
      v11 += 8;
      if (v11 == v10)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

  v13 = a1[5];
LABEL_11:
  a1[5] = v13 - 4;
  return 1;
}

_DWORD *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::FindAndConstruct(uint64_t *a1, _DWORD *a2)
{
  v7 = 0;
  v4 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<unsigned int,unsigned int>>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<unsigned int,unsigned int>>(a1, a2, a2, v7);
    *v5 = *a2;
    *(v5 + 1) = 0;
  }

  return v5;
}

uint64_t swift::reflection::TypeRefBuilder::decodeMangledType(swift::reflection::TypeRefBuilder *this, swift::Demangle::__runtime::Node *a2, uint64_t a3)
{
  v6 = this;
  swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(v4, &v6, a2, 0, a3);
  if (v5 == 1)
  {
    (v4[1])(v4[0], 3, 0);
  }

  else if (!v5)
  {
    return v4[0];
  }

  return 0;
}

uint64_t swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findReflectionInfoWithTypeRefContainingAddress(void *a1, unint64_t a2, unsigned __int8 a3)
{
  v7 = a1[4];
  v8 = a1[5];
  v9 = (a1 + 4);
  v10 = v8 - v7;
  v11 = 0x8E38E38E38E38E39 * ((*(v9 - 16) - *(v9 - 24)) >> 5);
  if (v10 != v11)
  {
    if (v10 < v11)
    {
      do
      {
        v28 = v10;
        std::vector<unsigned int>::push_back[abi:nn200100](v9, &v28);
        ++v10;
      }

      while (v10 < 0x8E38E38E38E38E39 * ((a1[2] - a1[1]) >> 5));
      v7 = a1[4];
      v8 = a1[5];
      v10 = v8 - v7;
    }

    v29 = a1;
    v12 = 126 - 2 * __clz(v10);
    if (v8 == v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    std::__introsort<std::_ClassicAlgPolicy,swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findReflectionInfoWithTypeRefContainingAddress(swift::remote::RemoteAddress)::$_0 &,unsigned int *,false>(v7, v8, &v29, v13, 1);
    v7 = a1[4];
    v8 = a1[5];
  }

  if (v8 == v7)
  {
    return 0;
  }

  v14 = v8 - v7;
  do
  {
    v15 = v14 >> 1;
    v16 = &v7[v14 >> 1];
    v18 = *v16;
    v17 = v16 + 1;
    v19 = a1[1] + 288 * v18;
    v20 = *(v19 + 128) + *(v19 + 152);
    LODWORD(v19) = *(v19 + 136);
    v21 = v20 <= a2;
    v22 = a3 == v19;
    v23 = a3 >= v19;
    if (v22)
    {
      v23 = v21;
    }

    v14 += ~v15;
    if (v23)
    {
      v7 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v7 == v8)
  {
    return 0;
  }

  v24 = a1[1] + 288 * *v7;
  v25 = *(v24 + 128);
  if (*(v24 + 136) != a3 || v25 > a2)
  {
    return 0;
  }

  if (a2 + 1 > *(v24 + 152) + v25)
  {
    return 0;
  }

  return a1[1] + 288 * *v7;
}

uint64_t swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef@<X0>(void *a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2;
  result = swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findReflectionInfoWithTypeRefContainingAddress(a1, a2, a3);
  if ((v9 & 1) == 0)
  {
    v18 = a1[1];
    v19 = a1[2];
    if (v18 != v19)
    {
      while (1)
      {
        v20 = *(v18 + 160);
        if (*(v18 + 168) == a3 && v5 >= v20)
        {
          v13 = *(v18 + 184) + v20;
          if (v5 + 1 <= v13)
          {
            break;
          }
        }

        v18 += 288;
        if (v18 == v19)
        {
          goto LABEL_24;
        }
      }

      v12 = (v5 - v20 + *(v18 + 176));
      if (v5 < v13)
      {
        goto LABEL_6;
      }
    }

LABEL_24:
    v12 = 0;
    *a4 = 0;
    *(a4 + 8) = 0;
    goto LABEL_25;
  }

  v10 = *(result + 128);
  if (*(result + 136) == a3)
  {
    v11 = v5 - v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = (v11 + *(result + 144));
  v13 = *(result + 152) + v10;
  if (v5 >= v13)
  {
    goto LABEL_24;
  }

LABEL_6:
  v14 = v12;
  v15 = v5;
  while (1)
  {
    v16 = *v14;
    if (!*v14)
    {
      break;
    }

    if (v16 <= 0x17)
    {
      v15 += 5;
      v14 += 5;
    }

    else if ((v16 & 0xF8) == 0x18)
    {
      v17 = (*(a1[40] + 2224) + 1);
      v15 += v17;
      v14 += v17;
    }

    else
    {
      ++v15;
      ++v14;
    }

    if (v15 >= v13)
    {
      goto LABEL_24;
    }
  }

  if (*v12 == 36 && v12[1] == 115)
  {
    v5 += 2;
    v12 += 2;
  }

  *a4 = v5;
  *(a4 + 8) = a3;
LABEL_25:
  *(a4 + 16) = v12;
  return result;
}

void swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::normalizeReflectionName(void *a1@<X0>, void *a2@<X1>, std::string *a3@<X8>)
{
  v6 = a2[1];
  *&v38 = *a2;
  BYTE8(v38) = v6;
  v7 = __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(&v38, &v38 + 8);
  v8 = a1[22];
  if (!*&v8)
  {
    goto LABEL_20;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v7;
  }

  v11 = *(a1[21] + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    v35 = a1[40];
    swift::Demangle::__runtime::NodeFactory::pushCheckpoint(v35, &v36);
    v15 = a1[40];
    v33 = *a2;
    *__p = a2[2];
    LOBYTE(v30) = 0;
    v16 = *(v15 + 2256);
    if (v16)
    {
      v17 = (*(*v16 + 48))(v16, &v33, &v30);
      if (v17)
      {
        v19 = *(v17 + 16);
        if (v19 == 191 || v19 == 315 || v19 == 244)
        {
          v33 = v38;
          __p[0] = 0;
          __p[24] = 0;
          std::__hash_table<std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::__unordered_map_hasher<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::hash<swift::remote::RemoteAddress>,std::equal_to<swift::remote::RemoteAddress>,true>,std::__unordered_map_equal<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::equal_to<swift::remote::RemoteAddress>,std::hash<swift::remote::RemoteAddress>,true>,std::allocator<std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>>>::__emplace_unique_key_args<swift::remote::RemoteAddress,std::pair<swift::remote::RemoteAddress,std::optional<std::string>>>(a1 + 21, &v33);
          if (__p[24] == 1 && (__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          a3->__r_.__value_.__s.__data_[0] = 0;
          a3[1].__r_.__value_.__s.__data_[0] = 0;
          goto LABEL_65;
        }

        swift::Demangle::__runtime::mangleNode();
        if (v33)
        {
          v30 = v38;
          v31.__r_.__value_.__s.__data_[0] = 0;
          v32 = 0;
          std::__hash_table<std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::__unordered_map_hasher<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::hash<swift::remote::RemoteAddress>,std::equal_to<swift::remote::RemoteAddress>,true>,std::__unordered_map_equal<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::equal_to<swift::remote::RemoteAddress>,std::hash<swift::remote::RemoteAddress>,true>,std::allocator<std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>>>::__emplace_unique_key_args<swift::remote::RemoteAddress,std::pair<swift::remote::RemoteAddress,std::optional<std::string>>>(a1 + 21, &v30);
          if (v32 == 1 && SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }

          v25 = 0;
          a3->__r_.__value_.__s.__data_[0] = 0;
        }

        else
        {
          v30 = v38;
          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v31, *&__p[8], *&__p[16]);
          }

          else
          {
            v31 = *&__p[8];
          }

          std::__hash_table<std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::__unordered_map_hasher<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::hash<swift::remote::RemoteAddress>,std::equal_to<swift::remote::RemoteAddress>,true>,std::__unordered_map_equal<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::equal_to<swift::remote::RemoteAddress>,std::hash<swift::remote::RemoteAddress>,true>,std::allocator<std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>>>::__emplace_unique_key_args<swift::remote::RemoteAddress,std::pair<swift::remote::RemoteAddress,std::string>>(a1 + 21, &v30);
          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }

          if ((__p[31] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(a3, *&__p[8], *&__p[16]);
          }

          else
          {
            *&a3->__r_.__value_.__l.__data_ = *&__p[8];
            a3->__r_.__value_.__r.__words[2] = *&__p[24];
          }

          v25 = 1;
        }

        a3[1].__r_.__value_.__s.__data_[0] = v25;
        if ((__p[31] & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        v28 = *&__p[8];
        goto LABEL_64;
      }

      SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(a2[2], v18);
      if (!SymbolicMangledNameStringRef)
      {
        v30 = 0uLL;
        v31.__r_.__value_.__r.__words[0] = 0;
        v33 = v38;
        goto LABEL_43;
      }

      v24 = v23;
      if (v23 < 0x7FFFFFFFFFFFFFF8)
      {
        if (v23 >= 0x17)
        {
          operator new();
        }

        v31.__r_.__value_.__s.__data_[7] = v23;
        if (v23)
        {
          memmove(&v30, SymbolicMangledNameStringRef, v23);
        }

        *(&v30 + v24) = 0;
        v33 = v38;
        if (v31.__r_.__value_.__s.__data_[7] < 0)
        {
          std::string::__init_copy_ctor_external(__p, v30, *(&v30 + 1));
          v26 = 1;
LABEL_45:
          std::__hash_table<std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::__unordered_map_hasher<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::hash<swift::remote::RemoteAddress>,std::equal_to<swift::remote::RemoteAddress>,true>,std::__unordered_map_equal<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::equal_to<swift::remote::RemoteAddress>,std::hash<swift::remote::RemoteAddress>,true>,std::allocator<std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>>>::__emplace_unique_key_args<swift::remote::RemoteAddress,std::pair<swift::remote::RemoteAddress,std::string>>(a1 + 21, &v33);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
            if (v26)
            {
              goto LABEL_47;
            }
          }

          else if (v26)
          {
LABEL_47:
            v27 = v30;
            std::string::__init_copy_ctor_external(a3, v30, *(&v30 + 1));
            a3[1].__r_.__value_.__s.__data_[0] = 1;
            v28 = v27;
LABEL_64:
            operator delete(v28);
            goto LABEL_65;
          }

          *&a3->__r_.__value_.__l.__data_ = v30;
          a3->__r_.__value_.__r.__words[2] = v31.__r_.__value_.__r.__words[0];
          a3[1].__r_.__value_.__s.__data_[0] = 1;
LABEL_65:
          v33 = v36;
          *__p = v37;
          swift::Demangle::__runtime::NodeFactory::popCheckpoint(v35, &v33, v20, v21);
          return;
        }

LABEL_43:
        v26 = 0;
        *__p = v30;
        *&__p[16] = v31.__r_.__value_.__r.__words[0];
        goto LABEL_45;
      }
    }

    else
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  while (1)
  {
    v14 = v12[1];
    if (v14 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v10)
    {
      goto LABEL_20;
    }

LABEL_13:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (v12[2] != v38 || *(v12 + 24) != BYTE8(v38))
  {
    goto LABEL_13;
  }

  a3->__r_.__value_.__s.__data_[0] = 0;
  a3[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(v12 + 56) == 1)
  {
    if (*(v12 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(a3, v12[4], v12[5]);
    }

    else
    {
      v29 = *(v12 + 2);
      a3->__r_.__value_.__r.__words[2] = v12[6];
      *&a3->__r_.__value_.__l.__data_ = v29;
    }

    a3[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

BOOL swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::reflectionNameMatches(void *a1, __int128 *a2, const void *a3, uint64_t a4)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::normalizeReflectionName(a1, &v12, &v14);
  if (v15 != 1)
  {
    return 0;
  }

  v6 = SHIBYTE(v14.__r_.__value_.__r.__words[2]);
  v7 = v14.__r_.__value_.__r.__words[0];
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v14;
  }

  else
  {
    v8 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  if (a4 != size)
  {
    result = 0;
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (size)
  {
    result = memcmp(a3, v8, size) == 0;
    if ((v6 & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

  result = 1;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    v11 = result;
    operator delete(v7);
    return v11;
  }

  return result;
}

void *swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::lookupTypeWitness(void *a1, char *a2, uint64_t a3, void *a4, size_t a5)
{
  v8 = a2;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v10 = a2[23];
  v11 = *(a2 + 1);
  if (v10 < 0)
  {
    a2 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  swift::reflection::TypeRefID::addString(&v103, a2, v12);
  v13 = *(a3 + 23);
  v14 = *a3;
  v15 = *(a3 + 8);
  v90 = a3;
  if (v13 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = v14;
  }

  if (v13 >= 0)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  swift::reflection::TypeRefID::addString(&v103, v16, v17);
  __len = a5;
  __src = a4;
  if (a4)
  {
    if (a5 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_155:
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (a5 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v98) = a5;
    if (a5)
    {
      memmove(&__dst, a4, __len);
      a5 = __len;
    }

    *(&__dst + a5) = 0;
    v20 = HIBYTE(v98);
    v19 = __dst;
    v18 = v97;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    __dst = 0;
    v97 = 0;
    v98 = 0;
  }

  if ((v20 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = v19;
  }

  if ((v20 & 0x80u) == 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v18;
  }

  swift::reflection::TypeRefID::addString(&v103, p_dst, v22);
  if (SHIBYTE(v98) < 0)
  {
    operator delete(__dst);
  }

  v23 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>(a1 + 31, &v103);
  if (v23)
  {
    v24 = v23[5];
    v25 = v103;
    if (v103)
    {
      goto LABEL_151;
    }

    return v24;
  }

  v26 = a1[1];
  v87 = a1[2];
  if (v26 == v87)
  {
    goto LABEL_150;
  }

  qmemcpy(v86, "atedTypeAssociat", sizeof(v86));
  while (2)
  {
    *&v106.__r_.__value_.__l.__data_ = *(v26 + 32);
    v27 = *(v26 + 56);
    v106.__r_.__value_.__r.__words[2] = *(v26 + 48);
    HIBYTE(v92) = 14;
    v91[0] = v86[1];
    *(v91 + 6) = v86[0];
    BYTE6(v91[1]) = 0;
    swift::reflection::ReflectionSectionIteratorBase<swift::reflection::AssociatedTypeIterator,swift::reflection::AssociatedTypeDescriptor>::ReflectionSectionIteratorBase(&__dst, &v106, v27, v91);
    if (SHIBYTE(v92) < 0)
    {
      operator delete(v91[0]);
      if (!v100)
      {
LABEL_130:
        v73 = 1;
        if (v102 < 0)
        {
          goto LABEL_125;
        }

        goto LABEL_126;
      }
    }

    else if (!v100)
    {
      goto LABEL_130;
    }

    v88 = v26;
    while (1)
    {
      v28 = v97;
      v29 = v98;
      v30 = v99;
      v31 = *v99;
      if (v31)
      {
        v32 = v97 + v31;
      }

      else
      {
        v32 = 0;
      }

      if (v31)
      {
        v33 = v98;
      }

      else
      {
        v33 = 0;
      }

      swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(a1, v32, v33, &v94);
      v34 = *(v8 + 23);
      v35 = v8[1];
      if ((v34 & 0x80u) == 0)
      {
        v36 = v8;
      }

      else
      {
        v36 = *v8;
      }

      *v91 = v94;
      v92 = v95;
      swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::normalizeReflectionName(a1, v91, &v106);
      if ((v107 & 1) == 0)
      {
        goto LABEL_39;
      }

      if ((v34 & 0x80u) == 0)
      {
        v37 = v34;
      }

      else
      {
        v37 = v35;
      }

      v38 = SHIBYTE(v106.__r_.__value_.__r.__words[2]);
      size = v106.__r_.__value_.__l.__size_;
      v40 = v106.__r_.__value_.__r.__words[0];
      if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v106;
      }

      else
      {
        v41 = v106.__r_.__value_.__r.__words[0];
      }

      if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v106.__r_.__value_.__r.__words[2]);
      }

      if (v37 == size)
      {
        break;
      }

      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_38;
      }

LABEL_39:
      swift::reflection::ReflectionSectionIteratorBase<swift::reflection::AssociatedTypeIterator,swift::reflection::AssociatedTypeDescriptor>::operator++(&__dst);
      if (!v100)
      {
        v73 = 1;
        goto LABEL_124;
      }
    }

    if (v37)
    {
      v42 = memcmp(v36, v41, v37);
      v43 = v42;
      if (v38 < 0)
      {
        operator delete(v40);
        if (v43)
        {
          goto LABEL_39;
        }
      }

      else if (v42)
      {
        goto LABEL_39;
      }
    }

    else if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    v44 = v30[1];
    if (v44)
    {
      v45 = v28 + v44 + 4;
    }

    else
    {
      v45 = 0;
    }

    if (v44)
    {
      v46 = v29;
    }

    else
    {
      v46 = 0;
    }

    swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(a1, v45, v46, &v94);
    *v91 = v94;
    v92 = v95;
    swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::normalizeReflectionName(a1, v91, &v106);
    if ((v107 & 1) == 0)
    {
      goto LABEL_39;
    }

    v47 = SHIBYTE(v106.__r_.__value_.__r.__words[2]);
    v48 = v106.__r_.__value_.__l.__size_;
    v49 = v106.__r_.__value_.__r.__words[0];
    if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &v106;
    }

    else
    {
      v50 = v106.__r_.__value_.__r.__words[0];
    }

    if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = SHIBYTE(v106.__r_.__value_.__r.__words[2]);
    }

    if (__len != v48)
    {
      if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

LABEL_38:
      operator delete(v106.__r_.__value_.__l.__data_);
      goto LABEL_39;
    }

    if (__len)
    {
      v51 = memcmp(__src, v50, __len);
      v52 = v51;
      if (v47 < 0)
      {
        operator delete(v49);
        if (!v52)
        {
          goto LABEL_88;
        }
      }

      else if (!v51)
      {
        goto LABEL_88;
      }

      goto LABEL_39;
    }

    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

LABEL_88:
    v53 = v30[2];
    if (!v53)
    {
      goto LABEL_39;
    }

    v54 = 8 * v53;
    v55 = v30 + 5;
    v56 = v28 + 20;
    while (1)
    {
      v57 = *(v55 - 1);
      v58 = v57 ? v56 + v57 - 4 : 0;
      v59 = v57 ? v29 : 0;
      swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(a1, v58, v59, &v106);
      SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v106.__r_.__value_.__r.__words[2], v60);
      if (SymbolicMangledNameStringRef)
      {
        v63 = v62;
        if (v62 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_155;
        }

        if (v62 >= 0x17)
        {
          operator new();
        }

        *(&v106.__r_.__value_.__s + 23) = v62;
        if (v62)
        {
          memmove(&v106, SymbolicMangledNameStringRef, v62);
        }

        v106.__r_.__value_.__s.__data_[v63] = 0;
        v66 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
        v64 = v106.__r_.__value_.__l.__size_;
        v65 = v106.__r_.__value_.__r.__words[0];
      }

      else
      {
        v64 = 0;
        v65 = 0;
        v66 = 0;
        memset(&v106, 0, sizeof(v106));
      }

      v67 = *(v90 + 23);
      v68 = v67;
      if ((v67 & 0x80u) != 0)
      {
        v67 = v90[1];
      }

      if (v68 >= 0)
      {
        v69 = v90;
      }

      else
      {
        v69 = *v90;
      }

      if ((v66 & 0x80u) != 0)
      {
        v70 = v65;
      }

      else
      {
        v64 = v66;
        v70 = &v106;
      }

      if (v64 >= v67)
      {
        v71 = v67;
      }

      else
      {
        v71 = v64;
      }

      v72 = v64 == v67;
      if (memcmp(v69, v70, v71))
      {
        v72 = 0;
      }

      if ((v66 & 0x80) != 0)
      {
        operator delete(v65);
      }

      if (v72)
      {
        break;
      }

      v55 += 2;
      v56 += 8;
      v54 -= 8;
      if (!v54)
      {
        goto LABEL_39;
      }
    }

    v106.__r_.__value_.__r.__words[0] = a1[40];
    swift::Demangle::__runtime::NodeFactory::pushCheckpoint(v106.__r_.__value_.__l.__data_, &v106.__r_.__value_.__l.__size_);
    v74 = *v55;
    if (v74)
    {
      v75 = v74 + v56;
    }

    else
    {
      v75 = 0;
    }

    if (v74)
    {
      v76 = v29;
    }

    else
    {
      v76 = 0;
    }

    swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(a1, v75, v76, &v94);
    v77 = a1[40];
    *v91 = v94;
    v92 = v95;
    LOBYTE(v108[0]) = 1;
    v78 = *(v77 + 2256);
    if (!v78)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      goto LABEL_157;
    }

    v79 = (*(*v78 + 48))(v78, v91, v108);
    v108[0] = a1[40];
    swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(v91, v108, v79, 0, 1);
    if (v92 == 1)
    {
      (v91[1])(v91[0], 3, 0);
    }

    else if (!v92)
    {
      v80 = v91[0];
      goto LABEL_144;
    }

    v80 = 0;
LABEL_144:
    v91[0] = 0;
    v91[1] = 0;
    v92 = 0;
    if (v104 != v103)
    {
      if (((v104 - v103) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_157:
      std::string::__throw_length_error[abi:nn200100]();
    }

    v84 = v80;
    v93 = v80;
    std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::TypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::TypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::TypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::TypeRef const*>>>::__emplace_unique_key_args<swift::reflection::TypeRefID,std::pair<swift::reflection::TypeRefID,swift::reflection::TypeRef const*>>(a1 + 31, v91);
    if (v91[0])
    {
      v91[1] = v91[0];
      operator delete(v91[0]);
    }

    *v91 = *&v106.__r_.__value_.__r.__words[1];
    v92 = v107;
    swift::Demangle::__runtime::NodeFactory::popCheckpoint(v106.__r_.__value_.__l.__data_, v91, v81, v82);
    v73 = 0;
LABEL_124:
    v26 = v88;
    if (v102 < 0)
    {
LABEL_125:
      operator delete(__p);
    }

LABEL_126:
    if (v73)
    {
      v26 += 288;
      if (v26 == v87)
      {
LABEL_150:
        v24 = 0;
        v25 = v103;
        if (v103)
        {
          goto LABEL_151;
        }

        return v24;
      }

      continue;
    }

    break;
  }

  v24 = v84;
  v25 = v103;
  if (v103)
  {
LABEL_151:
    v104 = v25;
    operator delete(v25);
  }

  return v24;
}

uint64_t *swift::reflection::ReflectionSectionIteratorBase<swift::reflection::AssociatedTypeIterator,swift::reflection::AssociatedTypeDescriptor>::operator++(uint64_t *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = (*(v2 + 12) * *(v2 + 8)) + 16;
  v5 = v4 + v2;
  a1[1] += v4;
  v6 = v3 - v4;
  a1[3] = v5;
  a1[4] = v3 - v4;
  if (v3 != v4 && (*(v5 + 12) * *(v5 + 8)) + 16 > v6)
  {
    v7 = *a1 - v6;
    v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "!!! Reflection section too small to contain next record\n", 56);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Section Type: ", 14);
    v11 = *(a1 + 63);
    if (v11 >= 0)
    {
      v12 = (a1 + 5);
    }

    else
    {
      v12 = a1[5];
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 63);
    }

    else
    {
      v13 = a1[6];
    }

    v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v12, v13);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Remaining section size: ", 24);
    v16 = a1[4];
    v17 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ", total section size: ", 22);
    v18 = *a1;
    v19 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, ", offset in section: ", 21);
    v20 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, ", size of next record: ", 23);
    v21 = std::ostream::operator<<();
    std::ios_base::getloc((v21 + *(*v21 - 24)));
    v22 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    v23 = a1[3];
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Last bytes of previous record: ", 31);
    if (v7 > 0)
    {
      if (v7 != 8 && -v7 >= 0xFFFFFFF8)
      {
        v24 = -v7;
      }

      else
      {
        v24 = -8;
      }

      v25 = (v23 + v24);
      v26 = v24 + 1;
      do
      {
        v27 = std::cerr.__vftable;
        *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) = *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) & 0xFFFFFFB5 | 8;
        *(&std::cerr + v27[-2].~basic_ostream_0 + 24) = 2;
        v28 = *v25++;
        v29 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, " ", 1);
      }

      while (v26++);
    }

    std::ios_base::getloc((&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0));
    v31 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v31->__vftable[2].~facet_0)(v31, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Next bytes in section: ", 23);
    if (a1[4])
    {
      v32 = 0;
      do
      {
        v33 = std::cerr.__vftable;
        *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) = *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) & 0xFFFFFFB5 | 8;
        *(&std::cerr + v33[-2].~basic_ostream_0 + 24) = 2;
        v34 = *(v23 + v32);
        v35 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, " ", 1);
        if (v32 > 0xE)
        {
          break;
        }

        ++v32;
      }

      while (a1[4] > v32);
    }

    std::ios_base::getloc((&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0));
    v36 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v36->__vftable[2].~facet_0)(v36, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    a1[4] = 0;
  }

  return a1;
}

uint64_t swift::reflection::TypeRefBuilder::lookupSuperclass(swift::reflection::TypeRefBuilder *this, const swift::reflection::TypeRef *a2)
{
  v4 = *(this + 235);
  v5 = this + 1888;
  v21 = &v22 + 8;
  v6 = 2;
  DWORD1(v22) = 2;
  if (v4)
  {
    v23 = v5;
    v5 = v4;
  }

  else
  {
    v6 = 1;
  }

  *(&v22 + 1) = v5;
  LODWORD(v22) = v6;
  (*(*v5 + 24))(&v20);
  v7 = v20 != 0;
  if (v20)
  {
    v8 = 1;
  }

  else
  {
    v8 = v4 == 0;
  }

  if (!v8)
  {
    (*(*v23 + 24))(&v20);
    v7 = v20 != 0;
  }

  if (v21 != &v22 + 8)
  {
    free(v21);
  }

  if (!v7)
  {
    return 0;
  }

  v9 = v20;
  if (!v20)
  {
    return 0;
  }

  if ((v20[10] & 1) == 0)
  {
    v14 = 0;
    v20 = 0;
LABEL_25:
    (*(*v9 + 8))(v9);
    return v14;
  }

  v21 = this;
  v10 = swift::Demangle::__runtime::NodeFactory::pushCheckpoint(this, &v22);
  v11 = (*(*v20 + 16))(v20, v10);
  v24 = this;
  swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(v17, &v24, v11, 0, 1);
  if (v18)
  {
    if (v18 == 1)
    {
      (v17[1])(v17[0], 3, 0);
    }

    goto LABEL_23;
  }

  v15 = v17[0];
  if (!v17[0] || (swift::reflection::TypeRef::getSubstMap(a2, v17), v19 != 1))
  {
LABEL_23:
    v14 = 0;
    goto LABEL_24;
  }

  v14 = swift::reflection::TypeRef::subst(v15, this, v17);
  if (v19)
  {
    __swift::__runtime::llvm::deallocate_buffer(v17[0], (16 * v18), 8uLL);
  }

LABEL_24:
  *v17 = v22;
  v18 = v23;
  swift::Demangle::__runtime::NodeFactory::popCheckpoint(v21, v17, v12, v13);
  v9 = v20;
  v20 = 0;
  if (v9)
  {
    goto LABEL_25;
  }

  return v14;
}

void swift::reflection::TypeRefBuilder::getFieldDescriptor(swift::reflection::TypeRefBuilder *this@<X0>, const swift::reflection::TypeRef *a2@<X1>, void *a3@<X8>)
{
  v5 = *(this + 235);
  v6 = this + 1888;
  if (v5)
  {
    v9 = v6;
    v6 = v5;
  }

  (*(*v6 + 24))(v6, a2);
  v7 = *a3 != 0;
  if (*a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5 == 0;
  }

  if (!v8)
  {
    (*(*v9 + 24))(v9, a2);
    v7 = *a3 != 0;
  }

  if (!v7)
  {
    *a3 = 0;
  }
}

void swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::populateFieldTypeInfoCacheWithReflectionAtIndex(swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder *this, uint64_t a2)
{
  v53 = a2;
  v4 = this + 56;
  v3 = *(this + 7);
  v5 = *(this + 18);
  v6 = (v3 + 8 * v5);
  if (v5)
  {
    v7 = v5 - 1;
    LODWORD(v8) = v7 & (37 * a2);
    v9 = (v3 + 8 * v8);
    v10 = *v9;
    if (*v9 == a2)
    {
      goto LABEL_8;
    }

    v11 = 1;
    while (v10 != -1)
    {
      v12 = v8 + v11++;
      v8 = v12 & v7;
      v10 = *(v3 + 8 * v8);
      if (v10 == a2)
      {
        v9 = (v3 + 8 * v8);
        goto LABEL_8;
      }
    }
  }

  v9 = v6;
LABEL_8:
  if (v9 == v6)
  {
    v51 = &v53;
    v52 = 0;
    v13 = *(this + 1) + 288 * a2;
    *&__p.__r_.__value_.__l.__data_ = *v13;
    v14 = *(v13 + 24);
    __p.__r_.__value_.__r.__words[2] = *(v13 + 16);
    HIBYTE(v55) = 15;
    strcpy(&v54, "FieldDescriptor");
    swift::reflection::ReflectionSectionIteratorBase<swift::reflection::FieldDescriptorIterator,swift::reflection::TargetFieldDescriptor<swift::InProcess>>::ReflectionSectionIteratorBase(&v44, &__p, v14, &v54);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(v54);
    }

    if (v48)
    {
      while (1)
      {
        v15 = v47;
        v16 = *v47;
        if (v16 && v16 != -v47)
        {
          break;
        }

        if (*(this + 41))
        {
          *(&__p.__r_.__value_.__s + 23) = 0;
          __p.__r_.__value_.__s.__data_[0] = 0;
          v18 = v51;
          if (v52 >= HIDWORD(v52))
          {
            if (v51 <= &__p && v51 + 24 * v52 > &__p)
            {
              v32 = &__p - v51;
              __swift::__runtime::llvm::SmallVectorTemplateBase<std::string,false>::grow(&v51, v52 + 1);
              v18 = v51;
              p_p = (v51 + v32);
            }

            else
            {
              __swift::__runtime::llvm::SmallVectorTemplateBase<std::string,false>::grow(&v51, v52 + 1);
              p_p = &__p;
              v18 = v51;
            }
          }

          else
          {
            p_p = &__p;
          }

          v20 = v52;
          v21 = &v18[24 * v52];
          v22 = *&p_p->__r_.__value_.__l.__data_;
          *(v21 + 2) = *(&p_p->__r_.__value_.__l + 2);
          *v21 = v22;
          p_p->__r_.__value_.__l.__size_ = 0;
          p_p->__r_.__value_.__r.__words[2] = 0;
          p_p->__r_.__value_.__r.__words[0] = 0;
          LODWORD(v52) = v20 + 1;
LABEL_33:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

LABEL_13:
        swift::reflection::ReflectionSectionIteratorBase<swift::reflection::FieldDescriptorIterator,swift::reflection::TargetFieldDescriptor<swift::InProcess>>::operator++(&v44);
        if (!v48)
        {
          goto LABEL_43;
        }
      }

      v23 = v45;
      v24 = v46;
      swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(this, v45 + v16, v46, &v54);
      v40 = v54;
      v41 = v55;
      swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::normalizeReflectionName(this, &v40, &__p);
      v25 = v43;
      if (v43 == 1)
      {
        if (*(this + 41))
        {
          v26 = v51;
          if (v52 >= HIDWORD(v52))
          {
            if (v51 <= &__p && v51 + 24 * v52 > &__p)
            {
              v39 = &__p - v51;
              __swift::__runtime::llvm::SmallVectorTemplateBase<std::string,false>::grow(&v51, v52 + 1);
              v26 = v51;
              v27 = (v51 + v39);
            }

            else
            {
              __swift::__runtime::llvm::SmallVectorTemplateBase<std::string,false>::grow(&v51, v52 + 1);
              v27 = &__p;
              v26 = v51;
            }
          }

          else
          {
            v27 = &__p;
          }

          v28 = v52;
          v29 = &v26[24 * v52];
          if (SHIBYTE(v27->__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v29, v27->__r_.__value_.__l.__data_, v27->__r_.__value_.__l.__size_);
            v28 = v52;
          }

          else
          {
            v30 = *&v27->__r_.__value_.__l.__data_;
            v29->__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
            *&v29->__r_.__value_.__l.__data_ = v30;
          }

          LODWORD(v52) = v28 + 1;
        }

        *&v40 = &__p;
        v31 = std::__hash_table<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 16, &__p);
        v31[5] = v23;
        *(v31 + 48) = v24;
        v31[7] = v15;
        v25 = v43;
      }

      if ((v25 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_33;
    }

LABEL_43:
    if (v50 < 0)
    {
      operator delete(v49);
    }

    v33 = *(this + 41);
    if (v33)
    {
      (*(*v33 + 16))(v33, v53, v13, v51, v52);
    }

    __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<unsigned long,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<unsigned long>,__swift::__runtime::llvm::detail::DenseSetPair<unsigned long>>,unsigned long,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<unsigned long>,__swift::__runtime::llvm::detail::DenseSetPair<unsigned long>>::try_emplace<__swift::__runtime::llvm::detail::DenseSetEmpty&>(v4, &v53, &v44);
    v34 = v51;
    if (v52)
    {
      v35 = v51 + 24 * v52 - 1;
      v36 = -24 * v52;
      v37 = v35;
      do
      {
        v38 = *v37;
        v37 -= 24;
        if (v38 < 0)
        {
          operator delete(*(v35 - 23));
        }

        v35 = v37;
        v36 += 24;
      }

      while (v36);
      v34 = v51;
    }

    if (v34 != &v53)
    {
      free(v34);
    }
  }
}

uint64_t *swift::reflection::ReflectionSectionIteratorBase<swift::reflection::FieldDescriptorIterator,swift::reflection::TargetFieldDescriptor<swift::InProcess>>::operator++(uint64_t *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = *(v2 + 12) * *(v2 + 10) + 16;
  v5 = v4 + v2;
  a1[1] += v4;
  v6 = v3 - v4;
  a1[3] = v5;
  a1[4] = v3 - v4;
  if (v3 != v4 && (*(v5 + 12) * *(v5 + 10)) + 16 > v6)
  {
    v7 = *a1 - v6;
    v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "!!! Reflection section too small to contain next record\n", 56);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Section Type: ", 14);
    v11 = *(a1 + 63);
    if (v11 >= 0)
    {
      v12 = (a1 + 5);
    }

    else
    {
      v12 = a1[5];
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 63);
    }

    else
    {
      v13 = a1[6];
    }

    v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v12, v13);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Remaining section size: ", 24);
    v16 = a1[4];
    v17 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ", total section size: ", 22);
    v18 = *a1;
    v19 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, ", offset in section: ", 21);
    v20 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, ", size of next record: ", 23);
    v21 = std::ostream::operator<<();
    std::ios_base::getloc((v21 + *(*v21 - 24)));
    v22 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    v23 = a1[3];
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Last bytes of previous record: ", 31);
    if (v7 > 0)
    {
      if (v7 != 8 && -v7 >= 0xFFFFFFF8)
      {
        v24 = -v7;
      }

      else
      {
        v24 = -8;
      }

      v25 = (v23 + v24);
      v26 = v24 + 1;
      do
      {
        v27 = std::cerr.__vftable;
        *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) = *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) & 0xFFFFFFB5 | 8;
        *(&std::cerr + v27[-2].~basic_ostream_0 + 24) = 2;
        v28 = *v25++;
        v29 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, " ", 1);
      }

      while (v26++);
    }

    std::ios_base::getloc((&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0));
    v31 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v31->__vftable[2].~facet_0)(v31, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Next bytes in section: ", 23);
    if (a1[4])
    {
      v32 = 0;
      do
      {
        v33 = std::cerr.__vftable;
        *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) = *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) & 0xFFFFFFB5 | 8;
        *(&std::cerr + v33[-2].~basic_ostream_0 + 24) = 2;
        v34 = *(v23 + v32);
        v35 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, " ", 1);
        if (v32 > 0xE)
        {
          break;
        }

        ++v32;
      }

      while (a1[4] > v32);
    }

    std::ios_base::getloc((&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0));
    v36 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v36->__vftable[2].~facet_0)(v36, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    a1[4] = 0;
  }

  return a1;
}

uint64_t **swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findFieldDescriptorAtIndex@<X0>(swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::populateFieldTypeInfoCacheWithReflectionAtIndex(a1, a2);
  result = std::__hash_table<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>>>::find<std::string>(a1 + 16, a3);
  if (result)
  {
    *a4 = *(result + 5);
    *(a4 + 16) = result[7];
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a4 = 0;
  }

  *(a4 + 24) = v8;
  return result;
}

uint64_t **swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getFieldDescriptorFromExternalCache@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = a1[41];
  if (!result)
  {
    goto LABEL_28;
  }

  result = ((*result)[3])(v31);
  if (v32 != 1)
  {
    goto LABEL_28;
  }

  v7 = a1[1];
  if (v31[0] >= 0x8E38E38E38E38E39 * ((a1[2] - v7) >> 5))
  {
    goto LABEL_28;
  }

  v8 = (v7 + 288 * v31[0]);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = v31[1];
  *&__p.__r_.__value_.__l.__data_ = *v8;
  v12 = v8[3];
  __p.__r_.__value_.__r.__words[2] = v8[2];
  HIBYTE(v34) = 15;
  strcpy(&v33, "FieldDescriptor");
  swift::reflection::ReflectionSectionIteratorBase<swift::reflection::FieldDescriptorIterator,swift::reflection::TargetFieldDescriptor<swift::InProcess>>::ReflectionSectionIteratorBase(v25, &__p, v12, &v33);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (v28)
  {
    v13 = (v11 + v9);
    do
    {
      if (v25[1] == v13 && v26 == v10)
      {
        v15 = v27;
        v16 = *v27;
        if (!v16 || v16 == -v27)
        {
          break;
        }

        swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(a1, v13 + v16, v26, &v33);
        v21 = v33;
        v22 = v34;
        swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::normalizeReflectionName(a1, &v21, &__p);
        v18 = v24;
        v19 = v24;
        if (v24 == 1)
        {
          *&v21 = &__p;
          v20 = std::__hash_table<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 16, &__p);
          v20[5] = v13;
          *(v20 + 48) = v10;
          v20[7] = v15;
          v19 = v24;
        }

        if ((v19 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v18)
        {
          break;
        }
      }

      swift::reflection::ReflectionSectionIteratorBase<swift::reflection::FieldDescriptorIterator,swift::reflection::TargetFieldDescriptor<swift::InProcess>>::operator++(v25);
    }

    while (v28);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  result = std::__hash_table<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>>>::find<std::string>(a1 + 16, a2);
  if (result)
  {
    *a3 = *(result + 5);
    *(a3 + 16) = result[7];
    *(a3 + 24) = 1;
  }

  else
  {
LABEL_28:
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  return result;
}

void *swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getFieldTypeInfo@<X0>(swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder *this@<X0>, const swift::reflection::TypeRef *a2@<X1>, uint64_t a3@<X8>)
{
  v40[1] = 0;
  v40[2] = 0;
  v41 = 0;
  v42 = 2400;
  v43 = 0;
  v44 = 0;
  v79 = 0;
  v40[0] = off_E13E8;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
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
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v77 = 0;
  if (!a2 || (*(a2 + 2) - 3) <= 0xFFFFFFFD)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    goto LABEL_6;
  }

  Demangling = swift::reflection::TypeRef::getDemangling(a2, v40);
  v7 = std::__hash_table<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>>>::find<std::string>(this + 16, a2 + 16);
  if (v7)
  {
    *a3 = *(v7 + 5);
    *(a3 + 16) = v7[7];
    goto LABEL_6;
  }

  swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getFieldDescriptorFromExternalCache(this, a2 + 16, &v80);
  if (v82 == 1)
  {
    *a3 = v80;
    *(a3 + 16) = v81;
    goto LABEL_6;
  }

  v39 = a3;
  if (!Demangling)
  {
    goto LABEL_64;
  }

  v9 = 0;
  *&v80 = &v81;
  v81 = Demangling;
  *(&v80 + 1) = 0x800000001;
  v10 = 1;
  while (1)
  {
    v11 = v80;
    v12 = *(v80 + 8 * v9);
    v13 = (v12 + 16);
    v14 = *(v12 + 18);
    if (*(v12 + 16) == 163)
    {
      break;
    }

    v15 = *(v80 + 8 * v9);
    if ((v14 - 1) >= 2)
    {
      if (v14 == 5)
      {
        v16 = *v12;
        v15 = *v12;
        goto LABEL_26;
      }

      v15 = 0;
    }

    if (v14 == 1)
    {
      v13 = (v12 + 8);
      if (v15 != (v12 + 8))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v14 != 2)
      {
        if (v14 == 5)
        {
          v16 = *v12;
LABEL_26:
          v13 = &v16[*(v12 + 8)];
          if (v15 != v13)
          {
            goto LABEL_32;
          }

          goto LABEL_35;
        }

        v13 = 0;
      }

      for (; v15 != v13; ++v15)
      {
LABEL_32:
        v17 = *v15;
        if (v10 >= HIDWORD(v80))
        {
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, &v81, v10 + 1, 8);
          v10 = DWORD2(v80);
        }

        *(v80 + 8 * v10) = v17;
        v10 = ++DWORD2(v80);
      }
    }

LABEL_35:
    if (++v9 >= v10)
    {
      v18 = 0;
      v19 = 0;
      v11 = v80;
      goto LABEL_40;
    }
  }

  if (v14 == 3)
  {
    v18 = *v12;
    v9 = *(v12 + 8);
    v19 = 1;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

LABEL_40:
  if (v11 != &v81)
  {
    free(v11);
  }

  if (v19)
  {
    if (v9 != 3 || (*v18 == 24415 ? (v20 = *(v18 + 2) == 67) : (v20 = 0), !v20))
    {
      v21 = *(this + 1);
      if (*(this + 2) != v21)
      {
        for (i = 0; i < 0x8E38E38E38E38E39 * ((*(this + 2) - v21) >> 5); ++i)
        {
          v23 = *(this + 41);
          if (!v23 || (v24 = (*(*v23 + 32))(v23, i), v21 = *(this + 1), (v24 & 1) == 0))
          {
            v25 = v21 + 288 * i;
            v26 = *(v25 + 256);
            v27 = *(v25 + 264);
            if (v27)
            {
              v28 = 16 * v27;
              v29 = *(v25 + 256);
              while (*(v29 + 8) != v9 || v9 && memcmp(*v29, v18, v9))
              {
                v29 += 16;
                v28 -= 16;
                if (!v28)
                {
                  goto LABEL_50;
                }
              }
            }

            else
            {
              v29 = *(v25 + 256);
            }

            if (v29 != v26 + 16 * v27)
            {
              swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::populateFieldTypeInfoCacheWithReflectionAtIndex(this, i);
              v30 = std::__hash_table<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>>>::find<std::string>(this + 16, a2 + 16);
              if (v30)
              {
                goto LABEL_76;
              }

              v21 = *(this + 1);
            }
          }

LABEL_50:
          ;
        }
      }
    }
  }

LABEL_64:
  if (*(this + 2) == *(this + 1))
  {
LABEL_75:
    *v39 = 0;
    *(v39 + 8) = 0;
    *(v39 + 16) = 0;
  }

  else
  {
    v31 = 0;
    while (1)
    {
      v34 = *(this + 41);
      if (!v34 || ((*(*v34 + 32))(v34, v31) & 1) == 0)
      {
        swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::populateFieldTypeInfoCacheWithReflectionAtIndex(this, v31);
        v30 = std::__hash_table<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>>>::find<std::string>(this + 16, a2 + 16);
        if (v30)
        {
          break;
        }
      }

      ++v31;
      v33 = *(this + 1);
      v32 = *(this + 2);
      if (v31 >= 0x8E38E38E38E38E39 * ((v32 - v33) >> 5))
      {
        if (v32 == v33)
        {
          goto LABEL_75;
        }

        v35 = 0;
        while (1)
        {
          swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::populateFieldTypeInfoCacheWithReflectionAtIndex(this, v35);
          v30 = std::__hash_table<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>>>::find<std::string>(this + 16, a2 + 16);
          if (v30)
          {
            goto LABEL_76;
          }

          if (++v35 >= 0x8E38E38E38E38E39 * ((*(this + 2) - *(this + 1)) >> 5))
          {
            goto LABEL_75;
          }
        }
      }
    }

LABEL_76:
    v36 = *(v30 + 40);
    *(v39 + 1) = *(v30 + 41);
    v37 = v30[6];
    v38 = v30[7];
    *v39 = v36;
    *(v39 + 8) = v37;
    *(v39 + 16) = v38;
  }

LABEL_6:
  v40[0] = off_E13E8;
  if (v79 == &v78)
  {
    (*(*v79 + 32))(v79);
  }

  else if (v79)
  {
    (*(*v79 + 40))();
  }

  v40[0] = off_E13C0;
  result = swift::Demangle::__runtime::NodeFactory::freeSlabs(v41);
  if (v43)
  {
    *(v43 + 48) = 0;
  }

  return result;
}

uint64_t swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getFieldDescriptor@<X0>(swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder *this@<X0>, const swift::reflection::TypeRef *a2@<X1>, void *a3@<X8>)
{
  swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getFieldTypeInfo(this, a2, &v7);
  if (v8)
  {
    v5 = *(this + 40);
    operator new();
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t swift::reflection::TypeRefBuilder::getFieldTypeRefs(swift::Demangle::__runtime::NodeFactory *a1, swift::reflection::TypeRef *this, _WORD *a3, uint64_t a4, uint64_t *a5)
{
  swift::reflection::TypeRef::getSubstMap(this, v60);
  if (v62 != 1)
  {
    goto LABEL_72;
  }

  (*(*a3 + 24))(&v58, a3);
  v9 = v58;
  v50 = v59;
  if (v58 == v59)
  {
LABEL_61:
    if (v9)
    {
      v43 = v59;
      v44 = v9;
      if (v59 != v9)
      {
        do
        {
          v46 = *--v43;
          v45 = v46;
          *v43 = 0;
          if (v46)
          {
            (*(*v45 + 8))(v45, v8);
          }
        }

        while (v43 != v9);
        v44 = v58;
      }

      v59 = v9;
      operator delete(v44);
    }

    v47 = 1;
    goto LABEL_73;
  }

  v10 = 0;
  v49 = a1;
  while (1)
  {
    v11 = (*(**v9 + 16))();
    v13 = v11;
    v14 = v12;
    if (a3[4] & 0xFFFE) != 2 || (*(*v9 + 10))
    {
      break;
    }

    if (!v11)
    {
      memset(&__p, 0, sizeof(__p));
LABEL_42:
      v31 = 0;
      v55 = __p;
      goto LABEL_44;
    }

    if (v12 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_76:
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v12;
    if (v12)
    {
      memmove(&__p, v11, v12);
    }

    __p.__r_.__value_.__s.__data_[v14] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    std::string::__init_copy_ctor_external(&v55, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v31 = 1;
LABEL_44:
    v56.n128_u32[0] = v10;
    v56.n128_u64[1] = 0;
    v57 = 0;
    v32 = a5[1];
    if (v32 >= a5[2])
    {
      v35 = std::vector<swift::reflection::FieldTypeInfo>::__emplace_back_slow_path<swift::reflection::FieldTypeInfo>(a5, &v55);
      v36 = SHIBYTE(v55.__r_.__value_.__r.__words[2]);
      a5[1] = v35;
      if (v36 < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
        if (!v31)
        {
          goto LABEL_5;
        }

LABEL_49:
        operator delete(__p.__r_.__value_.__l.__data_);
        goto LABEL_5;
      }

      if (v31)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v33 = *&v55.__r_.__value_.__l.__data_;
      *(v32 + 16) = *(&v55.__r_.__value_.__l + 2);
      *v32 = v33;
      memset(&v55, 0, sizeof(v55));
      v34 = v57;
      v8 = v56;
      *(v32 + 24) = v56;
      *(v32 + 40) = v34;
      a5[1] = v32 + 48;
      if (v31)
      {
        goto LABEL_49;
      }
    }

LABEL_5:
    ++v9;
    ++v10;
    if (v9 == v50)
    {
      v9 = v58;
      goto LABEL_61;
    }
  }

  v52 = a1;
  v15 = swift::Demangle::__runtime::NodeFactory::pushCheckpoint(a1, &v53);
  v16 = (*(**v9 + 24))(v15);
  __dst.__r_.__value_.__r.__words[0] = a1;
  swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&__dst, v16, 0, 1, v17, &v55);
  if (!LOWORD(v55.__r_.__value_.__r.__words[2]))
  {
    v20 = v55.__r_.__value_.__r.__words[0];
    if (!v55.__r_.__value_.__r.__words[0])
    {
      goto LABEL_54;
    }

    isConcrete = swift::reflection::TypeRef::isConcrete(v55.__r_.__value_.__l.__data_);
    if ((isConcrete & 1) == 0)
    {
      v20 = swift::reflection::TypeRef::subst(v20, a1, v60);
    }

    if ((a3[4] & 0xFFFE) == 2)
    {
      v24 = *(*v9 + 8);
      v25 = isConcrete ^ 1;
      if (v13)
      {
        goto LABEL_14;
      }

LABEL_19:
      memset(&__dst, 0, sizeof(__dst));
      goto LABEL_28;
    }

    v24 = 0;
    v25 = isConcrete ^ 1;
    if (!v13)
    {
      goto LABEL_19;
    }

LABEL_14:
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_76;
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    __dst.__r_.__value_.__s.__data_[v14] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      v26 = __dst.__r_.__value_.__r.__words[0];
      std::string::__init_copy_ctor_external(&v55, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      v56.n128_u32[0] = v10;
      v56.n128_u64[1] = v20;
      LOBYTE(v57) = v24 & 1;
      HIBYTE(v57) = v25;
      operator delete(v26);
    }

    else
    {
LABEL_28:
      v55 = __dst;
      v56.n128_u32[0] = v10;
      v56.n128_u64[1] = v20;
      LOBYTE(v57) = v24 & 1;
      HIBYTE(v57) = v25;
    }

    v27 = a5[1];
    a1 = v49;
    if (v27 >= a5[2])
    {
      v29 = std::vector<swift::reflection::FieldTypeInfo>::__emplace_back_slow_path<swift::reflection::FieldTypeInfo const&>(a5, &v55);
    }

    else
    {
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(a5[1], v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
      }

      else
      {
        v28 = *&v55.__r_.__value_.__l.__data_;
        *(v27 + 16) = *(&v55.__r_.__value_.__l + 2);
        *v27 = v28;
      }

      v30 = v56;
      *(v27 + 40) = v57;
      *(v27 + 24) = v30;
      v29 = v27 + 48;
    }

    a5[1] = v29;
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    v55 = v53;
    v8 = swift::Demangle::__runtime::NodeFactory::popCheckpoint(v52, &v55, v21, v22);
    goto LABEL_5;
  }

  if (LOWORD(v55.__r_.__value_.__r.__words[2]) == 1)
  {
    (v55.__r_.__value_.__l.__size_)(v55.__r_.__value_.__r.__words[0], 3, 0);
  }

LABEL_54:
  v55 = v53;
  v37 = swift::Demangle::__runtime::NodeFactory::popCheckpoint(v52, &v55, v18, v19);
  v38 = v58;
  if (v58)
  {
    v39 = v59;
    v40 = v58;
    if (v59 != v58)
    {
      do
      {
        v42 = *--v39;
        v41 = v42;
        *v39 = 0;
        if (v42)
        {
          (*(*v41 + 8))(v41, v37);
        }
      }

      while (v39 != v38);
      v40 = v58;
    }

    v59 = v38;
    operator delete(v40);
  }

LABEL_72:
  v47 = 0;
LABEL_73:
  if (v62 == 1)
  {
    __swift::__runtime::llvm::deallocate_buffer(v60[0], (16 * v61), 8uLL);
  }

  return v47;
}

void swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getBuiltinTypeInfo(swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder *this@<X0>, const swift::reflection::TypeRef *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v30, 0, sizeof(v30));
  if (!a2 || *(a2 + 2) >= 3u)
  {
    goto LABEL_31;
  }

  std::string::operator=(&v30, (a2 + 16));
  v5 = *(this + 72);
  for (i = *(this + 1); 0x8E38E38E38E38E39 * ((*(this + 2) - i) >> 5) > v5; i = *(this + 1))
  {
    v7 = i + 288 * v5;
    *&v16.__r_.__value_.__l.__data_ = *(v7 + 64);
    v8 = *(v7 + 88);
    v16.__r_.__value_.__r.__words[2] = *(v7 + 80);
    *(&__p.__r_.__value_.__s + 23) = 21;
    strcpy(&__p, "BuiltinTypeDescriptor");
    swift::reflection::ReflectionSectionIteratorBase<swift::reflection::BuiltinTypeDescriptorIterator,swift::reflection::BuiltinTypeDescriptor>::ReflectionSectionIteratorBase(&v23, &v16, v8, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    while (v27)
    {
      v9 = v26;
      if (*(v26 + 12))
      {
        v10 = *v26;
        v11 = !v10 || v10 == -v26;
        if (!v11 && (*(v26 + 8) ^ (*(v26 + 8) - 1)) > *(v26 + 8) - 1)
        {
          v12 = v24;
          v13 = v25;
          swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(this, v24 + v10, v25, &v22);
          v16 = v22;
          swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::normalizeReflectionName(this, &v16, &__p);
          v14 = v21;
          if (v21 == 1)
          {
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              v16 = __p;
            }

            v17 = v12;
            v18 = v13;
            v19 = v9;
            std::__hash_table<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::BuiltinTypeDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::BuiltinTypeDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::BuiltinTypeDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::BuiltinTypeDescriptor>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,swift::remote::RemoteRef<swift::reflection::BuiltinTypeDescriptor>>>(this + 26, &v16);
            if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v16.__r_.__value_.__l.__data_);
            }

            v14 = v21;
          }

          if ((v14 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      swift::reflection::ReflectionSectionIteratorBase<swift::reflection::BuiltinTypeDescriptorIterator,swift::reflection::BuiltinTypeDescriptor>::operator++(&v23);
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }

    v5 = (*(this + 72) + 1);
    *(this + 72) = v5;
  }

  v15 = std::__hash_table<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>>>::find<std::string>(this + 26, &v30);
  if (v15)
  {
    *a3 = *(v15 + 5);
    *(a3 + 16) = v15[7];
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
LABEL_31:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }
  }

  operator delete(v30.__r_.__value_.__l.__data_);
}

uint64_t *swift::reflection::ReflectionSectionIteratorBase<swift::reflection::BuiltinTypeDescriptorIterator,swift::reflection::BuiltinTypeDescriptor>::operator++(uint64_t *a1)
{
  v2 = a1[4];
  v3 = a1[3] + 20;
  a1[1] += 20;
  a1[3] = v3;
  a1[4] = v2 - 20;
  if ((v2 - 21) <= 0x12)
  {
    v4 = *a1 - (v2 - 20);
    v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "!!! Reflection section too small to contain next record\n", 56);
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v6 = std::locale::use_facet(&v35, &std::ctype<char>::id);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v35);
    std::ostream::put();
    std::ostream::flush();
    v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Section Type: ", 14);
    v8 = *(a1 + 63);
    if (v8 >= 0)
    {
      v9 = (a1 + 5);
    }

    else
    {
      v9 = a1[5];
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 63);
    }

    else
    {
      v10 = a1[6];
    }

    v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, v9, v10);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&v35, &std::ctype<char>::id);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v35);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Remaining section size: ", 24);
    v13 = a1[4];
    v14 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, ", total section size: ", 22);
    v15 = *a1;
    v16 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, ", offset in section: ", 21);
    v17 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ", size of next record: ", 23);
    v18 = std::ostream::operator<<();
    std::ios_base::getloc((v18 + *(*v18 - 24)));
    v19 = std::locale::use_facet(&v35, &std::ctype<char>::id);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v35);
    std::ostream::put();
    std::ostream::flush();
    v20 = a1[3];
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Last bytes of previous record: ", 31);
    if (v4 > 0)
    {
      if (v4 != 8 && -v4 >= 0xFFFFFFF8)
      {
        v21 = -v4;
      }

      else
      {
        v21 = -8;
      }

      v22 = (v20 + v21);
      v23 = v21 + 1;
      do
      {
        v24 = std::cerr.__vftable;
        *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) = *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) & 0xFFFFFFB5 | 8;
        *(&std::cerr + v24[-2].~basic_ostream_0 + 24) = 2;
        v25 = *v22++;
        v26 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, " ", 1);
      }

      while (v23++);
    }

    std::ios_base::getloc((&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0));
    v28 = std::locale::use_facet(&v35, &std::ctype<char>::id);
    (v28->__vftable[2].~facet_0)(v28, 10);
    std::locale::~locale(&v35);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Next bytes in section: ", 23);
    if (a1[4])
    {
      v29 = 0;
      do
      {
        v30 = std::cerr.__vftable;
        *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) = *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) & 0xFFFFFFB5 | 8;
        *(&std::cerr + v30[-2].~basic_ostream_0 + 24) = 2;
        v31 = *(v20 + v29);
        v32 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, " ", 1);
        if (v29 > 0xE)
        {
          break;
        }

        ++v29;
      }

      while (a1[4] > v29);
    }

    std::ios_base::getloc((&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0));
    v33 = std::locale::use_facet(&v35, &std::ctype<char>::id);
    (v33->__vftable[2].~facet_0)(v33, 10);
    std::locale::~locale(&v35);
    std::ostream::put();
    std::ostream::flush();
    a1[4] = 0;
  }

  return a1;
}

uint64_t swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getBuiltinTypeDescriptor@<X0>(swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder *this@<X0>, const swift::reflection::TypeRef *a2@<X1>, void *a3@<X8>)
{
  swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getBuiltinTypeInfo(this, a2, &v7);
  if (v8)
  {
    v5 = *(this + 40);
    operator new();
  }

  result = 0;
  *a3 = 0;
  return result;
}

void swift::reflection::TypeRefBuilder::getBuiltinTypeDescriptor(swift::reflection::TypeRefBuilder *this@<X0>, const swift::reflection::TypeRef *a2@<X1>, void *a3@<X8>)
{
  v5 = *(this + 235);
  v6 = this + 1888;
  if (v5)
  {
    v9 = v6;
    v6 = v5;
  }

  (*(*v6 + 16))(v6, a2);
  v7 = *a3 != 0;
  if (*a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5 == 0;
  }

  if (!v8)
  {
    (*(*v9 + 16))(v9, a2);
    v7 = *a3 != 0;
  }

  if (!v7)
  {
    *a3 = 0;
  }
}

void swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getMultiPayloadEnumInfo(swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder *this@<X0>, const swift::reflection::TypeRef *a2@<X1>, void *a3@<X8>)
{
  memset(&v73, 0, sizeof(v73));
  if (!a2 || *(a2 + 2) >= 3u || (std::string::operator=(&v73, (a2 + 16)), v5 = *(this + 1), v36 = *(this + 2), v5 == v36))
  {
LABEL_57:
    *a3 = 0;
    *(a3 + 8) = 0;
    a3[2] = 0;
    if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_58;
  }

  v35 = a3;
  v6 = a3[1];
LABEL_6:
  v46 = *v5;
  v7 = *(v5 + 3);
  v47 = *(v5 + 2);
  v48 = v7;
  v49 = v5[2];
  v8 = *(v5 + 7);
  v50 = *(v5 + 6);
  v51 = v8;
  v52 = v5[4];
  v9 = *(v5 + 11);
  v53 = *(v5 + 10);
  v54 = v9;
  v55 = v5[6];
  v10 = *(v5 + 15);
  v56 = *(v5 + 14);
  v57 = v10;
  v58 = v5[8];
  v11 = *(v5 + 19);
  v59 = *(v5 + 18);
  v60 = v11;
  v61 = v5[10];
  v12 = *(v5 + 23);
  v62 = *(v5 + 22);
  v63 = v12;
  v64 = v5[12];
  v13 = *(v5 + 27);
  v65 = *(v5 + 26);
  v66 = v13;
  v67 = v5[14];
  v15 = *(v5 + 30);
  v14 = *(v5 + 31);
  v68 = v15;
  v69 = v14;
  v70 = v72;
  v71 = 0x100000000;
  if (&v46 != v5)
  {
    v16 = *(v5 + 66);
    if (v16)
    {
      if (v16 < 2)
      {
        v18 = v72;
        v19 = 16;
      }

      else
      {
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, *(v5 + 66), 16);
        v17 = *(v5 + 66);
        if (!v17)
        {
LABEL_13:
          LODWORD(v71) = v16;
          v15 = v68;
          v14 = v69;
          goto LABEL_14;
        }

        v18 = v70;
        v19 = 16 * v17;
      }

      memcpy(v18, *(v5 + 32), v19);
      goto LABEL_13;
    }
  }

LABEL_14:
  *&v75.__r_.__value_.__l.__data_ = v67;
  v75.__r_.__value_.__r.__words[2] = v15;
  BYTE7(v74[1]) = 16;
  strcpy(v74, "MultiPayloadEnum");
  swift::reflection::ReflectionSectionIteratorBase<swift::reflection::MultiPayloadEnumDescriptorIterator,swift::reflection::MultiPayloadEnumDescriptor>::ReflectionSectionIteratorBase(&v39, &v75, v14, v74);
  if (SBYTE7(v74[1]) < 0)
  {
    operator delete(*&v74[0]);
  }

  while (1)
  {
    if (!v43)
    {
      if (v45 < 0)
      {
        operator delete(__p);
      }

      if (v70 != v72)
      {
        free(v70);
      }

      v5 += 18;
      if (v5 == v36)
      {
        a3 = v35;
        v35[1] = v6;
        goto LABEL_57;
      }

      goto LABEL_6;
    }

    v20 = v40;
    v6 = v41;
    v21 = v42;
    v22 = *v42;
    v23 = v22 ? v40 + v22 : 0;
    v24 = v22 ? v41 : 0;
    swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(this, v23, v24, &v37);
    v74[0] = v37;
    v25 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
    size = v73.__r_.__value_.__l.__size_;
    v27 = (v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v73 : v73.__r_.__value_.__r.__words[0];
    *&v74[1] = v38;
    swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::normalizeReflectionName(this, v74, &v75);
    if (v76)
    {
      break;
    }

LABEL_17:
    swift::reflection::ReflectionSectionIteratorBase<swift::reflection::MultiPayloadEnumDescriptorIterator,swift::reflection::MultiPayloadEnumDescriptor>::operator++(&v39);
  }

  if ((v25 & 0x80u) == 0)
  {
    v28 = v25;
  }

  else
  {
    v28 = size;
  }

  v29 = SHIBYTE(v75.__r_.__value_.__r.__words[2]);
  v30 = v75.__r_.__value_.__l.__size_;
  v31 = v75.__r_.__value_.__r.__words[0];
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v75;
  }

  else
  {
    v32 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = SHIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  if (v28 != v30)
  {
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    goto LABEL_17;
  }

  if (v28)
  {
    v33 = memcmp(v27, v32, v28);
    if (v29 < 0)
    {
      operator delete(v31);
    }

    if (!v33)
    {
      v34 = v35;
      v35[1] = v6;
      goto LABEL_50;
    }

    goto LABEL_17;
  }

  v34 = v35;
  v35[1] = v6;
  if (v29 < 0)
  {
    operator delete(v31);
  }

LABEL_50:
  v34[2] = v21;
  *v34 = v20;
  if (v45 < 0)
  {
    operator delete(__p);
  }

  if (v70 != v72)
  {
    free(v70);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_58:
    operator delete(v73.__r_.__value_.__l.__data_);
  }
}

uint64_t *swift::reflection::ReflectionSectionIteratorBase<swift::reflection::MultiPayloadEnumDescriptorIterator,swift::reflection::MultiPayloadEnumDescriptor>::operator++(uint64_t *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = 4 * *(v2 + 6) + 4;
  v5 = v4 + v2;
  a1[1] += v4;
  v6 = v3 - v4;
  a1[3] = v5;
  a1[4] = v3 - v4;
  if (v3 != v4 && v6 < 4 * *(v5 + 6) + 4)
  {
    v7 = *a1 - v6;
    v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "!!! Reflection section too small to contain next record\n", 56);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Section Type: ", 14);
    v11 = *(a1 + 63);
    if (v11 >= 0)
    {
      v12 = (a1 + 5);
    }

    else
    {
      v12 = a1[5];
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 63);
    }

    else
    {
      v13 = a1[6];
    }

    v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v12, v13);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Remaining section size: ", 24);
    v16 = a1[4];
    v17 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ", total section size: ", 22);
    v18 = *a1;
    v19 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, ", offset in section: ", 21);
    v20 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, ", size of next record: ", 23);
    v21 = std::ostream::operator<<();
    std::ios_base::getloc((v21 + *(*v21 - 24)));
    v22 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    v23 = a1[3];
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Last bytes of previous record: ", 31);
    if (v7 > 0)
    {
      if (v7 != 8 && -v7 >= 0xFFFFFFF8)
      {
        v24 = -v7;
      }

      else
      {
        v24 = -8;
      }

      v25 = (v23 + v24);
      v26 = v24 + 1;
      do
      {
        v27 = std::cerr.__vftable;
        *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) = *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) & 0xFFFFFFB5 | 8;
        *(&std::cerr + v27[-2].~basic_ostream_0 + 24) = 2;
        v28 = *v25++;
        v29 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, " ", 1);
      }

      while (v26++);
    }

    std::ios_base::getloc((&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0));
    v31 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v31->__vftable[2].~facet_0)(v31, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Next bytes in section: ", 23);
    if (a1[4])
    {
      v32 = 0;
      do
      {
        v33 = std::cerr.__vftable;
        *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) = *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) & 0xFFFFFFB5 | 8;
        *(&std::cerr + v33[-2].~basic_ostream_0 + 24) = 2;
        v34 = *(v23 + v32);
        v35 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, " ", 1);
        if (v32 > 0xE)
        {
          break;
        }

        ++v32;
      }

      while (a1[4] > v32);
    }

    std::ios_base::getloc((&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0));
    v36 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v36->__vftable[2].~facet_0)(v36, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    a1[4] = 0;
  }

  return a1;
}

uint64_t swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getMultiPayloadEnumDescriptor@<X0>(swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder *this@<X0>, const swift::reflection::TypeRef *a2@<X1>, void *a3@<X8>)
{
  swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getMultiPayloadEnumInfo(this, a2, &v7);
  if (v8)
  {
    v5 = *(this + 40);
    operator new();
  }

  result = 0;
  *a3 = 0;
  return result;
}

void swift::reflection::TypeRefBuilder::getMultiPayloadEnumDescriptor(swift::reflection::TypeRefBuilder *this@<X0>, const swift::reflection::TypeRef *a2@<X1>, void *a3@<X8>)
{
  v5 = *(this + 235);
  v6 = this + 1888;
  if (v5)
  {
    v9 = v6;
    v6 = v5;
  }

  (*(*v6 + 32))(v6, a2);
  v7 = *a3 != 0;
  if (*a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5 == 0;
  }

  if (!v8)
  {
    (*(*v9 + 32))(v9, a2);
    v7 = *a3 != 0;
  }

  if (!v7)
  {
    *a3 = 0;
  }
}

__n128 swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getCaptureDescriptor@<Q0>(int8x8_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v6 = a1[15].u32[0];
  for (i = a1[1]; 0x8E38E38E38E38E39 * ((*&a1[2] - *&i) >> 5) > v6; i = a1[1])
  {
    v8 = *&i + 288 * v6;
    v18 = *(v8 + 96);
    v9 = *(v8 + 120);
    v19 = *(v8 + 112);
    BYTE7(v31[1]) = 17;
    strcpy(v31, "CaptureDescriptor");
    swift::reflection::ReflectionSectionIteratorBase<swift::reflection::CaptureDescriptorIterator,swift::reflection::CaptureDescriptor>::ReflectionSectionIteratorBase(&v22, &v18, v9, v31);
    if (SBYTE7(v31[1]) < 0)
    {
      operator delete(*&v31[0]);
    }

    while (v26)
    {
      *&v18 = v23;
      BYTE8(v18) = v24;
      v19 = v23;
      v20 = v24;
      v21 = v25;
      std::__hash_table<std::__hash_value_type<swift::remote::RemoteAddress,swift::remote::RemoteRef<swift::reflection::CaptureDescriptor>>,std::__unordered_map_hasher<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,swift::remote::RemoteRef<swift::reflection::CaptureDescriptor>>,std::hash<swift::remote::RemoteAddress>,std::equal_to<swift::remote::RemoteAddress>,true>,std::__unordered_map_equal<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,swift::remote::RemoteRef<swift::reflection::CaptureDescriptor>>,std::equal_to<swift::remote::RemoteAddress>,std::hash<swift::remote::RemoteAddress>,true>,std::allocator<std::__hash_value_type<swift::remote::RemoteAddress,swift::remote::RemoteRef<swift::reflection::CaptureDescriptor>>>>::__emplace_unique_key_args<swift::remote::RemoteAddress,std::pair<swift::remote::RemoteAddress,swift::remote::RemoteRef<swift::reflection::CaptureDescriptor>>>(&a1[10], &v18);
      swift::reflection::ReflectionSectionIteratorBase<swift::reflection::CaptureDescriptorIterator,swift::reflection::CaptureDescriptor>::operator++(&v22);
    }

    if (v28 < 0)
    {
      operator delete(__p);
    }

    v6 = (a1[15].i32[0] + 1);
    a1[15].i32[0] = v6;
  }

  v10 = __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(&v29, &v30);
  v12 = a1[11];
  if (!*&v12)
  {
    goto LABEL_29;
  }

  result.n128_u64[0] = vcnt_s8(v12);
  result.n128_u16[0] = vaddlv_u8(result.n128_u64[0]);
  if (result.n128_u32[0] > 1uLL)
  {
    v13 = v10;
    if (v10 >= *&v12)
    {
      v13 = v10 % *&v12;
    }
  }

  else
  {
    v13 = (*&v12 - 1) & v10;
  }

  v14 = *(*&a1[10] + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_29:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  while (1)
  {
    v17 = v15->n128_u64[1];
    if (v17 == v10)
    {
      break;
    }

    if (result.n128_u32[0] > 1uLL)
    {
      if (v17 >= *&v12)
      {
        v17 %= *&v12;
      }
    }

    else
    {
      v17 &= *&v12 - 1;
    }

    if (v17 != v13)
    {
      goto LABEL_29;
    }

LABEL_22:
    v15 = v15->n128_u64[0];
    if (!v15)
    {
      goto LABEL_29;
    }
  }

  if (v15[1].n128_u64[0] != v29 || v15[1].n128_u8[8] != v30)
  {
    goto LABEL_22;
  }

  result = v15[2];
  *a4 = result;
  *(a4 + 16) = v15[3].n128_u64[0];
  return result;
}

uint64_t *swift::reflection::ReflectionSectionIteratorBase<swift::reflection::CaptureDescriptorIterator,swift::reflection::CaptureDescriptor>::operator++(uint64_t *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = 4 * *v2 + 8 * v2[1] + 12;
  a1[1] += v4;
  v5 = (v2 + v4);
  v6 = v3 - v4;
  a1[3] = v5;
  a1[4] = v3 - v4;
  if (v3 != v4 && 4 * *v5 + 8 * v5[1] + 12 > v6)
  {
    v7 = *a1 - v6;
    v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "!!! Reflection section too small to contain next record\n", 56);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Section Type: ", 14);
    v11 = *(a1 + 63);
    if (v11 >= 0)
    {
      v12 = (a1 + 5);
    }

    else
    {
      v12 = a1[5];
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 63);
    }

    else
    {
      v13 = a1[6];
    }

    v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v12, v13);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Remaining section size: ", 24);
    v16 = a1[4];
    v17 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ", total section size: ", 22);
    v18 = *a1;
    v19 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, ", offset in section: ", 21);
    v20 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, ", size of next record: ", 23);
    v21 = std::ostream::operator<<();
    std::ios_base::getloc((v21 + *(*v21 - 24)));
    v22 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    v23 = a1[3];
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Last bytes of previous record: ", 31);
    if (v7 > 0)
    {
      if (v7 != 8 && -v7 >= 0xFFFFFFF8)
      {
        v24 = -v7;
      }

      else
      {
        v24 = -8;
      }

      v25 = (v23 + v24);
      v26 = v24 + 1;
      do
      {
        v27 = std::cerr.__vftable;
        *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) = *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) & 0xFFFFFFB5 | 8;
        *(&std::cerr + v27[-2].~basic_ostream_0 + 24) = 2;
        v28 = *v25++;
        v29 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, " ", 1);
      }

      while (v26++);
    }

    std::ios_base::getloc((&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0));
    v31 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v31->__vftable[2].~facet_0)(v31, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Next bytes in section: ", 23);
    if (a1[4])
    {
      v32 = 0;
      do
      {
        v33 = std::cerr.__vftable;
        *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) = *(&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0 + 8) & 0xFFFFFFB5 | 8;
        *(&std::cerr + v33[-2].~basic_ostream_0 + 24) = 2;
        v34 = *(v23 + v32);
        v35 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, " ", 1);
        if (v32 > 0xE)
        {
          break;
        }

        ++v32;
      }

      while (a1[4] > v32);
    }

    std::ios_base::getloc((&std::cerr + std::cerr.__vftable[-2].~basic_ostream_0));
    v36 = std::locale::use_facet(&v38, &std::ctype<char>::id);
    (v36->__vftable[2].~facet_0)(v36, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    a1[4] = 0;
  }

  return a1;
}

void swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getClosureContextInfo(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v5 = a2[2];
  v6 = *v5;
  if (v6)
  {
    v7 = 4 * v6;
    v8 = v5 + 3;
    v9 = -12 - v5;
    v10 = (v5 + 3);
    while (1)
    {
      v64 = 0;
      v14 = *v10;
      if (v14)
      {
        v15 = v9 == v14;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        goto LABEL_6;
      }

      v16 = *(a2 + 8);
      v17 = a2[2];
      v18 = *a2;
      __dst = a1[40];
      swift::Demangle::__runtime::NodeFactory::pushCheckpoint(__dst, &v62);
      v19 = *v10;
      if (v19)
      {
        v20 = v8 + v18 + v19 - v17;
      }

      else
      {
        v20 = 0;
      }

      if (v19)
      {
        v21 = v16;
      }

      else
      {
        v21 = 0;
      }

      swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(a1, v20, v21, &v59);
      v22 = a1[40];
      v66 = v59;
      v67 = v60;
      LOBYTE(v65) = 1;
      v23 = *(v22 + 2256);
      if (!v23)
      {
LABEL_66:
        std::__throw_bad_function_call[abi:nn200100]();
LABEL_67:
        std::string::__throw_length_error[abi:nn200100]();
      }

      v24 = (*(*v23 + 48))(v23, &v66, &v65);
      v65 = a1[40];
      swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v65, v24, 0, 1, v25, &v66);
      if (v67 == 1)
      {
        (*(&v66 + 1))(v66, 3, 0);
      }

      else if (!v67)
      {
        v13 = v66;
        goto LABEL_5;
      }

      v13 = 0;
LABEL_5:
      v64 = v13;
      v66 = v62;
      v67 = v63;
      swift::Demangle::__runtime::NodeFactory::popCheckpoint(__dst, &v66, v11, v12);
LABEL_6:
      std::vector<swift::reflection::TypeRef const*>::push_back[abi:nn200100](a3, &v64);
      ++v10;
      ++v8;
      v9 -= 4;
      v7 -= 4;
      if (!v7)
      {
        v5 = a2[2];
        v26 = *v5;
        v27 = v5[1];
        if (!v27)
        {
          goto LABEL_65;
        }

LABEL_24:
        v28 = 0;
        v29 = &v5[v26];
        v30 = -16 - v29;
        v56 = 8 * v27;
        v57 = v29;
        v31 = v29 + 4;
        while (2)
        {
          v33 = a2[2];
          v34 = *a2;
          v35 = *(a2 + 8);
          v36 = v31[v28 / 4 - 1];
          if (v36)
          {
            v37 = v30 + 4 == v36;
          }

          else
          {
            v37 = 1;
          }

          if (v37)
          {
            v38 = 0;
          }

          else
          {
            __dst = a1[40];
            swift::Demangle::__runtime::NodeFactory::pushCheckpoint(__dst, &v62);
            v39 = v31[v28 / 4 - 1];
            if (v39)
            {
              v40 = &v57[v28 / 4 + 3] + v34 + v39 - v33;
            }

            else
            {
              v40 = 0;
            }

            if (v39)
            {
              v41 = v35;
            }

            else
            {
              v41 = 0;
            }

            swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(a1, v40, v41, &v59);
            v42 = a1[40];
            v66 = v59;
            v67 = v60;
            LOBYTE(v65) = 1;
            v43 = *(v42 + 2256);
            if (!v43)
            {
              goto LABEL_66;
            }

            v44 = (*(*v43 + 48))(v43, &v66, &v65);
            v65 = a1[40];
            swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v65, v44, 0, 1, v45, &v66);
            if (v67 == 1)
            {
              (*(&v66 + 1))(v66, 3, 0);
            }

            else if (!v67)
            {
              v38 = v66;
              goto LABEL_45;
            }

            v38 = 0;
LABEL_45:
            v66 = v62;
            v67 = v63;
            swift::Demangle::__runtime::NodeFactory::popCheckpoint(__dst, &v66, v46, v47);
          }

          v48 = v31[v28 / 4];
          if (v48)
          {
            v49 = v30 == v48;
          }

          else
          {
            v49 = 1;
          }

          if (v49)
          {
            v32 = 0;
          }

          else
          {
            swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(a1, &v57[v28 / 4 + 4] + v34 + v48 - v33, v35, &__dst);
            SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(*(&v62 + 1), v50);
            if (!SymbolicMangledNameStringRef)
            {
              v54 = 0;
              __dst = 0;
              v62 = 0uLL;
              goto LABEL_60;
            }

            v53 = v52;
            if (v52 >= 0x7FFFFFFFFFFFFFF8)
            {
              goto LABEL_67;
            }

            if (v52 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v62) = v52;
            if (v52)
            {
              memmove(&__dst, SymbolicMangledNameStringRef, v52);
            }

            *(&__dst + v53) = 0;
            if (SHIBYTE(v62) < 0)
            {
              p_dst = __dst;
              v54 = v62;
            }

            else
            {
              v54 = HIBYTE(v62);
LABEL_60:
              p_dst = &__dst;
            }

            *&v66 = p_dst;
            *&v59 = p_dst + v54;
            v32 = swift::reflection::MetadataSource::decode<swift::reflection::MetadataSourceBuilder>((a1 + 37), &v66, &v59);
            if (SHIBYTE(v62) < 0)
            {
              operator delete(__dst);
            }
          }

          __dst = v38;
          *&v62 = v32;
          std::vector<std::pair<swift::reflection::TypeRef const*,swift::reflection::MetadataSource const*>>::push_back[abi:nn200100](a3 + 24, &__dst);
          v28 += 8;
          v30 -= 8;
          if (v56 == v28)
          {
            v5 = a2[2];
            goto LABEL_65;
          }

          continue;
        }
      }
    }
  }

  v26 = 0;
  v27 = v5[1];
  if (v27)
  {
    goto LABEL_24;
  }

LABEL_65:
  *(a3 + 48) = v5[2];
}

void std::vector<std::pair<swift::reflection::TypeRef const*,swift::reflection::MetadataSource const*>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
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

double swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::dumpTypeRef(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = *(a1 + 320);
  swift::Demangle::__runtime::NodeFactory::pushCheckpoint(v44, &v45);
  v6 = *(a1 + 320);
  *v37 = *a2;
  *&v37[16] = *(a2 + 16);
  LOBYTE(__p[0]) = 1;
  v7 = *(v6 + 2256);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    goto LABEL_41;
  }

  v8 = (*(*v7 + 48))(v7, v37, __p);
  v37[0] = 0;
  *&v37[1] = 0x101010101010101;
  v37[9] = 1;
  *&v37[10] = 0x101010100000000;
  v37[18] = 1;
  *&v37[19] = 256;
  v37[21] = 1;
  v38 = 0;
  v39 = 0;
  v40[0] = off_E0BC8;
  v40[1] = swift::Demangle::__runtime::genericParameterName;
  v41 = v40;
  swift::Demangle::__runtime::nodeToString(v8, v37, v9, __p);
  if (v41 == v40)
  {
    (*(*v41 + 32))(v41);
  }

  else if (v41)
  {
    (*(*v41 + 40))();
  }

  if ((v43 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v43 & 0x80u) == 0)
  {
    v11 = v43;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, v10, v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, "\n", 1);
  __dst = *(a1 + 320);
  swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&__dst, v8, 0, 0, v13, v37);
  if (!*&v37[16])
  {
    v21 = *v37;
LABEL_21:
    swift::reflection::TypeRef::dump(v21, a3, 0);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "\n", 1);
    goto LABEL_35;
  }

  if (*&v37[16] != 1)
  {
    v21 = 0;
    goto LABEL_21;
  }

  v14 = (*&v37[8])(*v37, 0, 0);
  SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(*(a2 + 16), v15);
  v18 = v17;
  v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "!!! Invalid typeref: ", 21);
  if (SymbolicMangledNameStringRef)
  {
    if (v18 < 0x7FFFFFFFFFFFFFF8)
    {
      v20 = v19;
      if (v18 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v36) = v18;
      if (v18)
      {
        memmove(&__dst, SymbolicMangledNameStringRef, v18);
      }

      v19 = v20;
      *(&__dst + v18) = 0;
      v26 = HIBYTE(v36);
      v25 = __dst;
      v24 = v35;
      goto LABEL_26;
    }

LABEL_41:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  __dst = 0;
  v35 = 0;
  v36 = 0;
LABEL_26:
  if ((v26 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = v25;
  }

  if ((v26 & 0x80u) == 0)
  {
    v28 = v26;
  }

  else
  {
    v28 = v24;
  }

  v29 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, p_dst, v28);
  v30 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, " - ", 3);
  v31 = strlen(v14);
  v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, v14, v31);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, "\n", 1);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst);
  }

  (*&v37[8])(*v37, 1, v14);
LABEL_35:
  if (*&v37[16] == 1)
  {
    (*&v37[8])(*v37, 3, 0);
  }

  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  *v37 = v45;
  *&v37[16] = v46;
  *&result = swift::Demangle::__runtime::NodeFactory::popCheckpoint(v44, v37, v22, v23).n128_u64[0];
  return result;
}

void swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::collectFieldTypes(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  v90 = a3;
  *a3 = 0u;
  v4 = *(a1 + 8);
  v88 = *(a1 + 16);
  if (v4 != v88)
  {
    v5 = a1;
    __sb = &v131;
    v120 = &v133;
    v108 = &v130.__r_.__value_.__r.__words[2];
    v109 = &v130.__r_.__value_.__s.__data_[1];
    v115 = v140;
    qmemcpy(v87, "scriptorFieldDes", sizeof(v87));
    v111 = a1;
    do
    {
      *&v130.__r_.__value_.__l.__data_ = *v4;
      v6 = *(v4 + 24);
      v89 = v4;
      v130.__r_.__value_.__r.__words[2] = *(v4 + 16);
      HIBYTE(__p[2]) = 15;
      __p[0] = v87[1];
      *(__p + 7) = v87[0];
      HIBYTE(__p[1]) = 0;
      swift::reflection::ReflectionSectionIteratorBase<swift::reflection::FieldDescriptorIterator,swift::reflection::TargetFieldDescriptor<swift::InProcess>>::ReflectionSectionIteratorBase(v152, &v130, v6, __p);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      while (v155)
      {
        v7 = v3;
        v8 = v152[1];
        v9 = v153;
        v10 = v154;
        __p[0] = *(v5 + 320);
        swift::Demangle::__runtime::NodeFactory::pushCheckpoint(__p[0], &__p[1]);
        v121 = v10;
        v122 = v9;
        v11 = *v10;
        v118 = v8;
        if (v11)
        {
          v12 = v8 + v11;
        }

        else
        {
          v12 = 0;
        }

        if (v11)
        {
          v13 = v9;
        }

        else
        {
          v13 = 0;
        }

        swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(v5, v12, v13, &__str);
        v14 = *(v5 + 320);
        v130 = __str;
        v15 = __str.__r_.__value_.__r.__words[2];
        LOBYTE(v146) = 1;
        v16 = *(v14 + 2256);
        if (!v16)
        {
LABEL_183:
          std::__throw_bad_function_call[abi:nn200100]();
          goto LABEL_184;
        }

        v17 = (*(*v16 + 48))(v16, &v130, &v146);
        v130.__r_.__value_.__s.__data_[0] = 0;
        *v109 = 0x101010101010101;
        v109[8] = 1;
        *(&v130.__r_.__value_.__r.__words[1] + 2) = 0x101010100000000;
        v130.__r_.__value_.__s.__data_[18] = 1;
        *(&v130.__r_.__value_.__r.__words[2] + 3) = 256;
        v130.__r_.__value_.__s.__data_[21] = 1;
        *__sb = 0;
        *(__sb + 1) = 0;
        v133 = off_E0BC8;
        *&v134 = swift::Demangle::__runtime::genericParameterName;
        v135 = v120;
        swift::Demangle::__runtime::nodeToString(v17, &v130, v18, &v149);
        size = v149.__r_.__value_.__l.__size_;
        v96 = v149.__r_.__value_.__r.__words[0];
        v150[0] = v149.__r_.__value_.__r.__words[2];
        *(v150 + 3) = *(&v149.__r_.__value_.__r.__words[2] + 3);
        v97 = SHIBYTE(v149.__r_.__value_.__r.__words[2]);
        *(&v149.__r_.__value_.__s + 23) = 0;
        v149.__r_.__value_.__s.__data_[0] = 0;
        if (v135 == v120)
        {
          ((*v135)[4])(v135);
        }

        else if (v135)
        {
          (*v135)[5]();
        }

        *&v149.__r_.__value_.__l.__data_ = *&__str.__r_.__value_.__l.__data_;
        v149.__r_.__value_.__r.__words[2] = v15;
        swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::normalizeReflectionName(v5, &v149, &v130);
        v22 = v131;
        if (v131)
        {
          v3 = HIBYTE(v130.__r_.__value_.__r.__words[2]);
          __sz = v130.__r_.__value_.__l.__size_;
          __s = v130.__r_.__value_.__r.__words[0];
          v151[0] = *v108;
          *(v151 + 3) = *(v108 + 3);
        }

        else
        {
          __s = (__s & 0xFFFFFFFFFFFFFF00);
          v3 = v7;
        }

        *&v130.__r_.__value_.__l.__data_ = *&__p[1];
        v130.__r_.__value_.__r.__words[2] = v126.__r_.__value_.__r.__words[0];
        swift::Demangle::__runtime::NodeFactory::popCheckpoint(__p[0], &v130, v20, v21);
        if (v22)
        {
          v94 = v3;
          if ((v3 & 0x80) != 0)
          {
            std::string::__init_copy_ctor_external(&v149, __s, __sz);
          }

          else
          {
            v149.__r_.__value_.__r.__words[0] = __s;
            v149.__r_.__value_.__l.__size_ = __sz;
            LODWORD(v149.__r_.__value_.__r.__words[2]) = v151[0];
            *(&v149.__r_.__value_.__r.__words[2] + 3) = *(v151 + 3);
            *(&v149.__r_.__value_.__s + 23) = v3;
          }

          if (*(v93 + 24) == 1)
          {
            v23 = SHIBYTE(v149.__r_.__value_.__r.__words[2]);
            if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v24 = HIBYTE(v149.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v24 = v149.__r_.__value_.__l.__size_;
            }

            v25 = *(v93 + 23);
            v26 = v25;
            if (v25 < 0)
            {
              v25 = v93[1];
            }

            if (v24 != v25 || ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v27 = &v149) : (v27 = v149.__r_.__value_.__r.__words[0]), v26 >= 0 ? (v28 = v93) : (v28 = *v93), memcmp(v27, v28, v24)))
            {
              if (v23 < 0)
              {
                operator delete(v149.__r_.__value_.__l.__data_);
              }

              v3 = v94;
              goto LABEL_176;
            }
          }

          v92 = size;
          v91 = v22;
          v147 = 0;
          v148 = 0;
          v146 = 0;
          v29 = v121[3];
          if (v29)
          {
            v30 = 0;
            v31 = 0;
            v116 = &v121[3 * v29 + 4];
            v117 = 0;
            v32 = v121 + 4;
            while (1)
            {
              v124 = v30;
              v33 = v32 - v121 + v118;
              v34 = v32[2];
              v35 = v34 ? v33 + v34 + 8 : 0;
              v36 = v34 ? v122 : 0;
              swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(v5, v35, v36, &v130);
              SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v130.__r_.__value_.__r.__words[2], v37);
              v40 = v39;
              v41 = (v32 + 1);
              v42 = v32[1];
              if (v42)
              {
                if (v42 != -v41)
                {
                  break;
                }
              }

              if (SymbolicMangledNameStringRef)
              {
                v30 = v124;
                if (v39 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_182;
                }

                if (v39 >= 0x17)
                {
                  operator new();
                }

                *(&v130.__r_.__value_.__s + 23) = v39;
                if (v39)
                {
                  memmove(&v130, SymbolicMangledNameStringRef, v39);
                }

                v130.__r_.__value_.__s.__data_[v40] = 0;
              }

              else
              {
                memset(&v130, 0, sizeof(v130));
                v30 = v124;
              }

              if (v31 < v117)
              {
                v59 = *&v130.__r_.__value_.__l.__data_;
                v31->__r_.__value_.__r.__words[2] = v130.__r_.__value_.__r.__words[2];
                *&v31->__r_.__value_.__l.__data_ = v59;
                ++v31;
                memset(&v130, 0, sizeof(v130));
                goto LABEL_48;
              }

              v60 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3) + 1;
              if (v60 > 0xAAAAAAAAAAAAAAALL)
              {
                goto LABEL_184;
              }

              if (0x5555555555555556 * ((v117 - v30) >> 3) > v60)
              {
                v60 = 0x5555555555555556 * ((v117 - v30) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v117 - v30) >> 3) >= 0x555555555555555)
              {
                v61 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v61 = v60;
              }

              if (v61)
              {
                if (v61 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                std::string::__throw_length_error[abi:nn200100]();
              }

              v69 = (8 * ((v31 - v30) >> 3));
              *v69 = v130;
              memset(&v130, 0, sizeof(v130));
              v70 = (v69 - (v31 - v30));
              if (v30 != v31)
              {
                v71 = v124;
                v72 = v124;
                v73 = v69 - (v31 - v30);
                do
                {
                  v74 = *&v72->__r_.__value_.__l.__data_;
                  *(v73 + 2) = *(&v72->__r_.__value_.__l + 2);
                  *v73 = v74;
                  v73 += 24;
                  v72->__r_.__value_.__l.__size_ = 0;
                  v72->__r_.__value_.__r.__words[2] = 0;
                  v72->__r_.__value_.__r.__words[0] = 0;
                  ++v72;
                }

                while (v72 != v31);
                v75 = v71;
                do
                {
                  if (SHIBYTE(v75->__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v75->__r_.__value_.__l.__data_);
                  }

                  ++v75;
                }

                while (v75 != v31);
              }

              v117 = 0;
              v31 = v69 + 1;
              if (v124)
              {
                operator delete(v124);
              }

              v30 = v70;
              if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
              {
                v68 = v130.__r_.__value_.__r.__words[0];
LABEL_47:
                operator delete(v68);
              }

LABEL_48:
              v32 += 3;
              if (v32 == v116)
              {
                goto LABEL_141;
              }
            }

            __src = SymbolicMangledNameStringRef;
            v43 = strlen((v42 + v41));
            if (v43 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_182;
            }

            v44 = v43;
            if (v43 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v43;
            if (v43)
            {
              memmove(&__dst, (v42 + v41), v43);
            }

            __dst.__r_.__value_.__s.__data_[v44] = 0;
            v45 = *v41;
            if (v45)
            {
              v46 = v33 + v45 + 4;
            }

            else
            {
              v46 = 0;
            }

            if (v45)
            {
              v47 = v122;
            }

            else
            {
              v47 = 0;
            }

            swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(v5, v46, v47, &v144);
            v130 = v144;
            v48 = v144.__r_.__value_.__r.__words[2];
            swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::normalizeReflectionName(v5, &v130, &__str);
            if (v143 == 1)
            {
              std::string::operator=(&__dst, &__str);
            }

            v49 = *(v5 + 320);
            *&v130.__r_.__value_.__l.__data_ = *&v144.__r_.__value_.__l.__data_;
            v130.__r_.__value_.__r.__words[2] = v48;
            LOBYTE(__p[0]) = 1;
            v50 = *(v49 + 2256);
            if (!v50)
            {
              goto LABEL_183;
            }

            v51 = (*(*v50 + 48))(v50, &v130, __p);
            v130.__r_.__value_.__s.__data_[0] = 0;
            *v109 = 0x101010101010101;
            v109[8] = 1;
            *(&v130.__r_.__value_.__r.__words[1] + 2) = 0x101010100000000;
            v130.__r_.__value_.__s.__data_[18] = 1;
            *(&v130.__r_.__value_.__r.__words[2] + 3) = 256;
            v130.__r_.__value_.__s.__data_[21] = 1;
            *__sb = 0;
            *(__sb + 1) = 0;
            v133 = off_E0BC8;
            *&v134 = swift::Demangle::__runtime::genericParameterName;
            v135 = v120;
            swift::Demangle::__runtime::nodeToString(v51, &v130, v52, &v141);
            __len = v40;
            v114 = v48;
            if (v135 == v120)
            {
              ((*v135)[4])(v135);
            }

            else if (v135)
            {
              (*v135)[5]();
            }

            v140[6] = 0;
            v53 = v108;
            v54 = v108 & 0xFFFFFFFFFFFFLL | 0xD08C000000000000;
            v130.__r_.__value_.__r.__words[0] = v107;
            *(v130.__r_.__value_.__r.__words + *(v107 - 24)) = v106;
            v130.__r_.__value_.__l.__size_ = 0;
            v55 = (&v130 + *(v130.__r_.__value_.__r.__words[0] - 24));
            v56 = __sb;
            std::ios_base::init(v55, __sb);
            v57 = v105;
            v55[1].__vftable = 0;
            v55[1].__fmtflags_ = -1;
            v112 = v54;
            v130.__r_.__value_.__r.__words[2] = v57;
            *(v53 + *(v57 - 24)) = v104;
            v130.__r_.__value_.__r.__words[0] = v102;
            *(v130.__r_.__value_.__r.__words + *(v102 - 24)) = v103;
            v130.__r_.__value_.__r.__words[0] = v113;
            std::locale::locale(&v132);
            *(v120 + 1) = 0u;
            *(v120 + 2) = 0u;
            *v120 = 0u;
            v137 = 0u;
            v138 = 0u;
            v139 = 24;
            std::stringbuf::__init_buf_ptrs[abi:nn200100](v56);
            *__p = *&v144.__r_.__value_.__l.__data_;
            __p[2] = v114;
            v5 = v111;
            swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::dumpTypeRef(v111, __p, v53);
            if (__src)
            {
              if (__len > 0x7FFFFFFFFFFFFFF7)
              {
LABEL_182:
                std::string::__throw_length_error[abi:nn200100]();
              }

              if (__len >= 0x17)
              {
                operator new();
              }

              HIBYTE(__p[2]) = __len;
              if (__len)
              {
                memmove(__p, __src, __len);
              }

              *(__p + __len) = 0;
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_107:
                v126 = __dst;
                if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_108:
                  v127 = v141;
LABEL_109:
                  std::stringbuf::str();
                  v62 = v147;
                  if (v147 >= v148)
                  {
                    v147 = std::vector<swift::reflection::PropertyTypeInfo>::__emplace_back_slow_path<swift::reflection::PropertyTypeInfo>(&v146, __p);
                    if (SHIBYTE(v129) < 0)
                    {
                      operator delete(v128);
                      if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
                      {
                        goto LABEL_137;
                      }
                    }

                    else if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
                    {
                      goto LABEL_137;
                    }
                  }

                  else
                  {
                    v63 = *__p;
                    v147[2] = __p[2];
                    *v62 = v63;
                    memset(__p, 0, sizeof(__p));
                    v64 = v126.__r_.__value_.__r.__words[2];
                    *(v62 + 3) = *&v126.__r_.__value_.__l.__data_;
                    v62[5] = v64;
                    *&v126.__r_.__value_.__l.__data_ = 0uLL;
                    v65 = *&v127.__r_.__value_.__l.__data_;
                    v62[8] = v127.__r_.__value_.__r.__words[2];
                    *(v62 + 3) = v65;
                    v126.__r_.__value_.__r.__words[2] = 0;
                    memset(&v127, 0, sizeof(v127));
                    v66 = v128;
                    v62[11] = v129;
                    *(v62 + 9) = v66;
                    v128 = 0uLL;
                    v129 = 0;
                    v147 = v62 + 12;
                    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
                    {
LABEL_137:
                      operator delete(v127.__r_.__value_.__l.__data_);
                      if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
                      {
LABEL_138:
                        operator delete(v126.__r_.__value_.__l.__data_);
                        if (SHIBYTE(__p[2]) < 0)
                        {
LABEL_139:
                          operator delete(__p[0]);
                        }

LABEL_116:
                        v130.__r_.__value_.__r.__words[0] = v101;
                        v67 = v99;
                        *(v130.__r_.__value_.__r.__words + *(v101 - 24)) = v100;
                        v130.__r_.__value_.__r.__words[2] = v67;
                        if (SBYTE7(v138) < 0)
                        {
                          operator delete(v137);
                        }

                        v131 = v58;
                        std::locale::~locale(&v132);
                        std::iostream::~basic_iostream();
                        std::ios::~ios();
                        v30 = v124;
                        if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v141.__r_.__value_.__l.__data_);
                        }

                        if (v143 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__str.__r_.__value_.__l.__data_);
                        }

                        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_48;
                        }

                        v68 = __dst.__r_.__value_.__r.__words[0];
                        goto LABEL_47;
                      }

LABEL_115:
                      if (SHIBYTE(__p[2]) < 0)
                      {
                        goto LABEL_139;
                      }

                      goto LABEL_116;
                    }
                  }

                  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_138;
                  }

                  goto LABEL_115;
                }

LABEL_89:
                std::string::__init_copy_ctor_external(&v127, v141.__r_.__value_.__l.__data_, v141.__r_.__value_.__l.__size_);
                goto LABEL_109;
              }
            }

            else
            {
              memset(__p, 0, sizeof(__p));
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_107;
              }
            }

            std::string::__init_copy_ctor_external(&v126, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_108;
            }

            goto LABEL_89;
          }

          v31 = 0;
          v30 = 0;
LABEL_141:
          if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v130, v149.__r_.__value_.__l.__data_, v149.__r_.__value_.__l.__size_);
          }

          else
          {
            v130 = v149;
          }

          v76 = v97;
          if (v97 < 0)
          {
            std::string::__init_copy_ctor_external(__sb, v96, v92);
          }

          else
          {
            v131 = v96;
            v132.__locale_ = v92;
            *v120 = v150[0];
            *(v120 + 3) = *(v150 + 3);
            HIBYTE(v133) = v76;
          }

          v134 = 0uLL;
          v135 = 0;
          if (v147 != v146)
          {
            if (0xAAAAAAAAAAAAAAABLL * ((v147 - v146) >> 5) < 0x2AAAAAAAAAAAAABLL)
            {
              operator new();
            }

            std::string::__throw_length_error[abi:nn200100]();
          }

          v136 = 0uLL;
          *&v137 = 0;
          if (v31 != v30)
          {
            if (0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3) <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

LABEL_184:
            std::string::__throw_length_error[abi:nn200100]();
          }

          v77 = v90;
          v78 = v90[1];
          if (v78 >= v90[2])
          {
            v81 = std::vector<swift::reflection::FieldMetadata>::__emplace_back_slow_path<swift::reflection::FieldMetadata>(v90, &v130);
            v82 = v136;
            v90[1] = v81;
            if (v82)
            {
              v83 = *(&v136 + 1);
              v84 = v82;
              if (*(&v136 + 1) != v82)
              {
                do
                {
                  v85 = *(v83 - 1);
                  v83 -= 3;
                  if (v85 < 0)
                  {
                    operator delete(*v83);
                  }
                }

                while (v83 != v82);
                v84 = v136;
              }

              *(&v136 + 1) = v82;
              operator delete(v84);
            }
          }

          else
          {
            v79 = *&v130.__r_.__value_.__l.__data_;
            *(v78 + 16) = *(&v130.__r_.__value_.__l + 2);
            *v78 = v79;
            memset(&v130, 0, sizeof(v130));
            v80 = *(__sb + 2);
            *(v78 + 24) = *__sb;
            *(v78 + 40) = v80;
            *(v78 + 48) = 0;
            *(__sb + 1) = 0;
            *(__sb + 2) = 0;
            *__sb = 0;
            *(v78 + 56) = 0;
            *(v78 + 64) = 0;
            *(v78 + 48) = v134;
            v134 = 0uLL;
            *(v78 + 64) = v135;
            *(v78 + 72) = 0;
            *(v78 + 80) = 0;
            *(v78 + 88) = 0;
            *(v78 + 72) = v136;
            *(v78 + 88) = v137;
            v135 = 0;
            v136 = 0uLL;
            *&v137 = 0;
            v77[1] = v78 + 96;
          }

          std::vector<swift::reflection::PropertyTypeInfo>::~vector[abi:nn200100](&v134);
          if (SHIBYTE(v133) < 0)
          {
            operator delete(v131);
          }

          v3 = v94;
          if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v130.__r_.__value_.__l.__data_);
            if (!v30)
            {
LABEL_173:
              std::vector<swift::reflection::PropertyTypeInfo>::~vector[abi:nn200100](&v146);
              if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v149.__r_.__value_.__l.__data_);
              }

              v22 = v91;
              goto LABEL_176;
            }
          }

          else if (!v30)
          {
            goto LABEL_173;
          }

          while (v31 != v30)
          {
            v86 = SHIBYTE(v31[-1].__r_.__value_.__r.__words[2]);
            --v31;
            if (v86 < 0)
            {
              operator delete(v31->__r_.__value_.__l.__data_);
            }
          }

          operator delete(v30);
          goto LABEL_173;
        }

LABEL_176:
        if (v97 < 0)
        {
          operator delete(v96);
        }

        if (v22)
        {
          if ((v3 & 0x80) != 0)
          {
            operator delete(__s);
          }
        }

        swift::reflection::ReflectionSectionIteratorBase<swift::reflection::FieldDescriptorIterator,swift::reflection::TargetFieldDescriptor<swift::InProcess>>::operator++(v152);
      }

      if (v157 < 0)
      {
        operator delete(v156);
      }

      v4 = v89 + 288;
    }

    while (v89 + 288 != v88);
  }
}

void ***std::vector<swift::reflection::PropertyTypeInfo>::~vector[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_14:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        if ((*(v3 - 25) & 0x80000000) == 0)
        {
LABEL_7:
          if (*(v3 - 49) < 0)
          {
            goto LABEL_12;
          }

          goto LABEL_8;
        }
      }

      else if ((*(v3 - 25) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v3 - 6));
      if (*(v3 - 49) < 0)
      {
LABEL_12:
        operator delete(*(v3 - 9));
      }

LABEL_8:
      v5 = v3 - 12;
      if (*(v3 - 73) < 0)
      {
        operator delete(*v5);
      }

      v3 -= 12;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_14;
      }
    }
  }

  return a1;
}

void swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::dumpFieldSection(uint64_t a1, void *a2)
{
  LOBYTE(v33) = 0;
  v34 = 0;
  swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::collectFieldTypes(a1, &v33, &v35);
  v3 = v35;
  v4 = v36;
  if (v35 != v36)
  {
    do
    {
      v5 = *(v3 + 47);
      if (v5 >= 0)
      {
        v6 = (v3 + 3);
      }

      else
      {
        v6 = v3[3];
      }

      if (v5 >= 0)
      {
        v7 = *(v3 + 47);
      }

      else
      {
        v7 = v3[4];
      }

      v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v6, v7);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "\n", 1);
      v9 = 0;
      v10 = *(v3 + 47);
      if ((v10 & 0x8000000000000000) != 0)
      {
LABEL_11:
        v10 = v3[4];
      }

      while (v9 < v10)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "-", 1);
        ++v9;
        v10 = *(v3 + 47);
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_11;
        }
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n", 1);
      v11 = v3[6];
      v12 = v3[7];
      if (v11 != v12)
      {
        v13 = v11 + 72;
        do
        {
          v14 = *(v13 - 49);
          if (v14 >= 0)
          {
            v15 = v13 - 72;
          }

          else
          {
            v15 = *(v13 - 72);
          }

          if (v14 >= 0)
          {
            v16 = *(v13 - 49);
          }

          else
          {
            v16 = *(v13 - 64);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v15, v16);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, ": ", 2);
          v17 = *(v13 + 23);
          if (v17 >= 0)
          {
            v18 = v13;
          }

          else
          {
            v18 = *v13;
          }

          if (v17 >= 0)
          {
            v19 = *(v13 + 23);
          }

          else
          {
            v19 = *(v13 + 8);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v18, v19);
          v20 = v13 + 24;
          v13 += 96;
        }

        while (v20 != v12);
      }

      v21 = v3[9];
      for (i = v3[10]; v21 != i; v21 += 24)
      {
        v23 = *(v21 + 23);
        if (v23 >= 0)
        {
          v24 = v21;
        }

        else
        {
          v24 = *v21;
        }

        if (v23 >= 0)
        {
          v25 = *(v21 + 23);
        }

        else
        {
          v25 = *(v21 + 8);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v24, v25);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n\n", 2);
      }

      v3 += 12;
    }

    while (v3 != v4);
  }

  v26 = __p;
  if (__p)
  {
    v27 = v38;
    v28 = __p;
    if (v38 != __p)
    {
      do
      {
        v29 = *(v27 - 1);
        v27 -= 3;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v26);
      v28 = __p;
    }

    v38 = v26;
    operator delete(v28);
  }

  v30 = v35;
  if (v35)
  {
    v31 = v36;
    v32 = v35;
    if (v36 != v35)
    {
      do
      {
        v31 -= 96;
        std::allocator<swift::reflection::FieldMetadata>::destroy[abi:nn200100](&v35, v31);
      }

      while (v31 != v30);
      v32 = v35;
    }

    v36 = v30;
    operator delete(v32);
  }
}

void swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::dumpBuiltinTypeSection(void *a1, void *a2)
{
  v2 = a1[1];
  v34 = a1[2];
  if (v2 != v34)
  {
    qmemcpy(v33, "scriptorBuiltinTypeDescr", sizeof(v33));
    do
    {
      *v36 = *(v2 + 64);
      v5 = *(v2 + 88);
      v35 = v2;
      *&v36[16] = *(v2 + 80);
      __p[23] = 21;
      *__p = *&v33[1];
      *&__p[13] = v33[0];
      __p[21] = 0;
      swift::reflection::ReflectionSectionIteratorBase<swift::reflection::BuiltinTypeDescriptorIterator,swift::reflection::BuiltinTypeDescriptor>::ReflectionSectionIteratorBase(v45, v36, v5, __p);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      while (v48)
      {
        v6 = v45[1];
        v7 = v46;
        v8 = v47;
        *__p = a1[40];
        swift::Demangle::__runtime::NodeFactory::pushCheckpoint(*__p, &__p[8]);
        v9 = a1[40];
        v10 = *v8;
        if (v10)
        {
          v11 = v6 + v10;
        }

        else
        {
          v11 = 0;
        }

        if (v10)
        {
          v12 = v7;
        }

        else
        {
          v12 = 0;
        }

        swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(a1, v11, v12, v41);
        *v36 = *v41;
        *&v36[16] = v42;
        v51[0] = 1;
        v13 = *(v9 + 2256);
        if (!v13)
        {
          v32 = std::__throw_bad_function_call[abi:nn200100]();
          swift::reflection::ClosureContextInfo::dump(v32);
          return;
        }

        v14 = (*(*v13 + 48))(v13, v36, v51);
        v36[0] = 0;
        *&v36[1] = 0x101010101010101;
        v36[9] = 1;
        *&v36[10] = 0x101010100000000;
        v36[18] = 1;
        *&v36[19] = 256;
        v36[21] = 1;
        v37 = 0;
        v38 = 0;
        v39[0] = off_E0BC8;
        v39[1] = swift::Demangle::__runtime::genericParameterName;
        v40 = v39;
        swift::Demangle::__runtime::nodeToString(v14, v36, v15, v41);
        if (v40 == v39)
        {
          (*(*v40 + 32))(v40);
        }

        else if (v40)
        {
          (*(*v40 + 40))();
        }

        v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n- ", 3);
        if (v42 >= 0)
        {
          v17 = v41;
        }

        else
        {
          v17 = v41[0];
        }

        if (v42 >= 0)
        {
          v18 = HIBYTE(v42);
        }

        else
        {
          v18 = v41[1];
        }

        v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, v17, v18);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, ":\n", 2);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "Size: ", 6);
        v20 = v8[1];
        v21 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, "\n", 1);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "Alignment: ", 11);
        v22 = *(v8 + 4);
        v23 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, ":\n", 2);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "Stride: ", 8);
        v24 = v8[3];
        v25 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, ":\n", 2);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "NumExtraInhabitants: ", 21);
        v26 = v8[4];
        v27 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v27, ":\n", 2);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "BitwiseTakable: ", 16);
        v28 = v8[2];
        v29 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, ":\n", 2);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41[0]);
        }

        *v36 = *&__p[8];
        *&v36[16] = v44;
        swift::Demangle::__runtime::NodeFactory::popCheckpoint(*__p, v36, v30, v31);
        swift::reflection::ReflectionSectionIteratorBase<swift::reflection::BuiltinTypeDescriptorIterator,swift::reflection::BuiltinTypeDescriptor>::operator++(v45);
      }

      if (v50 < 0)
      {
        operator delete(v49);
      }

      v2 = v35 + 288;
    }

    while (v35 + 288 != v34);
  }
}

void *swift::reflection::ClosureContextInfo::dump(uint64_t **a1, void *a2)
{
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "- Capture types:\n", 17);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      if (*v4)
      {
        swift::reflection::TypeRef::dump(*v4, a2, 0);
      }

      else
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "!!! Invalid typeref\n", 20);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "- Metadata sources:\n", 20);
  v6 = a1[3];
  for (i = a1[4]; v6 != i; v6 += 2)
  {
    v8 = v6[1];
    if (*v6)
    {
      swift::reflection::TypeRef::dump(*v6, a2, 0);
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "!!! Invalid typeref\n", 20);
      if (!v8)
      {
LABEL_15:
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "!!! Invalid metadata source\n", 28);
        continue;
      }
    }

    swift::reflection::MetadataSource::dump(v8, a2, 0);
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n", 1);
}

void swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::dumpCaptureSection(void *a1, void *a2)
{
  v2 = a1[1];
  for (i = a1[2]; v2 != i; v2 += 288)
  {
    *v7 = *(v2 + 96);
    v6 = *(v2 + 120);
    v8 = *(v2 + 112);
    BYTE7(v17[1]) = 17;
    strcpy(v17, "CaptureDescriptor");
    swift::reflection::ReflectionSectionIteratorBase<swift::reflection::CaptureDescriptorIterator,swift::reflection::CaptureDescriptor>::ReflectionSectionIteratorBase(v11, v7, v6, v17);
    if (SBYTE7(v17[1]) < 0)
    {
      operator delete(*&v17[0]);
    }

    while (v14)
    {
      *&v17[0] = v11[1];
      *(&v17[0] + 1) = v12;
      *&v17[1] = v13;
      swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getClosureContextInfo(a1, v17, v7);
      swift::reflection::ClosureContextInfo::dump(v7, a2);
      if (__p)
      {
        v10 = __p;
        operator delete(__p);
      }

      if (v7[0])
      {
        v7[1] = v7[0];
        operator delete(v7[0]);
      }

      swift::reflection::ReflectionSectionIteratorBase<swift::reflection::CaptureDescriptorIterator,swift::reflection::CaptureDescriptor>::operator++(v11);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }
}

void swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::dumpMultiPayloadEnumSection(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v42 = *(a1 + 16);
  if (v2 != v42)
  {
    v4 = a2 + 3;
    v5 = a2 + 1;
    v6 = "\n";
    do
    {
      *v45 = *(v2 + 224);
      v7 = *(v2 + 248);
      v43 = v2;
      *&v45[16] = *(v2 + 240);
      HIBYTE(__p[2]) = 16;
      strcpy(__p, "MultiPayloadEnum");
      swift::reflection::ReflectionSectionIteratorBase<swift::reflection::MultiPayloadEnumDescriptorIterator,swift::reflection::MultiPayloadEnumDescriptor>::ReflectionSectionIteratorBase(v53, v45, v7, __p);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      while (v56)
      {
        v10 = v6;
        v11 = v53[1];
        v12 = v54;
        v13 = v55;
        __p[0] = *(a1 + 320);
        swift::Demangle::__runtime::NodeFactory::pushCheckpoint(__p[0], &__p[1]);
        v14 = *(a1 + 320);
        v15 = *v13;
        if (v15)
        {
          v16 = v11 + v15;
        }

        else
        {
          v16 = 0;
        }

        if (v15)
        {
          v17 = v12;
        }

        else
        {
          v17 = 0;
        }

        swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef(a1, v16, v17, v50);
        *v45 = *v50;
        *&v45[16] = v51;
        v59[0] = 1;
        v18 = *(v14 + 2256);
        if (!v18)
        {
          v41 = std::__throw_bad_function_call[abi:nn200100]();
          swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::~ReflectionTypeDescriptorFinder(v41);
          return;
        }

        v19 = (*(*v18 + 48))(v18, v45, v59);
        v45[0] = 0;
        *&v45[1] = 0x101010101010101;
        v45[9] = 1;
        *&v45[10] = 0x101010100000000;
        v45[18] = 1;
        *&v45[19] = 256;
        v45[21] = 1;
        v46 = 0;
        v47 = 0;
        v48[0] = off_E0BC8;
        v48[1] = swift::Demangle::__runtime::genericParameterName;
        v49 = v48;
        swift::Demangle::__runtime::nodeToString(v19, v45, v20, v50);
        if (v49 == v48)
        {
          (*(*v49 + 32))(v49);
        }

        else if (v49)
        {
          (*(*v49 + 40))();
        }

        v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n- ", 3);
        if (v51 >= 0)
        {
          v22 = v50;
        }

        else
        {
          v22 = v50[0];
        }

        if (v51 >= 0)
        {
          v23 = HIBYTE(v51);
        }

        else
        {
          v23 = v50[1];
        }

        v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, v22, v23);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, ":\n", 2);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "  Descriptor Size: ", 19);
        v25 = 4 * *(v13 + 3);
        v26 = std::ostream::operator<<();
        v6 = v10;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, v10, 1);
        v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "  Flags: ", 9);
        *(v27 + *(*v27 - 24) + 8) = *(v27 + *(*v27 - 24) + 8) & 0xFFFFFFB5 | 8;
        v29 = v13 + 1;
        v28 = *(v13 + 2);
        v30 = std::ostream::operator<<();
        *(v30 + *(*v30 - 24) + 8) = *(v30 + *(*v30 - 24) + 8) & 0xFFFFFFB5 | 2;
        if (v13[1])
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, " usesPayloadSpareBits", 21);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v10, 1);
        if (*v29)
        {
          v31 = v13[2];
          v32 = v31;
          if (v31)
          {
            if (v31 >= 0x10000)
            {
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "  Spare bit mask: (offset ", 26);
              v33 = std::ostream::operator<<();
              v34 = " bytes) 0x";
              v35 = 10;
            }

            else
            {
              v33 = a2;
              v34 = "  Spare bit mask: 0x";
              v35 = 20;
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, v34, v35);
            if (*v29)
            {
              v36 = &v29[(*v29 & 1) + 1];
            }

            else
            {
              v36 = 0;
            }

            do
            {
              v38 = *a2;
              *(v5 + *(*a2 - 24)) = *(v5 + *(*a2 - 24)) & 0xFFFFFFB5 | 8;
              *(v4 + *(v38 - 24)) = 2;
              v39 = a2 + *(v38 - 24);
              if (*(v39 + 36) == -1)
              {
                std::ios_base::getloc((a2 + *(v38 - 24)));
                v40 = std::locale::use_facet(v45, &std::ctype<char>::id);
                (v40->__vftable[2].~facet_0)(v40, 32);
                std::locale::~locale(v45);
              }

              *(v39 + 36) = 48;
              v37 = *v36++;
              std::ostream::operator<<();
              --v32;
            }

            while (v32);
            *(v5 + *(*a2 - 24)) = *(v5 + *(*a2 - 24)) & 0xFFFFFFB5 | 2;
            v6 = v10;
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v10, 1);
          }
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, v6, 1);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50[0]);
        }

        *v45 = *&__p[1];
        *&v45[16] = __p[3];
        swift::Demangle::__runtime::NodeFactory::popCheckpoint(__p[0], v45, v8, v9);
        swift::reflection::ReflectionSectionIteratorBase<swift::reflection::MultiPayloadEnumDescriptorIterator,swift::reflection::MultiPayloadEnumDescriptor>::operator++(v53);
      }

      if (v58 < 0)
      {
        operator delete(v57);
      }

      v2 = v43 + 288;
    }

    while (v43 + 288 != v42);
  }
}

void std::allocator<swift::reflection::FieldMetadata>::destroy[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    v4 = *(a2 + 80);
    v5 = *(a2 + 72);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(a2 + 72);
    }

    *(a2 + 80) = v3;
    operator delete(v5);
  }

  std::vector<swift::reflection::PropertyTypeInfo>::~vector[abi:nn200100]((a2 + 48));
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a2 + 23) & 0x80000000) == 0)
  {
    return;
  }

  v7 = *a2;

  operator delete(v7);
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findReflectionInfoWithTypeRefContainingAddress(swift::remote::RemoteAddress)::$_0 &,unsigned int *,false>(unint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v244 = *(a2 - 1);
        v245 = *v10;
        v246 = *(*a3 + 8);
        v247 = v246 + 288 * v244;
        v248 = *(v247 + 128);
        LODWORD(v247) = *(v247 + 136);
        v249 = v246 + 288 * *v10;
        v250 = *(v249 + 128);
        LODWORD(v249) = *(v249 + 136);
        v251 = v248 < v250;
        v252 = v249 == v247;
        v253 = v249 > v247;
        if (v252)
        {
          v253 = v251;
        }

        if (v253)
        {
          *v10 = v244;
          *(a2 - 1) = v245;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findReflectionInfoWithTypeRefContainingAddress(swift::remote::RemoteAddress)::$_0 &,unsigned int *,0>(v10, v10 + 1, v10 + 2, a2 - 1, a3);
    }

    if (v11 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findReflectionInfoWithTypeRefContainingAddress(swift::remote::RemoteAddress)::$_0 &,unsigned int *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v271 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v272 = 0;
            v273 = *(*a3 + 8);
            v274 = v10;
            do
            {
              v277 = *v274;
              v276 = v274[1];
              v274 = v271;
              v278 = v273 + 288 * v276;
              v281 = *(v278 + 128);
              v279 = v278 + 128;
              v280 = v281;
              v282 = *(v279 + 8);
              v283 = v273 + 288 * v277;
              v284 = *(v283 + 128);
              LODWORD(v283) = *(v283 + 136);
              result = v281 < v284;
              v252 = v283 == v282;
              v285 = v283 > v282;
              if (v252)
              {
                v285 = result;
              }

              if (v285)
              {
                v286 = v272;
                do
                {
                  *(v10 + v286 + 4) = v277;
                  if (!v286)
                  {
                    v275 = v10;
                    goto LABEL_190;
                  }

                  v277 = *(v10 + v286 - 4);
                  v287 = *(v279 + 8);
                  v288 = v273 + 288 * v277;
                  v289 = *(v288 + 128);
                  result = *(v288 + 136);
                  v290 = v280 < v289;
                  v252 = result == v287;
                  v291 = result > v287;
                  if (v252)
                  {
                    v291 = v290;
                  }

                  v286 -= 4;
                }

                while (v291);
                v275 = (v10 + v286 + 4);
LABEL_190:
                *v275 = v276;
              }

              v271 = v274 + 1;
              v272 += 4;
            }

            while (v274 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v376 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v377 = *(*a3 + 8);
          do
          {
            v379 = *v9;
            v378 = v9[1];
            v9 = v376;
            v380 = v377 + 288 * v378;
            v383 = *(v380 + 128);
            v381 = v380 + 128;
            v382 = v383;
            v384 = *(v381 + 8);
            v385 = v377 + 288 * v379;
            v386 = *(v385 + 128);
            LODWORD(v385) = *(v385 + 136);
            v387 = v383 < v386;
            v252 = v385 == v384;
            v388 = v385 > v384;
            if (v252)
            {
              v388 = v387;
            }

            if (v388)
            {
              v389 = v9;
              do
              {
                *v389 = v379;
                v379 = *(v389 - 2);
                v390 = *(v381 + 8);
                v391 = v377 + 288 * v379;
                v392 = *(v391 + 128);
                LODWORD(v391) = *(v391 + 136);
                v393 = v382 < v392;
                v252 = v391 == v390;
                v394 = v391 > v390;
                if (v252)
                {
                  v394 = v393;
                }

                --v389;
              }

              while (v394);
              *v389 = v378;
            }

            v376 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v292 = (v11 - 2) >> 1;
        v293 = *a3;
        v294 = v292;
        do
        {
          v295 = v294;
          if (v292 >= v294)
          {
            v296 = (2 * v294) | 1;
            v297 = &v10[v296];
            v298 = *v297;
            if (2 * v295 + 2 >= v11)
            {
              v299 = *(v293 + 8);
            }

            else
            {
              v299 = *(v293 + 8);
              v300 = v299 + 288 * v298;
              v301 = *(v300 + 128);
              LODWORD(v300) = *(v300 + 136);
              v302 = v299 + 288 * v297[1];
              v303 = *(v302 + 128);
              LODWORD(v302) = *(v302 + 136);
              v304 = v301 < v303;
              v252 = v302 == v300;
              v305 = v302 > v300;
              if (v252)
              {
                v305 = v304;
              }

              if (v305)
              {
                v298 = v297[1];
                ++v297;
                v296 = 2 * v295 + 2;
              }
            }

            v306 = &v10[v295];
            v307 = *v306;
            v308 = v299 + 288 * v298;
            v309 = *(v308 + 128);
            v310 = *(v308 + 136);
            v311 = v299 + 288 * *v306;
            v314 = *(v311 + 128);
            v312 = v311 + 128;
            v313 = v314;
            v315 = *(v312 + 8);
            v316 = v309 < v314;
            v252 = v315 == v310;
            v317 = v315 > v310;
            if (!v252)
            {
              v316 = v317;
            }

            if (!v316)
            {
              do
              {
                v329 = v297;
                *v306 = v298;
                if (v292 < v296)
                {
                  break;
                }

                v330 = (2 * v296) | 1;
                v297 = &v10[v330];
                v296 = 2 * v296 + 2;
                v298 = *v297;
                if (v296 < v11)
                {
                  v318 = v299 + 288 * v298;
                  v319 = *(v318 + 128);
                  LODWORD(v318) = *(v318 + 136);
                  v320 = v299 + 288 * v297[1];
                  v321 = *(v320 + 128);
                  LODWORD(v320) = *(v320 + 136);
                  v322 = v319 < v321;
                  v252 = v320 == v318;
                  v323 = v320 > v318;
                  if (v252)
                  {
                    v323 = v322;
                  }

                  if (v323)
                  {
                    v298 = v297[1];
                    ++v297;
                  }

                  else
                  {
                    v296 = v330;
                  }
                }

                else
                {
                  v296 = v330;
                }

                v324 = v299 + 288 * v298;
                v325 = *(v324 + 128);
                LODWORD(v324) = *(v324 + 136);
                v326 = *(v312 + 8);
                v327 = v325 < v313;
                v252 = v326 == v324;
                v328 = v326 > v324;
                if (!v252)
                {
                  v327 = v328;
                }

                v306 = v329;
              }

              while (!v327);
              *v329 = v307;
            }
          }

          v294 = v295 - 1;
        }

        while (v295);
        do
        {
          v332 = 0;
          v333 = *v10;
          v334 = *a3;
          v335 = v10;
          do
          {
            result = &v335[v332];
            v346 = (result + 4);
            v345 = *(result + 4);
            v347 = (2 * v332) | 1;
            v332 = 2 * v332 + 2;
            if (v332 < v11)
            {
              v337 = *(result + 8);
              result += 8;
              v336 = v337;
              v338 = *(v334 + 8);
              v339 = v338 + 288 * v345;
              v340 = *(v339 + 128);
              LODWORD(v339) = *(v339 + 136);
              v341 = v338 + 288 * v337;
              v342 = *(v341 + 128);
              LODWORD(v341) = *(v341 + 136);
              v343 = v340 < v342;
              v252 = v341 == v339;
              v344 = v341 > v339;
              if (v252)
              {
                v344 = v343;
              }

              if (v344)
              {
                v345 = v336;
                v346 = result;
              }

              else
              {
                v332 = v347;
              }
            }

            else
            {
              v332 = v347;
            }

            *v335 = v345;
            v335 = v346;
          }

          while (v332 <= ((v11 - 2) >> 1));
          if (v346 == --a2)
          {
            *v346 = v333;
          }

          else
          {
            *v346 = *a2;
            *a2 = v333;
            v348 = (v346 - v10 + 4) >> 2;
            v331 = v348 < 2;
            v349 = v348 - 2;
            if (!v331)
            {
              v350 = v349 >> 1;
              v351 = &v10[v350];
              v352 = *v351;
              v353 = *v346;
              v354 = *(v334 + 8);
              v355 = v354 + 288 * *v351;
              result = *(v355 + 128);
              v356 = *(v355 + 136);
              v357 = v354 + 288 * *v346;
              v360 = *(v357 + 128);
              v358 = v357 + 128;
              v359 = v360;
              v361 = *(v358 + 8);
              LODWORD(result) = result < v360;
              v252 = v361 == v356;
              v362 = v361 > v356;
              result = v252 ? result : v362;
              if (result == 1)
              {
                do
                {
                  result = v351;
                  *v346 = v352;
                  if (!v350)
                  {
                    break;
                  }

                  v350 = (v350 - 1) >> 1;
                  v351 = &v10[v350];
                  v352 = *v351;
                  v363 = v354 + 288 * *v351;
                  v364 = *(v363 + 128);
                  LODWORD(v363) = *(v363 + 136);
                  v365 = *(v358 + 8);
                  v366 = v364 < v359;
                  v252 = v365 == v363;
                  v367 = v365 > v363;
                  if (!v252)
                  {
                    v366 = v367;
                  }

                  v346 = result;
                }

                while (v366);
                *result = v353;
              }
            }
          }

          v331 = v11-- <= 2;
        }

        while (!v331);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(*a3 + 8);
    v15 = *(a2 - 1);
    v16 = v14 + 288 * v15;
    v17 = *(v16 + 128);
    v18 = *(v16 + 136);
    if (v11 >= 0x81)
    {
      v19 = *v12;
      v20 = *v10;
      v21 = v14 + 288 * *v12;
      v22 = *(v21 + 128);
      v23 = v14 + 288 * *v10;
      v26 = *(v23 + 128);
      v24 = v23 + 128;
      v25 = v26;
      v27 = *(v21 + 136);
      v28 = *(v24 + 8);
      v29 = v22 < v26;
      v252 = v28 == v27;
      v30 = v28 > v27;
      if (v252)
      {
        v30 = v29;
      }

      v31 = v17 < v22;
      v252 = v27 == v18;
      v32 = v27 > v18;
      if (v252)
      {
        v32 = v31;
      }

      if (v30)
      {
        if (v32)
        {
          *v10 = v15;
          goto LABEL_41;
        }

        *v10 = v19;
        *v12 = v20;
        v60 = *(a2 - 1);
        v61 = v14 + 288 * v60;
        v62 = *(v61 + 128);
        LODWORD(v61) = *(v61 + 136);
        v63 = *(v24 + 8);
        v64 = v62 < v25;
        v252 = v63 == v61;
        v65 = v63 > v61;
        if (v252)
        {
          v65 = v64;
        }

        if (v65)
        {
          *v12 = v60;
LABEL_41:
          *(a2 - 1) = v20;
        }
      }

      else if (v32)
      {
        *v12 = v15;
        *(a2 - 1) = v19;
        v46 = *v10;
        v47 = v14 + 288 * *v12;
        v48 = *(v47 + 128);
        LODWORD(v47) = *(v47 + 136);
        v49 = v14 + 288 * *v10;
        v50 = *(v49 + 128);
        LODWORD(v49) = *(v49 + 136);
        v51 = v48 < v50;
        v252 = v49 == v47;
        v52 = v49 > v47;
        if (v252)
        {
          v52 = v51;
        }

        if (v52)
        {
          *v10 = *v12;
          *v12 = v46;
        }
      }

      v66 = v12 - 1;
      v67 = *(v12 - 1);
      v68 = v10[1];
      v69 = v14 + 288 * v67;
      v70 = *(v69 + 128);
      v71 = *(v69 + 136);
      v72 = v14 + 288 * v68;
      v75 = *(v72 + 128);
      v73 = v72 + 128;
      v74 = v75;
      v76 = *(v73 + 8);
      v77 = v70 < v75;
      v252 = v76 == v71;
      v78 = v76 > v71;
      if (!v252)
      {
        v77 = v78;
      }

      v79 = *(a2 - 2);
      v80 = v14 + 288 * v79;
      v81 = *(v80 + 128);
      LODWORD(v80) = *(v80 + 136);
      v82 = v81 < v70;
      v252 = v71 == v80;
      v83 = v71 > v80;
      if (!v252)
      {
        v82 = v83;
      }

      if (v77)
      {
        if (v82)
        {
          v10[1] = v79;
          goto LABEL_63;
        }

        v10[1] = v67;
        *v66 = v68;
        v97 = *(a2 - 2);
        v98 = v14 + 288 * v97;
        v99 = *(v98 + 128);
        LODWORD(v98) = *(v98 + 136);
        v100 = *(v73 + 8);
        v101 = v99 < v74;
        v252 = v100 == v98;
        v102 = v100 > v98;
        if (v252)
        {
          v102 = v101;
        }

        if (v102)
        {
          *v66 = v97;
LABEL_63:
          *(a2 - 2) = v68;
        }
      }

      else if (v82)
      {
        *v66 = v79;
        *(a2 - 2) = v67;
        v84 = v10[1];
        v85 = v14 + 288 * *v66;
        v86 = *(v85 + 128);
        LODWORD(v85) = *(v85 + 136);
        v87 = v14 + 288 * v84;
        v88 = *(v87 + 128);
        LODWORD(v87) = *(v87 + 136);
        v89 = v86 < v88;
        v252 = v87 == v85;
        v90 = v87 > v85;
        if (v252)
        {
          v90 = v89;
        }

        if (v90)
        {
          v10[1] = *v66;
          *v66 = v84;
        }
      }

      v105 = v12[1];
      v103 = v12 + 1;
      v104 = v105;
      v106 = v10[2];
      v107 = v14 + 288 * v105;
      v108 = *(v107 + 128);
      v109 = *(v107 + 136);
      v110 = v14 + 288 * v106;
      v113 = *(v110 + 128);
      v111 = v110 + 128;
      v112 = v113;
      v114 = *(v111 + 8);
      v115 = v108 < v113;
      v252 = v114 == v109;
      v116 = v114 > v109;
      if (!v252)
      {
        v115 = v116;
      }

      v117 = *(a2 - 3);
      v118 = v14 + 288 * v117;
      v119 = *(v118 + 128);
      LODWORD(v118) = *(v118 + 136);
      v120 = v119 < v108;
      v252 = v109 == v118;
      v121 = v109 > v118;
      if (!v252)
      {
        v120 = v121;
      }

      if (v115)
      {
        if (v120)
        {
          v10[2] = v117;
          goto LABEL_80;
        }

        v10[2] = v104;
        *v103 = v106;
        v129 = *(a2 - 3);
        v130 = v14 + 288 * v129;
        v131 = *(v130 + 128);
        LODWORD(v130) = *(v130 + 136);
        v132 = *(v111 + 8);
        v133 = v131 < v112;
        v252 = v132 == v130;
        v134 = v132 > v130;
        if (v252)
        {
          v134 = v133;
        }

        if (v134)
        {
          *v103 = v129;
LABEL_80:
          *(a2 - 3) = v106;
        }
      }

      else if (v120)
      {
        *v103 = v117;
        *(a2 - 3) = v104;
        v122 = v10[2];
        v123 = v14 + 288 * *v103;
        v124 = *(v123 + 128);
        LODWORD(v123) = *(v123 + 136);
        v125 = v14 + 288 * v122;
        v126 = *(v125 + 128);
        LODWORD(v125) = *(v125 + 136);
        v127 = v124 < v126;
        v252 = v125 == v123;
        v128 = v125 > v123;
        if (v252)
        {
          v128 = v127;
        }

        if (v128)
        {
          v10[2] = *v103;
          *v103 = v122;
        }
      }

      v135 = *v13;
      v136 = *v66;
      v137 = v14 + 288 * *v13;
      v138 = *(v137 + 128);
      v139 = *(v137 + 136);
      v140 = v14 + 288 * *v66;
      v143 = *(v140 + 128);
      v141 = v140 + 128;
      v142 = v143;
      LODWORD(v137) = *(v141 + 8);
      v144 = v138 < v143;
      v252 = v137 == v139;
      v145 = v137 > v139;
      if (v252)
      {
        v146 = v144;
      }

      else
      {
        v146 = v145;
      }

      v147 = *v103;
      v148 = v14 + 288 * *v103;
      v150 = *(v148 + 128);
      result = v148 + 128;
      v149 = v150;
      v151 = *(result + 8);
      v152 = v150 < v138;
      v252 = v139 == v151;
      v153 = v139 > v151;
      if (!v252)
      {
        v152 = v153;
      }

      if (v146)
      {
        if (!v152)
        {
          *v66 = v135;
          *v13 = v136;
          v154 = *(result + 8);
          v155 = *(v141 + 8);
          v156 = v149 < v142;
          v252 = v155 == v154;
          v157 = v155 > v154;
          if (!v252)
          {
            v156 = v157;
          }

          v66 = v13;
          v135 = v147;
          if (!v156)
          {
            v135 = v136;
LABEL_97:
            v162 = *v10;
            *v10 = v135;
            *v13 = v162;
            goto LABEL_98;
          }
        }
      }

      else
      {
        if (!v152)
        {
          goto LABEL_97;
        }

        *v13 = v147;
        *v103 = v135;
        v158 = *(result + 8);
        v159 = *(v141 + 8);
        v160 = v149 < v142;
        v252 = v159 == v158;
        v161 = v159 > v158;
        if (!v252)
        {
          v160 = v161;
        }

        v103 = v13;
        v135 = v136;
        if (!v160)
        {
          v135 = v147;
          goto LABEL_97;
        }
      }

      *v66 = v147;
      *v103 = v136;
      goto LABEL_97;
    }

    v33 = *v10;
    v34 = *v13;
    v35 = v14 + 288 * *v10;
    result = *(v35 + 128);
    v36 = v14 + 288 * *v13;
    v39 = *(v36 + 128);
    v37 = v36 + 128;
    v38 = v39;
    v40 = *(v35 + 136);
    v41 = *(v37 + 8);
    v42 = result < v39;
    v252 = v41 == v40;
    v43 = v41 > v40;
    if (v252)
    {
      v43 = v42;
    }

    v44 = v17 < result;
    v252 = v40 == v18;
    v45 = v40 > v18;
    if (v252)
    {
      v45 = v44;
    }

    if (v43)
    {
      if (v45)
      {
        *v13 = v15;
LABEL_58:
        *(a2 - 1) = v34;
        goto LABEL_98;
      }

      *v13 = v33;
      *v10 = v34;
      v91 = *(a2 - 1);
      v92 = v14 + 288 * v91;
      v93 = *(v92 + 128);
      LODWORD(v92) = *(v92 + 136);
      v94 = *(v37 + 8);
      v95 = v93 < v38;
      v252 = v94 == v92;
      v96 = v94 > v92;
      if (v252)
      {
        v96 = v95;
      }

      if (v96)
      {
        *v10 = v91;
        goto LABEL_58;
      }
    }

    else if (v45)
    {
      *v10 = v15;
      *(a2 - 1) = v33;
      v53 = *v13;
      v54 = v14 + 288 * *v10;
      v55 = *(v54 + 128);
      LODWORD(v54) = *(v54 + 136);
      v56 = v14 + 288 * *v13;
      v57 = *(v56 + 128);
      LODWORD(v56) = *(v56 + 136);
      v58 = v55 < v57;
      v252 = v56 == v54;
      v59 = v56 > v54;
      if (v252)
      {
        v59 = v58;
      }

      if (v59)
      {
        *v13 = *v10;
        *v10 = v53;
      }
    }

LABEL_98:
    --a4;
    v163 = *v10;
    if (a5)
    {
      v164 = v14 + 288 * v163;
      v165 = *(v164 + 128);
      v166 = *(v164 + 136);
      goto LABEL_103;
    }

    v167 = v14 + 288 * *(v10 - 1);
    v168 = *(v167 + 128);
    v169 = *(v167 + 136);
    v170 = v14 + 288 * v163;
    v172 = *(v170 + 128);
    v171 = v170 + 128;
    v165 = v172;
    v166 = *(v171 + 8);
    v173 = v168 < v172;
    v252 = v166 == v169;
    v174 = v166 > v169;
    if (!v252)
    {
      v173 = v174;
    }

    if (v173)
    {
LABEL_103:
      v175 = 0;
      do
      {
        v176 = v10[v175 + 1];
        v177 = v14 + 288 * v176;
        v178 = *(v177 + 128);
        LODWORD(v177) = *(v177 + 136);
        v179 = v178 < v165;
        v252 = v166 == v177;
        v180 = v166 > v177;
        if (v252)
        {
          v180 = v179;
        }

        ++v175;
      }

      while (v180);
      v181 = &v10[v175];
      v182 = a2;
      if (v175 == 1)
      {
        v182 = a2;
        do
        {
          if (v181 >= v182)
          {
            break;
          }

          v188 = *--v182;
          v189 = v14 + 288 * v188;
          v190 = *(v189 + 128);
          LODWORD(v189) = *(v189 + 136);
          v191 = v190 < v165;
          v252 = v166 == v189;
          v192 = v166 > v189;
          if (v252)
          {
            v192 = v191;
          }
        }

        while (!v192);
      }

      else
      {
        do
        {
          v183 = *--v182;
          v184 = v14 + 288 * v183;
          v185 = *(v184 + 128);
          LODWORD(v184) = *(v184 + 136);
          v186 = v185 < v165;
          v252 = v166 == v184;
          v187 = v166 > v184;
          if (v252)
          {
            v187 = v186;
          }
        }

        while (!v187);
      }

      if (v181 >= v182)
      {
        v208 = v181 - 1;
        if (v181 - 1 == v10)
        {
          goto LABEL_131;
        }

LABEL_130:
        *v10 = *v208;
        goto LABEL_131;
      }

      v193 = *v182;
      v194 = v176;
      v195 = v181;
      v196 = v182;
      do
      {
        *v195 = v193;
        *v196 = v194;
        v197 = *(v14 + 288 * v163 + 136);
        do
        {
          v198 = v195[1];
          ++v195;
          v194 = v198;
          v199 = v14 + 288 * v198;
          v200 = *(v199 + 128);
          LODWORD(v199) = *(v199 + 136);
          v201 = v200 < v165;
          v252 = v197 == v199;
          v202 = v197 > v199;
          if (v252)
          {
            v202 = v201;
          }
        }

        while (v202);
        do
        {
          v203 = *--v196;
          v193 = v203;
          v204 = v14 + 288 * v203;
          v205 = *(v204 + 128);
          LODWORD(v204) = *(v204 + 136);
          v206 = v205 < v165;
          v252 = v197 == v204;
          v207 = v197 > v204;
          if (v252)
          {
            v207 = v206;
          }
        }

        while (!v207);
      }

      while (v195 < v196);
      v208 = v195 - 1;
      if (v195 - 1 != v10)
      {
        goto LABEL_130;
      }

LABEL_131:
      *v208 = v163;
      if (v181 < v182)
      {
        goto LABEL_134;
      }

      v209 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findReflectionInfoWithTypeRefContainingAddress(swift::remote::RemoteAddress)::$_0 &,unsigned int *>(v10, v208, a3);
      v10 = v208 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findReflectionInfoWithTypeRefContainingAddress(swift::remote::RemoteAddress)::$_0 &,unsigned int *>(v208 + 1, a2, a3);
      if (result)
      {
        a2 = v208;
        if (!v209)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v209)
      {
LABEL_134:
        result = std::__introsort<std::_ClassicAlgPolicy,swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findReflectionInfoWithTypeRefContainingAddress(swift::remote::RemoteAddress)::$_0 &,unsigned int *,false>(v9, v208, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v208 + 1;
      }
    }

    else
    {
      v210 = v14 + 288 * *(a2 - 1);
      v211 = *(v210 + 128);
      LODWORD(v210) = *(v210 + 136);
      v212 = v165 < v211;
      v252 = v210 == v166;
      v213 = v210 > v166;
      if (v252)
      {
        v213 = v212;
      }

      if (v213)
      {
        do
        {
          v214 = v10[1];
          ++v10;
          v215 = v14 + 288 * v214;
          v216 = *(v215 + 128);
          LODWORD(v215) = *(v215 + 136);
          v217 = v165 < v216;
          v252 = v215 == v166;
          v218 = v215 > v166;
          if (v252)
          {
            v218 = v217;
          }
        }

        while (!v218);
      }

      else
      {
        v219 = v10 + 1;
        do
        {
          v10 = v219;
          if (v219 >= a2)
          {
            break;
          }

          ++v219;
          v220 = v14 + 288 * *v10;
          v221 = *(v220 + 128);
          LODWORD(v220) = *(v220 + 136);
          v222 = v165 < v221;
          v252 = v220 == v166;
          v223 = v220 > v166;
          if (v252)
          {
            v223 = v222;
          }
        }

        while (!v223);
      }

      v224 = a2;
      if (v10 < a2)
      {
        v224 = a2;
        do
        {
          v225 = *--v224;
          v226 = v14 + 288 * v225;
          v227 = *(v226 + 128);
          LODWORD(v226) = *(v226 + 136);
          v228 = v165 < v227;
          v252 = v226 == v166;
          v229 = v226 > v166;
          if (v252)
          {
            v229 = v228;
          }
        }

        while (v229);
      }

      if (v10 < v224)
      {
        v230 = *v10;
        v231 = *v224;
        do
        {
          *v10 = v231;
          *v224 = v230;
          v232 = *(v171 + 8);
          do
          {
            v233 = v10[1];
            ++v10;
            v230 = v233;
            v234 = v14 + 288 * v233;
            v235 = *(v234 + 128);
            LODWORD(v234) = *(v234 + 136);
            v236 = v165 < v235;
            v252 = v234 == v232;
            v237 = v234 > v232;
            if (v252)
            {
              v237 = v236;
            }
          }

          while (!v237);
          do
          {
            v238 = *--v224;
            v231 = v238;
            v239 = v14 + 288 * v238;
            v240 = *(v239 + 128);
            LODWORD(v239) = *(v239 + 136);
            v241 = v165 < v240;
            v252 = v239 == v232;
            v242 = v239 > v232;
            if (v252)
            {
              v242 = v241;
            }
          }

          while (v242);
        }

        while (v10 < v224);
      }

      v243 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v243;
      }

      a5 = 0;
      *v243 = v163;
    }
  }

  v254 = *v10;
  v255 = v10[1];
  v256 = *(*a3 + 8);
  v257 = v256 + 288 * v255;
  v258 = *(v257 + 128);
  v259 = *(v257 + 136);
  v260 = v256 + 288 * *v10;
  v263 = *(v260 + 128);
  v261 = v260 + 128;
  v262 = v263;
  v264 = *(v261 + 8);
  v265 = v258 < v263;
  v252 = v264 == v259;
  v266 = v264 > v259;
  if (!v252)
  {
    v265 = v266;
  }

  v267 = *(a2 - 1);
  v268 = v256 + 288 * v267;
  result = *(v268 + 128);
  LODWORD(v268) = *(v268 + 136);
  v269 = result < v258;
  v252 = v259 == v268;
  v270 = v259 > v268;
  if (v252)
  {
    v270 = v269;
  }

  if (v265)
  {
    if (v270)
    {
      *v10 = v267;
    }

    else
    {
      *v10 = v255;
      v10[1] = v254;
      v395 = *(a2 - 1);
      v396 = v256 + 288 * v395;
      v397 = *(v396 + 128);
      LODWORD(v396) = *(v396 + 136);
      v398 = *(v261 + 8);
      v399 = v397 < v262;
      v252 = v398 == v396;
      v400 = v398 > v396;
      if (v252)
      {
        v400 = v399;
      }

      if (!v400)
      {
        return result;
      }

      v10[1] = v395;
    }

    *(a2 - 1) = v254;
    return result;
  }

  if (v270)
  {
    v10[1] = v267;
    *(a2 - 1) = v255;
    v369 = *v10;
    v368 = v10[1];
    v370 = v256 + 288 * v368;
    v371 = *(v370 + 128);
    LODWORD(v370) = *(v370 + 136);
    v372 = v256 + 288 * *v10;
    v373 = *(v372 + 128);
    LODWORD(v372) = *(v372 + 136);
    v374 = v371 < v373;
    v252 = v372 == v370;
    v375 = v372 > v370;
    if (v252)
    {
      v375 = v374;
    }

    if (v375)
    {
      *v10 = v368;
      v10[1] = v369;
    }
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findReflectionInfoWithTypeRefContainingAddress(swift::remote::RemoteAddress)::$_0 &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a5 + 8);
  v8 = v7 + 288 * *a2;
  v9 = *(v8 + 128);
  v10 = *(v8 + 136);
  v11 = v7 + 288 * *result;
  v14 = *(v11 + 128);
  v12 = v11 + 128;
  v13 = v14;
  LODWORD(v8) = *(v12 + 8);
  v15 = v9 < v14;
  v16 = v8 == v10;
  v17 = v8 > v10;
  if (!v16)
  {
    v15 = v17;
  }

  v18 = *a3;
  v19 = v7 + 288 * *a3;
  v20 = *(v19 + 128);
  LODWORD(v19) = *(v19 + 136);
  v21 = v20 < v9;
  v16 = v10 == v19;
  v22 = v10 > v19;
  if (v16)
  {
    v22 = v21;
  }

  if (v15)
  {
    if (v22)
    {
      *result = v18;
LABEL_17:
      *a3 = v6;
      goto LABEL_18;
    }

    *result = v5;
    *a2 = v6;
    v18 = *a3;
    v30 = v7 + 288 * *a3;
    v31 = *(v30 + 128);
    LODWORD(v30) = *(v30 + 136);
    v32 = *(v12 + 8);
    v33 = v31 < v13;
    v16 = v32 == v30;
    v34 = v32 > v30;
    if (v16)
    {
      v34 = v33;
    }

    if (v34)
    {
      *a2 = v18;
      goto LABEL_17;
    }

    v6 = *a3;
  }

  else if (v22)
  {
    *a2 = v18;
    *a3 = v5;
    v23 = *result;
    v24 = v7 + 288 * *a2;
    v25 = *(v24 + 128);
    LODWORD(v24) = *(v24 + 136);
    v26 = v7 + 288 * *result;
    v27 = *(v26 + 128);
    LODWORD(v26) = *(v26 + 136);
    v28 = v25 < v27;
    v16 = v26 == v24;
    v29 = v26 > v24;
    if (v16)
    {
      v29 = v28;
    }

    if (v29)
    {
      *result = *a2;
      *a2 = v23;
      v6 = *a3;
LABEL_18:
      v18 = v6;
      goto LABEL_22;
    }

    v6 = v5;
    v18 = v5;
  }

  else
  {
    v6 = *a3;
  }

LABEL_22:
  v35 = v7 + 288 * *a4;
  v36 = *(v35 + 128);
  LODWORD(v35) = *(v35 + 136);
  v37 = v7 + 288 * v6;
  v38 = *(v37 + 128);
  LODWORD(v37) = *(v37 + 136);
  v39 = v36 < v38;
  v16 = v37 == v35;
  v40 = v37 > v35;
  if (v16)
  {
    v40 = v39;
  }

  if (v40)
  {
    *a3 = *a4;
    *a4 = v18;
    v41 = *a2;
    v42 = v7 + 288 * *a3;
    v43 = *(v42 + 128);
    LODWORD(v42) = *(v42 + 136);
    v44 = v7 + 288 * *a2;
    v45 = *(v44 + 128);
    LODWORD(v44) = *(v44 + 136);
    v46 = v43 < v45;
    v16 = v44 == v42;
    v47 = v44 > v42;
    if (v16)
    {
      v47 = v46;
    }

    if (v47)
    {
      *a2 = *a3;
      *a3 = v41;
      v48 = *result;
      v49 = v7 + 288 * *a2;
      v50 = *(v49 + 128);
      LODWORD(v49) = *(v49 + 136);
      v51 = v7 + 288 * *result;
      v52 = *(v51 + 128);
      LODWORD(v51) = *(v51 + 136);
      v53 = v50 < v52;
      v16 = v51 == v49;
      v54 = v51 > v49;
      if (v16)
      {
        v54 = v53;
      }

      if (v54)
      {
        *result = *a2;
        *a2 = v48;
      }
    }
  }

  return result;
}

unsigned int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findReflectionInfoWithTypeRefContainingAddress(swift::remote::RemoteAddress)::$_0 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findReflectionInfoWithTypeRefContainingAddress(swift::remote::RemoteAddress)::$_0 &,unsigned int *,0>(a1, a2, a3, a4, a6);
  v13 = *a4;
  v14 = *(*a6 + 8);
  v15 = v14 + 288 * *a5;
  v16 = *(v15 + 128);
  LODWORD(v15) = *(v15 + 136);
  v17 = v14 + 288 * *a4;
  v18 = *(v17 + 128);
  LODWORD(v17) = *(v17 + 136);
  v19 = v16 < v18;
  v20 = v17 == v15;
  v21 = v17 > v15;
  if (v20)
  {
    v21 = v19;
  }

  if (v21)
  {
    *a4 = *a5;
    *a5 = v13;
    v22 = *a3;
    v23 = v14 + 288 * *a4;
    v24 = *(v23 + 128);
    LODWORD(v23) = *(v23 + 136);
    v25 = v14 + 288 * *a3;
    v26 = *(v25 + 128);
    LODWORD(v25) = *(v25 + 136);
    v27 = v24 < v26;
    v20 = v25 == v23;
    v28 = v25 > v23;
    if (v20)
    {
      v28 = v27;
    }

    if (v28)
    {
      *a3 = *a4;
      *a4 = v22;
      v29 = *a2;
      v30 = v14 + 288 * *a3;
      v31 = *(v30 + 128);
      LODWORD(v30) = *(v30 + 136);
      v32 = v14 + 288 * *a2;
      v33 = *(v32 + 128);
      LODWORD(v32) = *(v32 + 136);
      v34 = v31 < v33;
      v20 = v32 == v30;
      v35 = v32 > v30;
      if (v20)
      {
        v35 = v34;
      }

      if (v35)
      {
        *a2 = *a3;
        *a3 = v29;
        v36 = *a1;
        v37 = v14 + 288 * *a2;
        v38 = *(v37 + 128);
        LODWORD(v37) = *(v37 + 136);
        v39 = v14 + 288 * *a1;
        v40 = *(v39 + 128);
        LODWORD(v39) = *(v39 + 136);
        v41 = v38 < v40;
        v20 = v39 == v37;
        v42 = v39 > v37;
        if (v20)
        {
          v42 = v41;
        }

        if (v42)
        {
          *a1 = *a2;
          *a2 = v36;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findReflectionInfoWithTypeRefContainingAddress(swift::remote::RemoteAddress)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v14 = *a1;
        v15 = a1[1];
        v16 = *(*a3 + 8);
        v17 = v16 + 288 * v15;
        v18 = *(v17 + 128);
        v19 = *(v17 + 136);
        v20 = v16 + 288 * *a1;
        v23 = *(v20 + 128);
        v21 = v20 + 128;
        v22 = v23;
        v24 = *(v21 + 8);
        v25 = v18 < v23;
        v12 = v24 == v19;
        v26 = v24 > v19;
        if (!v12)
        {
          v25 = v26;
        }

        v27 = *(a2 - 1);
        v28 = v16 + 288 * v27;
        v29 = *(v28 + 128);
        LODWORD(v28) = *(v28 + 136);
        v30 = v29 < v18;
        v12 = v19 == v28;
        v31 = v19 > v28;
        if (v12)
        {
          v31 = v30;
        }

        if (!v25)
        {
          if (v31)
          {
            a1[1] = v27;
            *(a2 - 1) = v15;
            v63 = *a1;
            v62 = a1[1];
            v64 = v16 + 288 * v62;
            v65 = *(v64 + 128);
            LODWORD(v64) = *(v64 + 136);
            v66 = v16 + 288 * *a1;
            v67 = *(v66 + 128);
            LODWORD(v66) = *(v66 + 136);
            v68 = v65 < v67;
            v12 = v66 == v64;
            v69 = v66 > v64;
            if (v12)
            {
              v69 = v68;
            }

            if (v69)
            {
              *a1 = v62;
              a1[1] = v63;
            }
          }

          return 1;
        }

        if (v31)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v15;
          a1[1] = v14;
          v97 = *(a2 - 1);
          v98 = v16 + 288 * v97;
          v99 = *(v98 + 128);
          LODWORD(v98) = *(v98 + 136);
          v100 = *(v21 + 8);
          v101 = v99 < v22;
          v12 = v100 == v98;
          v102 = v100 > v98;
          if (v12)
          {
            v102 = v101;
          }

          if (!v102)
          {
            return 1;
          }

          a1[1] = v97;
        }

        *(a2 - 1) = v14;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findReflectionInfoWithTypeRefContainingAddress(swift::remote::RemoteAddress)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        break;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::findReflectionInfoWithTypeRefContainingAddress(swift::remote::RemoteAddress)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    v6 = *(*a3 + 8);
    v7 = v6 + 288 * v4;
    v8 = *(v7 + 128);
    LODWORD(v7) = *(v7 + 136);
    v9 = v6 + 288 * *a1;
    v10 = *(v9 + 128);
    LODWORD(v9) = *(v9 + 136);
    v11 = v8 < v10;
    v12 = v9 == v7;
    v13 = v9 > v7;
    if (v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_19:
  v32 = a1 + 2;
  v33 = a1[2];
  v34 = a1[1];
  v35 = *a1;
  v36 = *(*a3 + 8);
  v37 = v36 + 288 * v34;
  v38 = *(v37 + 128);
  v39 = *(v37 + 136);
  v40 = v36 + 288 * *a1;
  v43 = *(v40 + 128);
  v41 = v40 + 128;
  v42 = v43;
  v44 = *(v41 + 8);
  v45 = v38 < v43;
  v12 = v44 == v39;
  v46 = v44 > v39;
  if (v12)
  {
    v47 = v45;
  }

  else
  {
    v47 = v46;
  }

  v48 = v36 + 288 * v33;
  v51 = *(v48 + 128);
  v50 = v48 + 128;
  v49 = v51;
  v52 = *(v50 + 8);
  v53 = v51 < v38;
  v12 = v39 == v52;
  v54 = v39 > v52;
  if (v12)
  {
    v55 = v53;
  }

  else
  {
    v55 = v54;
  }

  if (v47)
  {
    v56 = a1;
    v57 = a1 + 2;
    if (!v55)
    {
      *a1 = v34;
      a1[1] = v35;
      v58 = *(v50 + 8);
      v59 = *(v41 + 8);
      v60 = v49 < v42;
      v12 = v59 == v58;
      v61 = v59 > v58;
      if (v12)
      {
        v61 = v60;
      }

      v56 = a1 + 1;
      v57 = a1 + 2;
      if (!v61)
      {
        goto LABEL_42;
      }
    }

LABEL_41:
    *v56 = v33;
    *v57 = v35;
    goto LABEL_42;
  }

  if (v55)
  {
    a1[1] = v33;
    *v32 = v34;
    v70 = *(v50 + 8);
    v71 = *(v41 + 8);
    v72 = v49 < v42;
    v12 = v71 == v70;
    v73 = v71 > v70;
    if (v12)
    {
      v73 = v72;
    }

    v56 = a1;
    v57 = a1 + 1;
    if (v73)
    {
      goto LABEL_41;
    }
  }

LABEL_42:
  v74 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v75 = 0;
  for (i = 12; ; i += 4)
  {
    v78 = *v74;
    v79 = *v32;
    v80 = v36 + 288 * *v74;
    v83 = *(v80 + 128);
    v81 = v80 + 128;
    v82 = v83;
    v84 = *(v81 + 8);
    v85 = v36 + 288 * v79;
    v86 = *(v85 + 128);
    LODWORD(v85) = *(v85 + 136);
    v87 = v83 < v86;
    v12 = v85 == v84;
    v88 = v85 > v84;
    if (v12)
    {
      v88 = v87;
    }

    if (v88)
    {
      v89 = i;
      do
      {
        *(a1 + v89) = v79;
        v90 = v89 - 4;
        if (v89 == 4)
        {
          v77 = a1;
          goto LABEL_45;
        }

        v79 = *(a1 + v89 - 8);
        v91 = *(v81 + 8);
        v92 = v36 + 288 * v79;
        v93 = *(v92 + 128);
        LODWORD(v92) = *(v92 + 136);
        v94 = v82 < v93;
        v12 = v92 == v91;
        v95 = v92 > v91;
        if (v12)
        {
          v96 = v94;
        }

        else
        {
          v96 = v95;
        }

        v89 = v90;
      }

      while (v96);
      v77 = (a1 + v90);
LABEL_45:
      *v77 = v78;
      if (++v75 == 8)
      {
        break;
      }
    }

    v32 = v74++;
    if (v74 == a2)
    {
      return 1;
    }
  }

  return v74 + 1 == a2;
}

uint64_t **std::__hash_table<std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::__unordered_map_hasher<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::hash<swift::remote::RemoteAddress>,std::equal_to<swift::remote::RemoteAddress>,true>,std::__unordered_map_equal<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::equal_to<swift::remote::RemoteAddress>,std::hash<swift::remote::RemoteAddress>,true>,std::allocator<std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>>>::__emplace_unique_key_args<swift::remote::RemoteAddress,std::pair<swift::remote::RemoteAddress,std::optional<std::string>>>(void *a1, uint64_t a2)
{
  v4 = __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(a2, (a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v11 = result[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] <= 1uLL)
    {
      v11 &= *&v6 - 1;
    }

    else if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_20;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_20;
    }
  }

  if (result[2] != *a2 || *(result + 24) != *(a2 + 8))
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::__unordered_map_hasher<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::hash<swift::remote::RemoteAddress>,std::equal_to<swift::remote::RemoteAddress>,true>,std::__unordered_map_equal<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>,std::equal_to<swift::remote::RemoteAddress>,std::hash<swift::remote::RemoteAddress>,true>,std::allocator<std::__hash_value_type<swift::remote::RemoteAddress,std::optional<std::string>>>>::__emplace_unique_key_args<swift::remote::RemoteAddress,std::pair<swift::remote::RemoteAddress,std::string>>(void *a1, uint64_t a2)
{
  v4 = __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(a2, (a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v11 = result[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] <= 1uLL)
    {
      v11 &= *&v6 - 1;
    }

    else if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_20;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_20;
    }
  }

  if (result[2] != *a2 || *(result + 24) != *(a2 + 8))
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t swift::reflection::ReflectionSectionIteratorBase<swift::reflection::AssociatedTypeIterator,swift::reflection::AssociatedTypeDescriptor>::ReflectionSectionIteratorBase(uint64_t result, uint64_t a2, unint64_t a3, __int128 *a4)
{
  *result = a3;
  *(result + 8) = *a2;
  *(result + 24) = *(a2 + 16);
  *(result + 32) = a3;
  if (*(a4 + 23) < 0)
  {
    v7 = result;
    std::string::__init_copy_ctor_external((result + 40), *a4, *(a4 + 1));
    result = v7;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    v6 = *a4;
    *(result + 56) = *(a4 + 2);
    *(result + 40) = v6;
    if (!a3)
    {
      return result;
    }
  }

  v8 = *(result + 24);
  if (v8)
  {
    if ((*(v8 + 12) * *(v8 + 8)) + 16 <= a3)
    {
      return result;
    }

    v9 = result;
    v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "!!! Reflection section too small to contain first record\n", 57);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v21, &std::ctype<char>::id);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
    v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Section Type: ", 14);
    v13 = *(a4 + 23);
    if (v13 >= 0)
    {
      v14 = a4;
    }

    else
    {
      v14 = *a4;
    }

    if (v13 >= 0)
    {
      v15 = *(a4 + 23);
    }

    else
    {
      v15 = *(a4 + 1);
    }

    v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, v14, v15);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&v21, &std::ctype<char>::id);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Section size: ", 14);
    v18 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, ", size of first record: ", 24);
    v19 = std::ostream::operator<<();
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v21, &std::ctype<char>::id);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
    result = v9;
  }

  *(result + 32) = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::TypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::TypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::TypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::TypeRef const*>>>::__emplace_unique_key_args<swift::reflection::TypeRefID,std::pair<swift::reflection::TypeRefID,swift::reflection::TypeRef const*>>(void *a1, char **a2)
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

uint64_t swift::reflection::ReflectionSectionIteratorBase<swift::reflection::FieldDescriptorIterator,swift::reflection::TargetFieldDescriptor<swift::InProcess>>::ReflectionSectionIteratorBase(uint64_t result, uint64_t a2, unint64_t a3, __int128 *a4)
{
  *result = a3;
  *(result + 8) = *a2;
  *(result + 24) = *(a2 + 16);
  *(result + 32) = a3;
  if (*(a4 + 23) < 0)
  {
    v7 = result;
    std::string::__init_copy_ctor_external((result + 40), *a4, *(a4 + 1));
    result = v7;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    v6 = *a4;
    *(result + 56) = *(a4 + 2);
    *(result + 40) = v6;
    if (!a3)
    {
      return result;
    }
  }

  v8 = *(result + 24);
  if (v8)
  {
    if ((*(v8 + 12) * *(v8 + 10)) + 16 <= a3)
    {
      return result;
    }

    v9 = result;
    v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "!!! Reflection section too small to contain first record\n", 57);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v21, &std::ctype<char>::id);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
    v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Section Type: ", 14);
    v13 = *(a4 + 23);
    if (v13 >= 0)
    {
      v14 = a4;
    }

    else
    {
      v14 = *a4;
    }

    if (v13 >= 0)
    {
      v15 = *(a4 + 23);
    }

    else
    {
      v15 = *(a4 + 1);
    }

    v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, v14, v15);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&v21, &std::ctype<char>::id);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Section size: ", 14);
    v18 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, ", size of first record: ", 24);
    v19 = std::ostream::operator<<();
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v21, &std::ctype<char>::id);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
    result = v9;
  }

  *(result + 32) = 0;
  return result;
}

void __swift::__runtime::llvm::SmallVectorTemplateBase<std::string,false>::grow(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a2, 24, &v15);
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = 24 * v5;
    v7 = v3;
    do
    {
      v8 = *v4;
      v7[2] = v4[2];
      *v7 = v8;
      v7 += 3;
      v4[1] = 0;
      v4[2] = 0;
      *v4 = 0;
      v4 += 3;
      v6 -= 24;
    }

    while (v6);
    v4 = *a1;
    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = &v4[3 * v9 - 1] + 7;
      v11 = -24 * v9;
      v12 = v10;
      do
      {
        v13 = *v12;
        v12 -= 24;
        if (v13 < 0)
        {
          operator delete(*(v10 - 23));
        }

        v10 = v12;
        v11 += 24;
      }

      while (v11);
      v4 = *a1;
    }
  }

  v14 = v15;
  if (v4 != (a1 + 16))
  {
    free(v4);
  }

  *a1 = v3;
  *(a1 + 12) = v14;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 <= 0x40)
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = *(a2 + a3 - 8) + v8;
      v16 = __ROR8__(v15 + v14, 52);
      v17 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v18 = *(a2 + a3 - 24) + v14 + v6;
      v19 = v18 + v15;
      v20 = 0x9AE16A3B2F90404FLL;
      v21 = 0xC3A5C85C97CB3127 * (v19 + v17) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + v16 + __ROR8__(v18, 31));
      v22 = v17 - 0x3C5A37A36834CED9 * (v21 ^ (v21 >> 47));
      return (v22 ^ (v22 >> 47)) * v20;
    }

    v29 = *(a2 + a3 - 48);
    v30 = *(a2 + a3 - 40);
    v31 = *(a2 + a3 - 24);
    v32 = *(a2 + a3 - 56);
    v33 = *(a2 + a3 - 16);
    v34 = *(a2 + a3 - 8);
    v35 = v32 + v33;
    v36 = 0x9DDFEA08EB382D69 * (v31 ^ ((0x9DDFEA08EB382D69 * (v31 ^ (v29 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v31 ^ (v29 + a3))));
    v37 = 0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47));
    v38 = *(a2 + a3 - 64) + a3;
    v39 = v38 + v32 + v29;
    v40 = __ROR8__(v39, 44) + v38;
    v41 = __ROR8__(v30 + v38 + v37, 21);
    v42 = v39 + v30;
    v43 = v40 + v41;
    v44 = v35 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
    v45 = v44 + v31 + v33;
    v46 = v45 + v34;
    v47 = __ROR8__(v45, 44) + v44 + __ROR8__(v44 + v30 + v34, 21);
    v49 = *a2;
    v48 = a2 + 4;
    v50 = v49 - 0x4B6D499041670D8DLL * v30;
    v51 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v52 = *(v48 - 3);
      v53 = v50 + v42 + v35 + v52;
      v54 = v48[2];
      v55 = v48[3];
      v56 = v48[1];
      v35 = v56 + v42 - 0x4B6D499041670D8DLL * __ROR8__(v35 + v43 + v54, 42);
      v57 = v37 + v46;
      v58 = *(v48 - 2);
      v59 = *(v48 - 1);
      v60 = *(v48 - 4) - 0x4B6D499041670D8DLL * v43;
      v61 = v60 + v46 + v59;
      v62 = v60 + v52 + v58;
      v42 = v62 + v59;
      v63 = __ROR8__(v62, 44) + v60;
      v64 = (0xB492B66FBE98F273 * __ROR8__(v53, 37)) ^ v47;
      v50 = 0xB492B66FBE98F273 * __ROR8__(v57, 33);
      v43 = v63 + __ROR8__(v61 + v64, 21);
      v65 = v50 + v47 + *v48;
      v46 = v65 + v56 + v54 + v55;
      v47 = __ROR8__(v65 + v56 + v54, 44) + v65 + __ROR8__(v35 + v58 + v65 + v55, 21);
      v48 += 8;
      v37 = v64;
      v51 += 64;
    }

    while (v51);
    v66 = v64 - 0x4B6D499041670D8DLL * (v35 ^ (v35 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v46 ^ ((0x9DDFEA08EB382D69 * (v46 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v46 ^ v42)))) ^ ((0x9DDFEA08EB382D69 * (v46 ^ ((0x9DDFEA08EB382D69 * (v46 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v46 ^ v42)))) >> 47));
    v67 = v50 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v47 ^ ((0x9DDFEA08EB382D69 * (v47 ^ v43)) >> 47) ^ (0x9DDFEA08EB382D69 * (v47 ^ v43)))) ^ ((0x9DDFEA08EB382D69 * (v47 ^ ((0x9DDFEA08EB382D69 * (v47 ^ v43)) >> 47) ^ (0x9DDFEA08EB382D69 * (v47 ^ v43)))) >> 47));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v67 ^ ((0x9DDFEA08EB382D69 * (v67 ^ v66)) >> 47) ^ (0x9DDFEA08EB382D69 * (v67 ^ v66)))) ^ ((0x9DDFEA08EB382D69 * (v67 ^ ((0x9DDFEA08EB382D69 * (v67 ^ v66)) >> 47) ^ (0x9DDFEA08EB382D69 * (v67 ^ v66)))) >> 47));
  }

  else
  {
    if (a3 > 0x10)
    {
      v23 = a2[1];
      v24 = 0xB492B66FBE98F273 * *a2;
      v25 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v24 - v23, 43);
      v26 = v24 + a3 + __ROR8__(v23 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
      v20 = 0x9DDFEA08EB382D69;
      v27 = 0x9DDFEA08EB382D69 * ((v25 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v26);
      v28 = v26 ^ (v27 >> 47) ^ v27;
LABEL_8:
      v22 = 0x9DDFEA08EB382D69 * v28;
      return (v22 ^ (v22 >> 47)) * v20;
    }

    if (a3 >= 9)
    {
      v3 = *(a2 + a3 - 8);
      v4 = __ROR8__(v3 + a3, a3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
    }

    if (a3 >= 4)
    {
      v68 = *(a2 + a3 - 4);
      v20 = 0x9DDFEA08EB382D69;
      v69 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v68);
      v28 = v68 ^ (v69 >> 47) ^ v69;
      goto LABEL_8;
    }

    result = 0x9AE16A3B2F90404FLL;
    if (a3)
    {
      v70 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v70 ^ (v70 >> 47));
    }
  }

  return result;
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<unsigned long,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<unsigned long>,__swift::__runtime::llvm::detail::DenseSetPair<unsigned long>>,unsigned long,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<unsigned long>,__swift::__runtime::llvm::detail::DenseSetPair<unsigned long>>::try_emplace<__swift::__runtime::llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = v4 - 1;
    v7 = (37 * *a2) & (v4 - 1);
    v8 = (*result + 8 * v7);
    v9 = *v8;
    if (*a2 == *v8)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_10;
    }

    v12 = 0;
    v13 = 1;
    while (v9 != -1)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -2;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  v18 = v8;
  v11 = *(result + 8);
  if (4 * v11 + 4 >= 3 * v4)
  {
    v4 *= 2;
    goto LABEL_24;
  }

  if (v4 + ~v11 - *(result + 12) <= v4 >> 3)
  {
LABEL_24:
    v16 = result;
    v17 = a3;
    __swift::__runtime::llvm::DenseMap<unsigned long,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<unsigned long>,__swift::__runtime::llvm::detail::DenseSetPair<unsigned long>>::grow(result, v4);
    __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<unsigned long,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<unsigned long>,__swift::__runtime::llvm::detail::DenseSetPair<unsigned long>>,unsigned long,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<unsigned long>,__swift::__runtime::llvm::detail::DenseSetPair<unsigned long>>::LookupBucketFor<unsigned long>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v11 = *(v16 + 8);
    v8 = v18;
  }

  *(result + 8) = v11 + 1;
  if (*v8 != -1)
  {
    --*(result + 12);
  }

  *v8 = *a2;
  v5 = *result;
  v4 = *(result + 16);
  v10 = 1;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<unsigned long,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<unsigned long>,__swift::__runtime::llvm::detail::DenseSetPair<unsigned long>>,unsigned long,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<unsigned long>,__swift::__runtime::llvm::detail::DenseSetPair<unsigned long>>::LookupBucketFor<unsigned long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void __swift::__runtime::llvm::DenseMap<unsigned long,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<unsigned long>,__swift::__runtime::llvm::detail::DenseSetPair<unsigned long>>::grow(uint64_t a1, int a2)
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
  buffer = __swift::__runtime::llvm::allocate_buffer(8 * v8, 8uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = buffer;
      memset(buffer, 255, 8 * v10);
      buffer = v11;
    }

    if (v3)
    {
      v12 = 0;
      v13 = v10 - 1;
      v14 = v4;
      do
      {
        v17 = *v14;
        if (*v14 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v18 = (37 * v17) & v13;
          v16 = &buffer[8 * v18];
          v19 = *v16;
          if (v17 != *v16)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -1)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -2;
              }

              if (v22)
              {
                v20 = v16;
              }

              v23 = v18 + v21++;
              v18 = v23 & v13;
              v16 = &buffer[8 * (v23 & v13)];
              v19 = *v16;
              if (v17 == *v16)
              {
                goto LABEL_16;
              }
            }

            if (v20)
            {
              v16 = v20;
            }
          }

LABEL_16:
          *v16 = v17;
          *(a1 + 8) = ++v12;
        }

        v14 = (v14 + 8);
      }

      while (v14 != (v4 + 8 * v3));
    }

    __swift::__runtime::llvm::deallocate_buffer(v4, (8 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v15 = *(a1 + 16);
    if (v15)
    {

      memset(buffer, 255, 8 * v15);
    }
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::TargetFieldDescriptor<swift::InProcess>>>>>::find<std::string>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v21, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = v2[23];
    if (v14 >= 0)
    {
      v15 = v2[23];
    }

    else
    {
      v15 = *(v2 + 1);
    }

    if (v14 < 0)
    {
      v2 = *v2;
    }

    do
    {
      v16 = v13[1];
      if (v16 == v8)
      {
        v17 = *(v13 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v13[3];
        }

        if (v17 == v15)
        {
          v19 = v18 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v19, v2, v15))
          {
            return v13;
          }
        }
      }

      else
      {
        if (v10 <= 1)
        {
          v16 &= *&v7 - 1;
        }

        else if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

uint64_t anonymous namespace::FieldDescriptorImpl::demangleSuperclass(_anonymous_namespace_::FieldDescriptorImpl *this)
{
  v1 = *(this + 5);
  v2 = *(*(this + 4) + 4);
  if (v2)
  {
    v3 = *(this + 2) + 4 + v2;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = *(this + 24);
  }

  else
  {
    v4 = 0;
  }

  swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef((v1 + 1888), v3, v4, &v8);
  v10 = v8;
  v11 = v9;
  v12 = 1;
  v5 = *(v1 + 2256);
  if (v5)
  {
    return (*(*v5 + 48))(v5, &v10, &v12);
  }

  v7 = std::__throw_bad_function_call[abi:nn200100]();
}

uint64_t anonymous namespace::FieldDescriptorImpl::getFieldRecords@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 32);
  if (*(v3 + 12))
  {
    v4 = *(this + 40);
    v5 = v3 + 16 + *(this + 16) - *(this + 32);
    v6 = *(this + 24);
    operator new();
  }

  *a2 = 0;
  return this;
}

_BYTE *anonymous namespace::FieldRecordImpl::getFieldName(_anonymous_namespace_::FieldRecordImpl *this)
{
  v1 = *(*(this + 4) + 8);
  if (v1)
  {
    v2 = *(this + 2) + 8 + v1;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = *(this + 24);
  }

  else
  {
    v3 = 0;
  }

  swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef((*(this + 5) + 1888), v2, v3, v7);
  v5 = v8;

  return swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v5, v4);
}

uint64_t anonymous namespace::FieldRecordImpl::getDemangledTypeName(_anonymous_namespace_::FieldRecordImpl *this)
{
  v1 = *(this + 5);
  v2 = *(*(this + 4) + 4);
  if (v2)
  {
    v3 = *(this + 2) + 4 + v2;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = *(this + 24);
  }

  else
  {
    v4 = 0;
  }

  swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef((v1 + 1888), v3, v4, &v9);
  v11 = v9;
  v12 = v10;
  v13 = 1;
  v5 = *(v1 + 2256);
  if (v5)
  {
    return (*(*v5 + 48))(v5, &v11, &v13);
  }

  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return std::vector<swift::reflection::FieldTypeInfo>::__emplace_back_slow_path<swift::reflection::FieldTypeInfo>(v7, v8);
}

uint64_t std::vector<swift::reflection::FieldTypeInfo>::__emplace_back_slow_path<swift::reflection::FieldTypeInfo>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  v7 = 48 * v2 + 48;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 20);
      *(v12 + 24) = v14;
      v11 += 3;
      v12 += 48;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v8 += 48;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t std::vector<swift::reflection::FieldTypeInfo>::__emplace_back_slow_path<swift::reflection::FieldTypeInfo const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x555555555555555)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    *(v6 + 16) = *(a2 + 16);
  }

  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  v7 = v6 + 48;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 20);
      *(v12 + 24) = v14;
      v11 += 3;
      v12 += 48;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v8 += 48;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t swift::reflection::ReflectionSectionIteratorBase<swift::reflection::BuiltinTypeDescriptorIterator,swift::reflection::BuiltinTypeDescriptor>::ReflectionSectionIteratorBase(uint64_t result, uint64_t a2, unint64_t a3, __int128 *a4)
{
  *result = a3;
  *(result + 8) = *a2;
  *(result + 24) = *(a2 + 16);
  *(result + 32) = a3;
  if (*(a4 + 23) < 0)
  {
    v7 = result;
    std::string::__init_copy_ctor_external((result + 40), *a4, *(a4 + 1));
    result = v7;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    v6 = *a4;
    *(result + 56) = *(a4 + 2);
    *(result + 40) = v6;
    if (!a3)
    {
      return result;
    }
  }

  if (*(result + 24))
  {
    if (a3 > 0x13)
    {
      return result;
    }

    v8 = result;
    v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "!!! Reflection section too small to contain first record\n", 57);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v20, &std::ctype<char>::id);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v20);
    std::ostream::put();
    std::ostream::flush();
    v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Section Type: ", 14);
    v12 = *(a4 + 23);
    if (v12 >= 0)
    {
      v13 = a4;
    }

    else
    {
      v13 = *a4;
    }

    if (v12 >= 0)
    {
      v14 = *(a4 + 23);
    }

    else
    {
      v14 = *(a4 + 1);
    }

    v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v13, v14);
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&v20, &std::ctype<char>::id);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v20);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Section size: ", 14);
    v17 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ", size of first record: ", 24);
    v18 = std::ostream::operator<<();
    std::ios_base::getloc((v18 + *(*v18 - 24)));
    v19 = std::locale::use_facet(&v20, &std::ctype<char>::id);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v20);
    std::ostream::put();
    std::ostream::flush();
    result = v8;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::BuiltinTypeDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::BuiltinTypeDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::BuiltinTypeDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,swift::remote::RemoteRef<swift::reflection::BuiltinTypeDescriptor>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,swift::remote::RemoteRef<swift::reflection::BuiltinTypeDescriptor>>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v21, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_33:
    operator new();
  }

  v14 = v2[23];
  if (v14 >= 0)
  {
    v15 = v2[23];
  }

  else
  {
    v15 = *(v2 + 1);
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v16 &= *&v8 - 1;
    }

    else if (v16 >= *&v8)
    {
      v16 %= *&v8;
    }

    if (v16 != v11)
    {
      goto LABEL_33;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v2, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

_BYTE *anonymous namespace::BuiltinTypeDescriptorImpl::getMangledTypeName(_anonymous_namespace_::BuiltinTypeDescriptorImpl *this)
{
  v1 = **(this + 6);
  if (v1)
  {
    v2 = *(this + 4) + v1;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = *(this + 40);
  }

  else
  {
    v3 = 0;
  }

  swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef((*(this + 7) + 1888), v2, v3, v7);
  v5 = v8;

  return swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v5, v4);
}

uint64_t swift::reflection::ReflectionSectionIteratorBase<swift::reflection::MultiPayloadEnumDescriptorIterator,swift::reflection::MultiPayloadEnumDescriptor>::ReflectionSectionIteratorBase(uint64_t result, uint64_t a2, unint64_t a3, __int128 *a4)
{
  *result = a3;
  *(result + 8) = *a2;
  *(result + 24) = *(a2 + 16);
  *(result + 32) = a3;
  if (*(a4 + 23) < 0)
  {
    v7 = result;
    std::string::__init_copy_ctor_external((result + 40), *a4, *(a4 + 1));
    result = v7;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    v6 = *a4;
    *(result + 56) = *(a4 + 2);
    *(result + 40) = v6;
    if (!a3)
    {
      return result;
    }
  }

  v8 = *(result + 24);
  if (v8)
  {
    if (4 * *(v8 + 6) + 4 <= a3)
    {
      return result;
    }

    v9 = result;
    v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "!!! Reflection section too small to contain first record\n", 57);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v21, &std::ctype<char>::id);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
    v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Section Type: ", 14);
    v13 = *(a4 + 23);
    if (v13 >= 0)
    {
      v14 = a4;
    }

    else
    {
      v14 = *a4;
    }

    if (v13 >= 0)
    {
      v15 = *(a4 + 23);
    }

    else
    {
      v15 = *(a4 + 1);
    }

    v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, v14, v15);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&v21, &std::ctype<char>::id);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Section size: ", 14);
    v18 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, ", size of first record: ", 24);
    v19 = std::ostream::operator<<();
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v21, &std::ctype<char>::id);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
    result = v9;
  }

  *(result + 32) = 0;
  return result;
}

_BYTE *anonymous namespace::MultiPayloadEnumDescriptorImpl::getMangledTypeName(_anonymous_namespace_::MultiPayloadEnumDescriptorImpl *this)
{
  v1 = **(this + 3);
  if (v1)
  {
    v2 = *(this + 1) + v1;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = *(this + 16);
  }

  else
  {
    v3 = 0;
  }

  swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::readTypeRef((*(this + 4) + 1888), v2, v3, v7);
  v5 = v8;

  return swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v5, v4);
}

uint64_t anonymous namespace::MultiPayloadEnumDescriptorImpl::getPayloadSpareBitMaskByteOffset(_anonymous_namespace_::MultiPayloadEnumDescriptorImpl *this)
{
  v1 = *(this + 3);
  if (*(v1 + 4))
  {
    return *(v1 + 10);
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::MultiPayloadEnumDescriptorImpl::getPayloadSpareBitMaskByteCount(_anonymous_namespace_::MultiPayloadEnumDescriptorImpl *this)
{
  v1 = *(this + 3);
  if (*(v1 + 4))
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::MultiPayloadEnumDescriptorImpl::getPayloadSpareBits(_anonymous_namespace_::MultiPayloadEnumDescriptorImpl *this)
{
  v1 = *(this + 3);
  v2 = *(v1 + 4);
  v3 = v1 + 4 + 4 * (v2 & 1) + 4;
  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t swift::reflection::ReflectionSectionIteratorBase<swift::reflection::CaptureDescriptorIterator,swift::reflection::CaptureDescriptor>::ReflectionSectionIteratorBase(uint64_t result, uint64_t a2, unint64_t a3, __int128 *a4)
{
  *result = a3;
  *(result + 8) = *a2;
  *(result + 24) = *(a2 + 16);
  *(result + 32) = a3;
  if (*(a4 + 23) < 0)
  {
    v7 = result;
    std::string::__init_copy_ctor_external((result + 40), *a4, *(a4 + 1));
    result = v7;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    v6 = *a4;
    *(result + 56) = *(a4 + 2);
    *(result + 40) = v6;
    if (!a3)
    {
      return result;
    }
  }

  v8 = *(result + 24);
  if (v8)
  {
    if (4 * *v8 + 8 * v8[1] + 12 <= a3)
    {
      return result;
    }

    v9 = result;
    v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "!!! Reflection section too small to contain first record\n", 57);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v21, &std::ctype<char>::id);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
    v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Section Type: ", 14);
    v13 = *(a4 + 23);
    if (v13 >= 0)
    {
      v14 = a4;
    }

    else
    {
      v14 = *a4;
    }

    if (v13 >= 0)
    {
      v15 = *(a4 + 23);
    }

    else
    {
      v15 = *(a4 + 1);
    }

    v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, v14, v15);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&v21, &std::ctype<char>::id);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "Section size: ", 14);
    v18 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, ", size of first record: ", 24);
    v19 = std::ostream::operator<<();
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v21, &std::ctype<char>::id);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
    result = v9;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<swift::remote::RemoteAddress,swift::remote::RemoteRef<swift::reflection::CaptureDescriptor>>,std::__unordered_map_hasher<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,swift::remote::RemoteRef<swift::reflection::CaptureDescriptor>>,std::hash<swift::remote::RemoteAddress>,std::equal_to<swift::remote::RemoteAddress>,true>,std::__unordered_map_equal<swift::remote::RemoteAddress,std::__hash_value_type<swift::remote::RemoteAddress,swift::remote::RemoteRef<swift::reflection::CaptureDescriptor>>,std::equal_to<swift::remote::RemoteAddress>,std::hash<swift::remote::RemoteAddress>,true>,std::allocator<std::__hash_value_type<swift::remote::RemoteAddress,swift::remote::RemoteRef<swift::reflection::CaptureDescriptor>>>>::__emplace_unique_key_args<swift::remote::RemoteAddress,std::pair<swift::remote::RemoteAddress,swift::remote::RemoteRef<swift::reflection::CaptureDescriptor>>>(void *a1, uint64_t a2)
{
  v4 = __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(a2, (a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v11 = result[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] <= 1uLL)
    {
      v11 &= *&v6 - 1;
    }

    else if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_20;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_20;
    }
  }

  if (result[2] != *a2 || *(result + 24) != *(a2 + 8))
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t swift::reflection::MetadataSource::decode<swift::reflection::MetadataSourceBuilder>(swift::reflection::MetadataSourceBuilder *a1, const char **a2, const char **a3)
{
  v3 = *a2;
  if (*a2 == *a3)
  {
    return 0;
  }

  v4 = *v3;
  if (v4 > 0x4C)
  {
    switch(v4)
    {
      case 'M':
        v6 = v3 + 1;
        *a2 = v6;
        if (*a3 > v6)
        {
          v7 = 0;
          v8 = v6;
          v9 = v6;
          while (1)
          {
            v10 = *v9++;
            if ((v10 - 48) > 9)
            {
              break;
            }

            *a2 = v8 + 1;
            --v7;
            v8 = v9;
            if (v9 >= *a3)
            {
              goto LABEL_28;
            }
          }

          if (!v7)
          {
            return 0;
          }

LABEL_28:
          if ((strtol(v6, 0, 10) - 0x7FFFFFFFFFFFFFFFLL) > 1 || *__error() != 34)
          {

            swift::reflection::MetadataSourceBuilder::createMetadataCapture(a1);
          }
        }

        break;
      case 'R':
        v11 = v3 + 1;
        *a2 = v11;
        if (*a3 > v11)
        {
          v12 = 0;
          v13 = v11;
          v14 = v11;
          while (1)
          {
            v15 = *v14++;
            if ((v15 - 48) > 9)
            {
              break;
            }

            *a2 = v13 + 1;
            --v12;
            v13 = v14;
            if (v14 >= *a3)
            {
              goto LABEL_34;
            }
          }

          if (!v12)
          {
            return 0;
          }

LABEL_34:
          if ((strtol(v11, 0, 10) - 0x7FFFFFFFFFFFFFFFLL) > 1 || *__error() != 34)
          {

            swift::reflection::MetadataSourceBuilder::createReferenceCapture(a1);
          }
        }

        break;
      case 'S':
        *a2 = v3 + 1;
        operator new();
    }

    return 0;
  }

  if (v4 == 66)
  {
    v16 = v3 + 1;
    *a2 = v16;
    if (*a3 > v16)
    {
      v17 = 0;
      v18 = v16;
      v19 = v16;
      while (1)
      {
        v20 = *v19++;
        if ((v20 - 48) > 9)
        {
          break;
        }

        *a2 = v18 + 1;
        --v17;
        v18 = v19;
        if (v19 >= *a3)
        {
          goto LABEL_40;
        }
      }

      if (!v17)
      {
        return 0;
      }

LABEL_40:
      if ((strtol(v16, 0, 10) - 0x7FFFFFFFFFFFFFFFLL) > 1 || *__error() != 34)
      {

        swift::reflection::MetadataSourceBuilder::createClosureBinding(a1);
      }
    }

    return 0;
  }

  if (v4 != 71)
  {
    return 0;
  }

  return swift::reflection::MetadataSource::decodeGenericArgument<swift::reflection::MetadataSourceBuilder>(a1, a2, a3);
}

uint64_t swift::reflection::MetadataSource::decodeGenericArgument<swift::reflection::MetadataSourceBuilder>(uint64_t a1, const char **a2, const char **a3)
{
  v5 = *a2;
  if (*a2 == *a3)
  {
    return 0;
  }

  v16 = v3;
  v17 = v4;
  if (*v5 == 71)
  {
    v6 = v5 + 1;
    *a2 = v6;
    if (*a3 > v6)
    {
      v7 = 0;
      v8 = v6;
      v9 = v6;
      while (1)
      {
        v10 = *v9++;
        if ((v10 - 48) > 9)
        {
          break;
        }

        *a2 = v8 + 1;
        --v7;
        v8 = v9;
        if (v9 >= *a3)
        {
          goto LABEL_10;
        }
      }

      if (!v7)
      {
        return 0;
      }

LABEL_10:
      if ((strtol(v6, 0, 10) - 0x7FFFFFFFFFFFFFFFLL) > 1 || *__error() != 34)
      {
        result = swift::reflection::MetadataSource::decode<swift::reflection::MetadataSourceBuilder>(a1, a2, a3);
        if (!result)
        {
          return result;
        }

        v15 = *a2;
        if (*a2 != *a3 && *v15 == 95)
        {
          *a2 = v15 + 1;
          operator new();
        }
      }
    }
  }

  return 0;
}

uint64_t std::vector<swift::reflection::PropertyTypeInfo>::__emplace_back_slow_path<swift::reflection::PropertyTypeInfo>(void **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5) + 1;
  if (v2 > 0x2AAAAAAAAAAAAAALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v4 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = 32 * ((a1[1] - *a1) >> 5);
  *v5 = *a2;
  *(v5 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v6 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v5 + 24) = v6;
  *(v5 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v7 = *(a2 + 72);
  *(v5 + 88) = *(a2 + 88);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v8 = v5 + 96;
  v10 = *a1;
  v9 = a1[1];
  v11 = v5 + *a1 - v9;
  *(v5 + 72) = v7;
  if (v9 != v10)
  {
    v12 = v10;
    v13 = v11;
    do
    {
      v14 = *v12;
      *(v13 + 16) = v12[2];
      *v13 = v14;
      v12[1] = 0;
      v12[2] = 0;
      *v12 = 0;
      v15 = *(v12 + 3);
      *(v13 + 40) = v12[5];
      *(v13 + 24) = v15;
      v12[4] = 0;
      v12[5] = 0;
      v12[3] = 0;
      v16 = *(v12 + 3);
      *(v13 + 64) = v12[8];
      *(v13 + 48) = v16;
      v12[7] = 0;
      v12[8] = 0;
      v12[6] = 0;
      v17 = *(v12 + 9);
      *(v13 + 88) = v12[11];
      *(v13 + 72) = v17;
      v12[9] = 0;
      v12[10] = 0;
      v12[11] = 0;
      v12 += 12;
      v13 += 96;
    }

    while (v12 != v9);
    do
    {
      if (*(v10 + 95) < 0)
      {
        operator delete(v10[9]);
        if ((*(v10 + 71) & 0x80000000) == 0)
        {
LABEL_17:
          if ((*(v10 + 47) & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_22;
        }
      }

      else if ((*(v10 + 71) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      operator delete(v10[6]);
      if ((*(v10 + 47) & 0x80000000) == 0)
      {
LABEL_18:
        if (*(v10 + 23) < 0)
        {
          goto LABEL_23;
        }

        goto LABEL_14;
      }

LABEL_22:
      operator delete(v10[3]);
      if (*(v10 + 23) < 0)
      {
LABEL_23:
        operator delete(*v10);
      }

LABEL_14:
      v10 += 12;
    }

    while (v10 != v9);
  }

  v18 = *a1;
  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v18)
  {
    operator delete(v18);
  }

  return v8;
}

void std::allocator<swift::reflection::PropertyTypeInfo>::construct[abi:nn200100]<swift::reflection::PropertyTypeInfo,swift::reflection::PropertyTypeInfo&>(int a1, std::string *this, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a3, *(a3 + 1));
    if ((*(a3 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v6 = *(a3 + 24);
      this[1].__r_.__value_.__r.__words[2] = *(a3 + 5);
      *&this[1].__r_.__value_.__l.__data_ = v6;
      if ((*(a3 + 71) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      std::string::__init_copy_ctor_external(this + 2, *(a3 + 6), *(a3 + 7));
      if ((*(a3 + 95) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v5 = *a3;
    this->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
    if ((*(a3 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(this + 1, *(a3 + 3), *(a3 + 4));
  if (*(a3 + 71) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = a3[3];
  this[2].__r_.__value_.__r.__words[2] = *(a3 + 8);
  *&this[2].__r_.__value_.__l.__data_ = v7;
  if ((*(a3 + 95) & 0x80000000) == 0)
  {
LABEL_5:
    v8 = *(a3 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a3 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v8;
    return;
  }

LABEL_9:
  v9 = *(a3 + 9);
  v10 = *(a3 + 10);

  std::string::__init_copy_ctor_external(this + 3, v9, v10);
}

uint64_t std::vector<swift::reflection::FieldMetadata>::__emplace_back_slow_path<swift::reflection::FieldMetadata>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = 32 * ((a1[1] - *a1) >> 5);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v6 + 24) = v7;
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 48) = *(a2 + 48);
  *(v6 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 88) = *(a2 + 88);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v8 = 96 * v2 + 96;
  v9 = *a1;
  v10 = a1[1];
  v11 = v6 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v6 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 5);
      *(v13 + 24) = v15;
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      *(v12 + 3) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      *(v13 + 48) = *(v12 + 3);
      *(v13 + 64) = *(v12 + 8);
      *(v12 + 6) = 0;
      *(v12 + 7) = 0;
      *(v12 + 8) = 0;
      *(v13 + 80) = 0;
      *(v13 + 88) = 0;
      *(v13 + 72) = *(v12 + 72);
      *(v13 + 88) = *(v12 + 11);
      *(v12 + 9) = 0;
      *(v12 + 10) = 0;
      *(v12 + 11) = 0;
      v12 += 96;
      v13 += 96;
    }

    while (v12 != v10);
    do
    {
      std::allocator<swift::reflection::FieldMetadata>::destroy[abi:nn200100](a1, v9);
      v9 += 96;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void __swift::__runtime::llvm::hashing::detail::hash_combine_range_impl<char const>()
{
  {
    v0 = __swift::__runtime::llvm::hashing::detail::fixed_seed_override;
    if (!__swift::__runtime::llvm::hashing::detail::fixed_seed_override)
    {
      v0 = 0xFF51AFD7ED558CCDLL;
    }

    __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed = v0;
  }
}

void __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>()
{
  {
    OUTLINED_FUNCTION_0();
    v2 = v1 | 0xFF51AFD7ED550000;
    if (v3)
    {
      v0 = v2;
    }

    OUTLINED_FUNCTION_1(v0);
  }
}

void swift::reflection::EnumTypeInfoBuilder::addCase()
{
  if (v0)
  {
    OUTLINED_FUNCTION_0_0(v0, &swift::reflection::EnumTypeInfoBuilder::addCase(std::string const&)::emptyTI);
    OUTLINED_FUNCTION_1_0(v1, v2, &dword_0);
  }
}

{
  if (v0)
  {
    OUTLINED_FUNCTION_0_0(v0, &swift::reflection::EnumTypeInfoBuilder::addCase(std::string const&,swift::reflection::TypeRef const*,swift::reflection::TypeInfo const*)::emptyTI);
    OUTLINED_FUNCTION_1_0(v1, v2, &dword_0);
  }
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}