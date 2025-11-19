unsigned int *swift::Demangle::__runtime::Demangler::demangleAutoDiffFunctionOrSimpleThunk(swift::Demangle::__runtime::NodeFactory *a1, __int16 a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = ((*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  *(a1 + 1) = v7;
  if (!v7 || &v7[1].u64[1] > *(a1 + 2))
  {
    v8 = 2 * *(a1 + 4);
    if (v8 <= 0x20)
    {
      v8 = 32;
    }

    *(a1 + 4) = v8;
    v9 = v8 + 8;
    v10 = malloc_type_malloc(v8 + 8, 0x2004093837F09uLL);
    v11 = v10 + v9;
    *v10 = *(a1 + 3);
    v7 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(a1 + 2) = v11;
    *(a1 + 3) = v10;
  }

  *(a1 + 1) = v7 + 24;
  v7[1].i16[0] = a2;
  v7[1].i8[2] = 0;
  v12 = *(a1 + 24);
  if (v12)
  {
    do
    {
      v13 = v12 - 1;
      v14 = *(*(a1 + 11) + 8 * v13);
      *(a1 + 24) = v13;
      if (!v14)
      {
        break;
      }

      swift::Demangle::__runtime::Node::addChild(v7, v14, a1, a4, a5);
      v12 = *(a1 + 24);
    }

    while (v12);
    v15 = v7[1].u8[2];
    if (v15 == 5)
    {
      v16 = v7->i64[0];
      v17 = v7->u32[2];
      v18 = (v7->i64[0] + 8 * v17 - 8);
      if (v17)
      {
        v19 = v18 > v16;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        v20 = v16 + 8;
        do
        {
          v21 = *(v20 - 8);
          *(v20 - 8) = *v18;
          *v18-- = v21;
          v22 = v20 >= v18;
          v20 += 8;
        }

        while (!v22);
      }
    }

    else if (v15 == 2)
    {
      *v7 = vextq_s8(*v7, *v7, 8uLL);
    }
  }

  v23 = *(a1 + 9);
  if (v23 >= *(a1 + 8))
  {
    v24 = 0;
  }

  else
  {
    *(a1 + 9) = v23 + 1;
    v24 = *(*(a1 + 7) + v23);
  }

  v25 = (((v24 - 100) >> 1) | ((v24 - 100) << 7));
  v19 = v25 > 7;
  v26 = (1 << v25) & 0xC3;
  if (v19 || v26 == 0)
  {
    v7 = 0;
  }

  else
  {
    v28 = v24;
    v29 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 1) = v29;
    if (!v29 || v29 + 24 > *(a1 + 2))
    {
      v30 = 2 * *(a1 + 4);
      if (v30 <= 0x20)
      {
        v30 = 32;
      }

      *(a1 + 4) = v30;
      v31 = v30 + 8;
      v32 = malloc_type_malloc(v30 + 8, 0x2004093837F09uLL);
      *v32 = *(a1 + 3);
      v29 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 2) = v32 + v31;
      *(a1 + 3) = v32;
    }

    *(a1 + 1) = v29 + 24;
    *(v29 + 16) = 335;
    *(v29 + 18) = 4;
    *v29 = v28;
    if (v7)
    {
      swift::Demangle::__runtime::Node::addChild(v7, v29, a1, a4, a5);
    }
  }

  v33 = swift::Demangle::__runtime::Demangler::demangleIndexSubset(a1);
  v36 = 0;
  if (v7 && v33)
  {
    swift::Demangle::__runtime::Node::addChild(v7, v33, a1, v34, v35);
    v36 = v7;
  }

  v37 = *(a1 + 9);
  if (v37 >= *(a1 + 8) || *(*(a1 + 7) + v37) != 112)
  {
    return 0;
  }

  *(a1 + 9) = v37 + 1;
  v38 = swift::Demangle::__runtime::Demangler::demangleIndexSubset(a1);
  result = 0;
  if (v36 && v38)
  {
    swift::Demangle::__runtime::Node::addChild(v36, v38, a1, v39, v40);
    result = v36;
  }

  v42 = *(a1 + 9);
  if (v42 >= *(a1 + 8) || *(*(a1 + 7) + v42) != 114)
  {
    return 0;
  }

  *(a1 + 9) = v42 + 1;
  return result;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleAutoDiffFunctionKind(swift::Demangle::__runtime::Demangler *this)
{
  v2 = *(this + 9);
  if (v2 >= *(this + 8))
  {
    v3 = 0;
  }

  else
  {
    *(this + 9) = v2 + 1;
    v3 = *(*(this + 7) + v2);
  }

  v4 = (((v3 - 100) >> 1) | ((v3 - 100) << 7));
  v5 = v4 > 7;
  v6 = (1 << v4) & 0xC3;
  if (v5 || v6 == 0)
  {
    return 0;
  }

  v8 = v3;
  result = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = result;
  if (!result || result + 24 > *(this + 2))
  {
    v10 = 2 * *(this + 4);
    if (v10 <= 0x20)
    {
      v10 = 32;
    }

    *(this + 4) = v10;
    v11 = v10 + 8;
    v12 = malloc_type_malloc(v10 + 8, 0x2004093837F09uLL);
    *v12 = *(this + 3);
    result = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v12 + v11;
    *(this + 3) = v12;
  }

  *(this + 1) = result + 24;
  *(result + 16) = 335;
  *(result + 18) = 4;
  *result = v8;
  return result;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleIndexSubset(swift::Demangle::__runtime::Demangler *this)
{
  memset(&v10, 0, sizeof(v10));
  v2 = *(this + 9);
  if (v2 >= *(this + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(*(this + 7) + v2);
  }

  while (v3 == 83 || v3 == 85)
  {
    std::string::push_back(&v10, v3);
    v5 = *(this + 8);
    v4 = *(this + 9);
    if (v4 < v5)
    {
      *(this + 9) = ++v4;
    }

    v3 = 0;
    if (v4 < v5)
    {
      v3 = *(*(this + 7) + v4);
    }
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v10;
    }

    else
    {
      v7 = v10.__r_.__value_.__r.__words[0];
    }

    result = swift::Demangle::__runtime::NodeFactory::createNode(this, 341, v7, size);
    if ((*(&v10.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    result = 0;
    if ((*(&v10.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_18:
      v9 = result;
      operator delete(v10.__r_.__value_.__l.__data_);
      return v9;
    }
  }

  return result;
}

unsigned int *swift::Demangle::__runtime::Demangler::demangleDifferentiabilityWitness(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  *(this + 1) = v6;
  if (!v6 || &v6[1].u64[1] > *(this + 2))
  {
    v7 = 2 * *(this + 4);
    if (v7 <= 0x20)
    {
      v7 = 32;
    }

    *(this + 4) = v7;
    v8 = v7 + 8;
    v9 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
    *v9 = *(this + 3);
    v6 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(this + 2) = v9 + v8;
    *(this + 3) = v9;
  }

  *(this + 1) = v6 + 24;
  v6[1].i16[0] = 339;
  v6[1].i8[2] = 0;
  v10 = *(this + 24);
  if (v10)
  {
    v11 = v10 - 1;
    v12 = *(*(this + 11) + 8 * (v10 - 1));
    if (*(v12 + 8) == 44)
    {
      *(this + 24) = v11;
      if (v10 == 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v12 = 0;
      v11 = *(this + 24);
    }

    do
    {
      v13 = v11 - 1;
      v14 = *(*(this + 11) + 8 * v13);
      *(this + 24) = v13;
      if (!v14)
      {
        break;
      }

      swift::Demangle::__runtime::Node::addChild(v6, v14, this, a4, a5);
      v11 = *(this + 24);
    }

    while (v11);
    v15 = v6[1].u8[2];
    if (v15 == 5)
    {
      v16 = v6->i64[0];
      v17 = v6->u32[2];
      v18 = (v6->i64[0] + 8 * v17 - 8);
      if (v17)
      {
        v19 = v18 > v16;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        v20 = v16 + 8;
        do
        {
          v21 = *(v20 - 8);
          *(v20 - 8) = *v18;
          *v18-- = v21;
          v22 = v20 >= v18;
          v20 += 8;
        }

        while (!v22);
      }
    }

    else if (v15 == 2)
    {
      *v6 = vextq_s8(*v6, *v6, 8uLL);
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_25:
  v23 = *(this + 9);
  if (v23 >= *(this + 8))
  {
    v24 = -100;
  }

  else
  {
    *(this + 9) = v23 + 1;
    v24 = *(*(this + 7) + v23) - 100;
  }

  HIDWORD(v26) = v24;
  LODWORD(v26) = v24;
  v25 = v26 >> 1;
  if (v25 > 7 || ((0x93u >> v25) & 1) == 0)
  {
    return 0;
  }

  v27 = qword_DA8D0[v25];
  v28 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v28;
  if (!v28 || v28 + 24 > *(this + 2))
  {
    v29 = 2 * *(this + 4);
    if (v29 <= 0x20)
    {
      v29 = 32;
    }

    *(this + 4) = v29;
    v30 = v29 + 8;
    v31 = malloc_type_malloc(v29 + 8, 0x2004093837F09uLL);
    *v31 = *(this + 3);
    v28 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v31 + v30;
    *(this + 3) = v31;
  }

  *(this + 1) = v28 + 24;
  *(v28 + 16) = 104;
  *(v28 + 18) = 4;
  *v28 = v27;
  if (v6)
  {
    swift::Demangle::__runtime::Node::addChild(v6, v28, this, a4, a5);
  }

  v32 = swift::Demangle::__runtime::Demangler::demangleIndexSubset(this);
  v35 = 0;
  if (v6 && v32)
  {
    swift::Demangle::__runtime::Node::addChild(v6, v32, this, v33, v34);
    v35 = v6;
  }

  v36 = *(this + 9);
  if (v36 >= *(this + 8) || *(*(this + 7) + v36) != 112)
  {
    return 0;
  }

  *(this + 9) = v36 + 1;
  v37 = swift::Demangle::__runtime::Demangler::demangleIndexSubset(this);
  result = 0;
  if (v35 && v37)
  {
    swift::Demangle::__runtime::Node::addChild(v35, v37, this, v38, v39);
    result = v35;
  }

  v41 = *(this + 9);
  if (v41 >= *(this + 8) || *(*(this + 7) + v41) != 114)
  {
    return 0;
  }

  *(this + 9) = v41 + 1;
  if (v12)
  {
    if (result)
    {
      v42 = result;
      swift::Demangle::__runtime::Node::addChild(result, v12, this, v38, v39);
      return v42;
    }
  }

  return result;
}

swift::Demangle::__runtime::Node *swift::Demangle::__runtime::Demangler::demangleFuncSpecParam(swift::Demangle::__runtime::NodeFactory *a1, __int16 a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 1) = v7;
  if (!v7 || (v8 = *(a1 + 2), v7 + 24 > v8))
  {
    v9 = 2 * *(a1 + 4);
    if (v9 <= 0x20)
    {
      v9 = 32;
    }

    *(a1 + 4) = v9;
    v10 = v9 + 8;
    v11 = malloc_type_malloc(v9 + 8, 0x2004093837F09uLL);
    v8 = v11 + v10;
    *v11 = *(a1 + 3);
    v7 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 2) = v8;
    *(a1 + 3) = v11;
  }

  *(a1 + 1) = v7 + 24;
  *(v7 + 16) = a2;
  *(v7 + 18) = 0;
  v12 = *(a1 + 8);
  v13 = *(a1 + 9);
  if (v13 >= v12)
  {
    return 0;
  }

  v14 = v13 + 1;
  *(a1 + 9) = v13 + 1;
  v15 = *(a1 + 7);
  v16 = *(v15 + v13);
  if (v16 <= 0x6D)
  {
    if (*(v15 + v13) <= 0x64u)
    {
      if (v16 == 99)
      {
        v22 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
        *(a1 + 1) = v22;
        if (v22)
        {
          v30 = v22 + 24 > v8;
        }

        else
        {
          v30 = 1;
        }

        if (v30)
        {
          v31 = 2 * *(a1 + 4);
          if (v31 <= 0x20)
          {
            v31 = 32;
          }

          *(a1 + 4) = v31;
          v32 = v31 + 8;
          v33 = malloc_type_malloc(v31 + 8, 0x2004093837F09uLL);
          *v33 = *(a1 + 3);
          v22 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(a1 + 2) = v33 + v32;
          *(a1 + 3) = v33;
        }

        *(a1 + 1) = v22 + 24;
        *(v22 + 16) = 82;
        *(v22 + 18) = 4;
        *v22 = 5;
        goto LABEL_99;
      }

      if (v16 != 100)
      {
        return 0;
      }

      if (v14 < v12 && *(v15 + v14) == 71)
      {
        v14 = v13 + 2;
        *(a1 + 9) = v13 + 2;
        v29 = 192;
      }

      else
      {
        v29 = 64;
      }
    }

    else
    {
      if (v16 != 101)
      {
        if (v16 != 103)
        {
          if (v16 == 105)
          {
            v22 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
            *(a1 + 1) = v22;
            if (!v22 || v22 + 24 > v8)
            {
              v23 = 2 * *(a1 + 4);
              if (v23 <= 0x20)
              {
                v23 = 32;
              }

              *(a1 + 4) = v23;
              v24 = v23 + 8;
              v25 = malloc_type_malloc(v23 + 8, 0x2004093837F09uLL);
              *v25 = *(a1 + 3);
              v22 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
              *(a1 + 2) = v25 + v24;
              *(a1 + 3) = v25;
            }

            *(a1 + 1) = v22 + 24;
            *(v22 + 16) = 82;
            *(v22 + 18) = 4;
            *v22 = 6;
            goto LABEL_99;
          }

          return 0;
        }

        if (v14 < v12 && *(v15 + v14) == 88)
        {
          *(a1 + 9) = v13 + 2;
          v34 = 384;
        }

        else
        {
          v34 = 128;
        }

LABEL_93:
        v22 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
        *(a1 + 1) = v22;
        if (!v22 || v22 + 24 > v8)
        {
          v43 = 2 * *(a1 + 4);
          if (v43 <= 0x20)
          {
            v43 = 32;
          }

          *(a1 + 4) = v43;
          v44 = v43 + 8;
          v45 = malloc_type_malloc(v43 + 8, 0x2004093837F09uLL);
          *v45 = *(a1 + 3);
          v22 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(a1 + 2) = v45 + v44;
          *(a1 + 3) = v45;
        }

        *(a1 + 1) = v22 + 24;
        *(v22 + 16) = 82;
        *(v22 + 18) = 4;
        *v22 = v34;
        goto LABEL_99;
      }

      if (v14 < v12 && *(v15 + v14) == 68)
      {
        v14 = v13 + 2;
        *(a1 + 9) = v13 + 2;
        v29 = 1088;
      }

      else
      {
        v29 = 1024;
      }

      if (v14 < v12 && *(v15 + v14) == 71)
      {
        *(a1 + 9) = ++v14;
        v29 |= 0x80u;
      }
    }

    if (v14 < v12 && *(v15 + v14) == 79)
    {
      *(a1 + 9) = ++v14;
      v29 |= 0x200u;
    }

    if (v14 < v12 && *(v15 + v14) == 88)
    {
      *(a1 + 9) = v14 + 1;
      v29 |= 0x100u;
    }

    v34 = v29;
    goto LABEL_93;
  }

  if (*(v15 + v13) > 0x71u)
  {
    switch(v16)
    {
      case 'r':
        v22 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
        *(a1 + 1) = v22;
        if (v22)
        {
          v39 = v22 + 24 > v8;
        }

        else
        {
          v39 = 1;
        }

        if (v39)
        {
          v40 = 2 * *(a1 + 4);
          if (v40 <= 0x20)
          {
            v40 = 32;
          }

          *(a1 + 4) = v40;
          v41 = v40 + 8;
          v42 = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
          *v42 = *(a1 + 3);
          v22 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(a1 + 2) = v42 + v41;
          *(a1 + 3) = v42;
        }

        *(a1 + 1) = v22 + 24;
        *(v22 + 16) = 82;
        *(v22 + 18) = 4;
        *v22 = 8;
        goto LABEL_99;
      case 's':
        v22 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
        *(a1 + 1) = v22;
        if (v22)
        {
          v35 = v22 + 24 > v8;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          v36 = 2 * *(a1 + 4);
          if (v36 <= 0x20)
          {
            v36 = 32;
          }

          *(a1 + 4) = v36;
          v37 = v36 + 8;
          v38 = malloc_type_malloc(v36 + 8, 0x2004093837F09uLL);
          *v38 = *(a1 + 3);
          v22 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(a1 + 2) = v38 + v37;
          *(a1 + 3) = v38;
        }

        *(a1 + 1) = v22 + 24;
        *(v22 + 16) = 82;
        *(v22 + 18) = 4;
        *v22 = 7;
        goto LABEL_99;
      case 'x':
        v22 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
        *(a1 + 1) = v22;
        if (!v22 || v22 + 24 > v8)
        {
          v26 = 2 * *(a1 + 4);
          if (v26 <= 0x20)
          {
            v26 = 32;
          }

          *(a1 + 4) = v26;
          v27 = v26 + 8;
          v28 = malloc_type_malloc(v26 + 8, 0x2004093837F09uLL);
          *v28 = *(a1 + 3);
          v22 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(a1 + 2) = v28 + v27;
          *(a1 + 3) = v28;
        }

        *(a1 + 1) = v22 + 24;
        *(v22 + 16) = 82;
        *(v22 + 18) = 4;
        *v22 = 256;
        goto LABEL_99;
    }

    return 0;
  }

  if (v16 == 110)
  {
    return v7;
  }

  if (v16 == 111)
  {
    if (v14 < v12 && *(v15 + v14) == 88)
    {
      *(a1 + 9) = v13 + 2;
      v34 = 768;
    }

    else
    {
      v34 = 512;
    }

    goto LABEL_93;
  }

  if (v16 != 112 || v14 >= v12)
  {
    return 0;
  }

  result = 0;
  v18 = v13 + 2;
  *(a1 + 9) = v13 + 2;
  v19 = *(v15 + v14);
  if (v19 <= 0x68)
  {
    if (v19 != 100)
    {
      if (v19 == 102)
      {
        v20 = a1;
        v21 = 0;
      }

      else
      {
        if (v19 != 103)
        {
          return result;
        }

        v20 = a1;
        v21 = 1;
      }

      goto LABEL_117;
    }

    v48 = a1;
    v49 = v7;
    v50 = 3;
LABEL_112:

    return swift::Demangle::__runtime::Demangler::addFuncSpecParamNumber(v48, v49, v50, a4, a5);
  }

  if (v19 == 105)
  {
    v48 = a1;
    v49 = v7;
    v50 = 2;
    goto LABEL_112;
  }

  if (v19 != 107)
  {
    if (v19 != 115)
    {
      return result;
    }

    if (v18 >= v12)
    {
      return 0;
    }

    *(a1 + 9) = v13 + 3;
    v46 = *(v15 + v18);
    switch(v46)
    {
      case 'b':
        v47 = "u8";
        break;
      case 'c':
        v47 = "objc";
        break;
      case 'w':
        v47 = "u16";
        break;
      default:
        return 0;
    }

    Node = swift::Demangle::__runtime::NodeFactory::createNode(a1, 82, 4);
    if (Node)
    {
      swift::Demangle::__runtime::Node::addChild(v7, Node, a1, v52, v53);
    }

    result = swift::Demangle::__runtime::NodeFactory::createNode(a1, 83, v47);
    if (result)
    {
      goto LABEL_118;
    }

    return result;
  }

  v20 = a1;
  v21 = 9;
LABEL_117:
  result = swift::Demangle::__runtime::NodeFactory::createNode(v20, 82, v21);
  if (result)
  {
LABEL_118:
    v22 = result;
LABEL_99:
    swift::Demangle::__runtime::Node::addChild(v7, v22, a1, a4, a5);
    return v7;
  }

  return result;
}

swift::Demangle::__runtime::Node *swift::Demangle::__runtime::Demangler::addFuncSpecParamNumber(swift::Demangle::__runtime::NodeFactory *a1, swift::Demangle::__runtime::Node *this, unsigned int a3, uint64_t a4, const char *a5)
{
  v7 = a3;
  v8 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 1) = v8;
  if (!v8 || v8 + 24 > *(a1 + 2))
  {
    v9 = 2 * *(a1 + 4);
    if (v9 <= 0x20)
    {
      v9 = 32;
    }

    *(a1 + 4) = v9;
    v10 = v9 + 8;
    v11 = malloc_type_malloc(v9 + 8, 0x2004093837F09uLL);
    *v11 = *(a1 + 3);
    v8 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 2) = v11 + v10;
    *(a1 + 3) = v11;
  }

  *(a1 + 1) = v8 + 24;
  *(v8 + 16) = 82;
  *(v8 + 18) = 4;
  *v8 = v7;
  swift::Demangle::__runtime::Node::addChild(this, v8, a1, a4, a5);
  v14 = *(a1 + 9);
  if (v14 >= *(a1 + 8))
  {
    return 0;
  }

  v34 = this;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  while (1)
  {
    v19 = *(a1 + 7);
    if (*(v19 + v14) - 48 > 9)
    {
      break;
    }

    *(a1 + 9) = v14 + 1;
    v20 = *(v19 + v14);
    if (v17 < v16)
    {
      goto LABEL_10;
    }

    v21 = *(a1 + 1);
    if (&v15[v16] != v21)
    {
      v22 = *(a1 + 2);
LABEL_16:
      if (2 * v16 <= 4)
      {
        v23 = 4;
      }

      else
      {
        v23 = 2 * v16;
      }

      v24 = v23 + v16;
      if (!v21 || &v21[v24] > v22)
      {
        v25 = 2 * *(a1 + 4);
        if (v25 <= v24 + 1)
        {
          v25 = v24 + 1;
        }

        *(a1 + 4) = v25;
        v26 = v25 + 8;
        v27 = malloc_type_malloc(v25 + 8, 0x2004093837F09uLL);
        v28 = v27 + v26;
        *v27 = *(a1 + 3);
        v21 = (v27 + 1);
        *(a1 + 2) = v28;
        *(a1 + 3) = v27;
      }

      *(a1 + 1) = &v21[v24];
      if (v16)
      {
        memcpy(v21, v15, v16);
      }

      v15 = v21;
      goto LABEL_9;
    }

    v22 = *(a1 + 2);
    if ((v21 + 1) > v22)
    {
      goto LABEL_16;
    }

    *(a1 + 1) = v21 + 1;
    LODWORD(v23) = 1;
LABEL_9:
    v16 += v23;
LABEL_10:
    v18 = v17 + 1;
    v15[v17] = v20;
    v14 = *(a1 + 9);
    ++v17;
    if (v14 >= *(a1 + 8))
    {
      goto LABEL_28;
    }
  }

  v18 = v17;
LABEL_28:
  if (v18)
  {
    v29 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 1) = v29;
    if (!v29 || v29 + 24 > *(a1 + 2))
    {
      v30 = 2 * *(a1 + 4);
      if (v30 <= 0x20)
      {
        v30 = 32;
      }

      *(a1 + 4) = v30;
      v31 = v30 + 8;
      v32 = malloc_type_malloc(v30 + 8, 0x2004093837F09uLL);
      *v32 = *(a1 + 3);
      v29 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 2) = v32 + v31;
      *(a1 + 3) = v32;
    }

    *(a1 + 1) = v29 + 24;
    *(v29 + 16) = 83;
    *(v29 + 18) = 3;
    *v29 = v15;
    *(v29 + 8) = v18;
    if (v34)
    {
      swift::Demangle::__runtime::Node::addChild(v34, v29, a1, v12, v13);
      return v34;
    }
  }

  return 0;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleExtendedExistentialShape(swift::Demangle::__runtime::Demangler *this, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 24);
  if (!v5)
  {
    return 0;
  }

  v7 = *(*(this + 11) + 8 * (v5 - 1));
  if (*(v7 + 8) == 243)
  {
    *(this + 24) = --v5;
    if (a2 != 71)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    if (a2 != 71)
    {
      goto LABEL_15;
    }
  }

  if (v5)
  {
    v8 = v5 - 1;
    v9 = *(*(this + 11) + 8 * v8);
    if (*(v9 + 8) == 44)
    {
      *(this + 24) = v8;
      if (v7)
      {
        v10 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v10;
        if (!v10 || v10 + 24 > *(this + 2))
        {
          v11 = 2 * *(this + 4);
          if (v11 <= 0x20)
          {
            v11 = 32;
          }

          *(this + 4) = v11;
          v12 = v11 + 8;
          v13 = malloc_type_malloc(v11 + 8, 0x2004093837F09uLL);
          v14 = v13 + v12;
          *v13 = *(this + 3);
          v10 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v14;
          *(this + 3) = v13;
        }

        *(this + 1) = v10 + 24;
        *(v10 + 16) = 348;
        *(v10 + 18) = 0;
        swift::Demangle::__runtime::Node::addChild(v10, v9, this, a4, a5);
        goto LABEL_22;
      }

      return 0;
    }
  }

LABEL_15:
  if (!v7)
  {
    return 0;
  }

  v10 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v10;
  if (!v10 || v10 + 24 > *(this + 2))
  {
    v15 = 2 * *(this + 4);
    if (v15 <= 0x20)
    {
      v15 = 32;
    }

    *(this + 4) = v15;
    v16 = v15 + 8;
    v17 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
    v18 = v17 + v16;
    *v17 = *(this + 3);
    v10 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v18;
    *(this + 3) = v17;
  }

  *(this + 1) = v10 + 24;
  *(v10 + 16) = 348;
  *(v10 + 18) = 0;
LABEL_22:
  swift::Demangle::__runtime::Node::addChild(v10, v7, this, a4, a5);
  return v10;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleSymbolicExtendedExistentialType(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = swift::Demangle::__runtime::Demangler::popRetroactiveConformances(this, a2, a3, a4, a5);
  v9 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  *(this + 1) = v9;
  if (!v9 || &v9[1].u64[1] > *(this + 2))
  {
    v10 = 2 * *(this + 4);
    if (v10 <= 0x20)
    {
      v10 = 32;
    }

    *(this + 4) = v10;
    v11 = v10 + 8;
    v12 = malloc_type_malloc(v10 + 8, 0x2004093837F09uLL);
    v13 = v12 + v11;
    *v12 = *(this + 3);
    v9 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(this + 2) = v13;
    *(this + 3) = v12;
  }

  *(this + 1) = v9 + 24;
  v9[1].i16[0] = 246;
  v9[1].i8[2] = 0;
  v14 = *(this + 24);
  if (!v14)
  {
    return 0;
  }

  do
  {
    v15 = *(*(this + 11) + 8 * (v14 - 1));
    if (*(v15 + 8) != 243)
    {
      break;
    }

    *(this + 24) = v14 - 1;
    swift::Demangle::__runtime::Node::addChild(v9, v15, this, v6, v7);
    v14 = *(this + 24);
  }

  while (v14);
  v16 = v9[1].u8[2];
  if (v16 == 5)
  {
    v17 = v9->i64[0];
    v18 = v9->u32[2];
    v19 = (v9->i64[0] + 8 * v18 - 8);
    if (v18)
    {
      v20 = v19 > v17;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      v21 = v17 + 8;
      do
      {
        v22 = *(v21 - 8);
        *(v21 - 8) = *v19;
        *v19-- = v22;
        v23 = v21 >= v19;
        v21 += 8;
      }

      while (!v23);
    }
  }

  else if (v16 == 2)
  {
    *v9 = vextq_s8(*v9, *v9, 8uLL);
  }

  if (!v14)
  {
    return 0;
  }

  v24 = v14 - 1;
  v25 = *(*(this + 11) + 8 * v24);
  *(this + 24) = v24;
  if (!v25 || (*(v25 + 8) & 0xFFFE) != 0x15E)
  {
    return 0;
  }

  if (v8)
  {
    result = swift::Demangle::__runtime::Demangler::createWithChildren(this, 352, v25, v9, v8->i8);
    v29 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!v9)
  {
    return 0;
  }

  v29 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v29;
  if (!v29 || v29 + 24 > *(this + 2))
  {
    v30 = 2 * *(this + 4);
    if (v30 <= 0x20)
    {
      v30 = 32;
    }

    *(this + 4) = v30;
    v31 = v30 + 8;
    v32 = v25;
    v33 = malloc_type_malloc(v30 + 8, 0x2004093837F09uLL);
    v25 = v32;
    v34 = v33 + v31;
    *v33 = *(this + 3);
    v29 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v34;
    *(this + 3) = v33;
  }

  *(this + 1) = v29 + 24;
  *(v29 + 16) = 352;
  *(v29 + 18) = 0;
  swift::Demangle::__runtime::Node::addChild(v29, v25, this, v6, v7);
  swift::Demangle::__runtime::Node::addChild(v29, v9, this, v35, v36);
LABEL_33:
  v37 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v37;
  if (!v37 || v37 + 24 > *(this + 2))
  {
    v38 = 2 * *(this + 4);
    if (v38 <= 0x20)
    {
      v38 = 32;
    }

    *(this + 4) = v38;
    v39 = v38 + 8;
    v40 = malloc_type_malloc(v38 + 8, 0x2004093837F09uLL);
    v41 = v40 + v39;
    *v40 = *(this + 3);
    v37 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v41;
    *(this + 3) = v40;
  }

  *(this + 1) = v37 + 24;
  *(v37 + 16) = 243;
  *(v37 + 18) = 0;
  swift::Demangle::__runtime::Node::addChild(v37, v29, this, v27, v28);
  return v37;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleMetatypeRepresentation(swift::Demangle::__runtime::Demangler *this)
{
  v1 = *(this + 9);
  if (v1 >= *(this + 8))
  {
    return 0;
  }

  *(this + 9) = v1 + 1;
  v2 = *(*(this + 7) + v1);
  switch(v2)
  {
    case 'T':
      v3 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v3;
      if (!v3 || v3 + 24 > *(this + 2))
      {
        v14 = 2 * *(this + 4);
        if (v14 <= 0x20)
        {
          v14 = 32;
        }

        *(this + 4) = v14;
        v15 = v14 + 8;
        v16 = this;
        v17 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
        this = v16;
        *v17 = *(v16 + 3);
        v3 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v16 + 2) = v17 + v15;
        *(v16 + 3) = v17;
      }

      *(this + 1) = v3 + 24;
      *(v3 + 16) = 155;
      *(v3 + 18) = 3;
      *v3 = "@thick";
      v8 = 6;
      break;
    case 'o':
      v3 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v3;
      if (!v3 || v3 + 24 > *(this + 2))
      {
        v10 = 2 * *(this + 4);
        if (v10 <= 0x20)
        {
          v10 = 32;
        }

        *(this + 4) = v10;
        v11 = v10 + 8;
        v12 = this;
        v13 = malloc_type_malloc(v10 + 8, 0x2004093837F09uLL);
        this = v12;
        *v13 = *(v12 + 3);
        v3 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v12 + 2) = v13 + v11;
        *(v12 + 3) = v13;
      }

      *(this + 1) = v3 + 24;
      *(v3 + 16) = 155;
      *(v3 + 18) = 3;
      *v3 = "@objc_metatype";
      v8 = 14;
      break;
    case 't':
      v3 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v3;
      if (!v3 || v3 + 24 > *(this + 2))
      {
        v4 = 2 * *(this + 4);
        if (v4 <= 0x20)
        {
          v4 = 32;
        }

        *(this + 4) = v4;
        v5 = v4 + 8;
        v6 = this;
        v7 = malloc_type_malloc(v4 + 8, 0x2004093837F09uLL);
        this = v6;
        *v7 = *(v6 + 3);
        v3 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(v6 + 2) = v7 + v5;
        *(v6 + 3) = v7;
      }

      *(this + 1) = v3 + 24;
      *(v3 + 16) = 155;
      *(v3 + 18) = 3;
      *v3 = "@thin";
      v8 = 5;
      break;
    default:
      return 0;
  }

  *(v3 + 8) = v8;
  return v3;
}

int8x16_t *swift::Demangle::__runtime::Demangler::demangleConstrainedExistentialRequirementList(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  *(this + 1) = v6;
  if (!v6 || &v6[1].u64[1] > *(this + 2))
  {
    v7 = 2 * *(this + 4);
    if (v7 <= 0x20)
    {
      v7 = 32;
    }

    *(this + 4) = v7;
    v8 = v7 + 8;
    v9 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
    v10 = v9 + v8;
    *v9 = *(this + 3);
    v6 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(this + 2) = v10;
    *(this + 3) = v9;
  }

  *(this + 1) = v6 + 24;
  v6[1].i16[0] = 86;
  v6[1].i8[2] = 0;
  do
  {
    v14 = *(this + 24);
    if (!v14)
    {
      return 0;
    }

    v15 = (v14 - 1);
    v16 = *(this + 11);
    v17 = *(*(v16 + 8 * v15) + 16);
    if (v17 == 288)
    {
      *(this + 24) = v15;
      if (v14 == 1)
      {
        return 0;
      }

      v15 = (v14 - 2);
    }

    v11 = *(v16 + 8 * v15);
    v12 = v11[8];
    v13 = v12 > 0x2B || ((1 << v12) & 0xF2000000000) == 0;
    if (v13 && v12 != 370 && v12 != 367)
    {
      return 0;
    }

    *(this + 24) = v15;
    swift::Demangle::__runtime::Node::addChild(v6, v11, this, a4, a5);
  }

  while (v17 != 288);
  v19 = v6[1].u8[2];
  if (v19 == 5)
  {
    v20 = v6->u32[2];
    if (v20)
    {
      v21 = (v6->i64[0] + 8 * v20 - 8);
      if (v21 > v6->i64[0])
      {
        v22 = v6->i64[0] + 8;
        do
        {
          v23 = *(v22 - 8);
          *(v22 - 8) = *v21;
          *v21-- = v23;
          v24 = v22 >= v21;
          v22 += 8;
        }

        while (!v24);
      }
    }
  }

  else if (v19 == 2)
  {
    *v6 = vextq_s8(*v6, *v6, 8uLL);
  }

  return v6;
}

unint64_t swift::Demangle::__runtime::Demangler::demangleProtocolList(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v6;
  if (!v6 || (v7 = *(this + 2), v6 + 24 > v7))
  {
    v8 = 2 * *(this + 4);
    if (v8 <= 0x20)
    {
      v8 = 32;
    }

    *(this + 4) = v8;
    v9 = v8 + 8;
    v10 = malloc_type_malloc(v8 + 8, 0x2004093837F09uLL);
    v7 = v10 + v9;
    *v10 = *(this + 3);
    v6 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v7;
    *(this + 3) = v10;
  }

  *(v6 + 16) = 246;
  *(v6 + 18) = 0;
  v11 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v11;
  if (v11)
  {
    v12 = v11 + 24 > v7;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 2 * *(this + 4);
    if (v13 <= 0x20)
    {
      v13 = 32;
    }

    *(this + 4) = v13;
    v14 = v13 + 8;
    v15 = malloc_type_malloc(v13 + 8, 0x2004093837F09uLL);
    v16 = v15 + v14;
    *v15 = *(this + 3);
    v11 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v16;
    *(this + 3) = v15;
  }

  *(this + 1) = v11 + 24;
  *(v11 + 16) = 200;
  *(v11 + 18) = 0;
  swift::Demangle::__runtime::Node::addChild(v11, v6, this, a4, a5);
  v21 = *(this + 24);
  if (v21 && (v22 = v21 - 1, *(*(*(this + 11) + 8 * v22) + 16) == 287))
  {
    *(this + 24) = v22;
  }

  else
  {
    do
    {
      v23 = *(this + 24);
      if (v23 && (v24 = v23 - 1, *(*(*(this + 11) + 8 * v24) + 16) == 288))
      {
        v25 = 0;
        *(this + 24) = v24;
      }

      else
      {
        v25 = 1;
      }

      v26 = swift::Demangle::__runtime::Demangler::popProtocol(this, v17, v18, v19, v20);
      if (!v26)
      {
        return 0;
      }

      swift::Demangle::__runtime::Node::addChild(v6, v26, this, v27, v28);
    }

    while ((v25 & 1) != 0);
    v29 = *(v6 + 18);
    if (v29 == 5)
    {
      v31 = *(v6 + 8);
      if (v31)
      {
        v32 = (*v6 + 8 * v31 - 8);
        if (v32 > *v6)
        {
          v33 = *v6 + 8;
          do
          {
            v34 = *(v33 - 8);
            *(v33 - 8) = *v32;
            *v32-- = v34;
            v35 = v33 >= v32;
            v33 += 8;
          }

          while (!v35);
        }
      }
    }

    else if (v29 == 2)
    {
      *v6 = vextq_s8(*v6, *v6, 8uLL);
    }
  }

  return v11;
}

swift::Demangle::__runtime::Node *swift::Demangle::__runtime::Demangler::demangleAccessor(swift::Demangle::__runtime::Demangler *this, swift::Demangle::__runtime::Node *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 8);
  v5 = *(this + 9);
  if (v5 >= v6)
  {
    return 0;
  }

  v7 = v5 + 1;
  *(this + 9) = v5 + 1;
  v8 = *(this + 7);
  v9 = 150;
  v10 = a2;
  switch(*(v8 + v5))
  {
    case 'G':
      v9 = 102;
      goto LABEL_18;
    case 'M':
      v9 = 161;
      goto LABEL_18;
    case 'W':
      v9 = 53;
      goto LABEL_18;
    case 'a':
      if (v7 >= v6)
      {
        return 0;
      }

      v10 = 0;
      *(this + 9) = v5 + 2;
      v11 = *(v8 + v7);
      if (v11 > 0x6E)
      {
        if (v11 == 117)
        {
          v9 = 263;
        }

        else
        {
          if (v11 != 111)
          {
            return v10;
          }

          v9 = 165;
        }
      }

      else if (v11 == 79)
      {
        v9 = 179;
      }

      else
      {
        if (v11 != 80)
        {
          return v10;
        }

        v9 = 167;
      }

      goto LABEL_18;
    case 'g':
      v9 = 100;
      goto LABEL_18;
    case 'i':
      v9 = 131;
      goto LABEL_18;
    case 'l':
      if (v7 >= v6)
      {
        return 0;
      }

      v10 = 0;
      *(this + 9) = v5 + 2;
      v19 = *(v8 + v7);
      if (v19 > 0x6F)
      {
        if (v19 == 112)
        {
          v9 = 166;
        }

        else
        {
          if (v19 != 117)
          {
            return v10;
          }

          v9 = 262;
        }
      }

      else if (v19 == 79)
      {
        v9 = 178;
      }

      else
      {
        if (v19 != 111)
        {
          return v10;
        }

        v9 = 164;
      }

LABEL_18:
      if (!a2)
      {
        return 0;
      }

      v10 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
      *(this + 1) = v10;
      if (!v10 || v10 + 24 > *(this + 2))
      {
        v12 = 2 * *(this + 4);
        if (v12 <= 0x20)
        {
          v12 = 32;
        }

        *(this + 4) = v12;
        v13 = v12 + 8;
        v14 = this;
        v15 = a2;
        v16 = malloc_type_malloc(v12 + 8, 0x2004093837F09uLL);
        a2 = v15;
        v17 = v16;
        this = v14;
        v18 = v17 + v13;
        *v17 = *(v14 + 3);
        v10 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
        *(v14 + 2) = v18;
        *(v14 + 3) = v17;
      }

      *(this + 1) = v10 + 24;
      *(v10 + 8) = v9;
      *(v10 + 18) = 0;
      swift::Demangle::__runtime::Node::addChild(v10, a2, this, a4, a5);
      break;
    case 'm':
      goto LABEL_18;
    case 'p':
      return v10;
    case 'r':
      v9 = 214;
      goto LABEL_18;
    case 's':
      v9 = 226;
      goto LABEL_18;
    case 'w':
      v9 = 269;
      goto LABEL_18;
    case 'x':
      v9 = 162;
      goto LABEL_18;
    case 'y':
      v9 = 215;
      goto LABEL_18;
    default:
      return 0;
  }

  return v10;
}

uint64_t swift::Demangle::__runtime::Demangler::demangleEntity(swift::Demangle::__runtime::Demangler *this, __int16 a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = *(this + 24);
  if (v7 && (v8 = v7 - 1, v9 = *(*(this + 11) + 8 * v8), *(v9 + 8) == 243))
  {
    *(this + 24) = v8;
  }

  else
  {
    v9 = 0;
  }

  v14 = swift::Demangle::__runtime::Demangler::popFunctionParamLabels(this, v9, a3, a4, a5);
  v15 = *(this + 24);
  if (!v15 || ((v16 = v15 - 1, v17 = *(*(this + 11) + 8 * v16), v18 = v17[8], (v18 - 183) <= 0x3D) ? (v19 = ((1 << (v18 + 73)) & 0x200000020000010DLL) == 0) : (v19 = 1), v19 && ((v18 - 103) <= 0x2B ? (v20 = ((1 << (v18 - 103)) & 0x80004000001) == 0) : (v20 = 1), v20 && v18 != 361)))
  {
    v17 = 0;
  }

  else
  {
    *(this + 24) = v16;
  }

  v21 = swift::Demangle::__runtime::Demangler::popContext(this, v10, v11, v12, v13);
  if (v14)
  {
    v22 = swift::Demangle::__runtime::Demangler::createWithChildren(this, a2, v21, v17, v14, v9);
  }

  else
  {
    v22 = swift::Demangle::__runtime::Demangler::createWithChildren(this, a2, v21, v17, v9);
  }

  v23 = v22;
  result = 0;
  v25 = *(this + 81);
  v31 = v23;
  v30 = v25;
  if (v9 && v23)
  {
    __p[0] = 0;
    __p[1] = 0;
    v29 = 0;
    v27[0] = __p;
    v27[1] = &v31;
    v27[2] = &v30;
    setParentForOpaqueReturnTypeNodesImpl(this, v9, __swift::__runtime::llvm::function_ref<__swift::__runtime::llvm::StringRef ()(void)>::callback_fn<setParentForOpaqueReturnTypeNodes(swift::Demangle::__runtime::Demangler &,swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::Node *,swift::Mangle::__runtime::ManglingFlavor)::$_0>, v27);
    result = v31;
    if (SHIBYTE(v29) < 0)
    {
      v26 = v31;
      operator delete(__p[0]);
      return v26;
    }
  }

  return result;
}

unsigned int *swift::Demangle::__runtime::Demangler::demangleMacroExpansion(swift::Demangle::__runtime::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 8);
  v6 = *(this + 9);
  if (v6 >= v5)
  {
    return 0;
  }

  result = 0;
  v9 = v6 + 1;
  *(this + 9) = v6 + 1;
  v10 = *(this + 7);
  v11 = *(v10 + v6);
  if (v11 <= 0x65)
  {
    if (*(v10 + v6) > 0x61u)
    {
      switch(v11)
      {
        case 'b':
          v12 = 12;
          break;
        case 'c':
          v12 = 29;
          break;
        case 'e':
          v12 = 74;
          break;
        default:
          return result;
      }

      goto LABEL_31;
    }

    if (v11 != 88)
    {
      if (v11 != 97)
      {
        return result;
      }

      v12 = 8;
      goto LABEL_31;
    }

    if (v9 >= v5)
    {
      goto LABEL_93;
    }

    v13 = *(v10 + v9);
    if (v13 == 95)
    {
      v14 = 0;
      v9 = v6 + 2;
      *(this + 9) = v6 + 2;
      goto LABEL_94;
    }

    if ((v13 - 48) > 9)
    {
LABEL_93:
      v14 = -1000;
    }

    else
    {
      v37 = 0;
      while (1)
      {
        v38 = *(v10 + v9);
        if ((v38 - 48) > 9)
        {
          break;
        }

        v39 = v38 + 10 * v37 - 48;
        if (v39 < v37)
        {
          goto LABEL_93;
        }

        *(this + 9) = ++v9;
        v37 = v39;
        if (v5 == v9)
        {
          v14 = -1000;
          goto LABEL_102;
        }
      }

      v14 = -1000;
      if ((v37 & 0x80000000) == 0 && v9 < v5 && v38 == 95)
      {
        *(this + 9) = ++v9;
        v14 = (v37 + 1);
      }
    }

LABEL_94:
    if (v9 < v5)
    {
      v40 = *(v10 + v9);
      if (v40 == 95)
      {
        v41 = 0;
        *(this + 9) = v9 + 1;
        goto LABEL_103;
      }

      if ((v40 - 48) <= 9)
      {
        v42 = 0;
        while (1)
        {
          v43 = *(v10 + v9);
          if ((v43 - 48) > 9)
          {
            break;
          }

          v44 = v43 + 10 * v42 - 48;
          if (v44 >= v42)
          {
            *(this + 9) = ++v9;
            v42 = v44;
            if (v5 != v9)
            {
              continue;
            }
          }

          goto LABEL_102;
        }

        v41 = -1000;
        if ((v42 & 0x80000000) == 0 && v9 < v5 && v43 == 95)
        {
          *(this + 9) = v9 + 1;
          v41 = (v42 + 1);
        }

LABEL_103:
        v45 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v45;
        if (!v45 || v45 + 24 > *(this + 2))
        {
          v46 = 2 * *(this + 4);
          if (v46 <= 0x20)
          {
            v46 = 32;
          }

          *(this + 4) = v46;
          v47 = v46 + 8;
          v48 = malloc_type_malloc(v46 + 8, 0x2004093837F09uLL);
          v49 = v48 + v47;
          *v48 = *(this + 3);
          v45 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v49;
          *(this + 3) = v48;
        }

        *(this + 1) = v45 + 24;
        *(v45 + 16) = 104;
        *(v45 + 18) = 4;
        *v45 = v14;
        v50 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v50;
        if (!v50 || v50 + 24 > *(this + 2))
        {
          v51 = 2 * *(this + 4);
          if (v51 <= 0x20)
          {
            v51 = 32;
          }

          *(this + 4) = v51;
          v52 = v51 + 8;
          v53 = malloc_type_malloc(v51 + 8, 0x2004093837F09uLL);
          *v53 = *(this + 3);
          v50 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v53 + v52;
          *(this + 3) = v53;
        }

        *(this + 1) = v50 + 24;
        *(v50 + 16) = 104;
        *(v50 + 18) = 4;
        *v50 = v41;
        v54 = *(this + 24);
        if (!v54)
        {
          v57 = 0;
          goto LABEL_121;
        }

        v55 = (v54 - 1);
        v56 = *(this + 11);
        v57 = *(v56 + 8 * v55);
        if (*(v57 + 8) == 103)
        {
          *(this + 24) = v55;
          if (v54 == 1)
          {
            goto LABEL_121;
          }

          v55 = (v54 - 2);
        }

        else
        {
          v57 = 0;
        }

        v58 = *(v56 + 8 * v55);
        if (*(v58 + 8) == 103)
        {
          *(this + 24) = v55;
LABEL_122:

          return swift::Demangle::__runtime::Demangler::createWithChildren(this, 148, v58, v57, v45, v50);
        }

LABEL_121:
        v58 = 0;
        goto LABEL_122;
      }
    }

LABEL_102:
    v41 = -1000;
    goto LABEL_103;
  }

  if (*(v10 + v6) <= 0x70u)
  {
    switch(v11)
    {
      case 'f':
        v15 = 0;
        v16 = (this + 96);
        v17 = *(this + 24);
        v12 = 76;
        if (!v17)
        {
          v22 = 0;
          v20 = 0;
          v23 = 0;
          goto LABEL_77;
        }

        v18 = 1;
        goto LABEL_34;
      case 'm':
        v12 = 151;
        break;
      case 'p':
        v12 = 182;
        break;
      default:
        return result;
    }

    goto LABEL_31;
  }

  if (v11 == 113)
  {
    v12 = 184;
LABEL_31:
    v15 = 1;
    goto LABEL_32;
  }

  if (v11 != 117)
  {
    if (v11 != 114)
    {
      return result;
    }

    v12 = 152;
    goto LABEL_31;
  }

  v15 = 0;
  v12 = 149;
LABEL_32:
  v16 = (this + 96);
  v17 = *(this + 24);
  if (!v17)
  {
    v20 = 0;
    goto LABEL_44;
  }

  v18 = 0;
LABEL_34:
  v19 = *(this + 11);
  v20 = *(v19 + 8 * (v17 - 1));
  if (*(v20 + 16) == 103)
  {
    *v16 = --v17;
    if (!v18)
    {
LABEL_59:
      LODWORD(v21) = v17;
      v22 = 0;
      if (!v15)
      {
LABEL_60:
        v23 = 0;
        if (!v21)
        {
          goto LABEL_77;
        }

        goto LABEL_61;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v20 = 0;
    if (!v18)
    {
      goto LABEL_59;
    }
  }

  if (!v17)
  {
LABEL_44:
    LODWORD(v21) = 0;
    v22 = 0;
    if (!v15)
    {
      goto LABEL_60;
    }

    goto LABEL_45;
  }

  LODWORD(v21) = v17 - 1;
  v22 = *(v19 + 8 * (v17 - 1));
  if (*(v22 + 8) != 186)
  {
    goto LABEL_59;
  }

  *v16 = v21;
  if ((v15 & 1) == 0)
  {
    v15 = 0;
    v23 = 0;
    if (v17 == 1)
    {
      goto LABEL_77;
    }

    goto LABEL_61;
  }

LABEL_45:
  if (!v21)
  {
    v23 = 0;
    v15 = 1;
    goto LABEL_77;
  }

  v21 = (v21 - 1);
  v24 = *(this + 11);
  v23 = *(v24 + 8 * v21);
  v25 = v23[8];
  v26 = (v25 - 183) > 0x3D || ((1 << (v25 + 73)) & 0x200000020000010DLL) == 0;
  if (!v26 || ((v25 - 103) <= 0x2B ? (v27 = ((1 << (v25 - 103)) & 0x80004000001) == 0) : (v27 = 1), !v27 || v25 == 361))
  {
    *v16 = v21;
    v15 = 1;
    if (!v21)
    {
      goto LABEL_77;
    }

LABEL_61:
    v24 = *(this + 11);
    v21 = (v21 - 1);
    goto LABEL_62;
  }

  v23 = 0;
  v15 = 1;
LABEL_62:
  v28 = *(v24 + 8 * v21);
  v29 = v28[8];
  v30 = (v29 - 148) > 0x22 || ((1 << (v29 + 108)) & 0x400000019) == 0;
  if (!v30 || ((v29 - 29) <= 0x2F ? (v31 = ((1 << (v29 - 29)) & 0xA00000000001) == 0) : (v31 = 1), v31 ? (v32 = v29 == 8) : (v32 = 1), v32))
  {
    *v16 = v21;
    goto LABEL_78;
  }

LABEL_77:
  v28 = swift::Demangle::__runtime::Demangler::popContext(this, a2, a3, a4, a5);
LABEL_78:
  v33 = swift::Demangle::__runtime::Demangler::demangleIndexAsNode(this);
  if (v15 && v23)
  {
    result = swift::Demangle::__runtime::Demangler::createWithChildren(this, v12, v28, v23, v20, v33);
    if (!v22)
    {
      return result;
    }
  }

  else
  {
    result = swift::Demangle::__runtime::Demangler::createWithChildren(this, v12, v28, v20, v33);
    if (!v22)
    {
      return result;
    }
  }

  v36 = result;
  swift::Demangle::__runtime::Node::addChild(result, v22, this, v34, v35);
  return v36;
}

void swift::Demangle::__runtime::NodeFactory::~NodeFactory(swift::Demangle::__runtime::NodeFactory *this)
{
  *this = off_E13C0;
  v2 = *(this + 3);
  if (v2)
  {
    do
    {
      v3 = *v2;
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(v4 + 48) = 0;
  }
}

{
  *this = off_E13C0;
  v2 = *(this + 3);
  if (v2)
  {
    do
    {
      v3 = *v2;
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(v4 + 48) = 0;
  }

  operator delete();
}

unsigned int *setParentForOpaqueReturnTypeNodesImpl(unsigned int *result, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v6 = result;
  v8 = a2 + 2;
  v7 = *(a2 + 8);
  if (v7 > 0x109)
  {
    if (v7 == 266)
    {
      return result;
    }

    if (v7 != 322)
    {
      goto LABEL_12;
    }

    v9 = *(a2 + 18);
    if (v9 == 1)
    {
      v11 = 0;
    }

    else
    {
      if (v9 != 2)
      {
        if (v9 != 5 || (v10 = *(a2 + 2), !v10))
        {
LABEL_25:
          v17 = a3(a4);
          Node = swift::Demangle::__runtime::NodeFactory::createNode(v6, 356, v17, v18);

          return swift::Demangle::__runtime::Node::addChild(a2, Node, v6, v20, v21);
        }

        v11 = v10 - 1;
        v12 = *a2;
LABEL_24:
        if (*(v12[v11] + 16) == 356)
        {
          return result;
        }

        goto LABEL_25;
      }

      v11 = 1;
    }

    v12 = a2;
    goto LABEL_24;
  }

  if (v7 == 78 || v7 == 231)
  {
    return result;
  }

LABEL_12:
  v13 = *(a2 + 18);
  v14 = a2;
  if ((v13 - 1) >= 2)
  {
    if (v13 == 5)
    {
      v15 = *a2;
      v14 = *a2;
LABEL_20:
      v8 = &v15[*(a2 + 2)];
      goto LABEL_31;
    }

    v14 = 0;
  }

  switch(v13)
  {
    case 1:
      v8 = a2 + 1;
      break;
    case 2:
      goto LABEL_30;
    case 5:
      v15 = *a2;
      goto LABEL_20;
    default:
      v8 = 0;
      break;
  }

LABEL_31:
  while (v14 != v8)
  {
LABEL_30:
    v22 = *v14++;
    result = setParentForOpaqueReturnTypeNodesImpl(v6, v22, a3, a4);
  }

  return result;
}

std::string *__swift::__runtime::llvm::function_ref<__swift::__runtime::llvm::StringRef ()(void)>::callback_fn<setParentForOpaqueReturnTypeNodes(swift::Demangle::__runtime::Demangler &,swift::Demangle::__runtime::Node *,swift::Demangle::__runtime::Node *,swift::Mangle::__runtime::ManglingFlavor)::$_0>(std::string **a1)
{
  v3 = *a1;
  v4 = SHIBYTE((*a1)->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    if (v3[1])
    {
      goto LABEL_3;
    }
  }

  else if (*(&(*a1)->__r_.__value_.__s + 23))
  {
LABEL_3:
    if (v4 >= 0)
    {
      result = *a1;
    }

    else
    {
      result = *v3;
    }

    if (v4 < 0)
    {
      v6 = v3[1];
    }

    return result;
  }

  v14 = v1;
  v15 = v2;
  v7 = a1[1]->__r_.__value_.__r.__words[0];
  v8 = a1[2]->__r_.__value_.__s.__data_[0];
  swift::Demangle::__runtime::mangleNode();
  std::string::operator=(*a1, &__p);
  v10 = SHIBYTE((*a1)->__r_.__value_.__r.__words[2]);
  if (v10 >= 0)
  {
    result = *a1;
  }

  else
  {
    result = (*a1)->__r_.__value_.__r.__words[0];
  }

  if (v10 >= 0)
  {
    size = SHIBYTE((*a1)->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = (*a1)->__r_.__value_.__l.__size_;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v12 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v12;
  }

  return result;
}

uint64_t std::vector<swift::Demangle::__runtime::Node *>::emplace_back<swift::Demangle::__runtime::Node * const&>(uint64_t a1, void *a2)
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
  return v5 - 8;
}

BOOL swift::Mangle::__runtime::isNonAscii(char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 - 1;
  do
  {
    v3 = *a1++;
    v4 = v3 < 0;
    if (v3 < 0)
    {
      break;
    }
  }

  while (v2--);
  return v4;
}

uint64_t swift::Mangle::__runtime::needsPunycodeEncoding(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (((*a1 & 0xDF) - 65) < 0x1Au || (v2 = *a1, v2 == 95) || v2 == 36)
  {
    v3 = a2 - 1;
    if (a2 == 1)
    {
      return 0;
    }

    for (i = a1 + 1; ; ++i)
    {
      v6 = *i;
      if ((v6 & 0xFFFFFFDF) - 65 >= 0x1A && v6 != 36 && v6 != 95 && (v6 - 48) > 9)
      {
        break;
      }

      if (!--v3)
      {
        return 0;
      }
    }
  }

  return 1;
}

swift::Mangle::__runtime *swift::Mangle::__runtime::translateOperatorChar(swift::Mangle::__runtime *this)
{
  v2 = this - 33;
  result = (&stru_20 + 65);
  switch(v2)
  {
    case 0:
      result = (&stru_68 + 6);
      break;
    case 4:
      result = (&stru_68 + 10);
      break;
    case 5:
      return result;
    case 9:
      result = (&stru_68 + 5);
      break;
    case 10:
      result = (&stru_68 + 8);
      break;
    case 12:
      result = (&stru_68 + 11);
      break;
    case 13:
      result = (&stru_68 + 18);
      break;
    case 14:
      result = (&stru_20 + 68);
      break;
    case 27:
      result = (&stru_68 + 4);
      break;
    case 28:
      result = (&stru_20 + 69);
      break;
    case 29:
      result = (&stru_20 + 71);
      break;
    case 30:
      result = (&stru_68 + 9);
      break;
    case 31:
      result = (&stru_20 + 67);
      break;
    case 61:
      result = (&stru_68 + 16);
      break;
    case 91:
      result = (&stru_68 + 7);
      break;
    case 93:
      result = (&stru_68 + 12);
      break;
    default:
      result = this;
      break;
  }

  return result;
}

void swift::Mangle::__runtime::translateOperator(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2)
  {
    v3 = a2;
    do
    {
      v6 = *a1++;
      v7 = swift::Mangle::__runtime::translateOperatorChar(v6);
      std::string::push_back(a3, v7);
      --v3;
    }

    while (v3);
  }
}

void *swift::Mangle::__runtime::getStandardTypeSubst@<X0>(void *result@<X0>, size_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = result;
  switch(a2)
  {
    case 3uLL:
      result = memcmp(result, "Set", a2);
      if (result)
      {
        result = memcmp(v6, "Int", a2);
        if (result)
        {
          goto LABEL_98;
        }

        v8 = "i";
      }

      else
      {
        v8 = "h";
      }

      goto LABEL_169;
    case 4uLL:
      result = memcmp(result, "Bool", a2);
      if (result)
      {
        result = memcmp(v6, "UInt", a2);
        if (result)
        {
          goto LABEL_98;
        }

        v8 = "u";
      }

      else
      {
        v8 = "b";
      }

      goto LABEL_169;
    case 5uLL:
      result = memcmp(result, "Array", a2);
      if (result)
      {
        result = memcmp(v6, "Float", a2);
        if (result)
        {
          result = memcmp(v6, "Range", a2);
          if (result)
          {
            goto LABEL_98;
          }

          v8 = "n";
        }

        else
        {
          v8 = "f";
        }
      }

      else
      {
        v8 = "a";
      }

      goto LABEL_169;
    case 6uLL:
      result = memcmp(result, "Double", a2);
      if (result)
      {
        result = memcmp(v6, "String", a2);
        if (result)
        {
          goto LABEL_98;
        }

        v8 = "S";
      }

      else
      {
        v8 = "d";
      }

      goto LABEL_169;
    case 7uLL:
      result = memcmp(result, "Numeric", a2);
      if (result)
      {
        goto LABEL_98;
      }

      v8 = "j";
      goto LABEL_169;
    case 8uLL:
      result = memcmp(result, "Optional", a2);
      if (result)
      {
        result = memcmp(v6, "Hashable", a2);
        if (result)
        {
          result = memcmp(v6, "Sequence", a2);
          if (result)
          {
            goto LABEL_98;
          }

          v8 = "T";
        }

        else
        {
          v8 = "H";
        }
      }

      else
      {
        v8 = "q";
      }

      goto LABEL_169;
    case 9uLL:
      result = memcmp(result, "Character", a2);
      if (result)
      {
        result = memcmp(v6, "Substring", a2);
        if (result)
        {
          result = memcmp(v6, "Encodable", a2);
          if (result)
          {
            if (*v6 == 0x6C6261646F636544 && *(v6 + 8) == 101)
            {
              v8 = "e";
            }

            else
            {
              result = memcmp(v6, "Equatable", a2);
              if (result)
              {
                goto LABEL_98;
              }

              v8 = "Q";
            }
          }

          else
          {
            v8 = "E";
          }
        }

        else
        {
          v8 = "s";
        }
      }

      else
      {
        v8 = "J";
      }

      goto LABEL_169;
    case 0xAuLL:
      result = memcmp(result, "Dictionary", a2);
      if (result)
      {
        result = memcmp(v6, "Comparable", a2);
        if (result)
        {
          if (*v6 == 0x697463656C6C6F43 && *(v6 + 4) == 28271)
          {
            v8 = "l";
          }

          else
          {
            result = memcmp(v6, "Strideable", a2);
            if (result)
            {
              goto LABEL_98;
            }

            v8 = "x";
          }
        }

        else
        {
          v8 = "L";
        }
      }

      else
      {
        v8 = "D";
      }

      goto LABEL_169;
    case 0xBuLL:
      result = memcmp(result, "ClosedRange", a2);
      if (result)
      {
        goto LABEL_98;
      }

      v8 = "N";
      goto LABEL_169;
    case 0xDuLL:
      result = memcmp(result, "UnsafePointer", a2);
      if (!result)
      {
        v8 = "P";
        goto LABEL_169;
      }

      result = memcmp(v6, "FloatingPoint", a2);
      if (!result)
      {
        v8 = "F";
        goto LABEL_169;
      }

      result = memcmp(v6, "SignedInteger", a2);
      if (!result)
      {
        v8 = "Z";
        goto LABEL_169;
      }

      if (*v6 == 0x6E497972616E6942 && *(v6 + 5) == 0x72656765746E4979)
      {
        v8 = "z";
        goto LABEL_169;
      }

      goto LABEL_98;
    case 0xEuLL:
      result = memcmp(result, "DefaultIndices", a2);
      if (result)
      {
        result = memcmp(v6, "StringProtocol", a2);
        if (result)
        {
          goto LABEL_98;
        }

        v8 = "y";
      }

      else
      {
        v8 = "I";
      }

      goto LABEL_169;
    case 0xFuLL:
      result = memcmp(result, "UnsignedInteger", a2);
      if (!result)
      {
        v8 = "U";
        goto LABEL_169;
      }

      if (*v6 == 0x70784565676E6152 && *(v6 + 7) == 0x6E6F697373657270)
      {
        v8 = "X";
        goto LABEL_169;
      }

      goto LABEL_98;
    case 0x10uLL:
      result = memcmp(result, "ObjectIdentifier", a2);
      if (result)
      {
        result = memcmp(v6, "UnsafeRawPointer", a2);
        if (result)
        {
          result = memcmp(v6, "IteratorProtocol", a2);
          if (result)
          {
            result = memcmp(v6, "RawRepresentable", a2);
            if (result)
            {
              goto LABEL_98;
            }

            v8 = "Y";
          }

          else
          {
            v8 = "t";
          }
        }

        else
        {
          v8 = "V";
        }
      }

      else
      {
        v8 = "O";
      }

      goto LABEL_169;
    case 0x11uLL:
      result = memcmp(result, "MutableCollection", a2);
      if (result)
      {
        goto LABEL_98;
      }

      v8 = "M";
      goto LABEL_169;
    case 0x13uLL:
      result = memcmp(result, "UnsafeBufferPointer", a2);
      if (result)
      {
        result = memcmp(v6, "BinaryFloatingPoint", a2);
        if (result)
        {
          goto LABEL_98;
        }

        v8 = "B";
      }

      else
      {
        v8 = "R";
      }

      goto LABEL_169;
    case 0x14uLL:
      result = memcmp(result, "UnsafeMutablePointer", a2);
      if (result)
      {
        goto LABEL_98;
      }

      v8 = "p";
      goto LABEL_169;
    case 0x15uLL:
      result = memcmp(result, "RandomNumberGenerator", a2);
      if (result)
      {
        goto LABEL_98;
      }

      v8 = "G";
      goto LABEL_169;
    case 0x16uLL:
      result = memcmp(result, "UnsafeRawBufferPointer", a2);
      if (result)
      {
        result = memcmp(v6, "RandomAccessCollection", a2);
        if (result)
        {
          goto LABEL_98;
        }

        v8 = "k";
      }

      else
      {
        v8 = "W";
      }

      goto LABEL_169;
    case 0x17uLL:
      result = memcmp(result, "UnsafeMutableRawPointer", a2);
      if (result)
      {
        result = memcmp(v6, "BidirectionalCollection", a2);
        if (result)
        {
          goto LABEL_98;
        }

        v8 = "K";
      }

      else
      {
        v8 = "v";
      }

      goto LABEL_169;
    case 0x1AuLL:
      result = memcmp(result, "UnsafeMutableBufferPointer", a2);
      if (!result)
      {
        v8 = "r";
        goto LABEL_169;
      }

      result = memcmp(v6, "RangeReplaceableCollection", a2);
      if (!result)
      {
        v8 = "m";
LABEL_169:
        *a4 = v8;
        *(a4 + 8) = 1;
        v13 = 1;
        goto LABEL_170;
      }

LABEL_98:
      if (a3)
      {
        switch(a2)
        {
          case 4uLL:
            result = memcmp(v6, "Task", a2);
            if (result)
            {
              goto LABEL_151;
            }

            v18 = "cT";
            goto LABEL_172;
          case 5uLL:
            if (*v6 != 1869898561 || *(v6 + 4) != 114)
            {
              goto LABEL_151;
            }

            v18 = "cA";
            goto LABEL_172;
          case 8uLL:
            result = memcmp(v6, "Executor", a2);
            if (result)
            {
              goto LABEL_151;
            }

            v18 = "cF";
            goto LABEL_172;
          case 9uLL:
            result = memcmp(v6, "TaskGroup", a2);
            if (result)
            {
              result = memcmp(v6, "MainActor", a2);
              if (result)
              {
                goto LABEL_151;
              }

              v18 = "cM";
            }

            else
            {
              v18 = "cG";
            }

            goto LABEL_172;
          case 0xAuLL:
            result = memcmp(v6, "UnownedJob", a2);
            if (result)
            {
              goto LABEL_151;
            }

            v18 = "cJ";
            goto LABEL_172;
          case 0xBuLL:
            result = memcmp(v6, "AsyncStream", a2);
            if (result)
            {
              goto LABEL_151;
            }

            v18 = "cS";
            goto LABEL_172;
          case 0xCuLL:
            result = memcmp(v6, "TaskExecutor", a2);
            if (result)
            {
              result = memcmp(v6, "TaskPriority", a2);
              if (result)
              {
                goto LABEL_151;
              }

              v18 = "cP";
            }

            else
            {
              v18 = "ch";
            }

            goto LABEL_172;
          case 0xDuLL:
            result = memcmp(v6, "AsyncSequence", a2);
            if (result)
            {
              goto LABEL_151;
            }

            v18 = "ci";
            goto LABEL_172;
          case 0xEuLL:
            result = memcmp(v6, "SerialExecutor", a2);
            if (result)
            {
              goto LABEL_151;
            }

            v18 = "cf";
            goto LABEL_172;
          case 0x11uLL:
            result = memcmp(v6, "CancellationError", a2);
            if (result)
            {
              result = memcmp(v6, "ThrowingTaskGroup", a2);
              if (result)
              {
                result = memcmp(v6, "UnsafeCurrentTask", a2);
                if (result)
                {
                  goto LABEL_151;
                }

                v18 = "ct";
              }

              else
              {
                v18 = "cg";
              }
            }

            else
            {
              v18 = "cE";
            }

            goto LABEL_172;
          case 0x12uLL:
            result = memcmp(v6, "UnsafeContinuation", a2);
            if (result)
            {
              goto LABEL_151;
            }

            v18 = "cc";
            goto LABEL_172;
          case 0x13uLL:
            result = memcmp(v6, "CheckedContinuation", a2);
            if (result)
            {
              result = memcmp(v6, "AsyncThrowingStream", a2);
              if (result)
              {
                goto LABEL_151;
              }

              v18 = "cs";
            }

            else
            {
              v18 = "cC";
            }

            goto LABEL_172;
          case 0x15uLL:
            result = memcmp(v6, "UnownedSerialExecutor", a2);
            if (result)
            {
              result = memcmp(v6, "AsyncIteratorProtocol", a2);
              if (result)
              {
                goto LABEL_151;
              }

              v18 = "cI";
            }

            else
            {
              v18 = "ce";
            }

LABEL_172:
            *a4 = v18;
            *(a4 + 8) = 2;
            v13 = 1;
            break;
          default:
            goto LABEL_151;
        }
      }

      else
      {
LABEL_151:
        v13 = 0;
        *a4 = 0;
      }

LABEL_170:
      *(a4 + 16) = v13;
      return result;
    case 0x1DuLL:
      result = memcmp(result, "UnsafeMutableRawBufferPointer", a2);
      if (result)
      {
        goto LABEL_98;
      }

      v8 = "w";
      goto LABEL_169;
    case 0x21uLL:
      if (*result != 0x656C65726F747541 || result[1] != 0x736E55676E697361 || result[2] != 0x626174754D656661 || result[3] != 0x65746E696F50656CLL || *(result + 32) != 114)
      {
        goto LABEL_98;
      }

      v13 = 1;
      *a4 = "A";
      *(a4 + 8) = 1;
      goto LABEL_170;
    default:
      goto LABEL_98;
  }
}

std::string *swift::Demangle::__runtime::DemanglerPrinter::operator<<(std::string *a1, uint64_t a2)
{
  snprintf(__str, 0x20uLL, "%llu", a2);
  std::string::append(a1, __str);
  return a1;
}

{
  snprintf(__str, 0x20uLL, "%lld", a2);
  std::string::append(a1, __str);
  return a1;
}

std::string *swift::Demangle::__runtime::DemanglerPrinter::writeHex(std::string *a1, uint64_t a2)
{
  snprintf(__str, 0x20uLL, "%llX", a2);
  std::string::append(a1, __str);
  return a1;
}

double swift::Demangle::__runtime::genericParameterName@<D0>(swift::Demangle::__runtime *this@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(&v8, 0, sizeof(v8));
  do
  {
    std::string::push_back(&v8, a2 % 0x1A + 65);
    v6 = a2 > 0x19;
    a2 /= 0x1AuLL;
  }

  while (v6);
  if (this)
  {
    snprintf(__str, 0x20uLL, "%llu", this);
    std::string::append(&v8, __str);
  }

  result = *&v8.__r_.__value_.__l.__data_;
  *a3 = v8;
  return result;
}

std::string *swift::Demangle::__runtime::NodePrinter::printChildren(std::string *this, swift::Demangle::__runtime::Node *const *a2, swift::Demangle::__runtime::Node *const *a3, int a4, const char *a5)
{
  if (a2 != a3)
  {
    v8 = a2;
    v9 = this;
    do
    {
      v10 = *v8++;
      this = swift::Demangle::__runtime::NodePrinter::print(v9, v10, a4 + 1, 0);
      if (a5)
      {
        if (v8 != a3)
        {
          v11 = strlen(a5);
          this = std::string::append((v9 + 8), a5, v11);
        }
      }
    }

    while (v8 != a3);
  }

  return this;
}

uint64_t swift::Demangle::__runtime::NodePrinter::print(swift::Demangle::__runtime::NodePrinter *this, swift::Demangle::__runtime::Node *a2, const swift::Demangle::__runtime::DemangleOptions *a3, const swift::Demangle::__runtime::DemangleOptions *a4)
{
  v5 = a3 < 0x301;
  if (a3 > 0x300)
  {
LABEL_825:
    std::string::append((this + 8), "<<too complex>>", 0xFuLL);
    result = 0;
    v7 = v5;
    goto LABEL_829;
  }

  v6 = a3;
  v7 = 0;
  while (2)
  {
    if (!a2)
    {
      v272 = "<null node pointer>";
      v273 = (this + 8);
      v274 = 19;
      goto LABEL_827;
    }

    v10 = *(a2 + 8);
    result = 0;
    switch(*(a2 + 8))
    {
      case 0:
        v420 = a2;
        if (*(a2 + 18) - 1 >= 2)
        {
          v420 = *a2;
        }

        if (*(*v420 + 16) == 25)
        {
          v421 = 17;
        }

        else
        {
          v421 = 4;
        }

        if (*(*v420 + 16) == 25)
        {
          v422 = "__allocating_init";
        }

        else
        {
          v422 = "init";
        }

        LODWORD(v635) = -1;
        result = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, a4 & 1, 2, 0, v422, v421, v635, &unk_D3717, 0);
        goto LABEL_829;
      case 1:
        if (*(this + 33) != 1 || *(this + 34) != 1)
        {
          goto LABEL_828;
        }

        v333 = *(a2 + 18);
        v334 = a2;
        if (v333 == 2)
        {
          goto LABEL_931;
        }

        if (v333 == 5 && *(a2 + 2) >= 2u)
        {
          v334 = *a2;
LABEL_931:
          v335 = *(v334 + 1);
        }

        else
        {
          v335 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v335, v6 + 1, 0);
        std::string::append((this + 8), ".(unknown context at ", 0x15uLL);
        v613 = *(a2 + 18);
        v614 = a2;
        if ((v613 - 1) < 2)
        {
          goto LABEL_1841;
        }

        if (v613 == 5 && *(a2 + 2))
        {
          v614 = *a2;
LABEL_1841:
          v615 = *v614;
        }

        else
        {
          v615 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v615, v6 + 1, 0);
        std::string::append((this + 8), ")", 1uLL);
        if (*(a2 + 18) != 5)
        {
          goto LABEL_828;
        }

        if (*(a2 + 2) < 3u)
        {
          goto LABEL_828;
        }

        v621 = *(*a2 + 16);
        v622 = *(v621 + 18);
        if ((v622 - 1) >= 2 && (v622 != 5 || !*(v621 + 8)))
        {
          goto LABEL_828;
        }

        std::string::push_back((this + 8), 60);
        if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
        {
          v623 = *(*a2 + 16);
        }

        else
        {
          v623 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v623, v6 + 1, 0);
        v606 = (this + 8);
        v607 = 62;
        goto LABEL_1786;
      case 2:
        v304 = *(a2 + 18);
        if ((v304 - 1) >= 2 && (v304 != 5 || !*(a2 + 2)))
        {
          goto LABEL_828;
        }

        std::string::append((this + 8), "(", 1uLL);
        v305 = *(a2 + 18);
        v306 = a2;
        if ((v305 - 1) < 2)
        {
          goto LABEL_871;
        }

        if (v305 != 5 || !*(a2 + 2))
        {
          goto LABEL_1549;
        }

        v306 = *a2;
LABEL_871:
        swift::Demangle::__runtime::NodePrinter::print(this, *v306, v6 + 1, 0);
        v307 = 1;
        while (2)
        {
          v309 = *(a2 + 18);
          if (v309 == 2)
          {
            goto LABEL_877;
          }

          if (v309 != 5)
          {
            goto LABEL_1549;
          }

          v309 = *(a2 + 2);
LABEL_877:
          if (v309 <= v307)
          {
            goto LABEL_1549;
          }

          std::string::append((this + 8), ", ", 2uLL);
          v310 = *(a2 + 18);
          if (v310 == 2)
          {
            v311 = *(a2 + 18);
          }

          else
          {
            if (v310 != 5)
            {
              goto LABEL_872;
            }

            v311 = *(a2 + 2);
          }

          if (v311 > v307)
          {
            v312 = v310 - 1;
            v313 = a2;
            if (v312 >= 2)
            {
              v313 = *a2;
            }

            v308 = *(v313 + v307);
            goto LABEL_873;
          }

LABEL_872:
          v308 = 0;
LABEL_873:
          swift::Demangle::__runtime::NodePrinter::print(this, v308, v6 + 1, 0);
          ++v307;
          continue;
        }

      case 3:
        (*(*this + 24))(this, 0, a2, v6, *(this + 47));
        goto LABEL_828;
      case 4:
      case 0x76:
      case 0x12F:
      case 0x163:
      case 0x164:
        goto LABEL_829;
      case 5:
        v443 = *(a2 + 18);
        v444 = a2;
        if ((v443 - 1) < 2)
        {
          goto LABEL_1238;
        }

        if (v443 == 5 && *(a2 + 2))
        {
          v444 = *a2;
LABEL_1238:
          v445 = *v444;
        }

        else
        {
          v445 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v445, v6 + 1, 0);
        std::string::push_back((this + 8), 46);
        if (*(a2 + 18) == 5)
        {
          a2 = *a2;
        }

        v566 = *(a2 + 1);
        v272 = *v566;
        v274 = *(v566 + 8);
        v273 = (this + 8);
        goto LABEL_827;
      case 6:
        std::string::append((this + 8), "associated type metadata accessor for ", 0x26uLL);
        v46 = *(a2 + 18);
        v47 = a2;
        if (v46 == 2)
        {
          goto LABEL_369;
        }

        if (v46 != 5)
        {
          goto LABEL_370;
        }

        goto LABEL_367;
      case 7:
        v38 = "default associated type metadata accessor for ";
        v39 = (this + 8);
        v40 = 46;
        goto LABEL_373;
      case 8:
        if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
        {
          v323 = a4;
          v463 = *(*a2 + 16);
        }

        else
        {
          v323 = a4;
          v463 = 0;
        }

        __str.__r_.__value_.__s.__data_[0] = 0;
        *(__str.__r_.__value_.__r.__words + 1) = 0x101010101010101;
        __str.__r_.__value_.__s.__data_[9] = 1;
        *(&__str.__r_.__value_.__r.__words[1] + 2) = 0x101010100000000;
        __str.__r_.__value_.__s.__data_[18] = 1;
        *(&__str.__r_.__value_.__r.__words[2] + 3) = 256;
        __str.__r_.__value_.__s.__data_[21] = 1;
        v640 = 0;
        v641 = 0;
        v642 = off_E0BC8;
        v643 = swift::Demangle::__runtime::genericParameterName;
        v644 = &v642;
        swift::Demangle::__runtime::nodeToString(v463, &__str, a3, &v645);
        v516 = "accessor macro @";
        goto LABEL_1466;
      case 9:
        std::string::append((this + 8), "associated type witness table accessor for ", 0x2BuLL);
        v135 = *(a2 + 18);
        v136 = a2;
        if (v135 == 2)
        {
          goto LABEL_352;
        }

        if (v135 == 5 && *(a2 + 2) >= 2u)
        {
          v136 = *a2;
LABEL_352:
          v137 = *(v136 + 1);
        }

        else
        {
          v137 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v137, v6, 0);
        std::string::append((this + 8), " : ", 3uLL);
        if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
        {
          v142 = *(*a2 + 16);
        }

        else
        {
          v142 = 0;
        }

        goto LABEL_482;
      case 0xA:
        std::string::append((this + 8), "base witness table accessor for ", 0x20uLL);
        v141 = *(a2 + 18);
        v47 = a2;
        if (v141 == 2)
        {
          goto LABEL_369;
        }

        if (v141 != 5)
        {
          goto LABEL_370;
        }

LABEL_367:
        if (*(a2 + 2) < 2u)
        {
LABEL_370:
          v142 = 0;
        }

        else
        {
          v47 = *a2;
LABEL_369:
          v142 = *(v47 + 1);
        }

        v6 = (v6 + 1);
LABEL_482:
        swift::Demangle::__runtime::NodePrinter::print(this, v142, v6, 0);
        v158 = " in ";
        v159 = (this + 8);
        v160 = 4;
        goto LABEL_483;
      case 0xB:
      case 0x17:
      case 0x42:
      case 0x43:
      case 0x54:
      case 0xAF:
      case 0xB0:
      case 0xE9:
      case 0x101:
        v275 = this;
        v276 = 0;
        v277 = a2;
        goto LABEL_833;
      case 0xC:
        if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
        {
          v323 = a4;
          v324 = *(*a2 + 16);
        }

        else
        {
          v323 = a4;
          v324 = 0;
        }

        __str.__r_.__value_.__s.__data_[0] = 0;
        *(__str.__r_.__value_.__r.__words + 1) = 0x101010101010101;
        __str.__r_.__value_.__s.__data_[9] = 1;
        *(&__str.__r_.__value_.__r.__words[1] + 2) = 0x101010100000000;
        __str.__r_.__value_.__s.__data_[18] = 1;
        *(&__str.__r_.__value_.__r.__words[2] + 3) = 256;
        __str.__r_.__value_.__s.__data_[21] = 1;
        v640 = 0;
        v641 = 0;
        v642 = off_E0BC8;
        v643 = swift::Demangle::__runtime::genericParameterName;
        v644 = &v642;
        swift::Demangle::__runtime::nodeToString(v324, &__str, a3, &v645);
        v516 = "body macro @";
        goto LABEL_1466;
      case 0xD:
      case 0xE:
      case 0xF:
      case 0x10:
      case 0x11:
      case 0x12:
        swift::Demangle::__runtime::NodePrinter::printBoundGeneric(this, a2, v6);
        goto LABEL_828;
      case 0x13:
      case 0x4E:
        LODWORD(v635) = -1;
        v278 = a4 & 1;
        v279 = this;
        v280 = a2;
        v281 = v6;
        v282 = 2;
        goto LABEL_1540;
      case 0x14:
      case 0x18:
      case 0x67:
      case 0x6C:
      case 0x74:
      case 0x9B:
        goto LABEL_1362;
      case 0x15:
        v272 = "Builtin.TheTupleType";
        goto LABEL_1037;
      case 0x16:
        std::string::append((this + 8), "Builtin.FixedArray<", 0x13uLL);
        v474 = *(a2 + 18);
        v475 = a2;
        if ((v474 - 1) < 2)
        {
          goto LABEL_1317;
        }

        if (v474 == 5 && *(a2 + 2))
        {
          v475 = *a2;
LABEL_1317:
          v476 = *v475;
        }

        else
        {
          v476 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v476, v6 + 1, 0);
        v545 = ", ";
        v546 = (this + 8);
        v547 = 2;
        goto LABEL_1653;
      case 0x19:
      case 0x3F:
      case 0xB1:
      case 0xBE:
      case 0xE6:
      case 0xF5:
      case 0x112:
        LODWORD(v635) = -1;
        v278 = a4 & 1;
        v279 = this;
        v280 = a2;
        v281 = v6;
        v282 = 0;
        goto LABEL_1540;
      case 0x1A:
        v38 = "class metadata base offset for ";
        goto LABEL_364;
      case 0x1B:
        std::string::append((this + 8), "concrete protocol conformance ", 0x1EuLL);
        v35 = *(a2 + 18);
        if (v35 == 4)
        {
          std::string::append((this + 8), "#", 1uLL);
          swift::Demangle::__runtime::DemanglerPrinter::operator<<((this + 8), *a2);
          std::string::append((this + 8), " ", 1uLL);
          v35 = *(a2 + 18);
        }

        v36 = a2;
        if ((v35 - 1) < 2)
        {
          goto LABEL_60;
        }

        if (v35 == 5 && *(a2 + 2))
        {
          v36 = *a2;
LABEL_60:
          v37 = *v36;
        }

        else
        {
          v37 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v37, v6, 0);
        std::string::append((this + 8), " to ", 4uLL);
        v189 = *(a2 + 18);
        v190 = a2;
        if (v189 == 2)
        {
          goto LABEL_513;
        }

        if (v189 == 5 && *(a2 + 2) >= 2u)
        {
          v190 = *a2;
LABEL_513:
          v191 = *(v190 + 1);
        }

        else
        {
          v191 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v191, v6, 0);
        if (*(a2 + 18) != 5)
        {
          goto LABEL_828;
        }

        if (*(a2 + 2) < 3u)
        {
          goto LABEL_828;
        }

        v192 = *(*a2 + 16);
        v193 = *(v192 + 18);
        if ((v193 - 1) >= 2 && (v193 != 5 || !*(v192 + 8)))
        {
          goto LABEL_828;
        }

        v155 = " with conditional requirements: ";
        v156 = (this + 8);
        v157 = 32;
        goto LABEL_521;
      case 0x1C:
        v389 = "pack protocol conformance ";
        v390 = (this + 8);
        v391 = 26;
        goto LABEL_1513;
      case 0x1D:
        if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
        {
          v323 = a4;
          v327 = *(*a2 + 16);
        }

        else
        {
          v323 = a4;
          v327 = 0;
        }

        __str.__r_.__value_.__s.__data_[0] = 0;
        *(__str.__r_.__value_.__r.__words + 1) = 0x101010101010101;
        __str.__r_.__value_.__s.__data_[9] = 1;
        *(&__str.__r_.__value_.__r.__words[1] + 2) = 0x101010100000000;
        __str.__r_.__value_.__s.__data_[18] = 1;
        *(&__str.__r_.__value_.__r.__words[2] + 3) = 256;
        __str.__r_.__value_.__s.__data_[21] = 1;
        v640 = 0;
        v641 = 0;
        v642 = off_E0BC8;
        v643 = swift::Demangle::__runtime::genericParameterName;
        v644 = &v642;
        swift::Demangle::__runtime::nodeToString(v327, &__str, a3, &v645);
        v516 = "conformance macro @";
        goto LABEL_1466;
      case 0x1E:
        v507 = *(a2 + 18) == 5 && *(a2 + 2) > 2u;
        LODWORD(v635) = -1;
        result = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, a4 & 1, 2, v507, "init", 4uLL, v635, &unk_D3717, 0);
        goto LABEL_829;
      case 0x1F:
        v32 = "coroutine continuation prototype for ";
        goto LABEL_312;
      case 0x20:
        v478 = a2;
        if (*(a2 + 18) - 1 >= 2)
        {
          v478 = *a2;
        }

        v450 = *(*v478 + 16) == 25;
        if (*(*v478 + 16) == 25)
        {
          v451 = 21;
        }

        else
        {
          v451 = 6;
        }

        v452 = "__deallocating_deinit";
        goto LABEL_1327;
      case 0x21:
      case 0xF3:
        goto LABEL_337;
      case 0x22:
        v317 = a2;
        if (*(a2 + 18) == 5)
        {
          v317 = *a2;
        }

        LODWORD(v635) = **(v317 + 1);
        result = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, "default argument ", 0x11uLL, v635, &unk_D3717, 0);
        goto LABEL_829;
      case 0x23:
        v389 = "dependent associated conformance ";
        v390 = (this + 8);
        v391 = 33;
        goto LABEL_1513;
      case 0x24:
        v111 = *(a2 + 18);
        v112 = a2;
        if (v111 == 2)
        {
          goto LABEL_273;
        }

        if (v111 != 5)
        {
          goto LABEL_274;
        }

        v113 = *(a2 + 2);
        if (v113 < 2)
        {
          goto LABEL_277;
        }

        v112 = *a2;
LABEL_273:
        swift::Demangle::__runtime::NodePrinter::print(this, *(v112 + 1), v6 + 1, 0);
        std::string::push_back((this + 8), 46);
        v111 = *(a2 + 18);
LABEL_274:
        if ((v111 - 1) < 2)
        {
          goto LABEL_317;
        }

        if (v111 != 5)
        {
          goto LABEL_494;
        }

        v113 = *(a2 + 2);
LABEL_277:
        if (!v113)
        {
          goto LABEL_494;
        }

        goto LABEL_316;
      case 0x25:
        v118 = *(a2 + 18);
        v119 = a2;
        if ((v118 - 1) < 2)
        {
          goto LABEL_298;
        }

        if (v118 == 5)
        {
          if (!*(a2 + 2))
          {
            v120 = 0;
            goto LABEL_807;
          }

          v119 = *a2;
LABEL_298:
          v120 = *v119;
        }

        else
        {
          v120 = 0;
        }

        if (v118 == 2)
        {
          goto LABEL_629;
        }

        if (v118 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
LABEL_629:
          v9 = *(a2 + 1);
          goto LABEL_808;
        }

LABEL_807:
        v9 = 0;
LABEL_808:
        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v120, v6, 0);
        std::string::append((this + 8), ": ", 2uLL);
        goto LABEL_7;
      case 0x26:
      case 0x2B:
      case 0x172:
        printer_unreachable("should be printed as a child of a DependentGenericSignature");
      case 0x27:
        if (*(a2 + 18) == 5)
        {
          a2 = *a2;
        }

        v482 = **(a2 + 1);
        *&v647 = **a2;
        v646.__r_.__value_.__r.__words[0] = v482;
        std::__function::__value_func<std::string ()(unsigned long long,unsigned long long)>::operator()[abi:nn200100](this + 72);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        std::string::append((this + 8), p_str, size);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_828;
      case 0x28:
        v98 = *(a2 + 18);
        v99 = a2;
        if ((v98 - 1) < 2)
        {
          goto LABEL_234;
        }

        if (v98 == 5)
        {
          if (!*(a2 + 2))
          {
            v100 = 0;
            goto LABEL_804;
          }

          v99 = *a2;
LABEL_234:
          v100 = *v99;
        }

        else
        {
          v100 = 0;
        }

        if (v98 == 2)
        {
          goto LABEL_623;
        }

        if (v98 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
LABEL_623:
          v9 = *(a2 + 1);
          goto LABEL_805;
        }

LABEL_804:
        v9 = 0;
LABEL_805:
        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v100, v6, 0);
        std::string::append((this + 8), " == ", 4uLL);
        goto LABEL_7;
      case 0x29:
        v348 = *(a2 + 18);
        v349 = a2;
        if ((v348 - 1) < 2)
        {
          goto LABEL_968;
        }

        if (v348 == 5)
        {
          if (!*(a2 + 2))
          {
            v350 = 0;
            goto LABEL_1860;
          }

          v349 = *a2;
LABEL_968:
          v350 = *v349;
        }

        else
        {
          v350 = 0;
        }

        if (v348 == 2)
        {
LABEL_1706:
          v580 = *(a2 + 1);
          goto LABEL_1861;
        }

        if (v348 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
          goto LABEL_1706;
        }

LABEL_1860:
        v580 = 0;
LABEL_1861:
        swift::Demangle::__runtime::NodePrinter::print(this, v350, v6 + 1, 0);
        std::string::append((this + 8), ".shape == ", 0xAuLL);
        swift::Demangle::__runtime::NodePrinter::print(this, v580, v6 + 1, 0);
        v564 = ".shape";
        v574 = (this + 8);
        v575 = 6;
        goto LABEL_1661;
      case 0x2A:
        v336 = *(a2 + 18);
        v337 = a2;
        if ((v336 - 1) < 2)
        {
          goto LABEL_937;
        }

        if (v336 == 5)
        {
          if (!*(a2 + 2))
          {
            v338 = 0;
            goto LABEL_1843;
          }

          v337 = *a2;
LABEL_937:
          v338 = *v337;
        }

        else
        {
          v338 = 0;
        }

        v578 = a2;
        if (v336 == 2)
        {
LABEL_1697:
          v579 = *(v578 + 1);
          goto LABEL_1844;
        }

        if (v336 == 5 && *(a2 + 2) >= 2u)
        {
          v578 = *a2;
          goto LABEL_1697;
        }

LABEL_1843:
        v579 = 0;
LABEL_1844:
        swift::Demangle::__runtime::NodePrinter::print(this, v338, v6 + 1, 0);
        std::string::append((this + 8), ": ", 2uLL);
        v616 = **v579;
        if (v616 > 0x51)
        {
          switch(v616)
          {
            case 'U':
              v617 = "_UnknownLayout";
              goto LABEL_1904;
            case 'T':
LABEL_1857:
              v617 = "_Trivial";
              v618 = 8;
              goto LABEL_1905;
            case 'R':
              v617 = "_RefCountedObject";
              v618 = 17;
              goto LABEL_1905;
          }
        }

        else
        {
          switch(v616)
          {
            case 'C':
              v617 = "AnyObject";
              v618 = 9;
              goto LABEL_1905;
            case 'D':
              v617 = "_NativeClass";
              v618 = 12;
              goto LABEL_1905;
            case 'N':
              v617 = "_NativeRefCountedObject";
              v618 = 23;
              goto LABEL_1905;
          }
        }

        v619 = v616 & 0xFFFFFFDF;
        if (v619 != 77)
        {
          if (v619 == 69)
          {
            goto LABEL_1857;
          }

          v618 = 0;
          v617 = 0;
LABEL_1905:
          std::string::append((this + 8), v617, v618);
          if (*(a2 + 18) != 5 || *(a2 + 2) < 3u)
          {
            goto LABEL_828;
          }

          std::string::append((this + 8), "(", 1uLL);
          if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
          {
            v634 = *(*a2 + 16);
          }

          else
          {
            v634 = 0;
          }

          swift::Demangle::__runtime::NodePrinter::print(this, v634, v6 + 1, 0);
          if (*(a2 + 18) == 5 && *(a2 + 2) >= 4u)
          {
            std::string::append((this + 8), ", ", 2uLL);
            if (*(a2 + 18) == 5 && *(a2 + 2) >= 4u)
            {
              v454 = *(*a2 + 24);
            }

            else
            {
              v454 = 0;
            }

LABEL_1254:
            swift::Demangle::__runtime::NodePrinter::print(this, v454, v6 + 1, 0);
          }

LABEL_1549:
          v272 = ")";
LABEL_1797:
          v273 = (this + 8);
          v274 = 1;
LABEL_827:
          std::string::append(v273, v272, v274);
          goto LABEL_828;
        }

        v617 = "_TrivialAtMost";
LABEL_1904:
        v618 = 14;
        goto LABEL_1905;
      case 0x2C:
      case 0x2F:
        (*(*this + 32))(this, a2, v6);
        goto LABEL_828;
      case 0x2D:
        v62 = *(a2 + 18);
        v63 = a2;
        if ((v62 - 1) < 2)
        {
          goto LABEL_121;
        }

        if (v62 == 5)
        {
          if (!*(a2 + 2))
          {
            v64 = 0;
LABEL_736:
            v9 = 0;
LABEL_737:
            v6 = (v6 + 1);
            swift::Demangle::__runtime::NodePrinter::print(this, v64, v6, 0);
            v246 = v9;
            while (1)
            {
              while (1)
              {
                v247 = v246;
                v248 = *(v246 + 8);
                if (v248 != 243)
                {
                  v250 = (v248 - 45) > 0x27 || ((1 << (v248 - 45)) & 0x8000400001) == 0;
                  if (v250 && v248 != 257)
                  {
                    std::string::push_back((this + 8), 32);
                  }

                  goto LABEL_7;
                }

                v249 = *(v247 + 18);
                if ((v249 - 1) >= 2)
                {
                  break;
                }

LABEL_740:
                v246 = *v247;
              }

              v246 = 0;
              if (v249 == 5)
              {
                v246 = 0;
                if (*(v247 + 2))
                {
                  v247 = *v247;
                  goto LABEL_740;
                }
              }
            }
          }

          v63 = *a2;
LABEL_121:
          v64 = *v63;
        }

        else
        {
          v64 = 0;
        }

        if (v62 == 2)
        {
LABEL_602:
          v9 = *(a2 + 1);
          goto LABEL_737;
        }

        if (v62 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
          goto LABEL_602;
        }

        goto LABEL_736;
      case 0x2E:
        v133 = *(a2 + 18);
        v93 = a2;
        if ((v133 - 1) < 2)
        {
          goto LABEL_347;
        }

        if (v133 == 5 && *(a2 + 2))
        {
          goto LABEL_346;
        }

        goto LABEL_414;
      case 0x30:
        v108 = "dependent root protocol conformance ";
        v109 = (this + 8);
        v110 = 36;
        goto LABEL_322;
      case 0x31:
        v108 = "dependent inherited protocol conformance ";
        v109 = (this + 8);
        v110 = 41;
        goto LABEL_322;
      case 0x32:
        v108 = "dependent associated protocol conformance ";
        v109 = (this + 8);
        v110 = 42;
LABEL_322:
        std::string::append(v109, v108, v110);
        v127 = *(a2 + 18);
        if (v127 == 5 && *(a2 + 2) >= 3u)
        {
          v128 = *(*a2 + 16);
        }

        else
        {
          v128 = 0;
        }

        if (*(v128 + 18) == 4)
        {
          std::string::append((this + 8), "#", 1uLL);
          snprintf(&__str, 0x20uLL, "%llu", *v128);
          std::string::append((this + 8), &__str);
          std::string::append((this + 8), " ", 1uLL);
          v127 = *(a2 + 18);
        }

        v129 = a2;
        if ((v127 - 1) < 2)
        {
          goto LABEL_332;
        }

        if (v127 == 5 && *(a2 + 2))
        {
          v129 = *a2;
LABEL_332:
          v130 = *v129;
        }

        else
        {
          v130 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v130, v6, 0);
        v131 = " to ";
        goto LABEL_533;
      case 0x33:
        std::string::append((this + 8), "opaque result conformance ", 0x1AuLL);
        v123 = *(a2 + 18);
        v124 = a2;
        if ((v123 - 1) < 2)
        {
          goto LABEL_310;
        }

        if (v123 == 5 && *(a2 + 2))
        {
          v124 = *a2;
LABEL_310:
          v125 = *v124;
        }

        else
        {
          v125 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v125, v6, 0);
        v131 = " of ";
LABEL_533:
        v194 = (this + 8);
        v195 = 4;
        goto LABEL_534;
      case 0x34:
        LODWORD(v635) = -1;
        result = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, "deinit", 6uLL, v635, &unk_D3717, 0);
        goto LABEL_829;
      case 0x35:
        v437 = *(a2 + 18);
        if ((v437 - 1) < 2)
        {
          goto LABEL_1204;
        }

        if (v437 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1204:
          v407 = *a2;
        }

        else
        {
          v407 = 0;
        }

        v528 = "didset";
        goto LABEL_1664;
      case 0x36:
        if (*a2)
        {
          if (*a2 != 1)
          {
            printer_unreachable("bad directness");
          }

          v374 = "indirect";
          v375 = 8;
        }

        else
        {
          v374 = "direct";
          v375 = 6;
        }

        std::string::append((this + 8), v374, v375);
        v272 = " ";
        goto LABEL_1797;
      case 0x37:
        if (*(this + 43))
        {
          goto LABEL_828;
        }

        v272 = "distributed thunk ";
        goto LABEL_1019;
      case 0x38:
        if (*(this + 43))
        {
          goto LABEL_828;
        }

        v272 = "distributed accessor for ";
        goto LABEL_1123;
      case 0x39:
        v272 = "dynamic ";
        goto LABEL_1793;
      case 0x3A:
        v272 = "super ";
        goto LABEL_1374;
      case 0x3B:
      case 0x57:
        v272 = "Self";
        goto LABEL_1262;
      case 0x3C:
        if (*(this + 43))
        {
          goto LABEL_828;
        }

        v272 = "dynamically replaceable thunk for ";
        v273 = (this + 8);
        v274 = 34;
        goto LABEL_827;
      case 0x3D:
        if (*(this + 43))
        {
          goto LABEL_828;
        }

        v272 = "dynamically replaceable key for ";
        v273 = (this + 8);
        v274 = 32;
        goto LABEL_827;
      case 0x3E:
        if (*(this + 43))
        {
          goto LABEL_828;
        }

        v272 = "dynamically replaceable variable for ";
        v273 = (this + 8);
        v274 = 37;
        goto LABEL_827;
      case 0x40:
        v38 = "enum case for ";
        goto LABEL_179;
      case 0x41:
        v272 = "<ERROR TYPE>";
        goto LABEL_1297;
      case 0x44:
        v272 = "@Sendable ";
        goto LABEL_1700;
      case 0x45:
        v499 = *(a2 + 18);
        if ((v499 - 1) >= 2 && (v499 != 5 || !*(a2 + 2)))
        {
          goto LABEL_828;
        }

        std::string::push_back((this + 8), 64);
        v500 = *(a2 + 18);
        if ((v500 - 1) < 2)
        {
          goto LABEL_1388;
        }

        if (v500 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1388:
          v501 = *a2;
        }

        else
        {
          v501 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v501, v6 + 1, 0);
        v606 = (this + 8);
        v607 = 32;
LABEL_1786:
        std::string::push_back(v606, v607);
        return 0;
      case 0x46:
        std::string::append((this + 8), "@differentiable", 0xFuLL);
        v382 = *a2;
        switch(v382)
        {
          case 'r':
            v285 = "(reverse)";
            break;
          case 'l':
            v285 = "(_linear)";
            break;
          case 'f':
            v285 = "(_forward)";
            v286 = (this + 8);
            v284 = 10;
LABEL_842:
            std::string::append(v286, v285, v284);
            goto LABEL_843;
          default:
LABEL_843:
            std::string::push_back((this + 8), 32);
            goto LABEL_828;
        }

        v286 = (this + 8);
        v284 = 9;
        goto LABEL_842;
      case 0x47:
        v328 = *(a2 + 18);
        v329 = a2;
        if (v328 == 2)
        {
          goto LABEL_923;
        }

        if (v328 == 5)
        {
          v330 = *(a2 + 2);
          if (v330 != 2)
          {
            v331 = 0;
LABEL_1809:
            if (v331 < v330)
            {
              a2 = *a2;
              goto LABEL_1811;
            }

            goto LABEL_1812;
          }

          v329 = *a2;
LABEL_923:
          swift::Demangle::__runtime::NodePrinter::print(this, *v329, v6 + 1, 0);
          v331 = 1;
          std::string::append((this + 8), " ", 1uLL);
          v332 = 0;
          v328 = *(a2 + 18);
        }

        else
        {
          v331 = 0;
          v332 = 1;
        }

        switch(v328)
        {
          case 1:
            v331 = 0;
            if ((v332 & 1) == 0)
            {
              break;
            }

LABEL_1811:
            v608 = *(a2 + v331);
            goto LABEL_1813;
          case 2:
            goto LABEL_1811;
          case 5:
            v330 = *(a2 + 2);
            goto LABEL_1809;
        }

LABEL_1812:
        v608 = 0;
LABEL_1813:
        swift::Demangle::__runtime::NodePrinter::print(this, v608, v6 + 1, 0);
        v564 = ".Type";
        v574 = (this + 8);
        v575 = 5;
LABEL_1661:
        std::string::append(v574, v564, v575);
        return 0;
      case 0x48:
        if (*(this + 47))
        {
          v512 = 2;
        }

        else
        {
          v512 = 0;
        }

        v513 = a2;
        if (*(a2 + 18) == 5)
        {
          v513 = *a2;
        }

        LODWORD(v635) = **(v513 + 1) + 1;
        result = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, a4 & 1, v512, 0, "closure #", 9uLL, v635, &unk_D3717, 0);
        goto LABEL_829;
      case 0x49:
        if (*(this + 33) != 1 || *(this + 34) != 1)
        {
          goto LABEL_815;
        }

        std::string::append((this + 8), "(extension in ", 0xEuLL);
        v59 = *(a2 + 18);
        v60 = a2;
        if ((v59 - 1) < 2)
        {
          goto LABEL_116;
        }

        if (v59 == 5 && *(a2 + 2))
        {
          v60 = *a2;
LABEL_116:
          v61 = *v60;
        }

        else
        {
          v61 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v61, v6 + 1, 1);
        std::string::append((this + 8), "):", 2uLL);
LABEL_815:
        v269 = *(a2 + 18);
        v270 = a2;
        if (v269 == 2)
        {
          goto LABEL_819;
        }

        if (v269 == 5 && *(a2 + 2) >= 2u)
        {
          v270 = *a2;
LABEL_819:
          v271 = *(v270 + 1);
        }

        else
        {
          v271 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v271, v6, 0);
        if (*(a2 + 18) == 5 && *(a2 + 2) == 3 && (*(this + 51) & 1) == 0)
        {
          goto LABEL_824;
        }

        goto LABEL_828;
      case 0x4A:
        if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
        {
          v323 = a4;
          v440 = *(*a2 + 16);
        }

        else
        {
          v323 = a4;
          v440 = 0;
        }

        __str.__r_.__value_.__s.__data_[0] = 0;
        *(__str.__r_.__value_.__r.__words + 1) = 0x101010101010101;
        __str.__r_.__value_.__s.__data_[9] = 1;
        *(&__str.__r_.__value_.__r.__words[1] + 2) = 0x101010100000000;
        __str.__r_.__value_.__s.__data_[18] = 1;
        *(&__str.__r_.__value_.__r.__words[2] + 3) = 256;
        __str.__r_.__value_.__s.__data_[21] = 1;
        v640 = 0;
        v641 = 0;
        v642 = off_E0BC8;
        v643 = swift::Demangle::__runtime::genericParameterName;
        v644 = &v642;
        swift::Demangle::__runtime::nodeToString(v440, &__str, a3, &v645);
        v516 = "extension macro @";
        goto LABEL_1466;
      case 0x4B:
        v43 = *(a2 + 18);
        v44 = a2;
        if ((v43 - 1) < 2)
        {
          goto LABEL_73;
        }

        if (v43 == 5 && *(a2 + 2))
        {
          v44 = *a2;
LABEL_73:
          v45 = *v44;
        }

        else
        {
          v45 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v45, v6, 0);
        v131 = "field offset for ";
        goto LABEL_526;
      case 0x4C:
        LODWORD(v635) = **(*a2 + 16) + 1;
        result = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 1, "freestanding macro expansion #", 0x1EuLL, v635, &unk_D3717, 0);
        goto LABEL_829;
      case 0x4D:
        v38 = "full type metadata for ";
        v39 = (this + 8);
        v40 = 23;
        goto LABEL_373;
      case 0x4F:
        v300 = "function signature specialization";
        v301 = this;
        v302 = a2;
        v303 = 33;
        goto LABEL_1006;
      case 0x50:
      case 0x51:
        printer_unreachable("should be handled in printSpecializationPrefix");
      case 0x52:
        v392 = *a2;
        if ((*a2 & 0x400) != 0)
        {
          std::string::append((this + 8), "Existential To Protocol Constrained Generic", 0x2BuLL);
          if ((v392 & 0x40) == 0)
          {
            if ((v392 & 0x80) != 0)
            {
LABEL_1712:
              std::string::append((this + 8), " and ", 5uLL);
              goto LABEL_1713;
            }

LABEL_1525:
            if ((v392 & 0x200) != 0)
            {
LABEL_1714:
              std::string::append((this + 8), " and ", 5uLL);
LABEL_1715:
              std::string::append((this + 8), "Guaranteed To Owned", 0x13uLL);
              if ((v392 & 0x100) == 0)
              {
                goto LABEL_828;
              }

              goto LABEL_1716;
            }

LABEL_1526:
            if ((v392 & 0x100) == 0)
            {
              goto LABEL_828;
            }

LABEL_1716:
            std::string::append((this + 8), " and ", 5uLL);
            goto LABEL_1717;
          }

          std::string::append((this + 8), " and ", 5uLL);
        }

        else if ((v392 & 0x40) == 0)
        {
          if ((v392 & 0x80) == 0)
          {
            if ((v392 & 0x200) == 0)
            {
              if ((v392 & 0x100) == 0)
              {
                result = 0;
                if (v392 <= 4)
                {
                  if (v392 <= 1)
                  {
                    if (!v392)
                    {
                      v272 = "Constant Propagated Function";
                      v273 = (this + 8);
                      v274 = 28;
                      goto LABEL_827;
                    }

                    if (v392 != 1)
                    {
                      goto LABEL_829;
                    }

                    v272 = "Constant Propagated Global";
                  }

                  else
                  {
                    if (v392 == 2)
                    {
                      v272 = "Constant Propagated Integer";
                      goto LABEL_1935;
                    }

                    if (v392 == 3)
                    {
                      v272 = "Constant Propagated Float";
LABEL_1123:
                      v273 = (this + 8);
                      v274 = 25;
                      goto LABEL_827;
                    }

                    v272 = "Constant Propagated String";
                  }

LABEL_1090:
                  v273 = (this + 8);
                  v274 = 26;
                  goto LABEL_827;
                }

                if (v392 < 8)
                {
                  if (v392 == 5)
                  {
                    v272 = "Closure Propagated";
LABEL_1019:
                    v273 = (this + 8);
                    v274 = 18;
                  }

                  else
                  {
                    if (v392 == 6)
                    {
                      v272 = "Value Promoted from Box";
                    }

                    else
                    {
                      v272 = "Stack Promoted from Box";
                    }

LABEL_1531:
                    v273 = (this + 8);
                    v274 = 23;
                  }

                  goto LABEL_827;
                }

                if (v392 <= 8)
                {
                  v272 = "InOut Converted to Out";
LABEL_1027:
                  v273 = (this + 8);
                  v274 = 22;
                  goto LABEL_827;
                }

                if (v392 > 63)
                {
                  if (v392 <= 255)
                  {
                    if (v392 != 64 && v392 != 128)
                    {
                      goto LABEL_829;
                    }
                  }

                  else if (v392 != 256 && v392 != 512 && v392 != 1024)
                  {
                    goto LABEL_829;
                  }

                  printer_unreachable("option sets should have been handled earlier");
                }

                if (v392 == 9)
                {
                  v272 = "Constant Propagated KeyPath";
LABEL_1935:
                  v273 = (this + 8);
                  v274 = 27;
                  goto LABEL_827;
                }

LABEL_829:
                if (v7)
                {
                  return 0;
                }

                return result;
              }

LABEL_1717:
              v272 = "Exploded";
LABEL_1793:
              v273 = (this + 8);
              v274 = 8;
              goto LABEL_827;
            }

            goto LABEL_1715;
          }

LABEL_1713:
          std::string::append((this + 8), "Owned To Guaranteed", 0x13uLL);
          if ((v392 & 0x200) != 0)
          {
            goto LABEL_1714;
          }

          goto LABEL_1526;
        }

        std::string::append((this + 8), "Dead", 4uLL);
        if ((v392 & 0x80) != 0)
        {
          goto LABEL_1712;
        }

        goto LABEL_1525;
      case 0x53:
        v480 = *a2;
        v481 = *(a2 + 1);
        __str.__r_.__value_.__s.__data_[0] = 0;
        *(__str.__r_.__value_.__r.__words + 1) = 0x101010101010101;
        __str.__r_.__value_.__s.__data_[9] = 1;
        *(&__str.__r_.__value_.__r.__words[1] + 2) = 0x101010100000000;
        __str.__r_.__value_.__s.__data_[18] = 1;
        *(&__str.__r_.__value_.__r.__words[2] + 3) = 256;
        __str.__r_.__value_.__s.__data_[21] = 1;
        v640 = 0;
        v641 = 0;
        v642 = off_E0BC8;
        v643 = swift::Demangle::__runtime::genericParameterName;
        v644 = &v642;
        swift::Demangle::__runtime::demangleSymbolAsString(v480, v481, &__str, a4);
      case 0x55:
        std::string::append((this + 8), "any ", 4uLL);
        v314 = *(a2 + 18);
        v315 = a2;
        if ((v314 - 1) < 2)
        {
          goto LABEL_891;
        }

        if (v314 == 5 && *(a2 + 2))
        {
          v315 = *a2;
LABEL_891:
          v316 = *v315;
        }

        else
        {
          v316 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v316, v6 + 1, 0);
        v545 = "<";
        v546 = (this + 8);
        v547 = 1;
LABEL_1653:
        std::string::append(v546, v545, v547);
        v572 = *(a2 + 18);
        if (v572 == 2)
        {
          goto LABEL_1657;
        }

        if (v572 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
LABEL_1657:
          v573 = *(a2 + 1);
        }

        else
        {
          v573 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v573, v6 + 1, 0);
        v564 = ">";
        goto LABEL_1660;
      case 0x56:
        v373 = ", ";
        goto LABEL_1358;
      case 0x58:
        v376 = "generic partial specialization";
        v377 = this;
        v378 = a2;
        v379 = 30;
        goto LABEL_1406;
      case 0x59:
        v376 = "generic not-reabstracted partial specialization";
        v377 = this;
        v378 = a2;
        v379 = 47;
LABEL_1406:
        swift::Demangle::__runtime::NodePrinter::printSpecializationPrefix(v377, v378, v376, v379, v6, "Signature = ", 0xCuLL);
        goto LABEL_828;
      case 0x5A:
        v38 = "generic protocol witness table for ";
        goto LABEL_362;
      case 0x5B:
        v38 = "instantiation function for generic protocol witness table for ";
        v39 = (this + 8);
        v40 = 62;
        goto LABEL_373;
      case 0x5C:
        v38 = "resilient protocol witness table for ";
        v39 = (this + 8);
        v40 = 37;
        goto LABEL_373;
      case 0x5D:
      case 0x5F:
        v300 = "generic specialization";
        v301 = this;
        v302 = a2;
        v303 = 22;
        goto LABEL_1006;
      case 0x5E:
        v300 = "generic not re-abstracted specialization";
        v301 = this;
        v302 = a2;
        v303 = 40;
        goto LABEL_1006;
      case 0x60:
        v471 = *(a2 + 18);
        v472 = a2;
        if ((v471 - 1) < 2)
        {
          goto LABEL_1312;
        }

        if (v471 == 5 && *(a2 + 2))
        {
          v472 = *a2;
LABEL_1312:
          v473 = *v472;
        }

        else
        {
          v473 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v473, v6 + 1, 0);
        v567 = *(a2 + 18);
        if (v567 != 2)
        {
          if (v567 != 5)
          {
            goto LABEL_828;
          }

          v567 = *(a2 + 2);
          if (v567 < 2)
          {
            goto LABEL_828;
          }
        }

        v568 = v567;
        std::string::append((this + 8), " with ", 6uLL);
        v569 = *(a2 + 18);
        v570 = a2;
        if (v569 == 2)
        {
          goto LABEL_1650;
        }

        if (v569 == 5 && *(a2 + 2) >= 2u)
        {
          v570 = *a2;
LABEL_1650:
          v571 = *(v570 + 1);
        }

        else
        {
          v571 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v571, v6 + 1, 0);
        if (v568 == 2)
        {
          goto LABEL_828;
        }

        v583 = 2;
        while (1)
        {
          std::string::append((this + 8), " and ", 5uLL);
          v585 = *(a2 + 18);
          if (v585 == 2)
          {
            v586 = *(a2 + 18);
          }

          else
          {
            if (v585 != 5)
            {
              goto LABEL_1736;
            }

            v586 = *(a2 + 2);
          }

          if (v586 > v583)
          {
            v587 = v585 - 1;
            v588 = a2;
            if (v587 >= 2)
            {
              v588 = *a2;
            }

            v584 = *(v588 + v583);
            goto LABEL_1737;
          }

LABEL_1736:
          v584 = 0;
LABEL_1737:
          swift::Demangle::__runtime::NodePrinter::print(this, v584, v6 + 1, 0);
          if (v568 == ++v583)
          {
            goto LABEL_828;
          }
        }

      case 0x61:
        v300 = "generic pre-specialization";
        v301 = this;
        v302 = a2;
        v303 = 26;
        goto LABEL_1006;
      case 0x62:
        v300 = "inlined generic function";
        v301 = this;
        v302 = a2;
        v303 = 24;
LABEL_1006:
        swift::Demangle::__runtime::NodePrinter::printSpecializationPrefix(v301, v302, v300, v303, v6, 0, 0);
        goto LABEL_828;
      case 0x63:
        v38 = "generic type metadata pattern for ";
        v39 = (this + 8);
        v40 = 34;
        goto LABEL_373;
      case 0x64:
        v351 = *(a2 + 18);
        if ((v351 - 1) < 2)
        {
          goto LABEL_1285;
        }

        if (v351 != 5 || !*(a2 + 2))
        {
          goto LABEL_1491;
        }

        goto LABEL_1284;
      case 0x65:
      case 0xF6:
        goto LABEL_1514;
      case 0x66:
        v464 = *(a2 + 18);
        if ((v464 - 1) < 2)
        {
          goto LABEL_1285;
        }

        if (v464 == 5 && *(a2 + 2))
        {
LABEL_1284:
          a2 = *a2;
LABEL_1285:
          v407 = *a2;
        }

        else
        {
LABEL_1491:
          v407 = 0;
        }

        v528 = "getter";
        goto LABEL_1664;
      case 0x68:
      case 0xAB:
      case 0xE3:
      case 0x170:
        goto LABEL_1059;
      case 0x69:
        LODWORD(v635) = -1;
        result = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, "__ivar_initializer", 0x12uLL, v635, &unk_D3717, 0);
        goto LABEL_829;
      case 0x6A:
        LODWORD(v635) = -1;
        result = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, "__ivar_destroyer", 0x10uLL, v635, &unk_D3717, 0);
        goto LABEL_829;
      case 0x6B:
        v272 = "@escaping";
        goto LABEL_1834;
      case 0x6D:
        std::string::append((this + 8), "@differentiable", 0xFuLL);
        v342 = *a2;
        switch(v342)
        {
          case 'f':
            v272 = "(_forward)";
LABEL_1700:
            v273 = (this + 8);
            v274 = 10;
            goto LABEL_827;
          case 'r':
            v272 = "(reverse)";
            break;
          case 'l':
            v272 = "(_linear)";
            break;
          default:
            goto LABEL_828;
        }

        goto LABEL_1834;
      case 0x6E:
        v272 = "@isolated(any)";
        goto LABEL_1521;
      case 0x6F:
        v272 = "sending";
        goto LABEL_1431;
      case 0x70:
      case 0x71:
      case 0x72:
      case 0x73:
        v284 = *(a2 + 1);
        if (!v284)
        {
          goto LABEL_828;
        }

        v285 = *a2;
        v286 = (this + 8);
        goto LABEL_842;
      case 0x75:
        std::string::append((this + 8), "@convention(", 0xCuLL);
        v367 = *(a2 + 18);
        if (v367 == 1)
        {
          goto LABEL_1732;
        }

        v368 = a2;
        if (v367 == 2)
        {
          goto LABEL_1881;
        }

        if (v367 != 5)
        {
          goto LABEL_1888;
        }

        v369 = *(a2 + 2);
        if (v369 != 2)
        {
          if (v369 == 1)
          {
            goto LABEL_1731;
          }

          goto LABEL_1888;
        }

        v368 = *a2;
LABEL_1881:
        std::string::append((this + 8), **v368, (*v368)[1]);
        std::string::append((this + 8), ", mangledCType: ", 0x11uLL);
        v624 = *(a2 + 18);
        if (v624 == 2)
        {
          goto LABEL_1885;
        }

        if (v624 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
LABEL_1885:
          v625 = *(a2 + 1);
        }

        else
        {
          v625 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v625, v6 + 1, 0);
        std::string::push_back((this + 8), 34);
        goto LABEL_1888;
      case 0x77:
        swift::Demangle::__runtime::NodePrinter::printImplFunctionType(this, a2, v6);
        goto LABEL_828;
      case 0x78:
        if (!*(a2 + 1))
        {
          goto LABEL_828;
        }

        std::string::push_back((this + 8), 64);
        goto LABEL_1362;
      case 0x79:
        std::string::append((this + 8), "for <", 5uLL);
        v495 = *(a2 + 18);
        if ((v495 - 1) < 2)
        {
          goto LABEL_1372;
        }

        if (v495 != 5 || !*(a2 + 2))
        {
          goto LABEL_1573;
        }

        a2 = *a2;
LABEL_1372:
        v496 = *a2;
        goto LABEL_1574;
      case 0x7A:
        if (*(this + 47))
        {
          v413 = 2;
        }

        else
        {
          v413 = 0;
        }

        v414 = a2;
        if (*(a2 + 18) == 5)
        {
          v414 = *a2;
        }

        LODWORD(v635) = **(v414 + 1) + 1;
        result = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, a4 & 1, v413, 0, "implicit closure #", 0x12uLL, v635, &unk_D3717, 0);
        goto LABEL_829;
      case 0x7B:
      case 0x7D:
        v12 = *(a2 + 18);
        v13 = a2;
        if ((v12 - 1) < 2)
        {
          goto LABEL_14;
        }

        if (v12 == 5 && *(a2 + 2))
        {
          v13 = *a2;
LABEL_14:
          v14 = *v13;
        }

        else
        {
          v14 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v14, v6, 0);
        std::string::append((this + 8), " ", 1uLL);
        v148 = *(a2 + 18);
        if (v148 != 5)
        {
          goto LABEL_566;
        }

        v149 = *(a2 + 2);
        if (v149 != 3)
        {
          goto LABEL_397;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, *(*a2 + 8), v6, 0);
        v148 = *(a2 + 18);
        if (v148 != 5)
        {
          goto LABEL_566;
        }

        v149 = *(a2 + 2);
LABEL_397:
        if (v149 != 4)
        {
          goto LABEL_570;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, *(*a2 + 8), v6, 0);
        if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
        {
          v150 = *(*a2 + 16);
        }

        else
        {
          v150 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v150, v6, 0);
        v148 = *(a2 + 18);
LABEL_566:
        switch(v148)
        {
          case 1:
            v9 = *a2;
            goto LABEL_7;
          case 2:
            v9 = *(a2 + 1);
            goto LABEL_7;
          case 5:
            v149 = *(a2 + 2);
LABEL_570:
            if (v149)
            {
              v9 = *(*a2 + 8 * (v149 - 1));
              goto LABEL_7;
            }

            break;
        }

        goto LABEL_802;
      case 0x7C:
        std::string::append((this + 8), "@substituted ", 0xDuLL);
        v339 = *(a2 + 18);
        v340 = a2;
        if ((v339 - 1) < 2)
        {
          goto LABEL_942;
        }

        if (v339 == 5 && *(a2 + 2))
        {
          v340 = *a2;
LABEL_942:
          v341 = *v340;
        }

        else
        {
          v341 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v341, v6 + 1, 0);
        std::string::append((this + 8), " for <", 6uLL);
        v549 = *(a2 + 18);
        if (v549 == 2)
        {
          goto LABEL_1572;
        }

        if (v549 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
LABEL_1572:
          v496 = *(a2 + 1);
        }

        else
        {
LABEL_1573:
          v496 = 0;
        }

LABEL_1574:
        swift::Demangle::__runtime::NodePrinter::printChildren(this, v496, v6, ", ");
        goto LABEL_1575;
      case 0x7E:
        v456 = "@yields ";
        v457 = (this + 8);
        v458 = 8;
        goto LABEL_1357;
      case 0x7F:
        v456 = "@error ";
        v457 = (this + 8);
        v458 = 7;
LABEL_1357:
        std::string::append(v457, v456, v458);
        v373 = " ";
LABEL_1358:
        v488 = this;
        v489 = a2;
        goto LABEL_1359;
      case 0x80:
        v38 = "inout ";
        v39 = (this + 8);
        v40 = 6;
        goto LABEL_373;
      case 0x81:
        std::string::append((this + 8), *a2, *(a2 + 1));
        v272 = " infix";
        goto LABEL_1374;
      case 0x82:
        LODWORD(v635) = -1;
        result = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, "variable initialization expression", 0x22uLL, v635, &unk_D3717, 0);
        goto LABEL_829;
      case 0x83:
        v318 = *(a2 + 18);
        if ((v318 - 1) < 2)
        {
          goto LABEL_900;
        }

        if (v318 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_900:
          v319 = *a2;
        }

        else
        {
          v319 = 0;
        }

        v548 = "init";
        goto LABEL_1626;
      case 0x84:
        v38 = "isolated ";
        goto LABEL_140;
      case 0x85:
        v449 = a2;
        if (*(a2 + 18) - 1 >= 2)
        {
          v449 = *a2;
        }

        v450 = *(*v449 + 16) == 25;
        if (*(*v449 + 16) == 25)
        {
          v451 = 30;
        }

        else
        {
          v451 = 6;
        }

        v452 = "__isolated_deallocating_deinit";
LABEL_1327:
        if (v450)
        {
          v479 = v452;
        }

        else
        {
          v479 = "deinit";
        }

        LODWORD(v635) = -1;
        result = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, v479, v451, v635, &unk_D3717, 0);
        goto LABEL_829;
      case 0x86:
        v38 = "sending ";
        goto LABEL_208;
      case 0x87:
        v272 = "@isolated(any) ";
        v273 = (this + 8);
        v274 = 15;
        goto LABEL_827;
      case 0x88:
        v272 = "nonisolated(nonsending) ";
        v273 = (this + 8);
        v274 = 24;
        goto LABEL_827;
      case 0x89:
        v272 = "sending ";
        goto LABEL_1793;
      case 0x8A:
      case 0x8B:
      case 0x8C:
      case 0x8D:
        switch(v10)
        {
          case 140:
            v283 = "key path unapplied method ";
            v423 = (this + 8);
            v424 = 26;
            break;
          case 139:
            v283 = "key path setter for ";
            goto LABEL_1169;
          case 138:
            v283 = "key path getter for ";
LABEL_1169:
            v423 = (this + 8);
            v424 = 20;
            break;
          default:
            v283 = "key path applied method ";
            v423 = (this + 8);
            v424 = 24;
            break;
        }

        std::string::append(v423, v283, v424);
        v425 = *(a2 + 18);
        v426 = a2;
        if ((v425 - 1) < 2)
        {
          goto LABEL_1176;
        }

        if (v425 == 5 && *(a2 + 2))
        {
          v426 = *a2;
LABEL_1176:
          v427 = *v426;
        }

        else
        {
          v427 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v427, v6 + 1, 0);
        std::string::append((this + 8), " : ", 3uLL);
        v428 = *(a2 + 18);
        v429 = a2;
        if (v428 != 2)
        {
          if (v428 != 5 || *(a2 + 2) < 2u)
          {
            goto LABEL_828;
          }

          v429 = *a2;
        }

        v430 = *(v429 + 1);
        if (*(v430 + 8) == 228)
        {
          std::string::append((this + 8), ", ", 2uLL);
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v430, v6 + 1, 0);
        if (*(a2 + 18) == 5)
        {
          v431 = 2;
          do
          {
            if (v431 >= *(a2 + 2))
            {
              break;
            }

            v432 = *(*a2 + 8 * v431);
            if (*(v432 + 8) == 228)
            {
              std::string::append((this + 8), ", ", 2uLL);
            }

            swift::Demangle::__runtime::NodePrinter::print(this, v432, v6 + 1, 0);
            ++v431;
          }

          while (*(a2 + 18) == 5);
        }

        goto LABEL_828;
      case 0x8E:
      case 0x8F:
        std::string::append((this + 8), "key path index ", 0xFuLL);
        v292 = *(a2 + 8);
        if (v292 == 142)
        {
          v293 = "equality";
        }

        else
        {
          v293 = "hash";
        }

        if (v292 == 142)
        {
          v294 = 8;
        }

        else
        {
          v294 = 4;
        }

        std::string::append((this + 8), v293, v294);
        std::string::append((this + 8), " operator for ", 0xEuLL);
        LODWORD(v295) = *(a2 + 18);
        v296 = v295 - 1;
        if (v295 == 1)
        {
          v299 = xmmword_DA910;
        }

        else
        {
          if (v295 == 5)
          {
            v295 = *(a2 + 2);
            v297 = *a2;
            v298.i64[0] = 0xFFFFFFFFLL;
            v298.i64[1] = 0xFFFFFFFFLL;
            v299 = vandq_s8(vaddq_s64(vdupq_n_s64(v295), xmmword_DA920), v298);
            goto LABEL_1496;
          }

          v299 = xmmword_DA930;
          LODWORD(v295) = 2;
        }

        v297 = a2;
LABEL_1496:
        v529 = *(v297 + v299.i64[0]);
        v530 = v529[8];
        if (v530 == 228)
        {
          LODWORD(v295) = v295 - 1;
          v531 = a2;
          if (v296 >= 2)
          {
            v531 = *a2;
          }

          v529 = *(v531 + v299.i64[1]);
          v530 = v529[8];
        }

        if (v530 == 44)
        {
          swift::Demangle::__runtime::NodePrinter::print(this, v529, v6 + 1, 0);
          LODWORD(v295) = v295 - 1;
        }

        std::string::append((this + 8), "(", 1uLL);
        if (!v295)
        {
          goto LABEL_1549;
        }

        v532 = *(a2 + 18);
        v533 = a2;
        if ((v532 - 1) < 2)
        {
          goto LABEL_1507;
        }

        if (v532 == 5 && *(a2 + 2))
        {
          v533 = *a2;
LABEL_1507:
          v534 = *v533;
        }

        else
        {
          v534 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v534, v6 + 1, 0);
        if (v295 == 1)
        {
          goto LABEL_1549;
        }

        v539 = 1;
        while (1)
        {
          std::string::append((this + 8), ", ", 2uLL);
          v541 = *(a2 + 18);
          if (v541 == 2)
          {
            v542 = *(a2 + 18);
          }

          else
          {
            if (v541 != 5)
            {
              goto LABEL_1551;
            }

            v542 = *(a2 + 2);
          }

          if (v542 > v539)
          {
            v543 = v541 - 1;
            v544 = a2;
            if (v543 >= 2)
            {
              v544 = *a2;
            }

            v540 = *(v544 + v539);
            goto LABEL_1552;
          }

LABEL_1551:
          v540 = 0;
LABEL_1552:
          swift::Demangle::__runtime::NodePrinter::print(this, v540, v6 + 1, 0);
          if (v295 == ++v539)
          {
            goto LABEL_1549;
          }
        }

      case 0x90:
        std::string::append((this + 8), "lazy protocol witness table accessor for type ", 0x2EuLL);
        v41 = *(a2 + 18);
        v42 = a2;
        if ((v41 - 1) < 2)
        {
          goto LABEL_284;
        }

        if (v41 != 5 || !*(a2 + 2))
        {
          goto LABEL_390;
        }

        goto LABEL_283;
      case 0x91:
        std::string::append((this + 8), "lazy protocol witness table cache variable for type ", 0x34uLL);
        v114 = *(a2 + 18);
        v42 = a2;
        if ((v114 - 1) < 2)
        {
          goto LABEL_284;
        }

        if (v114 == 5 && *(a2 + 2))
        {
LABEL_283:
          v42 = *a2;
LABEL_284:
          v115 = *v42;
        }

        else
        {
LABEL_390:
          v115 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v115, v6, 0);
        v131 = " and conformance ";
LABEL_526:
        v194 = (this + 8);
        v195 = 17;
        goto LABEL_534;
      case 0x92:
        v362 = *(a2 + 18);
        v363 = a2;
        if (v362 == 2)
        {
          goto LABEL_1011;
        }

        if (v362 == 5 && *(a2 + 2) >= 2u)
        {
          v363 = *a2;
LABEL_1011:
          v364 = *(v363 + 1);
        }

        else
        {
          v364 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v364, v6 + 1, 0);
        if (*(this + 41) == 1)
        {
          std::string::append((this + 8), " #", 2uLL);
          if (*(a2 + 18) - 1 >= 2)
          {
            a2 = *a2;
          }

          swift::Demangle::__runtime::DemanglerPrinter::operator<<((this + 8), **a2 + 1);
        }

        goto LABEL_828;
      case 0x93:
        if (*(a2 + 18) == 5)
        {
          if (*(a2 + 2) == 3)
          {
            v282 = 1;
          }

          else
          {
            v282 = 2;
          }
        }

        else
        {
          v282 = 2;
        }

        LODWORD(v635) = -1;
        v278 = a4 & 1;
        v279 = this;
        v280 = a2;
        v281 = v6;
        goto LABEL_1540;
      case 0x94:
        v75 = *(a2 + 18);
        if ((v75 - 1) < 2)
        {
          goto LABEL_163;
        }

        if (v75 != 5)
        {
          goto LABEL_576;
        }

        if (!*(a2 + 2))
        {
          goto LABEL_828;
        }

LABEL_163:
        std::string::append((this + 8), "module ", 7uLL);
        v76 = *(a2 + 18);
        v77 = a2;
        if ((v76 - 1) < 2)
        {
          goto LABEL_167;
        }

        if (v76 == 5 && *(a2 + 2))
        {
          v77 = *a2;
LABEL_167:
          v78 = *v77;
        }

        else
        {
          v78 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v78, v6 + 1, 0);
        v75 = *(a2 + 18);
LABEL_576:
        if (v75 == 2)
        {
          goto LABEL_579;
        }

        if (v75 != 5)
        {
          goto LABEL_586;
        }

        if (*(a2 + 2) < 2u)
        {
          goto LABEL_828;
        }

LABEL_579:
        std::string::append((this + 8), " file ", 6uLL);
        v208 = *(a2 + 18);
        v209 = a2;
        if (v208 == 2)
        {
          goto LABEL_583;
        }

        if (v208 == 5 && *(a2 + 2) >= 2u)
        {
          v209 = *a2;
LABEL_583:
          v210 = *(v209 + 1);
        }

        else
        {
          v210 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v210, v6 + 1, 0);
        v75 = *(a2 + 18);
LABEL_586:
        if (v75 != 5 || *(a2 + 2) < 3u)
        {
          goto LABEL_828;
        }

        std::string::append((this + 8), " line ", 6uLL);
        if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
        {
          v211 = *(*a2 + 16);
        }

        else
        {
          v211 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v211, v6, 0);
        if (*(a2 + 18) != 5 || *(a2 + 2) < 4u)
        {
          goto LABEL_828;
        }

        std::string::append((this + 8), " column ", 8uLL);
        if (*(a2 + 18) != 5 || *(a2 + 2) < 4u)
        {
          goto LABEL_802;
        }

        v9 = *(*a2 + 24);
        goto LABEL_7;
      case 0x95:
        LODWORD(v635) = **(*a2 + 16) + 1;
        result = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 1, "unique name #", 0xDuLL, v635, &unk_D3717, 0);
        goto LABEL_829;
      case 0x96:
        v508 = *(a2 + 18);
        if ((v508 - 1) < 2)
        {
          goto LABEL_1414;
        }

        if (v508 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1414:
          v509 = *a2;
        }

        else
        {
          v509 = 0;
        }

        result = swift::Demangle::__runtime::NodePrinter::printAbstractStorage(this, v509, v6, a4 & 1, "materializeForSet", 0x11uLL);
        goto LABEL_829;
      case 0x97:
        if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
        {
          v323 = a4;
          v477 = *(*a2 + 16);
        }

        else
        {
          v323 = a4;
          v477 = 0;
        }

        __str.__r_.__value_.__s.__data_[0] = 0;
        *(__str.__r_.__value_.__r.__words + 1) = 0x101010101010101;
        __str.__r_.__value_.__s.__data_[9] = 1;
        *(&__str.__r_.__value_.__r.__words[1] + 2) = 0x101010100000000;
        __str.__r_.__value_.__s.__data_[18] = 1;
        *(&__str.__r_.__value_.__r.__words[2] + 3) = 256;
        __str.__r_.__value_.__s.__data_[21] = 1;
        v640 = 0;
        v641 = 0;
        v642 = off_E0BC8;
        v643 = swift::Demangle::__runtime::genericParameterName;
        v644 = &v642;
        swift::Demangle::__runtime::nodeToString(v477, &__str, a3, &v645);
        v516 = "member macro @";
        goto LABEL_1466;
      case 0x98:
        if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
        {
          v323 = a4;
          v441 = *(*a2 + 16);
        }

        else
        {
          v323 = a4;
          v441 = 0;
        }

        __str.__r_.__value_.__s.__data_[0] = 0;
        *(__str.__r_.__value_.__r.__words + 1) = 0x101010101010101;
        __str.__r_.__value_.__s.__data_[9] = 1;
        *(&__str.__r_.__value_.__r.__words[1] + 2) = 0x101010100000000;
        __str.__r_.__value_.__s.__data_[18] = 1;
        *(&__str.__r_.__value_.__r.__words[2] + 3) = 256;
        __str.__r_.__value_.__s.__data_[21] = 1;
        v640 = 0;
        v641 = 0;
        v642 = off_E0BC8;
        v643 = swift::Demangle::__runtime::genericParameterName;
        v644 = &v642;
        swift::Demangle::__runtime::nodeToString(v441, &__str, a3, &v645);
        v516 = "memberAttribute macro @";
        goto LABEL_1466;
      case 0x99:
        if (*(this + 43))
        {
          goto LABEL_828;
        }

        v272 = "merged ";
        goto LABEL_1431;
      case 0x9A:
        v490 = *(a2 + 18);
        v491 = a2;
        if (v490 == 2)
        {
          goto LABEL_1367;
        }

        if (v490 == 5)
        {
          v492 = *(a2 + 2);
          if (v492 != 2)
          {
            v493 = 0;
            goto LABEL_1821;
          }

          v491 = *a2;
LABEL_1367:
          swift::Demangle::__runtime::NodePrinter::print(this, *v491, v6 + 1, 0);
          v493 = 1;
          std::string::append((this + 8), " ", 1uLL);
          v494 = 0;
          v490 = *(a2 + 18);
        }

        else
        {
          v493 = 0;
          v494 = 1;
        }

        switch(v490)
        {
          case 1:
            v493 = 0;
            if ((v494 & 1) == 0)
            {
              goto LABEL_1824;
            }

            break;
          case 2:
            break;
          case 5:
            v492 = *(a2 + 2);
LABEL_1821:
            if (v493 < v492)
            {
              a2 = *a2;
              break;
            }

LABEL_1824:
            v609 = 0;
LABEL_1825:
            v610 = *(v609 + 18);
            if ((v610 - 1) >= 2)
            {
              if (v610 != 5 || !*(v609 + 2))
              {
                v611 = 0;
                goto LABEL_1831;
              }

              v609 = *v609;
            }

            v611 = *v609;
LABEL_1831:
            swift::Demangle::__runtime::NodePrinter::printWithParens(this, v611, v6);
            v612 = v611[8];
            if ((v612 - 200) < 3 || v612 == 71)
            {
              v272 = ".Protocol";
LABEL_1834:
              v273 = (this + 8);
              v274 = 9;
            }

            else
            {
              v272 = ".Type";
LABEL_1275:
              v273 = (this + 8);
              v274 = 5;
            }

            goto LABEL_827;
          default:
            goto LABEL_1824;
        }

        v609 = *(a2 + v493);
        goto LABEL_1825;
      case 0x9C:
        v38 = "metaclass for ";
        goto LABEL_179;
      case 0x9D:
        v15 = "method lookup function for ";
        goto LABEL_169;
      case 0x9E:
        v15 = "ObjC metadata update function for ";
        v16 = (this + 8);
        v17 = 34;
        goto LABEL_336;
      case 0x9F:
        v15 = "ObjC resilient class stub for ";
        v16 = (this + 8);
        v17 = 30;
        goto LABEL_336;
      case 0xA0:
        v15 = "full ObjC resilient class stub for ";
        v16 = (this + 8);
        v17 = 35;
        goto LABEL_336;
      case 0xA1:
        v485 = *(a2 + 18);
        if ((v485 - 1) < 2)
        {
          goto LABEL_1348;
        }

        if (v485 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1348:
          v407 = *a2;
        }

        else
        {
          v407 = 0;
        }

        v528 = "modify";
        goto LABEL_1664;
      case 0xA2:
        v353 = *(a2 + 18);
        if ((v353 - 1) < 2)
        {
          goto LABEL_986;
        }

        if (v353 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_986:
          v354 = *a2;
        }

        else
        {
          v354 = 0;
        }

        v550 = "modify2";
        goto LABEL_1629;
      case 0xA3:
        if (*(this + 36) == 1)
        {
          goto LABEL_1362;
        }

        goto LABEL_828;
      case 0xA4:
        v357 = *(a2 + 18);
        if ((v357 - 1) < 2)
        {
          goto LABEL_996;
        }

        if (v357 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_996:
          v358 = *a2;
        }

        else
        {
          v358 = 0;
        }

        result = swift::Demangle::__runtime::NodePrinter::printAbstractStorage(this, v358, v6, a4 & 1, "nativeOwningAddressor", 0x15uLL);
        goto LABEL_829;
      case 0xA5:
        v325 = *(a2 + 18);
        if ((v325 - 1) < 2)
        {
          goto LABEL_913;
        }

        if (v325 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_913:
          v326 = *a2;
        }

        else
        {
          v326 = 0;
        }

        result = swift::Demangle::__runtime::NodePrinter::printAbstractStorage(this, v326, v6, a4 & 1, "nativeOwningMutableAddressor", 0x1CuLL);
        goto LABEL_829;
      case 0xA6:
        v470 = *(a2 + 18);
        if ((v470 - 1) < 2)
        {
          goto LABEL_1307;
        }

        if (v470 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1307:
          v356 = *a2;
        }

        else
        {
          v356 = 0;
        }

        v551 = "nativePinningAddressor";
        goto LABEL_1641;
      case 0xA7:
        v497 = *(a2 + 18);
        if ((v497 - 1) < 2)
        {
          goto LABEL_1379;
        }

        if (v497 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1379:
          v498 = *a2;
        }

        else
        {
          v498 = 0;
        }

        result = swift::Demangle::__runtime::NodePrinter::printAbstractStorage(this, v498, v6, a4 & 1, "nativePinningMutableAddressor", 0x1DuLL);
        goto LABEL_829;
      case 0xA8:
        v38 = "nominal type descriptor for ";
        v39 = (this + 8);
        v40 = 28;
        goto LABEL_373;
      case 0xA9:
        v38 = "nominal type descriptor runtime record for ";
        v39 = (this + 8);
        v40 = 43;
        goto LABEL_373;
      case 0xAA:
        v272 = "@nonobjc ";
        goto LABEL_1834;
      case 0xAC:
        goto LABEL_1191;
      case 0xAD:
        std::string::append((this + 8), "predefined ", 0xBuLL);
LABEL_1191:
        std::string::append((this + 8), "@objc completion handler block implementation for ", 0x32uLL);
        v433 = *(a2 + 18);
        if (v433 != 5)
        {
          goto LABEL_1194;
        }

        v434 = *(a2 + 2);
        if (v434 < 4)
        {
          goto LABEL_1197;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, *(*a2 + 24), v6 + 1, 0);
        v433 = *(a2 + 18);
LABEL_1194:
        v435 = a2;
        if ((v433 - 1) < 2)
        {
          goto LABEL_1199;
        }

        if (v433 != 5)
        {
          goto LABEL_1479;
        }

        v434 = *(a2 + 2);
LABEL_1197:
        if (v434)
        {
          v435 = *a2;
LABEL_1199:
          v436 = *v435;
        }

        else
        {
LABEL_1479:
          v436 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v436, v6 + 1, 0);
        std::string::append((this + 8), " with result type ", 0x12uLL);
        v524 = *(a2 + 18);
        v525 = a2;
        if (v524 == 2)
        {
          goto LABEL_1484;
        }

        if (v524 == 5 && *(a2 + 2) >= 2u)
        {
          v525 = *a2;
LABEL_1484:
          v526 = *(v525 + 1);
        }

        else
        {
          v526 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v526, v6 + 1, 0);
        v527 = **(*a2 + 16);
        switch(v527)
        {
          case 0:
            goto LABEL_828;
          case 2:
            v272 = " zero on error";
LABEL_1521:
            v273 = (this + 8);
            v274 = 14;
            break;
          case 1:
            v272 = " nonzero on error";
LABEL_1490:
            v273 = (this + 8);
            v274 = 17;
            break;
          default:
            v272 = " <invalid error flag>";
            v273 = (this + 8);
            v274 = 21;
            break;
        }

        goto LABEL_827;
      case 0xAE:
        v272 = "@objc ";
        goto LABEL_1374;
      case 0xB2:
        v442 = *(a2 + 18);
        if ((v442 - 1) < 2)
        {
          goto LABEL_1233;
        }

        if (v442 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1233:
          v366 = *a2;
        }

        else
        {
          v366 = 0;
        }

        v552 = "owningAddressor";
        goto LABEL_1632;
      case 0xB3:
        v415 = *(a2 + 18);
        if ((v415 - 1) < 2)
        {
          goto LABEL_1141;
        }

        if (v415 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1141:
          v356 = *a2;
        }

        else
        {
          v356 = 0;
        }

        v551 = "owningMutableAddressor";
        goto LABEL_1641;
      case 0xB4:
        if (*(this + 42) == 1)
        {
          goto LABEL_955;
        }

        v320 = "partial apply forwarder";
        v321 = (this + 8);
        v322 = 23;
        goto LABEL_1509;
      case 0xB5:
        if (*(this + 42) == 1)
        {
LABEL_955:
          v320 = "partial apply";
          v321 = (this + 8);
          v322 = 13;
        }

        else
        {
          v320 = "partial apply ObjC forwarder";
          v321 = (this + 8);
          v322 = 28;
        }

LABEL_1509:
        std::string::append(v321, v320, v322);
        v535 = *(a2 + 18);
        if ((v535 - 1) >= 2 && (v535 != 5 || !*(a2 + 2)))
        {
          goto LABEL_828;
        }

        v389 = " for ";
        v390 = (this + 8);
        v391 = 5;
        goto LABEL_1513;
      case 0xB6:
        if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
        {
          v323 = a4;
          v343 = *(*a2 + 16);
        }

        else
        {
          v323 = a4;
          v343 = 0;
        }

        __str.__r_.__value_.__s.__data_[0] = 0;
        *(__str.__r_.__value_.__r.__words + 1) = 0x101010101010101;
        __str.__r_.__value_.__s.__data_[9] = 1;
        *(&__str.__r_.__value_.__r.__words[1] + 2) = 0x101010100000000;
        __str.__r_.__value_.__s.__data_[18] = 1;
        *(&__str.__r_.__value_.__r.__words[2] + 3) = 256;
        __str.__r_.__value_.__s.__data_[21] = 1;
        v640 = 0;
        v641 = 0;
        v642 = off_E0BC8;
        v643 = swift::Demangle::__runtime::genericParameterName;
        v644 = &v642;
        swift::Demangle::__runtime::nodeToString(v343, &__str, a3, &v645);
        v516 = "peer macro @";
        goto LABEL_1466;
      case 0xB7:
        std::string::append((this + 8), *a2, *(a2 + 1));
        v272 = " postfix";
        goto LABEL_1793;
      case 0xB8:
        if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
        {
          v323 = a4;
          v455 = *(*a2 + 16);
        }

        else
        {
          v323 = a4;
          v455 = 0;
        }

        __str.__r_.__value_.__s.__data_[0] = 0;
        *(__str.__r_.__value_.__r.__words + 1) = 0x101010101010101;
        __str.__r_.__value_.__s.__data_[9] = 1;
        *(&__str.__r_.__value_.__r.__words[1] + 2) = 0x101010100000000;
        __str.__r_.__value_.__s.__data_[18] = 1;
        *(&__str.__r_.__value_.__r.__words[2] + 3) = 256;
        __str.__r_.__value_.__s.__data_[21] = 1;
        v640 = 0;
        v641 = 0;
        v642 = off_E0BC8;
        v643 = swift::Demangle::__runtime::genericParameterName;
        v644 = &v642;
        swift::Demangle::__runtime::nodeToString(v455, &__str, a3, &v645);
        v516 = "preamble macro @";
LABEL_1466:
        v517 = std::string::insert(&v645, 0, v516);
        v518 = v517->__r_.__value_.__r.__words[2];
        *&v646.__r_.__value_.__l.__data_ = *&v517->__r_.__value_.__l.__data_;
        v646.__r_.__value_.__r.__words[2] = v518;
        v517->__r_.__value_.__l.__size_ = 0;
        v517->__r_.__value_.__r.__words[2] = 0;
        v517->__r_.__value_.__r.__words[0] = 0;
        v519 = std::string::append(&v646, " expansion #");
        v520 = v519->__r_.__value_.__r.__words[2];
        v647 = *&v519->__r_.__value_.__l.__data_;
        v648 = v520;
        v519->__r_.__value_.__l.__size_ = 0;
        v519->__r_.__value_.__r.__words[2] = 0;
        v519->__r_.__value_.__r.__words[0] = 0;
        if (v648 >= 0)
        {
          v521 = &v647;
        }

        else
        {
          v521 = v647;
        }

        if (v648 >= 0)
        {
          v522 = SHIBYTE(v648);
        }

        else
        {
          v522 = *(&v647 + 1);
        }

        LODWORD(v635) = **(*a2 + 24) + 1;
        v523 = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, v323 & 1, 0, 1, v521, v522, v635, &unk_D3717, 0);
        if (SHIBYTE(v648) < 0)
        {
          operator delete(v647);
          if ((SHIBYTE(v646.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_1474:
            if ((SHIBYTE(v645.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_1475;
            }

            goto LABEL_1478;
          }
        }

        else if ((SHIBYTE(v646.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_1474;
        }

        operator delete(v646.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v645.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_1475;
        }

LABEL_1478:
        operator delete(v645.__r_.__value_.__l.__data_);
LABEL_1475:
        swift::Demangle::__runtime::DemangleOptions::~DemangleOptions(&__str);
        result = v523;
        goto LABEL_829;
      case 0xB9:
        std::string::append((this + 8), *a2, *(a2 + 1));
        v272 = " prefix";
        goto LABEL_1431;
      case 0xBA:
        v465 = *(a2 + 18);
        if (v465 != 2 && (v465 != 5 || *(a2 + 2) < 2u))
        {
          if (*(this + 46) != 1)
          {
            goto LABEL_828;
          }

          v536 = "(in ";
          goto LABEL_1730;
        }

        if (*(this + 46) == 1)
        {
          std::string::push_back((this + 8), 40);
          v465 = *(a2 + 18);
        }

        v466 = a2;
        if (v465 == 2)
        {
          goto LABEL_1295;
        }

        if (v465 == 5 && *(a2 + 2) >= 2u)
        {
          v466 = *a2;
LABEL_1295:
          v467 = *(v466 + 1);
        }

        else
        {
          v467 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v467, v6 + 1, 0);
        if (*(this + 46) != 1)
        {
          goto LABEL_828;
        }

        v536 = " in ";
LABEL_1730:
        std::string::append((this + 8), v536, 4uLL);
        if (*(a2 + 18) - 1 >= 2)
        {
LABEL_1731:
          a2 = *a2;
        }

LABEL_1732:
        std::string::append((this + 8), **a2, *(*a2 + 8));
        goto LABEL_1888;
      case 0xBB:
        v38 = "property descriptor for ";
        goto LABEL_241;
      case 0xBC:
        LODWORD(v635) = -1;
        result = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, "property wrapper backing initializer", 0x24uLL, v635, &unk_D3717, 0);
        goto LABEL_829;
      case 0xBD:
        LODWORD(v635) = -1;
        result = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, "property wrapper init from projected value", 0x2AuLL, v635, &unk_D3717, 0);
        goto LABEL_829;
      case 0xBF:
        v370 = "protocol symbolic reference 0x";
        v371 = (this + 8);
        v372 = 30;
        goto LABEL_1332;
      case 0xC0:
        v138 = *(a2 + 18);
        v139 = a2;
        if ((v138 - 1) < 2)
        {
          goto LABEL_359;
        }

        if (v138 == 5)
        {
          if (!*(a2 + 2))
          {
            v9 = 0;
            v140 = 0;
            goto LABEL_810;
          }

          v139 = *a2;
LABEL_359:
          v140 = *v139;
        }

        else
        {
          v140 = 0;
        }

        v9 = 0;
        if (v138 == 1)
        {
          v218 = 0;
          goto LABEL_811;
        }

        v216 = a2;
        if (v138 == 2)
        {
          goto LABEL_640;
        }

        if (v138 != 5)
        {
          goto LABEL_641;
        }

        if (*(a2 + 2) < 2u)
        {
          v9 = 0;
        }

        else
        {
          v216 = *a2;
LABEL_640:
          v9 = *(v216 + 1);
LABEL_641:
          if (v138 == 5)
          {
            v217 = *(a2 + 2);
            if (v217 >= 3)
            {
              v218 = *(*a2 + 16);
              if (v217 == 4)
              {
                v219 = v140;
                std::string::append((this + 8), "property behavior storage of ", 0x1DuLL);
                v6 = (v6 + 1);
                swift::Demangle::__runtime::NodePrinter::print(this, v218, v6, 0);
                std::string::append((this + 8), " in ", 4uLL);
                swift::Demangle::__runtime::NodePrinter::print(this, v219, v6, 0);
                std::string::append((this + 8), " : ", 3uLL);
                goto LABEL_7;
              }

LABEL_811:
              v6 = (v6 + 1);
              swift::Demangle::__runtime::NodePrinter::print(this, v140, v6, 0);
              if (*(this + 38) == 1)
              {
                std::string::append((this + 8), " : ", 3uLL);
                swift::Demangle::__runtime::NodePrinter::print(this, v9, v6, 0);
                std::string::append((this + 8), " in ", 4uLL);
                v9 = v218;
                goto LABEL_7;
              }

              goto LABEL_828;
            }
          }
        }

LABEL_810:
        v218 = 0;
        goto LABEL_811;
      case 0xC1:
        v389 = "protocol conformance ref (type's module) ";
        v390 = (this + 8);
        v391 = 41;
        goto LABEL_1513;
      case 0xC2:
        v389 = "protocol conformance ref (protocol's module) ";
        v390 = (this + 8);
        v391 = 45;
        goto LABEL_1513;
      case 0xC3:
        v389 = "protocol conformance ref (retroactive) ";
        v390 = (this + 8);
        v391 = 39;
        goto LABEL_1513;
      case 0xC4:
        v38 = "protocol descriptor for ";
LABEL_241:
        v39 = (this + 8);
        v40 = 24;
        goto LABEL_373;
      case 0xC5:
        v38 = "protocol descriptor runtime record for ";
        goto LABEL_354;
      case 0xC6:
        v38 = "protocol conformance descriptor for ";
        goto LABEL_342;
      case 0xC7:
        v38 = "protocol conformance descriptor runtime record for ";
        v39 = (this + 8);
        v40 = 51;
        goto LABEL_373;
      case 0xC8:
        v510 = *(a2 + 18);
        if ((v510 - 1) < 2)
        {
          goto LABEL_1420;
        }

        if (v510 != 5 || !*(a2 + 2))
        {
          goto LABEL_828;
        }

        a2 = *a2;
LABEL_1420:
        v489 = *a2;
        if (!*a2)
        {
          goto LABEL_828;
        }

        v511 = *(v489 + 18);
        if ((v511 - 1) < 2 || v511 == 5 && *(v489 + 2))
        {
          goto LABEL_1686;
        }

        v272 = "Any";
LABEL_1002:
        v273 = (this + 8);
        v274 = 3;
        goto LABEL_827;
      case 0xC9:
        v468 = *(a2 + 18);
        if (v468 == 2)
        {
          v469 = a2;
        }

        else
        {
          if (v468 != 5 || *(a2 + 2) < 2u)
          {
            goto LABEL_828;
          }

          v469 = *a2;
        }

        v576 = *v469;
        swift::Demangle::__runtime::NodePrinter::print(this, *(v469 + 1), v6 + 1, 0);
        std::string::append((this + 8), " & ", 3uLL);
        v577 = *(v576 + 18);
        if ((v577 - 1) >= 2)
        {
          if (v577 != 5 || !*(v576 + 2))
          {
            goto LABEL_828;
          }

          v576 = *v576;
        }

        v489 = *v576;
LABEL_1686:
        v373 = " & ";
        v488 = this;
LABEL_1359:
        swift::Demangle::__runtime::NodePrinter::printChildren(v488, v489, v6, v373);
        goto LABEL_828;
      case 0xCA:
        v502 = *(a2 + 18);
        if ((v502 - 1) < 2)
        {
          goto LABEL_1393;
        }

        if (v502 != 5 || !*(a2 + 2))
        {
          goto LABEL_828;
        }

        a2 = *a2;
LABEL_1393:
        v503 = *a2;
        v504 = *(*a2 + 18);
        if ((v504 - 1) < 2)
        {
          goto LABEL_1397;
        }

        if (v504 != 5 || !v503[2])
        {
          goto LABEL_828;
        }

        v503 = *v503;
LABEL_1397:
        v505 = *v503;
        v506 = *(*v503 + 18);
        if ((v506 - 1) < 2 || v506 == 5 && *(v505 + 8))
        {
          swift::Demangle::__runtime::NodePrinter::printChildren(this, v505, v6, " & ");
          std::string::append((this + 8), " & ", 3uLL);
        }

        if (*(this + 33) == 1 && *(this + 49) == 1)
        {
          std::string::append((this + 8), "Swift", 5uLL);
          std::string::append((this + 8), ".", 1uLL);
        }

        v272 = "AnyObject";
        goto LABEL_1834;
      case 0xCB:
        v38 = "protocol self-conformance descriptor for ";
        goto LABEL_319;
      case 0xCC:
        v38 = "protocol self-conformance witness for ";
        goto LABEL_264;
      case 0xCD:
        v38 = "protocol self-conformance witness table for ";
        v39 = (this + 8);
        v40 = 44;
        goto LABEL_373;
      case 0xCE:
        std::string::append((this + 8), "protocol witness for ", 0x15uLL);
        v48 = *(a2 + 18);
        v49 = a2;
        if (v48 == 2)
        {
          goto LABEL_89;
        }

        if (v48 == 5 && *(a2 + 2) >= 2u)
        {
          v49 = *a2;
LABEL_89:
          v50 = *(v49 + 1);
        }

        else
        {
          v50 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v50, v6, 0);
        v158 = " in conformance ";
        goto LABEL_420;
      case 0xCF:
        v38 = "protocol witness table for ";
        goto LABEL_286;
      case 0xD0:
        v38 = "protocol witness table accessor for ";
LABEL_342:
        v39 = (this + 8);
        v40 = 36;
        goto LABEL_373;
      case 0xD1:
        v38 = "protocol witness table pattern for ";
LABEL_362:
        v39 = (this + 8);
        v40 = 35;
        goto LABEL_373;
      case 0xD2:
      case 0xD3:
        if (*(this + 43) == 1)
        {
          std::string::append((this + 8), "thunk for ", 0xAuLL);
          v30 = *(a2 + 18);
          if (v30 == 1)
          {
            v31 = 0;
            goto LABEL_617;
          }

          if (v30 != 5)
          {
            if (v30 != 2)
            {
              goto LABEL_615;
            }

            v31 = 1;
            goto LABEL_617;
          }

          v215 = *(a2 + 2);
          if (v215)
          {
            v31 = v215 - 1;
            a2 = *a2;
LABEL_617:
            v9 = *(a2 + v31);
            v6 = (v6 + 1);
            goto LABEL_7;
          }

LABEL_615:
          v9 = 0;
          v6 = (v6 + 1);
          goto LABEL_7;
        }

        std::string::append((this + 8), "reabstraction thunk ", 0x14uLL);
        if (*(a2 + 8) == 211)
        {
          std::string::append((this + 8), "helper ", 7uLL);
        }

        if (*(a2 + 18) == 5 && *(a2 + 2) == 3)
        {
          swift::Demangle::__runtime::NodePrinter::print(this, **a2, v6 + 1, 0);
          v96 = 1;
          std::string::append((this + 8), " ", 1uLL);
        }

        else
        {
          v96 = 0;
        }

        std::string::append((this + 8), "from ", 5uLL);
        v143 = *(a2 + 18);
        if (v143 == 2)
        {
          v144 = *(a2 + 18);
        }

        else
        {
          if (v143 != 5)
          {
            goto LABEL_545;
          }

          v144 = *(a2 + 2);
        }

        if (v144 > v96 + 1)
        {
          v197 = v143 - 1;
          v198 = a2;
          if (v197 >= 2)
          {
            v198 = *a2;
          }

          v199 = *(v198 + v96 + 1);
          goto LABEL_546;
        }

LABEL_545:
        v199 = 0;
LABEL_546:
        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v199, v6, 0);
        v200 = " to ";
        v201 = (this + 8);
        v202 = 4;
        goto LABEL_554;
      case 0xD4:
        std::string::append((this + 8), "reabstraction thunk ", 0x14uLL);
        if (*(a2 + 18) == 5 && *(a2 + 2) == 4)
        {
          swift::Demangle::__runtime::NodePrinter::print(this, **a2, v6 + 1, 0);
          v96 = 1;
          std::string::append((this + 8), " ", 1uLL);
        }

        else
        {
          v96 = 0;
        }

        std::string::append((this + 8), "from ", 5uLL);
        if (*(a2 + 18) == 5 && *(a2 + 2) > (v96 | 2))
        {
          v145 = *(*a2 + 8 * (v96 | 2));
        }

        else
        {
          v145 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v145, v6, 0);
        std::string::append((this + 8), " to ", 4uLL);
        v146 = *(a2 + 18);
        if (v146 == 2)
        {
          v147 = *(a2 + 18);
        }

        else
        {
          if (v146 != 5)
          {
            goto LABEL_552;
          }

          v147 = *(a2 + 2);
        }

        if (v147 > v96 + 1)
        {
          v203 = v146 - 1;
          v204 = a2;
          if (v203 >= 2)
          {
            v204 = *a2;
          }

          v205 = *(v204 + v96 + 1);
LABEL_553:
          swift::Demangle::__runtime::NodePrinter::print(this, v205, v6, 0);
          v200 = " self ";
          v201 = (this + 8);
          v202 = 6;
LABEL_554:
          std::string::append(v201, v200, v202);
          v206 = *(a2 + 18);
          v207 = v206 - 1;
          if (v206 != 1)
          {
            if (v206 == 2)
            {
LABEL_561:
              v9 = *(a2 + v96);
              goto LABEL_7;
            }

            if (v206 != 5)
            {
LABEL_802:
              v9 = 0;
              goto LABEL_7;
            }

            v206 = *(a2 + 2);
          }

          if (v206 > v96)
          {
            if (v207 >= 2)
            {
              a2 = *a2;
            }

            goto LABEL_561;
          }

          goto LABEL_802;
        }

LABEL_552:
        v205 = 0;
        goto LABEL_553;
      case 0xD5:
        v65 = *(a2 + 18);
        v66 = a2;
        if ((v65 - 1) < 2)
        {
          goto LABEL_128;
        }

        if (v65 == 5 && *(a2 + 2))
        {
          v66 = *a2;
LABEL_128:
          v67 = *v66;
        }

        else
        {
          v67 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v67, v6, 0);
        v131 = " with global actor constraint ";
        v194 = (this + 8);
        v195 = 30;
        goto LABEL_534;
      case 0xD6:
        v438 = *(a2 + 18);
        if ((v438 - 1) < 2)
        {
          goto LABEL_1209;
        }

        if (v438 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1209:
          v319 = *a2;
        }

        else
        {
          v319 = 0;
        }

        v548 = "read";
LABEL_1626:
        result = swift::Demangle::__runtime::NodePrinter::printAbstractStorage(this, v319, v6, a4 & 1, v548, 4uLL);
        goto LABEL_829;
      case 0xD7:
        v486 = *(a2 + 18);
        if ((v486 - 1) < 2)
        {
          goto LABEL_1355;
        }

        if (v486 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1355:
          v487 = *a2;
        }

        else
        {
          v487 = 0;
        }

        result = swift::Demangle::__runtime::NodePrinter::printAbstractStorage(this, v487, v6, a4 & 1, "read2", 5uLL);
        goto LABEL_829;
      case 0xD8:
        std::string::append((this + 8), "related decl '", 0xEuLL);
        v116 = a2;
        if (*(a2 + 18) - 1 >= 2)
        {
          v116 = *a2;
        }

        std::string::append((this + 8), **v116, (*v116)[1]);
        std::string::append((this + 8), "' for ", 6uLL);
        v117 = *(a2 + 18);
        if (v117 == 2)
        {
          goto LABEL_293;
        }

        if (v117 != 5 || *(a2 + 2) < 2u)
        {
          goto LABEL_615;
        }

        a2 = *a2;
LABEL_293:
        v9 = *(a2 + 1);
        v6 = (v6 + 1);
        goto LABEL_7;
      case 0xD9:
        v79 = *(a2 + 18);
        if (v79 != 2 && (v79 != 5 || *(a2 + 2) != 2))
        {
          goto LABEL_828;
        }

        std::string::append((this + 8), "retroactive @ ", 0xEuLL);
        v80 = *(a2 + 18);
        v81 = a2;
        if ((v80 - 1) < 2)
        {
          goto LABEL_177;
        }

        if (v80 == 5 && *(a2 + 2))
        {
          v81 = *a2;
LABEL_177:
          v82 = *v81;
        }

        else
        {
          v82 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v82, v6, 0);
        goto LABEL_535;
      case 0xDA:
        v352 = *(a2 + 18);
        if ((v352 - 1) < 2 || v352 == 5 && *(a2 + 2))
        {
          goto LABEL_1514;
        }

LABEL_1362:
        v272 = *a2;
        v274 = *(a2 + 1);
        v273 = (this + 8);
        goto LABEL_827;
      case 0xDB:
        v38 = "__shared ";
LABEL_140:
        v39 = (this + 8);
        v40 = 9;
        goto LABEL_373;
      case 0xDC:
        v38 = "__owned ";
LABEL_208:
        v39 = (this + 8);
        v40 = 8;
        goto LABEL_373;
      case 0xDD:
        v32 = "@box ";
        v33 = (this + 8);
        v34 = 5;
        goto LABEL_313;
      case 0xDE:
        v121 = *(a2 + 18);
        v122 = a2;
        if ((v121 - 1) < 2)
        {
          goto LABEL_305;
        }

        if (v121 == 5)
        {
          if (!*(a2 + 2))
          {
LABEL_494:
            v9 = 0;
            goto LABEL_6;
          }

          v122 = *a2;
LABEL_305:
          v9 = *v122;
        }

        else
        {
          v9 = 0;
        }

        if (v121 == 5 && *(a2 + 2) == 3)
        {
          v537 = *(*a2 + 16);
          swift::Demangle::__runtime::NodePrinter::print(this, *(*a2 + 8), v6 + 1, 0);
          std::string::push_back((this + 8), 32);
          swift::Demangle::__runtime::NodePrinter::print(this, v9, v6 + 1, 0);
          if (!v537)
          {
            goto LABEL_828;
          }

          std::string::append((this + 8), " <", 2uLL);
          v538 = *(v537 + 18);
          if (v538 == 5)
          {
            v626 = (v537 + 8);
            v627 = *(v537 + 8);
            if (!v627 || (swift::Demangle::__runtime::NodePrinter::print(this, **v537, v6 + 1, 0), v627 == 1))
            {
LABEL_1575:
              std::string::push_back((this + 8), 62);
              goto LABEL_828;
            }
          }

          else
          {
            if (v538 != 2)
            {
              if (v538 == 1)
              {
                swift::Demangle::__runtime::NodePrinter::print(this, *v537, v6 + 1, 0);
              }

              goto LABEL_1575;
            }

            v626 = (v537 + 8);
            swift::Demangle::__runtime::NodePrinter::print(this, *v537, v6 + 1, 0);
            v627 = 2;
          }

          v628 = 1;
          while (1)
          {
            std::string::append((this + 8), ", ", 2uLL);
            v630 = *(v537 + 18);
            if (v630 == 2)
            {
              v631 = *(v537 + 18);
            }

            else
            {
              if (v630 != 5)
              {
                goto LABEL_1893;
              }

              v631 = *v626;
            }

            if (v631 > v628)
            {
              v632 = v630 - 1;
              v633 = v537;
              if (v632 >= 2)
              {
                v633 = *v537;
              }

              v629 = v633[v628];
              goto LABEL_1894;
            }

LABEL_1893:
            v629 = 0;
LABEL_1894:
            swift::Demangle::__runtime::NodePrinter::print(this, v629, v6 + 1, 0);
            if (v627 == ++v628)
            {
              goto LABEL_1575;
            }
          }
        }

LABEL_6:
        v6 = (v6 + 1);
        goto LABEL_7;
      case 0xDF:
        std::string::push_back((this + 8), 123);
        v344 = *(a2 + 18);
        if ((v344 - 1) >= 2 && (v344 != 5 || !*(a2 + 2)))
        {
          goto LABEL_1782;
        }

        std::string::push_back((this + 8), 32);
        v345 = *(a2 + 18);
        v346 = a2;
        if ((v345 - 1) < 2)
        {
          goto LABEL_963;
        }

        if (v345 == 5 && *(a2 + 2))
        {
          v346 = *a2;
LABEL_963:
          v347 = *v346;
        }

        else
        {
          v347 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v347, v6 + 1, 0);
        v599 = 1;
        while (2)
        {
          v601 = *(a2 + 18);
          if (v601 == 2)
          {
            goto LABEL_1773;
          }

          if (v601 != 5)
          {
            goto LABEL_1782;
          }

          v601 = *(a2 + 2);
LABEL_1773:
          if (v601 <= v599)
          {
LABEL_1782:
            v272 = " }";
LABEL_1783:
            v273 = (this + 8);
            v274 = 2;
            goto LABEL_827;
          }

          std::string::push_back((this + 8), 44);
          std::string::push_back((this + 8), 32);
          v602 = *(a2 + 18);
          if (v602 == 2)
          {
            v603 = *(a2 + 18);
          }

          else
          {
            if (v602 != 5)
            {
              goto LABEL_1768;
            }

            v603 = *(a2 + 2);
          }

          if (v603 > v599)
          {
            v604 = v602 - 1;
            v605 = a2;
            if (v604 >= 2)
            {
              v605 = *a2;
            }

            v600 = *(v605 + v599);
            goto LABEL_1769;
          }

LABEL_1768:
          v600 = 0;
LABEL_1769:
          swift::Demangle::__runtime::NodePrinter::print(this, v600, v6 + 1, 0);
          ++v599;
          continue;
        }

      case 0xE0:
      case 0xE1:
        if (v10 == 225)
        {
          v32 = "let ";
        }

        else
        {
          v32 = "var ";
        }

        v33 = (this + 8);
        v34 = 4;
        goto LABEL_313;
      case 0xE2:
        v406 = *(a2 + 18);
        if ((v406 - 1) < 2)
        {
          goto LABEL_1113;
        }

        if (v406 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1113:
          v407 = *a2;
        }

        else
        {
          v407 = 0;
        }

        v528 = "setter";
LABEL_1664:
        result = swift::Demangle::__runtime::NodePrinter::printAbstractStorage(this, v407, v6, a4 & 1, v528, 6uLL);
        goto LABEL_829;
      case 0xE4:
        v272 = "serialized";
        goto LABEL_1700;
      case 0xE5:
        v32 = "static ";
        v33 = (this + 8);
        v34 = 7;
        goto LABEL_313;
      case 0xE7:
        LODWORD(v635) = -1;
        result = swift::Demangle::__runtime::NodePrinter::printEntity(this, a2, v6, a4 & 1, 2, 0, &unk_D3717, 0, v635, "subscript", 9);
        goto LABEL_829;
      case 0xE8:
        if (*(this + 35) != 1)
        {
          goto LABEL_828;
        }

        std::string::append((this + 8), " with unmangled suffix ", 0x17uLL);
        if (*a2)
        {
          std::string::basic_string[abi:nn200100](&__p, *a2, *(a2 + 1));
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            goto LABEL_1800;
          }
        }

        else
        {
          memset(&__p, 0, sizeof(__p));
        }

        __str = __p;
LABEL_1800:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_828;
      case 0xEA:
        std::string::append((this + 8), "(", 1uLL);
        swift::Demangle::__runtime::NodePrinter::printChildren(this, a2, v6, ", ");
        goto LABEL_1549;
      case 0xEB:
        ChildIf = swift::Demangle::__runtime::NodePrinter::getChildIf(0, a2, 236);
        if (ChildIf)
        {
          std::string::append((this + 8), *ChildIf, *(ChildIf + 8));
          ChildIf = std::string::append((this + 8), ": ", 2uLL);
        }

        v360 = swift::Demangle::__runtime::NodePrinter::getChildIf(ChildIf, a2, 243);
        v361 = swift::Demangle::__runtime::NodePrinter::print(this, v360, v6 + 1, 0);
        result = swift::Demangle::__runtime::NodePrinter::getChildIf(v361, a2, 289);
        if (!result)
        {
          goto LABEL_829;
        }

        v272 = "...";
        goto LABEL_1002;
      case 0xEC:
        std::string::append((this + 8), *a2, *(a2 + 1));
        v272 = ": ";
        goto LABEL_1783;
      case 0xED:
        v289 = "Pack{";
        v290 = (this + 8);
        v291 = 5;
        goto LABEL_1211;
      case 0xEE:
      case 0xEF:
        if (v10 == 238)
        {
          v287 = "@direct";
        }

        else
        {
          v287 = "@indirect";
        }

        if (v10 == 238)
        {
          v288 = 7;
        }

        else
        {
          v288 = 9;
        }

        std::string::append((this + 8), v287, v288);
        v289 = " Pack{";
        v290 = (this + 8);
        v291 = 6;
LABEL_1211:
        std::string::append(v290, v289, v291);
        swift::Demangle::__runtime::NodePrinter::printChildren(this, a2, v6, ", ");
        v272 = "}";
        goto LABEL_1797;
      case 0xF0:
        v38 = "repeat ";
        goto LABEL_183;
      case 0xF1:
        v38 = "each ";
        v39 = (this + 8);
        v40 = 5;
        goto LABEL_373;
      case 0xF2:
        printer_unreachable("should be handled in Node::Kind::PackElement");
      case 0xF4:
        v370 = "type symbolic reference 0x";
        v371 = (this + 8);
        v372 = 26;
        goto LABEL_1332;
      case 0xF7:
        v103 = *(a2 + 18);
        v104 = v103 - 1;
        v105 = a2;
        if ((v103 - 1) >= 2)
        {
          v105 = *a2;
        }

        if (*(*v105 + 16) != 303)
        {
          if (v104 >= 2)
          {
LABEL_374:
            if (v103 != 5 || !*(a2 + 2))
            {
              goto LABEL_615;
            }

            a2 = *a2;
          }

LABEL_377:
          v9 = *a2;
          v6 = (v6 + 1);
          goto LABEL_7;
        }

        v514 = a2;
        if (v104 < 2)
        {
          goto LABEL_1445;
        }

        if (v103 == 5)
        {
          if (!*(a2 + 2))
          {
            v276 = 0;
            goto LABEL_1863;
          }

          v514 = *a2;
LABEL_1445:
          v276 = *v514;
        }

        else
        {
          v276 = 0;
        }

        if (v103 == 2)
        {
LABEL_1751:
          v589 = *(a2 + 1);
          goto LABEL_1864;
        }

        if (v103 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
          goto LABEL_1751;
        }

LABEL_1863:
        v589 = 0;
LABEL_1864:
        v620 = *(v589 + 18);
        if ((v620 - 1) >= 2)
        {
          if (v620 != 5 || !*(v589 + 2))
          {
            v277 = 0;
LABEL_1870:
            v275 = this;
LABEL_833:
            swift::Demangle::__runtime::NodePrinter::printFunctionType(v275, v276, v277, v6);
            goto LABEL_828;
          }

          v589 = *v589;
        }

        v277 = *v589;
        goto LABEL_1870;
      case 0xF8:
        v38 = "type metadata for ";
        v39 = (this + 8);
        v40 = 18;
        goto LABEL_373;
      case 0xF9:
        v38 = "type metadata accessor for ";
        goto LABEL_286;
      case 0xFA:
        v38 = "type metadata completion function for ";
        goto LABEL_264;
      case 0xFB:
        v38 = "type metadata instantiation cache for ";
LABEL_264:
        v39 = (this + 8);
        v40 = 38;
        goto LABEL_373;
      case 0xFC:
        v38 = "type metadata instantiation function for ";
LABEL_319:
        v39 = (this + 8);
        v40 = 41;
        goto LABEL_373;
      case 0xFD:
        v38 = "type metadata singleton initialization cache for ";
        v39 = (this + 8);
        v40 = 49;
        goto LABEL_373;
      case 0xFE:
        v38 = "demangling cache variable for type metadata for ";
        v39 = (this + 8);
        v40 = 48;
        goto LABEL_373;
      case 0xFF:
        v38 = "mangled name ref for type metadata for ";
LABEL_354:
        v39 = (this + 8);
        v40 = 39;
        goto LABEL_373;
      case 0x100:
        v38 = "lazy cache variable for type metadata for ";
        goto LABEL_237;
      case 0x102:
        v272 = "unknown index";
        v273 = (this + 8);
        v274 = 13;
        goto LABEL_827;
      case 0x103:
        v89 = "weak";
        v90 = (this + 8);
        v91 = 4;
        goto LABEL_266;
      case 0x104:
        v89 = "unowned";
        v90 = (this + 8);
        v91 = 7;
        goto LABEL_266;
      case 0x105:
        v89 = "unowned(unsafe)";
        v90 = (this + 8);
        v91 = 15;
LABEL_266:
        std::string::append(v90, v89, v91);
        v38 = " ";
        v39 = (this + 8);
        v40 = 1;
        goto LABEL_373;
      case 0x106:
        v365 = *(a2 + 18);
        if ((v365 - 1) < 2)
        {
          goto LABEL_1016;
        }

        if (v365 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1016:
          v366 = *a2;
        }

        else
        {
          v366 = 0;
        }

        v552 = "unsafeAddressor";
LABEL_1632:
        result = swift::Demangle::__runtime::NodePrinter::printAbstractStorage(this, v366, v6, a4 & 1, v552, 0xFuLL);
        goto LABEL_829;
      case 0x107:
        v355 = *(a2 + 18);
        if ((v355 - 1) < 2)
        {
          goto LABEL_991;
        }

        if (v355 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_991:
          v356 = *a2;
        }

        else
        {
          v356 = 0;
        }

        v551 = "unsafeMutableAddressor";
LABEL_1641:
        result = swift::Demangle::__runtime::NodePrinter::printAbstractStorage(this, v356, v6, a4 & 1, v551, 0x16uLL);
        goto LABEL_829;
      case 0x108:
        v54 = a2;
        if (*(a2 + 18) - 1 >= 2)
        {
          v54 = *a2;
        }

        v55 = **v54;
        if (v55 >= 0x18)
        {
          printer_unreachable("bad value witness kind");
        }

        std::string::append((this + 8), off_DC140[v55 & 0x1F], qword_DA950[v55 & 0x1F]);
        if (*(this + 44) == 1)
        {
          v56 = " for ";
          v57 = (this + 8);
          v58 = 5;
        }

        else
        {
          v56 = " value witness for ";
          v57 = (this + 8);
          v58 = 19;
        }

        std::string::append(v57, v56, v58);
        v183 = *(a2 + 18);
        if (v183 == 2)
        {
          goto LABEL_493;
        }

        if (v183 == 5)
        {
          goto LABEL_491;
        }

        goto LABEL_494;
      case 0x109:
        v32 = "value witness table for ";
        v33 = (this + 8);
        v34 = 24;
        goto LABEL_313;
      case 0x10A:
        LODWORD(v635) = -1;
        v278 = a4 & 1;
        v279 = this;
        v280 = a2;
        v281 = v6;
        v282 = 1;
LABEL_1540:
        result = swift::Demangle::__runtime::NodePrinter::printEntity(v279, v280, v281, v278, v282, 1, &unk_D3717, 0, v635, &unk_D3717, 0);
        goto LABEL_829;
      case 0x10B:
        std::string::append((this + 8), "vtable thunk for ", 0x11uLL);
        v51 = *(a2 + 18);
        v52 = a2;
        if (v51 == 2)
        {
          goto LABEL_94;
        }

        if (v51 == 5 && *(a2 + 2) >= 2u)
        {
          v52 = *a2;
LABEL_94:
          v53 = *(v52 + 1);
        }

        else
        {
          v53 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v53, v6, 0);
        v158 = " dispatching to ";
LABEL_420:
        v159 = (this + 8);
        v160 = 16;
LABEL_483:
        std::string::append(v159, v158, v160);
        v182 = *(a2 + 18);
        if ((v182 - 1) < 2)
        {
          goto LABEL_487;
        }

        if (v182 != 5 || !*(a2 + 2))
        {
          goto LABEL_802;
        }

        a2 = *a2;
LABEL_487:
        v9 = *a2;
        goto LABEL_7;
      case 0x10C:
        v272 = "override ";
        goto LABEL_1834;
      case 0x10D:
        v439 = *(a2 + 18);
        if ((v439 - 1) < 2)
        {
          goto LABEL_1217;
        }

        if (v439 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1217:
          v354 = *a2;
        }

        else
        {
          v354 = 0;
        }

        v550 = "willset";
LABEL_1629:
        result = swift::Demangle::__runtime::NodePrinter::printAbstractStorage(this, v354, v6, a4 & 1, v550, 7uLL);
        goto LABEL_829;
      case 0x10E:
        v32 = "reflection metadata builtin descriptor ";
        v33 = (this + 8);
        v34 = 39;
        goto LABEL_313;
      case 0x10F:
        v32 = "reflection metadata field descriptor ";
LABEL_312:
        v33 = (this + 8);
        v34 = 37;
        goto LABEL_313;
      case 0x110:
        v32 = "reflection metadata associated type descriptor ";
        v33 = (this + 8);
        v34 = 47;
        goto LABEL_313;
      case 0x111:
        v32 = "reflection metadata superclass descriptor ";
        goto LABEL_219;
      case 0x113:
        v15 = "curry thunk of ";
        v16 = (this + 8);
        v17 = 15;
        goto LABEL_336;
      case 0x114:
        v15 = "identity thunk of ";
        goto LABEL_257;
      case 0x115:
        v15 = "dispatch thunk of ";
        goto LABEL_257;
      case 0x116:
        v15 = "method descriptor for ";
        v16 = (this + 8);
        v17 = 22;
        goto LABEL_336;
      case 0x117:
        v38 = "protocol requirements base descriptor for ";
LABEL_237:
        v39 = (this + 8);
        v40 = 42;
        goto LABEL_373;
      case 0x118:
        std::string::append((this + 8), "associated conformance descriptor for ", 0x26uLL);
        v101 = *(a2 + 18);
        v102 = a2;
        if ((v101 - 1) < 2)
        {
          goto LABEL_262;
        }

        if (v101 != 5 || !*(a2 + 2))
        {
          goto LABEL_406;
        }

        goto LABEL_261;
      case 0x119:
        std::string::append((this + 8), "default associated conformance accessor for ", 0x2CuLL);
        v106 = *(a2 + 18);
        v102 = a2;
        if ((v106 - 1) < 2)
        {
          goto LABEL_262;
        }

        if (v106 == 5 && *(a2 + 2))
        {
LABEL_261:
          v102 = *a2;
LABEL_262:
          v107 = *v102;
        }

        else
        {
LABEL_406:
          v107 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v107, v6, 0);
        std::string::append((this + 8), ".", 1uLL);
        v152 = *(a2 + 18);
        v153 = a2;
        if (v152 == 2)
        {
          goto LABEL_411;
        }

        if (v152 == 5 && *(a2 + 2) >= 2u)
        {
          v153 = *a2;
LABEL_411:
          v154 = *(v153 + 1);
        }

        else
        {
          v154 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v154, v6, 0);
        v155 = ": ";
        v156 = (this + 8);
        v157 = 2;
LABEL_521:
        std::string::append(v156, v155, v157);
        if (*(a2 + 18) != 5 || *(a2 + 2) < 3u)
        {
          goto LABEL_802;
        }

LABEL_824:
        v9 = *(*a2 + 16);
        goto LABEL_7;
      case 0x11A:
        std::string::append((this + 8), "base conformance descriptor for ", 0x20uLL);
        v86 = *(a2 + 18);
        v87 = a2;
        if ((v86 - 1) < 2)
        {
          goto LABEL_195;
        }

        if (v86 == 5 && *(a2 + 2))
        {
          v87 = *a2;
LABEL_195:
          v88 = *v87;
        }

        else
        {
          v88 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v88, v6, 0);
        v131 = ": ";
        v194 = (this + 8);
        v195 = 2;
LABEL_534:
        std::string::append(v194, v131, v195);
        goto LABEL_535;
      case 0x11B:
        v38 = "associated type descriptor for ";
LABEL_364:
        v39 = (this + 8);
        v40 = 31;
        goto LABEL_373;
      case 0x11C:
        v272 = " async";
LABEL_1374:
        v273 = (this + 8);
        v274 = 6;
        goto LABEL_827;
      case 0x11D:
        v272 = " throws";
LABEL_1431:
        v273 = (this + 8);
        v274 = 7;
        goto LABEL_827;
      case 0x11E:
        std::string::append((this + 8), " throws(", 8uLL);
        v453 = *(a2 + 18);
        if (v453 == 1)
        {
          goto LABEL_1253;
        }

        if (v453 != 5 || *(a2 + 2) != 1)
        {
          goto LABEL_1549;
        }

        a2 = *a2;
LABEL_1253:
        v454 = *a2;
        goto LABEL_1254;
      case 0x11F:
        v272 = " empty-list ";
        goto LABEL_1297;
      case 0x120:
        v272 = " first-element-marker ";
        goto LABEL_1027;
      case 0x121:
        v272 = " variadic-marker ";
        goto LABEL_1490;
      case 0x122:
        std::string::append((this + 8), "outlined bridged method (", 0x19uLL);
        std::string::append((this + 8), *a2, *(a2 + 1));
        v272 = ") of ";
        goto LABEL_1275;
      case 0x123:
        std::string::append((this + 8), "outlined copy of ", 0x11uLL);
        v94 = *(a2 + 18);
        v69 = a2;
        if ((v94 - 1) < 2)
        {
          goto LABEL_214;
        }

        if (v94 == 5 && *(a2 + 2))
        {
          goto LABEL_213;
        }

        goto LABEL_401;
      case 0x124:
        std::string::append((this + 8), "outlined consume of ", 0x14uLL);
        v68 = *(a2 + 18);
        v69 = a2;
        if ((v68 - 1) < 2)
        {
          goto LABEL_214;
        }

        if (v68 == 5 && *(a2 + 2))
        {
LABEL_213:
          v69 = *a2;
LABEL_214:
          v95 = *v69;
        }

        else
        {
LABEL_401:
          v95 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v95, v6, 0);
        v151 = *(a2 + 18);
        if (v151 == 2)
        {
          goto LABEL_539;
        }

        if (v151 != 5 || *(a2 + 2) < 2u)
        {
          goto LABEL_828;
        }

        goto LABEL_538;
      case 0x125:
        v15 = "outlined retain of ";
        v16 = (this + 8);
        v17 = 19;
        goto LABEL_336;
      case 0x126:
        v15 = "outlined release of ";
        goto LABEL_131;
      case 0x127:
      case 0x16A:
        v15 = "outlined init with take of ";
        goto LABEL_169;
      case 0x128:
      case 0x16B:
        v15 = "outlined init with copy of ";
        goto LABEL_169;
      case 0x129:
      case 0x16C:
        v15 = "outlined assign with take of ";
        goto LABEL_18;
      case 0x12A:
      case 0x16D:
        v15 = "outlined assign with copy of ";
LABEL_18:
        v16 = (this + 8);
        v17 = 29;
        goto LABEL_336;
      case 0x12B:
      case 0x16E:
        v15 = "outlined destroy of ";
LABEL_131:
        v16 = (this + 8);
        v17 = 20;
        goto LABEL_336;
      case 0x12C:
        v446 = "outlined variable #";
        v447 = (this + 8);
        v448 = 19;
        goto LABEL_1261;
      case 0x12D:
        v446 = "outlined read-only object #";
        v447 = (this + 8);
        v448 = 27;
LABEL_1261:
        std::string::append(v447, v446, v448);
        swift::Demangle::__runtime::DemanglerPrinter::operator<<((this + 8), *a2);
        v272 = " of ";
        goto LABEL_1262;
      case 0x12E:
        v459 = *(a2 + 18);
        v460 = a2;
        if ((v459 - 1) < 2)
        {
          goto LABEL_1719;
        }

        if (v459 == 5)
        {
          v460 = *a2;
        }

        else
        {
          v460 = 0;
LABEL_1719:
          if (v459 != 5)
          {
            v581 = (a2 + 8);
            if (v459 != 1)
            {
              v581 = 0;
            }

            if (v459 == 2)
            {
              v582 = (a2 + 16);
            }

            else
            {
              v582 = v581;
            }

LABEL_1726:
            swift::Demangle::__runtime::NodePrinter::printChildren(this, v460, v582, v6, ".");
            goto LABEL_828;
          }
        }

        v582 = (*a2 + 8 * *(a2 + 2));
        goto LABEL_1726;
      case 0x130:
        v32 = "module descriptor ";
        v33 = (this + 8);
        v34 = 18;
        goto LABEL_313;
      case 0x131:
        v32 = "extension descriptor ";
        goto LABEL_217;
      case 0x132:
        v32 = "anonymous descriptor ";
LABEL_217:
        v33 = (this + 8);
        v34 = 21;
        goto LABEL_313;
      case 0x133:
        v389 = "generic parameter reference for associated type ";
        v390 = (this + 8);
        v391 = 48;
LABEL_1513:
        std::string::append(v390, v389, v391);
LABEL_1514:
        swift::Demangle::__runtime::NodePrinter::printChildren(this, a2, v6, 0);
        goto LABEL_828;
      case 0x134:
        v461 = *(a2 + 18);
        if ((v461 - 1) < 2)
        {
          goto LABEL_1270;
        }

        if (v461 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1270:
          v462 = *a2;
        }

        else
        {
          v462 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::printWithParens(this, v462, v6);
        v272 = "?";
        goto LABEL_1797;
      case 0x135:
        std::string::append((this + 8), "[", 1uLL);
        v416 = *(a2 + 18);
        if ((v416 - 1) < 2)
        {
          goto LABEL_1149;
        }

        if (v416 != 5 || !*(a2 + 2))
        {
          goto LABEL_1618;
        }

        a2 = *a2;
LABEL_1149:
        v417 = *a2;
        goto LABEL_1619;
      case 0x136:
        std::string::append((this + 8), "[", 1uLL);
        v403 = *(a2 + 18);
        v404 = a2;
        if ((v403 - 1) < 2)
        {
          goto LABEL_1108;
        }

        if (v403 == 5 && *(a2 + 2))
        {
          v404 = *a2;
LABEL_1108:
          v405 = *v404;
        }

        else
        {
          v405 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v405, v6 + 1, 0);
        v561 = " : ";
        v562 = (this + 8);
        v563 = 3;
        goto LABEL_1613;
      case 0x137:
        std::string::append((this + 8), "[", 1uLL);
        v410 = *(a2 + 18);
        v411 = a2;
        if ((v410 - 1) < 2)
        {
          goto LABEL_1129;
        }

        if (v410 == 5 && *(a2 + 2))
        {
          v411 = *a2;
LABEL_1129:
          v412 = *v411;
        }

        else
        {
          v412 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v412, v6 + 1, 0);
        v561 = " of ";
        v562 = (this + 8);
        v563 = 4;
LABEL_1613:
        std::string::append(v562, v561, v563);
        v565 = *(a2 + 18);
        if (v565 == 2)
        {
          goto LABEL_1617;
        }

        if (v565 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
LABEL_1617:
          v417 = *(a2 + 1);
        }

        else
        {
LABEL_1618:
          v417 = 0;
        }

LABEL_1619:
        swift::Demangle::__runtime::NodePrinter::print(this, v417, v6 + 1, 0);
        v564 = "]";
LABEL_1660:
        v574 = (this + 8);
        v575 = 1;
        goto LABEL_1661;
      case 0x138:
        std::string::append((this + 8), "(", 1uLL);
        v408 = *(a2 + 18);
        if ((v408 - 1) < 2)
        {
          goto LABEL_1119;
        }

        if (v408 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1119:
          v409 = *a2;
        }

        else
        {
          v409 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v409, v6 + 1, 0);
        v564 = ")";
        goto LABEL_1660;
      case 0x139:
        std::string::append((this + 8), "accessor function at ", 0x15uLL);
LABEL_1059:
        swift::Demangle::__runtime::DemanglerPrinter::operator<<((this + 8), *a2);
        goto LABEL_828;
      case 0x13A:
        v92 = *(a2 + 18);
        v93 = a2;
        if ((v92 - 1) < 2)
        {
          goto LABEL_347;
        }

        if (v92 == 5 && *(a2 + 2))
        {
LABEL_346:
          v93 = *a2;
LABEL_347:
          v134 = *v93;
        }

        else
        {
LABEL_414:
          v134 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v134, v6, 0);
        std::string::push_back((this + 8), 46);
LABEL_535:
        v196 = *(a2 + 18);
        if (v196 == 2)
        {
          goto LABEL_539;
        }

        if (v196 != 5 || *(a2 + 2) < 2u)
        {
          goto LABEL_802;
        }

LABEL_538:
        a2 = *a2;
LABEL_539:
        v9 = *(a2 + 1);
        goto LABEL_7;
      case 0x13B:
        v370 = "opaque type symbolic reference 0x";
        v371 = (this + 8);
        v372 = 33;
        goto LABEL_1332;
      case 0x13C:
        v38 = "opaque type descriptor for ";
LABEL_286:
        v39 = (this + 8);
        v40 = 27;
        goto LABEL_373;
      case 0x13D:
        v32 = "opaque type descriptor runtime record for ";
LABEL_219:
        v33 = (this + 8);
        v34 = 42;
        goto LABEL_313;
      case 0x13E:
        v32 = "opaque type descriptor accessor for ";
        v33 = (this + 8);
        v34 = 36;
        goto LABEL_313;
      case 0x13F:
        v32 = "opaque type descriptor accessor impl for ";
        v33 = (this + 8);
        v34 = 41;
        goto LABEL_313;
      case 0x140:
        v32 = "opaque type descriptor accessor key for ";
        goto LABEL_190;
      case 0x141:
        v32 = "opaque type descriptor accessor var for ";
LABEL_190:
        v33 = (this + 8);
        v34 = 40;
        goto LABEL_313;
      case 0x142:
        v272 = "some";
LABEL_1262:
        v273 = (this + 8);
        v274 = 4;
        goto LABEL_827;
      case 0x143:
        std::string::append((this + 8), "<<opaque return type of ", 0x18uLL);
        swift::Demangle::__runtime::NodePrinter::printChildren(this, a2, v6, 0);
        v272 = ">>";
        goto LABEL_1783;
      case 0x144:
        v32 = "specialized generic metaclass for ";
        v33 = (this + 8);
        v34 = 34;
        goto LABEL_313;
      case 0x145:
        v32 = "canonical specialized generic type metadata accessor for ";
        v33 = (this + 8);
        v34 = 57;
        goto LABEL_313;
      case 0x146:
        v32 = "metadata instantiation cache for ";
        v33 = (this + 8);
        v34 = 33;
        goto LABEL_313;
      case 0x147:
        v32 = "noncanonical specialized generic type metadata for ";
        v33 = (this + 8);
        v34 = 51;
        goto LABEL_313;
      case 0x148:
        v32 = "cache variable for noncanonical specialized generic type metadata for ";
        v33 = (this + 8);
        v34 = 70;
        goto LABEL_313;
      case 0x149:
      case 0x14A:
        if (v10 == 330)
        {
          v18 = "one-time initialization token for ";
        }

        else
        {
          v18 = "one-time initialization function for ";
        }

        if (v10 == 330)
        {
          v19 = 34;
        }

        else
        {
          v19 = 37;
        }

        std::string::append((this + 8), v18, v19);
        v20 = *(a2 + 18);
        if (v20 == 2)
        {
          goto LABEL_493;
        }

        if (v20 != 5)
        {
          goto LABEL_494;
        }

LABEL_491:
        if (*(a2 + 2) < 2u)
        {
          goto LABEL_494;
        }

        a2 = *a2;
LABEL_493:
        v9 = *(a2 + 1);
        goto LABEL_6;
      case 0x14B:
        v70 = *(a2 + 18);
        if (v70 == 1)
        {
          goto LABEL_5;
        }

        if (v70 == 5 && *(a2 + 2) == 1)
        {
          goto LABEL_4;
        }

        std::string::push_back((this + 8), 40);
        v515 = *(a2 + 18);
        if (v515 == 5)
        {
          v590 = (a2 + 8);
          v592 = *(a2 + 2);
          if (!v592 || (v591 = v6 + 1, swift::Demangle::__runtime::NodePrinter::print(this, **a2, v591, 0), v592 == 1))
          {
LABEL_1888:
            std::string::push_back((this + 8), 41);
            goto LABEL_828;
          }
        }

        else
        {
          if (v515 != 2)
          {
            if (v515 == 1)
            {
              swift::Demangle::__runtime::NodePrinter::print(this, *a2, v6 + 1, 0);
            }

            goto LABEL_1888;
          }

          v590 = (a2 + 8);
          v591 = v6 + 1;
          swift::Demangle::__runtime::NodePrinter::print(this, *a2, v591, 0);
          v592 = 2;
        }

        v593 = 1;
        while (1)
        {
          std::string::append((this + 8), ", ", 2uLL);
          v595 = *(a2 + 18);
          if (v595 == 2)
          {
            v596 = *(a2 + 18);
          }

          else
          {
            if (v595 != 5)
            {
              goto LABEL_1756;
            }

            v596 = *v590;
          }

          if (v596 > v593)
          {
            v597 = v595 - 1;
            v598 = a2;
            if (v597 >= 2)
            {
              v598 = *a2;
            }

            v594 = *(v598 + v593);
            goto LABEL_1757;
          }

LABEL_1756:
          v594 = 0;
LABEL_1757:
          swift::Demangle::__runtime::NodePrinter::print(this, v594, v591, 0);
          if (v592 == ++v593)
          {
            goto LABEL_1888;
          }
        }

      case 0x14C:
        v32 = "flag for loading of canonical specialized generic type metadata for ";
        v33 = (this + 8);
        v34 = 68;
        goto LABEL_313;
      case 0x14D:
        v272 = "async function pointer to ";
        goto LABEL_1090;
      case 0x14E:
      case 0x152:
        v637 = v5;
        v21 = 0;
        v22 = 0;
        v23 = *(a2 + 18);
        v24 = v23;
        v25 = v23 - 1;
        v26 = -1;
        while (2)
        {
          v27 = *(a2 + 18);
          if (v23 == 1)
          {
            goto LABEL_33;
          }

          if (v23 == 5)
          {
            if (v22 == *(a2 + 2))
            {
              break;
            }

            goto LABEL_34;
          }

          v27 = 2;
          if (v23 != 2)
          {
            v27 = 0;
          }

LABEL_33:
          if (v22 != v27)
          {
LABEL_34:
            v28 = a2;
            if ((v23 - 1) >= 2)
            {
              v28 = *a2;
            }

            if (*(*(v28 + v22) + 16) != 335)
            {
              ++v22;
              ++v26;
              ++v21;
              continue;
            }
          }

          break;
        }

        v29 = *(a2 + 18);
        switch(v23)
        {
          case 1:
            break;
          case 5:
            v29 = *(a2 + 2);
            break;
          case 2:
            v29 = 2;
            break;
          default:
            goto LABEL_426;
        }

        if (v29 > v22)
        {
          v161 = a2;
          if (v25 >= 2)
          {
            v161 = *a2;
          }

          v162 = *(v161 + v22);
LABEL_427:
          if (v23 != 1)
          {
            if (v23 == 5)
            {
              v24 = *(a2 + 2);
            }

            else
            {
              if (v23 != 2)
              {
                goto LABEL_436;
              }

              v24 = 2;
            }
          }

          v163 = (v22 + 1);
          if (v24 > v163)
          {
            v164 = a2;
            if (v25 >= 2)
            {
              v164 = *a2;
            }

            v165 = *(v164 + v163);
LABEL_437:
            if (v23 != 1)
            {
              if (v23 == 5)
              {
                v23 = *(a2 + 2);
              }

              else
              {
                if (v23 != 2)
                {
                  goto LABEL_446;
                }

                v23 = 2;
              }
            }

            v166 = (v22 + 2);
            if (v23 > v166)
            {
              v167 = a2;
              if (v25 >= 2)
              {
                v167 = *a2;
              }

              v168 = *(v167 + v166);
              goto LABEL_447;
            }

LABEL_446:
            v168 = 0;
LABEL_447:
            if (v10 == 338)
            {
              std::string::append((this + 8), "vtable thunk for ", 0x11uLL);
            }

            v6 = (v6 + 1);
            swift::Demangle::__runtime::NodePrinter::print(this, v162, v6, 0);
            std::string::append((this + 8), " of ", 4uLL);
            if (!v22)
            {
              v9 = 0;
              v5 = v637;
              goto LABEL_731;
            }

            v636 = v168;
            v169 = v165;
            v170 = 0;
            v171 = (v22 - 1);
            while (1)
            {
              v173 = *(a2 + 18);
              if (v26 == v170)
              {
                if ((v173 - 1) >= 2)
                {
                  v174 = 0;
                  v175 = *a2;
                }

                else
                {
                  v174 = 1;
                  v175 = a2;
                }

                if (*(*(v175 + v171) + 16) == 44)
                {
                  if (v173 == 1)
                  {
                    v5 = v637;
                    v165 = v169;
                  }

                  else
                  {
                    v5 = v637;
                    v165 = v169;
                    if (v173 != 5)
                    {
                      v168 = v636;
                      if (v173 == 2)
                      {
                        v173 = 2;
                        goto LABEL_726;
                      }

                      goto LABEL_730;
                    }

                    v173 = *(a2 + 2);
                  }

                  v168 = v636;
LABEL_726:
                  if (v173 <= v171)
                  {
LABEL_730:
                    v9 = 0;
                  }

                  else
                  {
                    if ((v174 & 1) == 0)
                    {
                      a2 = *a2;
                    }

                    v9 = *(a2 + v171);
                  }

LABEL_731:
                  if ((*(this + 43) & 1) == 0)
                  {
                    std::string::append((this + 8), " with respect to parameters ", 0x1CuLL);
                    swift::Demangle::__runtime::NodePrinter::print(this, v165, v6, 0);
                    std::string::append((this + 8), " and results ", 0xDuLL);
                    swift::Demangle::__runtime::NodePrinter::print(this, v168, v6, 0);
                    if (v9)
                    {
                      if (*(this + 39) == 1)
                      {
LABEL_734:
                        std::string::append((this + 8), " with ", 6uLL);
                        goto LABEL_7;
                      }
                    }
                  }

                  goto LABEL_828;
                }
              }

              v176 = v173 - 1;
              if (v173 == 1)
              {
                goto LABEL_462;
              }

              if (v173 != 5)
              {
                break;
              }

              if (*(a2 + 2) > v170)
              {
LABEL_465:
                v177 = a2;
                if (v176 >= 2)
                {
                  v177 = *a2;
                }

                v172 = *(v177 + v170);
                goto LABEL_452;
              }

LABEL_451:
              v172 = 0;
LABEL_452:
              swift::Demangle::__runtime::NodePrinter::print(this, v172, v6, 0);
              if (v21 == ++v170)
              {
                v9 = 0;
                v5 = v637;
                v165 = v169;
                v168 = v636;
                goto LABEL_731;
              }
            }

            if (v173 != 2)
            {
              goto LABEL_451;
            }

            v173 = 2;
LABEL_462:
            if (v173 > v170)
            {
              goto LABEL_465;
            }

            goto LABEL_451;
          }

LABEL_436:
          v165 = 0;
          goto LABEL_437;
        }

LABEL_426:
        v162 = 0;
        goto LABEL_427;
      case 0x14F:
        result = 0;
        v397 = (((*a2 - 100) >> 1) | ((*a2 - 100) << 7));
        if (v397 > 5)
        {
          if (v397 == 6)
          {
            v272 = "pullback";
            goto LABEL_1793;
          }

          if (v397 != 7)
          {
            goto LABEL_829;
          }

          v272 = "reverse-mode derivative";
        }

        else
        {
          if (!(((*a2 - 100) >> 1) | ((*a2 - 100) << 7)))
          {
            v272 = "differential";
LABEL_1297:
            v273 = (this + 8);
            v274 = 12;
            goto LABEL_827;
          }

          if (v397 != 1)
          {
            goto LABEL_829;
          }

          v272 = "forward-mode derivative";
        }

        goto LABEL_1531;
      case 0x150:
        std::string::append((this + 8), "autodiff self-reordering reabstraction thunk ", 0x2DuLL);
        if (*(a2 + 18) - 1 >= 2)
        {
          a2 = *a2;
        }

        v9 = *a2;
        if (*(this + 43) == 1)
        {
          std::string::append((this + 8), "for ", 4uLL);
          goto LABEL_6;
        }

        v179 = *(a2 + 1);
        v178 = *(a2 + 2);
        v180 = v178[8];
        if (v180 == 44)
        {
          v181 = 24;
        }

        else
        {
          v181 = 16;
        }

        std::string::append((this + 8), "for ", 4uLL);
        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, *(a2 + v181), v6, 0);
        if (v178 && v180 == 44)
        {
          swift::Demangle::__runtime::NodePrinter::print(this, v178, v6, 0);
          std::string::push_back((this + 8), 32);
        }

        std::string::append((this + 8), " from ", 6uLL);
        swift::Demangle::__runtime::NodePrinter::print(this, v9, v6, 0);
        std::string::append((this + 8), " to ", 4uLL);
        v9 = v179;
        goto LABEL_7;
      case 0x151:
        std::string::append((this + 8), "autodiff subset parameters thunk for ", 0x25uLL);
        v71 = *(a2 + 18);
        switch(v71)
        {
          case 1:
            v74 = 0;
            v72 = -1;
            v73 = *(a2 + 18);
            goto LABEL_606;
          case 5:
            v73 = *(a2 + 2);
            if (!v73)
            {
              v221 = 0;
              v73 = 0;
              v213 = 0;
              v222 = -3;
              v223 = -4;
LABEL_753:
              v224 = *(a2 + 2);
              goto LABEL_754;
            }

            v72 = v73 - 2;
            v74 = v73 - 1;
            v212 = *a2;
            goto LABEL_607;
          case 2:
            v72 = 0;
            v73 = 2;
            v74 = 1;
LABEL_606:
            v212 = a2;
LABEL_607:
            v213 = *(v212 + v74);
            goto LABEL_609;
        }

        v73 = 0;
        v213 = 0;
        v72 = -2;
LABEL_609:
        switch(v71)
        {
          case 1:
            v214 = *(a2 + 18);
            break;
          case 2:
            v214 = 2;
            break;
          case 5:
            v214 = *(a2 + 2);
            break;
          default:
            goto LABEL_651;
        }

        if (v214 <= v72)
        {
LABEL_651:
          v221 = 0;
          goto LABEL_652;
        }

        v220 = a2;
        if ((v71 - 1) >= 2)
        {
          v220 = *a2;
        }

        v221 = *(v220 + v72);
LABEL_652:
        v222 = v73 - 3;
        v223 = v73 - 4;
        if (v71 == 1)
        {
          v224 = *(a2 + 18);
          goto LABEL_754;
        }

        if (v71 == 5)
        {
          goto LABEL_753;
        }

        if (v71 != 2)
        {
          goto LABEL_758;
        }

        v224 = 2;
LABEL_754:
        if (v224 <= v222)
        {
LABEL_758:
          v252 = 0;
          goto LABEL_759;
        }

        v251 = a2;
        if ((v71 - 1) >= 2)
        {
          v251 = *a2;
        }

        v252 = *(v251 + v222);
LABEL_759:
        v253 = v71 - 1;
        switch(v71)
        {
          case 1:
            break;
          case 5:
            v71 = *(a2 + 2);
            break;
          case 2:
            v71 = 2;
            break;
          default:
            goto LABEL_768;
        }

        if (v71 <= v223)
        {
LABEL_768:
          v255 = 0;
          goto LABEL_769;
        }

        v254 = a2;
        if (v253 >= 2)
        {
          v254 = *a2;
        }

        v255 = *(v254 + v223);
LABEL_769:
        v256 = v73 - 5;
        v6 = (v6 + 1);
        swift::Demangle::__runtime::NodePrinter::print(this, v255, v6, 0);
        std::string::append((this + 8), " from ", 6uLL);
        if (v256)
        {
          v257 = v5;
          v258 = 0;
          v259 = 1;
          while (1)
          {
            v261 = *(a2 + 18);
            v262 = v261 - 1;
            if (v261 == 1)
            {
              goto LABEL_777;
            }

            if (v261 != 5)
            {
              break;
            }

            if (*(a2 + 2) > v258)
            {
LABEL_780:
              v263 = a2;
              if (v262 >= 2)
              {
                v263 = *a2;
              }

              v260 = *(v263 + v258);
              goto LABEL_772;
            }

LABEL_771:
            v260 = 0;
LABEL_772:
            swift::Demangle::__runtime::NodePrinter::print(this, v260, v6, 0);
            v258 = v259++;
            if (v256 <= v258)
            {
              goto LABEL_790;
            }
          }

          if (v261 != 2)
          {
            goto LABEL_771;
          }

          v261 = 2;
LABEL_777:
          if (v261 > v258)
          {
            goto LABEL_780;
          }

          goto LABEL_771;
        }

        v264 = *(a2 + 18);
        v265 = a2;
        if ((v264 - 1) < 2)
        {
          goto LABEL_787;
        }

        if (v264 == 5 && *(a2 + 2))
        {
          v265 = *a2;
LABEL_787:
          v257 = v5;
          v266 = *v265;
        }

        else
        {
          v257 = v5;
          v266 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v266, v6, 0);
LABEL_790:
        if (*(this + 43))
        {
          goto LABEL_828;
        }

        std::string::append((this + 8), " with respect to parameters ", 0x1CuLL);
        swift::Demangle::__runtime::NodePrinter::print(this, v252, v6, 0);
        std::string::append((this + 8), " and results ", 0xDuLL);
        swift::Demangle::__runtime::NodePrinter::print(this, v221, v6, 0);
        std::string::append((this + 8), " to parameters ", 0xFuLL);
        swift::Demangle::__runtime::NodePrinter::print(this, v213, v6, 0);
        if (!v256)
        {
          goto LABEL_828;
        }

        std::string::append((this + 8), " of type ", 9uLL);
        v267 = *(a2 + 18);
        v268 = v267 - 1;
        if (v267 == 1)
        {
          v5 = v257;
        }

        else
        {
          v5 = v257;
          if (v267 == 5)
          {
            v267 = *(a2 + 2);
          }

          else
          {
            if (v267 != 2)
            {
              goto LABEL_802;
            }

            v267 = 2;
          }
        }

        if (v267 <= v256)
        {
          goto LABEL_802;
        }

        if (v268 >= 2)
        {
          a2 = *a2;
        }

        v9 = *(a2 + v256);
LABEL_7:
        a4 = 0;
        v7 = 1;
        a2 = v9;
        if (v6 > 0x300)
        {
          goto LABEL_825;
        }

        continue;
      case 0x153:
        v83 = *(a2 + 2);
        if (v83)
        {
          v84 = -4;
          if (*(*(*a2 + 8 * v83 - 8) + 16) != 44)
          {
            v84 = -3;
          }

          v85 = v84 + v83;
        }

        else
        {
          v85 = -3;
        }

        v184 = **(*a2 + 8 * v85) - 100;
        v185 = ((v184 >> 1) | (v184 << 7));
        if (v185 > 3)
        {
          if (v185 != 4)
          {
            if (v185 != 7)
            {
              goto LABEL_662;
            }

            v186 = "reverse-mode";
            goto LABEL_507;
          }

          v186 = "linear";
        }

        else
        {
          if (v185)
          {
            if (v185 != 1)
            {
              goto LABEL_662;
            }

            v186 = "forward-mode";
LABEL_507:
            v187 = (this + 8);
            v188 = 12;
            goto LABEL_661;
          }

          v186 = "normal";
        }

        v187 = (this + 8);
        v188 = 6;
LABEL_661:
        std::string::append(v187, v186, v188);
LABEL_662:
        std::string::append((this + 8), " differentiability witness for ", 0x1FuLL);
        v225 = *(a2 + 18);
        switch(v225)
        {
          case 1:
            goto LABEL_667;
          case 5:
            v225 = *(a2 + 2);
            if (v225)
            {
              goto LABEL_667;
            }

            break;
          case 2:
            v225 = 2;
LABEL_667:
            v226 = 0;
            while (1)
            {
              v228 = *(a2 + 18);
              if ((v228 - 1) >= 2)
              {
                v229 = 0;
                v230 = *a2;
              }

              else
              {
                v229 = 1;
                v230 = a2;
              }

              if (*(*(v230 + v226) + 16) == 104)
              {
                goto LABEL_686;
              }

              if (v228 == 1)
              {
                goto LABEL_678;
              }

              if (v228 != 5)
              {
                break;
              }

              if (*(a2 + 2) > v226)
              {
LABEL_681:
                v231 = a2;
                if ((v229 & 1) == 0)
                {
                  v231 = *a2;
                }

                v227 = *(v231 + v226);
                goto LABEL_669;
              }

LABEL_668:
              v227 = 0;
LABEL_669:
              swift::Demangle::__runtime::NodePrinter::print(this, v227, v6 + 1, 0);
              if (v225 == ++v226)
              {
                LODWORD(v226) = v225;
                goto LABEL_686;
              }
            }

            if (v228 != 2)
            {
              goto LABEL_668;
            }

            v228 = 2;
LABEL_678:
            if (v228 > v226)
            {
              goto LABEL_681;
            }

            goto LABEL_668;
        }

        LODWORD(v226) = 0;
LABEL_686:
        std::string::append((this + 8), " with respect to parameters ", 0x1CuLL);
        v232 = *(a2 + 18);
        v233 = v232 - 1;
        switch(v232)
        {
          case 1:
            break;
          case 5:
            v232 = *(a2 + 2);
            break;
          case 2:
            v232 = 2;
            break;
          default:
            goto LABEL_695;
        }

        v234 = (v226 + 1);
        if (v232 > v234)
        {
          v235 = a2;
          if (v233 >= 2)
          {
            v235 = *a2;
          }

          v236 = *(v235 + v234);
LABEL_696:
          v6 = (v6 + 1);
          swift::Demangle::__runtime::NodePrinter::print(this, v236, v6, 0);
          std::string::append((this + 8), " and results ", 0xDuLL);
          v237 = *(a2 + 18);
          v238 = v237 - 1;
          if (v237 != 1)
          {
            if (v237 == 5)
            {
              v237 = *(a2 + 2);
            }

            else
            {
              if (v237 != 2)
              {
                goto LABEL_705;
              }

              v237 = 2;
            }
          }

          v239 = (v226 + 2);
          if (v237 > v239)
          {
            v240 = a2;
            if (v238 >= 2)
            {
              v240 = *a2;
            }

            v241 = *(v240 + v239);
            goto LABEL_706;
          }

LABEL_705:
          v241 = 0;
LABEL_706:
          swift::Demangle::__runtime::NodePrinter::print(this, v241, v6, 0);
          v242 = *(a2 + 18);
          switch(v242)
          {
            case 1:
              v243 = *(a2 + 18);
              break;
            case 5:
              v243 = *(a2 + 2);
              break;
            case 2:
              v243 = 2;
              break;
            default:
              goto LABEL_828;
          }

          v244 = (v226 + 3);
          if (v243 > v244)
          {
            v245 = v242 - 1;
            if (v242 != 1)
            {
              if (v242 == 5)
              {
                v242 = *(a2 + 2);
              }

              else
              {
                v242 = 2;
              }
            }

            if (v242 <= v244)
            {
              v9 = 0;
            }

            else
            {
              if (v245 >= 2)
              {
                a2 = *a2;
              }

              v9 = *(a2 + v244);
            }

            goto LABEL_734;
          }

LABEL_828:
          result = 0;
          goto LABEL_829;
        }

LABEL_695:
        v236 = 0;
        goto LABEL_696;
      case 0x154:
        v38 = "@noDerivative ";
LABEL_179:
        v39 = (this + 8);
        v40 = 14;
        goto LABEL_373;
      case 0x155:
        std::string::push_back((this + 8), 123);
        v393 = *(a2 + 2);
        if (*(a2 + 2))
        {
          v394 = 0;
          v395 = 0;
          v396 = *a2;
          do
          {
            if (*(v396 + v394) == 83)
            {
              if (v395)
              {
                std::string::append((this + 8), ", ", 2uLL);
              }

              swift::Demangle::__runtime::DemanglerPrinter::operator<<((this + 8), v394);
              v395 = 1;
            }

            ++v394;
          }

          while (v393 != v394);
        }

        std::string::push_back((this + 8), 125);
        goto LABEL_828;
      case 0x156:
        if (*(this + 52) != 1)
        {
          goto LABEL_828;
        }

        std::string::append((this + 8), "(", 1uLL);
        v380 = *(a2 + 18);
        if ((v380 - 1) < 2)
        {
          goto LABEL_1047;
        }

        if (v380 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1047:
          v381 = *a2;
        }

        else
        {
          v381 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v381, v6 + 1, 0);
        std::string::append((this + 8), ")", 1uLL);
        v564 = " await resume partial function for ";
        v574 = (this + 8);
        v575 = 35;
        goto LABEL_1661;
      case 0x157:
        if (*(this + 52) != 1)
        {
          goto LABEL_828;
        }

        std::string::append((this + 8), "(", 1uLL);
        v418 = *(a2 + 18);
        if ((v418 - 1) < 2)
        {
          goto LABEL_1155;
        }

        if (v418 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1155:
          v419 = *a2;
        }

        else
        {
          v419 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v419, v6 + 1, 0);
        std::string::append((this + 8), ")", 1uLL);
        v564 = " suspend resume partial function for ";
        v574 = (this + 8);
        v575 = 37;
        goto LABEL_1661;
      case 0x158:
        if (*(this + 43))
        {
          goto LABEL_828;
        }

        v272 = "accessible function runtime record for ";
        v273 = (this + 8);
        v274 = 39;
        goto LABEL_827;
      case 0x159:
        v38 = "_const ";
        goto LABEL_183;
      case 0x15A:
        if (*(this + 43))
        {
          goto LABEL_828;
        }

        v272 = "back deployment thunk for ";
        goto LABEL_1090;
      case 0x15B:
        v272 = "back deployment fallback for ";
        v273 = (this + 8);
        v274 = 29;
        goto LABEL_827;
      case 0x15C:
        v398 = *(this + 39);
        *(this + 39) = 1;
        v399 = *(a2 + 18);
        if (v399 == 2)
        {
          goto LABEL_1102;
        }

        if (v399 != 5)
        {
          goto LABEL_1816;
        }

        v400 = *(a2 + 2);
        if (v400 == 2)
        {
          a2 = *a2;
LABEL_1102:
          v401 = *(a2 + 1);
          std::string::append((this + 8), "existential shape for ", 0x16uLL);
          if (v401)
          {
            v402 = v6 + 1;
            swift::Demangle::__runtime::NodePrinter::print(this, v401, v402, 0);
            std::string::append((this + 8), " ", 1uLL);
            v401 = 0;
            goto LABEL_1819;
          }
        }

        else
        {
          if (v400 < 2)
          {
LABEL_1816:
            v401 = 0;
          }

          else
          {
            v401 = *(*a2 + 8);
          }

          std::string::append((this + 8), "existential shape for ", 0x16uLL);
        }

        v402 = v6 + 1;
LABEL_1819:
        std::string::append((this + 8), "any ", 4uLL);
        swift::Demangle::__runtime::NodePrinter::print(this, v401, v402, 0);
        result = 0;
        *(this + 39) = v398;
        return result;
      case 0x15D:
        v32 = "uniquable ";
        v33 = (this + 8);
        v34 = 10;
LABEL_313:
        std::string::append(v33, v32, v34);
        v126 = *(a2 + 18);
        if ((v126 - 1) < 2)
        {
          goto LABEL_317;
        }

        if (v126 != 5 || !*(a2 + 2))
        {
          goto LABEL_494;
        }

LABEL_316:
        a2 = *a2;
LABEL_317:
        v9 = *a2;
        goto LABEL_6;
      case 0x15E:
        v370 = "unique existential shape symbolic reference 0x";
        v371 = (this + 8);
        v372 = 46;
        goto LABEL_1332;
      case 0x15F:
        v370 = "non-unique existential shape symbolic reference 0x";
        v371 = (this + 8);
        v372 = 50;
        goto LABEL_1332;
      case 0x160:
        v383 = *(a2 + 18);
        v384 = a2;
        if ((v383 - 1) < 2)
        {
          goto LABEL_1056;
        }

        if (v383 == 5 && *(a2 + 2))
        {
          v384 = *a2;
LABEL_1056:
          v385 = *v384;
        }

        else
        {
          v385 = 0;
        }

        v553 = *(v385 + 16);
        std::string::append((this + 8), "symbolic existential type (", 0x1BuLL);
        if (v553 == 350)
        {
          v554 = &unk_D3717;
        }

        else
        {
          v554 = "non-";
        }

        std::string::append((this + 8), v554, 4 * (v553 != 350));
        std::string::append((this + 8), "unique) 0x", 0xAuLL);
        swift::Demangle::__runtime::DemanglerPrinter::writeHex((this + 8), *v385);
        std::string::append((this + 8), " <", 2uLL);
        v555 = *(a2 + 18);
        v556 = a2;
        if (v555 == 2)
        {
          goto LABEL_1592;
        }

        if (v555 == 5 && *(a2 + 2) >= 2u)
        {
          v556 = *a2;
LABEL_1592:
          v557 = *(v556 + 1);
        }

        else
        {
          v557 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v557, v6 + 1, 0);
        if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
        {
          std::string::append((this + 8), ", ", 2uLL);
          if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
          {
            v558 = *(*a2 + 16);
          }

          else
          {
            v558 = 0;
          }

          swift::Demangle::__runtime::NodePrinter::print(this, v558, v6 + 1, 0);
        }

        goto LABEL_1796;
      case 0x161:
        std::string::append((this + 8), "param", 5uLL);
        swift::Demangle::__runtime::DemanglerPrinter::operator<<((this + 8), *a2);
        v272 = "-removed";
        goto LABEL_1793;
      case 0x162:
        v272 = "#_hasSymbol query for ";
        goto LABEL_1027;
      case 0x165:
        v15 = "outlined enum tag store of ";
LABEL_169:
        v16 = (this + 8);
        v17 = 27;
        goto LABEL_336;
      case 0x166:
        v15 = "outlined enum project data for load of ";
        v16 = (this + 8);
        v17 = 39;
        goto LABEL_336;
      case 0x167:
        v15 = "outlined enum get tag of ";
        v16 = (this + 8);
        v17 = 25;
        goto LABEL_336;
      case 0x168:
        v15 = "async demotion of ";
LABEL_257:
        v16 = (this + 8);
        v17 = 18;
LABEL_336:
        std::string::append(v16, v15, v17);
LABEL_337:
        v132 = *(a2 + 18);
        if ((v132 - 1) < 2)
        {
          goto LABEL_5;
        }

        if (v132 == 5 && *(a2 + 2))
        {
LABEL_4:
          a2 = *a2;
LABEL_5:
          v9 = *a2;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_6;
      case 0x169:
        v370 = "objective-c protocol symbolic reference 0x";
        v371 = (this + 8);
        v372 = 42;
LABEL_1332:
        std::string::append(v371, v370, v372);
        swift::Demangle::__runtime::DemanglerPrinter::writeHex((this + 8), *a2);
        goto LABEL_828;
      case 0x16F:
        v386 = *(a2 + 18);
        v387 = a2;
        if ((v386 - 1) < 2)
        {
          goto LABEL_1065;
        }

        if (v386 == 5 && *(a2 + 2))
        {
          v387 = *a2;
LABEL_1065:
          v388 = *v387;
        }

        else
        {
          v388 = 0;
        }

        swift::Demangle::__runtime::NodePrinter::print(this, v388, v6 + 1, 0);
        std::string::append((this + 8), ": ~", 3uLL);
        v559 = a2;
        if (*(a2 + 18) == 5)
        {
          v559 = *a2;
        }

        v560 = **(v559 + 1);
        if (v560 == 1)
        {
          std::string::append((this + 8), "Swift.", 6uLL);
          v272 = "Escapable";
          goto LABEL_1834;
        }

        if (!v560)
        {
          std::string::append((this + 8), "Swift.", 6uLL);
          v272 = "Copyable";
          goto LABEL_1793;
        }

        std::string::append((this + 8), "Swift.<bit ", 0xBuLL);
        if (*(a2 + 18) == 5)
        {
          a2 = *a2;
        }

        swift::Demangle::__runtime::DemanglerPrinter::operator<<((this + 8), **(a2 + 1));
LABEL_1796:
        v272 = ">";
        goto LABEL_1797;
      case 0x171:
        swift::Demangle::__runtime::DemanglerPrinter::operator<<((this + 8), *a2);
        goto LABEL_828;
      case 0x173:
        v272 = "coro function pointer to ";
        goto LABEL_1123;
      case 0x174:
        v272 = "default override of ";
LABEL_1037:
        v273 = (this + 8);
        v274 = 20;
        goto LABEL_827;
      case 0x175:
        v38 = "@const ";
LABEL_183:
        v39 = (this + 8);
        v40 = 7;
LABEL_373:
        std::string::append(v39, v38, v40);
        v103 = *(a2 + 18);
        if ((v103 - 1) >= 2)
        {
          goto LABEL_374;
        }

        goto LABEL_377;
      default:
        printer_unreachable("bad node kind!");
    }
  }
}