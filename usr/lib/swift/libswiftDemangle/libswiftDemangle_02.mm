uint64_t swift::Demangle::nodeConsumesGenericArgs(swift::Demangle *this, swift::Demangle::Node *a2)
{
  result = 0;
  v4 = *(this + 8);
  if (v4 <= 187)
  {
    v6 = (v4 - 72) > 0x3A || ((1 << (v4 - 72)) & 0x404000000000001) == 0;
    if (v6 && v4 != 34)
    {
      return 1;
    }
  }

  else
  {
    v5 = (v4 - 229) > 0x25 || ((1 << (v4 + 27)) & 0x2000000005) == 0;
    if (v5 && (v4 - 188) >= 2)
    {
      return 1;
    }
  }

  return result;
}

unint64_t swift::Demangle::Demangler::demangleImplParamConvention(swift::Demangle::NodeFactory *a1, __int16 a2)
{
  v3 = *(a1 + 9);
  if (v3 >= *(a1 + 8))
  {
    v4 = *(a1 + 9);
LABEL_5:
    v7 = 0;
    *(a1 + 9) = v4 - 1;
  }

  else
  {
    v4 = v3 + 1;
    *(a1 + 9) = v3 + 1;
    v6 = "@in";
    switch(*(*(a1 + 7) + v3))
    {
      case 'X':
        v6 = "@in_cxx";
        break;
      case 'b':
        v6 = "@inout_aliasable";
        break;
      case 'c':
        v6 = "@in_constant";
        break;
      case 'e':
        v6 = "@deallocating";
        break;
      case 'g':
        v6 = "@guaranteed";
        break;
      case 'i':
        break;
      case 'l':
        v6 = "@inout";
        break;
      case 'm':
        v6 = "@pack_inout";
        break;
      case 'n':
        v6 = "@in_guaranteed";
        break;
      case 'p':
        v6 = "@pack_guaranteed";
        break;
      case 'v':
        v6 = "@pack_owned";
        break;
      case 'x':
        v6 = "@owned";
        break;
      case 'y':
        v6 = "@unowned";
        break;
      default:
        goto LABEL_5;
    }

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
      v12 = v11 + v10;
      *v11 = *(a1 + 3);
      v8 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 2) = v12;
      *(a1 + 3) = v11;
    }

    *(a1 + 1) = v8 + 24;
    v13 = strlen(v6);
    *(v8 + 16) = 108;
    *(v8 + 18) = 3;
    *v8 = v6;
    *(v8 + 8) = v13;
    v7 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 1) = v7;
    if (!v7 || v7 + 24 > *(a1 + 2))
    {
      v16 = 2 * *(a1 + 4);
      if (v16 <= 0x20)
      {
        v16 = 32;
      }

      *(a1 + 4) = v16;
      v17 = v16 + 8;
      v18 = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
      v19 = v18 + v17;
      *v18 = *(a1 + 3);
      v7 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 2) = v19;
      *(a1 + 3) = v18;
    }

    *(a1 + 1) = v7 + 24;
    *(v7 + 16) = a2;
    *(v7 + 18) = 0;
    swift::Demangle::Node::addChild(v7, v8, a1, v14, v15);
  }

  return v7;
}

unint64_t swift::Demangle::Demangler::demangleImplResultConvention(swift::Demangle::NodeFactory *a1, __int16 a2)
{
  v3 = *(a1 + 9);
  if (v3 >= *(a1 + 8))
  {
    v5 = *(a1 + 9);
    goto LABEL_8;
  }

  v5 = v3 + 1;
  *(a1 + 9) = v3 + 1;
  v6 = *(*(a1 + 7) + v3);
  if (v6 > 110)
  {
    switch(v6)
    {
      case 'u':
        v7 = "@unowned_inner_pointer";
        break;
      case 'r':
        v7 = "@out";
        break;
      case 'o':
        v7 = "@owned";
        break;
      default:
        goto LABEL_8;
    }
  }

  else
  {
    switch(v6)
    {
      case 'a':
        v7 = "@autoreleased";
        break;
      case 'd':
        v7 = "@unowned";
        break;
      case 'k':
        v7 = "@pack_out";
        break;
      default:
LABEL_8:
        v8 = 0;
        *(a1 + 9) = v5 - 1;
        return v8;
    }
  }

  v9 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 1) = v9;
  if (!v9 || v9 + 24 > *(a1 + 2))
  {
    v10 = 2 * *(a1 + 4);
    if (v10 <= 0x20)
    {
      v10 = 32;
    }

    *(a1 + 4) = v10;
    v11 = v10 + 8;
    v12 = malloc_type_malloc(v10 + 8, 0x2004093837F09uLL);
    v13 = v12 + v11;
    *v12 = *(a1 + 3);
    v9 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 2) = v13;
    *(a1 + 3) = v12;
  }

  *(a1 + 1) = v9 + 24;
  v14 = strlen(v7);
  *(v9 + 16) = 108;
  *(v9 + 18) = 3;
  *v9 = v7;
  *(v9 + 8) = v14;
  v8 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 1) = v8;
  if (!v8 || v8 + 24 > *(a1 + 2))
  {
    v17 = 2 * *(a1 + 4);
    if (v17 <= 0x20)
    {
      v17 = 32;
    }

    *(a1 + 4) = v17;
    v18 = v17 + 8;
    v19 = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
    v20 = v19 + v18;
    *v19 = *(a1 + 3);
    v8 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 2) = v20;
    *(a1 + 3) = v19;
  }

  *(a1 + 1) = v8 + 24;
  *(v8 + 16) = a2;
  *(v8 + 18) = 0;
  swift::Demangle::Node::addChild(v8, v9, a1, v15, v16);
  return v8;
}

unint64_t swift::Demangle::Demangler::demangleImplParameterSending(swift::Demangle::Demangler *this)
{
  v1 = *(this + 9);
  if (v1 >= *(this + 8) || *(*(this + 7) + v1) != 84)
  {
    return 0;
  }

  *(this + 9) = v1 + 1;
  v2 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v2;
  if (!v2 || v2 + 24 > *(this + 2))
  {
    v3 = 2 * *(this + 4);
    if (v3 <= 0x20)
    {
      v3 = 32;
    }

    *(this + 4) = v3;
    v4 = v3 + 8;
    v5 = this;
    v6 = malloc_type_malloc(v3 + 8, 0x2004093837F09uLL);
    this = v5;
    *v6 = *(v5 + 3);
    v2 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(v5 + 2) = v6 + v4;
    *(v5 + 3) = v6;
  }

  *(this + 1) = v2 + 24;
  *(v2 + 16) = 113;
  *(v2 + 18) = 3;
  *v2 = "sending";
  *(v2 + 8) = 7;
  return v2;
}

unint64_t swift::Demangle::Demangler::demangleImplParameterIsolated(swift::Demangle::Demangler *this)
{
  v1 = *(this + 9);
  if (v1 >= *(this + 8) || *(*(this + 7) + v1) != 73)
  {
    return 0;
  }

  *(this + 9) = v1 + 1;
  v2 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v2;
  if (!v2 || v2 + 24 > *(this + 2))
  {
    v3 = 2 * *(this + 4);
    if (v3 <= 0x20)
    {
      v3 = 32;
    }

    *(this + 4) = v3;
    v4 = v3 + 8;
    v5 = this;
    v6 = malloc_type_malloc(v3 + 8, 0x2004093837F09uLL);
    this = v5;
    *v6 = *(v5 + 3);
    v2 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(v5 + 2) = v6 + v4;
    *(v5 + 3) = v6;
  }

  *(this + 1) = v2 + 24;
  *(v2 + 16) = 114;
  *(v2 + 18) = 3;
  *v2 = "isolated";
  *(v2 + 8) = 8;
  return v2;
}

unint64_t swift::Demangle::Demangler::demangleImplParameterImplicitLeading(swift::Demangle::Demangler *this)
{
  v1 = *(this + 9);
  if (v1 >= *(this + 8) || *(*(this + 7) + v1) != 76)
  {
    return 0;
  }

  *(this + 9) = v1 + 1;
  v2 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v2;
  if (!v2 || v2 + 24 > *(this + 2))
  {
    v3 = 2 * *(this + 4);
    if (v3 <= 0x20)
    {
      v3 = 32;
    }

    *(this + 4) = v3;
    v4 = v3 + 8;
    v5 = this;
    v6 = malloc_type_malloc(v3 + 8, 0x2004093837F09uLL);
    this = v5;
    *v6 = *(v5 + 3);
    v2 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(v5 + 2) = v6 + v4;
    *(v5 + 3) = v6;
  }

  *(this + 1) = v2 + 24;
  *(v2 + 16) = 115;
  *(v2 + 18) = 3;
  *v2 = "sil_implicit_leading_param";
  *(v2 + 8) = 26;
  return v2;
}

unint64_t swift::Demangle::Demangler::demangleImplParameterResultDifferentiability(swift::Demangle::Demangler *this)
{
  v2 = *(this + 9);
  if (v2 < *(this + 8) && *(*(this + 7) + v2) == 119)
  {
    *(this + 9) = v2 + 1;
    v3 = "@noDerivative";
  }

  else
  {
    v3 = "";
  }

  v4 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v4;
  if (!v4 || v4 + 24 > *(this + 2))
  {
    v5 = 2 * *(this + 4);
    if (v5 <= 0x20)
    {
      v5 = 32;
    }

    *(this + 4) = v5;
    v6 = v5 + 8;
    v7 = malloc_type_malloc(v5 + 8, 0x2004093837F09uLL);
    v8 = v7 + v6;
    *v7 = *(this + 3);
    v4 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v8;
    *(this + 3) = v7;
  }

  *(this + 1) = v4 + 24;
  v9 = strlen(v3);
  *(v4 + 16) = 112;
  *(v4 + 18) = 3;
  *v4 = v3;
  *(v4 + 8) = v9;
  return v4;
}

swift::Demangle::Node *swift::Demangle::Demangler::demanglePrivateContextDescriptor(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 9);
  if (v5 >= *(this + 8))
  {
    return 0;
  }

  result = 0;
  *(this + 9) = v5 + 1;
  v8 = *(*(this + 7) + v5);
  if (v8 > 76)
  {
    if (v8 != 77)
    {
      if (v8 != 88)
      {
        if (v8 != 89)
        {
          return result;
        }

        v9 = *(this + 24);
        if (v9)
        {
          v10 = v9 - 1;
          v11 = *(*(this + 11) + 8 * v10);
          *(this + 24) = v10;
          if (v11)
          {
            result = swift::Demangle::Demangler::popContext(this, a2, a3, a4, a5);
            if (!result)
            {
              return result;
            }

            v14 = result;
            v15 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
            *(this + 1) = v15;
            if (!v15 || v15 + 24 > *(this + 2))
            {
              v16 = 2 * *(this + 4);
              if (v16 <= 0x20)
              {
                v16 = 32;
              }

              *(this + 4) = v16;
              v17 = v16 + 8;
              v18 = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
              v19 = v18 + v17;
              *v18 = *(this + 3);
              v15 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
              *(this + 2) = v19;
              *(this + 3) = v18;
            }

            *(this + 1) = v15 + 24;
            v20 = 306;
            goto LABEL_45;
          }
        }

        return 0;
      }

      result = swift::Demangle::Demangler::popContext(this, a2, a3, a4, a5);
      if (!result)
      {
        return result;
      }

      v21 = result;
      v22 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v22;
      if (!v22 || v22 + 24 > *(this + 2))
      {
        v31 = 2 * *(this + 4);
        if (v31 <= 0x20)
        {
          v31 = 32;
        }

        *(this + 4) = v31;
        v32 = v31 + 8;
        v33 = malloc_type_malloc(v31 + 8, 0x2004093837F09uLL);
        v34 = v33 + v32;
        *v33 = *(this + 3);
        v22 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v34;
        *(this + 3) = v33;
      }

      *(this + 1) = v22 + 24;
      v27 = 306;
      goto LABEL_54;
    }

    v28 = *(this + 24);
    if (v28)
    {
      v29 = v28 - 1;
      v21 = *(*(this + 11) + 8 * v29);
      v30 = *(v21 + 16);
      if (v30 == 103)
      {
        *(this + 24) = v29;
        result = swift::Demangle::Demangler::changeKind(this, v21, 163, a4, a5);
        v21 = result;
        if (!result)
        {
          return result;
        }

        goto LABEL_48;
      }

      if (v30 == 163)
      {
        *(this + 24) = v29;
LABEL_48:
        v22 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v22;
        if (!v22 || v22 + 24 > *(this + 2))
        {
          v43 = 2 * *(this + 4);
          if (v43 <= 0x20)
          {
            v43 = 32;
          }

          *(this + 4) = v43;
          v44 = v43 + 8;
          v45 = malloc_type_malloc(v43 + 8, 0x2004093837F09uLL);
          v46 = v45 + v44;
          *v45 = *(this + 3);
          v22 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v46;
          *(this + 3) = v45;
        }

        *(this + 1) = v22 + 24;
        v27 = 304;
LABEL_54:
        *(v22 + 16) = v27;
        *(v22 + 18) = 0;
        swift::Demangle::Node::addChild(v22, v21, this, a4, a5);
        return v22;
      }
    }

    return 0;
  }

  if (v8 == 65)
  {
    result = swift::Demangle::Demangler::popAssocTypePath(this, a2, a3, a4, a5);
    if (!result)
    {
      return result;
    }

    v35 = *(this + 24);
    if (v35)
    {
      v36 = v35 - 1;
      v14 = *(*(this + 11) + 8 * v36);
      if (*(v14 + 8) == 243)
      {
        v11 = result;
        *(this + 24) = v36;
        v15 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v15;
        if (!v15 || v15 + 24 > *(this + 2))
        {
          v37 = 2 * *(this + 4);
          if (v37 <= 0x20)
          {
            v37 = 32;
          }

          *(this + 4) = v37;
          v38 = v37 + 8;
          v39 = malloc_type_malloc(v37 + 8, 0x2004093837F09uLL);
          v40 = v39 + v38;
          *v39 = *(this + 3);
          v15 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v40;
          *(this + 3) = v39;
        }

        *(this + 1) = v15 + 24;
        v20 = 307;
LABEL_45:
        *(v15 + 16) = v20;
        *(v15 + 18) = 0;
        swift::Demangle::Node::addChild(v15, v14, this, v12, v13);
        swift::Demangle::Node::addChild(v15, v11, this, v41, v42);
        return v15;
      }
    }

    return 0;
  }

  if (v8 == 69)
  {
    result = swift::Demangle::Demangler::popContext(this, a2, a3, a4, a5);
    if (result)
    {
      v21 = result;
      v22 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v22;
      if (!v22 || v22 + 24 > *(this + 2))
      {
        v23 = 2 * *(this + 4);
        if (v23 <= 0x20)
        {
          v23 = 32;
        }

        *(this + 4) = v23;
        v24 = v23 + 8;
        v25 = malloc_type_malloc(v23 + 8, 0x2004093837F09uLL);
        v26 = v25 + v24;
        *v25 = *(this + 3);
        v22 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v26;
        *(this + 3) = v25;
      }

      *(this + 1) = v22 + 24;
      v27 = 305;
      goto LABEL_54;
    }
  }

  return result;
}

int8x16_t *swift::Demangle::Demangler::popAssocTypePath(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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
  v6[1].i16[0] = 302;
  v6[1].i8[2] = 0;
  do
  {
    v11 = *(this + 24);
    if (v11 && (v12 = v11 - 1, *(*(*(this + 11) + 8 * v12) + 16) == 288))
    {
      v13 = 0;
      *(this + 24) = v12;
    }

    else
    {
      v13 = 1;
    }

    v14 = swift::Demangle::Demangler::popAssocTypeName(this, a2, a3, a4, a5);
    if (!v14)
    {
      return 0;
    }

    swift::Demangle::Node::addChild(v6, v14, this, v15, v16);
  }

  while ((v13 & 1) != 0);
  v17 = v6[1].u8[2];
  if (v17 == 5)
  {
    v19 = v6->u32[2];
    if (v19)
    {
      v20 = (v6->i64[0] + 8 * v19 - 8);
      if (v20 > v6->i64[0])
      {
        v21 = v6->i64[0] + 8;
        do
        {
          v22 = *(v21 - 8);
          *(v21 - 8) = *v20;
          *v20-- = v22;
          v23 = v21 >= v20;
          v21 += 8;
        }

        while (!v23);
      }
    }
  }

  else if (v17 == 2)
  {
    *v6 = vextq_s8(*v6, *v6, 8uLL);
  }

  return v6;
}

unint64_t swift::Demangle::Demangler::demangleAssociatedTypeSimple(swift::Demangle::Demangler *this, swift::Demangle::Node *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = swift::Demangle::Demangler::popAssocTypeName(this, a2, a3, a4, a5);
  v10 = v7;
  if (!a2)
  {
    v29 = *(this + 24);
    if (!v29)
    {
      return 0;
    }

    v30 = v29 - 1;
    v11 = *(*(this + 11) + 8 * v30);
    if (*(v11 + 16) != 243)
    {
      return 0;
    }

    *(this + 24) = v30;
    if (!v7)
    {
      return v10;
    }

    goto LABEL_8;
  }

  v11 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v11;
  if (!v11 || v11 + 24 > *(this + 2))
  {
    v12 = 2 * *(this + 4);
    if (v12 <= 0x20)
    {
      v12 = 32;
    }

    *(this + 4) = v12;
    v13 = v12 + 8;
    v14 = malloc_type_malloc(v12 + 8, 0x2004093837F09uLL);
    v15 = v14 + v13;
    *v14 = *(this + 3);
    v11 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v15;
    *(this + 3) = v14;
  }

  *(this + 1) = v11 + 24;
  *(v11 + 16) = 243;
  *(v11 + 18) = 0;
  swift::Demangle::Node::addChild(v11, a2, this, v8, v9);
  if (v10)
  {
LABEL_8:
    v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v16;
    if (!v16 || v16 + 24 > *(this + 2))
    {
      v17 = 2 * *(this + 4);
      if (v17 <= 0x20)
      {
        v17 = 32;
      }

      *(this + 4) = v17;
      v18 = v17 + 8;
      v19 = malloc_type_malloc(v17 + 8, 0x2004093837F09uLL);
      v20 = v19 + v18;
      *v19 = *(this + 3);
      v16 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v20;
      *(this + 3) = v19;
    }

    *(this + 1) = v16 + 24;
    *(v16 + 16) = 46;
    *(v16 + 18) = 0;
    swift::Demangle::Node::addChild(v16, v11, this, v8, v9);
    swift::Demangle::Node::addChild(v16, v10, this, v21, v22);
    v10 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v10;
    if (!v10 || v10 + 24 > *(this + 2))
    {
      v25 = 2 * *(this + 4);
      if (v25 <= 0x20)
      {
        v25 = 32;
      }

      *(this + 4) = v25;
      v26 = v25 + 8;
      v27 = malloc_type_malloc(v25 + 8, 0x2004093837F09uLL);
      v28 = v27 + v26;
      *v27 = *(this + 3);
      v10 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v28;
      *(this + 3) = v27;
    }

    *(this + 1) = v10 + 24;
    *(v10 + 16) = 243;
    *(v10 + 18) = 0;
    swift::Demangle::Node::addChild(v10, v16, this, v23, v24);
  }

  return v10;
}

unint64_t swift::Demangle::Demangler::demangleAssociatedTypeCompound(swift::Demangle::Demangler *this, swift::Demangle::Node *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 2);
  v7 = ((*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  *(this + 1) = v7;
  if (v7)
  {
    v8 = (v7 + 32) > v6;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 2 * *(this + 4);
    if (v9 <= 0x28)
    {
      v9 = 40;
    }

    *(this + 4) = v9;
    v10 = v9 + 8;
    v11 = malloc_type_malloc(v9 + 8, 0x2004093837F09uLL);
    v12 = v11 + v10;
    *v11 = *(this + 3);
    v7 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(this + 2) = v12;
    *(this + 3) = v11;
  }

  v13 = 0;
  *(this + 1) = v7 + 32;
  v14 = 4;
  do
  {
    v16 = *(this + 24);
    if (v16 && (v17 = v16 - 1, *(*(*(this + 11) + 8 * v17) + 16) == 288))
    {
      v18 = 0;
      *(this + 24) = v17;
    }

    else
    {
      v18 = 1;
    }

    v19 = swift::Demangle::Demangler::popAssocTypeName(this, a2, a3, a4, a5);
    if (!v19)
    {
      return 0;
    }

    v20 = v19;
    if (v13 >= v14)
    {
      v21 = *(this + 1);
      if (&v7[8 * v14] == v21)
      {
        v22 = *(this + 2);
        if ((v21 + 8) <= v22)
        {
          *(this + 1) = v21 + 8;
          LODWORD(v23) = 1;
LABEL_11:
          v14 += v23;
          goto LABEL_12;
        }
      }

      else
      {
        v22 = *(this + 2);
      }

      if (2 * v14 <= 4)
      {
        v23 = 4;
      }

      else
      {
        v23 = 2 * v14;
      }

      v24 = 8 * (v23 + v14);
      v25 = ((v21 + 7) & 0xFFFFFFFFFFFFFFF8);
      *(this + 1) = v25;
      if (!v25 || &v25[v24] > v22)
      {
        v26 = 2 * *(this + 4);
        if (v26 <= v24 + 8)
        {
          v26 = v24 + 8;
        }

        *(this + 4) = v26;
        v27 = v26 + 8;
        v28 = malloc_type_malloc(v26 + 8, 0x2004093837F09uLL);
        v29 = v28 + v27;
        *v28 = *(this + 3);
        v25 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
        *(this + 2) = v29;
        *(this + 3) = v28;
      }

      *(this + 1) = &v25[v24];
      if (v14)
      {
        memcpy(v25, v7, 8 * v14);
      }

      v7 = v25;
      goto LABEL_11;
    }

LABEL_12:
    v15 = v13 + 1;
    *&v7[8 * v13++] = v20;
  }

  while ((v18 & 1) != 0);
  if (a2)
  {
    v31 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v31;
    if (!v31 || v31 + 24 > *(this + 2))
    {
      v32 = 2 * *(this + 4);
      if (v32 <= 0x20)
      {
        v32 = 32;
      }

      *(this + 4) = v32;
      v33 = v32 + 8;
      v34 = malloc_type_malloc(v32 + 8, 0x2004093837F09uLL);
      v35 = v34 + v33;
      *v34 = *(this + 3);
      v31 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v35;
      *(this + 3) = v34;
    }

    *(this + 1) = v31 + 24;
    *(v31 + 16) = 243;
    *(v31 + 18) = 0;
    swift::Demangle::Node::addChild(v31, a2, this, a4, a5);
    if (!v15)
    {
      return v31;
    }

LABEL_47:
    v38 = 8 * v15;
    v39 = v7 - 8;
    while (1)
    {
      v45 = *&v39[v38];
      if (!v45)
      {
        break;
      }

      v46 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(this + 1) = v46;
      if (!v46 || v46 + 24 > *(this + 2))
      {
        v47 = 2 * *(this + 4);
        if (v47 <= 0x20)
        {
          v47 = 32;
        }

        *(this + 4) = v47;
        v48 = v47 + 8;
        v49 = malloc_type_malloc(v47 + 8, 0x2004093837F09uLL);
        v50 = v49 + v48;
        *v49 = *(this + 3);
        v46 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(this + 2) = v50;
        *(this + 3) = v49;
      }

      v30 = 0;
      *(this + 1) = v46 + 24;
      *(v46 + 16) = 46;
      *(v46 + 18) = 0;
      if (v31 && v46)
      {
        swift::Demangle::Node::addChild(v46, v31, this, a4, a5);
        swift::Demangle::Node::addChild(v46, v45, this, v51, v52);
        v30 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
        *(this + 1) = v30;
        if (!v30 || v30 + 24 > *(this + 2))
        {
          v40 = 2 * *(this + 4);
          if (v40 <= 0x20)
          {
            v40 = 32;
          }

          *(this + 4) = v40;
          v41 = v40 + 8;
          v42 = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
          *v42 = *(this + 3);
          v30 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
          *(this + 2) = v42 + v41;
          *(this + 3) = v42;
        }

        *(this + 1) = v30 + 24;
        *(v30 + 16) = 243;
        *(v30 + 18) = 0;
        swift::Demangle::Node::addChild(v30, v46, this, v43, v44);
      }

      v31 = v30;
      v38 -= 8;
      if (!v38)
      {
        return v30;
      }
    }

    return v31;
  }

  v36 = *(this + 24);
  if (v36 && (v37 = v36 - 1, v31 = *(*(this + 11) + 8 * v37), *(v31 + 16) == 243))
  {
    *(this + 24) = v37;
    if (v15)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v31 = 0;
    if (v15)
    {
      goto LABEL_47;
    }
  }

  return v31;
}

unint64_t swift::Demangle::Demangler::popAssocTypeName(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = v5 - 1;
  v7 = *(this + 11);
  v8 = *(v7 + 8 * (v5 - 1));
  v9 = v8[8];
  if (v9 == 191)
  {
LABEL_16:
    *(this + 24) = v6;
    goto LABEL_17;
  }

  if (v9 != 243)
  {
LABEL_15:
    v6 = v5 - 1;
    v8 = *(v7 + 8 * (v5 - 1));
    if (v8[8] != 361)
    {
      v8 = 0;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  *(this + 24) = v6;
  v10 = v8;
  while (1)
  {
    v11 = v10[8];
    if (v11 != 243)
    {
      break;
    }

    v12 = *(v10 + 18);
    if ((v12 - 1) >= 2)
    {
      if (v12 != 5 || !*(v10 + 2))
      {
        return 0;
      }

      v10 = *v10;
    }

    v10 = *v10;
    if (!v10)
    {
      return 0;
    }
  }

  if ((v11 - 190) >= 2 && v11 != 361)
  {
    return 0;
  }

  if (!v8)
  {
    v5 = v6;
    if (!v6)
    {
      return 0;
    }

    goto LABEL_15;
  }

LABEL_17:
  v5 = v6;
  if (!v6)
  {
    return 0;
  }

LABEL_20:
  v13 = *(v7 + 8 * (v5 - 1));
  if (*(v13 + 8) != 103)
  {
    return 0;
  }

  *(this + 24) = v5 - 1;
  v14 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v14;
  v15 = this;
  if (!v14 || v14 + 24 > *(this + 2))
  {
    v16 = 2 * *(this + 4);
    if (v16 <= 0x20)
    {
      v16 = 32;
    }

    *(this + 4) = v16;
    v17 = v16 + 8;
    v18 = malloc_type_malloc(v16 + 8, 0x2004093837F09uLL);
    this = v15;
    v19 = v18 + v17;
    *v18 = *(v15 + 3);
    v14 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(v15 + 2) = v19;
    *(v15 + 3) = v18;
  }

  *(this + 1) = v14 + 24;
  *(v14 + 16) = 36;
  *(v14 + 18) = 0;
  swift::Demangle::Node::addChild(v14, v13, this, a4, a5);
  if (v8 && v14)
  {
    swift::Demangle::Node::addChild(v14, v8, v15, v20, v21);
  }

  return v14;
}

unsigned int *swift::Demangle::Demangler::demangleGenericSpecialization(swift::Demangle::NodeFactory *a1, __int16 a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v11 = swift::Demangle::Demangler::demangleSpecAttributes(a1, a2, a3, a4, a5);
  if (!v11)
  {
    return v11;
  }

  if (a3)
  {
    v12 = *(a3 + 18);
    v13 = a3;
    if ((v12 - 1) >= 2)
    {
      if (v12 == 5)
      {
        v14 = *a3;
        v13 = *a3;
LABEL_11:
        v15 = &v14[*(a3 + 8)];
        goto LABEL_16;
      }

      v13 = 0;
    }

    switch(v12)
    {
      case 1:
        v15 = (a3 + 8);
        break;
      case 2:
        v15 = (a3 + 16);
        break;
      case 5:
        v14 = *a3;
        goto LABEL_11;
      default:
        v15 = 0;
        break;
    }

LABEL_16:
    while (v13 != v15)
    {
      v16 = *v13++;
      swift::Demangle::Node::addChild(v11, v16, a1, v9, v10);
    }
  }

  v17 = swift::Demangle::Demangler::popTypeList(a1, v7, v8, v9, v10);
  if (!v17)
  {
    return 0;
  }

  v20 = v17[1].u8[2];
  v21 = v17;
  if ((v20 - 1) >= 2)
  {
    if (v20 == 5)
    {
      v22 = v17->i64[0];
      v21 = v17->i64[0];
LABEL_27:
      v23 = (v22 + 8 * v17->u32[2]);
      if (v21 == v23)
      {
        return v11;
      }

      goto LABEL_37;
    }

    v21 = 0;
  }

  switch(v20)
  {
    case 1:
      v23 = &v17->u64[1];
      if (v21 == &v17->u64[1])
      {
        return v11;
      }

      break;
    case 2:
      v23 = v17 + 1;
      if (v21 == &v17[1])
      {
        return v11;
      }

      break;
    case 5:
      v22 = v17->i64[0];
      goto LABEL_27;
    default:
      v23 = 0;
      if (!v21)
      {
        return v11;
      }

      goto LABEL_37;
  }

  do
  {
LABEL_37:
    v25 = *v21;
    if (*v21)
    {
      v24 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 1) = v24;
      if (!v24 || v24 + 24 > *(a1 + 2))
      {
        v26 = 2 * *(a1 + 4);
        if (v26 <= 0x20)
        {
          v26 = 32;
        }

        *(a1 + 4) = v26;
        v27 = v26 + 8;
        v28 = malloc_type_malloc(v26 + 8, 0x2004093837F09uLL);
        v29 = v28 + v27;
        *v28 = *(a1 + 3);
        v24 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
        *(a1 + 2) = v29;
        *(a1 + 3) = v28;
      }

      *(a1 + 1) = v24 + 24;
      *(v24 + 16) = 96;
      *(v24 + 18) = 0;
      swift::Demangle::Node::addChild(v24, v25, a1, v18, v19);
    }

    else
    {
      v24 = 0;
    }

    swift::Demangle::Node::addChild(v11, v24, a1, v18, v19);
    ++v21;
  }

  while (v21 != v23);
  return v11;
}

unsigned int *swift::Demangle::Demangler::demangleGenericSpecializationWithDroppedArguments(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 9) - 1;
  *(this + 9) = v6;
  v7 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v7;
  if (!v7 || v7 + 24 > *(this + 2))
  {
    v8 = 2 * *(this + 4);
    if (v8 <= 0x20)
    {
      v8 = 32;
    }

    *(this + 4) = v8;
    v9 = v8 + 8;
    v10 = malloc_type_malloc(v8 + 8, 0x2004093837F09uLL);
    v11 = v10 + v9;
    *v10 = *(this + 3);
    v7 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v11;
    *(this + 3) = v10;
    v6 = *(this + 9);
  }

  *(this + 1) = v7 + 24;
  *(v7 + 16) = 93;
  *(v7 + 18) = 0;
  for (i = *(this + 8); v6 < i; v6 = *(this + 9))
  {
    v17 = *(this + 7);
    if (*(v17 + v6) != 116)
    {
      break;
    }

    v18 = v6 + 1;
    *(this + 9) = v18;
    if (v18 < i && *(v17 + v18) - 48 <= 9)
    {
      v19 = 0;
      while (1)
      {
        v20 = *(v17 + v18);
        if ((v20 - 48) > 9)
        {
          break;
        }

        v21 = v20 + 10 * v19 - 48;
        if (v21 < v19)
        {
          goto LABEL_22;
        }

        *(this + 9) = ++v18;
        v19 = v21;
        if (i == v18)
        {
          if (v21 < 0)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

      v21 = v19;
      if ((v19 & 0x80000000) == 0)
      {
LABEL_20:
        v22 = v21 + 1;
        goto LABEL_23;
      }
    }

LABEL_22:
    v22 = 0;
LABEL_23:
    v16 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v16;
    if (!v16 || v16 + 24 > *(this + 2))
    {
      v13 = 2 * *(this + 4);
      if (v13 <= 0x20)
      {
        v13 = 32;
      }

      *(this + 4) = v13;
      v14 = v13 + 8;
      v15 = malloc_type_malloc(v13 + 8, 0x2004093837F09uLL);
      *v15 = *(this + 3);
      v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v15 + v14;
      *(this + 3) = v15;
    }

    *(this + 1) = v16 + 24;
    *(v16 + 16) = 353;
    *(v16 + 18) = 4;
    *v16 = v22;
    swift::Demangle::Node::addChild(v7, v16, this, a4, a5);
    i = *(this + 8);
  }

  if (v6 >= i)
  {
    return 0;
  }

  *(this + 9) = v6 + 1;
  v23 = *(*(this + 7) + v6);
  if (v23 == 66)
  {
    v24 = 95;
    goto LABEL_34;
  }

  if (v23 == 103)
  {
    v24 = 93;
    goto LABEL_34;
  }

  if (v23 != 71)
  {
    return 0;
  }

  v24 = 94;
LABEL_34:

  return swift::Demangle::Demangler::demangleGenericSpecialization(this, v24, v7, a4, a5);
}

unint64_t swift::Demangle::Demangler::demangleSpecAttributes(swift::Demangle::NodeFactory *a1, __int16 a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 9);
  if (v6 < v7 && *(*(a1 + 7) + v6) == 113)
  {
    *(a1 + 9) = ++v6;
    v8 = 1;
    if (v6 >= v7)
    {
LABEL_9:
      v9 = 0;
      if (v6 < v7)
      {
        goto LABEL_10;
      }

      return 0;
    }
  }

  else
  {
    v8 = 0;
    if (v6 >= v7)
    {
      goto LABEL_9;
    }
  }

  if (*(*(a1 + 7) + v6) != 97)
  {
    goto LABEL_9;
  }

  *(a1 + 9) = ++v6;
  v9 = 1;
  if (v6 >= v7)
  {
    return 0;
  }

LABEL_10:
  *(a1 + 9) = v6 + 1;
  v10 = *(*(a1 + 7) + v6);
  if ((v10 - 58) < 0xFFFFFFF6)
  {
    return 0;
  }

  v11 = (*(a1 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 1) = v11;
  if (!v11 || (v12 = *(a1 + 2), v11 + 24 > v12))
  {
    v13 = 2 * *(a1 + 4);
    if (v13 <= 0x20)
    {
      v13 = 32;
    }

    *(a1 + 4) = v13;
    v14 = v13 + 8;
    v15 = a2;
    v16 = malloc_type_malloc(v13 + 8, 0x2004093837F09uLL);
    a2 = v15;
    v12 = v16 + v14;
    *v16 = *(a1 + 3);
    v11 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 2) = v12;
    *(a1 + 3) = v16;
  }

  v17 = v11 + 24;
  *(v11 + 16) = a2;
  *(v11 + 18) = 0;
  if (v8)
  {
    v18 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 1) = v18;
    if (!v18 || v18 + 24 > v12)
    {
      v19 = 2 * *(a1 + 4);
      if (v19 <= 0x20)
      {
        v19 = 32;
      }

      *(a1 + 4) = v19;
      v20 = v19 + 8;
      v21 = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
      *v21 = *(a1 + 3);
      v18 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(a1 + 2) = v21 + v20;
      *(a1 + 3) = v21;
    }

    *(a1 + 1) = v18 + 24;
    *(v18 + 16) = 228;
    *(v18 + 18) = 0;
    swift::Demangle::Node::addChild(v11, v18, a1, a4, a5);
    v17 = *(a1 + 1);
  }

  if (v9)
  {
    v22 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 1) = v22;
    if (!v22 || v22 + 24 > *(a1 + 2))
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
    *(v22 + 16) = 360;
    *(v22 + 18) = 0;
    swift::Demangle::Node::addChild(v11, v22, a1, a4, a5);
    v17 = *(a1 + 1);
  }

  v26 = v10 & 0xF;
  v27 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 1) = v27;
  if (!v27 || v27 + 24 > *(a1 + 2))
  {
    v28 = 2 * *(a1 + 4);
    if (v28 <= 0x20)
    {
      v28 = 32;
    }

    *(a1 + 4) = v28;
    v29 = v28 + 8;
    v30 = malloc_type_malloc(v28 + 8, 0x2004093837F09uLL);
    *v30 = *(a1 + 3);
    v27 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 2) = v30 + v29;
    *(a1 + 3) = v30;
  }

  *(a1 + 1) = v27 + 24;
  *(v27 + 16) = 227;
  *(v27 + 18) = 4;
  *v27 = v26;
  swift::Demangle::Node::addChild(v11, v27, a1, a4, a5);
  return v11;
}

uint64_t swift::Demangle::Demangler::demangleFunctionSpecialization(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v9 = swift::Demangle::Demangler::demangleSpecAttributes(this, 79, a3, a4, a5);
  if (v9)
  {
    while (1)
    {
      v10 = *(this + 9);
      if (v10 < *(this + 8) && *(*(this + 7) + v10) == 95)
      {
        break;
      }

      v11 = swift::Demangle::Demangler::demangleFuncSpecParam(this, 80, v6, v7, v8);
      if (!v11)
      {
        v9 = 0;
        goto LABEL_8;
      }

      swift::Demangle::Node::addChild(v9, v11, this, v7, v8);
    }

    *(this + 9) = v10 + 1;
  }

LABEL_8:
  v12 = *(this + 9);
  if (v12 < *(this + 8) && *(*(this + 7) + v12) == 110)
  {
    *(this + 9) = v12 + 1;
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v14 = swift::Demangle::Demangler::demangleFuncSpecParam(this, 81, v6, v7, v8);
    result = 0;
    if (!v9 || !v14)
    {
      return result;
    }

    swift::Demangle::Node::addChild(v9, v14, this, v15, v16);
  }

  v17 = *(v9 + 18);
  if (v17 == 1)
  {
    goto LABEL_20;
  }

  if (v17 == 5)
  {
    v17 = *(v9 + 8);
    if (v17)
    {
      goto LABEL_20;
    }

    return v9;
  }

  if (v17 != 2)
  {
    return v9;
  }

  v17 = 2;
LABEL_20:
  v18 = 0;
  while (1)
  {
    v19 = *(v9 + 18);
    v20 = v19 - 1;
    if (v19 != 1)
    {
      if (v19 == 5)
      {
        v19 = *(v9 + 8);
      }

      else
      {
        if (v19 != 2)
        {
          goto LABEL_31;
        }

        v19 = 2;
      }
    }

    v21 = v17 + ~v18;
    if (v19 <= v21)
    {
LABEL_31:
      v23 = 0;
      goto LABEL_32;
    }

    v22 = v9;
    if (v20 >= 2)
    {
      v22 = *v9;
    }

    v23 = *(v22 + 8 * v21);
LABEL_32:
    if (v23[1].i16[0] != 80)
    {
      goto LABEL_21;
    }

    v24 = v23[1].u8[2];
    v25 = v23;
    if ((v24 - 1) >= 2)
    {
      if (v24 != 5 || !v23->i32[2])
      {
        goto LABEL_21;
      }

      v25 = v23->i64[0];
    }

    v26 = **v25;
    if (v26 > 9 || ((1 << v26) & 0x233) == 0)
    {
      goto LABEL_21;
    }

    if (v24 == 1)
    {
      goto LABEL_47;
    }

    if (v24 == 5)
    {
      break;
    }

    if (v24 == 2)
    {
      v24 = 2;
      v28 = *(this + 24);
      if (v28)
      {
        goto LABEL_52;
      }

      return 0;
    }

    v24 = 0;
    v28 = *(this + 24);
    if (!v28)
    {
      return 0;
    }

LABEL_52:
    while (1)
    {
      v29 = v28 - 1;
      v30 = *(*(this + 11) + 8 * v29);
      v31 = *(v30 + 16);
      if (v31 != 243)
      {
        break;
      }

      *(this + 24) = v29;
      if (v26 == 9 || v26 == 5)
      {
        swift::Demangle::Node::addChild(v23, v30, this, v7, v8);
        v28 = *(this + 24);
        if (v28)
        {
          continue;
        }
      }

      return 0;
    }

    if (v31 != 103)
    {
      return 0;
    }

    *(this + 24) = v29;
    v32 = *v30;
    v33 = *(v30 + 8);
    if (v26 == 4 && v33 && *v32 == 95)
    {
      --v33;
      ++v32;
    }

    v34 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(this + 1) = v34;
    if (!v34 || v34 + 24 > *(this + 2))
    {
      v35 = 2 * *(this + 4);
      if (v35 <= 0x20)
      {
        v35 = 32;
      }

      *(this + 4) = v35;
      v36 = v35 + 8;
      v37 = malloc_type_malloc(v35 + 8, 0x2004093837F09uLL);
      *v37 = *(this + 3);
      v34 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
      *(this + 2) = v37 + v36;
      *(this + 3) = v37;
    }

    *(this + 1) = v34 + 24;
    *(v34 + 16) = 83;
    *(v34 + 18) = 3;
    *v34 = v32;
    *(v34 + 8) = v33;
    swift::Demangle::Node::addChild(v23, v34, this, v7, v8);
    v38 = v23[1].u8[2];
    if (v38 == 5)
    {
      v39 = v23->u32[2];
      if (v24 != v39)
      {
        v40 = v23->i64[0] + 8 * v24;
        v41 = (v23->i64[0] + 8 * v39 - 8);
        if (v41 > v40)
        {
          v42 = v40 + 8;
          do
          {
            v43 = *(v42 - 8);
            *(v42 - 8) = *v41;
            *v41-- = v43;
            v44 = v42 >= v41;
            v42 += 8;
          }

          while (!v44);
        }
      }
    }

    else if (v38 == 2 && !v24)
    {
      *v23 = vextq_s8(*v23, *v23, 8uLL);
    }

LABEL_21:
    if (++v18 == v17)
    {
      return v9;
    }
  }

  v24 = v23->u32[2];
LABEL_47:
  v28 = *(this + 24);
  if (v28)
  {
    goto LABEL_52;
  }

  return 0;
}

double swift::Demangle::Demangler::demangleBridgedMethodParams@<D0>(swift::Demangle::Demangler *this@<X0>, std::string *a2@<X8>)
{
  v3 = *(this + 9);
  if (v3 >= *(this + 8))
  {
    goto LABEL_22;
  }

  if (*(*(this + 7) + v3) == 95)
  {
    *(this + 9) = v3 + 1;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    return result;
  }

  memset(&v15, 0, sizeof(v15));
  *(this + 9) = v3 + 1;
  v5 = *(*(this + 7) + v3);
  if ((v5 - 97) > 0xF || ((1 << (v5 - 97)) & 0xD001) == 0)
  {
LABEL_22:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    return result;
  }

  std::string::push_back(&v15, v5);
  do
  {
    v8 = *(this + 9);
    if (v8 >= *(this + 8))
    {
      v11 = 0;
LABEL_17:
      a2->__r_.__value_.__r.__words[0] = 0;
      a2->__r_.__value_.__l.__size_ = 0;
      a2->__r_.__value_.__r.__words[2] = 0;
      continue;
    }

    v9 = *(*(this + 7) + v8);
    *(this + 9) = v8 + 1;
    if (v9 == 95)
    {
      result = *&v15.__r_.__value_.__l.__data_;
      *a2 = v15;
      return result;
    }

    v10 = *(*(this + 7) + v8);
    v11 = v10;
    v10 -= 98;
    v12 = v10 > 0xC;
    v13 = (1 << v10) & 0x1021;
    if (v12 || v13 == 0)
    {
      goto LABEL_17;
    }

    std::string::push_back(&v15, v11);
  }

  while (v11 - 98 <= 0xC && ((1 << (v11 - 98)) & 0x1021) != 0);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return result;
}

unsigned int *swift::Demangle::Demangler::demangleAutoDiffSubsetParametersThunk(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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
  v6[1].i16[0] = 337;
  v6[1].i8[2] = 0;
  v11 = *(this + 24);
  if (v11)
  {
    do
    {
      v12 = v11 - 1;
      v13 = *(*(this + 11) + 8 * v12);
      *(this + 24) = v12;
      if (!v13)
      {
        break;
      }

      swift::Demangle::Node::addChild(v6, v13, this, a4, a5);
      v11 = *(this + 24);
    }

    while (v11);
    v14 = v6[1].u8[2];
    if (v14 == 5)
    {
      v15 = v6->i64[0];
      v16 = v6->u32[2];
      v17 = (v6->i64[0] + 8 * v16 - 8);
      if (v16)
      {
        v18 = v17 > v15;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        v19 = v15 + 8;
        do
        {
          v20 = *(v19 - 8);
          *(v19 - 8) = *v17;
          *v17-- = v20;
          v21 = v19 >= v17;
          v19 += 8;
        }

        while (!v21);
      }
    }

    else if (v14 == 2)
    {
      *v6 = vextq_s8(*v6, *v6, 8uLL);
    }
  }

  v22 = *(this + 9);
  if (v22 >= *(this + 8))
  {
    v23 = 0;
  }

  else
  {
    *(this + 9) = v22 + 1;
    v23 = *(*(this + 7) + v22);
  }

  v24 = (((v23 - 100) >> 1) | ((v23 - 100) << 7));
  v18 = v24 > 7;
  v25 = (1 << v24) & 0xC3;
  if (v18 || v25 == 0)
  {
    v6 = 0;
  }

  else
  {
    v27 = v23;
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
    *(v28 + 16) = 335;
    *(v28 + 18) = 4;
    *v28 = v27;
    if (v6)
    {
      swift::Demangle::Node::addChild(v6, v28, this, a4, a5);
    }
  }

  v32 = swift::Demangle::Demangler::demangleIndexSubset(this);
  v35 = 0;
  if (v6 && v32)
  {
    swift::Demangle::Node::addChild(v6, v32, this, v33, v34);
    v35 = v6;
  }

  v36 = *(this + 9);
  if (v36 >= *(this + 8) || *(*(this + 7) + v36) != 112)
  {
    return 0;
  }

  *(this + 9) = v36 + 1;
  v37 = swift::Demangle::Demangler::demangleIndexSubset(this);
  v40 = 0;
  if (v35 && v37)
  {
    swift::Demangle::Node::addChild(v35, v37, this, v38, v39);
    v40 = v35;
  }

  v41 = *(this + 9);
  if (v41 >= *(this + 8) || *(*(this + 7) + v41) != 114)
  {
    return 0;
  }

  *(this + 9) = v41 + 1;
  v42 = swift::Demangle::Demangler::demangleIndexSubset(this);
  result = 0;
  if (v40 && v42)
  {
    swift::Demangle::Node::addChild(v40, v42, this, v43, v44);
    result = v40;
  }

  v46 = *(this + 9);
  if (v46 >= *(this + 8) || *(*(this + 7) + v46) != 80)
  {
    return 0;
  }

  *(this + 9) = v46 + 1;
  return result;
}

int8x16_t *swift::Demangle::Demangler::demangleAutoDiffSelfReorderingReabstractionThunk(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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
  v6[1].i16[0] = 336;
  v6[1].i8[2] = 0;
  v11 = *(this + 24);
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = *(*(this + 11) + 8 * (v11 - 1));
  if (*(v12 + 8) == 44)
  {
    *(this + 24) = v11 - 1;
    swift::Demangle::Node::addChild(v6, v12, this, a4, a5);
    v11 = *(this + 24);
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  v13 = *(*(this + 11) + 8 * (v11 - 1));
  if (*(v13 + 8) == 243)
  {
    *(this + 24) = v11 - 1;
    swift::Demangle::Node::addChild(v6, v13, this, a4, a5);
    v11 = *(this + 24);
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = 0;
  }

  v14 = v11 - 1;
  v15 = *(*(this + 11) + 8 * v14);
  if (*(v15 + 8) != 243)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  *(this + 24) = v14;
  if (v6)
  {
    swift::Demangle::Node::addChild(v6, v15, this, a4, a5);
    v16 = v6[1].u8[2];
    if (v16 == 5)
    {
      v29 = v6->u32[2];
      if (v29)
      {
        v30 = (v6->i64[0] + 8 * v29 - 8);
        if (v30 > v6->i64[0])
        {
          v31 = v6->i64[0] + 8;
          do
          {
            v32 = *(v31 - 8);
            *(v31 - 8) = *v30;
            *v30-- = v32;
            v33 = v31 >= v30;
            v31 += 8;
          }

          while (!v33);
        }
      }
    }

    else if (v16 == 2)
    {
      *v6 = vextq_s8(*v6, *v6, 8uLL);
    }
  }

LABEL_19:
  v17 = *(this + 9);
  if (v17 >= *(this + 8))
  {
    v18 = 0;
  }

  else
  {
    *(this + 9) = v17 + 1;
    v18 = *(*(this + 7) + v17);
  }

  v19 = (((v18 - 100) >> 1) | ((v18 - 100) << 7));
  v20 = v19 > 7;
  v21 = (1 << v19) & 0xC3;
  if (v20 || v21 == 0)
  {
    return 0;
  }

  v23 = v18;
  v24 = (*(this + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 1) = v24;
  if (!v24 || v24 + 24 > *(this + 2))
  {
    v25 = 2 * *(this + 4);
    if (v25 <= 0x20)
    {
      v25 = 32;
    }

    *(this + 4) = v25;
    v26 = v25 + 8;
    v27 = malloc_type_malloc(v25 + 8, 0x2004093837F09uLL);
    *v27 = *(this + 3);
    v24 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(this + 2) = v27 + v26;
    *(this + 3) = v27;
  }

  *(this + 1) = v24 + 24;
  *(v24 + 16) = 335;
  *(v24 + 18) = 4;
  *v24 = v23;
  if (v6)
  {
    swift::Demangle::Node::addChild(v6, v24, this, a4, a5);
  }

  return v6;
}

unsigned int *swift::Demangle::Demangler::demangleAutoDiffFunctionOrSimpleThunk(swift::Demangle::NodeFactory *a1, __int16 a2, uint64_t a3, uint64_t a4, const char *a5)
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

      swift::Demangle::Node::addChild(v7, v14, a1, a4, a5);
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
      swift::Demangle::Node::addChild(v7, v29, a1, a4, a5);
    }
  }

  v33 = swift::Demangle::Demangler::demangleIndexSubset(a1);
  v36 = 0;
  if (v7 && v33)
  {
    swift::Demangle::Node::addChild(v7, v33, a1, v34, v35);
    v36 = v7;
  }

  v37 = *(a1 + 9);
  if (v37 >= *(a1 + 8) || *(*(a1 + 7) + v37) != 112)
  {
    return 0;
  }

  *(a1 + 9) = v37 + 1;
  v38 = swift::Demangle::Demangler::demangleIndexSubset(a1);
  result = 0;
  if (v36 && v38)
  {
    swift::Demangle::Node::addChild(v36, v38, a1, v39, v40);
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

unint64_t swift::Demangle::Demangler::demangleAutoDiffFunctionKind(swift::Demangle::Demangler *this)
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

unint64_t swift::Demangle::Demangler::demangleIndexSubset(swift::Demangle::Demangler *this)
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

    result = swift::Demangle::NodeFactory::createNode(this, 341, v7, size);
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

unsigned int *swift::Demangle::Demangler::demangleDifferentiabilityWitness(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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

      swift::Demangle::Node::addChild(v6, v14, this, a4, a5);
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

  v27 = qword_299ACB1C0[v25];
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
    swift::Demangle::Node::addChild(v6, v28, this, a4, a5);
  }

  v32 = swift::Demangle::Demangler::demangleIndexSubset(this);
  v35 = 0;
  if (v6 && v32)
  {
    swift::Demangle::Node::addChild(v6, v32, this, v33, v34);
    v35 = v6;
  }

  v36 = *(this + 9);
  if (v36 >= *(this + 8) || *(*(this + 7) + v36) != 112)
  {
    return 0;
  }

  *(this + 9) = v36 + 1;
  v37 = swift::Demangle::Demangler::demangleIndexSubset(this);
  result = 0;
  if (v35 && v37)
  {
    swift::Demangle::Node::addChild(v35, v37, this, v38, v39);
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
      swift::Demangle::Node::addChild(result, v12, this, v38, v39);
      return v42;
    }
  }

  return result;
}

swift::Demangle::Node *swift::Demangle::Demangler::demangleFuncSpecParam(swift::Demangle::NodeFactory *a1, __int16 a2, uint64_t a3, uint64_t a4, const char *a5)
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

    return swift::Demangle::Demangler::addFuncSpecParamNumber(v48, v49, v50, a4, a5);
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

    Node = swift::Demangle::NodeFactory::createNode(a1, 82, 4);
    if (Node)
    {
      swift::Demangle::Node::addChild(v7, Node, a1, v52, v53);
    }

    result = swift::Demangle::NodeFactory::createNode(a1, 83, v47);
    if (result)
    {
      goto LABEL_118;
    }

    return result;
  }

  v20 = a1;
  v21 = 9;
LABEL_117:
  result = swift::Demangle::NodeFactory::createNode(v20, 82, v21);
  if (result)
  {
LABEL_118:
    v22 = result;
LABEL_99:
    swift::Demangle::Node::addChild(v7, v22, a1, a4, a5);
    return v7;
  }

  return result;
}

swift::Demangle::Node *swift::Demangle::Demangler::addFuncSpecParamNumber(swift::Demangle::NodeFactory *a1, swift::Demangle::Node *this, unsigned int a3, uint64_t a4, const char *a5)
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
  swift::Demangle::Node::addChild(this, v8, a1, a4, a5);
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
      swift::Demangle::Node::addChild(v34, v29, a1, v12, v13);
      return v34;
    }
  }

  return 0;
}

unint64_t swift::Demangle::Demangler::demangleExtendedExistentialShape(swift::Demangle::Demangler *this, int a2, uint64_t a3, uint64_t a4, const char *a5)
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
        swift::Demangle::Node::addChild(v10, v9, this, a4, a5);
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
  swift::Demangle::Node::addChild(v10, v7, this, a4, a5);
  return v10;
}

unint64_t swift::Demangle::Demangler::demangleSymbolicExtendedExistentialType(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = swift::Demangle::Demangler::popRetroactiveConformances(this, a2, a3, a4, a5);
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
    swift::Demangle::Node::addChild(v9, v15, this, v6, v7);
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
    result = swift::Demangle::Demangler::createWithChildren(this, 352, v25, v9, v8->i8);
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
  swift::Demangle::Node::addChild(v29, v25, this, v6, v7);
  swift::Demangle::Node::addChild(v29, v9, this, v35, v36);
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
  swift::Demangle::Node::addChild(v37, v29, this, v27, v28);
  return v37;
}

unint64_t swift::Demangle::Demangler::demangleMetatypeRepresentation(swift::Demangle::Demangler *this)
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

int8x16_t *swift::Demangle::Demangler::demangleConstrainedExistentialRequirementList(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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
    swift::Demangle::Node::addChild(v6, v11, this, a4, a5);
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

unint64_t swift::Demangle::Demangler::demangleProtocolList(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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
  swift::Demangle::Node::addChild(v11, v6, this, a4, a5);
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

      v26 = swift::Demangle::Demangler::popProtocol(this, v17, v18, v19, v20);
      if (!v26)
      {
        return 0;
      }

      swift::Demangle::Node::addChild(v6, v26, this, v27, v28);
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

swift::Demangle::Node *swift::Demangle::Demangler::demangleAccessor(swift::Demangle::Demangler *this, swift::Demangle::Node *a2, uint64_t a3, uint64_t a4, const char *a5)
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
      swift::Demangle::Node::addChild(v10, a2, this, a4, a5);
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

uint64_t swift::Demangle::Demangler::demangleEntity(swift::Demangle::Demangler *this, __int16 a2, uint64_t a3, uint64_t a4, const char *a5)
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

  v14 = swift::Demangle::Demangler::popFunctionParamLabels(this, v9, a3, a4, a5);
  v15 = *(this + 24);
  if (!v15 || ((v16 = v15 - 1, v17 = *(*(this + 11) + 8 * v16), v18 = v17[8], (v18 - 183) <= 0x3D) ? (v19 = ((1 << (v18 + 73)) & 0x200000020000010DLL) == 0) : (v19 = 1), v19 && ((v18 - 103) <= 0x2B ? (v20 = ((1 << (v18 - 103)) & 0x80004000001) == 0) : (v20 = 1), v20 && v18 != 361)))
  {
    v17 = 0;
  }

  else
  {
    *(this + 24) = v16;
  }

  v21 = swift::Demangle::Demangler::popContext(this, v10, v11, v12, v13);
  if (v14)
  {
    v22 = swift::Demangle::Demangler::createWithChildren(this, a2, v21, v17, v14, v9);
  }

  else
  {
    v22 = swift::Demangle::Demangler::createWithChildren(this, a2, v21, v17, v9);
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
    setParentForOpaqueReturnTypeNodesImpl(this, v9, llvm::function_ref<llvm::StringRef ()(void)>::callback_fn<setParentForOpaqueReturnTypeNodes(swift::Demangle::Demangler &,swift::Demangle::Node *,swift::Demangle::Node *,swift::Mangle::ManglingFlavor)::$_0>, v27);
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

unsigned int *swift::Demangle::Demangler::demangleMacroExpansion(swift::Demangle::Demangler *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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

          return swift::Demangle::Demangler::createWithChildren(this, 148, v58, v57, v45, v50);
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
  v28 = swift::Demangle::Demangler::popContext(this, a2, a3, a4, a5);
LABEL_78:
  v33 = swift::Demangle::Demangler::demangleIndexAsNode(this);
  if (v15 && v23)
  {
    result = swift::Demangle::Demangler::createWithChildren(this, v12, v28, v23, v20, v33);
    if (!v22)
    {
      return result;
    }
  }

  else
  {
    result = swift::Demangle::Demangler::createWithChildren(this, v12, v28, v20, v33);
    if (!v22)
    {
      return result;
    }
  }

  v36 = result;
  swift::Demangle::Node::addChild(result, v22, this, v34, v35);
  return v36;
}

void swift::Demangle::NodeFactory::~NodeFactory(swift::Demangle::NodeFactory *this)
{
  *this = &unk_2A2008340;
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
  *this = &unk_2A2008340;
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

  JUMPOUT(0x29C2AA2C0);
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
          Node = swift::Demangle::NodeFactory::createNode(v6, 356, v17, v18);

          return swift::Demangle::Node::addChild(a2, Node, v6, v20, v21);
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

std::string *llvm::function_ref<llvm::StringRef ()(void)>::callback_fn<setParentForOpaqueReturnTypeNodes(swift::Demangle::Demangler &,swift::Demangle::Node *,swift::Demangle::Node *,swift::Mangle::ManglingFlavor)::$_0>(std::string **a1)
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
  swift::Demangle::mangleNode();
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

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_out_of_range[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::vector<swift::Demangle::Node *>::emplace_back<swift::Demangle::Node * const&>(uint64_t a1, void *a2)
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
      std::string::__throw_out_of_range[abi:nn200100]();
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

      std::string::__throw_out_of_range[abi:nn200100]();
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

void swift::Demangle::Context::Context(swift::Demangle::Context *this)
{
  operator new();
}

{
  operator new();
}

void swift::Demangle::Context::~Context(swift::Demangle::Context *this)
{
  if (*this)
  {
    (*(**this + 8))(*this);
  }
}

{
  if (*this)
  {
    (*(**this + 8))(*this);
  }
}

unsigned int *swift::Demangle::Context::demangleSymbolAsNode(swift::Demangle::NodeFactory **a1, _WORD *a2, unint64_t a3)
{
  ManglingPrefixLength = swift::Demangle::getManglingPrefixLength(a2, a3);
  v7 = *a1;
  if (ManglingPrefixLength)
  {
    v11 = 0;
    v8 = swift::Demangle::Demangler::demangleSymbol(v7, a2, a3, v10);
    if (v11 == v10)
    {
      (*(*v11 + 32))(v11);
    }

    else if (v11)
    {
      (*(*v11 + 40))();
    }

    return v8;
  }

  else
  {

    return swift::Demangle::demangleOldSymbolAsNode(a2, a3, v7);
  }
}

uint64_t swift::Demangle::Context::demangleTypeAsNode(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v7 = 0;
  v4 = swift::Demangle::Demangler::demangleType(v3, a2, a3, v6);
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return v4;
}

void swift::Demangle::Context::demangleSymbolAsString(swift::Demangle::NodeFactory **a1@<X0>, _WORD *a2@<X1>, unint64_t a3@<X2>, swift::Demangle::Node *a4@<X3>, uint64_t a5@<X8>)
{
  ManglingPrefixLength = swift::Demangle::getManglingPrefixLength(a2, a3);
  v11 = *a1;
  if (!ManglingPrefixLength)
  {
    v12 = swift::Demangle::demangleOldSymbolAsNode(a2, a3, v11);
    goto LABEL_7;
  }

  v20 = 0;
  v12 = swift::Demangle::Demangler::demangleSymbol(v11, a2, a3, __p);
  if (v20 == __p)
  {
    v17 = v12;
    (*(*v20 + 4))(v20);
    v12 = v17;
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (!v20)
  {
LABEL_7:
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v14 = v12;
  (*(*v20 + 5))(v20);
  v12 = v14;
  if (!v14)
  {
LABEL_13:
    if (!a2)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      return;
    }

    if (a3 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (a3 >= 0x17)
      {
        operator new();
      }

      *(a5 + 23) = a3;
      if (a3)
      {
        memmove(a5, a2, a3);
      }

      *(a5 + a3) = 0;
      return;
    }

LABEL_34:
    std::string::__throw_out_of_range[abi:nn200100]();
  }

LABEL_8:
  swift::Demangle::nodeToString(v12, a4, v13, __p);
  v15 = HIBYTE(v19);
  v16 = HIBYTE(v19);
  if (v19 < 0)
  {
    v15 = __p[1];
  }

  if (v15)
  {
    *a5 = *__p;
    *(a5 + 16) = v19;
    return;
  }

  if (!a2)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    if ((v16 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_34;
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a5 + 23) = a3;
  if (a3)
  {
    memmove(a5, a2, a3);
  }

  *(a5 + a3) = 0;
  if (v19 < 0)
  {
LABEL_32:
    operator delete(__p[0]);
  }
}

const void **llvm::StringRef::str@<X0>(const void **this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    v4 = this[1];
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_out_of_range[abi:nn200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      this = memmove(a2, v3, v4);
    }

    *(a2 + v4) = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

uint64_t swift::Demangle::Context::demangleSymbolAsString(swift::Demangle::NodeFactory **a1, _WORD *a2, unint64_t a3, swift::Demangle::Node *a4)
{
  ManglingPrefixLength = swift::Demangle::getManglingPrefixLength(a2, a3);
  v9 = *a1;
  if (ManglingPrefixLength)
  {
    v15 = 0;
    v10 = swift::Demangle::Demangler::demangleSymbol(v9, a2, a3, v14);
    if (v15 == v14)
    {
      v12 = v10;
      (*(*v15 + 32))(v15);
      goto LABEL_7;
    }

    if (v15)
    {
      v12 = v10;
      (*(*v15 + 40))(v15);
LABEL_7:
      v10 = v12;
    }
  }

  else
  {
    v10 = swift::Demangle::demangleOldSymbolAsNode(a2, a3, v9);
  }

  return swift::Demangle::nodeToString(v10, a4, v11);
}

void swift::Demangle::Context::demangleTypeAsString(uint64_t *a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, swift::Demangle::Node *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v16 = 0;
  v11 = swift::Demangle::Demangler::demangleType(v9, a2, a3, __p);
  if (v16 == __p)
  {
    (*(*v16 + 4))(v16);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (!a2)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      return;
    }

    if (a3 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (a3 >= 0x17)
      {
        operator new();
      }

      *(a5 + 23) = a3;
      if (a3)
      {
        memmove(a5, a2, a3);
      }

      *(a5 + a3) = 0;
      return;
    }

LABEL_31:
    std::string::__throw_out_of_range[abi:nn200100]();
  }

  if (v16)
  {
    (*(*v16 + 5))();
  }

  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_5:
  swift::Demangle::nodeToString(v11, a4, v10, __p);
  v12 = HIBYTE(v15);
  v13 = HIBYTE(v15);
  if (v15 < 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    *a5 = *__p;
    *(a5 + 16) = v15;
    return;
  }

  if (!a2)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    if ((v13 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_31;
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a5 + 23) = a3;
  if (a3)
  {
    memmove(a5, a2, a3);
  }

  *(a5 + a3) = 0;
  if (v15 < 0)
  {
LABEL_29:
    operator delete(__p[0]);
  }
}

BOOL swift::Demangle::Context::isThunkSymbol(uint64_t *a1, char *a2, unint64_t a3)
{
  v3 = a3;
  if (!swift::Demangle::getManglingPrefixLength(a2, a3))
  {
    v8 = v3 - 2;
    if (v3 < 2 || *a2 != 21599 || v8 < 2)
    {
      return 0;
    }

    if (*(a2 + 1) != 28500 && *(a2 + 1) != 20308)
    {
      if (v3 == 4)
      {
        return 0;
      }

      v9 = *(a2 + 1) == 16720 && a2[4] == 95;
      if (!v9 && (v8 < 4 || *(a2 + 2) != 1601126736))
      {
        return 0;
      }
    }

    return 1;
  }

  if (a2[v3 - 1] - 48 > 9)
  {
    v7 = v3;
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    if (!v3)
    {
      return 0;
    }

    v6 = memchr(a2, 46, v3);
    if (v3 >= v6 - a2)
    {
      v7 = v6 - a2;
    }

    else
    {
      v7 = v3;
    }

    if (!v6 || v6 - a2 == -1)
    {
      goto LABEL_35;
    }

    if (!v7)
    {
      return 0;
    }
  }

  if (a2[v7 - 1] != 95)
  {
    goto LABEL_34;
  }

  if (v7 == 1)
  {
    return 0;
  }

  v10 = 0;
  v11 = a2;
  while (v11[v7 - 2] - 48 <= 9)
  {
    ++v10;
    --v11;
    if (v7 - 1 == v10)
    {
      goto LABEL_34;
    }
  }

  if ((~v10 + v7) < 2 || *&v11[v7 - 3] != 20820 && *&v11[v7 - 3] != 22868)
  {
LABEL_34:
    v3 = v7;
LABEL_35:
    if (v3 < 2)
    {
      return 0;
    }

    goto LABEL_36;
  }

  v3 = v7 - v10 - 3;
  if (v3 < 2)
  {
    return 0;
  }

LABEL_36:
  v12 = &a2[v3];
  if (*&a2[v3 - 2] != 16724 && *(v12 - 1) != 24916 && *(v12 - 1) != 28500 && *(v12 - 1) != 20308 && *(v12 - 1) != 21076 && *(v12 - 1) != 29268 && *(v12 - 1) != 22356 && *(v12 - 1) != 17254)
  {
    return 0;
  }

  v13 = *a1;
  v21 = 0;
  v14 = swift::Demangle::Demangler::demangleSymbol(v13, a2, v3, v20);
  if (v21 == v20)
  {
    (*(*v21 + 32))(v21);
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v21)
    {
      (*(*v21 + 40))();
    }

    if (!v14)
    {
      return 0;
    }
  }

  if (*(v14 + 16) == 101)
  {
    v15 = *(v14 + 18);
    if ((v15 - 1) >= 2)
    {
      if (v15 != 5 || !*(v14 + 8))
      {
        return 0;
      }

      v14 = *v14;
    }

    v16 = *(*v14 + 16);
    return (v16 - 170) <= 0x29 && ((1 << (v16 + 86)) & 0x31000000C11) != 0 || v16 == 0;
  }

  return 0;
}

void swift::Demangle::Context::getThunkTarget(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = a3;
  v38[0] = a2;
  if (!swift::Demangle::Context::isThunkSymbol(a1, a2, a3))
  {
    goto LABEL_77;
  }

  if (!swift::Demangle::getManglingPrefixLength(a2, v4))
  {
    if (v4 >= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v4;
    }

    v13 = (a2 + v12);
    v14 = &v4[-v12];
    v15 = v14 - 3;
    if (v14 >= 3)
    {
      if (*v13 == 16720 && v13[2] == 95)
      {
        if (v15 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v15 >= 0x17)
          {
            operator new();
          }

          *(a4 + 23) = v15;
          if (v14 != 3)
          {
            memmove(a4, v13 + 3, v15);
          }

          *(a4 + v15) = 0;
          return;
        }

        goto LABEL_89;
      }

      if (v14 != 3 && *v13 == 1601126736)
      {
        v33 = v14 - 4;
        if (v14 - 4 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v33 >= 0x17)
          {
            operator new();
          }

          *(a4 + 23) = v33;
          if (v14 != 4)
          {
            memmove(a4, v13 + 4, v33);
          }

          *(a4 + v33) = 0;
          return;
        }

        goto LABEL_89;
      }
    }

    *(&v37.__r_.__value_.__s + 23) = 2;
    strcpy(&v37, "_T");
    if (v14 >= 2)
    {
      v17 = 2;
    }

    else
    {
      v17 = v14;
    }

    if (!a2)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      __p = 0;
      v35 = 0;
      v36 = 0;
LABEL_45:
      if ((v23 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v22;
      }

      if ((v23 & 0x80u) == 0)
      {
        v25 = v23;
      }

      else
      {
        v25 = v21;
      }

      v26 = std::string::append(&v37, p_p, v25);
      v27 = v26->__r_.__value_.__r.__words[2];
      *a4 = *&v26->__r_.__value_.__l.__data_;
      *(a4 + 2) = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      return;
    }

    v18 = v14 - v17;
    if (v14 - v17 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v18 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v36) = v14 - v17;
      if (v14 >= 3)
      {
        memmove(&__p, &v13[v17], v18);
      }

      *(&__p + v18) = 0;
      v23 = HIBYTE(v36);
      v22 = __p;
      v21 = v35;
      goto LABEL_45;
    }

LABEL_89:
    std::string::__throw_out_of_range[abi:nn200100]();
  }

  v7 = v4[a2 - 1];
  if ((v7 - 48) <= 9 && v4)
  {
    v8 = memchr(a2, 46, v4);
    v9 = v4 >= &v8[-a2] ? &v8[-a2] : v4;
    v10 = &v8[-a2] == -1 || v8 == 0;
    v11 = v10 ? v4 : v9;
    if (v11 != v4)
    {
      goto LABEL_77;
    }
  }

  if (!v4)
  {
    goto LABEL_64;
  }

  if (v7 == 95)
  {
    if (v4 == 1)
    {
LABEL_64:
      v28 = (v4 - 2);
      if (v4 < v4 - 2)
      {
        v28 = v4;
      }

      v37.__r_.__value_.__r.__words[0] = a2;
      v37.__r_.__value_.__l.__size_ = v28;
      llvm::StringRef::str(&v37.__r_.__value_.__l.__data_, a4);
      return;
    }

    v19 = 0;
    v20 = a2;
    while (v4[v20 - 2] - 48 <= 9)
    {
      ++v19;
      --v20;
      if (v4 - 1 == v19)
      {
        goto LABEL_63;
      }
    }

    if (&v4[~v19] >= 2 && (*&v4[v20 - 3] == 20820 || *&v4[v20 - 3] == 22868))
    {
      v4 = (v4 - v19 - 3);
    }
  }

LABEL_63:
  v38[1] = v4;
  if (v4 < 2)
  {
    goto LABEL_64;
  }

  v29 = &v4[a2];
  if (*&v4[a2 - 2] == 21076 || *(v29 - 1) == 29268 || *(v29 - 1) == 22356)
  {
LABEL_77:
    *a4 = 0;
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    return;
  }

  if (*(v29 - 1) != 17254)
  {
    goto LABEL_64;
  }

  llvm::StringRef::str(v38, a4);
  v30 = *(a4 + 23);
  v31 = (v30 & 0x80u) != 0;
  if ((v30 & 0x80u) != 0)
  {
    v30 = *(a4 + 1);
  }

  if (v31)
  {
    v32 = *a4;
  }

  else
  {
    v32 = a4;
  }

  *(v32 + v30 - 1) = 99;
}

uint64_t swift::Demangle::Context::hasSwiftCallingConvention(swift::Demangle::NodeFactory **a1, _WORD *a2, unint64_t a3)
{
  ManglingPrefixLength = swift::Demangle::getManglingPrefixLength(a2, a3);
  v7 = *a1;
  if (ManglingPrefixLength)
  {
    v15 = 0;
    v8 = swift::Demangle::Demangler::demangleSymbol(v7, a2, a3, v14);
    if (v15 == v14)
    {
      (*(*v15 + 32))(v15);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (v15)
    {
      (*(*v15 + 40))();
      if (!v8)
      {
        return 0;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v8 = swift::Demangle::demangleOldSymbolAsNode(a2, a3, v7);
  }

  if (!v8)
  {
    return 0;
  }

LABEL_8:
  if (*(v8 + 16) != 101)
  {
    return 0;
  }

  v9 = *(v8 + 18);
  if ((v9 - 1) >= 2)
  {
    if (v9 != 5 || !*(v8 + 8))
    {
      return 0;
    }

    v8 = *v8;
  }

  result = 0;
  v11 = *(*v8 + 16);
  if (v11 <= 0x8F)
  {
    v13 = v11 > 0xA || ((1 << v11) & 0x640) == 0;
    if (v13 && v11 != 91)
    {
      return 1;
    }
  }

  else
  {
    v12 = v11 - 208 > 0x38 || ((1 << (v11 + 48)) & 0x100020000000001) == 0;
    if (v12 && v11 != 144 && v11 != 174)
    {
      return 1;
    }
  }

  return result;
}

uint64_t swift::Demangle::Context::getModuleName@<X0>(swift::Demangle::Node **a1@<X0>, _WORD *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  ManglingPrefixLength = swift::Demangle::getManglingPrefixLength(a2, a3);
  v9 = *a1;
  if (!ManglingPrefixLength)
  {
    result = swift::Demangle::demangleOldSymbolAsNode(a2, a3, v9);
    v11 = result;
    goto LABEL_7;
  }

  v23 = 0;
  v11 = swift::Demangle::Demangler::demangleSymbol(v9, a2, a3, v22);
  result = v23;
  if (v23 != v22)
  {
    if (v23)
    {
      result = (*(*v23 + 40))();
      if (v11)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

LABEL_7:
    if (v11)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  result = (*(*v23 + 32))(v23);
  if (!v11)
  {
LABEL_8:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

  while (1)
  {
LABEL_15:
    v16 = (v11 + 16);
    v15 = *(v11 + 16);
    if (v15 > 0xF2)
    {
      if (v15 == 243 || v15 == 247)
      {
        goto LABEL_12;
      }

      goto LABEL_27;
    }

    if (v15 == 101)
    {
      v17 = *(v11 + 18);
      v18 = v11;
      if ((v17 - 1) >= 2)
      {
        if (v17 == 5)
        {
          v19 = *v11;
          v18 = *v11;
          goto LABEL_35;
        }

        v18 = 0;
      }

      if (v17 == 1)
      {
        v16 = (v11 + 8);
        goto LABEL_39;
      }

      if (v17 == 2)
      {
        goto LABEL_39;
      }

      if (v17 != 5)
      {
        v16 = 0;
LABEL_39:
        while (v18 != v16)
        {
          v11 = *v18;
          result = swift::Demangle::isFunctionAttr(*(*v18 + 16));
          if ((result & 1) == 0)
          {
            goto LABEL_14;
          }

          ++v18;
        }

        goto LABEL_8;
      }

      v19 = *v11;
LABEL_35:
      v16 = (v19 + 8 * *(v11 + 8));
      goto LABEL_39;
    }

    if (v15 == 163)
    {
      break;
    }

LABEL_27:
    if (swift::Demangle::isSpecialized(v11, v10))
    {
      result = swift::Demangle::getUnspecialized(v11, *a1, v22);
      if (v22[0])
      {
        goto LABEL_8;
      }

      v11 = v23;
      goto LABEL_14;
    }

    v13 = *v16;
    result = swift::Demangle::isContext();
    if (!result)
    {
      goto LABEL_8;
    }

LABEL_12:
    v14 = *(v11 + 18);
    if ((v14 - 1) >= 2)
    {
      if (v14 != 5 || !*(v11 + 8))
      {
        goto LABEL_8;
      }

      v11 = *v11;
    }

    v11 = *v11;
LABEL_14:
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v20 = *v11;
  if (!*v11)
  {
    goto LABEL_8;
  }

  v21 = *(v11 + 8);
  if (v21 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_out_of_range[abi:nn200100]();
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  *(a4 + 23) = v21;
  if (v21)
  {
    result = memmove(a4, v20, v21);
  }

  *(a4 + v21) = 0;
  return result;
}

BOOL swift::Mangle::isNonAscii(char *a1, uint64_t a2)
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

uint64_t swift::Mangle::needsPunycodeEncoding(_BYTE *a1, uint64_t a2)
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

uint64_t swift::Mangle::translateOperatorChar(swift::Mangle *this)
{
  v2 = this - 33;
  result = 97;
  switch(v2)
  {
    case 0:
      result = 110;
      break;
    case 4:
      result = 114;
      break;
    case 5:
      return result;
    case 9:
      result = 109;
      break;
    case 10:
      result = 112;
      break;
    case 12:
      result = 115;
      break;
    case 13:
      result = 122;
      break;
    case 14:
      result = 100;
      break;
    case 27:
      result = 108;
      break;
    case 28:
      result = 101;
      break;
    case 29:
      result = 103;
      break;
    case 30:
      result = 113;
      break;
    case 31:
      result = 99;
      break;
    case 61:
      result = 120;
      break;
    case 91:
      result = 111;
      break;
    case 93:
      result = 116;
      break;
    default:
      result = this;
      break;
  }

  return result;
}

void swift::Mangle::translateOperator(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
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
      v7 = swift::Mangle::translateOperatorChar(v6);
      std::string::push_back(a3, v7);
      --v3;
    }

    while (v3);
  }
}

uint64_t swift::Mangle::getStandardTypeSubst@<X0>(uint64_t __s1@<X0>, size_t __n@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = __s1;
  switch(__n)
  {
    case 3uLL:
      __s1 = memcmp(__s1, "Set", __n);
      if (__s1)
      {
        __s1 = memcmp(v6, "Int", __n);
        if (__s1)
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
      __s1 = memcmp(__s1, "Bool", __n);
      if (__s1)
      {
        __s1 = memcmp(v6, "UInt", __n);
        if (__s1)
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
      __s1 = memcmp(__s1, "Array", __n);
      if (__s1)
      {
        __s1 = memcmp(v6, "Float", __n);
        if (__s1)
        {
          __s1 = memcmp(v6, "Range", __n);
          if (__s1)
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
      __s1 = memcmp(__s1, "Double", __n);
      if (__s1)
      {
        __s1 = memcmp(v6, "String", __n);
        if (__s1)
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
      __s1 = memcmp(__s1, "Numeric", __n);
      if (__s1)
      {
        goto LABEL_98;
      }

      v8 = "j";
      goto LABEL_169;
    case 8uLL:
      __s1 = memcmp(__s1, "Optional", __n);
      if (__s1)
      {
        __s1 = memcmp(v6, "Hashable", __n);
        if (__s1)
        {
          __s1 = memcmp(v6, "Sequence", __n);
          if (__s1)
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
      __s1 = memcmp(__s1, "Character", __n);
      if (__s1)
      {
        __s1 = memcmp(v6, "Substring", __n);
        if (__s1)
        {
          __s1 = memcmp(v6, "Encodable", __n);
          if (__s1)
          {
            if (*v6 == 0x6C6261646F636544 && *(v6 + 8) == 101)
            {
              v8 = "e";
            }

            else
            {
              __s1 = memcmp(v6, "Equatable", __n);
              if (__s1)
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
      __s1 = memcmp(__s1, "Dictionary", __n);
      if (__s1)
      {
        __s1 = memcmp(v6, "Comparable", __n);
        if (__s1)
        {
          if (*v6 == 0x697463656C6C6F43 && *(v6 + 4) == 28271)
          {
            v8 = "l";
          }

          else
          {
            __s1 = memcmp(v6, "Strideable", __n);
            if (__s1)
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
      __s1 = memcmp(__s1, "ClosedRange", __n);
      if (__s1)
      {
        goto LABEL_98;
      }

      v8 = "N";
      goto LABEL_169;
    case 0xDuLL:
      __s1 = memcmp(__s1, "UnsafePointer", __n);
      if (!__s1)
      {
        v8 = "P";
        goto LABEL_169;
      }

      __s1 = memcmp(v6, "FloatingPoint", __n);
      if (!__s1)
      {
        v8 = "F";
        goto LABEL_169;
      }

      __s1 = memcmp(v6, "SignedInteger", __n);
      if (!__s1)
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
      __s1 = memcmp(__s1, "DefaultIndices", __n);
      if (__s1)
      {
        __s1 = memcmp(v6, "StringProtocol", __n);
        if (__s1)
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
      __s1 = memcmp(__s1, "UnsignedInteger", __n);
      if (!__s1)
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
      __s1 = memcmp(__s1, "ObjectIdentifier", __n);
      if (__s1)
      {
        __s1 = memcmp(v6, "UnsafeRawPointer", __n);
        if (__s1)
        {
          __s1 = memcmp(v6, "IteratorProtocol", __n);
          if (__s1)
          {
            __s1 = memcmp(v6, "RawRepresentable", __n);
            if (__s1)
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
      __s1 = memcmp(__s1, "MutableCollection", __n);
      if (__s1)
      {
        goto LABEL_98;
      }

      v8 = "M";
      goto LABEL_169;
    case 0x13uLL:
      __s1 = memcmp(__s1, "UnsafeBufferPointer", __n);
      if (__s1)
      {
        __s1 = memcmp(v6, "BinaryFloatingPoint", __n);
        if (__s1)
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
      __s1 = memcmp(__s1, "UnsafeMutablePointer", __n);
      if (__s1)
      {
        goto LABEL_98;
      }

      v8 = "p";
      goto LABEL_169;
    case 0x15uLL:
      __s1 = memcmp(__s1, "RandomNumberGenerator", __n);
      if (__s1)
      {
        goto LABEL_98;
      }

      v8 = "G";
      goto LABEL_169;
    case 0x16uLL:
      __s1 = memcmp(__s1, "UnsafeRawBufferPointer", __n);
      if (__s1)
      {
        __s1 = memcmp(v6, "RandomAccessCollection", __n);
        if (__s1)
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
      __s1 = memcmp(__s1, "UnsafeMutableRawPointer", __n);
      if (__s1)
      {
        __s1 = memcmp(v6, "BidirectionalCollection", __n);
        if (__s1)
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
      __s1 = memcmp(__s1, "UnsafeMutableBufferPointer", __n);
      if (!__s1)
      {
        v8 = "r";
        goto LABEL_169;
      }

      __s1 = memcmp(v6, "RangeReplaceableCollection", __n);
      if (!__s1)
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
        switch(__n)
        {
          case 4uLL:
            __s1 = memcmp(v6, "Task", __n);
            if (__s1)
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
            __s1 = memcmp(v6, "Executor", __n);
            if (__s1)
            {
              goto LABEL_151;
            }

            v18 = "cF";
            goto LABEL_172;
          case 9uLL:
            __s1 = memcmp(v6, "TaskGroup", __n);
            if (__s1)
            {
              __s1 = memcmp(v6, "MainActor", __n);
              if (__s1)
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
            __s1 = memcmp(v6, "UnownedJob", __n);
            if (__s1)
            {
              goto LABEL_151;
            }

            v18 = "cJ";
            goto LABEL_172;
          case 0xBuLL:
            __s1 = memcmp(v6, "AsyncStream", __n);
            if (__s1)
            {
              goto LABEL_151;
            }

            v18 = "cS";
            goto LABEL_172;
          case 0xCuLL:
            __s1 = memcmp(v6, "TaskExecutor", __n);
            if (__s1)
            {
              __s1 = memcmp(v6, "TaskPriority", __n);
              if (__s1)
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
            __s1 = memcmp(v6, "AsyncSequence", __n);
            if (__s1)
            {
              goto LABEL_151;
            }

            v18 = "ci";
            goto LABEL_172;
          case 0xEuLL:
            __s1 = memcmp(v6, "SerialExecutor", __n);
            if (__s1)
            {
              goto LABEL_151;
            }

            v18 = "cf";
            goto LABEL_172;
          case 0x11uLL:
            __s1 = memcmp(v6, "CancellationError", __n);
            if (__s1)
            {
              __s1 = memcmp(v6, "ThrowingTaskGroup", __n);
              if (__s1)
              {
                __s1 = memcmp(v6, "UnsafeCurrentTask", __n);
                if (__s1)
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
            __s1 = memcmp(v6, "UnsafeContinuation", __n);
            if (__s1)
            {
              goto LABEL_151;
            }

            v18 = "cc";
            goto LABEL_172;
          case 0x13uLL:
            __s1 = memcmp(v6, "CheckedContinuation", __n);
            if (__s1)
            {
              __s1 = memcmp(v6, "AsyncThrowingStream", __n);
              if (__s1)
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
            __s1 = memcmp(v6, "UnownedSerialExecutor", __n);
            if (__s1)
            {
              __s1 = memcmp(v6, "AsyncIteratorProtocol", __n);
              if (__s1)
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
      return __s1;
    case 0x1DuLL:
      __s1 = memcmp(__s1, "UnsafeMutableRawBufferPointer", __n);
      if (__s1)
      {
        goto LABEL_98;
      }

      v8 = "w";
      goto LABEL_169;
    case 0x21uLL:
      if (*__s1 != 0x656C65726F747541 || *(__s1 + 8) != 0x736E55676E697361 || *(__s1 + 16) != 0x626174754D656661 || *(__s1 + 24) != 0x65746E696F50656CLL || *(__s1 + 32) != 114)
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

const char *swift::Demangle::getNodeKindString(unsigned int a1)
{
  if (a1 > 0x175)
  {
    return "Demangle::Node::Kind::???";
  }

  else
  {
    return off_29F282950[a1];
  }
}

double swift::Demangle::getNodeTreeAsString@<D0>(swift::Demangle *this@<X0>, std::string *a2@<X8>)
{
  memset(&v5, 0, sizeof(v5));
  printNode(&v5, this, 0);
  result = *&v5.__r_.__value_.__l.__data_;
  *a2 = v5;
  return result;
}

void printNode(std::string *a1, const swift::Demangle::Node *a2, int a3)
{
  for (i = 2 * a3; i; --i)
  {
    std::string::push_back(a1, 32);
  }

  if (a2)
  {
    std::string::append(a1, "kind=", 5uLL);
    v7 = a2 + 16;
    NodeKindString = swift::Demangle::getNodeKindString(*(a2 + 8));
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
      swift::Demangle::DemanglerPrinter::operator<<(a1, *a2);
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

void swift::Demangle::Node::dump(swift::Demangle::Node *this)
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

  fputs(p_p, *MEMORY[0x29EDCA610]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t swift::Demangle::Demangler::dump(swift::Demangle::Demangler *this)
{
  v2 = MEMORY[0x29EDCA610];
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

std::string *swift::Demangle::DemanglerPrinter::operator<<(std::string *a1, uint64_t a2)
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

std::string *swift::Demangle::DemanglerPrinter::writeHex(std::string *a1, uint64_t a2)
{
  snprintf(__str, 0x20uLL, "%llX", a2);
  std::string::append(a1, __str);
  return a1;
}

double swift::Demangle::genericParameterName@<D0>(swift::Demangle *this@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
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

std::string *swift::Demangle::NodePrinter::printChildren(std::string *this, swift::Demangle::Node *const *a2, swift::Demangle::Node *const *a3, int a4, const char *a5)
{
  if (a2 != a3)
  {
    v8 = a2;
    v9 = this;
    do
    {
      v10 = *v8++;
      this = swift::Demangle::NodePrinter::print(v9, v10, a4 + 1, 0);
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

uint64_t swift::Demangle::NodePrinter::print(swift::Demangle::NodePrinter *this, swift::Demangle::Node *a2, const swift::Demangle::DemangleOptions *a3, const swift::Demangle::DemangleOptions *a4)
{
  v5 = a3 < 0x301;
  if (a3 > 0x300)
  {
LABEL_826:
    std::string::append((this + 8), "<<too complex>>", 0xFuLL);
    result = 0;
    v7 = v5;
    goto LABEL_830;
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
      goto LABEL_828;
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
        result = swift::Demangle::NodePrinter::printEntity(this, a2, v6, a4 & 1, 2, 0, v422, v421, v635, "", 0);
        goto LABEL_830;
      case 1:
        if (*(this + 33) != 1 || *(this + 34) != 1)
        {
          goto LABEL_829;
        }

        v333 = *(a2 + 18);
        v334 = a2;
        if (v333 == 2)
        {
          goto LABEL_932;
        }

        if (v333 == 5 && *(a2 + 2) >= 2u)
        {
          v334 = *a2;
LABEL_932:
          v335 = *(v334 + 1);
        }

        else
        {
          v335 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v335, v6 + 1, 0);
        std::string::append((this + 8), ".(unknown context at ", 0x15uLL);
        v613 = *(a2 + 18);
        v614 = a2;
        if ((v613 - 1) < 2)
        {
          goto LABEL_1842;
        }

        if (v613 == 5 && *(a2 + 2))
        {
          v614 = *a2;
LABEL_1842:
          v615 = *v614;
        }

        else
        {
          v615 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v615, v6 + 1, 0);
        std::string::append((this + 8), ")", 1uLL);
        if (*(a2 + 18) != 5)
        {
          goto LABEL_829;
        }

        if (*(a2 + 2) < 3u)
        {
          goto LABEL_829;
        }

        v621 = *(*a2 + 16);
        v622 = *(v621 + 18);
        if ((v622 - 1) >= 2 && (v622 != 5 || !*(v621 + 8)))
        {
          goto LABEL_829;
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

        swift::Demangle::NodePrinter::print(this, v623, v6 + 1, 0);
        v606 = (this + 8);
        v607 = 62;
        goto LABEL_1787;
      case 2:
        v304 = *(a2 + 18);
        if ((v304 - 1) >= 2 && (v304 != 5 || !*(a2 + 2)))
        {
          goto LABEL_829;
        }

        std::string::append((this + 8), "(", 1uLL);
        v305 = *(a2 + 18);
        v306 = a2;
        if ((v305 - 1) < 2)
        {
          goto LABEL_872;
        }

        if (v305 != 5 || !*(a2 + 2))
        {
          goto LABEL_1550;
        }

        v306 = *a2;
LABEL_872:
        swift::Demangle::NodePrinter::print(this, *v306, v6 + 1, 0);
        v307 = 1;
        while (2)
        {
          v309 = *(a2 + 18);
          if (v309 == 2)
          {
            goto LABEL_878;
          }

          if (v309 != 5)
          {
            goto LABEL_1550;
          }

          v309 = *(a2 + 2);
LABEL_878:
          if (v309 <= v307)
          {
            goto LABEL_1550;
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
              goto LABEL_873;
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
            goto LABEL_874;
          }

LABEL_873:
          v308 = 0;
LABEL_874:
          swift::Demangle::NodePrinter::print(this, v308, v6 + 1, 0);
          ++v307;
          continue;
        }

      case 3:
        (*(*this + 24))(this, 0, a2, v6, *(this + 47));
        goto LABEL_829;
      case 4:
      case 0x76:
      case 0x12F:
      case 0x163:
      case 0x164:
        goto LABEL_830;
      case 5:
        v443 = *(a2 + 18);
        v444 = a2;
        if ((v443 - 1) < 2)
        {
          goto LABEL_1239;
        }

        if (v443 == 5 && *(a2 + 2))
        {
          v444 = *a2;
LABEL_1239:
          v445 = *v444;
        }

        else
        {
          v445 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v445, v6 + 1, 0);
        std::string::push_back((this + 8), 46);
        if (*(a2 + 18) == 5)
        {
          a2 = *a2;
        }

        v566 = *(a2 + 1);
        v272 = *v566;
        v274 = *(v566 + 8);
        v273 = (this + 8);
        goto LABEL_828;
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
        v642 = &unk_2A20082F8;
        v643 = swift::Demangle::genericParameterName;
        v644 = &v642;
        swift::Demangle::nodeToString(v463, &__str, a3, &v645);
        v516 = "accessor macro @";
        goto LABEL_1467;
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
        swift::Demangle::NodePrinter::print(this, v137, v6, 0);
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
        swift::Demangle::NodePrinter::print(this, v142, v6, 0);
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
        goto LABEL_834;
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
        v642 = &unk_2A20082F8;
        v643 = swift::Demangle::genericParameterName;
        v644 = &v642;
        swift::Demangle::nodeToString(v324, &__str, a3, &v645);
        v516 = "body macro @";
        goto LABEL_1467;
      case 0xD:
      case 0xE:
      case 0xF:
      case 0x10:
      case 0x11:
      case 0x12:
        swift::Demangle::NodePrinter::printBoundGeneric(this, a2, v6);
        goto LABEL_829;
      case 0x13:
      case 0x4E:
        LODWORD(v635) = -1;
        v278 = a4 & 1;
        v279 = this;
        v280 = a2;
        v281 = v6;
        v282 = 2;
        goto LABEL_1541;
      case 0x14:
      case 0x18:
      case 0x67:
      case 0x6C:
      case 0x74:
      case 0x9B:
        goto LABEL_1363;
      case 0x15:
        v272 = "Builtin.TheTupleType";
        goto LABEL_1038;
      case 0x16:
        std::string::append((this + 8), "Builtin.FixedArray<", 0x13uLL);
        v474 = *(a2 + 18);
        v475 = a2;
        if ((v474 - 1) < 2)
        {
          goto LABEL_1318;
        }

        if (v474 == 5 && *(a2 + 2))
        {
          v475 = *a2;
LABEL_1318:
          v476 = *v475;
        }

        else
        {
          v476 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v476, v6 + 1, 0);
        v545 = ", ";
        v546 = (this + 8);
        v547 = 2;
        goto LABEL_1654;
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
        goto LABEL_1541;
      case 0x1A:
        v38 = "class metadata base offset for ";
        goto LABEL_364;
      case 0x1B:
        std::string::append((this + 8), "concrete protocol conformance ", 0x1EuLL);
        v35 = *(a2 + 18);
        if (v35 == 4)
        {
          std::string::append((this + 8), "#", 1uLL);
          swift::Demangle::DemanglerPrinter::operator<<((this + 8), *a2);
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
        swift::Demangle::NodePrinter::print(this, v37, v6, 0);
        std::string::append((this + 8), " to ", 4uLL);
        v189 = *(a2 + 18);
        v190 = a2;
        if (v189 == 2)
        {
          goto LABEL_514;
        }

        if (v189 == 5 && *(a2 + 2) >= 2u)
        {
          v190 = *a2;
LABEL_514:
          v191 = *(v190 + 1);
        }

        else
        {
          v191 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v191, v6, 0);
        if (*(a2 + 18) != 5)
        {
          goto LABEL_829;
        }

        if (*(a2 + 2) < 3u)
        {
          goto LABEL_829;
        }

        v192 = *(*a2 + 16);
        v193 = *(v192 + 18);
        if ((v193 - 1) >= 2 && (v193 != 5 || !*(v192 + 8)))
        {
          goto LABEL_829;
        }

        v155 = " with conditional requirements: ";
        v156 = (this + 8);
        v157 = 32;
        goto LABEL_522;
      case 0x1C:
        v389 = "pack protocol conformance ";
        v390 = (this + 8);
        v391 = 26;
        goto LABEL_1514;
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
        v642 = &unk_2A20082F8;
        v643 = swift::Demangle::genericParameterName;
        v644 = &v642;
        swift::Demangle::nodeToString(v327, &__str, a3, &v645);
        v516 = "conformance macro @";
        goto LABEL_1467;
      case 0x1E:
        v507 = *(a2 + 18) == 5 && *(a2 + 2) > 2u;
        LODWORD(v635) = -1;
        result = swift::Demangle::NodePrinter::printEntity(this, a2, v6, a4 & 1, 2, v507, "init", 4uLL, v635, "", 0);
        goto LABEL_830;
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
        goto LABEL_1328;
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
        result = swift::Demangle::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, "default argument ", 0x11uLL, v635, "", 0);
        goto LABEL_830;
      case 0x23:
        v389 = "dependent associated conformance ";
        v390 = (this + 8);
        v391 = 33;
        goto LABEL_1514;
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
        swift::Demangle::NodePrinter::print(this, *(v112 + 1), v6 + 1, 0);
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
            goto LABEL_808;
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
          goto LABEL_630;
        }

        if (v118 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
LABEL_630:
          v9 = *(a2 + 1);
          goto LABEL_809;
        }

LABEL_808:
        v9 = 0;
LABEL_809:
        v6 = (v6 + 1);
        swift::Demangle::NodePrinter::print(this, v120, v6, 0);
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

        goto LABEL_829;
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
            goto LABEL_805;
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
          goto LABEL_624;
        }

        if (v98 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
LABEL_624:
          v9 = *(a2 + 1);
          goto LABEL_806;
        }

LABEL_805:
        v9 = 0;
LABEL_806:
        v6 = (v6 + 1);
        swift::Demangle::NodePrinter::print(this, v100, v6, 0);
        std::string::append((this + 8), " == ", 4uLL);
        goto LABEL_7;
      case 0x29:
        v348 = *(a2 + 18);
        v349 = a2;
        if ((v348 - 1) < 2)
        {
          goto LABEL_969;
        }

        if (v348 == 5)
        {
          if (!*(a2 + 2))
          {
            v350 = 0;
            goto LABEL_1861;
          }

          v349 = *a2;
LABEL_969:
          v350 = *v349;
        }

        else
        {
          v350 = 0;
        }

        if (v348 == 2)
        {
LABEL_1707:
          v580 = *(a2 + 1);
          goto LABEL_1862;
        }

        if (v348 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
          goto LABEL_1707;
        }

LABEL_1861:
        v580 = 0;
LABEL_1862:
        swift::Demangle::NodePrinter::print(this, v350, v6 + 1, 0);
        std::string::append((this + 8), ".shape == ", 0xAuLL);
        swift::Demangle::NodePrinter::print(this, v580, v6 + 1, 0);
        v564 = ".shape";
        v574 = (this + 8);
        v575 = 6;
        goto LABEL_1662;
      case 0x2A:
        v336 = *(a2 + 18);
        v337 = a2;
        if ((v336 - 1) < 2)
        {
          goto LABEL_938;
        }

        if (v336 == 5)
        {
          if (!*(a2 + 2))
          {
            v338 = 0;
            goto LABEL_1844;
          }

          v337 = *a2;
LABEL_938:
          v338 = *v337;
        }

        else
        {
          v338 = 0;
        }

        v578 = a2;
        if (v336 == 2)
        {
LABEL_1698:
          v579 = *(v578 + 1);
          goto LABEL_1845;
        }

        if (v336 == 5 && *(a2 + 2) >= 2u)
        {
          v578 = *a2;
          goto LABEL_1698;
        }

LABEL_1844:
        v579 = 0;
LABEL_1845:
        swift::Demangle::NodePrinter::print(this, v338, v6 + 1, 0);
        std::string::append((this + 8), ": ", 2uLL);
        v616 = **v579;
        if (v616 > 0x51)
        {
          switch(v616)
          {
            case 'U':
              v617 = "_UnknownLayout";
              goto LABEL_1905;
            case 'T':
LABEL_1858:
              v617 = "_Trivial";
              v618 = 8;
              goto LABEL_1906;
            case 'R':
              v617 = "_RefCountedObject";
              v618 = 17;
              goto LABEL_1906;
          }
        }

        else
        {
          switch(v616)
          {
            case 'C':
              v617 = "AnyObject";
              v618 = 9;
              goto LABEL_1906;
            case 'D':
              v617 = "_NativeClass";
              v618 = 12;
              goto LABEL_1906;
            case 'N':
              v617 = "_NativeRefCountedObject";
              v618 = 23;
              goto LABEL_1906;
          }
        }

        v619 = v616 & 0xFFFFFFDF;
        if (v619 != 77)
        {
          if (v619 == 69)
          {
            goto LABEL_1858;
          }

          v618 = 0;
          v617 = 0;
LABEL_1906:
          std::string::append((this + 8), v617, v618);
          if (*(a2 + 18) != 5 || *(a2 + 2) < 3u)
          {
            goto LABEL_829;
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

          swift::Demangle::NodePrinter::print(this, v634, v6 + 1, 0);
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

LABEL_1255:
            swift::Demangle::NodePrinter::print(this, v454, v6 + 1, 0);
          }

LABEL_1550:
          v272 = ")";
LABEL_1798:
          v273 = (this + 8);
          v274 = 1;
LABEL_828:
          std::string::append(v273, v272, v274);
          goto LABEL_829;
        }

        v617 = "_TrivialAtMost";
LABEL_1905:
        v618 = 14;
        goto LABEL_1906;
      case 0x2C:
      case 0x2F:
        (*(*this + 32))(this, a2, v6);
        goto LABEL_829;
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
LABEL_737:
            v9 = 0;
LABEL_738:
            v6 = (v6 + 1);
            swift::Demangle::NodePrinter::print(this, v64, v6, 0);
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

LABEL_741:
                v246 = *v247;
              }

              v246 = 0;
              if (v249 == 5)
              {
                v246 = 0;
                if (*(v247 + 2))
                {
                  v247 = *v247;
                  goto LABEL_741;
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
LABEL_603:
          v9 = *(a2 + 1);
          goto LABEL_738;
        }

        if (v62 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
          goto LABEL_603;
        }

        goto LABEL_737;
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
        swift::Demangle::NodePrinter::print(this, v130, v6, 0);
        v131 = " to ";
        goto LABEL_534;
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
        swift::Demangle::NodePrinter::print(this, v125, v6, 0);
        v131 = " of ";
LABEL_534:
        v194 = (this + 8);
        v195 = 4;
        goto LABEL_535;
      case 0x34:
        LODWORD(v635) = -1;
        result = swift::Demangle::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, "deinit", 6uLL, v635, "", 0);
        goto LABEL_830;
      case 0x35:
        v437 = *(a2 + 18);
        if ((v437 - 1) < 2)
        {
          goto LABEL_1205;
        }

        if (v437 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1205:
          v407 = *a2;
        }

        else
        {
          v407 = 0;
        }

        v528 = "didset";
        goto LABEL_1665;
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
        goto LABEL_1798;
      case 0x37:
        if (*(this + 43))
        {
          goto LABEL_829;
        }

        v272 = "distributed thunk ";
        goto LABEL_1020;
      case 0x38:
        if (*(this + 43))
        {
          goto LABEL_829;
        }

        v272 = "distributed accessor for ";
        goto LABEL_1124;
      case 0x39:
        v272 = "dynamic ";
        goto LABEL_1794;
      case 0x3A:
        v272 = "super ";
        goto LABEL_1375;
      case 0x3B:
      case 0x57:
        v272 = "Self";
        goto LABEL_1263;
      case 0x3C:
        if (*(this + 43))
        {
          goto LABEL_829;
        }

        v272 = "dynamically replaceable thunk for ";
        v273 = (this + 8);
        v274 = 34;
        goto LABEL_828;
      case 0x3D:
        if (*(this + 43))
        {
          goto LABEL_829;
        }

        v272 = "dynamically replaceable key for ";
        v273 = (this + 8);
        v274 = 32;
        goto LABEL_828;
      case 0x3E:
        if (*(this + 43))
        {
          goto LABEL_829;
        }

        v272 = "dynamically replaceable variable for ";
        v273 = (this + 8);
        v274 = 37;
        goto LABEL_828;
      case 0x40:
        v38 = "enum case for ";
        goto LABEL_179;
      case 0x41:
        v272 = "<ERROR TYPE>";
        goto LABEL_1298;
      case 0x44:
        v272 = "@Sendable ";
        goto LABEL_1701;
      case 0x45:
        v499 = *(a2 + 18);
        if ((v499 - 1) >= 2 && (v499 != 5 || !*(a2 + 2)))
        {
          goto LABEL_829;
        }

        std::string::push_back((this + 8), 64);
        v500 = *(a2 + 18);
        if ((v500 - 1) < 2)
        {
          goto LABEL_1389;
        }

        if (v500 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1389:
          v501 = *a2;
        }

        else
        {
          v501 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v501, v6 + 1, 0);
        v606 = (this + 8);
        v607 = 32;
LABEL_1787:
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
LABEL_843:
            std::string::append(v286, v285, v284);
            goto LABEL_844;
          default:
LABEL_844:
            std::string::push_back((this + 8), 32);
            goto LABEL_829;
        }

        v286 = (this + 8);
        v284 = 9;
        goto LABEL_843;
      case 0x47:
        v328 = *(a2 + 18);
        v329 = a2;
        if (v328 == 2)
        {
          goto LABEL_924;
        }

        if (v328 == 5)
        {
          v330 = *(a2 + 2);
          if (v330 != 2)
          {
            v331 = 0;
LABEL_1810:
            if (v331 < v330)
            {
              a2 = *a2;
              goto LABEL_1812;
            }

            goto LABEL_1813;
          }

          v329 = *a2;
LABEL_924:
          swift::Demangle::NodePrinter::print(this, *v329, v6 + 1, 0);
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

LABEL_1812:
            v608 = *(a2 + v331);
            goto LABEL_1814;
          case 2:
            goto LABEL_1812;
          case 5:
            v330 = *(a2 + 2);
            goto LABEL_1810;
        }

LABEL_1813:
        v608 = 0;
LABEL_1814:
        swift::Demangle::NodePrinter::print(this, v608, v6 + 1, 0);
        v564 = ".Type";
        v574 = (this + 8);
        v575 = 5;
LABEL_1662:
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
        result = swift::Demangle::NodePrinter::printEntity(this, a2, v6, a4 & 1, v512, 0, "closure #", 9uLL, v635, "", 0);
        goto LABEL_830;
      case 0x49:
        if (*(this + 33) != 1 || *(this + 34) != 1)
        {
          goto LABEL_816;
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

        swift::Demangle::NodePrinter::print(this, v61, v6 + 1, 1);
        std::string::append((this + 8), "):", 2uLL);
LABEL_816:
        v269 = *(a2 + 18);
        v270 = a2;
        if (v269 == 2)
        {
          goto LABEL_820;
        }

        if (v269 == 5 && *(a2 + 2) >= 2u)
        {
          v270 = *a2;
LABEL_820:
          v271 = *(v270 + 1);
        }

        else
        {
          v271 = 0;
        }

        v6 = (v6 + 1);
        swift::Demangle::NodePrinter::print(this, v271, v6, 0);
        if (*(a2 + 18) == 5 && *(a2 + 2) == 3 && (*(this + 51) & 1) == 0)
        {
          goto LABEL_825;
        }

        goto LABEL_829;
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
        v642 = &unk_2A20082F8;
        v643 = swift::Demangle::genericParameterName;
        v644 = &v642;
        swift::Demangle::nodeToString(v440, &__str, a3, &v645);
        v516 = "extension macro @";
        goto LABEL_1467;
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
        swift::Demangle::NodePrinter::print(this, v45, v6, 0);
        v131 = "field offset for ";
        goto LABEL_527;
      case 0x4C:
        LODWORD(v635) = **(*a2 + 16) + 1;
        result = swift::Demangle::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 1, "freestanding macro expansion #", 0x1EuLL, v635, "", 0);
        goto LABEL_830;
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
        goto LABEL_1007;
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
LABEL_1713:
              std::string::append((this + 8), " and ", 5uLL);
              goto LABEL_1714;
            }

LABEL_1526:
            if ((v392 & 0x200) != 0)
            {
LABEL_1715:
              std::string::append((this + 8), " and ", 5uLL);
LABEL_1716:
              std::string::append((this + 8), "Guaranteed To Owned", 0x13uLL);
              if ((v392 & 0x100) == 0)
              {
                goto LABEL_829;
              }

              goto LABEL_1717;
            }

LABEL_1527:
            if ((v392 & 0x100) == 0)
            {
              goto LABEL_829;
            }

LABEL_1717:
            std::string::append((this + 8), " and ", 5uLL);
            goto LABEL_1718;
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
                      goto LABEL_828;
                    }

                    if (v392 != 1)
                    {
                      goto LABEL_830;
                    }

                    v272 = "Constant Propagated Global";
                  }

                  else
                  {
                    if (v392 == 2)
                    {
                      v272 = "Constant Propagated Integer";
                      goto LABEL_1936;
                    }

                    if (v392 == 3)
                    {
                      v272 = "Constant Propagated Float";
LABEL_1124:
                      v273 = (this + 8);
                      v274 = 25;
                      goto LABEL_828;
                    }

                    v272 = "Constant Propagated String";
                  }

LABEL_1091:
                  v273 = (this + 8);
                  v274 = 26;
                  goto LABEL_828;
                }

                if (v392 < 8)
                {
                  if (v392 == 5)
                  {
                    v272 = "Closure Propagated";
LABEL_1020:
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

LABEL_1532:
                    v273 = (this + 8);
                    v274 = 23;
                  }

                  goto LABEL_828;
                }

                if (v392 <= 8)
                {
                  v272 = "InOut Converted to Out";
LABEL_1028:
                  v273 = (this + 8);
                  v274 = 22;
                  goto LABEL_828;
                }

                if (v392 > 63)
                {
                  if (v392 <= 255)
                  {
                    if (v392 != 64 && v392 != 128)
                    {
                      goto LABEL_830;
                    }
                  }

                  else if (v392 != 256 && v392 != 512 && v392 != 1024)
                  {
                    goto LABEL_830;
                  }

                  printer_unreachable("option sets should have been handled earlier");
                }

                if (v392 == 9)
                {
                  v272 = "Constant Propagated KeyPath";
LABEL_1936:
                  v273 = (this + 8);
                  v274 = 27;
                  goto LABEL_828;
                }

LABEL_830:
                if (v7)
                {
                  return 0;
                }

                return result;
              }

LABEL_1718:
              v272 = "Exploded";
LABEL_1794:
              v273 = (this + 8);
              v274 = 8;
              goto LABEL_828;
            }

            goto LABEL_1716;
          }

LABEL_1714:
          std::string::append((this + 8), "Owned To Guaranteed", 0x13uLL);
          if ((v392 & 0x200) != 0)
          {
            goto LABEL_1715;
          }

          goto LABEL_1527;
        }

        std::string::append((this + 8), "Dead", 4uLL);
        if ((v392 & 0x80) != 0)
        {
          goto LABEL_1713;
        }

        goto LABEL_1526;
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
        v642 = &unk_2A20082F8;
        v643 = swift::Demangle::genericParameterName;
        v644 = &v642;
        swift::Demangle::demangleSymbolAsString(v480, v481, &__str, a4);
      case 0x55:
        std::string::append((this + 8), "any ", 4uLL);
        v314 = *(a2 + 18);
        v315 = a2;
        if ((v314 - 1) < 2)
        {
          goto LABEL_892;
        }

        if (v314 == 5 && *(a2 + 2))
        {
          v315 = *a2;
LABEL_892:
          v316 = *v315;
        }

        else
        {
          v316 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v316, v6 + 1, 0);
        v545 = "<";
        v546 = (this + 8);
        v547 = 1;
LABEL_1654:
        std::string::append(v546, v545, v547);
        v572 = *(a2 + 18);
        if (v572 == 2)
        {
          goto LABEL_1658;
        }

        if (v572 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
LABEL_1658:
          v573 = *(a2 + 1);
        }

        else
        {
          v573 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v573, v6 + 1, 0);
        v564 = ">";
        goto LABEL_1661;
      case 0x56:
        v373 = ", ";
        goto LABEL_1359;
      case 0x58:
        v376 = "generic partial specialization";
        v377 = this;
        v378 = a2;
        v379 = 30;
        goto LABEL_1407;
      case 0x59:
        v376 = "generic not-reabstracted partial specialization";
        v377 = this;
        v378 = a2;
        v379 = 47;
LABEL_1407:
        swift::Demangle::NodePrinter::printSpecializationPrefix(v377, v378, v376, v379, v6, "Signature = ", 0xCuLL);
        goto LABEL_829;
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
        goto LABEL_1007;
      case 0x5E:
        v300 = "generic not re-abstracted specialization";
        v301 = this;
        v302 = a2;
        v303 = 40;
        goto LABEL_1007;
      case 0x60:
        v471 = *(a2 + 18);
        v472 = a2;
        if ((v471 - 1) < 2)
        {
          goto LABEL_1313;
        }

        if (v471 == 5 && *(a2 + 2))
        {
          v472 = *a2;
LABEL_1313:
          v473 = *v472;
        }

        else
        {
          v473 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v473, v6 + 1, 0);
        v567 = *(a2 + 18);
        if (v567 != 2)
        {
          if (v567 != 5)
          {
            goto LABEL_829;
          }

          v567 = *(a2 + 2);
          if (v567 < 2)
          {
            goto LABEL_829;
          }
        }

        v568 = v567;
        std::string::append((this + 8), " with ", 6uLL);
        v569 = *(a2 + 18);
        v570 = a2;
        if (v569 == 2)
        {
          goto LABEL_1651;
        }

        if (v569 == 5 && *(a2 + 2) >= 2u)
        {
          v570 = *a2;
LABEL_1651:
          v571 = *(v570 + 1);
        }

        else
        {
          v571 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v571, v6 + 1, 0);
        if (v568 == 2)
        {
          goto LABEL_829;
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
              goto LABEL_1737;
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
            goto LABEL_1738;
          }

LABEL_1737:
          v584 = 0;
LABEL_1738:
          swift::Demangle::NodePrinter::print(this, v584, v6 + 1, 0);
          if (v568 == ++v583)
          {
            goto LABEL_829;
          }
        }

      case 0x61:
        v300 = "generic pre-specialization";
        v301 = this;
        v302 = a2;
        v303 = 26;
        goto LABEL_1007;
      case 0x62:
        v300 = "inlined generic function";
        v301 = this;
        v302 = a2;
        v303 = 24;
LABEL_1007:
        swift::Demangle::NodePrinter::printSpecializationPrefix(v301, v302, v300, v303, v6, 0, 0);
        goto LABEL_829;
      case 0x63:
        v38 = "generic type metadata pattern for ";
        v39 = (this + 8);
        v40 = 34;
        goto LABEL_373;
      case 0x64:
        v351 = *(a2 + 18);
        if ((v351 - 1) < 2)
        {
          goto LABEL_1286;
        }

        if (v351 != 5 || !*(a2 + 2))
        {
          goto LABEL_1492;
        }

        goto LABEL_1285;
      case 0x65:
      case 0xF6:
        goto LABEL_1515;
      case 0x66:
        v464 = *(a2 + 18);
        if ((v464 - 1) < 2)
        {
          goto LABEL_1286;
        }

        if (v464 == 5 && *(a2 + 2))
        {
LABEL_1285:
          a2 = *a2;
LABEL_1286:
          v407 = *a2;
        }

        else
        {
LABEL_1492:
          v407 = 0;
        }

        v528 = "getter";
        goto LABEL_1665;
      case 0x68:
      case 0xAB:
      case 0xE3:
      case 0x170:
        goto LABEL_1060;
      case 0x69:
        LODWORD(v635) = -1;
        result = swift::Demangle::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, "__ivar_initializer", 0x12uLL, v635, "", 0);
        goto LABEL_830;
      case 0x6A:
        LODWORD(v635) = -1;
        result = swift::Demangle::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, "__ivar_destroyer", 0x10uLL, v635, "", 0);
        goto LABEL_830;
      case 0x6B:
        v272 = "@escaping";
        goto LABEL_1835;
      case 0x6D:
        std::string::append((this + 8), "@differentiable", 0xFuLL);
        v342 = *a2;
        switch(v342)
        {
          case 'f':
            v272 = "(_forward)";
LABEL_1701:
            v273 = (this + 8);
            v274 = 10;
            goto LABEL_828;
          case 'r':
            v272 = "(reverse)";
            break;
          case 'l':
            v272 = "(_linear)";
            break;
          default:
            goto LABEL_829;
        }

        goto LABEL_1835;
      case 0x6E:
        v272 = "@isolated(any)";
        goto LABEL_1522;
      case 0x6F:
        v272 = "sending";
        goto LABEL_1432;
      case 0x70:
      case 0x71:
      case 0x72:
      case 0x73:
        v284 = *(a2 + 1);
        if (!v284)
        {
          goto LABEL_829;
        }

        v285 = *a2;
        v286 = (this + 8);
        goto LABEL_843;
      case 0x75:
        std::string::append((this + 8), "@convention(", 0xCuLL);
        v367 = *(a2 + 18);
        if (v367 == 1)
        {
          goto LABEL_1733;
        }

        v368 = a2;
        if (v367 == 2)
        {
          goto LABEL_1882;
        }

        if (v367 != 5)
        {
          goto LABEL_1889;
        }

        v369 = *(a2 + 2);
        if (v369 != 2)
        {
          if (v369 == 1)
          {
            goto LABEL_1732;
          }

          goto LABEL_1889;
        }

        v368 = *a2;
LABEL_1882:
        std::string::append((this + 8), **v368, (*v368)[1]);
        std::string::append((this + 8), ", mangledCType: ", 0x11uLL);
        v624 = *(a2 + 18);
        if (v624 == 2)
        {
          goto LABEL_1886;
        }

        if (v624 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
LABEL_1886:
          v625 = *(a2 + 1);
        }

        else
        {
          v625 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v625, v6 + 1, 0);
        std::string::push_back((this + 8), 34);
        goto LABEL_1889;
      case 0x77:
        swift::Demangle::NodePrinter::printImplFunctionType(this, a2, v6);
        goto LABEL_829;
      case 0x78:
        if (!*(a2 + 1))
        {
          goto LABEL_829;
        }

        std::string::push_back((this + 8), 64);
        goto LABEL_1363;
      case 0x79:
        std::string::append((this + 8), "for <", 5uLL);
        v495 = *(a2 + 18);
        if ((v495 - 1) < 2)
        {
          goto LABEL_1373;
        }

        if (v495 != 5 || !*(a2 + 2))
        {
          goto LABEL_1574;
        }

        a2 = *a2;
LABEL_1373:
        v496 = *a2;
        goto LABEL_1575;
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
        result = swift::Demangle::NodePrinter::printEntity(this, a2, v6, a4 & 1, v413, 0, "implicit closure #", 0x12uLL, v635, "", 0);
        goto LABEL_830;
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
        swift::Demangle::NodePrinter::print(this, v14, v6, 0);
        std::string::append((this + 8), " ", 1uLL);
        v148 = *(a2 + 18);
        if (v148 != 5)
        {
          goto LABEL_567;
        }

        v149 = *(a2 + 2);
        if (v149 != 3)
        {
          goto LABEL_397;
        }

        swift::Demangle::NodePrinter::print(this, *(*a2 + 8), v6, 0);
        v148 = *(a2 + 18);
        if (v148 != 5)
        {
          goto LABEL_567;
        }

        v149 = *(a2 + 2);
LABEL_397:
        if (v149 != 4)
        {
          goto LABEL_571;
        }

        swift::Demangle::NodePrinter::print(this, *(*a2 + 8), v6, 0);
        if (*(a2 + 18) == 5 && *(a2 + 2) >= 3u)
        {
          v150 = *(*a2 + 16);
        }

        else
        {
          v150 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v150, v6, 0);
        v148 = *(a2 + 18);
LABEL_567:
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
LABEL_571:
            if (v149)
            {
              v9 = *(*a2 + 8 * (v149 - 1));
              goto LABEL_7;
            }

            break;
        }

        goto LABEL_803;
      case 0x7C:
        std::string::append((this + 8), "@substituted ", 0xDuLL);
        v339 = *(a2 + 18);
        v340 = a2;
        if ((v339 - 1) < 2)
        {
          goto LABEL_943;
        }

        if (v339 == 5 && *(a2 + 2))
        {
          v340 = *a2;
LABEL_943:
          v341 = *v340;
        }

        else
        {
          v341 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v341, v6 + 1, 0);
        std::string::append((this + 8), " for <", 6uLL);
        v549 = *(a2 + 18);
        if (v549 == 2)
        {
          goto LABEL_1573;
        }

        if (v549 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
LABEL_1573:
          v496 = *(a2 + 1);
        }

        else
        {
LABEL_1574:
          v496 = 0;
        }

LABEL_1575:
        swift::Demangle::NodePrinter::printChildren(this, v496, v6, ", ");
        goto LABEL_1576;
      case 0x7E:
        v456 = "@yields ";
        v457 = (this + 8);
        v458 = 8;
        goto LABEL_1358;
      case 0x7F:
        v456 = "@error ";
        v457 = (this + 8);
        v458 = 7;
LABEL_1358:
        std::string::append(v457, v456, v458);
        v373 = " ";
LABEL_1359:
        v488 = this;
        v489 = a2;
        goto LABEL_1360;
      case 0x80:
        v38 = "inout ";
        v39 = (this + 8);
        v40 = 6;
        goto LABEL_373;
      case 0x81:
        std::string::append((this + 8), *a2, *(a2 + 1));
        v272 = " infix";
        goto LABEL_1375;
      case 0x82:
        LODWORD(v635) = -1;
        result = swift::Demangle::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, "variable initialization expression", 0x22uLL, v635, "", 0);
        goto LABEL_830;
      case 0x83:
        v318 = *(a2 + 18);
        if ((v318 - 1) < 2)
        {
          goto LABEL_901;
        }

        if (v318 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_901:
          v319 = *a2;
        }

        else
        {
          v319 = 0;
        }

        v548 = "init";
        goto LABEL_1627;
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
LABEL_1328:
        if (v450)
        {
          v479 = v452;
        }

        else
        {
          v479 = "deinit";
        }

        LODWORD(v635) = -1;
        result = swift::Demangle::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, v479, v451, v635, "", 0);
        goto LABEL_830;
      case 0x86:
        v38 = "sending ";
        goto LABEL_208;
      case 0x87:
        v272 = "@isolated(any) ";
        v273 = (this + 8);
        v274 = 15;
        goto LABEL_828;
      case 0x88:
        v272 = "nonisolated(nonsending) ";
        v273 = (this + 8);
        v274 = 24;
        goto LABEL_828;
      case 0x89:
        v272 = "sending ";
        goto LABEL_1794;
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
            goto LABEL_1170;
          case 138:
            v283 = "key path getter for ";
LABEL_1170:
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
          goto LABEL_1177;
        }

        if (v425 == 5 && *(a2 + 2))
        {
          v426 = *a2;
LABEL_1177:
          v427 = *v426;
        }

        else
        {
          v427 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v427, v6 + 1, 0);
        std::string::append((this + 8), " : ", 3uLL);
        v428 = *(a2 + 18);
        v429 = a2;
        if (v428 != 2)
        {
          if (v428 != 5 || *(a2 + 2) < 2u)
          {
            goto LABEL_829;
          }

          v429 = *a2;
        }

        v430 = *(v429 + 1);
        if (*(v430 + 8) == 228)
        {
          std::string::append((this + 8), ", ", 2uLL);
        }

        swift::Demangle::NodePrinter::print(this, v430, v6 + 1, 0);
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

            swift::Demangle::NodePrinter::print(this, v432, v6 + 1, 0);
            ++v431;
          }

          while (*(a2 + 18) == 5);
        }

        goto LABEL_829;
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
          v299 = xmmword_299ACB200;
        }

        else
        {
          if (v295 == 5)
          {
            v295 = *(a2 + 2);
            v297 = *a2;
            v298.i64[0] = 0xFFFFFFFFLL;
            v298.i64[1] = 0xFFFFFFFFLL;
            v299 = vandq_s8(vaddq_s64(vdupq_n_s64(v295), xmmword_299ACB210), v298);
            goto LABEL_1497;
          }

          v299 = xmmword_299ACB220;
          LODWORD(v295) = 2;
        }

        v297 = a2;
LABEL_1497:
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
          swift::Demangle::NodePrinter::print(this, v529, v6 + 1, 0);
          LODWORD(v295) = v295 - 1;
        }

        std::string::append((this + 8), "(", 1uLL);
        if (!v295)
        {
          goto LABEL_1550;
        }

        v532 = *(a2 + 18);
        v533 = a2;
        if ((v532 - 1) < 2)
        {
          goto LABEL_1508;
        }

        if (v532 == 5 && *(a2 + 2))
        {
          v533 = *a2;
LABEL_1508:
          v534 = *v533;
        }

        else
        {
          v534 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v534, v6 + 1, 0);
        if (v295 == 1)
        {
          goto LABEL_1550;
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
              goto LABEL_1552;
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
            goto LABEL_1553;
          }

LABEL_1552:
          v540 = 0;
LABEL_1553:
          swift::Demangle::NodePrinter::print(this, v540, v6 + 1, 0);
          if (v295 == ++v539)
          {
            goto LABEL_1550;
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
        swift::Demangle::NodePrinter::print(this, v115, v6, 0);
        v131 = " and conformance ";
LABEL_527:
        v194 = (this + 8);
        v195 = 17;
        goto LABEL_535;
      case 0x92:
        v362 = *(a2 + 18);
        v363 = a2;
        if (v362 == 2)
        {
          goto LABEL_1012;
        }

        if (v362 == 5 && *(a2 + 2) >= 2u)
        {
          v363 = *a2;
LABEL_1012:
          v364 = *(v363 + 1);
        }

        else
        {
          v364 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v364, v6 + 1, 0);
        if (*(this + 41) == 1)
        {
          std::string::append((this + 8), " #", 2uLL);
          if (*(a2 + 18) - 1 >= 2)
          {
            a2 = *a2;
          }

          swift::Demangle::DemanglerPrinter::operator<<((this + 8), **a2 + 1);
        }

        goto LABEL_829;
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
        goto LABEL_1541;
      case 0x94:
        v75 = *(a2 + 18);
        if ((v75 - 1) < 2)
        {
          goto LABEL_163;
        }

        if (v75 != 5)
        {
          goto LABEL_577;
        }

        if (!*(a2 + 2))
        {
          goto LABEL_829;
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

        swift::Demangle::NodePrinter::print(this, v78, v6 + 1, 0);
        v75 = *(a2 + 18);
LABEL_577:
        if (v75 == 2)
        {
          goto LABEL_580;
        }

        if (v75 != 5)
        {
          goto LABEL_587;
        }

        if (*(a2 + 2) < 2u)
        {
          goto LABEL_829;
        }

LABEL_580:
        std::string::append((this + 8), " file ", 6uLL);
        v208 = *(a2 + 18);
        v209 = a2;
        if (v208 == 2)
        {
          goto LABEL_584;
        }

        if (v208 == 5 && *(a2 + 2) >= 2u)
        {
          v209 = *a2;
LABEL_584:
          v210 = *(v209 + 1);
        }

        else
        {
          v210 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v210, v6 + 1, 0);
        v75 = *(a2 + 18);
LABEL_587:
        if (v75 != 5 || *(a2 + 2) < 3u)
        {
          goto LABEL_829;
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
        swift::Demangle::NodePrinter::print(this, v211, v6, 0);
        if (*(a2 + 18) != 5 || *(a2 + 2) < 4u)
        {
          goto LABEL_829;
        }

        std::string::append((this + 8), " column ", 8uLL);
        if (*(a2 + 18) != 5 || *(a2 + 2) < 4u)
        {
          goto LABEL_803;
        }

        v9 = *(*a2 + 24);
        goto LABEL_7;
      case 0x95:
        LODWORD(v635) = **(*a2 + 16) + 1;
        result = swift::Demangle::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 1, "unique name #", 0xDuLL, v635, "", 0);
        goto LABEL_830;
      case 0x96:
        v508 = *(a2 + 18);
        if ((v508 - 1) < 2)
        {
          goto LABEL_1415;
        }

        if (v508 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1415:
          v509 = *a2;
        }

        else
        {
          v509 = 0;
        }

        result = swift::Demangle::NodePrinter::printAbstractStorage(this, v509, v6, a4 & 1, "materializeForSet", 0x11uLL);
        goto LABEL_830;
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
        v642 = &unk_2A20082F8;
        v643 = swift::Demangle::genericParameterName;
        v644 = &v642;
        swift::Demangle::nodeToString(v477, &__str, a3, &v645);
        v516 = "member macro @";
        goto LABEL_1467;
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
        v642 = &unk_2A20082F8;
        v643 = swift::Demangle::genericParameterName;
        v644 = &v642;
        swift::Demangle::nodeToString(v441, &__str, a3, &v645);
        v516 = "memberAttribute macro @";
        goto LABEL_1467;
      case 0x99:
        if (*(this + 43))
        {
          goto LABEL_829;
        }

        v272 = "merged ";
        goto LABEL_1432;
      case 0x9A:
        v490 = *(a2 + 18);
        v491 = a2;
        if (v490 == 2)
        {
          goto LABEL_1368;
        }

        if (v490 == 5)
        {
          v492 = *(a2 + 2);
          if (v492 != 2)
          {
            v493 = 0;
            goto LABEL_1822;
          }

          v491 = *a2;
LABEL_1368:
          swift::Demangle::NodePrinter::print(this, *v491, v6 + 1, 0);
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
              goto LABEL_1825;
            }

            break;
          case 2:
            break;
          case 5:
            v492 = *(a2 + 2);
LABEL_1822:
            if (v493 < v492)
            {
              a2 = *a2;
              break;
            }

LABEL_1825:
            v609 = 0;
LABEL_1826:
            v610 = *(v609 + 18);
            if ((v610 - 1) >= 2)
            {
              if (v610 != 5 || !*(v609 + 2))
              {
                v611 = 0;
                goto LABEL_1832;
              }

              v609 = *v609;
            }

            v611 = *v609;
LABEL_1832:
            swift::Demangle::NodePrinter::printWithParens(this, v611, v6);
            v612 = v611[8];
            if ((v612 - 200) < 3 || v612 == 71)
            {
              v272 = ".Protocol";
LABEL_1835:
              v273 = (this + 8);
              v274 = 9;
            }

            else
            {
              v272 = ".Type";
LABEL_1276:
              v273 = (this + 8);
              v274 = 5;
            }

            goto LABEL_828;
          default:
            goto LABEL_1825;
        }

        v609 = *(a2 + v493);
        goto LABEL_1826;
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
          goto LABEL_1349;
        }

        if (v485 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1349:
          v407 = *a2;
        }

        else
        {
          v407 = 0;
        }

        v528 = "modify";
        goto LABEL_1665;
      case 0xA2:
        v353 = *(a2 + 18);
        if ((v353 - 1) < 2)
        {
          goto LABEL_987;
        }

        if (v353 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_987:
          v354 = *a2;
        }

        else
        {
          v354 = 0;
        }

        v550 = "modify2";
        goto LABEL_1630;
      case 0xA3:
        if (*(this + 36) == 1)
        {
          goto LABEL_1363;
        }

        goto LABEL_829;
      case 0xA4:
        v357 = *(a2 + 18);
        if ((v357 - 1) < 2)
        {
          goto LABEL_997;
        }

        if (v357 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_997:
          v358 = *a2;
        }

        else
        {
          v358 = 0;
        }

        result = swift::Demangle::NodePrinter::printAbstractStorage(this, v358, v6, a4 & 1, "nativeOwningAddressor", 0x15uLL);
        goto LABEL_830;
      case 0xA5:
        v325 = *(a2 + 18);
        if ((v325 - 1) < 2)
        {
          goto LABEL_914;
        }

        if (v325 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_914:
          v326 = *a2;
        }

        else
        {
          v326 = 0;
        }

        result = swift::Demangle::NodePrinter::printAbstractStorage(this, v326, v6, a4 & 1, "nativeOwningMutableAddressor", 0x1CuLL);
        goto LABEL_830;
      case 0xA6:
        v470 = *(a2 + 18);
        if ((v470 - 1) < 2)
        {
          goto LABEL_1308;
        }

        if (v470 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1308:
          v356 = *a2;
        }

        else
        {
          v356 = 0;
        }

        v551 = "nativePinningAddressor";
        goto LABEL_1642;
      case 0xA7:
        v497 = *(a2 + 18);
        if ((v497 - 1) < 2)
        {
          goto LABEL_1380;
        }

        if (v497 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1380:
          v498 = *a2;
        }

        else
        {
          v498 = 0;
        }

        result = swift::Demangle::NodePrinter::printAbstractStorage(this, v498, v6, a4 & 1, "nativePinningMutableAddressor", 0x1DuLL);
        goto LABEL_830;
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
        goto LABEL_1835;
      case 0xAC:
        goto LABEL_1192;
      case 0xAD:
        std::string::append((this + 8), "predefined ", 0xBuLL);
LABEL_1192:
        std::string::append((this + 8), "@objc completion handler block implementation for ", 0x32uLL);
        v433 = *(a2 + 18);
        if (v433 != 5)
        {
          goto LABEL_1195;
        }

        v434 = *(a2 + 2);
        if (v434 < 4)
        {
          goto LABEL_1198;
        }

        swift::Demangle::NodePrinter::print(this, *(*a2 + 24), v6 + 1, 0);
        v433 = *(a2 + 18);
LABEL_1195:
        v435 = a2;
        if ((v433 - 1) < 2)
        {
          goto LABEL_1200;
        }

        if (v433 != 5)
        {
          goto LABEL_1480;
        }

        v434 = *(a2 + 2);
LABEL_1198:
        if (v434)
        {
          v435 = *a2;
LABEL_1200:
          v436 = *v435;
        }

        else
        {
LABEL_1480:
          v436 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v436, v6 + 1, 0);
        std::string::append((this + 8), " with result type ", 0x12uLL);
        v524 = *(a2 + 18);
        v525 = a2;
        if (v524 == 2)
        {
          goto LABEL_1485;
        }

        if (v524 == 5 && *(a2 + 2) >= 2u)
        {
          v525 = *a2;
LABEL_1485:
          v526 = *(v525 + 1);
        }

        else
        {
          v526 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v526, v6 + 1, 0);
        v527 = **(*a2 + 16);
        switch(v527)
        {
          case 0:
            goto LABEL_829;
          case 2:
            v272 = " zero on error";
LABEL_1522:
            v273 = (this + 8);
            v274 = 14;
            break;
          case 1:
            v272 = " nonzero on error";
LABEL_1491:
            v273 = (this + 8);
            v274 = 17;
            break;
          default:
            v272 = " <invalid error flag>";
            v273 = (this + 8);
            v274 = 21;
            break;
        }

        goto LABEL_828;
      case 0xAE:
        v272 = "@objc ";
        goto LABEL_1375;
      case 0xB2:
        v442 = *(a2 + 18);
        if ((v442 - 1) < 2)
        {
          goto LABEL_1234;
        }

        if (v442 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1234:
          v366 = *a2;
        }

        else
        {
          v366 = 0;
        }

        v552 = "owningAddressor";
        goto LABEL_1633;
      case 0xB3:
        v415 = *(a2 + 18);
        if ((v415 - 1) < 2)
        {
          goto LABEL_1142;
        }

        if (v415 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1142:
          v356 = *a2;
        }

        else
        {
          v356 = 0;
        }

        v551 = "owningMutableAddressor";
        goto LABEL_1642;
      case 0xB4:
        if (*(this + 42) == 1)
        {
          goto LABEL_956;
        }

        v320 = "partial apply forwarder";
        v321 = (this + 8);
        v322 = 23;
        goto LABEL_1510;
      case 0xB5:
        if (*(this + 42) == 1)
        {
LABEL_956:
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

LABEL_1510:
        std::string::append(v321, v320, v322);
        v535 = *(a2 + 18);
        if ((v535 - 1) >= 2 && (v535 != 5 || !*(a2 + 2)))
        {
          goto LABEL_829;
        }

        v389 = " for ";
        v390 = (this + 8);
        v391 = 5;
        goto LABEL_1514;
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
        v642 = &unk_2A20082F8;
        v643 = swift::Demangle::genericParameterName;
        v644 = &v642;
        swift::Demangle::nodeToString(v343, &__str, a3, &v645);
        v516 = "peer macro @";
        goto LABEL_1467;
      case 0xB7:
        std::string::append((this + 8), *a2, *(a2 + 1));
        v272 = " postfix";
        goto LABEL_1794;
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
        v642 = &unk_2A20082F8;
        v643 = swift::Demangle::genericParameterName;
        v644 = &v642;
        swift::Demangle::nodeToString(v455, &__str, a3, &v645);
        v516 = "preamble macro @";
LABEL_1467:
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
        v523 = swift::Demangle::NodePrinter::printEntity(this, a2, v6, v323 & 1, 0, 1, v521, v522, v635, "", 0);
        if (SHIBYTE(v648) < 0)
        {
          operator delete(v647);
          if ((SHIBYTE(v646.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_1475:
            if ((SHIBYTE(v645.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_1476;
            }

            goto LABEL_1479;
          }
        }

        else if ((SHIBYTE(v646.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_1475;
        }

        operator delete(v646.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v645.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_1476;
        }

LABEL_1479:
        operator delete(v645.__r_.__value_.__l.__data_);
LABEL_1476:
        swift::Demangle::DemangleOptions::~DemangleOptions(&__str);
        result = v523;
        goto LABEL_830;
      case 0xB9:
        std::string::append((this + 8), *a2, *(a2 + 1));
        v272 = " prefix";
        goto LABEL_1432;
      case 0xBA:
        v465 = *(a2 + 18);
        if (v465 != 2 && (v465 != 5 || *(a2 + 2) < 2u))
        {
          if (*(this + 46) != 1)
          {
            goto LABEL_829;
          }

          v536 = "(in ";
          goto LABEL_1731;
        }

        if (*(this + 46) == 1)
        {
          std::string::push_back((this + 8), 40);
          v465 = *(a2 + 18);
        }

        v466 = a2;
        if (v465 == 2)
        {
          goto LABEL_1296;
        }

        if (v465 == 5 && *(a2 + 2) >= 2u)
        {
          v466 = *a2;
LABEL_1296:
          v467 = *(v466 + 1);
        }

        else
        {
          v467 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v467, v6 + 1, 0);
        if (*(this + 46) != 1)
        {
          goto LABEL_829;
        }

        v536 = " in ";
LABEL_1731:
        std::string::append((this + 8), v536, 4uLL);
        if (*(a2 + 18) - 1 >= 2)
        {
LABEL_1732:
          a2 = *a2;
        }

LABEL_1733:
        std::string::append((this + 8), **a2, *(*a2 + 8));
        goto LABEL_1889;
      case 0xBB:
        v38 = "property descriptor for ";
        goto LABEL_241;
      case 0xBC:
        LODWORD(v635) = -1;
        result = swift::Demangle::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, "property wrapper backing initializer", 0x24uLL, v635, "", 0);
        goto LABEL_830;
      case 0xBD:
        LODWORD(v635) = -1;
        result = swift::Demangle::NodePrinter::printEntity(this, a2, v6, a4 & 1, 0, 0, "property wrapper init from projected value", 0x2AuLL, v635, "", 0);
        goto LABEL_830;
      case 0xBF:
        v370 = "protocol symbolic reference 0x";
        v371 = (this + 8);
        v372 = 30;
        goto LABEL_1333;
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
            goto LABEL_811;
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
          goto LABEL_812;
        }

        v216 = a2;
        if (v138 == 2)
        {
          goto LABEL_641;
        }

        if (v138 != 5)
        {
          goto LABEL_642;
        }

        if (*(a2 + 2) < 2u)
        {
          v9 = 0;
        }

        else
        {
          v216 = *a2;
LABEL_641:
          v9 = *(v216 + 1);
LABEL_642:
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
                swift::Demangle::NodePrinter::print(this, v218, v6, 0);
                std::string::append((this + 8), " in ", 4uLL);
                swift::Demangle::NodePrinter::print(this, v219, v6, 0);
                std::string::append((this + 8), " : ", 3uLL);
                goto LABEL_7;
              }

LABEL_812:
              v6 = (v6 + 1);
              swift::Demangle::NodePrinter::print(this, v140, v6, 0);
              if (*(this + 38) == 1)
              {
                std::string::append((this + 8), " : ", 3uLL);
                swift::Demangle::NodePrinter::print(this, v9, v6, 0);
                std::string::append((this + 8), " in ", 4uLL);
                v9 = v218;
                goto LABEL_7;
              }

              goto LABEL_829;
            }
          }
        }

LABEL_811:
        v218 = 0;
        goto LABEL_812;
      case 0xC1:
        v389 = "protocol conformance ref (type's module) ";
        v390 = (this + 8);
        v391 = 41;
        goto LABEL_1514;
      case 0xC2:
        v389 = "protocol conformance ref (protocol's module) ";
        v390 = (this + 8);
        v391 = 45;
        goto LABEL_1514;
      case 0xC3:
        v389 = "protocol conformance ref (retroactive) ";
        v390 = (this + 8);
        v391 = 39;
        goto LABEL_1514;
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
          goto LABEL_1421;
        }

        if (v510 != 5 || !*(a2 + 2))
        {
          goto LABEL_829;
        }

        a2 = *a2;
LABEL_1421:
        v489 = *a2;
        if (!*a2)
        {
          goto LABEL_829;
        }

        v511 = *(v489 + 18);
        if ((v511 - 1) < 2 || v511 == 5 && *(v489 + 2))
        {
          goto LABEL_1687;
        }

        v272 = "Any";
LABEL_1003:
        v273 = (this + 8);
        v274 = 3;
        goto LABEL_828;
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
            goto LABEL_829;
          }

          v469 = *a2;
        }

        v576 = *v469;
        swift::Demangle::NodePrinter::print(this, *(v469 + 1), v6 + 1, 0);
        std::string::append((this + 8), " & ", 3uLL);
        v577 = *(v576 + 18);
        if ((v577 - 1) >= 2)
        {
          if (v577 != 5 || !*(v576 + 2))
          {
            goto LABEL_829;
          }

          v576 = *v576;
        }

        v489 = *v576;
LABEL_1687:
        v373 = " & ";
        v488 = this;
LABEL_1360:
        swift::Demangle::NodePrinter::printChildren(v488, v489, v6, v373);
        goto LABEL_829;
      case 0xCA:
        v502 = *(a2 + 18);
        if ((v502 - 1) < 2)
        {
          goto LABEL_1394;
        }

        if (v502 != 5 || !*(a2 + 2))
        {
          goto LABEL_829;
        }

        a2 = *a2;
LABEL_1394:
        v503 = *a2;
        v504 = *(*a2 + 18);
        if ((v504 - 1) < 2)
        {
          goto LABEL_1398;
        }

        if (v504 != 5 || !v503[2])
        {
          goto LABEL_829;
        }

        v503 = *v503;
LABEL_1398:
        v505 = *v503;
        v506 = *(*v503 + 18);
        if ((v506 - 1) < 2 || v506 == 5 && *(v505 + 8))
        {
          swift::Demangle::NodePrinter::printChildren(this, v505, v6, " & ");
          std::string::append((this + 8), " & ", 3uLL);
        }

        if (*(this + 33) == 1 && *(this + 49) == 1)
        {
          std::string::append((this + 8), "Swift", 5uLL);
          std::string::append((this + 8), ".", 1uLL);
        }

        v272 = "AnyObject";
        goto LABEL_1835;
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
        swift::Demangle::NodePrinter::print(this, v50, v6, 0);
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
            goto LABEL_618;
          }

          if (v30 != 5)
          {
            if (v30 != 2)
            {
              goto LABEL_616;
            }

            v31 = 1;
            goto LABEL_618;
          }

          v215 = *(a2 + 2);
          if (v215)
          {
            v31 = v215 - 1;
            a2 = *a2;
LABEL_618:
            v9 = *(a2 + v31);
            v6 = (v6 + 1);
            goto LABEL_7;
          }

LABEL_616:
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
          swift::Demangle::NodePrinter::print(this, **a2, v6 + 1, 0);
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
            goto LABEL_546;
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
          goto LABEL_547;
        }

LABEL_546:
        v199 = 0;
LABEL_547:
        v6 = (v6 + 1);
        swift::Demangle::NodePrinter::print(this, v199, v6, 0);
        v200 = " to ";
        v201 = (this + 8);
        v202 = 4;
        goto LABEL_555;
      case 0xD4:
        std::string::append((this + 8), "reabstraction thunk ", 0x14uLL);
        if (*(a2 + 18) == 5 && *(a2 + 2) == 4)
        {
          swift::Demangle::NodePrinter::print(this, **a2, v6 + 1, 0);
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
        swift::Demangle::NodePrinter::print(this, v145, v6, 0);
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
            goto LABEL_553;
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
LABEL_554:
          swift::Demangle::NodePrinter::print(this, v205, v6, 0);
          v200 = " self ";
          v201 = (this + 8);
          v202 = 6;
LABEL_555:
          std::string::append(v201, v200, v202);
          v206 = *(a2 + 18);
          v207 = v206 - 1;
          if (v206 != 1)
          {
            if (v206 == 2)
            {
LABEL_562:
              v9 = *(a2 + v96);
              goto LABEL_7;
            }

            if (v206 != 5)
            {
LABEL_803:
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

            goto LABEL_562;
          }

          goto LABEL_803;
        }

LABEL_553:
        v205 = 0;
        goto LABEL_554;
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
        swift::Demangle::NodePrinter::print(this, v67, v6, 0);
        v131 = " with global actor constraint ";
        v194 = (this + 8);
        v195 = 30;
        goto LABEL_535;
      case 0xD6:
        v438 = *(a2 + 18);
        if ((v438 - 1) < 2)
        {
          goto LABEL_1210;
        }

        if (v438 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1210:
          v319 = *a2;
        }

        else
        {
          v319 = 0;
        }

        v548 = "read";
LABEL_1627:
        result = swift::Demangle::NodePrinter::printAbstractStorage(this, v319, v6, a4 & 1, v548, 4uLL);
        goto LABEL_830;
      case 0xD7:
        v486 = *(a2 + 18);
        if ((v486 - 1) < 2)
        {
          goto LABEL_1356;
        }

        if (v486 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1356:
          v487 = *a2;
        }

        else
        {
          v487 = 0;
        }

        result = swift::Demangle::NodePrinter::printAbstractStorage(this, v487, v6, a4 & 1, "read2", 5uLL);
        goto LABEL_830;
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
          goto LABEL_616;
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
          goto LABEL_829;
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
        swift::Demangle::NodePrinter::print(this, v82, v6, 0);
        goto LABEL_536;
      case 0xDA:
        v352 = *(a2 + 18);
        if ((v352 - 1) < 2 || v352 == 5 && *(a2 + 2))
        {
          goto LABEL_1515;
        }

LABEL_1363:
        v272 = *a2;
        v274 = *(a2 + 1);
        v273 = (this + 8);
        goto LABEL_828;
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
          swift::Demangle::NodePrinter::print(this, *(*a2 + 8), v6 + 1, 0);
          std::string::push_back((this + 8), 32);
          swift::Demangle::NodePrinter::print(this, v9, v6 + 1, 0);
          if (!v537)
          {
            goto LABEL_829;
          }

          std::string::append((this + 8), " <", 2uLL);
          v538 = *(v537 + 18);
          if (v538 == 5)
          {
            v626 = (v537 + 8);
            v627 = *(v537 + 8);
            if (!v627 || (swift::Demangle::NodePrinter::print(this, **v537, v6 + 1, 0), v627 == 1))
            {
LABEL_1576:
              std::string::push_back((this + 8), 62);
              goto LABEL_829;
            }
          }

          else
          {
            if (v538 != 2)
            {
              if (v538 == 1)
              {
                swift::Demangle::NodePrinter::print(this, *v537, v6 + 1, 0);
              }

              goto LABEL_1576;
            }

            v626 = (v537 + 8);
            swift::Demangle::NodePrinter::print(this, *v537, v6 + 1, 0);
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
                goto LABEL_1894;
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
              goto LABEL_1895;
            }

LABEL_1894:
            v629 = 0;
LABEL_1895:
            swift::Demangle::NodePrinter::print(this, v629, v6 + 1, 0);
            if (v627 == ++v628)
            {
              goto LABEL_1576;
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
          goto LABEL_1783;
        }

        std::string::push_back((this + 8), 32);
        v345 = *(a2 + 18);
        v346 = a2;
        if ((v345 - 1) < 2)
        {
          goto LABEL_964;
        }

        if (v345 == 5 && *(a2 + 2))
        {
          v346 = *a2;
LABEL_964:
          v347 = *v346;
        }

        else
        {
          v347 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v347, v6 + 1, 0);
        v599 = 1;
        while (2)
        {
          v601 = *(a2 + 18);
          if (v601 == 2)
          {
            goto LABEL_1774;
          }

          if (v601 != 5)
          {
            goto LABEL_1783;
          }

          v601 = *(a2 + 2);
LABEL_1774:
          if (v601 <= v599)
          {
LABEL_1783:
            v272 = " }";
LABEL_1784:
            v273 = (this + 8);
            v274 = 2;
            goto LABEL_828;
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
              goto LABEL_1769;
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
            goto LABEL_1770;
          }

LABEL_1769:
          v600 = 0;
LABEL_1770:
          swift::Demangle::NodePrinter::print(this, v600, v6 + 1, 0);
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
          goto LABEL_1114;
        }

        if (v406 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1114:
          v407 = *a2;
        }

        else
        {
          v407 = 0;
        }

        v528 = "setter";
LABEL_1665:
        result = swift::Demangle::NodePrinter::printAbstractStorage(this, v407, v6, a4 & 1, v528, 6uLL);
        goto LABEL_830;
      case 0xE4:
        v272 = "serialized";
        goto LABEL_1701;
      case 0xE5:
        v32 = "static ";
        v33 = (this + 8);
        v34 = 7;
        goto LABEL_313;
      case 0xE7:
        LODWORD(v635) = -1;
        result = swift::Demangle::NodePrinter::printEntity(this, a2, v6, a4 & 1, 2, 0, "", 0, v635, "subscript", 9);
        goto LABEL_830;
      case 0xE8:
        if (*(this + 35) != 1)
        {
          goto LABEL_829;
        }

        std::string::append((this + 8), " with unmangled suffix ", 0x17uLL);
        if (*a2)
        {
          std::string::basic_string[abi:nn200100](&__p, *a2, *(a2 + 1));
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            goto LABEL_1801;
          }
        }

        else
        {
          memset(&__p, 0, sizeof(__p));
        }

        __str = __p;
LABEL_1801:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_829;
      case 0xEA:
        std::string::append((this + 8), "(", 1uLL);
        swift::Demangle::NodePrinter::printChildren(this, a2, v6, ", ");
        goto LABEL_1550;
      case 0xEB:
        ChildIf = swift::Demangle::NodePrinter::getChildIf(0, a2, 236);
        if (ChildIf)
        {
          std::string::append((this + 8), *ChildIf, *(ChildIf + 8));
          ChildIf = std::string::append((this + 8), ": ", 2uLL);
        }

        v360 = swift::Demangle::NodePrinter::getChildIf(ChildIf, a2, 243);
        v361 = swift::Demangle::NodePrinter::print(this, v360, v6 + 1, 0);
        result = swift::Demangle::NodePrinter::getChildIf(v361, a2, 289);
        if (!result)
        {
          goto LABEL_830;
        }

        v272 = "...";
        goto LABEL_1003;
      case 0xEC:
        std::string::append((this + 8), *a2, *(a2 + 1));
        v272 = ": ";
        goto LABEL_1784;
      case 0xED:
        v289 = "Pack{";
        v290 = (this + 8);
        v291 = 5;
        goto LABEL_1212;
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
LABEL_1212:
        std::string::append(v290, v289, v291);
        swift::Demangle::NodePrinter::printChildren(this, a2, v6, ", ");
        v272 = "}";
        goto LABEL_1798;
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
        goto LABEL_1333;
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
              goto LABEL_616;
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
          goto LABEL_1446;
        }

        if (v103 == 5)
        {
          if (!*(a2 + 2))
          {
            v276 = 0;
            goto LABEL_1864;
          }

          v514 = *a2;
LABEL_1446:
          v276 = *v514;
        }

        else
        {
          v276 = 0;
        }

        if (v103 == 2)
        {
LABEL_1752:
          v589 = *(a2 + 1);
          goto LABEL_1865;
        }

        if (v103 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
          goto LABEL_1752;
        }

LABEL_1864:
        v589 = 0;
LABEL_1865:
        v620 = *(v589 + 18);
        if ((v620 - 1) >= 2)
        {
          if (v620 != 5 || !*(v589 + 2))
          {
            v277 = 0;
LABEL_1871:
            v275 = this;
LABEL_834:
            swift::Demangle::NodePrinter::printFunctionType(v275, v276, v277, v6);
            goto LABEL_829;
          }

          v589 = *v589;
        }

        v277 = *v589;
        goto LABEL_1871;
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
        goto LABEL_828;
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
          goto LABEL_1017;
        }

        if (v365 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1017:
          v366 = *a2;
        }

        else
        {
          v366 = 0;
        }

        v552 = "unsafeAddressor";
LABEL_1633:
        result = swift::Demangle::NodePrinter::printAbstractStorage(this, v366, v6, a4 & 1, v552, 0xFuLL);
        goto LABEL_830;
      case 0x107:
        v355 = *(a2 + 18);
        if ((v355 - 1) < 2)
        {
          goto LABEL_992;
        }

        if (v355 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_992:
          v356 = *a2;
        }

        else
        {
          v356 = 0;
        }

        v551 = "unsafeMutableAddressor";
LABEL_1642:
        result = swift::Demangle::NodePrinter::printAbstractStorage(this, v356, v6, a4 & 1, v551, 0x16uLL);
        goto LABEL_830;
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

        std::string::append((this + 8), off_29F283500[v55 & 0x1F], qword_299ACB240[v55 & 0x1F]);
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
LABEL_1541:
        result = swift::Demangle::NodePrinter::printEntity(v279, v280, v281, v278, v282, 1, "", 0, v635, "", 0);
        goto LABEL_830;
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
        swift::Demangle::NodePrinter::print(this, v53, v6, 0);
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
          goto LABEL_803;
        }

        a2 = *a2;
LABEL_487:
        v9 = *a2;
        goto LABEL_7;
      case 0x10C:
        v272 = "override ";
        goto LABEL_1835;
      case 0x10D:
        v439 = *(a2 + 18);
        if ((v439 - 1) < 2)
        {
          goto LABEL_1218;
        }

        if (v439 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1218:
          v354 = *a2;
        }

        else
        {
          v354 = 0;
        }

        v550 = "willset";
LABEL_1630:
        result = swift::Demangle::NodePrinter::printAbstractStorage(this, v354, v6, a4 & 1, v550, 7uLL);
        goto LABEL_830;
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
        swift::Demangle::NodePrinter::print(this, v107, v6, 0);
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

        swift::Demangle::NodePrinter::print(this, v154, v6, 0);
        v155 = ": ";
        v156 = (this + 8);
        v157 = 2;
LABEL_522:
        std::string::append(v156, v155, v157);
        if (*(a2 + 18) != 5 || *(a2 + 2) < 3u)
        {
          goto LABEL_803;
        }

LABEL_825:
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
        swift::Demangle::NodePrinter::print(this, v88, v6, 0);
        v131 = ": ";
        v194 = (this + 8);
        v195 = 2;
LABEL_535:
        std::string::append(v194, v131, v195);
        goto LABEL_536;
      case 0x11B:
        v38 = "associated type descriptor for ";
LABEL_364:
        v39 = (this + 8);
        v40 = 31;
        goto LABEL_373;
      case 0x11C:
        v272 = " async";
LABEL_1375:
        v273 = (this + 8);
        v274 = 6;
        goto LABEL_828;
      case 0x11D:
        v272 = " throws";
LABEL_1432:
        v273 = (this + 8);
        v274 = 7;
        goto LABEL_828;
      case 0x11E:
        std::string::append((this + 8), " throws(", 8uLL);
        v453 = *(a2 + 18);
        if (v453 == 1)
        {
          goto LABEL_1254;
        }

        if (v453 != 5 || *(a2 + 2) != 1)
        {
          goto LABEL_1550;
        }

        a2 = *a2;
LABEL_1254:
        v454 = *a2;
        goto LABEL_1255;
      case 0x11F:
        v272 = " empty-list ";
        goto LABEL_1298;
      case 0x120:
        v272 = " first-element-marker ";
        goto LABEL_1028;
      case 0x121:
        v272 = " variadic-marker ";
        goto LABEL_1491;
      case 0x122:
        std::string::append((this + 8), "outlined bridged method (", 0x19uLL);
        std::string::append((this + 8), *a2, *(a2 + 1));
        v272 = ") of ";
        goto LABEL_1276;
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
        swift::Demangle::NodePrinter::print(this, v95, v6, 0);
        v151 = *(a2 + 18);
        if (v151 == 2)
        {
          goto LABEL_540;
        }

        if (v151 != 5 || *(a2 + 2) < 2u)
        {
          goto LABEL_829;
        }

        goto LABEL_539;
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
        goto LABEL_1262;
      case 0x12D:
        v446 = "outlined read-only object #";
        v447 = (this + 8);
        v448 = 27;
LABEL_1262:
        std::string::append(v447, v446, v448);
        swift::Demangle::DemanglerPrinter::operator<<((this + 8), *a2);
        v272 = " of ";
        goto LABEL_1263;
      case 0x12E:
        v459 = *(a2 + 18);
        v460 = a2;
        if ((v459 - 1) < 2)
        {
          goto LABEL_1720;
        }

        if (v459 == 5)
        {
          v460 = *a2;
        }

        else
        {
          v460 = 0;
LABEL_1720:
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

LABEL_1727:
            swift::Demangle::NodePrinter::printChildren(this, v460, v582, v6, ".");
            goto LABEL_829;
          }
        }

        v582 = (*a2 + 8 * *(a2 + 2));
        goto LABEL_1727;
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
LABEL_1514:
        std::string::append(v390, v389, v391);
LABEL_1515:
        swift::Demangle::NodePrinter::printChildren(this, a2, v6, 0);
        goto LABEL_829;
      case 0x134:
        v461 = *(a2 + 18);
        if ((v461 - 1) < 2)
        {
          goto LABEL_1271;
        }

        if (v461 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1271:
          v462 = *a2;
        }

        else
        {
          v462 = 0;
        }

        swift::Demangle::NodePrinter::printWithParens(this, v462, v6);
        v272 = "?";
        goto LABEL_1798;
      case 0x135:
        std::string::append((this + 8), "[", 1uLL);
        v416 = *(a2 + 18);
        if ((v416 - 1) < 2)
        {
          goto LABEL_1150;
        }

        if (v416 != 5 || !*(a2 + 2))
        {
          goto LABEL_1619;
        }

        a2 = *a2;
LABEL_1150:
        v417 = *a2;
        goto LABEL_1620;
      case 0x136:
        std::string::append((this + 8), "[", 1uLL);
        v403 = *(a2 + 18);
        v404 = a2;
        if ((v403 - 1) < 2)
        {
          goto LABEL_1109;
        }

        if (v403 == 5 && *(a2 + 2))
        {
          v404 = *a2;
LABEL_1109:
          v405 = *v404;
        }

        else
        {
          v405 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v405, v6 + 1, 0);
        v561 = " : ";
        v562 = (this + 8);
        v563 = 3;
        goto LABEL_1614;
      case 0x137:
        std::string::append((this + 8), "[", 1uLL);
        v410 = *(a2 + 18);
        v411 = a2;
        if ((v410 - 1) < 2)
        {
          goto LABEL_1130;
        }

        if (v410 == 5 && *(a2 + 2))
        {
          v411 = *a2;
LABEL_1130:
          v412 = *v411;
        }

        else
        {
          v412 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v412, v6 + 1, 0);
        v561 = " of ";
        v562 = (this + 8);
        v563 = 4;
LABEL_1614:
        std::string::append(v562, v561, v563);
        v565 = *(a2 + 18);
        if (v565 == 2)
        {
          goto LABEL_1618;
        }

        if (v565 == 5 && *(a2 + 2) >= 2u)
        {
          a2 = *a2;
LABEL_1618:
          v417 = *(a2 + 1);
        }

        else
        {
LABEL_1619:
          v417 = 0;
        }

LABEL_1620:
        swift::Demangle::NodePrinter::print(this, v417, v6 + 1, 0);
        v564 = "]";
LABEL_1661:
        v574 = (this + 8);
        v575 = 1;
        goto LABEL_1662;
      case 0x138:
        std::string::append((this + 8), "(", 1uLL);
        v408 = *(a2 + 18);
        if ((v408 - 1) < 2)
        {
          goto LABEL_1120;
        }

        if (v408 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1120:
          v409 = *a2;
        }

        else
        {
          v409 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v409, v6 + 1, 0);
        v564 = ")";
        goto LABEL_1661;
      case 0x139:
        std::string::append((this + 8), "accessor function at ", 0x15uLL);
LABEL_1060:
        swift::Demangle::DemanglerPrinter::operator<<((this + 8), *a2);
        goto LABEL_829;
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
        swift::Demangle::NodePrinter::print(this, v134, v6, 0);
        std::string::push_back((this + 8), 46);
LABEL_536:
        v196 = *(a2 + 18);
        if (v196 == 2)
        {
          goto LABEL_540;
        }

        if (v196 != 5 || *(a2 + 2) < 2u)
        {
          goto LABEL_803;
        }

LABEL_539:
        a2 = *a2;
LABEL_540:
        v9 = *(a2 + 1);
        goto LABEL_7;
      case 0x13B:
        v370 = "opaque type symbolic reference 0x";
        v371 = (this + 8);
        v372 = 33;
        goto LABEL_1333;
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
LABEL_1263:
        v273 = (this + 8);
        v274 = 4;
        goto LABEL_828;
      case 0x143:
        std::string::append((this + 8), "<<opaque return type of ", 0x18uLL);
        swift::Demangle::NodePrinter::printChildren(this, a2, v6, 0);
        v272 = ">>";
        goto LABEL_1784;
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
          if (!v592 || (v591 = v6 + 1, swift::Demangle::NodePrinter::print(this, **a2, v591, 0), v592 == 1))
          {
LABEL_1889:
            std::string::push_back((this + 8), 41);
            goto LABEL_829;
          }
        }

        else
        {
          if (v515 != 2)
          {
            if (v515 == 1)
            {
              swift::Demangle::NodePrinter::print(this, *a2, v6 + 1, 0);
            }

            goto LABEL_1889;
          }

          v590 = (a2 + 8);
          v591 = v6 + 1;
          swift::Demangle::NodePrinter::print(this, *a2, v591, 0);
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
              goto LABEL_1757;
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
            goto LABEL_1758;
          }

LABEL_1757:
          v594 = 0;
LABEL_1758:
          swift::Demangle::NodePrinter::print(this, v594, v591, 0);
          if (v592 == ++v593)
          {
            goto LABEL_1889;
          }
        }

      case 0x14C:
        v32 = "flag for loading of canonical specialized generic type metadata for ";
        v33 = (this + 8);
        v34 = 68;
        goto LABEL_313;
      case 0x14D:
        v272 = "async function pointer to ";
        goto LABEL_1091;
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
            swift::Demangle::NodePrinter::print(this, v162, v6, 0);
            std::string::append((this + 8), " of ", 4uLL);
            if (!v22)
            {
              v9 = 0;
              v5 = v637;
              goto LABEL_732;
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
                        goto LABEL_727;
                      }

                      goto LABEL_731;
                    }

                    v173 = *(a2 + 2);
                  }

                  v168 = v636;
LABEL_727:
                  if (v173 <= v171)
                  {
LABEL_731:
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

LABEL_732:
                  if ((*(this + 43) & 1) == 0)
                  {
                    std::string::append((this + 8), " with respect to parameters ", 0x1CuLL);
                    swift::Demangle::NodePrinter::print(this, v165, v6, 0);
                    std::string::append((this + 8), " and results ", 0xDuLL);
                    swift::Demangle::NodePrinter::print(this, v168, v6, 0);
                    if (v9)
                    {
                      if (*(this + 39) == 1)
                      {
LABEL_735:
                        std::string::append((this + 8), " with ", 6uLL);
                        goto LABEL_7;
                      }
                    }
                  }

                  goto LABEL_829;
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
              swift::Demangle::NodePrinter::print(this, v172, v6, 0);
              if (v21 == ++v170)
              {
                v9 = 0;
                v5 = v637;
                v165 = v169;
                v168 = v636;
                goto LABEL_732;
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
            goto LABEL_1794;
          }

          if (v397 != 7)
          {
            goto LABEL_830;
          }

          v272 = "reverse-mode derivative";
        }

        else
        {
          if (!(((*a2 - 100) >> 1) | ((*a2 - 100) << 7)))
          {
            v272 = "differential";
LABEL_1298:
            v273 = (this + 8);
            v274 = 12;
            goto LABEL_828;
          }

          if (v397 != 1)
          {
            goto LABEL_830;
          }

          v272 = "forward-mode derivative";
        }

        goto LABEL_1532;
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
        swift::Demangle::NodePrinter::print(this, *(a2 + v181), v6, 0);
        if (v178 && v180 == 44)
        {
          swift::Demangle::NodePrinter::print(this, v178, v6, 0);
          std::string::push_back((this + 8), 32);
        }

        std::string::append((this + 8), " from ", 6uLL);
        swift::Demangle::NodePrinter::print(this, v9, v6, 0);
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
            goto LABEL_607;
          case 5:
            v73 = *(a2 + 2);
            if (!v73)
            {
              v221 = 0;
              v73 = 0;
              v213 = 0;
              v222 = -3;
              v223 = -4;
LABEL_754:
              v224 = *(a2 + 2);
              goto LABEL_755;
            }

            v72 = v73 - 2;
            v74 = v73 - 1;
            v212 = *a2;
            goto LABEL_608;
          case 2:
            v72 = 0;
            v73 = 2;
            v74 = 1;
LABEL_607:
            v212 = a2;
LABEL_608:
            v213 = *(v212 + v74);
            goto LABEL_610;
        }

        v73 = 0;
        v213 = 0;
        v72 = -2;
LABEL_610:
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
            goto LABEL_652;
        }

        if (v214 <= v72)
        {
LABEL_652:
          v221 = 0;
          goto LABEL_653;
        }

        v220 = a2;
        if ((v71 - 1) >= 2)
        {
          v220 = *a2;
        }

        v221 = *(v220 + v72);
LABEL_653:
        v222 = v73 - 3;
        v223 = v73 - 4;
        if (v71 == 1)
        {
          v224 = *(a2 + 18);
          goto LABEL_755;
        }

        if (v71 == 5)
        {
          goto LABEL_754;
        }

        if (v71 != 2)
        {
          goto LABEL_759;
        }

        v224 = 2;
LABEL_755:
        if (v224 <= v222)
        {
LABEL_759:
          v252 = 0;
          goto LABEL_760;
        }

        v251 = a2;
        if ((v71 - 1) >= 2)
        {
          v251 = *a2;
        }

        v252 = *(v251 + v222);
LABEL_760:
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
            goto LABEL_769;
        }

        if (v71 <= v223)
        {
LABEL_769:
          v255 = 0;
          goto LABEL_770;
        }

        v254 = a2;
        if (v253 >= 2)
        {
          v254 = *a2;
        }

        v255 = *(v254 + v223);
LABEL_770:
        v256 = v73 - 5;
        v6 = (v6 + 1);
        swift::Demangle::NodePrinter::print(this, v255, v6, 0);
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
              goto LABEL_778;
            }

            if (v261 != 5)
            {
              break;
            }

            if (*(a2 + 2) > v258)
            {
LABEL_781:
              v263 = a2;
              if (v262 >= 2)
              {
                v263 = *a2;
              }

              v260 = *(v263 + v258);
              goto LABEL_773;
            }

LABEL_772:
            v260 = 0;
LABEL_773:
            swift::Demangle::NodePrinter::print(this, v260, v6, 0);
            v258 = v259++;
            if (v256 <= v258)
            {
              goto LABEL_791;
            }
          }

          if (v261 != 2)
          {
            goto LABEL_772;
          }

          v261 = 2;
LABEL_778:
          if (v261 > v258)
          {
            goto LABEL_781;
          }

          goto LABEL_772;
        }

        v264 = *(a2 + 18);
        v265 = a2;
        if ((v264 - 1) < 2)
        {
          goto LABEL_788;
        }

        if (v264 == 5 && *(a2 + 2))
        {
          v265 = *a2;
LABEL_788:
          v257 = v5;
          v266 = *v265;
        }

        else
        {
          v257 = v5;
          v266 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v266, v6, 0);
LABEL_791:
        if (*(this + 43))
        {
          goto LABEL_829;
        }

        std::string::append((this + 8), " with respect to parameters ", 0x1CuLL);
        swift::Demangle::NodePrinter::print(this, v252, v6, 0);
        std::string::append((this + 8), " and results ", 0xDuLL);
        swift::Demangle::NodePrinter::print(this, v221, v6, 0);
        std::string::append((this + 8), " to parameters ", 0xFuLL);
        swift::Demangle::NodePrinter::print(this, v213, v6, 0);
        if (!v256)
        {
          goto LABEL_829;
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
              goto LABEL_803;
            }

            v267 = 2;
          }
        }

        if (v267 <= v256)
        {
          goto LABEL_803;
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
          goto LABEL_826;
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
          v85 = -4;
          if (MEMORY[0x10] != 44)
          {
            v85 = -3;
          }
        }

        v184 = **(*a2 + 8 * v85) - 100;
        v185 = ((v184 >> 1) | (v184 << 7));
        if (v185 > 3)
        {
          if (v185 != 4)
          {
            if (v185 != 7)
            {
              goto LABEL_663;
            }

            v186 = "reverse-mode";
            goto LABEL_508;
          }

          v186 = "linear";
        }

        else
        {
          if (v185)
          {
            if (v185 != 1)
            {
              goto LABEL_663;
            }

            v186 = "forward-mode";
LABEL_508:
            v187 = (this + 8);
            v188 = 12;
            goto LABEL_662;
          }

          v186 = "normal";
        }

        v187 = (this + 8);
        v188 = 6;
LABEL_662:
        std::string::append(v187, v186, v188);
LABEL_663:
        std::string::append((this + 8), " differentiability witness for ", 0x1FuLL);
        v225 = *(a2 + 18);
        switch(v225)
        {
          case 1:
            goto LABEL_668;
          case 5:
            v225 = *(a2 + 2);
            if (v225)
            {
              goto LABEL_668;
            }

            break;
          case 2:
            v225 = 2;
LABEL_668:
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
                goto LABEL_687;
              }

              if (v228 == 1)
              {
                goto LABEL_679;
              }

              if (v228 != 5)
              {
                break;
              }

              if (*(a2 + 2) > v226)
              {
LABEL_682:
                v231 = a2;
                if ((v229 & 1) == 0)
                {
                  v231 = *a2;
                }

                v227 = *(v231 + v226);
                goto LABEL_670;
              }

LABEL_669:
              v227 = 0;
LABEL_670:
              swift::Demangle::NodePrinter::print(this, v227, v6 + 1, 0);
              if (v225 == ++v226)
              {
                LODWORD(v226) = v225;
                goto LABEL_687;
              }
            }

            if (v228 != 2)
            {
              goto LABEL_669;
            }

            v228 = 2;
LABEL_679:
            if (v228 > v226)
            {
              goto LABEL_682;
            }

            goto LABEL_669;
        }

        LODWORD(v226) = 0;
LABEL_687:
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
            goto LABEL_696;
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
LABEL_697:
          v6 = (v6 + 1);
          swift::Demangle::NodePrinter::print(this, v236, v6, 0);
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
                goto LABEL_706;
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
            goto LABEL_707;
          }

LABEL_706:
          v241 = 0;
LABEL_707:
          swift::Demangle::NodePrinter::print(this, v241, v6, 0);
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
              goto LABEL_829;
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

            goto LABEL_735;
          }

LABEL_829:
          result = 0;
          goto LABEL_830;
        }

LABEL_696:
        v236 = 0;
        goto LABEL_697;
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

              swift::Demangle::DemanglerPrinter::operator<<((this + 8), v394);
              v395 = 1;
            }

            ++v394;
          }

          while (v393 != v394);
        }

        std::string::push_back((this + 8), 125);
        goto LABEL_829;
      case 0x156:
        if (*(this + 52) != 1)
        {
          goto LABEL_829;
        }

        std::string::append((this + 8), "(", 1uLL);
        v380 = *(a2 + 18);
        if ((v380 - 1) < 2)
        {
          goto LABEL_1048;
        }

        if (v380 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1048:
          v381 = *a2;
        }

        else
        {
          v381 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v381, v6 + 1, 0);
        std::string::append((this + 8), ")", 1uLL);
        v564 = " await resume partial function for ";
        v574 = (this + 8);
        v575 = 35;
        goto LABEL_1662;
      case 0x157:
        if (*(this + 52) != 1)
        {
          goto LABEL_829;
        }

        std::string::append((this + 8), "(", 1uLL);
        v418 = *(a2 + 18);
        if ((v418 - 1) < 2)
        {
          goto LABEL_1156;
        }

        if (v418 == 5 && *(a2 + 2))
        {
          a2 = *a2;
LABEL_1156:
          v419 = *a2;
        }

        else
        {
          v419 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v419, v6 + 1, 0);
        std::string::append((this + 8), ")", 1uLL);
        v564 = " suspend resume partial function for ";
        v574 = (this + 8);
        v575 = 37;
        goto LABEL_1662;
      case 0x158:
        if (*(this + 43))
        {
          goto LABEL_829;
        }

        v272 = "accessible function runtime record for ";
        v273 = (this + 8);
        v274 = 39;
        goto LABEL_828;
      case 0x159:
        v38 = "_const ";
        goto LABEL_183;
      case 0x15A:
        if (*(this + 43))
        {
          goto LABEL_829;
        }

        v272 = "back deployment thunk for ";
        goto LABEL_1091;
      case 0x15B:
        v272 = "back deployment fallback for ";
        v273 = (this + 8);
        v274 = 29;
        goto LABEL_828;
      case 0x15C:
        v398 = *(this + 39);
        *(this + 39) = 1;
        v399 = *(a2 + 18);
        if (v399 == 2)
        {
          goto LABEL_1103;
        }

        if (v399 != 5)
        {
          goto LABEL_1817;
        }

        v400 = *(a2 + 2);
        if (v400 == 2)
        {
          a2 = *a2;
LABEL_1103:
          v401 = *(a2 + 1);
          std::string::append((this + 8), "existential shape for ", 0x16uLL);
          if (v401)
          {
            v402 = v6 + 1;
            swift::Demangle::NodePrinter::print(this, v401, v402, 0);
            std::string::append((this + 8), " ", 1uLL);
            v401 = 0;
            goto LABEL_1820;
          }
        }

        else
        {
          if (v400 < 2)
          {
LABEL_1817:
            v401 = 0;
          }

          else
          {
            v401 = *(*a2 + 8);
          }

          std::string::append((this + 8), "existential shape for ", 0x16uLL);
        }

        v402 = v6 + 1;
LABEL_1820:
        std::string::append((this + 8), "any ", 4uLL);
        swift::Demangle::NodePrinter::print(this, v401, v402, 0);
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
        goto LABEL_1333;
      case 0x15F:
        v370 = "non-unique existential shape symbolic reference 0x";
        v371 = (this + 8);
        v372 = 50;
        goto LABEL_1333;
      case 0x160:
        v383 = *(a2 + 18);
        v384 = a2;
        if ((v383 - 1) < 2)
        {
          goto LABEL_1057;
        }

        if (v383 == 5 && *(a2 + 2))
        {
          v384 = *a2;
LABEL_1057:
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
          v554 = "";
        }

        else
        {
          v554 = "non-";
        }

        std::string::append((this + 8), v554, 4 * (v553 != 350));
        std::string::append((this + 8), "unique) 0x", 0xAuLL);
        swift::Demangle::DemanglerPrinter::writeHex((this + 8), *v385);
        std::string::append((this + 8), " <", 2uLL);
        v555 = *(a2 + 18);
        v556 = a2;
        if (v555 == 2)
        {
          goto LABEL_1593;
        }

        if (v555 == 5 && *(a2 + 2) >= 2u)
        {
          v556 = *a2;
LABEL_1593:
          v557 = *(v556 + 1);
        }

        else
        {
          v557 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v557, v6 + 1, 0);
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

          swift::Demangle::NodePrinter::print(this, v558, v6 + 1, 0);
        }

        goto LABEL_1797;
      case 0x161:
        std::string::append((this + 8), "param", 5uLL);
        swift::Demangle::DemanglerPrinter::operator<<((this + 8), *a2);
        v272 = "-removed";
        goto LABEL_1794;
      case 0x162:
        v272 = "#_hasSymbol query for ";
        goto LABEL_1028;
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
LABEL_1333:
        std::string::append(v371, v370, v372);
        swift::Demangle::DemanglerPrinter::writeHex((this + 8), *a2);
        goto LABEL_829;
      case 0x16F:
        v386 = *(a2 + 18);
        v387 = a2;
        if ((v386 - 1) < 2)
        {
          goto LABEL_1066;
        }

        if (v386 == 5 && *(a2 + 2))
        {
          v387 = *a2;
LABEL_1066:
          v388 = *v387;
        }

        else
        {
          v388 = 0;
        }

        swift::Demangle::NodePrinter::print(this, v388, v6 + 1, 0);
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
          goto LABEL_1835;
        }

        if (!v560)
        {
          std::string::append((this + 8), "Swift.", 6uLL);
          v272 = "Copyable";
          goto LABEL_1794;
        }

        std::string::append((this + 8), "Swift.<bit ", 0xBuLL);
        if (*(a2 + 18) == 5)
        {
          a2 = *a2;
        }

        swift::Demangle::DemanglerPrinter::operator<<((this + 8), **(a2 + 1));
LABEL_1797:
        v272 = ">";
        goto LABEL_1798;
      case 0x171:
        swift::Demangle::DemanglerPrinter::operator<<((this + 8), *a2);
        goto LABEL_829;
      case 0x173:
        v272 = "coro function pointer to ";
        goto LABEL_1124;
      case 0x174:
        v272 = "default override of ";
LABEL_1038:
        v273 = (this + 8);
        v274 = 20;
        goto LABEL_828;
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