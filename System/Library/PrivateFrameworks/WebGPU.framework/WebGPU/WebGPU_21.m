WTF::StringImpl *WGSL::Metal::emitRadians(WGSL::Metal *this, const WGSL::Type **a2, WGSL::AST::CallExpression *a3)
{
  WTF::StringBuilder::append();
  WGSL::Metal::FunctionDefinitionWriter::visit(this, a2[3], 0);
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    v6 = (*(*this + 216))(this, *a2[9]);
    WTF::String::number(&v8, v6, 0.0174532925);
    v11[0] = " * ";
    v11[1] = 3;
    v10 = v8;
    v9 = 41;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v11, &v10, &v9);
    result = v8;
    v8 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WGSL::Metal::emitTextureDimensions(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v17 = this;
  v3 = *(a2 + 3);
  if (v3 && *(v3 + 48) == 1)
  {
    v13 = &v17;
    v14 = a2;
    v15 = &v16;
    v16 = v3;
    v4 = *(v3 + 8);
    WTF::String::number(*(v3 + 8));
    v20[0] = "uint";
    v20[1] = 4;
    v19 = v12;
    v18 = 40;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v20, &v19, &v18);
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v6);
    }

    WGSL::Metal::emitTextureDimensions(WGSL::Metal::FunctionDefinitionWriter *,WGSL::AST::CallExpression &)::$_0::operator()(&v13, "width", 6);
    WTF::StringBuilder::append();
    result = WGSL::Metal::emitTextureDimensions(WGSL::Metal::FunctionDefinitionWriter *,WGSL::AST::CallExpression &)::$_0::operator()(&v13, "height", 7);
    if (v4 >= 3)
    {
      WTF::StringBuilder::append();
      result = WGSL::Metal::emitTextureDimensions(WGSL::Metal::FunctionDefinitionWriter *,WGSL::AST::CallExpression &)::$_0::operator()(&v13, "depth", 6);
    }

    LOBYTE(v20[0]) = 41;
    v8 = *(v17 + 9);
    if (v8 && (v9 = *(v17 + 20), v9 < *(v8 + 4)) && !*(v17 + 8))
    {
      v10 = *(v8 + 16);
      v11 = *(v8 + 8);
      *(v17 + 20) = v9 + 1;
      if ((v10 & 4) != 0)
      {
        *(v11 + v9) = 41;
      }

      else
      {
        *(v11 + 2 * v9) = 41;
      }
    }

    else
    {
      return WTF::StringBuilder::append();
    }
  }

  else
  {
    v13 = &v17;
    v14 = a2;
    v15 = &v16;
    v16 = 0;
    return WGSL::Metal::emitTextureDimensions(WGSL::Metal::FunctionDefinitionWriter *,WGSL::AST::CallExpression &)::$_0::operator()(&v13, "width", 6);
  }

  return result;
}

uint64_t WGSL::Metal::emitTextureGather(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v3 = *(a2 + 21);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_55;
  }

  v6 = *(a2 + 9);
  v7 = *v6;
  v8 = *(*v6 + 24);
  v9 = *(v8 + 48);
  if (!*(v8 + 48))
  {
    if (*(v7 + 56))
    {
      v14 = *(v7 + 48);
      switch(v14)
      {
        case 5:
          v15 = *(v7 + 32);
          if (v15 > 1)
          {
            goto LABEL_14;
          }

          break;
        case 4:
          v15 = *(v7 + 32);
          if (v15 > 1)
          {
            goto LABEL_14;
          }

          break;
        case 3:
          v15 = *(v7 + 32);
          if (v15 > 1)
          {
LABEL_14:
            if (v15 == 2)
            {
              v11 = "z";
              goto LABEL_20;
            }

            if (v15 == 3)
            {
              v11 = "w";
LABEL_20:
              if (v3 != 1)
              {
                v16 = *(v6[1] + 24);
                if (*(v16 + 48) != 7)
                {
                  mpark::throw_bad_variant_access(this);
                }

                if ((*(v16 + 8) & 0xFE) == 2)
                {
                  v17 = *(v6[v3 - 1] + 24);
                  if (!v17 || *(v17 + 48) != 1)
                  {
                    v13 = 0;
                    v12 = 1;
                    v10 = 1;
                    goto LABEL_36;
                  }

                  v18 = *v17;
                  if (v18)
                  {
                    while (v18[48] == 10)
                    {
                      v18 = *(v18 + 1);
                      if (!v18)
                      {
                        goto LABEL_34;
                      }
                    }

                    if (!v18[48] && *v18 < 3u)
                    {
                      v12 = 1;
                      v10 = 1;
                      v13 = 1;
                      goto LABEL_36;
                    }
                  }

LABEL_34:
                  v13 = 0;
                  v10 = 1;
                }

                else
                {
                  v13 = 1;
                  v10 = 1;
                }

                v12 = 1;
                goto LABEL_36;
              }

LABEL_56:
              __break(0xC471u);
              JUMPOUT(0x2257571B8);
            }

            goto LABEL_57;
          }

          break;
        default:
          goto LABEL_58;
      }

      if (!v15)
      {
        v11 = "x";
        goto LABEL_20;
      }

      if (v15 == 1)
      {
        v11 = "y";
        goto LABEL_20;
      }

LABEL_57:
      __break(0xC471u);
      JUMPOUT(0x2257571D8);
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v10 = 0;
  v11 = 0;
  v12 = -1;
  v13 = 1;
LABEL_36:
  v19 = (this + 64);
  (*(*this + 216))(this, v6[v10], a3);
  result = WTF::StringBuilder::append();
  if (*(a2 + 21) > v10 + 1)
  {
    result = (*(*this + 216))(this, *(*(a2 + 9) + 8 * v10 + 8));
    v21 = v10 | 2;
    if (v21 < *(a2 + 21))
    {
      while (1)
      {
        WTF::StringBuilder::append();
        if (v21 >= *(a2 + 21))
        {
          break;
        }

        result = (*(*this + 216))(this, *(*(a2 + 9) + 8 * v21++));
        if (v21 >= *(a2 + 21))
        {
          goto LABEL_40;
        }
      }

LABEL_58:
      __break(0xC471u);
      JUMPOUT(0x2257571A8);
    }
  }

LABEL_40:
  if (v13)
  {
    if (v9)
    {
      goto LABEL_42;
    }
  }

  else
  {
    result = WTF::StringBuilder::append();
    if (v9)
    {
LABEL_42:
      LOBYTE(v27[0]) = 41;
      v22 = *(this + 9);
      if (!v22)
      {
        return WTF::StringBuilder::append();
      }

      goto LABEL_46;
    }
  }

  v27[0] = ", component::";
  v27[1] = 13;
  v26[0] = v11;
  v26[1] = v12;
  result = WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), v27, v26);
  LOBYTE(v27[0]) = 41;
  v22 = *(this + 9);
  if (!v22)
  {
    return WTF::StringBuilder::append();
  }

LABEL_46:
  v23 = *(this + 20);
  if (v23 >= *(v22 + 4) || *v19)
  {
    return WTF::StringBuilder::append();
  }

  v24 = *(v22 + 16);
  v25 = *(v22 + 8);
  *(this + 20) = v23 + 1;
  if ((v24 & 4) != 0)
  {
    *(v25 + v23) = 41;
  }

  else
  {
    *(v25 + 2 * v23) = 41;
  }

  return result;
}

uint64_t WGSL::Metal::emitTextureGatherCompare(uint64_t this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (*(a2 + 21))
  {
    v3 = this;
    (*(*this + 216))(this, **(a2 + 9), a3);
    WTF::StringBuilder::append();

    return WGSL::Metal::visitArguments(v3, a2, 1);
  }

  else
  {
    __break(0xC471u);
  }

  return this;
}

void WGSL::Metal::emitTextureLoad(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v3 = *(a2 + 21);
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x225757A68);
  }

  v6 = *(a2 + 9);
  v7 = *(*v6 + 24);
  if (v7 && !v7[48] && *v7 == 10)
  {
    if (v3 != 1)
    {
      v8 = *v6;
      v9 = v6[1];
      WTF::StringBuilder::append();
      v10 = *(this + 26) + 1;
      *(this + 26) = v10;
      v35 = v10;
      v33 = "auto __coords = uint2((";
      v34 = 23;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v35, &v33);
      (*(*this + 216))(this, v8);
      WTF::StringBuilder::append();
      (*(*this + 216))(this, v9);
      WTF::StringBuilder::append();
      v35 = *(this + 26);
      v33 = "auto __y = float(";
      v34 = 17;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v35, &v33);
      (*(*this + 216))(this, v8);
      WTF::StringBuilder::append();
      v35 = *(this + 26);
      v33 = "auto __xAdjustment = ";
      v34 = 21;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v35, &v33);
      (*(*this + 216))(this, v8);
      v35 = *(this + 26);
      v33 = ".SecondPlane.get_width(0) / static_cast<float>(";
      v34 = 47;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v35, &v33);
      (*(*this + 216))(this, v8);
      v35 = *(this + 26);
      v33 = ".FirstPlane.get_width(0));";
      v34 = 26;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v35, &v33);
      v35 = *(this + 26);
      v33 = "auto __yAdjustment = ";
      v34 = 21;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v35, &v33);
      (*(*this + 216))(this, v8);
      v35 = *(this + 26);
      v33 = ".SecondPlane.get_height(0) / static_cast<float>(";
      v34 = 48;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v35, &v33);
      (*(*this + 216))(this, v8);
      v35 = *(this + 26);
      v33 = ".FirstPlane.get_height(0));";
      v34 = 27;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v35, &v33);
      v35 = *(this + 26);
      v33 = "auto __cbcr = float2(";
      v34 = 21;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v35, &v33);
      (*(*this + 216))(this, v8);
      WTF::StringBuilder::append();
      v35 = *(this + 26);
      v33 = "auto __ycbcr = float3(__y, __cbcr);\n";
      v34 = 36;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v35, &v33);
      v35 = *(this + 26);
      v33 = "float4(";
      v34 = 7;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v35, &v33);
      (*(*this + 216))(this, v8);
      WTF::StringBuilder::append();
      v11 = *(this + 26) - 1;
      *(this + 26) = v11;
      v35 = v11;
      v33 = "})";
      v34 = 2;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v35, &v33);
      return;
    }

    __break(0xC471u);
LABEL_55:
    JUMPOUT(0x225757A60);
  }

  (*(*this + 216))(this);
  WTF::StringBuilder::append();
  LOBYTE(v33) = 40;
  v12 = *(this + 9);
  if (v12 && (v13 = *(this + 20), v13 < *(v12 + 4)) && !*(this + 8))
  {
    v27 = *(v12 + 16);
    v28 = *(v12 + 8);
    *(this + 20) = v13 + 1;
    if ((v27 & 4) != 0)
    {
      *(v28 + v13) = 40;
    }

    else
    {
      *(v28 + 2 * v13) = 40;
    }
  }

  else
  {
    WTF::StringBuilder::append();
  }

  v14 = *(a2 + 21);
  if (v14 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x225757A70);
  }

  v15 = *(*(*(a2 + 9) + 8) + 24);
  if (v15 && *(v15 + 48) == 1)
  {
    v16 = *(v15 + 8);
    if (v16 == 2)
    {
      v17 = 0;
      v18 = "uint2";
    }

    else
    {
      if (v16 != 3)
      {
        __break(0xC471u);
        JUMPOUT(0x225757A98);
      }

      v17 = 0;
      v18 = "uint3";
    }

    v19 = 5;
  }

  else
  {
    v17 = 1;
    v18 = "uint";
    v19 = 4;
  }

  v33 = v18;
  v34 = v19;
  LOBYTE(v35) = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), &v33, &v35);
  if (*(a2 + 21) < 2u)
  {
    __break(0xC471u);
    JUMPOUT(0x225757A78);
  }

  (*(*this + 216))(this, *(*(a2 + 9) + 8));
  LOBYTE(v33) = 41;
  v20 = *(this + 9);
  if (v20 && (v21 = *(this + 20), v21 < *(v20 + 4)) && !*(this + 8))
  {
    v29 = *(v20 + 16);
    v30 = *(v20 + 8);
    *(this + 20) = v21 + 1;
    if ((v29 & 4) != 0)
    {
      *(v30 + v21) = 41;
    }

    else
    {
      *(v30 + 2 * v21) = 41;
    }
  }

  else
  {
    WTF::StringBuilder::append();
  }

  if (v14 != 2)
  {
    if (v17)
    {
      v22 = -v14;
      v23 = 2;
      while (1)
      {
        if (v22 + v23 != -1)
        {
          WTF::StringBuilder::append();
          if (v23 >= *(a2 + 21))
          {
            goto LABEL_49;
          }

          (*(*this + 216))(this, *(*(a2 + 9) + 8 * v23));
        }

        ++v23;
        if (!(v22 + v23))
        {
          goto LABEL_35;
        }
      }
    }

    v24 = 2;
    while (1)
    {
      WTF::StringBuilder::append();
      if (v24 >= *(a2 + 21))
      {
        break;
      }

      (*(*this + 216))(this, *(*(a2 + 9) + 8 * v24++));
      if (v14 == v24)
      {
        goto LABEL_35;
      }
    }

LABEL_49:
    __break(0xC471u);
    goto LABEL_55;
  }

LABEL_35:
  LOBYTE(v33) = 41;
  v25 = *(this + 9);
  if (v25 && (v26 = *(this + 20), v26 < *(v25 + 4)) && !*(this + 8))
  {
    v31 = *(v25 + 16);
    v32 = *(v25 + 8);
    *(this + 20) = v26 + 1;
    if ((v31 & 4) != 0)
    {
      *(v32 + v26) = 41;
    }

    else
    {
      *(v32 + 2 * v26) = 41;
    }
  }

  else
  {
    WTF::StringBuilder::append();
  }
}

uint64_t WGSL::Metal::emitTextureNumLayers(uint64_t this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9), a3);

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return this;
}

uint64_t WGSL::Metal::emitTextureNumLevels(uint64_t this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9), a3);

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return this;
}

uint64_t WGSL::Metal::emitTextureNumSamples(uint64_t this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9), a3);

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return this;
}

uint64_t WGSL::Metal::emitTextureSample(uint64_t this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (*(a2 + 21))
  {
    v3 = this;
    (*(*this + 216))(this, **(a2 + 9), a3);
    WTF::StringBuilder::append();

    return WGSL::Metal::visitArguments(v3, a2, 1);
  }

  else
  {
    __break(0xC471u);
  }

  return this;
}

void WGSL::Metal::emitTextureSampleBaseClampToEdge(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v3 = *(a2 + 21);
  if (!v3)
  {
    goto LABEL_12;
  }

  v5 = *(a2 + 9);
  v6 = *v5;
  v7 = *(*v5 + 24);
  if (!v7 || *(v7 + 48) != 7)
  {
    if (v3 == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x225758080);
    }

    if (v3 > 2)
    {
      v9 = v5[1];
      v10 = v5[2];
      WTF::StringBuilder::append();
      v11 = *(this + 26) + 1;
      *(this + 26) = v11;
      v15 = v11;
      v13 = "auto __coords = (";
      v14 = 17;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v15, &v13);
      (*(*this + 216))(this, v6);
      WTF::StringBuilder::append();
      (*(*this + 216))(this, v10);
      WTF::StringBuilder::append();
      v15 = *(this + 26);
      v13 = "auto __y = float(";
      v14 = 17;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v15, &v13);
      (*(*this + 216))(this, v6);
      WTF::StringBuilder::append();
      (*(*this + 216))(this, v9);
      WTF::StringBuilder::append();
      v15 = *(this + 26);
      v13 = "auto __cbcr = float2(";
      v14 = 21;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v15, &v13);
      (*(*this + 216))(this, v6);
      WTF::StringBuilder::append();
      (*(*this + 216))(this, v9);
      WTF::StringBuilder::append();
      v15 = *(this + 26);
      v13 = "auto __ycbcr = float3(__y, __cbcr);\n";
      v14 = 36;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v15, &v13);
      v15 = *(this + 26);
      v13 = "float4(";
      v14 = 7;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v15, &v13);
      (*(*this + 216))(this, v6);
      WTF::StringBuilder::append();
      v12 = *(this + 26) - 1;
      *(this + 26) = v12;
      v15 = v12;
      v13 = "})";
      v14 = 2;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v15, &v13);
      return;
    }

LABEL_12:
    __break(0xC471u);
    JUMPOUT(0x225758078);
  }

  (*(*this + 216))(this, v6, a3);
  WTF::StringBuilder::append();

  WGSL::Metal::visitArguments(this, a2, 1);
}

uint64_t WGSL::Metal::emitTextureSampleBias(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (!*(a2 + 21))
  {
    __break(0xC471u);
    JUMPOUT(0x2257583A8);
  }

  v4 = *(**(a2 + 9) + 24);
  if (*(v4 + 48) != 7)
  {
    mpark::throw_bad_variant_access(this);
  }

  v6 = *(v4 + 8);
  if (v6 == 6 || v6 == 3)
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  v9 = (this + 64);
  (*(*this + 216))(this);
  WTF::StringBuilder::append();
  if (*(a2 + 21) < 2u)
  {
    goto LABEL_36;
  }

  (*(*this + 216))(this, *(*(a2 + 9) + 8));
  for (i = 2; i != v8; (*(*this + 216))(this, *(*(a2 + 9) + 8 * i++)))
  {
    WTF::StringBuilder::append();
    if (i >= *(a2 + 21))
    {
      goto LABEL_36;
    }
  }

  WTF::StringBuilder::append();
  if (*(a2 + 21) <= v8)
  {
LABEL_36:
    __break(0xC471u);
    JUMPOUT(0x225758398);
  }

  result = (*(*this + 216))(this, *(*(a2 + 9) + 8 * v8));
  v12 = *(this + 9);
  if (v12 && (v13 = *(this + 20), v13 < *(v12 + 4)) && !*v9)
  {
    v17 = *(v12 + 16);
    v18 = *(v12 + 8);
    *(this + 20) = v13 + 1;
    if ((v17 & 4) != 0)
    {
      *(v18 + v13) = 41;
    }

    else
    {
      *(v18 + 2 * v13) = 41;
    }
  }

  else
  {
    result = WTF::StringBuilder::append();
  }

  if (*(a2 + 21) > (v8 + 1))
  {
    v14 = v8 + 1;
    do
    {
      WTF::StringBuilder::append();
      if (v14 >= *(a2 + 21))
      {
        __break(0xC471u);
        JUMPOUT(0x2257583A0);
      }

      result = (*(*this + 216))(this, *(*(a2 + 9) + 8 * v14++));
    }

    while (v14 < *(a2 + 21));
  }

  v15 = *(this + 9);
  if (!v15)
  {
    return WTF::StringBuilder::append();
  }

  v16 = *(this + 20);
  if (v16 >= *(v15 + 4) || *v9)
  {
    return WTF::StringBuilder::append();
  }

  v19 = *(v15 + 16);
  v20 = *(v15 + 8);
  *(this + 20) = v16 + 1;
  if ((v19 & 4) != 0)
  {
    *(v20 + v16) = 41;
  }

  else
  {
    *(v20 + 2 * v16) = 41;
  }

  return result;
}

uint64_t WGSL::Metal::emitTextureSampleCompare(uint64_t this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (*(a2 + 21))
  {
    v3 = this;
    (*(*this + 216))(this, **(a2 + 9), a3);
    WTF::StringBuilder::append();

    return WGSL::Metal::visitArguments(v3, a2, 1);
  }

  else
  {
    __break(0xC471u);
  }

  return this;
}

uint64_t WGSL::Metal::emitTextureSampleGrad(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (!*(a2 + 21))
  {
    __break(0xC471u);
    JUMPOUT(0x2257588F4);
  }

  v4 = *(**(a2 + 9) + 24);
  if (*(v4 + 48) != 7)
  {
    mpark::throw_bad_variant_access(this);
  }

  v6 = *(v4 + 8);
  if (v6 > 4)
  {
    switch(v6)
    {
      case 5:
        v15 = 3;
        v13 = 1;
        v11 = 13;
        v14 = 1;
        break;
      case 6:
        v14 = 0;
        v15 = 4;
        v13 = 1;
        v11 = 13;
        break;
      case 7:
LABEL_29:
        v15 = 3;
        v13 = 1;
        v11 = 11;
        v14 = 1;
        v12 = "gradient2d";
        goto LABEL_33;
      default:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        goto LABEL_33;
    }

    v12 = "gradientcube";
    goto LABEL_33;
  }

  if ((v6 - 1) < 2)
  {
    goto LABEL_29;
  }

  v7 = "gradient3d";
  v8 = 11;
  if (v6 == 4)
  {
    v9 = 1;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9 = 0;
  }

  if (v6 == 4)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  if (v6 == 3)
  {
    v11 = 11;
  }

  else
  {
    v11 = v8;
  }

  if (v6 == 3)
  {
    v12 = "gradient2d";
  }

  else
  {
    v12 = v7;
  }

  if (v6 == 3)
  {
    v13 = 1;
  }

  else
  {
    v13 = v9;
  }

  if (v6 == 3)
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  if (v6 == 3)
  {
    v15 = 4;
  }

  else
  {
    v15 = v10;
  }

LABEL_33:
  v16 = (this + 64);
  (*(*this + 216))(this);
  WTF::StringBuilder::append();
  if (!v13)
  {
    goto LABEL_43;
  }

  if (*(a2 + 21) < 2u)
  {
    goto LABEL_71;
  }

  if (v15 <= 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15;
  }

  (*(*this + 216))(this, *(*(a2 + 9) + 8));
  if (v17 != 2)
  {
    WTF::StringBuilder::append();
    if (*(a2 + 21) > 2u)
    {
      (*(*this + 216))(this, *(*(a2 + 9) + 16));
      if (v14)
      {
        goto LABEL_43;
      }

      WTF::StringBuilder::append();
      if (*(a2 + 21) >= 4u)
      {
        (*(*this + 216))(this, *(*(a2 + 9) + 24));
        goto LABEL_43;
      }
    }

LABEL_71:
    __break(0xC471u);
    goto LABEL_72;
  }

LABEL_43:
  v31[0] = ", ";
  v31[1] = 2;
  v18 = v11 - 1;
  if (!v11)
  {
    v18 = 0;
  }

  v30[0] = v12;
  v30[1] = v18;
  v29 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v31, v30, &v29);
  if (*(a2 + 21) <= v15)
  {
    __break(0xC471u);
    JUMPOUT(0x2257588FCLL);
  }

  (*(*this + 216))(this, *(*(a2 + 9) + 8 * v15));
  WTF::StringBuilder::append();
  if (*(a2 + 21) <= v15 + 1)
  {
    __break(0xC471u);
    JUMPOUT(0x225758904);
  }

  result = (*(*this + 216))(this, *(*(a2 + 9) + 8 * (v15 + 1)));
  LOBYTE(v31[0]) = 41;
  v20 = *(this + 9);
  if (v20 && (v21 = *(this + 20), v21 < *(v20 + 4)) && !*v16)
  {
    v25 = *(v20 + 16);
    v26 = *(v20 + 8);
    *(this + 20) = v21 + 1;
    if ((v25 & 4) != 0)
    {
      *(v26 + v21) = 41;
    }

    else
    {
      *(v26 + 2 * v21) = 41;
    }
  }

  else
  {
    result = WTF::StringBuilder::append();
  }

  if (*(a2 + 21) > v15 + 2)
  {
    v22 = v15 + 2;
    while (1)
    {
      WTF::StringBuilder::append();
      if (v22 >= *(a2 + 21))
      {
        break;
      }

      result = (*(*this + 216))(this, *(*(a2 + 9) + 8 * v22++));
      if (v22 >= *(a2 + 21))
      {
        goto LABEL_55;
      }
    }

    __break(0xC471u);
LABEL_72:
    JUMPOUT(0x2257588ECLL);
  }

LABEL_55:
  LOBYTE(v31[0]) = 41;
  v23 = *(this + 9);
  if (!v23)
  {
    return WTF::StringBuilder::append();
  }

  v24 = *(this + 20);
  if (v24 >= *(v23 + 4) || *v16)
  {
    return WTF::StringBuilder::append();
  }

  v27 = *(v23 + 16);
  v28 = *(v23 + 8);
  *(this + 20) = v24 + 1;
  if ((v27 & 4) != 0)
  {
    *(v28 + v24) = 41;
  }

  else
  {
    *(v28 + 2 * v24) = 41;
  }

  return result;
}

uint64_t WGSL::Metal::emitTextureSampleLevel(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  if (!*(a2 + 21))
  {
    __break(0xC471u);
    JUMPOUT(0x225758D04);
  }

  v5 = *(**(a2 + 9) + 24);
  if (!v5)
  {
    v6 = MEMORY[0x30];
    goto LABEL_9;
  }

  v6 = v5[48];
  if (v6 == 8)
  {
    v8 = *v5 == 3;
    goto LABEL_12;
  }

  if (v6 != 7)
  {
LABEL_9:
    if (v6 != 9)
    {
      mpark::throw_bad_variant_access(this);
    }

    v8 = ((*v5 - 2) & 0xFD) == 0;
    goto LABEL_12;
  }

  v7 = v5[8];
  v8 = v7 == 3 || v7 == 6;
LABEL_12:
  if (v8)
  {
    v10 = 4;
  }

  else
  {
    v10 = 3;
  }

  v11 = (this + 64);
  (*(*this + 216))(this);
  WTF::StringBuilder::append();
  if (*(a2 + 21) < 2u)
  {
    goto LABEL_61;
  }

  (*(*this + 216))(this, *(*(a2 + 9) + 8));
  for (i = 2; i != v10; (*(*this + 216))(this, *(*(a2 + 9) + 8 * i++)))
  {
    v13 = *(this + 9);
    if (v13 && (v14 = *(this + 20), v14 < *(v13 + 4)) && !*v11)
    {
      v15 = *(v13 + 16);
      v16 = *(v13 + 8);
      *(this + 20) = v14 + 1;
      if ((v15 & 4) != 0)
      {
        *(v16 + v14) = 44;
      }

      else
      {
        *(v16 + 2 * v14) = 44;
      }
    }

    else
    {
      WTF::StringBuilder::append();
    }

    if (i >= *(a2 + 21))
    {
      goto LABEL_61;
    }
  }

  WTF::StringBuilder::append();
  if (*(a2 + 21) <= v10)
  {
LABEL_61:
    __break(0xC471u);
    JUMPOUT(0x225758CF4);
  }

  result = (*(*this + 216))(this, *(*(a2 + 9) + 8 * v10));
  v18 = *(this + 9);
  if (v18 && (v19 = *(this + 20), v19 < *(v18 + 4)) && !*v11)
  {
    v27 = *(v18 + 16);
    v28 = *(v18 + 8);
    *(this + 20) = v19 + 1;
    if ((v27 & 4) != 0)
    {
      *(v28 + v19) = 41;
    }

    else
    {
      *(v28 + 2 * v19) = 41;
    }
  }

  else
  {
    result = WTF::StringBuilder::append();
  }

  if (*(a2 + 21) > (v10 + 1))
  {
    v20 = v10 + 1;
    do
    {
      v21 = *(this + 9);
      if (v21 && (v22 = *(this + 20), v22 < *(v21 + 4)) && !*v11)
      {
        v23 = *(v21 + 16);
        v24 = *(v21 + 8);
        *(this + 20) = v22 + 1;
        if ((v23 & 4) != 0)
        {
          *(v24 + v22) = 44;
        }

        else
        {
          *(v24 + 2 * v22) = 44;
        }
      }

      else
      {
        WTF::StringBuilder::append();
      }

      if (v20 >= *(a2 + 21))
      {
        __break(0xC471u);
        JUMPOUT(0x225758CFCLL);
      }

      result = (*(*this + 216))(this, *(*(a2 + 9) + 8 * v20++));
    }

    while (v20 < *(a2 + 21));
  }

  v25 = *(this + 9);
  if (!v25)
  {
    return WTF::StringBuilder::append();
  }

  v26 = *(this + 20);
  if (v26 >= *(v25 + 4) || *v11)
  {
    return WTF::StringBuilder::append();
  }

  v29 = *(v25 + 16);
  v30 = *(v25 + 8);
  *(this + 20) = v26 + 1;
  if ((v29 & 4) != 0)
  {
    *(v30 + v26) = 41;
  }

  else
  {
    *(v30 + 2 * v26) = 41;
  }

  return result;
}

mpark *WGSL::Metal::emitTextureStore(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v3 = *(a2 + 21);
  if (v3 <= 1)
  {
    goto LABEL_36;
  }

  v5 = *(a2 + 9);
  v6 = v5[1];
  v7 = *(v6 + 24);
  if (v7 && *(v7 + 48) == 1)
  {
    v8 = *(v7 + 8);
    if (v8 == 2)
    {
      v9 = "uint2";
      goto LABEL_10;
    }

    if (v8 == 3)
    {
      v9 = "uint3";
LABEL_10:
      v10 = 5;
      v11 = *v5;
      if (v3 != 3)
      {
        goto LABEL_11;
      }

LABEL_7:
      v12 = 0;
      v13 = 2;
      goto LABEL_13;
    }

LABEL_36:
    __break(0xC471u);
    JUMPOUT(0x225759048);
  }

  v9 = "uint";
  v10 = 4;
  v11 = *v5;
  if (v3 == 3)
  {
    goto LABEL_7;
  }

LABEL_11:
  if (v3 == 2)
  {
    __break(0xC471u);
    JUMPOUT(0x225759050);
  }

  v12 = v5[2];
  v13 = 3;
LABEL_13:
  v14 = v5[v13];
  (*(*this + 216))(this, v11, a3);
  WTF::StringBuilder::append();
  (*(*this + 216))(this, v14);
  v27 = ", ";
  v28 = 2;
  v26[0] = v9;
  v26[1] = v10;
  v25 = 40;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), &v27, v26, &v25);
  result = (*(*this + 216))(this, v6);
  LOBYTE(v27) = 41;
  v16 = *(this + 9);
  if (v16 && (v17 = *(this + 20), v17 < *(v16 + 4)) && !*(this + 8))
  {
    v21 = *(v16 + 16);
    v22 = *(v16 + 8);
    *(this + 20) = v17 + 1;
    if ((v21 & 4) != 0)
    {
      *(v22 + v17) = 41;
    }

    else
    {
      *(v22 + 2 * v17) = 41;
    }
  }

  else
  {
    result = WTF::StringBuilder::append();
  }

  if (v12)
  {
    WTF::StringBuilder::append();
    result = (*(*this + 216))(this, v12);
  }

  LOBYTE(v27) = 41;
  v18 = *(this + 9);
  if (v18 && (v19 = *(this + 20), v19 < *(v18 + 4)) && !*(this + 8))
  {
    v23 = *(v18 + 16);
    v24 = *(v18 + 8);
    *(this + 20) = v19 + 1;
    if ((v23 & 4) != 0)
    {
      *(v24 + v19) = 41;
    }

    else
    {
      *(v24 + 2 * v19) = 41;
    }
  }

  else
  {
    result = WTF::StringBuilder::append();
  }

  v20 = *(v11 + 24);
  if (*(v20 + 48) != 8)
  {
    mpark::throw_bad_variant_access(result);
  }

  if (*(v20 + 2) == 1)
  {
    v27 = ";\n";
    v28 = 2;
    LODWORD(v26[0]) = *(this + 26);
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>>((this + 64), &v27, v26);
    (*(*this + 216))(this, v11);
    return WTF::StringBuilder::append();
  }

  return result;
}

uint64_t WGSL::Metal::emitUnpack2x16Float(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9));

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WGSL::Metal::emitUnpack4xI8(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9));

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WGSL::Metal::emitUnpack4xU8(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    (*(*this + 216))(this, **(a2 + 9));

    return WTF::StringBuilder::append();
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WGSL::Metal::emitWorkgroupUniformLoad(WGSL::Metal *this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  result = WTF::StringBuilder::append();
  if (*(a2 + 21))
  {
    result = (*(*this + 216))(this, **(a2 + 9));
    v6 = *(this + 9);
    if (v6 && (v7 = *(this + 20), v7 < *(v6 + 4)) && !*(this + 8))
    {
      v8 = *(v6 + 16);
      v9 = *(v6 + 8);
      *(this + 20) = v7 + 1;
      if ((v8 & 4) != 0)
      {
        *(v9 + v7) = 41;
      }

      else
      {
        *(v9 + 2 * v7) = 41;
      }
    }

    else
    {
      return WTF::StringBuilder::append();
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

const char *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::$_0::__invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 1;
  if ((v1 & 1) == 0)
  {
    WTF::StringBuilder::append();
  }

  return "__wgslAcos";
}

const char *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::$_1::__invoke(uint64_t a1)
{
  v1 = *(a1 + 10);
  *(a1 + 10) = 1;
  if ((v1 & 1) == 0)
  {
    WTF::StringBuilder::append();
  }

  return "__wgslAcosh";
}

const char *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::$_2::__invoke(uint64_t a1)
{
  v1 = *(a1 + 9);
  *(a1 + 9) = 1;
  if ((v1 & 1) == 0)
  {
    WTF::StringBuilder::append();
  }

  return "__wgslAsin";
}

const char *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::$_3::__invoke(uint64_t a1)
{
  v1 = *(a1 + 11);
  *(a1 + 11) = 1;
  if ((v1 & 1) == 0)
  {
    WTF::StringBuilder::append();
  }

  return "__wgslAtanh";
}

const char *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::$_25::__invoke(uint64_t a1)
{
  v1 = *(a1 + 12);
  *(a1 + 12) = 1;
  if ((v1 & 1) == 0)
  {
    WTF::StringBuilder::append();
  }

  return "__wgslInverseSqrt";
}

const char *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::$_26::__invoke(uint64_t a1)
{
  v1 = *(a1 + 13);
  *(a1 + 13) = 1;
  if ((v1 & 1) == 0)
  {
    WTF::StringBuilder::append();
  }

  return "__wgslLog";
}

const char *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::$_27::__invoke(uint64_t a1)
{
  v1 = *(a1 + 14);
  *(a1 + 14) = 1;
  if ((v1 & 1) == 0)
  {
    WTF::StringBuilder::append();
  }

  return "__wgslLog2";
}

const char *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::$_29::__invoke(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 1;
  if ((v1 & 1) == 0)
  {
    WTF::StringBuilder::append();
  }

  return "__wgslPackFloatToSnorm2x16";
}

const char *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::$_30::__invoke(uint64_t a1)
{
  v1 = *(a1 + 17);
  *(a1 + 17) = 1;
  if ((v1 & 1) == 0)
  {
    WTF::StringBuilder::append();
  }

  return "__wgslPackFloatToUnorm2x16";
}

const char *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::$_31::__invoke(uint64_t a1)
{
  v1 = *(a1 + 18);
  *(a1 + 18) = 1;
  if ((v1 & 1) == 0)
  {
    WTF::StringBuilder::append();
  }

  return "__wgslPackFloatToSnorm4x8";
}

const char *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::$_32::__invoke(uint64_t a1)
{
  v1 = *(a1 + 19);
  *(a1 + 19) = 1;
  if ((v1 & 1) == 0)
  {
    WTF::StringBuilder::append();
  }

  return "__wgslPackFloatToUnorm4x8";
}

const char *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Type const*,WGSL::AST::CallExpression &)::$_36::__invoke(uint64_t a1)
{
  v1 = *(a1 + 15);
  *(a1 + 15) = 1;
  if ((v1 & 1) == 0)
  {
    WTF::StringBuilder::append();
  }

  return "__wgslSqrt";
}

uint64_t WGSL::Metal::visitArguments(uint64_t this, WGSL::Metal::FunctionDefinitionWriter *a2, WGSL::AST::CallExpression *a3)
{
  v3 = a3;
  v5 = this;
  v6 = *(this + 72);
  if (v6 && (v7 = *(this + 80), v7 < *(v6 + 4)) && !*(this + 64))
  {
    v13 = *(v6 + 16);
    v14 = *(v6 + 8);
    *(this + 80) = v7 + 1;
    if ((v13 & 4) != 0)
    {
      *(v14 + v7) = 40;
    }

    else
    {
      *(v14 + 2 * v7) = 40;
    }
  }

  else
  {
    this = WTF::StringBuilder::append();
  }

  if (*(a2 + 21) <= v3 || (this = (*(*v5 + 216))(v5, *(*(a2 + 9) + 8 * v3)), v8 = v3 + 1, v9 = *(a2 + 21), v8 >= v9))
  {
LABEL_12:
    v11 = *(v5 + 72);
    if (v11 && (v12 = *(v5 + 80), v12 < *(v11 + 4)) && !*(v5 + 64))
    {
      v15 = *(v11 + 16);
      v16 = *(v11 + 8);
      *(v5 + 80) = v12 + 1;
      if ((v15 & 4) != 0)
      {
        *(v16 + v12) = 41;
      }

      else
      {
        *(v16 + 2 * v12) = 41;
      }
    }

    else
    {
      return WTF::StringBuilder::append();
    }
  }

  else
  {
    v10 = -1;
    while (1)
    {
      if (v10)
      {
        this = WTF::StringBuilder::append();
        v9 = *(a2 + 21);
      }

      if (v8 >= v9)
      {
        break;
      }

      this = (*(*v5 + 216))(v5, *(*(a2 + 9) + 8 * v8++));
      v9 = *(a2 + 21);
      --v10;
      if (v8 >= v9)
      {
        goto LABEL_12;
      }
    }

    __break(0xC471u);
  }

  return this;
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::UnaryExpression *a2)
{
  v4 = *(this + 9);
  if (v4 && (v5 = *(this + 20), v5 < *(v4 + 4)) && !*(this + 8))
  {
    v20 = *(v4 + 16);
    v21 = *(v4 + 8);
    *(this + 20) = v5 + 1;
    if ((v20 & 4) != 0)
    {
      *(v21 + v5) = 40;
    }

    else
    {
      *(v21 + 2 * v5) = 40;
    }
  }

  else
  {
    WTF::StringBuilder::append();
  }

  v6 = *(a2 + 72);
  if (v6 <= 1)
  {
    if (*(a2 + 72))
    {
      if (v6 == 1)
      {
        v9 = *(this + 9);
        if (!v9)
        {
          goto LABEL_30;
        }

        v10 = *(this + 20);
        if (v10 >= *(v9 + 4) || *(this + 8))
        {
          goto LABEL_30;
        }

        v32 = *(v9 + 16);
        v33 = *(v9 + 8);
        *(this + 20) = v10 + 1;
        if ((v32 & 4) != 0)
        {
          *(v33 + v10) = 126;
        }

        else
        {
          *(v33 + 2 * v10) = 126;
        }
      }
    }

    else
    {
      v15 = *(this + 9);
      if (!v15)
      {
        goto LABEL_30;
      }

      v16 = *(this + 20);
      if (v16 >= *(v15 + 4) || *(this + 8))
      {
        goto LABEL_30;
      }

      v28 = *(v15 + 16);
      v29 = *(v15 + 8);
      *(this + 20) = v16 + 1;
      if ((v28 & 4) != 0)
      {
        *(v29 + v16) = 38;
      }

      else
      {
        *(v29 + 2 * v16) = 38;
      }
    }
  }

  else
  {
    switch(v6)
    {
      case 2u:
        v11 = *(this + 9);
        if (!v11)
        {
          goto LABEL_30;
        }

        v12 = *(this + 20);
        if (v12 >= *(v11 + 4) || *(this + 8))
        {
          goto LABEL_30;
        }

        v24 = *(v11 + 16);
        v25 = *(v11 + 8);
        *(this + 20) = v12 + 1;
        if ((v24 & 4) != 0)
        {
          *(v25 + v12) = 42;
        }

        else
        {
          *(v25 + 2 * v12) = 42;
        }

        break;
      case 3u:
        v13 = *(this + 9);
        if (!v13)
        {
          goto LABEL_30;
        }

        v14 = *(this + 20);
        if (v14 >= *(v13 + 4) || *(this + 8))
        {
          goto LABEL_30;
        }

        v26 = *(v13 + 16);
        v27 = *(v13 + 8);
        *(this + 20) = v14 + 1;
        if ((v26 & 4) != 0)
        {
          *(v27 + v14) = 45;
        }

        else
        {
          *(v27 + 2 * v14) = 45;
        }

        break;
      case 4u:
        v7 = *(this + 9);
        if (!v7 || (v8 = *(this + 20), v8 >= *(v7 + 4)) || *(this + 8))
        {
LABEL_30:
          WTF::StringBuilder::append();
          break;
        }

        v30 = *(v7 + 16);
        v31 = *(v7 + 8);
        *(this + 20) = v8 + 1;
        if ((v30 & 4) != 0)
        {
          *(v31 + v8) = 33;
        }

        else
        {
          *(v31 + 2 * v8) = 33;
        }

        break;
    }
  }

  result = (*(*this + 216))(this, *(a2 + 8));
  v18 = *(this + 9);
  if (!v18)
  {
    return WTF::StringBuilder::append();
  }

  v19 = *(this + 20);
  if (v19 >= *(v18 + 4) || *(this + 8))
  {
    return WTF::StringBuilder::append();
  }

  v22 = *(v18 + 16);
  v23 = *(v18 + 8);
  *(this + 20) = v19 + 1;
  if ((v22 & 4) != 0)
  {
    *(v23 + v19) = 41;
  }

  else
  {
    *(v23 + 2 * v19) = 41;
  }

  return result;
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::serializeBinaryExpression(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((a3 - 3) <= 1)
  {
    v8 = *(a4 + 24);
    if (v8)
    {
      if (v8[48] != 1 || (v8 = *v8) != 0)
      {
        while (v8[48] == 10)
        {
          v8 = *(v8 + 1);
          if (!v8)
          {
            goto LABEL_13;
          }
        }

        if (!v8[48] && *v8 <= 2u)
        {
          v9 = "__wgslMod";
          if (a3 == 3)
          {
            v9 = "__wgslDiv";
          }

          v10 = 9;
          goto LABEL_15;
        }
      }
    }

LABEL_13:
    if (a3 == 4)
    {
      v9 = "fmod";
      v10 = 4;
LABEL_15:
      v22[0] = v9;
      v22[1] = v10;
      v21 = 40;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((a1 + 64), v22, &v21);
      (*(*a1 + 216))(a1, a2);
LABEL_24:
      WTF::StringBuilder::append();
      goto LABEL_25;
    }
  }

  LOBYTE(v22[0]) = 40;
  v11 = *(a1 + 72);
  if (v11 && (v12 = *(a1 + 80), v12 < *(v11 + 4)) && !*(a1 + 64))
  {
    v14 = *(v11 + 16);
    v15 = *(v11 + 8);
    *(a1 + 80) = v12 + 1;
    if ((v14 & 4) != 0)
    {
      *(v15 + v12) = 40;
    }

    else
    {
      *(v15 + 2 * v12) = 40;
    }
  }

  else
  {
    WTF::StringBuilder::append();
  }

  (*(*a1 + 216))(a1, a2);
  v13 = 3;
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
      goto LABEL_24;
    default:
      break;
  }

LABEL_25:
  result = (*(*a1 + 216))(a1, a4, v13);
  LOBYTE(v22[0]) = 41;
  v17 = *(a1 + 72);
  if (!v17)
  {
    return WTF::StringBuilder::append();
  }

  v18 = *(a1 + 80);
  if (v18 >= *(v17 + 4) || *(a1 + 64))
  {
    return WTF::StringBuilder::append();
  }

  v19 = *(v17 + 16);
  v20 = *(v17 + 8);
  *(a1 + 80) = v18 + 1;
  if ((v19 & 4) != 0)
  {
    *(v20 + v18) = 41;
  }

  else
  {
    *(v20 + 2 * v18) = 41;
  }

  return result;
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(uint64_t a1, uint64_t a2)
{
  WTF::StringBuilder::append();
  result = (*(*a1 + 216))(a1, *(a2 + 64));
  v5 = *(a1 + 72);
  if (!v5)
  {
    return WTF::StringBuilder::append();
  }

  v6 = *(a1 + 80);
  if (v6 >= *(v5 + 4) || *(a1 + 64))
  {
    return WTF::StringBuilder::append();
  }

  v7 = *(v5 + 16);
  v8 = *(v5 + 8);
  *(a1 + 80) = v6 + 1;
  if ((v7 & 4) != 0)
  {
    *(v8 + v6) = 41;
  }

  else
  {
    *(v8 + 2 * v6) = 41;
  }

  return result;
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::IndexAccessExpression *a2)
{
  v4 = *(a2 + 8);
  v5 = *(*(v4 + 24) + 48);
  if (v5 == 11)
  {
    WTF::StringBuilder::append();
    v4 = *(a2 + 8);
  }

  (*(*this + 216))(this, v4);
  if (v5 == 11)
  {
    WTF::StringBuilder::append();
  }

  v6 = *(this + 9);
  if (v6 && (v7 = *(this + 20), v7 < *(v6 + 4)) && !*(this + 8))
  {
    v11 = *(v6 + 16);
    v12 = *(v6 + 8);
    *(this + 20) = v7 + 1;
    if ((v11 & 4) != 0)
    {
      *(v12 + v7) = 91;
    }

    else
    {
      *(v12 + 2 * v7) = 91;
    }
  }

  else
  {
    WTF::StringBuilder::append();
  }

  result = (*(*this + 216))(this, *(a2 + 9));
  v9 = *(this + 9);
  if (!v9)
  {
    return WTF::StringBuilder::append();
  }

  v10 = *(this + 20);
  if (v10 >= *(v9 + 4) || *(this + 8))
  {
    return WTF::StringBuilder::append();
  }

  v13 = *(v9 + 16);
  v14 = *(v9 + 8);
  *(this + 20) = v10 + 1;
  if ((v13 & 4) != 0)
  {
    *(v14 + v10) = 93;
  }

  else
  {
    *(v14 + 2 * v10) = 93;
  }

  return result;
}

char *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::IdentifierExpression *a2, const WTF::StringImpl *a3)
{
  v5 = *(this + 20);
  v6 = *v5;
  if (!*v5)
  {
LABEL_17:
    v14 = 0;
    v15 = **(this + 20);
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v7 = *(a2 + 11);
  if (v7 == -1 || !v7)
  {
    __break(0xC471u);
    JUMPOUT(0x22575A5C4);
  }

  v8 = *(v6 - 8);
  v9 = *(v7 + 4);
  if (v9 < 0x100)
  {
    v10 = WTF::StringImpl::hashSlowCase(v7);
  }

  else
  {
    v10 = v9 >> 8;
  }

  for (i = 0; ; v10 = i + v12)
  {
    v12 = v10 & v8;
    v13 = *(v6 + 32 * v12);
    if (v13 == -1)
    {
      goto LABEL_8;
    }

    if (!v13)
    {
      break;
    }

    if (WTF::equal(v13, *(a2 + 11), a3))
    {
      v14 = v6 + 32 * v12;
      v15 = **(this + 20);
      if (v15)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }

LABEL_8:
    ++i;
  }

  if (!*v5)
  {
    goto LABEL_17;
  }

  v14 = *v5 + 32 * *(*v5 - 4);
  v15 = **(this + 20);
  if (v15)
  {
LABEL_18:
    v15 += 32 * *(v15 - 4);
  }

LABEL_19:
  if (v14 == v15)
  {
    v20 = *(a2 + 11);
    return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>((this + 64), &v20);
  }

  else
  {
    WTF::StringBuilder::append(this + 64, 40);
    v17 = *(a2 + 3);
    mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v18, v14 + 8);
    WGSL::Metal::FunctionDefinitionWriter::serializeConstant(this, v17, v18);
    if (v19 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v20, v18);
    }

    v19 = -1;
    return WTF::StringBuilder::append(this + 64, 41);
  }
}

char *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::FieldAccessExpression *a2)
{
  (*(*this + 216))(this, *(a2 + 8));
  v4 = *(*(a2 + 8) + 24);
  if (v4 && *(v4 + 48) == 11 || (v5 = *(this + 9)) == 0 || (v6 = *(this + 20), v6 >= *(v5 + 4)) || *(this + 8))
  {
    WTF::StringBuilder::append();
  }

  else
  {
    v8 = *(v5 + 16);
    v9 = *(v5 + 8);
    *(this + 20) = v6 + 1;
    if ((v8 & 4) != 0)
    {
      *(v9 + v6) = 46;
    }

    else
    {
      *(v9 + 2 * v6) = 46;
    }
  }

  v10 = *(a2 + 12);
  return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>((this + 64), &v10);
}

mpark *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::AbstractIntegerLiteral *a2)
{
  v10 = *(a2 + 8);
  result = WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<long long,void>>((this + 64), &v10);
  v5 = *(a2 + 3);
  if (v5[48])
  {
    mpark::throw_bad_variant_access(result);
  }

  if (*v5 == 2)
  {
    v11 = 117;
    v6 = *(this + 9);
    if (v6 && (v7 = *(this + 20), v7 < *(v6 + 4)) && !*(this + 8))
    {
      v8 = *(v6 + 16);
      v9 = *(v6 + 8);
      *(this + 20) = v7 + 1;
      if ((v8 & 4) != 0)
      {
        *(v9 + v7) = 117;
      }

      else
      {
        *(v9 + 2 * v7) = 117;
      }
    }

    else
    {
      return WTF::StringBuilder::append();
    }
  }

  return result;
}

_WORD *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::Unsigned32Literal *a2)
{
  v4 = *(a2 + 16);
  v3 = 117;
  return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<unsigned int,void>,WTF::StringTypeAdapter<char,void>>((this + 64), &v4, &v3);
}

unint64_t WTF::StringBuilder::append<std::span<char const,18446744073709551615ul>>(WTF::StringBuilder *a1, int8x16_t *a2, size_t a3)
{
  if (a3 >> 31)
  {
    result = 161;
    __break(0xC471u);
    return result;
  }

  v5 = *(a1 + 1);
  if ((v5 || (v5 = *a1) != 0) && (*(v5 + 16) & 4) == 0)
  {
    result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (result)
    {
      v7 = (result + 2 * a3);
      if (a3 >= 0x40)
      {
        v8 = result;
        result += 2 * (a3 & 0x7FFFFFC0);
        v9 = 0uLL;
        do
        {
          v35.val[0] = *a2;
          v10 = a2[1];
          v36.val[0] = a2[2];
          v11 = a2[3];
          a2 += 4;
          v12 = v11;
          v36.val[1] = 0uLL;
          v37.val[0] = v10;
          v35.val[1] = 0uLL;
          v13 = v8;
          vst2q_s8(v13, v35);
          v13 += 32;
          v37.val[1] = 0uLL;
          vst2q_s8(v13, v37);
          v14 = v8 + 64;
          vst2q_s8(v14, v36);
          v15 = v8 + 96;
          vst2q_s8(v15, *(&v9 - 1));
          v8 += 128;
        }

        while (v8 != result);
      }

      if (result != v7)
      {
        v16 = v7 - result - 2;
        if (v16 < 0xE || (result < a2->u64 + (v16 >> 1) + 1 ? (v17 = a2 >= (v16 & 0xFFFFFFFFFFFFFFFELL) + result + 2) : (v17 = 1), !v17))
        {
          v21 = a2;
          v22 = result;
          goto LABEL_27;
        }

        v18 = (v16 >> 1) + 1;
        if (v16 >= 0x3E)
        {
          v19 = v18 & 0xFFFFFFFFFFFFFFE0;
          v24 = (result + 32);
          v25 = &a2[1];
          v26 = v18 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v27 = *v25[-2].i8;
            v28 = vmovl_u8(*v25);
            v29 = vmovl_high_u8(*v25->i8);
            v24[-2] = vmovl_u8(*v27.i8);
            v24[-1] = vmovl_high_u8(v27);
            *v24 = v28;
            v24[1] = v29;
            v24 += 4;
            v25 += 4;
            v26 -= 32;
          }

          while (v26);
          if (v18 == v19)
          {
            return result;
          }

          if ((v18 & 0x18) == 0)
          {
            v22 = (result + 2 * v19);
            v21 = (a2 + v19);
            do
            {
LABEL_27:
              v23 = v21->u8[0];
              v21 = (v21 + 1);
              *v22++ = v23;
            }

            while (v22 != v7);
            return result;
          }
        }

        else
        {
          v19 = 0;
        }

        v21 = (a2 + (v18 & 0xFFFFFFFFFFFFFFF8));
        v22 = (result + 2 * (v18 & 0xFFFFFFFFFFFFFFF8));
        v30 = (result + 2 * v19);
        v31 = &a2->i8[v19];
        v32 = v19 - (v18 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v33 = *v31++;
          *v30++ = vmovl_u8(v33);
          v32 += 8;
        }

        while (v32);
        if (v18 != (v18 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_27;
        }
      }
    }
  }

  else
  {
    result = MEMORY[0x22AA68210]();
    if (result)
    {
      v20 = a3 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      if (a3 == 1)
      {
        *result = a2->i8[0];
      }

      else
      {

        return memcpy(result, a2, a3);
      }
    }
  }

  return result;
}

unint64_t WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::Float16Literal *a2)
{
  _H0 = *(a2 + 32);
  __asm { FCVT            D0, H0 }

  v9 = WTF::numberToStringWithTrailingPoint();
  return WTF::StringBuilder::append<std::span<char const,18446744073709551615ul>>((this + 64), v9, v10);
}

void WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::AssignmentStatement *a2)
{
  (*(*this + 216))(this, *(a2 + 3));
  v4 = WTF::StringBuilder::append();
  v5 = *(*(a2 + 3) + 24);
  if (v5)
  {
    if (*(v5 + 48) != 10)
    {
      mpark::throw_bad_variant_access(v4);
    }

    v6 = *(v5 + 8);
    v7 = *(a2 + 4);

    WGSL::Metal::FunctionDefinitionWriter::visit(this, v6, v7);
  }

  else
  {
    v8 = *(a2 + 4);
    v9 = *(*this + 216);

    v9(this, v8);
  }
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::CompoundAssignmentStatement *a2)
{
  v5 = (a2 + 24);
  v4 = *(a2 + 3);
  if ((*(*v4 + 16))(v4) == 22)
  {
    v4 = *(v4 + 64);
  }

  if ((*(*v4 + 16))(v4) == 19)
  {
    v6 = *(v4 + 64);
    if ((*(*v6 + 16))(v6) == 21)
    {
      result = MEMORY[0x22AA683D0](v6[11], "__unpack", 8);
      if (result)
      {
        if (!*(v4 + 84))
        {
          __break(0xC471u);
          return result;
        }

        v5 = *(v4 + 72);
      }
    }
  }

  (*(*this + 216))(this, *v5);
  WTF::StringBuilder::append();
  v8 = *(a2 + 40);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);

  return WGSL::Metal::FunctionDefinitionWriter::serializeBinaryExpression(this, v9, v8, v10);
}

void WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::CompoundStatement *a2)
{
  WTF::StringBuilder::append();
  ++*(this + 26);
  WGSL::Metal::FunctionDefinitionWriter::visitStatements(this, *(a2 + 5), *(a2 + 13));
  v4 = *(this + 26) - 1;
  *(this + 26) = v4;
  v6 = v4;
  v5 = 125;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<char,void>>((this + 64), &v6, &v5);
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visitStatements(uint64_t result, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      v6 = *a2;
      v7 = *(v4 + 80);
      v8 = (4 * *(v4 + 104));
      if (__CFADD__(v7, v8))
      {
        v9 = 0xFFFFFFFFLL;
      }

      else
      {
        v9 = (v7 + v8);
      }

      v10 = *(v4 + 72);
      if ((v10 || (v10 = *(v4 + 64)) != 0) && (*(v10 + 16) & 4) == 0)
      {
        v11 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((v4 + 64));
        if (v11)
        {
          v12 = v8 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          memset_pattern16(v11, aIneStateTLTAne, 2 * v8);
        }
      }

      else
      {
        v13 = MEMORY[0x22AA68210](v4 + 64, v9);
        if (v13)
        {
          v14 = v8 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          memset(v13, 32, v8);
        }
      }

      if ((*(v4 + 32) & 1) == 0)
      {
        (*(*v4 + 360))(v4, v6);
      }

      result = (*(*v6 + 16))(v6);
      if (result <= 0x34 && ((1 << result) & 0x1639E000000000) != 0)
      {
        v16 = *(v4 + 72);
        if (v16 && (v17 = *(v4 + 80), v17 < *(v16 + 4)) && !*(v4 + 64))
        {
          v22 = *(v16 + 16);
          v23 = *(v16 + 8);
          *(v4 + 80) = v17 + 1;
          if ((v22 & 4) != 0)
          {
            *(v23 + v17) = 59;
          }

          else
          {
            *(v23 + 2 * v17) = 59;
          }
        }

        else
        {
          result = WTF::StringBuilder::append();
        }
      }

      v18 = *(v4 + 72);
      if (!v18 || (v19 = *(v4 + 80), v19 >= *(v18 + 4)) || *(v4 + 64))
      {
        result = WTF::StringBuilder::append();
      }

      else
      {
        v20 = *(v18 + 16);
        v21 = *(v18 + 8);
        *(v4 + 80) = v19 + 1;
        if ((v20 & 4) != 0)
        {
          *(v21 + v19) = 10;
        }

        else
        {
          *(v21 + 2 * v19) = 10;
        }
      }

      ++a2;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::DecrementIncrementStatement *a2)
{
  result = (*(*this + 216))(this, *(a2 + 3));
  if (*(a2 + 32) == 1)
  {
  }

  else
  {
    if (*(a2 + 32))
    {
      return result;
    }
  }

  return WTF::StringBuilder::append();
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::IfStatement *a2)
{
  WTF::StringBuilder::append();
  (*(*this + 216))(this, *(a2 + 3));
  WTF::StringBuilder::append();
  result = (*(*this + 400))(this, *(a2 + 4));
  if (*(a2 + 5))
  {
    WTF::StringBuilder::append();
    v5 = *(a2 + 5);
    v6 = *(*this + 360);

    return v6(this, v5);
  }

  return result;
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::PhonyAssignmentStatement *a2)
{
  WTF::StringBuilder::append();
  result = (*(*this + 216))(this, *(a2 + 3));
  v5 = *(this + 9);
  if (!v5)
  {
    return WTF::StringBuilder::append();
  }

  v6 = *(this + 20);
  if (v6 >= *(v5 + 4) || *(this + 8))
  {
    return WTF::StringBuilder::append();
  }

  v7 = *(v5 + 16);
  v8 = *(v5 + 8);
  *(this + 20) = v6 + 1;
  if ((v7 & 4) != 0)
  {
    *(v8 + v6) = 41;
  }

  else
  {
    *(v8 + 2 * v6) = 41;
  }

  return result;
}

WTF::StringImpl *WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::ReturnStatement *a2)
{
  WGSL::Metal::returnIdentifierForFunction(&v17, 0, *(this + 15));
  WGSL::Metal::returnIdentifierForFunction(&v14, 9, *(this + 15));
  v4 = v19;
  if (v19 == 1)
  {
    v5 = v17;
    goto LABEL_5;
  }

  if (v16 == 1)
  {
    v5 = v14;
LABEL_5:
    v23 = v5;
    v26 = " __wgslFragmentReturnResult = ";
    v27 = 30;
    result = WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v23, &v26);
    if (!*(a2 + 3))
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  result = WTF::StringBuilder::append();
  if (!*(a2 + 3))
  {
LABEL_6:
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_15:
    if (v16 != 1)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_10:
  LOBYTE(v26) = 32;
  v9 = *(this + 9);
  if (v9 && (v10 = *(this + 20), v10 < *(v9 + 4)) && !*(this + 8))
  {
    v12 = *(v9 + 16);
    v13 = *(v9 + 8);
    *(this + 20) = v10 + 1;
    if ((v12 & 4) != 0)
    {
      *(v13 + v10) = 32;
    }

    else
    {
      *(v13 + 2 * v10) = 32;
    }
  }

  else
  {
    WTF::StringBuilder::append();
  }

  result = (*(*this + 216))(this, *(a2 + 3));
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_7:
  v26 = ";\n__wgslFragmentReturnResult.";
  v27 = 29;
  v7 = v18;
  v25 = v18;
  v23 = " = clamp(__wgslFragmentReturnResult.";
  v24 = 36;
  v20 = ", as_type<float>(__DynamicOffsets[0]), as_type<float>(__DynamicOffsets[1]));\n";
  v21 = 77;
  v22 = v18;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v26, &v25, &v23, &v22, &v20);
  if ((v16 & 1) == 0)
  {
    WTF::StringBuilder::append();
    goto LABEL_24;
  }

LABEL_16:
  v26 = ";\n__wgslFragmentReturnResult.";
  v27 = 29;
  v11 = v15;
  v25 = v15;
  v23 = " = (__wgslFragmentReturnResult.";
  v24 = 31;
  v20 = " & __DynamicOffsets[2]);\n";
  v21 = 25;
  v22 = v15;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v26, &v25, &v23, &v22, &v20);
  WTF::StringBuilder::append();
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  result = v14;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v8);
  }

  if (v4)
  {
    v7 = v18;
LABEL_24:
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v8);
    }

    result = v17;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

uint64_t WGSL::Metal::returnIdentifierForFunction(uint64_t result, WTF::StringImpl *a2, uint64_t a3)
{
  if (a3 && (v3 = *(a3 + 121), (v3 & 0x100) != 0) && v3 == 2)
  {
    v4 = *(a3 + 104);
    if (v4 && (v5 = *(v4 + 24)) != 0 && v5[48] == 4 && (v6 = *(*v5 + 84), v6))
    {
      v7 = a2;
      v8 = *(*v5 + 72);
      v9 = &v8[v6];
      while (1)
      {
        v10 = *v8;
        v11 = *(*v8 + 140);
        if ((v11 & 0x100) != 0 && v7 == v11)
        {
          break;
        }

        v12 = result;
        v13 = *(v10 + 100);
        if (v13)
        {
          v14 = *(v10 + 88);
          v15 = 8 * v13;
          while (1)
          {
            v16 = *v14;
            if ((*(**v14 + 16))(*v14) == 3 && *(v16 + 24) == v7)
            {
              break;
            }

            ++v14;
            v15 -= 8;
            if (!v15)
            {
              goto LABEL_10;
            }
          }

          v17 = *(*v5 + 48);
          if (v17)
          {
            atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
          }

          v22 = v17;
          v18 = *(v10 + 48);
          if (v18)
          {
            atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
          }

          if (v17)
          {
            atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
          }

          *v12 = v17;
          if (v18)
          {
            atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
            v19 = v18;
            *(v12 + 8) = v18;
            *(v12 + 16) = 1;
            if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          *(v12 + 8) = 0;
          *(v12 + 16) = 1;
          result = v17;
          if (!v17)
          {
            return result;
          }

          goto LABEL_28;
        }

LABEL_10:
        ++v8;
        result = v12;
        if (v8 == v9)
        {
          goto LABEL_30;
        }
      }

      v20 = *(*v5 + 48);
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v22 = v20;
      v21 = *(v10 + 48);
      if (v21)
      {
        atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
      }

      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      *result = v20;
      if (v21)
      {
        atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
        *(result + 8) = v21;
        *(result + 16) = 1;
        if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v19 = v21;
LABEL_26:
          WTF::StringImpl::destroy(v19, a2);
        }

LABEL_27:
        result = v22;
        if (!v22)
        {
          return result;
        }

        goto LABEL_28;
      }

      *(result + 8) = 0;
      *(result + 16) = 1;
      result = v20;
      if (!v20)
      {
        return result;
      }

LABEL_28:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, a2);
      }
    }

    else
    {
LABEL_30:
      *result = 0;
      *(result + 16) = 0;
    }
  }

  else
  {
    *result = 0;
    *(result + 16) = 0;
  }

  return result;
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::ForStatement *a2)
{
  WTF::StringBuilder::append();
  if (*(a2 + 3))
  {
    (*(*this + 360))(this);
  }

  v4 = *(this + 9);
  if (v4 && (v5 = *(this + 20), v5 < *(v4 + 4)) && !*(this + 8))
  {
    v20 = *(v4 + 16);
    v21 = *(v4 + 8);
    *(this + 20) = v5 + 1;
    if ((v20 & 4) != 0)
    {
      *(v21 + v5) = 59;
    }

    else
    {
      *(v21 + 2 * v5) = 59;
    }
  }

  else
  {
    WTF::StringBuilder::append();
  }

  v6 = *(a2 + 4);
  v7 = *(this + 9);
  if (v6)
  {
    if (v7 && (v8 = *(this + 20), v8 < *(v7 + 4)) && !*(this + 8))
    {
      v24 = *(v7 + 16);
      v25 = *(v7 + 8);
      *(this + 20) = v8 + 1;
      if ((v24 & 4) != 0)
      {
        *(v25 + v8) = 32;
      }

      else
      {
        *(v25 + 2 * v8) = 32;
      }
    }

    else
    {
      WTF::StringBuilder::append();
    }

    (*(*this + 216))(this, v6);
    v7 = *(this + 9);
  }

  if (v7 && (v9 = *(this + 20), v9 < *(v7 + 4)) && !*(this + 8))
  {
    v22 = *(v7 + 16);
    v23 = *(v7 + 8);
    *(this + 20) = v9 + 1;
    if ((v22 & 4) != 0)
    {
      *(v23 + v9) = 59;
    }

    else
    {
      *(v23 + 2 * v9) = 59;
    }
  }

  else
  {
    WTF::StringBuilder::append();
  }

  v10 = *(a2 + 5);
  if (v10)
  {
    v11 = *(this + 9);
    if (v11 && (v12 = *(this + 20), v12 < *(v11 + 4)) && !*(this + 8))
    {
      v26 = *(v11 + 16);
      v27 = *(v11 + 8);
      *(this + 20) = v12 + 1;
      if ((v26 & 4) != 0)
      {
        *(v27 + v12) = 32;
      }

      else
      {
        *(v27 + 2 * v12) = 32;
      }
    }

    else
    {
      WTF::StringBuilder::append();
    }

    (*(*this + 360))(this, v10);
  }

  if (*(a2 + 56) == 1 && (v13 = *(this + 9)) != 0 && (v14 = *(this + 20), v14 < *(v13 + 4)) && !*(this + 8))
  {
    v28 = *(v13 + 16);
    v29 = *(v13 + 8);
    *(this + 20) = v14 + 1;
    if ((v28 & 4) != 0)
    {
      *(v29 + v14) = 41;
    }

    else
    {
      *(v29 + 2 * v14) = 41;
    }
  }

  else
  {
    WTF::StringBuilder::append();
  }

  result = (*(*this + 400))(this, *(a2 + 6));
  if ((*(a2 + 56) & 1) == 0)
  {
    v16 = *(this + 9);
    if (v16 && (v17 = *(this + 20), v17 < *(v16 + 4)) && !*(this + 8))
    {
      v30 = *(v16 + 16);
      v31 = *(v16 + 8);
      *(this + 20) = v17 + 1;
      if ((v30 & 4) != 0)
      {
        *(v31 + v17) = 125;
      }

      else
      {
        *(v31 + 2 * v17) = 125;
      }
    }

    else
    {
      result = WTF::StringBuilder::append();
    }

    v18 = *(this + 9);
    if (v18 && (v19 = *(this + 20), v19 < *(v18 + 4)) && !*(this + 8))
    {
      v32 = *(v18 + 16);
      v33 = *(v18 + 8);
      *(this + 20) = v19 + 1;
      if ((v32 & 4) != 0)
      {
        *(v33 + v19) = 125;
      }

      else
      {
        *(v33 + 2 * v19) = 125;
      }
    }

    else
    {
      return WTF::StringBuilder::append();
    }
  }

  return result;
}

void WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::LoopStatement *a2)
{
  WTF::StringBuilder::append();
  if (*(a2 + 104) == 1)
  {
    v16[0] = "BOOL __continuing = false;\n";
    v16[1] = 27;
    v15 = *(this + 26);
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>>((this + 64), v16, &v15);
  }

  if (*(a2 + 96))
  {
    v4 = a2 + 56;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 17);
  *(this + 17) = v4;
  ++*(this + 26);
  WGSL::Metal::FunctionDefinitionWriter::visitStatements(this, *(a2 + 5), *(a2 + 13));
  if (*(a2 + 96) != 1)
  {
    goto LABEL_25;
  }

  v6 = *(this + 20);
  v7 = (4 * *(this + 26));
  if (__CFADD__(v6, v7))
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = (v6 + v7);
  }

  v9 = *(this + 9);
  if ((v9 || (v9 = *(this + 8)) != 0) && (*(v9 + 16) & 4) == 0)
  {
    v10 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
    if (v10)
    {
      v11 = v7 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      memset_pattern16(v10, aIneStateTLTAne, 2 * v7);
    }
  }

  else
  {
    v12 = MEMORY[0x22AA68210](this + 64, v8);
    if (v12)
    {
      v13 = v7 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      memset(v12, 32, v7);
    }
  }

  if (*(a2 + 96))
  {
    (*(*this + 552))(this, a2 + 56);
LABEL_25:
    v14 = *(this + 26) - 1;
    *(this + 26) = v14;
    *(this + 17) = v5;
    LODWORD(v16[0]) = v14;
    LOBYTE(v15) = 125;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v16, &v15);
    LODWORD(v16[0]) = *(this + 26);
    LOBYTE(v15) = 125;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<char,void>>((this + 64), v16, &v15);
    return;
  }

  __break(1u);
}

void WGSL::Metal::FunctionDefinitionWriter::visit(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 136);
  *(a1 + 136) = 0;
  WTF::StringBuilder::append();
  ++*(a1 + 104);
  WGSL::Metal::FunctionDefinitionWriter::visitStatements(a1, *a2, *(a2 + 12));
  v5 = *(a2 + 32);
  v6 = *(a1 + 104);
  if (v5)
  {
    v11 = *(a1 + 104);
    v9 = "if (";
    v10 = 4;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((a1 + 64), &v11, &v9);
    (*(*a1 + 216))(a1, v5);
    WTF::StringBuilder::append();
    v7 = *(a1 + 104) + 1;
    *(a1 + 104) = v7;
    v11 = v7;
    v9 = "break;\n";
    v10 = 7;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((a1 + 64), &v11, &v9);
    v6 = *(a1 + 104) - 1;
  }

  v8 = v6 - 1;
  *(a1 + 104) = v8;
  v11 = v8;
  v9 = "}\n";
  v10 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((a1 + 64), &v11, &v9);
  *(a1 + 136) = v4;
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::WhileStatement *a2)
{
  WTF::StringBuilder::append();
  (*(*this + 216))(this, *(a2 + 3));
  WTF::StringBuilder::append();
  result = (*(*this + 400))(this, *(a2 + 4));
  v5 = *(this + 9);
  if (v5 && (v6 = *(this + 20), v6 < *(v5 + 4)) && !*(this + 8))
  {
    v9 = *(v5 + 16);
    v10 = *(v5 + 8);
    *(this + 20) = v6 + 1;
    if ((v9 & 4) != 0)
    {
      *(v10 + v6) = 125;
    }

    else
    {
      *(v10 + 2 * v6) = 125;
    }
  }

  else
  {
    result = WTF::StringBuilder::append();
  }

  v7 = *(this + 9);
  if (!v7)
  {
    return WTF::StringBuilder::append();
  }

  v8 = *(this + 20);
  if (v8 >= *(v7 + 4) || *(this + 8))
  {
    return WTF::StringBuilder::append();
  }

  v11 = *(v7 + 16);
  v12 = *(v7 + 8);
  *(this + 20) = v8 + 1;
  if ((v11 & 4) != 0)
  {
    *(v12 + v8) = 125;
  }

  else
  {
    *(v12 + 2 * v8) = 125;
  }

  return result;
}

void WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::SwitchStatement *a2)
{
  WTF::StringBuilder::append();
  (*(*this + 216))(this, *(a2 + 4));
  WTF::StringBuilder::append();
  v4 = *(a2 + 17);
  if (v4)
  {
    v5 = *(a2 + 7);
    v6 = 24 * v4;
    do
    {
      WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::AST::SwitchStatement &)::$_0::operator()(this, v5, 0);
      v5 += 24;
      v6 -= 24;
    }

    while (v6);
  }

  WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::AST::SwitchStatement &)::$_0::operator()(this, a2 + 72, 1);
  LOBYTE(v12) = 10;
  LODWORD(v10) = *(this + 26);
  v13 = 125;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<char,void>>((this + 64), &v12, &v10, &v13);
  if (*(a2 + 24))
  {
    v13 = 10;
    v12 = *(this + 26);
    v10 = "if (__continuing) {";
    v11 = 19;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v13, &v12, &v10);
    ++*(this + 26);
    (*(*this + 552))(this, *(this + 17));
    v7 = *(this + 26) - 1;
    *(this + 26) = v7;
    LOBYTE(v12) = 10;
    LODWORD(v10) = v7;
    v13 = 125;
  }

  else
  {
    if (*(a2 + 25) != 1)
    {
      return;
    }

    v13 = 10;
    v12 = *(this + 26);
    v10 = "if (__continuing) {";
    v11 = 19;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v13, &v12, &v10);
    v8 = *(this + 26) + 1;
    *(this + 26) = v8;
    v13 = 10;
    v12 = v8;
    v10 = "break;";
    v11 = 6;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v13, &v12, &v10);
    v9 = *(this + 26) - 1;
    *(this + 26) = v9;
    LOBYTE(v12) = 10;
    LODWORD(v10) = v9;
    v13 = 125;
  }

  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<char,void>>((this + 64), &v12, &v10, &v13);
}

void WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::AST::SwitchStatement &)::$_0::operator()(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(a2 + 12);
  if (v6)
  {
    v7 = *a2;
    v8 = 8 * v6;
    do
    {
      v9 = *v7;
      v18 = 10;
      v17 = *(a1 + 104);
      v15 = "case ";
      v16 = 5;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((a1 + 64), &v18, &v17, &v15);
      (*(*a1 + 216))(a1, v9);
      LOBYTE(v15) = 58;
      v10 = *(a1 + 72);
      if (!v10 || (v11 = *(a1 + 80), v11 >= *(v10 + 4)) || *(a1 + 64))
      {
        WTF::StringBuilder::append();
      }

      else
      {
        v12 = *(v10 + 16);
        v13 = *(v10 + 8);
        *(a1 + 80) = v11 + 1;
        if ((v12 & 4) != 0)
        {
          *(v13 + v11) = 58;
        }

        else
        {
          *(v13 + 2 * v11) = 58;
        }
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  if (a3)
  {
    v18 = 10;
    v17 = *(a1 + 104);
    v15 = "default:";
    v16 = 8;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((a1 + 64), &v18, &v17, &v15);
  }

  WTF::StringBuilder::append();
  (*(*a1 + 400))(a1, *(a2 + 16));
  v14 = *(a1 + 104) + 1;
  *(a1 + 104) = v14;
  v18 = 10;
  v17 = v14;
  v15 = "\n}\nbreak;";
  v16 = 9;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((a1 + 64), &v18, &v17, &v15);
  --*(a1 + 104);
}

void WGSL::Metal::FunctionDefinitionWriter::visit(WGSL::Metal::FunctionDefinitionWriter *this, WGSL::AST::ContinueStatement *a2)
{
  if (*(a2 + 24) == 1)
  {
    WTF::StringBuilder::append();
    v12 = *(this + 26);
    v11[0] = "break";
    v11[1] = 5;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v12, v11);
  }

  else
  {
    if (*(this + 17))
    {
      (*(*this + 552))(this);
      v3 = *(this + 20);
      v4 = (4 * *(this + 26));
      if (__CFADD__(v3, v4))
      {
        v5 = 0xFFFFFFFFLL;
      }

      else
      {
        v5 = (v3 + v4);
      }

      v6 = *(this + 9);
      if ((v6 || (v6 = *(this + 8)) != 0) && (*(v6 + 16) & 4) == 0)
      {
        v7 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
        if (v7)
        {
          v8 = v4 == 0;
        }

        else
        {
          v8 = 1;
        }

        if (!v8)
        {
          memset_pattern16(v7, aIneStateTLTAne, 2 * v4);
        }
      }

      else
      {
        v9 = MEMORY[0x22AA68210](this + 64, v5);
        if (v9)
        {
          v10 = v4 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          memset(v9, 32, v4);
        }
      }
    }

    WTF::StringBuilder::append();
  }
}

void WGSL::Metal::FunctionDefinitionWriter::~FunctionDefinitionWriter(WGSL::Metal::FunctionDefinitionWriter *this, void *a2)
{
  WGSL::Metal::FunctionDefinitionWriter::~FunctionDefinitionWriter(this, a2);

  JUMPOUT(0x22AA68560);
}

{
  *this = &unk_2838D5B60;
  v3 = *(this + 18);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  *this = &unk_2838D37E8;
  if (*(this + 32) == 1)
  {
    v6 = *(this + 1);
    *(this + 1) = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }
    }
  }
}

uint64_t WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v5[12] = (result % 0xA) | 0x30;
  if (result >= 0xA)
  {
    v5[11] = (result / 0xA - 10 * ((429496730 * (result / 0xA)) >> 32)) | 0x30;
    if (result >= 0x64)
    {
      v3 = 10;
      v5[10] = (result / 0x64 - 10 * ((429496730 * (result / 0x64)) >> 32)) | 0x30;
      if (result >= 0x3E8)
      {
        v5[9] = (result / 0x3E8 - 10 * ((429496730 * (result / 0x3E8)) >> 32)) | 0x30;
        if (result >> 4 >= 0x271)
        {
          v5[8] = (result / 0x2710 - 10 * ((429496730 * (result / 0x2710)) >> 32)) | 0x30;
          if (result >> 5 >= 0xC35)
          {
            v5[7] = (result / 0x186A0 - 10 * ((52429 * (result / 0x186A0)) >> 19)) | 0x30;
            if (result >= 0xF4240)
            {
              v5[6] = (result / 0xF4240 - 10 * ((6554 * (result / 0xF4240)) >> 16)) | 0x30;
              if (result >= 0x989680)
              {
                v5[5] = (result / 0x989680 - 10 * ((6554 * (result / 0x989680)) >> 16)) | 0x30;
                if (result >= 0x5F5E100)
                {
                  v5[4] = (result / 0x5F5E100 - 10 * ((26 * (result / 0x5F5E100)) >> 8)) | 0x30;
                  if (result >= 0x3B9ACA00)
                  {
                    v5[3] = (result / 0x3B9ACA00) | 0x30;
                    v3 = 3;
                    v4 = 10;
                  }

                  else
                  {
                    v3 = 4;
                    v4 = 9;
                  }
                }

                else
                {
                  v3 = 5;
                  v4 = 8;
                }
              }

              else
              {
                v3 = 6;
                v4 = 7;
              }
            }

            else
            {
              v3 = 7;
              v4 = 6;
            }
          }

          else
          {
            v3 = 8;
            v4 = 5;
          }
        }

        else
        {
          v3 = 9;
          v4 = 4;
        }
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v3 = 11;
      v4 = 2;
    }
  }

  else
  {
    v3 = 12;
    v4 = 1;
  }

  do
  {
    if (v3 == 13 || !a3)
    {
      __break(1u);
    }

    *a2++ = v5[v3];
    --a3;
    ++v3;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(uint64_t result, _WORD *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v5[12] = (result % 0xA) | 0x30;
  if (result >= 0xA)
  {
    v5[11] = (result / 0xA - 10 * ((429496730 * (result / 0xA)) >> 32)) | 0x30;
    if (result >= 0x64)
    {
      v3 = 10;
      v5[10] = (result / 0x64 - 10 * ((429496730 * (result / 0x64)) >> 32)) | 0x30;
      if (result >= 0x3E8)
      {
        v5[9] = (result / 0x3E8 - 10 * ((429496730 * (result / 0x3E8)) >> 32)) | 0x30;
        if (result >> 4 >= 0x271)
        {
          v5[8] = (result / 0x2710 - 10 * ((429496730 * (result / 0x2710)) >> 32)) | 0x30;
          if (result >> 5 >= 0xC35)
          {
            v5[7] = (result / 0x186A0 - 10 * ((52429 * (result / 0x186A0)) >> 19)) | 0x30;
            if (result >= 0xF4240)
            {
              v5[6] = (result / 0xF4240 - 10 * ((6554 * (result / 0xF4240)) >> 16)) | 0x30;
              if (result >= 0x989680)
              {
                v5[5] = (result / 0x989680 - 10 * ((6554 * (result / 0x989680)) >> 16)) | 0x30;
                if (result >= 0x5F5E100)
                {
                  v5[4] = (result / 0x5F5E100 - 10 * ((26 * (result / 0x5F5E100)) >> 8)) | 0x30;
                  if (result >= 0x3B9ACA00)
                  {
                    v5[3] = (result / 0x3B9ACA00) | 0x30;
                    v3 = 3;
                    v4 = 10;
                  }

                  else
                  {
                    v3 = 4;
                    v4 = 9;
                  }
                }

                else
                {
                  v3 = 5;
                  v4 = 8;
                }
              }

              else
              {
                v3 = 6;
                v4 = 7;
              }
            }

            else
            {
              v3 = 7;
              v4 = 6;
            }
          }

          else
          {
            v3 = 8;
            v4 = 5;
          }
        }

        else
        {
          v3 = 9;
          v4 = 4;
        }
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v3 = 11;
      v4 = 2;
    }
  }

  else
  {
    v3 = 12;
    v4 = 1;
  }

  do
  {
    if (v3 == 13 || !a3)
    {
      __break(1u);
    }

    *a2++ = v5[v3];
    --a3;
    ++v3;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  v3 = *(a2 + 16);
  if (v3 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v3, &v6, a1, a2);
    *(a1 + 16) = *(a2 + 16);
  }

  return a1;
}

_BYTE *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(WTF::StringBuilder *a1, unint64_t *a2, uint64_t *a3, char *a4)
{
  v7 = *a3;
  v8 = *(a1 + 1);
  if ((!v8 && (v8 = *a1) == 0 || (*(v8 + 16) & 4) != 0) && (!v7 || (*(v7 + 16) & 4) != 0))
  {
    result = MEMORY[0x22AA68210]();
    if (!result)
    {
      return result;
    }

    v26 = a2[1];
    v27 = *a3;
    v28 = *a4;
    if (v26)
    {
      v29 = *a2;
      if (v26 == 1)
      {
        *result = *v29;
      }

      else
      {
        v53 = result;
        v54 = v25;
        memcpy(result, v29, v26);
        v25 = v54;
        result = v53;
      }
    }

    v55 = v26;
    v31 = v25 >= v26;
    v56 = v25 - v26;
    if (!v31)
    {
LABEL_113:
      __break(1u);
      return result;
    }

    v57 = &result[v55];
    if (!v27)
    {
      v63 = 0;
      goto LABEL_92;
    }

    v58 = *(v27 + 8);
    v59 = *(v27 + 4);
    if ((*(v27 + 16) & 4) != 0)
    {
      if (v59)
      {
        if (v59 == 1)
        {
          *v57 = v58->i8[0];
        }

        else
        {
          result = memcpy(&result[v55], v58, v59);
        }
      }
    }

    else
    {
      v60 = &v57[v59];
      if (v59 < 0x10)
      {
        v61 = &result[v55];
      }

      else
      {
        v61 = &result[v55];
        do
        {
          v62 = vld2q_s8(v58->i8);
          v58 += 2;
          *v61++ = v62;
        }

        while (v61 != &v57[v59 & 0xFFFFFFF0]);
      }

      if (v61 != v60)
      {
        v71 = &result[v59 + v55];
        v72 = v71 - v61;
        if ((v71 - v61) < 4 || (v61 < (v58 + 2 * v72) ? (v73 = v58 >= v71) : (v73 = 1), !v73))
        {
          v75 = v61;
          v76 = v58;
          goto LABEL_80;
        }

        if (v72 >= 0x20)
        {
          v74 = v72 & 0xFFFFFFFFFFFFFFE0;
          v98 = v58 + 2;
          v99 = (v61 + 1);
          v100 = v72 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v102 = v98[-2];
            v101 = v98[-1];
            v104 = *v98;
            v103 = v98[1];
            v98 += 4;
            v99[-1] = vuzp1q_s8(v102, v101);
            *v99 = vuzp1q_s8(v104, v103);
            v99 += 2;
            v100 -= 32;
          }

          while (v100);
          if (v72 == v74)
          {
            goto LABEL_91;
          }

          if ((v72 & 0x1C) == 0)
          {
            v76 = (v58 + 2 * v74);
            v75 = (v61 + v74);
            do
            {
LABEL_80:
              v77 = v76->i8[0];
              v76 = (v76 + 2);
              *v75 = v77;
              v75 = (v75 + 1);
            }

            while (v75 != v60);
            goto LABEL_91;
          }
        }

        else
        {
          v74 = 0;
        }

        v75 = (v61 + (v72 & 0xFFFFFFFFFFFFFFFCLL));
        v76 = (v58 + 2 * (v72 & 0xFFFFFFFFFFFFFFFCLL));
        v105 = (v58 + 2 * v74);
        v106 = (v61 + v74);
        v107 = v74 - (v72 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v108 = *v105++;
          *v106++ = vuzp1_s8(v108, v108).u32[0];
          v107 += 4;
        }

        while (v107);
        if (v72 != (v72 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_80;
        }
      }
    }

LABEL_91:
    v63 = *(v27 + 4);
    if (v56 < v63)
    {
      goto LABEL_113;
    }

LABEL_92:
    if (v56 != v63)
    {
      v57[v63] = v28;
      return result;
    }

    goto LABEL_113;
  }

  result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!result)
  {
    return result;
  }

  v12 = *a2;
  v11 = a2[1];
  v13 = *a3;
  v14 = *a4;
  v15 = &result[2 * v11];
  if (v11 < 0x40)
  {
    v16 = result;
    if (result == v15)
    {
      goto LABEL_27;
    }

LABEL_17:
    v30 = &v15[-v16 - 2];
    if (v30 < 0xE || (v16 < v12 + (v30 >> 1) + 1 ? (v31 = v12 >= (v30 & 0xFFFFFFFFFFFFFFFELL) + v16 + 2) : (v31 = 1), !v31))
    {
      v34 = v12;
      v35 = v16;
      goto LABEL_26;
    }

    v32 = (v30 >> 1) + 1;
    if (v30 >= 0x3E)
    {
      v33 = v32 & 0xFFFFFFFFFFFFFFE0;
      v78 = (v16 + 32);
      v79 = (v12 + 16);
      v80 = v32 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v81 = *v79[-2].i8;
        v82 = vmovl_u8(*v79);
        v83 = vmovl_high_u8(*v79->i8);
        v78[-2] = vmovl_u8(*v81.i8);
        v78[-1] = vmovl_high_u8(v81);
        *v78 = v82;
        v78[1] = v83;
        v78 += 4;
        v79 += 4;
        v80 -= 32;
      }

      while (v80);
      if (v32 == v33)
      {
        goto LABEL_27;
      }

      if ((v32 & 0x18) == 0)
      {
        v35 = (v16 + 2 * v33);
        v34 = (v12 + v33);
        goto LABEL_26;
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = (v12 + (v32 & 0xFFFFFFFFFFFFFFF8));
    v35 = (v16 + 2 * (v32 & 0xFFFFFFFFFFFFFFF8));
    v84 = (v16 + 2 * v33);
    v85 = (v12 + v33);
    v86 = v33 - (v32 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v87 = *v85++;
      *v84++ = vmovl_u8(v87);
      v86 += 8;
    }

    while (v86);
    if (v32 == (v32 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_27;
    }

    do
    {
LABEL_26:
      v36 = *v34++;
      *v35++ = v36;
    }

    while (v35 != v15);
    goto LABEL_27;
  }

  v16 = &result[2 * (v11 & 0x7FFFFFFFFFFFFFC0)];
  v17 = 0uLL;
  v18 = result;
  do
  {
    v109.val[0] = *v12;
    v19 = *(v12 + 16);
    v111.val[0] = *(v12 + 32);
    v20 = *(v12 + 48);
    v12 += 64;
    v21 = v20;
    v111.val[1] = 0uLL;
    v113.val[0] = v19;
    v109.val[1] = 0uLL;
    v22 = v18;
    vst2q_s8(v22, v109);
    v22 += 32;
    v113.val[1] = 0uLL;
    vst2q_s8(v22, v113);
    v23 = v18 + 64;
    vst2q_s8(v23, v111);
    v24 = v18 + 96;
    vst2q_s8(v24, *(&v17 - 1));
    v18 += 128;
  }

  while (v18 != v16);
  if (v16 != v15)
  {
    goto LABEL_17;
  }

LABEL_27:
  v37 = v11;
  v38 = v10 - v11;
  if (v10 < v11)
  {
    goto LABEL_113;
  }

  v39 = &result[2 * v11];
  if (!v13)
  {
    v42 = 0;
    goto LABEL_66;
  }

  v40 = *(v13 + 8);
  v41 = *(v13 + 4);
  if ((*(v13 + 16) & 4) != 0)
  {
    v43 = &v39[v41];
    if (v41 < 0x40)
    {
      v44 = &result[2 * v37];
      if (v39 == v43)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v44 = &v39[v41 & 0xFFFFFFC0];
      v45 = 0uLL;
      v46 = &result[2 * v37];
      do
      {
        v110.val[0] = *v40;
        v47 = v40[1];
        v112.val[0] = v40[2];
        v48 = v40[3];
        v40 += 4;
        v49 = v48;
        v112.val[1] = 0uLL;
        v114.val[0] = v47;
        v110.val[1] = 0uLL;
        v50 = v46;
        vst2q_s8(v50, v110);
        v50 += 32;
        v114.val[1] = 0uLL;
        vst2q_s8(v50, v114);
        v51 = v46 + 64;
        vst2q_s8(v51, v112);
        v52 = v46 + 96;
        vst2q_s8(v52, *(&v45 - 1));
        v46 += 128;
      }

      while (v46 != v44);
      if (v44 == v43)
      {
        goto LABEL_65;
      }
    }

    v64 = &result[2 * v41 + 2 * v37 - v44 - 2];
    if (v64 < 0xE || (v44 < v40->u64 + (v64 >> 1) + 1 ? (v65 = v40 >= (v64 & 0xFFFFFFFFFFFFFFFELL) + v44 + 2) : (v65 = 1), !v65))
    {
      v68 = v40;
      v69 = v44;
      goto LABEL_62;
    }

    v66 = (v64 >> 1) + 1;
    if (v64 >= 0x3E)
    {
      v67 = v66 & 0xFFFFFFFFFFFFFFE0;
      v88 = (v44 + 32);
      v89 = &v40[1];
      v90 = v66 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v91 = *v89[-2].i8;
        v92 = vmovl_u8(*v89);
        v93 = vmovl_high_u8(*v89->i8);
        v88[-2] = vmovl_u8(*v91.i8);
        v88[-1] = vmovl_high_u8(v91);
        *v88 = v92;
        v88[1] = v93;
        v88 += 4;
        v89 += 4;
        v90 -= 32;
      }

      while (v90);
      if (v66 == v67)
      {
        goto LABEL_65;
      }

      if ((v66 & 0x18) == 0)
      {
        v69 = (v44 + 2 * v67);
        v68 = (v40 + v67);
        goto LABEL_62;
      }
    }

    else
    {
      v67 = 0;
    }

    v68 = (v40 + (v66 & 0xFFFFFFFFFFFFFFF8));
    v69 = (v44 + 2 * (v66 & 0xFFFFFFFFFFFFFFF8));
    v94 = (v44 + 2 * v67);
    v95 = &v40->i8[v67];
    v96 = v67 - (v66 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v97 = *v95++;
      *v94++ = vmovl_u8(v97);
      v96 += 8;
    }

    while (v96);
    if (v66 == (v66 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_65;
    }

    do
    {
LABEL_62:
      v70 = v68->u8[0];
      v68 = (v68 + 1);
      *v69++ = v70;
    }

    while (v69 != v43);
    goto LABEL_65;
  }

  if (v41)
  {
    if (v41 == 1)
    {
      *v39 = v40->i16[0];
    }

    else
    {
      result = memcpy(&result[2 * v11], v40, 2 * v41);
    }
  }

LABEL_65:
  v42 = *(v13 + 4);
  if (v38 < v42)
  {
    goto LABEL_113;
  }

LABEL_66:
  if (v38 == v42)
  {
    goto LABEL_113;
  }

  v39[v42] = v14;
  return result;
}

uint64_t WGSL::Metal::emitTextureDimensions(WGSL::Metal::FunctionDefinitionWriter *,WGSL::AST::CallExpression &)::$_0::operator()(uint64_t **a1, unint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  if (!*(v3 + 21))
  {
    __break(0xC471u);
    goto LABEL_35;
  }

  (*(***a1 + 216))(**a1, *v3[9]);
  v7 = **a1;
  v29[0] = ".get_";
  v29[1] = 5;
  v8 = a3 - 1;
  if (!a3)
  {
    v8 = 0;
  }

  v28[0] = a2;
  v28[1] = v8;
  if (v8 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x22575D764);
  }

  v27 = 40;
  result = WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((v7 + 64), v29, v28, &v27);
  if (*a1[2] && *(a1[1] + 21) >= 2u)
  {
    WTF::StringBuilder::append();
    v10 = a1[1];
    if (!*(v10 + 21))
    {
      __break(0xC471u);
      JUMPOUT(0x22575D76CLL);
    }

    (*(***a1 + 216))(**a1, *v10[9]);
    WTF::StringBuilder::append();
    v11 = a1[1];
    if (*(v11 + 21) > 1u)
    {
      result = (*(***a1 + 216))(**a1, *(v11[9] + 8));
      v12 = **a1;
      LOBYTE(v29[0]) = 41;
      v13 = *(v12 + 72);
      if (v13 && (v14 = *(v12 + 80), v14 < *(v13 + 4)) && !*(v12 + 64))
      {
        v23 = *(v13 + 16);
        v24 = *(v13 + 8);
        *(v12 + 80) = v14 + 1;
        if ((v23 & 4) != 0)
        {
          *(v24 + v14) = 41;
        }

        else
        {
          *(v24 + 2 * v14) = 41;
        }
      }

      else
      {
        result = WTF::StringBuilder::append();
      }

      v15 = **a1;
      LOBYTE(v29[0]) = 41;
      v16 = *(v15 + 72);
      if (v16 && (v17 = *(v15 + 80), v17 < *(v16 + 4)) && !*(v15 + 64))
      {
        v25 = *(v16 + 16);
        v26 = *(v16 + 8);
        *(v15 + 80) = v17 + 1;
        if ((v25 & 4) != 0)
        {
          *(v26 + v17) = 41;
        }

        else
        {
          *(v26 + 2 * v17) = 41;
        }
      }

      else
      {
        result = WTF::StringBuilder::append();
      }

      goto LABEL_17;
    }

    __break(0xC471u);
LABEL_35:
    JUMPOUT(0x22575D744);
  }

LABEL_17:
  v18 = **a1;
  LOBYTE(v29[0]) = 41;
  v19 = *(v18 + 72);
  if (!v19)
  {
    return WTF::StringBuilder::append();
  }

  v20 = *(v18 + 80);
  if (v20 >= *(v19 + 4) || *(v18 + 64))
  {
    return WTF::StringBuilder::append();
  }

  v21 = *(v19 + 16);
  v22 = *(v19 + 8);
  *(v18 + 80) = v20 + 1;
  if ((v21 & 4) != 0)
  {
    *(v22 + v20) = 41;
  }

  else
  {
    *(v22 + 2 * v20) = 41;
  }

  return result;
}

uint64_t WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>(WTF::StringBuilder *a1, unint64_t *a2, unint64_t *a3, char *a4)
{
  v7 = *(a1 + 1);
  if (!v7 && (v7 = *a1) == 0 || (*(v7 + 16) & 4) != 0)
  {
    result = MEMORY[0x22AA68210]();
    if (!result)
    {
      return result;
    }

    v26 = a2[1];
    v28 = *a3;
    v27 = a3[1];
    v29 = *a4;
    if (v26)
    {
      v30 = *a2;
      if (v26 == 1)
      {
        *result = *v30;
      }

      else
      {
        v57 = result;
        v58 = v25;
        memcpy(result, v30, v26);
        v25 = v58;
        result = v57;
      }
    }

    v59 = v26;
    v32 = v25 >= v26;
    v60 = v25 - v26;
    if (v32)
    {
      v61 = (result + v59);
      if (v27)
      {
        if (v27 == 1)
        {
          *v61 = *v28;
        }

        else
        {
          result = memcpy((result + v59), v28, v27);
        }
      }

      if (v60 > v27)
      {
        v61[v27] = v29;
        return result;
      }
    }

LABEL_70:
    __break(1u);
    return result;
  }

  result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!result)
  {
    return result;
  }

  v11 = *a2;
  v10 = a2[1];
  v13 = *a3;
  v12 = a3[1];
  v14 = *a4;
  v15 = (result + 2 * v10);
  if (v10 < 0x40)
  {
    v16 = result;
    if (result == v15)
    {
      goto LABEL_25;
    }

LABEL_15:
    v31 = v15 - v16 - 2;
    if (v31 < 0xE || (v16 < v11 + (v31 >> 1) + 1 ? (v32 = v11 >= (v31 & 0xFFFFFFFFFFFFFFFELL) + v16 + 2) : (v32 = 1), !v32))
    {
      v35 = v11;
      v36 = v16;
      goto LABEL_24;
    }

    v33 = (v31 >> 1) + 1;
    if (v31 >= 0x3E)
    {
      v34 = v33 & 0xFFFFFFFFFFFFFFE0;
      v62 = (v16 + 32);
      v63 = (v11 + 16);
      v64 = v33 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v65 = *v63[-2].i8;
        v66 = vmovl_u8(*v63);
        v67 = vmovl_high_u8(*v63->i8);
        v62[-2] = vmovl_u8(*v65.i8);
        v62[-1] = vmovl_high_u8(v65);
        *v62 = v66;
        v62[1] = v67;
        v62 += 4;
        v63 += 4;
        v64 -= 32;
      }

      while (v64);
      if (v33 == v34)
      {
        goto LABEL_25;
      }

      if ((v33 & 0x18) == 0)
      {
        v36 = (v16 + 2 * v34);
        v35 = (v11 + v34);
        goto LABEL_24;
      }
    }

    else
    {
      v34 = 0;
    }

    v35 = (v11 + (v33 & 0xFFFFFFFFFFFFFFF8));
    v36 = (v16 + 2 * (v33 & 0xFFFFFFFFFFFFFFF8));
    v68 = (v16 + 2 * v34);
    v69 = (v11 + v34);
    v70 = v34 - (v33 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v71 = *v69++;
      *v68++ = vmovl_u8(v71);
      v70 += 8;
    }

    while (v70);
    if (v33 == (v33 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_24:
      v37 = *v35++;
      *v36++ = v37;
    }

    while (v36 != v15);
    goto LABEL_25;
  }

  v16 = result + 2 * (v10 & 0x7FFFFFFFFFFFFFC0);
  v17 = 0uLL;
  v18 = result;
  do
  {
    v81.val[0] = *v11;
    v19 = *(v11 + 16);
    v83.val[0] = *(v11 + 32);
    v20 = *(v11 + 48);
    v11 += 64;
    v21 = v20;
    v83.val[1] = 0uLL;
    v85.val[0] = v19;
    v81.val[1] = 0uLL;
    v22 = v18;
    vst2q_s8(v22, v81);
    v22 += 32;
    v85.val[1] = 0uLL;
    vst2q_s8(v22, v85);
    v23 = v18 + 64;
    vst2q_s8(v23, v83);
    v24 = v18 + 96;
    vst2q_s8(v24, *(&v17 - 1));
    v18 += 128;
  }

  while (v18 != v16);
  if (v16 != v15)
  {
    goto LABEL_15;
  }

LABEL_25:
  v38 = v10;
  v39 = v9 - v10;
  if (v9 < v10)
  {
    goto LABEL_70;
  }

  v40 = result + 2 * v10;
  v41 = (v40 + 2 * v12);
  v42 = result + 2 * v38;
  if (v12 >= 0x40)
  {
    v42 = v40 + 2 * (v12 & 0x7FFFFFFFFFFFFFC0);
    v43 = 0uLL;
    v44 = (result + 2 * v38);
    do
    {
      v82.val[0] = *v13;
      v45 = *(v13 + 16);
      v84.val[0] = *(v13 + 32);
      v46 = *(v13 + 48);
      v13 += 64;
      v47 = v46;
      v84.val[1] = 0uLL;
      v86.val[0] = v45;
      v82.val[1] = 0uLL;
      v48 = v44;
      vst2q_s8(v48, v82);
      v48 += 32;
      v86.val[1] = 0uLL;
      vst2q_s8(v48, v86);
      v49 = v44 + 64;
      vst2q_s8(v49, v84);
      v50 = v44 + 96;
      vst2q_s8(v50, *(&v43 - 1));
      v44 += 128;
    }

    while (v44 != v42);
  }

  if (v42 != v41)
  {
    v51 = result + 2 * v12 + 2 * v38 - v42 - 2;
    if (v51 < 0xE || (v42 < v13 + (v51 >> 1) + 1 ? (v52 = v13 >= (v51 & 0xFFFFFFFFFFFFFFFELL) + v42 + 2) : (v52 = 1), !v52))
    {
      v54 = v13;
      v55 = v42;
      goto LABEL_39;
    }

    v53 = (v51 >> 1) + 1;
    if (v51 >= 0x3E)
    {
      result = v53 & 0xFFFFFFFFFFFFFFE0;
      v72 = (v42 + 32);
      v73 = (v13 + 16);
      v74 = v53 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v75 = *v73[-2].i8;
        v76 = vmovl_u8(*v73);
        v77 = vmovl_high_u8(*v73->i8);
        v72[-2] = vmovl_u8(*v75.i8);
        v72[-1] = vmovl_high_u8(v75);
        *v72 = v76;
        v72[1] = v77;
        v72 += 4;
        v73 += 4;
        v74 -= 32;
      }

      while (v74);
      if (v53 == result)
      {
        goto LABEL_40;
      }

      if ((v53 & 0x18) == 0)
      {
        v55 = (v42 + 2 * result);
        v54 = (v13 + result);
        do
        {
LABEL_39:
          v56 = *v54++;
          *v55++ = v56;
        }

        while (v55 != v41);
        goto LABEL_40;
      }
    }

    else
    {
      result = 0;
    }

    v54 = (v13 + (v53 & 0xFFFFFFFFFFFFFFF8));
    v55 = (v42 + 2 * (v53 & 0xFFFFFFFFFFFFFFF8));
    v78 = (v42 + 2 * result);
    v79 = (v13 + result);
    result -= v53 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v80 = *v79++;
      *v78++ = vmovl_u8(v80);
      result += 8;
    }

    while (result);
    if (v53 != (v53 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_39;
    }
  }

LABEL_40:
  if (v39 <= v12)
  {
    goto LABEL_70;
  }

  *(v40 + 2 * v12) = v14;
  return result;
}

_BYTE *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, unint64_t *a2, unint64_t *a3)
{
  v5 = *(a1 + 1);
  if (!v5 && (v5 = *a1) == 0 || (*(v5 + 16) & 4) != 0)
  {
    result = MEMORY[0x22AA68210]();
    if (!result)
    {
      return result;
    }

    v23 = a2[1];
    v25 = *a3;
    v24 = a3[1];
    if (v23)
    {
      v26 = *a2;
      if (v23 == 1)
      {
        *result = *v26;
      }

      else
      {
        v52 = result;
        v53 = v22;
        memcpy(result, v26, v23);
        v22 = v53;
        result = v52;
      }
    }

    if (v22 >= v23)
    {
      if (v24)
      {
        if (v24 == 1)
        {
          result[v23] = *v25;
        }

        else
        {
          v54 = &result[v23];

          return memcpy(v54, v25, v24);
        }
      }

      return result;
    }

LABEL_68:
    __break(1u);
    return result;
  }

  result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!result)
  {
    return result;
  }

  v9 = *a2;
  v8 = a2[1];
  v10 = *a3;
  v11 = a3[1];
  v12 = &result[2 * v8];
  if (v8 < 0x40)
  {
    v13 = result;
    if (result == v12)
    {
      goto LABEL_25;
    }

LABEL_15:
    v27 = &v12[-v13 - 2];
    if (v27 < 0xE || (v13 < v9 + (v27 >> 1) + 1 ? (v28 = v9 >= (v27 & 0xFFFFFFFFFFFFFFFELL) + v13 + 2) : (v28 = 1), !v28))
    {
      v31 = v9;
      v32 = v13;
      goto LABEL_24;
    }

    v29 = (v27 >> 1) + 1;
    if (v27 >= 0x3E)
    {
      v30 = v29 & 0xFFFFFFFFFFFFFFE0;
      v55 = (v13 + 32);
      v56 = (v9 + 16);
      v57 = v29 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v58 = *v56[-2].i8;
        v59 = vmovl_u8(*v56);
        v60 = vmovl_high_u8(*v56->i8);
        v55[-2] = vmovl_u8(*v58.i8);
        v55[-1] = vmovl_high_u8(v58);
        *v55 = v59;
        v55[1] = v60;
        v55 += 4;
        v56 += 4;
        v57 -= 32;
      }

      while (v57);
      if (v29 == v30)
      {
        goto LABEL_25;
      }

      if ((v29 & 0x18) == 0)
      {
        v32 = (v13 + 2 * v30);
        v31 = (v9 + v30);
        goto LABEL_24;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = (v9 + (v29 & 0xFFFFFFFFFFFFFFF8));
    v32 = (v13 + 2 * (v29 & 0xFFFFFFFFFFFFFFF8));
    v61 = (v13 + 2 * v30);
    v62 = (v9 + v30);
    v63 = v30 - (v29 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v64 = *v62++;
      *v61++ = vmovl_u8(v64);
      v63 += 8;
    }

    while (v63);
    if (v29 == (v29 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_24:
      v33 = *v31++;
      *v32++ = v33;
    }

    while (v32 != v12);
    goto LABEL_25;
  }

  v13 = &result[2 * (v8 & 0x7FFFFFFFFFFFFFC0)];
  v14 = 0uLL;
  v15 = result;
  do
  {
    v76.val[0] = *v9;
    v16 = *(v9 + 16);
    v78.val[0] = *(v9 + 32);
    v17 = *(v9 + 48);
    v9 += 64;
    v18 = v17;
    v78.val[1] = 0uLL;
    v80.val[0] = v16;
    v76.val[1] = 0uLL;
    v19 = v15;
    vst2q_s8(v19, v76);
    v19 += 32;
    v80.val[1] = 0uLL;
    vst2q_s8(v19, v80);
    v20 = v15 + 64;
    vst2q_s8(v20, v78);
    v21 = v15 + 96;
    vst2q_s8(v21, *(&v14 - 1));
    v15 += 128;
  }

  while (v15 != v13);
  if (v13 != v12)
  {
    goto LABEL_15;
  }

LABEL_25:
  v34 = v8;
  if (v7 < v8)
  {
    goto LABEL_68;
  }

  v35 = &result[2 * v8];
  v36 = (v35 + 2 * v11);
  if (v11 >= 0x40)
  {
    v37 = v35 + 2 * (v11 & 0x7FFFFFFFFFFFFFC0);
    v38 = 0uLL;
    do
    {
      v77.val[0] = *v10;
      v39 = *(v10 + 16);
      v79.val[0] = *(v10 + 32);
      v40 = *(v10 + 48);
      v10 += 64;
      v41 = v40;
      v79.val[1] = 0uLL;
      v81.val[0] = v39;
      v77.val[1] = 0uLL;
      v42 = v35;
      vst2q_s8(v42, v77);
      v42 += 32;
      v81.val[1] = 0uLL;
      vst2q_s8(v42, v81);
      v43 = (v35 + 64);
      vst2q_s8(v43, v79);
      v44 = (v35 + 96);
      vst2q_s8(v44, *(&v38 - 1));
      v35 += 128;
    }

    while (v35 != v37);
    v35 = v37;
  }

  if (v35 != v36)
  {
    v45 = &result[2 * v11 + 2 * v34 - v35 - 2];
    if (v45 < 0xE || (v35 < v10 + (v45 >> 1) + 1 ? (v46 = v10 >= (v45 & 0xFFFFFFFFFFFFFFFELL) + v35 + 2) : (v46 = 1), !v46))
    {
      v49 = v10;
      v50 = v35;
      goto LABEL_40;
    }

    v47 = (v45 >> 1) + 1;
    if (v45 >= 0x3E)
    {
      v48 = v47 & 0xFFFFFFFFFFFFFFE0;
      v65 = (v35 + 32);
      v66 = (v10 + 16);
      v67 = v47 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v68 = *v66[-2].i8;
        v69 = vmovl_u8(*v66);
        v70 = vmovl_high_u8(*v66->i8);
        v65[-2] = vmovl_u8(*v68.i8);
        v65[-1] = vmovl_high_u8(v68);
        *v65 = v69;
        v65[1] = v70;
        v65 += 4;
        v66 += 4;
        v67 -= 32;
      }

      while (v67);
      if (v47 == v48)
      {
        return result;
      }

      if ((v47 & 0x18) == 0)
      {
        v50 = (v35 + 2 * v48);
        v49 = (v10 + v48);
        do
        {
LABEL_40:
          v51 = *v49++;
          *v50++ = v51;
        }

        while (v50 != v36);
        return result;
      }
    }

    else
    {
      v48 = 0;
    }

    v49 = (v10 + (v47 & 0xFFFFFFFFFFFFFFF8));
    v50 = (v35 + 2 * (v47 & 0xFFFFFFFFFFFFFFF8));
    v71 = (v35 + 2 * v48);
    v72 = (v10 + v48);
    v73 = v48 - (v47 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v74 = *v72++;
      *v71++ = vmovl_u8(v74);
      v73 += 8;
    }

    while (v73);
    if (v47 != (v47 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_40;
    }
  }

  return result;
}

void WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, int *a2, unint64_t *a3, int *a4, unint64_t *a5)
{
  v9 = *(a1 + 1);
  if (!v9 && (v9 = *a1) == 0 || (*(v9 + 16) & 4) != 0)
  {
    v33 = MEMORY[0x22AA68210]();
    if (!v33)
    {
      return;
    }

    v35 = v33;
    v36 = v34;
    v37 = *a2;
    v39 = *a3;
    v38 = a3[1];
    v40 = *a4;
    v41 = *a5;
    v42 = a5[1];
    v43 = (4 * v37);
    if (v43)
    {
      memset(v33, 32, (4 * v37));
      if (v36 < v43)
      {
        goto LABEL_84;
      }

      v36 -= v43;
      v44 = &v35[v43];
      if (!v38)
      {
LABEL_21:
        v45 = v38;
        v50 = v36 >= v38;
        v46 = v36 - v38;
        if (!v50)
        {
          goto LABEL_84;
        }

        v47 = &v44[v45];
        v48 = (4 * v40);
        if (v48)
        {
          memset(v47, 32, v48);
          if (v46 < v48)
          {
            goto LABEL_84;
          }

          if (!v42)
          {
            return;
          }
        }

        else
        {
          v48 = 0;
          if (!v42)
          {
            return;
          }
        }

        if (v42 == 1)
        {
          v47[v48] = *v41;
        }

        else
        {

          memcpy(&v47[v48], v41, v42);
        }

        return;
      }
    }

    else
    {
      v44 = v33;
      if (!v38)
      {
        goto LABEL_21;
      }
    }

    if (v38 == 1)
    {
      *v44 = *v39;
    }

    else
    {
      memcpy(v44, v39, v38);
    }

    goto LABEL_21;
  }

  v10 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!v10)
  {
    return;
  }

  v12 = v10;
  v13 = v11;
  v14 = *a2;
  v16 = *a3;
  v15 = a3[1];
  v17 = *a4;
  v19 = *a5;
  v18 = a5[1];
  v20 = (4 * v14);
  if (!v20)
  {
    v20 = 0;
    v21 = v10;
    v22 = &v10[2 * v15];
    if (v15 >= 0x40)
    {
      goto LABEL_8;
    }

LABEL_34:
    v23 = v21;
    v32 = v13 - v20;
    if (v21 == v22)
    {
      goto LABEL_45;
    }

LABEL_35:
    v49 = &v12[2 * v15 + 2 * v20 - v23 - 2];
    if (v49 < 0xE || (v23 < v16 + (v49 >> 1) + 1 ? (v50 = v16 >= (v49 & 0xFFFFFFFFFFFFFFFELL) + v23 + 2) : (v50 = 1), !v50))
    {
      v53 = v16;
      v54 = v23;
      goto LABEL_44;
    }

    v51 = (v49 >> 1) + 1;
    if (v49 >= 0x3E)
    {
      v52 = v51 & 0xFFFFFFFFFFFFFFE0;
      v76 = (v23 + 32);
      v77 = (v16 + 16);
      v78 = v51 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v79 = *v77[-2].i8;
        v80 = vmovl_u8(*v77);
        v81 = vmovl_high_u8(*v77->i8);
        v76[-2] = vmovl_u8(*v79.i8);
        v76[-1] = vmovl_high_u8(v79);
        *v76 = v80;
        v76[1] = v81;
        v76 += 4;
        v77 += 4;
        v78 -= 32;
      }

      while (v78);
      if (v51 == v52)
      {
        goto LABEL_45;
      }

      if ((v51 & 0x18) == 0)
      {
        v54 = (v23 + 2 * v52);
        v53 = (v16 + v52);
        goto LABEL_44;
      }
    }

    else
    {
      v52 = 0;
    }

    v53 = (v16 + (v51 & 0xFFFFFFFFFFFFFFF8));
    v54 = (v23 + 2 * (v51 & 0xFFFFFFFFFFFFFFF8));
    v82 = (v23 + 2 * v52);
    v83 = (v16 + v52);
    v84 = v52 - (v51 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v85 = *v83++;
      *v82++ = vmovl_u8(v85);
      v84 += 8;
    }

    while (v84);
    if (v51 == (v51 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_45;
    }

    do
    {
LABEL_44:
      v55 = *v53++;
      *v54 = v55;
      v54 += 2;
    }

    while (v54 != v22);
    goto LABEL_45;
  }

  memset_pattern16(v10, aIneStateTLTAne, 2 * (4 * v14));
  if (v13 < v20)
  {
    goto LABEL_84;
  }

  v21 = &v12[2 * v20];
  v22 = &v21[2 * v15];
  if (v15 < 0x40)
  {
    goto LABEL_34;
  }

LABEL_8:
  v23 = &v21[2 * (v15 & 0x7FFFFFFFFFFFFFC0)];
  v24 = 0uLL;
  v25 = v21;
  do
  {
    v97.val[0] = *v16;
    v26 = *(v16 + 16);
    v99.val[0] = *(v16 + 32);
    v27 = *(v16 + 48);
    v16 += 64;
    v28 = v27;
    v99.val[1] = 0uLL;
    v101.val[0] = v26;
    v97.val[1] = 0uLL;
    v29 = v25;
    vst2q_s8(v29, v97);
    v29 += 32;
    v101.val[1] = 0uLL;
    vst2q_s8(v29, v101);
    v30 = v25 + 64;
    vst2q_s8(v30, v99);
    v31 = v25 + 96;
    vst2q_s8(v31, *(&v24 - 1));
    v25 += 128;
  }

  while (v25 != v23);
  v32 = v13 - v20;
  if (v23 != v22)
  {
    goto LABEL_35;
  }

LABEL_45:
  v56 = v32 - v15;
  if (v32 < v15)
  {
    goto LABEL_84;
  }

  v57 = (4 * v17);
  v58 = &v21[2 * v15];
  if (v57)
  {
    memset_pattern16(&v21[2 * v15], aIneStateTLTAne, 2 * v57);
    if (v56 >= v57)
    {
      v59 = &v58[2 * v57];
      v60 = (v59 + 2 * v18);
      if (v18 < 0x40)
      {
        goto LABEL_49;
      }

LABEL_52:
      v61 = v59 + 2 * (v18 & 0x7FFFFFFFFFFFFFC0);
      v62 = 0uLL;
      do
      {
        v98.val[0] = *v19;
        v63 = *(v19 + 16);
        v100.val[0] = *(v19 + 32);
        v64 = *(v19 + 48);
        v19 += 64;
        v65 = v64;
        v100.val[1] = 0uLL;
        v102.val[0] = v63;
        v98.val[1] = 0uLL;
        v66 = v59;
        vst2q_s8(v66, v98);
        v66 += 32;
        v102.val[1] = 0uLL;
        vst2q_s8(v66, v102);
        v67 = (v59 + 64);
        vst2q_s8(v67, v100);
        v68 = (v59 + 96);
        vst2q_s8(v68, *(&v62 - 1));
        v59 += 128;
      }

      while (v59 != v61);
      v59 = v61;
      if (v61 == v60)
      {
        return;
      }

      goto LABEL_55;
    }

LABEL_84:
    __break(1u);
    return;
  }

  v57 = 0;
  v59 = &v21[2 * v15];
  v60 = &v58[2 * v18];
  if (v18 >= 0x40)
  {
    goto LABEL_52;
  }

LABEL_49:
  if (v59 == v60)
  {
    return;
  }

LABEL_55:
  v69 = &v12[2 * v18 + 2 * v20 + 2 * v57 + 2 * v15 - v59 - 2];
  if (v69 < 0xE || (v59 < v19 + (v69 >> 1) + 1 ? (v70 = v19 >= (v69 & 0xFFFFFFFFFFFFFFFELL) + v59 + 2) : (v70 = 1), !v70))
  {
    v73 = v19;
    v74 = v59;
    goto LABEL_64;
  }

  v71 = (v69 >> 1) + 1;
  if (v69 >= 0x3E)
  {
    v72 = v71 & 0xFFFFFFFFFFFFFFE0;
    v86 = (v59 + 32);
    v87 = (v19 + 16);
    v88 = v71 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v89 = *v87[-2].i8;
      v90 = vmovl_u8(*v87);
      v91 = vmovl_high_u8(*v87->i8);
      v86[-2] = vmovl_u8(*v89.i8);
      v86[-1] = vmovl_high_u8(v89);
      *v86 = v90;
      v86[1] = v91;
      v86 += 4;
      v87 += 4;
      v88 -= 32;
    }

    while (v88);
    if (v71 == v72)
    {
      return;
    }

    if ((v71 & 0x18) == 0)
    {
      v74 = (v59 + 2 * v72);
      v73 = (v19 + v72);
      do
      {
LABEL_64:
        v75 = *v73++;
        *v74 = v75;
        v74 += 2;
      }

      while (v74 != v60);
      return;
    }
  }

  else
  {
    v72 = 0;
  }

  v73 = (v19 + (v71 & 0xFFFFFFFFFFFFFFF8));
  v74 = (v59 + 2 * (v71 & 0xFFFFFFFFFFFFFFF8));
  v92 = (v59 + 2 * v72);
  v93 = (v19 + v72);
  v94 = v72 - (v71 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v95 = *v93++;
    *v92++ = vmovl_u8(v95);
    v94 += 8;
  }

  while (v94);
  if (v71 != (v71 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_64;
  }
}

_BYTE *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(_BYTE *__b, unint64_t a2, int a3, _BYTE *a4, size_t a5, int a6, _BYTE *a7, size_t a8, uint64_t a9, _BYTE *a10, size_t a11, uint64_t a12, _BYTE *a13, size_t a14, uint64_t a15, _BYTE *a16, size_t a17, uint64_t a18, char *a19, size_t a20)
{
  v25 = __b;
  v26 = (4 * a3);
  if (!v26)
  {
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  __b = memset(__b, 32, (4 * a3));
  if (a2 < v26)
  {
    goto LABEL_62;
  }

  a2 -= v26;
  v25 += v26;
  if (a5)
  {
LABEL_6:
    if (a5 == 1)
    {
      *v25 = *a4;
    }

    else
    {
      __b = memcpy(v25, a4, a5);
    }
  }

LABEL_9:
  v27 = a5;
  v28 = a2 >= a5;
  v29 = a2 - a5;
  if (!v28)
  {
    goto LABEL_62;
  }

  v30 = &v25[v27];
  v31 = (4 * a6);
  if (!v31)
  {
    if (!a8)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  __b = memset(v30, 32, v31);
  if (v29 < v31)
  {
    goto LABEL_62;
  }

  v29 -= v31;
  v30 += v31;
  if (a8)
  {
LABEL_16:
    if (a8 == 1)
    {
      *v30 = *a7;
    }

    else
    {
      __b = memcpy(v30, a7, a8);
    }
  }

LABEL_19:
  v28 = v29 >= a8;
  v32 = v29 - a8;
  if (!v28)
  {
    goto LABEL_62;
  }

  v33 = &v30[a8];
  v34 = (4 * a9);
  if (!v34)
  {
    v35 = v32;
    if (!a11)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  __b = memset(v33, 32, (4 * a9));
  if (v32 < v34)
  {
    goto LABEL_62;
  }

  v35 = v32 - v34;
  v33 += v34;
  if (a11)
  {
LABEL_26:
    if (a11 == 1)
    {
      *v33 = *a10;
    }

    else
    {
      __b = memcpy(v33, a10, a11);
    }
  }

LABEL_29:
  v28 = v35 >= a11;
  v36 = v35 - a11;
  if (!v28)
  {
    goto LABEL_62;
  }

  v37 = &v33[a11];
  v38 = (4 * a12);
  if (!v38)
  {
    if (!a14)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  __b = memset(v37, 32, (4 * a12));
  if (v36 < v38)
  {
    goto LABEL_62;
  }

  v36 -= v38;
  v37 += v38;
  if (a14)
  {
LABEL_36:
    if (a14 == 1)
    {
      *v37 = *a13;
    }

    else
    {
      __b = memcpy(v37, a13, a14);
    }
  }

LABEL_39:
  v28 = v36 >= a14;
  v39 = v36 - a14;
  if (!v28)
  {
    goto LABEL_62;
  }

  v40 = &v37[a14];
  v41 = (4 * a15);
  if (!v41)
  {
    v42 = a17;
    if (!a17)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  __b = memset(v40, 32, (4 * a15));
  if (v39 < v41)
  {
    goto LABEL_62;
  }

  v39 -= v41;
  v40 += v41;
  v42 = a17;
  if (a17)
  {
LABEL_46:
    if (v42 == 1)
    {
      *v40 = *a16;
    }

    else
    {
      __b = memcpy(v40, a16, v42);
    }
  }

LABEL_49:
  v28 = v39 >= v42;
  v43 = v39 - v42;
  if (!v28)
  {
    goto LABEL_62;
  }

  v44 = &v40[v42];
  v45 = (4 * a18);
  if (!v45)
  {
    v45 = 0;
    v46 = a20;
    if (!a20)
    {
      return __b;
    }

    goto LABEL_56;
  }

  __b = memset(v44, 32, (4 * a18));
  if (v43 < v45)
  {
LABEL_62:
    __break(1u);
    return __b;
  }

  v46 = a20;
  if (!a20)
  {
    return __b;
  }

LABEL_56:
  if (v46 == 1)
  {
    v44[v45] = *a19;
  }

  else
  {

    return memcpy(&v44[v45], a19, v46);
  }

  return __b;
}

void WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(char *__b, unint64_t a2, int a3, unint64_t a4, unint64_t a5, int a6, unint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, unint64_t a17)
{
  v25 = (4 * a3);
  if (v25)
  {
    memset_pattern16(__b, aIneStateTLTAne, 2 * (4 * a3));
    if (a2 < v25)
    {
      goto LABEL_62;
    }

    v26 = &__b[2 * v25];
    v27 = &v26[2 * a5];
    if (a5 >= 0x40)
    {
LABEL_4:
      v28 = &v26[2 * (a5 & 0x7FFFFFFFFFFFFFC0)];
      v29 = 0uLL;
      v30 = v26;
      do
      {
        v89.val[0] = *a4;
        v31 = *(a4 + 16);
        v91.val[0] = *(a4 + 32);
        v32 = *(a4 + 48);
        a4 += 64;
        v33 = v32;
        v91.val[1] = 0uLL;
        v93.val[0] = v31;
        v89.val[1] = 0uLL;
        v34 = v30;
        vst2q_s8(v34, v89);
        v34 += 32;
        v93.val[1] = 0uLL;
        vst2q_s8(v34, v93);
        v35 = v30 + 64;
        vst2q_s8(v35, v91);
        v36 = v30 + 96;
        vst2q_s8(v36, *(&v29 - 1));
        v30 += 128;
      }

      while (v30 != v28);
      v37 = a2 - v25;
      v38 = 8 * (a3 & 0x3FFFFFFF);
      if (v28 == v27)
      {
        goto LABEL_20;
      }

LABEL_10:
      v39 = &__b[2 * a5 + v38 - v28 - 2];
      if (v39 < 0xE || (v28 < a4 + (v39 >> 1) + 1 ? (v40 = a4 >= (v39 & 0xFFFFFFFFFFFFFFFELL) + v28 + 2) : (v40 = 1), !v40))
      {
        v43 = a4;
        v44 = v28;
        goto LABEL_19;
      }

      v41 = (v39 >> 1) + 1;
      if (v39 >= 0x3E)
      {
        v42 = v41 & 0xFFFFFFFFFFFFFFE0;
        v68 = (v28 + 32);
        v69 = (a4 + 16);
        v70 = v41 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v71 = *v69[-2].i8;
          v72 = vmovl_u8(*v69);
          v73 = vmovl_high_u8(*v69->i8);
          v68[-2] = vmovl_u8(*v71.i8);
          v68[-1] = vmovl_high_u8(v71);
          *v68 = v72;
          v68[1] = v73;
          v68 += 4;
          v69 += 4;
          v70 -= 32;
        }

        while (v70);
        if (v41 == v42)
        {
          goto LABEL_20;
        }

        if ((v41 & 0x18) == 0)
        {
          v44 = (v28 + 2 * v42);
          v43 = (a4 + v42);
          do
          {
LABEL_19:
            v45 = *v43++;
            *v44 = v45;
            v44 += 2;
          }

          while (v44 != v27);
          goto LABEL_20;
        }
      }

      else
      {
        v42 = 0;
      }

      v43 = (a4 + (v41 & 0xFFFFFFFFFFFFFFF8));
      v44 = (v28 + 2 * (v41 & 0xFFFFFFFFFFFFFFF8));
      v74 = (v28 + 2 * v42);
      v75 = (a4 + v42);
      v76 = v42 - (v41 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v77 = *v75++;
        *v74++ = vmovl_u8(v77);
        v76 += 8;
      }

      while (v76);
      if (v41 == (v41 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v25 = 0;
    v26 = __b;
    v27 = &__b[2 * a5];
    if (a5 >= 0x40)
    {
      goto LABEL_4;
    }
  }

  v28 = v26;
  v37 = a2 - v25;
  v38 = 8 * (a3 & 0x3FFFFFFF);
  if (v26 != v27)
  {
    goto LABEL_10;
  }

LABEL_20:
  v46 = v37 - a5;
  if (v37 < a5)
  {
    goto LABEL_62;
  }

  v47 = (4 * a6);
  v48 = &v26[2 * a5];
  if (!v47)
  {
    v47 = 0;
    v49 = &v26[2 * a5];
    v50 = &v48[2 * a8];
    if (a8 >= 0x40)
    {
      goto LABEL_24;
    }

LABEL_29:
    v51 = v49;
    v60 = v46 - v47;
    if (v49 == v50)
    {
      goto LABEL_40;
    }

LABEL_30:
    v61 = &__b[8 * (a6 & 0x3FFFFFFF) + 2 * a8 + 2 * a5 + v38 - v51 - 2];
    if (v61 < 0xE || (v51 < a7 + (v61 >> 1) + 1 ? (v62 = a7 >= (v61 & 0xFFFFFFFFFFFFFFFELL) + v51 + 2) : (v62 = 1), !v62))
    {
      v65 = a7;
      v66 = v51;
      goto LABEL_39;
    }

    v63 = (v61 >> 1) + 1;
    if (v61 >= 0x3E)
    {
      v64 = v63 & 0xFFFFFFFFFFFFFFE0;
      v78 = (v51 + 32);
      v79 = (a7 + 16);
      v80 = v63 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v81 = *v79[-2].i8;
        v82 = vmovl_u8(*v79);
        v83 = vmovl_high_u8(*v79->i8);
        v78[-2] = vmovl_u8(*v81.i8);
        v78[-1] = vmovl_high_u8(v81);
        *v78 = v82;
        v78[1] = v83;
        v78 += 4;
        v79 += 4;
        v80 -= 32;
      }

      while (v80);
      if (v63 == v64)
      {
        goto LABEL_40;
      }

      if ((v63 & 0x18) == 0)
      {
        v66 = (v51 + 2 * v64);
        v65 = (a7 + v64);
        goto LABEL_39;
      }
    }

    else
    {
      v64 = 0;
    }

    v65 = (a7 + (v63 & 0xFFFFFFFFFFFFFFF8));
    v66 = (v51 + 2 * (v63 & 0xFFFFFFFFFFFFFFF8));
    v84 = (v51 + 2 * v64);
    v85 = (a7 + v64);
    v86 = v64 - (v63 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v87 = *v85++;
      *v84++ = vmovl_u8(v87);
      v86 += 8;
    }

    while (v86);
    if (v63 == (v63 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_40;
    }

    do
    {
LABEL_39:
      v67 = *v65++;
      *v66 = v67;
      v66 += 2;
    }

    while (v66 != v50);
    goto LABEL_40;
  }

  memset_pattern16(&v26[2 * a5], aIneStateTLTAne, 2 * (4 * a6));
  if (v46 < v47)
  {
LABEL_62:
    __break(1u);
    return;
  }

  v49 = &v48[2 * v47];
  v50 = &v49[2 * a8];
  if (a8 < 0x40)
  {
    goto LABEL_29;
  }

LABEL_24:
  v51 = &v49[2 * (a8 & 0x7FFFFFFFFFFFFFC0)];
  v52 = 0uLL;
  v53 = v49;
  do
  {
    v90.val[0] = *a7;
    v54 = *(a7 + 16);
    v92.val[0] = *(a7 + 32);
    v55 = *(a7 + 48);
    a7 += 64;
    v56 = v55;
    v92.val[1] = 0uLL;
    v94.val[0] = v54;
    v90.val[1] = 0uLL;
    v57 = v53;
    vst2q_s8(v57, v90);
    v57 += 32;
    v94.val[1] = 0uLL;
    vst2q_s8(v57, v94);
    v58 = v53 + 64;
    vst2q_s8(v58, v92);
    v59 = v53 + 96;
    vst2q_s8(v59, *(&v52 - 1));
    v53 += 128;
  }

  while (v53 != v51);
  v60 = v46 - v47;
  if (v51 != v50)
  {
    goto LABEL_30;
  }

LABEL_40:
  if (v60 < a8)
  {
    goto LABEL_62;
  }

  WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v49[2 * a8], v60 - a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

void WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(char *__b, unint64_t a2, int a3, unint64_t a4, unint64_t a5, int a6, unint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11)
{
  v19 = (4 * a3);
  if (!v19)
  {
    v19 = 0;
    v20 = __b;
    v21 = &__b[2 * a5];
    if (a5 >= 0x40)
    {
      goto LABEL_4;
    }

LABEL_9:
    v22 = v20;
    v31 = a2 - v19;
    v32 = 8 * (a3 & 0x3FFFFFFF);
    if (v20 == v21)
    {
      goto LABEL_20;
    }

LABEL_10:
    v33 = &__b[2 * a5 + v32 - v22 - 2];
    if (v33 < 0xE || (v22 < a4 + (v33 >> 1) + 1 ? (v34 = a4 >= (v33 & 0xFFFFFFFFFFFFFFFELL) + v22 + 2) : (v34 = 1), !v34))
    {
      v37 = a4;
      v38 = v22;
      goto LABEL_19;
    }

    v35 = (v33 >> 1) + 1;
    if (v33 >= 0x3E)
    {
      v36 = v35 & 0xFFFFFFFFFFFFFFE0;
      v87 = (v22 + 32);
      v88 = (a4 + 16);
      v89 = v35 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v90 = *v88[-2].i8;
        v91 = vmovl_u8(*v88);
        v92 = vmovl_high_u8(*v88->i8);
        v87[-2] = vmovl_u8(*v90.i8);
        v87[-1] = vmovl_high_u8(v90);
        *v87 = v91;
        v87[1] = v92;
        v87 += 4;
        v88 += 4;
        v89 -= 32;
      }

      while (v89);
      if (v35 == v36)
      {
        goto LABEL_20;
      }

      if ((v35 & 0x18) == 0)
      {
        v38 = (v22 + 2 * v36);
        v37 = (a4 + v36);
        goto LABEL_19;
      }
    }

    else
    {
      v36 = 0;
    }

    v37 = (a4 + (v35 & 0xFFFFFFFFFFFFFFF8));
    v38 = (v22 + 2 * (v35 & 0xFFFFFFFFFFFFFFF8));
    v93 = (v22 + 2 * v36);
    v94 = (a4 + v36);
    v95 = v36 - (v35 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v96 = *v94++;
      *v93++ = vmovl_u8(v96);
      v95 += 8;
    }

    while (v95);
    if (v35 == (v35 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_20;
    }

    do
    {
LABEL_19:
      v39 = *v37++;
      *v38 = v39;
      v38 += 2;
    }

    while (v38 != v21);
    goto LABEL_20;
  }

  memset_pattern16(__b, aIneStateTLTAne, 2 * (4 * a3));
  if (a2 < v19)
  {
    goto LABEL_88;
  }

  v20 = &__b[2 * v19];
  v21 = &v20[2 * a5];
  if (a5 < 0x40)
  {
    goto LABEL_9;
  }

LABEL_4:
  v22 = &v20[2 * (a5 & 0x7FFFFFFFFFFFFFC0)];
  v23 = 0uLL;
  v24 = v20;
  do
  {
    v117.val[0] = *a4;
    v25 = *(a4 + 16);
    v120.val[0] = *(a4 + 32);
    v26 = *(a4 + 48);
    a4 += 64;
    v27 = v26;
    v120.val[1] = 0uLL;
    v123.val[0] = v25;
    v117.val[1] = 0uLL;
    v28 = v24;
    vst2q_s8(v28, v117);
    v28 += 32;
    v123.val[1] = 0uLL;
    vst2q_s8(v28, v123);
    v29 = v24 + 64;
    vst2q_s8(v29, v120);
    v30 = v24 + 96;
    vst2q_s8(v30, *(&v23 - 1));
    v24 += 128;
  }

  while (v24 != v22);
  v31 = a2 - v19;
  v32 = 8 * (a3 & 0x3FFFFFFF);
  if (v22 != v21)
  {
    goto LABEL_10;
  }

LABEL_20:
  v40 = a5;
  v41 = v31 - a5;
  if (v31 < a5)
  {
    goto LABEL_88;
  }

  v42 = (4 * a6);
  v43 = &v20[2 * a5];
  if (!v42)
  {
    v42 = 0;
    v44 = &v20[2 * v40];
    v45 = &v43[2 * a8];
    if (a8 >= 0x40)
    {
      goto LABEL_24;
    }

LABEL_29:
    v46 = v44;
    v55 = v41 - v42;
    v56 = 8 * (a6 & 0x3FFFFFFF);
    if (v44 == v45)
    {
      goto LABEL_40;
    }

LABEL_30:
    v57 = &__b[2 * a8 + 2 * v40 + v32 + v56 - v46 - 2];
    if (v57 < 0xE || (v46 < a7 + (v57 >> 1) + 1 ? (v58 = a7 >= (v57 & 0xFFFFFFFFFFFFFFFELL) + v46 + 2) : (v58 = 1), !v58))
    {
      v61 = a7;
      v62 = v46;
      goto LABEL_39;
    }

    v59 = (v57 >> 1) + 1;
    if (v57 >= 0x3E)
    {
      v60 = v59 & 0xFFFFFFFFFFFFFFE0;
      v97 = (v46 + 32);
      v98 = (a7 + 16);
      v99 = v59 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v100 = *v98[-2].i8;
        v101 = vmovl_u8(*v98);
        v102 = vmovl_high_u8(*v98->i8);
        v97[-2] = vmovl_u8(*v100.i8);
        v97[-1] = vmovl_high_u8(v100);
        *v97 = v101;
        v97[1] = v102;
        v97 += 4;
        v98 += 4;
        v99 -= 32;
      }

      while (v99);
      if (v59 == v60)
      {
        goto LABEL_40;
      }

      if ((v59 & 0x18) == 0)
      {
        v62 = (v46 + 2 * v60);
        v61 = (a7 + v60);
        goto LABEL_39;
      }
    }

    else
    {
      v60 = 0;
    }

    v61 = (a7 + (v59 & 0xFFFFFFFFFFFFFFF8));
    v62 = (v46 + 2 * (v59 & 0xFFFFFFFFFFFFFFF8));
    v103 = (v46 + 2 * v60);
    v104 = (a7 + v60);
    v105 = v60 - (v59 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v106 = *v104++;
      *v103++ = vmovl_u8(v106);
      v105 += 8;
    }

    while (v105);
    if (v59 == (v59 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_40;
    }

    do
    {
LABEL_39:
      v63 = *v61++;
      *v62 = v63;
      v62 += 2;
    }

    while (v62 != v45);
    goto LABEL_40;
  }

  memset_pattern16(&v20[2 * v40], aIneStateTLTAne, 2 * (4 * a6));
  if (v41 < v42)
  {
    goto LABEL_88;
  }

  v44 = &v43[2 * v42];
  v45 = &v44[2 * a8];
  if (a8 < 0x40)
  {
    goto LABEL_29;
  }

LABEL_24:
  v46 = &v44[2 * (a8 & 0x7FFFFFFFFFFFFFC0)];
  v47 = 0uLL;
  v48 = v44;
  do
  {
    v118.val[0] = *a7;
    v49 = *(a7 + 16);
    v121.val[0] = *(a7 + 32);
    v50 = *(a7 + 48);
    a7 += 64;
    v51 = v50;
    v121.val[1] = 0uLL;
    v124.val[0] = v49;
    v118.val[1] = 0uLL;
    v52 = v48;
    vst2q_s8(v52, v118);
    v52 += 32;
    v124.val[1] = 0uLL;
    vst2q_s8(v52, v124);
    v53 = v48 + 64;
    vst2q_s8(v53, v121);
    v54 = v48 + 96;
    vst2q_s8(v54, *(&v47 - 1));
    v48 += 128;
  }

  while (v48 != v46);
  v55 = v41 - v42;
  v56 = 8 * (a6 & 0x3FFFFFFF);
  if (v46 != v45)
  {
    goto LABEL_30;
  }

LABEL_40:
  v64 = a8;
  v65 = v55 - a8;
  if (v55 < a8)
  {
    goto LABEL_88;
  }

  v66 = &v44[2 * a8];
  v67 = (4 * a9);
  if (v67)
  {
    memset_pattern16(&v44[2 * v64], aIneStateTLTAne, 2 * (4 * a9));
    if (v65 >= v67)
    {
      v68 = a10;
      v69 = a11;
      v70 = &v66[2 * v67];
      v71 = (v70 + 2 * a11);
      if (a11 < 0x40)
      {
        goto LABEL_44;
      }

LABEL_47:
      v72 = v70 + 2 * (v69 & 0x7FFFFFFFFFFFFFC0);
      v73 = 0uLL;
      do
      {
        v119.val[0] = *v68;
        v74 = *(v68 + 16);
        v122.val[0] = *(v68 + 32);
        v75 = *(v68 + 48);
        v68 += 64;
        v76 = v75;
        v122.val[1] = 0uLL;
        v125.val[0] = v74;
        v119.val[1] = 0uLL;
        v77 = v70;
        vst2q_s8(v77, v119);
        v77 += 32;
        v125.val[1] = 0uLL;
        vst2q_s8(v77, v125);
        v78 = (v70 + 64);
        vst2q_s8(v78, v122);
        v79 = (v70 + 96);
        vst2q_s8(v79, *(&v73 - 1));
        v70 += 128;
      }

      while (v70 != v72);
      v70 = v72;
      if (v72 == v71)
      {
        return;
      }

      goto LABEL_50;
    }

LABEL_88:
    __break(1u);
    return;
  }

  v68 = a10;
  v69 = a11;
  v70 = &v44[2 * v64];
  v71 = &v66[2 * a11];
  if (a11 >= 0x40)
  {
    goto LABEL_47;
  }

LABEL_44:
  if (v70 == v71)
  {
    return;
  }

LABEL_50:
  v80 = &__b[8 * (a9 & 0x3FFFFFFF) + 2 * v69 + 2 * v40 + 2 * v64 + v32 + v56 - v70 - 2];
  if (v80 < 0xE || (v70 < v68 + (v80 >> 1) + 1 ? (v81 = v68 >= (v80 & 0xFFFFFFFFFFFFFFFELL) + v70 + 2) : (v81 = 1), !v81))
  {
    v84 = v68;
    v85 = v70;
    goto LABEL_59;
  }

  v82 = (v80 >> 1) + 1;
  if (v80 >= 0x3E)
  {
    v83 = v82 & 0xFFFFFFFFFFFFFFE0;
    v107 = (v70 + 32);
    v108 = (v68 + 16);
    v109 = v82 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v110 = *v108[-2].i8;
      v111 = vmovl_u8(*v108);
      v112 = vmovl_high_u8(*v108->i8);
      v107[-2] = vmovl_u8(*v110.i8);
      v107[-1] = vmovl_high_u8(v110);
      *v107 = v111;
      v107[1] = v112;
      v107 += 4;
      v108 += 4;
      v109 -= 32;
    }

    while (v109);
    if (v82 == v83)
    {
      return;
    }

    if ((v82 & 0x18) == 0)
    {
      v85 = (v70 + 2 * v83);
      v84 = (v68 + v83);
      do
      {
LABEL_59:
        v86 = *v84++;
        *v85 = v86;
        v85 += 2;
      }

      while (v85 != v71);
      return;
    }
  }

  else
  {
    v83 = 0;
  }

  v84 = (v68 + (v82 & 0xFFFFFFFFFFFFFFF8));
  v85 = (v70 + 2 * (v82 & 0xFFFFFFFFFFFFFFF8));
  v113 = (v70 + 2 * v83);
  v114 = (v68 + v83);
  v115 = v83 - (v82 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v116 = *v114++;
    *v113++ = vmovl_u8(v116);
    v115 += 8;
  }

  while (v115);
  if (v82 != (v82 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_59;
  }
}

void WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, int *a2, unint64_t *a3)
{
  v5 = *(a1 + 1);
  if (!v5 && (v5 = *a1) == 0 || (*(v5 + 16) & 4) != 0)
  {
    v16 = MEMORY[0x22AA68210]();
    if (!v16)
    {
      return;
    }

    v18 = v16;
    v19 = *a2;
    v21 = *a3;
    v20 = a3[1];
    v22 = (4 * v19);
    if (v22)
    {
      v23 = v17;
      memset(v16, 32, (4 * v19));
      if (v23 < v22)
      {
        goto LABEL_45;
      }

      if (!v20)
      {
        return;
      }
    }

    else
    {
      v22 = 0;
      if (!v20)
      {
        return;
      }
    }

    if (v20 == 1)
    {
      v18[v22] = *v21;
    }

    else
    {

      memcpy(&v18[v22], v21, v20);
    }

    return;
  }

  v6 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!v6)
  {
    return;
  }

  v8 = v6;
  v9 = *a2;
  v11 = *a3;
  v10 = a3[1];
  v12 = (4 * v9);
  if (v12)
  {
    v13 = v7;
    memset_pattern16(v6, aIneStateTLTAne, 2 * (4 * v9));
    if (v13 >= v12)
    {
      v14 = &v8[2 * v12];
      v15 = (v14 + 2 * v10);
      if (v10 < 0x40)
      {
        goto LABEL_8;
      }

LABEL_22:
      v24 = v14 + 2 * (v10 & 0x7FFFFFFFFFFFFFC0);
      v25 = 0uLL;
      do
      {
        v50.val[0] = *v11;
        v26 = *(v11 + 16);
        v51.val[0] = *(v11 + 32);
        v27 = *(v11 + 48);
        v11 += 64;
        v28 = v27;
        v51.val[1] = 0uLL;
        v52.val[0] = v26;
        v50.val[1] = 0uLL;
        v29 = v14;
        vst2q_s8(v29, v50);
        v29 += 32;
        v52.val[1] = 0uLL;
        vst2q_s8(v29, v52);
        v30 = (v14 + 64);
        vst2q_s8(v30, v51);
        v31 = (v14 + 96);
        vst2q_s8(v31, *(&v25 - 1));
        v14 += 128;
      }

      while (v14 != v24);
      v14 = v24;
      if (v24 == v15)
      {
        return;
      }

      goto LABEL_25;
    }

LABEL_45:
    __break(1u);
    return;
  }

  v12 = 0;
  v14 = v6;
  v15 = &v6[2 * v10];
  if (v10 >= 0x40)
  {
    goto LABEL_22;
  }

LABEL_8:
  if (v14 == v15)
  {
    return;
  }

LABEL_25:
  v32 = &v8[2 * v10 + 2 * v12 - v14 - 2];
  if (v32 < 0xE || (v14 < v11 + (v32 >> 1) + 1 ? (v33 = v11 >= (v32 & 0xFFFFFFFFFFFFFFFELL) + v14 + 2) : (v33 = 1), !v33))
  {
    v36 = v11;
    v37 = v14;
    goto LABEL_34;
  }

  v34 = (v32 >> 1) + 1;
  if (v32 >= 0x3E)
  {
    v35 = v34 & 0xFFFFFFFFFFFFFFE0;
    v39 = (v14 + 32);
    v40 = (v11 + 16);
    v41 = v34 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v42 = *v40[-2].i8;
      v43 = vmovl_u8(*v40);
      v44 = vmovl_high_u8(*v40->i8);
      v39[-2] = vmovl_u8(*v42.i8);
      v39[-1] = vmovl_high_u8(v42);
      *v39 = v43;
      v39[1] = v44;
      v39 += 4;
      v40 += 4;
      v41 -= 32;
    }

    while (v41);
    if (v34 == v35)
    {
      return;
    }

    if ((v34 & 0x18) == 0)
    {
      v37 = (v14 + 2 * v35);
      v36 = (v11 + v35);
      do
      {
LABEL_34:
        v38 = *v36++;
        *v37 = v38;
        v37 += 2;
      }

      while (v37 != v15);
      return;
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = (v11 + (v34 & 0xFFFFFFFFFFFFFFF8));
  v37 = (v14 + 2 * (v34 & 0xFFFFFFFFFFFFFFF8));
  v45 = (v14 + 2 * v35);
  v46 = (v11 + v35);
  v47 = v35 - (v34 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v48 = *v46++;
    *v45++ = vmovl_u8(v48);
    v47 += 8;
  }

  while (v47);
  if (v34 != (v34 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_34;
  }
}

void WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, int *a2, unint64_t *a3, int *a4, unint64_t *a5, unsigned int *a6, unint64_t *a7)
{
  v13 = *(a1 + 1);
  if ((v13 || (v13 = *a1) != 0) && (*(v13 + 16) & 4) == 0)
  {
    v14 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (v14)
    {
      WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v14, v15, *a2, *a3, a3[1], *a4, *a5, a5[1], *a6, *a7, a7[1]);
    }

    return;
  }

  v16 = MEMORY[0x22AA68210]();
  if (!v16)
  {
    return;
  }

  v18 = v16;
  v19 = v17;
  v20 = *a2;
  v22 = *a3;
  v21 = a3[1];
  v23 = *a4;
  v24 = *a5;
  v25 = a5[1];
  __src = v24;
  v26 = *a6;
  v27 = *a7;
  v28 = a7[1];
  v29 = (4 * v20);
  if (!v29)
  {
    if (!v21)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  memset(v16, 32, (4 * v20));
  if (v19 < v29)
  {
    goto LABEL_37;
  }

  v19 -= v29;
  v18 += v29;
  if (v21)
  {
LABEL_12:
    if (v21 == 1)
    {
      *v18 = *v22;
    }

    else
    {
      memcpy(v18, v22, v21);
    }
  }

LABEL_15:
  v30 = v21;
  v31 = v19 >= v21;
  v32 = v19 - v21;
  if (!v31)
  {
    goto LABEL_37;
  }

  v33 = &v18[v21];
  v34 = (4 * v23);
  if (!v34)
  {
    v35 = v32;
    if (!v25)
    {
      goto LABEL_25;
    }

LABEL_22:
    if (v25 == 1)
    {
      *v33 = *__src;
    }

    else
    {
      memcpy(v33, __src, v25);
    }

    goto LABEL_25;
  }

  memset(&v18[v30], 32, (4 * v23));
  if (v32 < v34)
  {
    goto LABEL_37;
  }

  v35 = v32 - v34;
  v33 += v34;
  if (v25)
  {
    goto LABEL_22;
  }

LABEL_25:
  v36 = v25;
  v37 = v35 - v25;
  if (v35 < v25)
  {
    goto LABEL_37;
  }

  v38 = &v33[v25];
  v39 = (4 * v26);
  if (!v39)
  {
    v39 = 0;
    if (!v28)
    {
      return;
    }

    goto LABEL_31;
  }

  memset(&v33[v36], 32, (4 * v26));
  if (v37 < v39)
  {
LABEL_37:
    __break(1u);
    return;
  }

  if (!v28)
  {
    return;
  }

LABEL_31:
  if (v28 == 1)
  {
    v38[v39] = *v27;
  }

  else
  {

    memcpy(&v38[v39], v27, v28);
  }
}

void WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, int *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v9 = *a4;
  v10 = *(a1 + 1);
  if ((!v10 && (v10 = *a1) == 0 || (*(v10 + 16) & 4) != 0) && (!v9 || (*(v9 + 16) & 4) != 0))
  {
    v34 = MEMORY[0x22AA68210]();
    if (!v34)
    {
      return;
    }

    v36 = v34;
    v37 = v35;
    v38 = *a2;
    v40 = *a3;
    v39 = a3[1];
    v41 = *a4;
    v42 = *a5;
    v43 = a5[1];
    v44 = (4 * v38);
    if (v44)
    {
      memset(v34, 32, (4 * v38));
      if (v37 < v44)
      {
        goto LABEL_147;
      }

      v37 -= v44;
      v45 = &v36[v44];
      if (!v39)
      {
LABEL_47:
        v68 = v39;
        v47 = v37 >= v39;
        v69 = v37 - v39;
        if (!v47)
        {
          goto LABEL_147;
        }

        v70 = &v45[v68];
        if (!v41)
        {
          v76 = 0;
          goto LABEL_120;
        }

        v71 = *(v41 + 8);
        v72 = *(v41 + 4);
        if ((*(v41 + 16) & 4) != 0)
        {
          if (v72)
          {
            if (v72 == 1)
            {
              *v70 = v71->i8[0];
            }

            else
            {
              memcpy(v70, v71, v72);
            }
          }
        }

        else
        {
          v73 = &v70[v72];
          if (v72 < 0x10)
          {
            v74 = v70;
          }

          else
          {
            v74 = v70;
            do
            {
              v75 = vld2q_s8(v71->i8);
              v71 += 2;
              *v74++ = v75;
            }

            while (v74 != &v70[v72 & 0xFFFFFFF0]);
          }

          if (v74 != v73)
          {
            v101 = &v36[v72 + v44 + v68];
            v102 = v101 - v74;
            if (v101 - v74 < 4 || (v74 < (v71 + 2 * v102) ? (v103 = v71 >= v101) : (v103 = 1), !v103))
            {
              v105 = v74;
              v106 = v71;
              goto LABEL_100;
            }

            if (v102 >= 0x20)
            {
              v104 = v102 & 0xFFFFFFFFFFFFFFE0;
              v138 = v71 + 2;
              v139 = (v74 + 1);
              v140 = v102 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v142 = v138[-2];
                v141 = v138[-1];
                v144 = *v138;
                v143 = v138[1];
                v138 += 4;
                v139[-1] = vuzp1q_s8(v142, v141);
                *v139 = vuzp1q_s8(v144, v143);
                v139 += 2;
                v140 -= 32;
              }

              while (v140);
              if (v102 == v104)
              {
                goto LABEL_119;
              }

              if ((v102 & 0x1C) == 0)
              {
                v106 = (v71 + 2 * v104);
                v105 = (v74 + v104);
                do
                {
LABEL_100:
                  v107 = v106->i8[0];
                  v106 = (v106 + 2);
                  *v105 = v107;
                  v105 = (v105 + 1);
                }

                while (v105 != v73);
                goto LABEL_119;
              }
            }

            else
            {
              v104 = 0;
            }

            v105 = (v74 + (v102 & 0xFFFFFFFFFFFFFFFCLL));
            v106 = (v71 + 2 * (v102 & 0xFFFFFFFFFFFFFFFCLL));
            v145 = (v71 + 2 * v104);
            v146 = (v74 + v104);
            v147 = v104 - (v102 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v148 = *v145++;
              *v146++ = vuzp1_s8(v148, v148).u32[0];
              v147 += 4;
            }

            while (v147);
            if (v102 != (v102 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_100;
            }
          }
        }

LABEL_119:
        v76 = *(v41 + 4);
        if (v69 < v76)
        {
          goto LABEL_147;
        }

LABEL_120:
        if (v43)
        {
          if (v43 == 1)
          {
            v70[v76] = *v42;
          }

          else
          {

            memcpy(&v70[v76], v42, v43);
          }
        }

        return;
      }
    }

    else
    {
      v44 = 0;
      v45 = v34;
      if (!v39)
      {
        goto LABEL_47;
      }
    }

    if (v39 == 1)
    {
      *v45 = *v40;
    }

    else
    {
      memcpy(v45, v40, v39);
    }

    goto LABEL_47;
  }

  v11 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!v11)
  {
    return;
  }

  v13 = v11;
  v14 = v12;
  v15 = *a2;
  v17 = *a3;
  v16 = a3[1];
  v18 = *a4;
  v20 = *a5;
  v19 = a5[1];
  v21 = (4 * v15);
  if (!v21)
  {
    v21 = 0;
    v22 = v11;
    v23 = &v11[2 * v16];
    if (v16 >= 0x40)
    {
      goto LABEL_10;
    }

LABEL_20:
    v24 = v22;
    v33 = v14 - v21;
    if (v22 == v23)
    {
      goto LABEL_31;
    }

LABEL_21:
    v46 = &v13[2 * v16 + 2 * v21 - v24 - 2];
    if (v46 < 0xE || (v24 < v17 + (v46 >> 1) + 1 ? (v47 = v17 >= (v46 & 0xFFFFFFFFFFFFFFFELL) + v24 + 2) : (v47 = 1), !v47))
    {
      v50 = v17;
      v51 = v24;
      goto LABEL_30;
    }

    v48 = (v46 >> 1) + 1;
    if (v46 >= 0x3E)
    {
      v49 = v48 & 0xFFFFFFFFFFFFFFE0;
      v108 = (v24 + 32);
      v109 = (v17 + 16);
      v110 = v48 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v111 = *v109[-2].i8;
        v112 = vmovl_u8(*v109);
        v113 = vmovl_high_u8(*v109->i8);
        v108[-2] = vmovl_u8(*v111.i8);
        v108[-1] = vmovl_high_u8(v111);
        *v108 = v112;
        v108[1] = v113;
        v108 += 4;
        v109 += 4;
        v110 -= 32;
      }

      while (v110);
      if (v48 == v49)
      {
        goto LABEL_31;
      }

      if ((v48 & 0x18) == 0)
      {
        v51 = (v24 + 2 * v49);
        v50 = (v17 + v49);
        goto LABEL_30;
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = (v17 + (v48 & 0xFFFFFFFFFFFFFFF8));
    v51 = (v24 + 2 * (v48 & 0xFFFFFFFFFFFFFFF8));
    v114 = (v24 + 2 * v49);
    v115 = (v17 + v49);
    v116 = v49 - (v48 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v117 = *v115++;
      *v114++ = vmovl_u8(v117);
      v116 += 8;
    }

    while (v116);
    if (v48 == (v48 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_31;
    }

    do
    {
LABEL_30:
      v52 = *v50++;
      *v51 = v52;
      v51 += 2;
    }

    while (v51 != v23);
    goto LABEL_31;
  }

  memset_pattern16(v11, aIneStateTLTAne, 2 * (4 * v15));
  if (v14 < v21)
  {
LABEL_147:
    __break(1u);
    return;
  }

  v22 = &v13[2 * v21];
  v23 = &v22[2 * v16];
  if (v16 < 0x40)
  {
    goto LABEL_20;
  }

LABEL_10:
  v24 = &v22[2 * (v16 & 0x7FFFFFFFFFFFFFC0)];
  v25 = 0uLL;
  v26 = v22;
  do
  {
    v150.val[0] = *v17;
    v27 = *(v17 + 16);
    v153.val[0] = *(v17 + 32);
    v28 = *(v17 + 48);
    v17 += 64;
    v29 = v28;
    v153.val[1] = 0uLL;
    v156.val[0] = v27;
    v150.val[1] = 0uLL;
    v30 = v26;
    vst2q_s8(v30, v150);
    v30 += 32;
    v156.val[1] = 0uLL;
    vst2q_s8(v30, v156);
    v31 = v26 + 64;
    vst2q_s8(v31, v153);
    v32 = v26 + 96;
    vst2q_s8(v32, *(&v25 - 1));
    v26 += 128;
  }

  while (v26 != v24);
  v33 = v14 - v21;
  if (v24 != v23)
  {
    goto LABEL_21;
  }

LABEL_31:
  v53 = v33 - v16;
  if (v33 < v16)
  {
    goto LABEL_147;
  }

  v54 = &v22[2 * v16];
  if (!v18)
  {
    v57 = 0;
    goto LABEL_73;
  }

  v55 = *(v18 + 8);
  v56 = *(v18 + 4);
  if ((*(v18 + 16) & 4) != 0)
  {
    v58 = &v54[2 * v56];
    if (v56 < 0x40)
    {
      v59 = v54;
      if (v54 == v58)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v59 = &v54[2 * (v56 & 0xFFFFFFC0)];
      v60 = 0uLL;
      v61 = v54;
      do
      {
        v151.val[0] = *v55;
        v62 = v55[1];
        v154.val[0] = v55[2];
        v63 = v55[3];
        v55 += 4;
        v64 = v63;
        v154.val[1] = 0uLL;
        v157.val[0] = v62;
        v151.val[1] = 0uLL;
        v65 = v61;
        vst2q_s8(v65, v151);
        v65 += 32;
        v157.val[1] = 0uLL;
        vst2q_s8(v65, v157);
        v66 = v61 + 64;
        vst2q_s8(v66, v154);
        v67 = v61 + 96;
        vst2q_s8(v67, *(&v60 - 1));
        v61 += 128;
      }

      while (v61 != v59);
      if (v59 == v58)
      {
        goto LABEL_72;
      }
    }

    v77 = &v13[2 * v56 + 2 * v21 + 2 * v16 - v59 - 2];
    if (v77 < 0xE || (v59 < v55->u64 + (v77 >> 1) + 1 ? (v78 = v55 >= (v77 & 0xFFFFFFFFFFFFFFFELL) + v59 + 2) : (v78 = 1), !v78))
    {
      v81 = v55;
      v82 = v59;
      goto LABEL_69;
    }

    v79 = (v77 >> 1) + 1;
    if (v77 >= 0x3E)
    {
      v80 = v79 & 0xFFFFFFFFFFFFFFE0;
      v128 = (v59 + 32);
      v129 = &v55[1];
      v130 = v79 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v131 = *v129[-2].i8;
        v132 = vmovl_u8(*v129);
        v133 = vmovl_high_u8(*v129->i8);
        v128[-2] = vmovl_u8(*v131.i8);
        v128[-1] = vmovl_high_u8(v131);
        *v128 = v132;
        v128[1] = v133;
        v128 += 4;
        v129 += 4;
        v130 -= 32;
      }

      while (v130);
      if (v79 == v80)
      {
        goto LABEL_72;
      }

      if ((v79 & 0x18) == 0)
      {
        v82 = (v59 + 2 * v80);
        v81 = (v55 + v80);
        goto LABEL_69;
      }
    }

    else
    {
      v80 = 0;
    }

    v81 = (v55 + (v79 & 0xFFFFFFFFFFFFFFF8));
    v82 = (v59 + 2 * (v79 & 0xFFFFFFFFFFFFFFF8));
    v134 = (v59 + 2 * v80);
    v135 = &v55->i8[v80];
    v136 = v80 - (v79 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v137 = *v135++;
      *v134++ = vmovl_u8(v137);
      v136 += 8;
    }

    while (v136);
    if (v79 == (v79 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_72;
    }

    do
    {
LABEL_69:
      v83 = v81->u8[0];
      v81 = (v81 + 1);
      *v82 = v83;
      v82 += 2;
    }

    while (v82 != v58);
    goto LABEL_72;
  }

  if (v56)
  {
    if (v56 == 1)
    {
      *v54 = v55->i16[0];
    }

    else
    {
      memcpy(v54, v55, 2 * v56);
    }
  }

LABEL_72:
  v57 = *(v18 + 4);
  if (v53 < v57)
  {
    goto LABEL_147;
  }

LABEL_73:
  v84 = &v54[2 * v57];
  v85 = (v84 + 2 * v19);
  if (v19 >= 0x40)
  {
    v86 = v84 + 2 * (v19 & 0x7FFFFFFFFFFFFFC0);
    v87 = 0uLL;
    do
    {
      v152.val[0] = *v20;
      v88 = *(v20 + 16);
      v155.val[0] = *(v20 + 32);
      v89 = *(v20 + 48);
      v20 += 64;
      v90 = v89;
      v155.val[1] = 0uLL;
      v158.val[0] = v88;
      v152.val[1] = 0uLL;
      v91 = v84;
      vst2q_s8(v91, v152);
      v91 += 32;
      v158.val[1] = 0uLL;
      vst2q_s8(v91, v158);
      v92 = (v84 + 64);
      vst2q_s8(v92, v155);
      v93 = (v84 + 96);
      vst2q_s8(v93, *(&v87 - 1));
      v84 += 128;
    }

    while (v84 != v86);
    v84 = v86;
  }

  if (v84 != v85)
  {
    v94 = &v13[2 * v57 + 2 * v19 + 2 * v21 + 2 * v16 - v84 - 2];
    if (v94 < 0xE || (v84 < v20 + (v94 >> 1) + 1 ? (v95 = v20 >= (v94 & 0xFFFFFFFFFFFFFFFELL) + v84 + 2) : (v95 = 1), !v95))
    {
      v98 = v20;
      v99 = v84;
      goto LABEL_87;
    }

    v96 = (v94 >> 1) + 1;
    if (v94 >= 0x3E)
    {
      v97 = v96 & 0xFFFFFFFFFFFFFFE0;
      v118 = (v84 + 32);
      v119 = (v20 + 16);
      v120 = v96 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v121 = *v119[-2].i8;
        v122 = vmovl_u8(*v119);
        v123 = vmovl_high_u8(*v119->i8);
        v118[-2] = vmovl_u8(*v121.i8);
        v118[-1] = vmovl_high_u8(v121);
        *v118 = v122;
        v118[1] = v123;
        v118 += 4;
        v119 += 4;
        v120 -= 32;
      }

      while (v120);
      if (v96 == v97)
      {
        return;
      }

      if ((v96 & 0x18) == 0)
      {
        v99 = (v84 + 2 * v97);
        v98 = (v20 + v97);
        do
        {
LABEL_87:
          v100 = *v98++;
          *v99++ = v100;
        }

        while (v99 != v85);
        return;
      }
    }

    else
    {
      v97 = 0;
    }

    v98 = (v20 + (v96 & 0xFFFFFFFFFFFFFFF8));
    v99 = (v84 + 2 * (v96 & 0xFFFFFFFFFFFFFFF8));
    v124 = (v84 + 2 * v97);
    v125 = (v20 + v97);
    v126 = v97 - (v96 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v127 = *v125++;
      *v124++ = vmovl_u8(v127);
      v126 += 8;
    }

    while (v126);
    if (v96 != (v96 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_87;
    }
  }
}

_BYTE *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(_BYTE *result, unint64_t a2, _BYTE *__src, size_t __n, unint64_t a5, _BYTE *a6, size_t a7)
{
  v53 = *MEMORY[0x277D85DE8];
  if (__n)
  {
    if (__n == 1)
    {
      *result = *__src;
    }

    else
    {
      v7 = result;
      v8 = a2;
      v9 = a7;
      v10 = a6;
      v11 = a5;
      v12 = __n;
      memcpy(result, __src, __n);
      LODWORD(__n) = v12;
      result = v7;
      a2 = v8;
      a5 = v11;
      a6 = v10;
      a7 = v9;
    }
  }

  v13 = a2 - __n;
  if (a2 < __n)
  {
    goto LABEL_58;
  }

  v14 = &result[__n];
  if ((a5 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v16 = 25;
    v17 = 1;
    v18 = a5;
    do
    {
      if (v17 == 26)
      {
        goto LABEL_58;
      }

      v19 = v15;
      v52[--v16] = (v18 % 0xA) | 0x30;
      ++v17;
      ++v15;
      v20 = v18 > 9;
      v18 /= 0xAuLL;
    }

    while (v20);
    if (v19 >= v13)
    {
      v21 = a2 - __n;
    }

    else
    {
      v21 = v19;
    }

    if (v21 >= 8)
    {
      v38 = v21 + 1;
      v39 = v38 & 7;
      if ((v38 & 7) == 0)
      {
        v39 = 8;
      }

      v22 = v38 - v39;
      if (v19 >= v13)
      {
        v40 = a2 - __n;
      }

      else
      {
        v40 = v19;
      }

      v41 = ~v40 + v39;
      v42 = v52;
      v43 = &result[__n];
      do
      {
        *v43++ = *&v42[v16];
        v42 += 8;
        v41 += 8;
      }

      while (v41);
    }

    else
    {
      v22 = 0;
    }

    v44 = v22 - v19;
    v45 = v44 - 1;
    v46 = v22 + __n;
    v47 = &result[v46];
    v48 = v46 - a2;
    while (v48)
    {
      *v47++ = *(&v53 + v45++);
      ++v44;
      ++v48;
      if (v44 == 1)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_58;
  }

  v23 = 0;
  v24 = -a5;
  do
  {
    if (v23 == -25)
    {
      goto LABEL_58;
    }

    v52[v23-- + 24] = (v24 % 0xA) | 0x30;
    v20 = v24 > 9;
    v24 /= 0xAuLL;
  }

  while (v20);
  if ((v23 + 24) >= 0x19)
  {
    goto LABEL_58;
  }

  v25 = 0;
  v52[v23 + 24] = 45;
  if (-v23 < v13)
  {
    v26 = -v23;
  }

  else
  {
    v26 = a2 - __n;
  }

  if (v26 >= 8)
  {
    v27 = &v52[v23 + 24];
    v28 = (v26 + 1) & 7;
    if (!v28)
    {
      v28 = 8;
    }

    v25 = v26 + 1 - v28;
    if (-v23 >= v13)
    {
      v29 = a2 - __n;
    }

    else
    {
      v29 = -v23;
    }

    v30 = ~v29 + v28;
    v31 = &result[__n];
    do
    {
      v32 = *v27++;
      *v31++ = v32;
      v30 += 8;
    }

    while (v30);
  }

  v33 = v25 + v23;
  v34 = v25 + __n;
  v35 = &result[v34];
  v36 = v33 + 1;
  v37 = v34 - a2;
  do
  {
    if (!v37)
    {
      goto LABEL_58;
    }

    *v35++ = v52[v33++ + 24];
    ++v36;
    ++v37;
  }

  while (v36 != 2);
LABEL_44:
  if ((a5 & 0x8000000000000000) != 0)
  {
    v50 = -a5;
    v49 = 1;
    do
    {
      ++v49;
      v51 = v50 >= 0xA;
      v50 /= 0xAuLL;
    }

    while (v51);
  }

  else
  {
    v49 = 0;
    do
    {
      ++v49;
      v20 = a5 > 9;
      a5 /= 0xAuLL;
    }

    while (v20);
  }

  if (v13 < v49)
  {
LABEL_58:
    __break(1u);
  }

  if (a7)
  {
    if (a7 == 1)
    {
      v14[v49] = *a6;
    }

    else
    {

      return memcpy(&v14[v49], a6, a7);
    }
  }

  return result;
}

uint16x8_t WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(uint16x8_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v58 = *MEMORY[0x277D85DE8];
  if ((a3 & 0x8000000000000000) != 0)
  {
    v8 = 0;
    v5 = -a3;
    while (v8 != -25)
    {
      v6 = v5 / 0xA;
      v57[v8-- + 24] = (v5 % 0xA) | 0x30;
      v11 = v5 > 9;
      v5 /= 0xAuLL;
      if (!v11)
      {
        if ((v8 + 24) < 0x19)
        {
          v14 = 0;
          v6 = 45;
          v57[v8 + 24] = 45;
          if (a2 >= -v8)
          {
            v15 = -v8;
          }

          else
          {
            v15 = a2;
          }

          if (v15 >= 8)
          {
            v6 = -v8;
            v16 = &v57[v8 + 24];
            v17 = (v15 + 1) & 7;
            if (!v17)
            {
              v17 = 8;
            }

            v14 = v15 + 1 - v17;
            if (a2 >= v6)
            {
              v18 = -v8;
            }

            else
            {
              v18 = a2;
            }

            v19 = v18 - v17 + 1;
            v20 = a1;
            do
            {
              v21 = *v16++;
              result = vmovl_u8(v21);
              *v20++ = result;
              v19 -= 8;
            }

            while (v19);
          }

          v8 += v14;
          v23 = &a1->i16[v14];
          v24 = v8 + 1;
          v5 = a2 - v14;
          while (v5)
          {
            v6 = v57[v8 + 24];
            *v23++ = v6;
            ++v8;
            ++v24;
            --v5;
            if (v24 == 2)
            {
LABEL_39:
              if ((a3 & 0x8000000000000000) != 0)
              {
                v5 = -a3;
                LODWORD(v8) = 1;
                do
                {
                  v8 = (v8 + 1);
                  v41 = v5 >= 0xA;
                  v5 /= 0xAuLL;
                }

                while (v41);
              }

              else
              {
                LODWORD(v8) = 0;
                v5 = 0xCCCCCCCCCCCCCCCDLL;
                do
                {
                  v8 = (v8 + 1);
                  v11 = a3 > 9;
                  a3 /= 0xAuLL;
                }

                while (v11);
              }

              v32 = v8;
              if (a2 < v8)
              {
                goto LABEL_70;
              }

              v5 = a1 + 2 * v8;
              v8 = v5 + 2 * a5;
              if (a5 >= 0x40)
              {
                v33 = v5 + 2 * (a5 & 0x7FFFFFFFFFFFFFC0);
                v34 = 0uLL;
                do
                {
                  v59.val[0] = *a4;
                  v35 = *(a4 + 16);
                  v60.val[0] = *(a4 + 32);
                  v36 = *(a4 + 48);
                  a4 += 64;
                  result = v36;
                  v60.val[1] = 0uLL;
                  v61.val[0] = v35;
                  v59.val[1] = 0uLL;
                  v37 = v5;
                  vst2q_s8(v37, v59);
                  v37 += 32;
                  v61.val[1] = 0uLL;
                  vst2q_s8(v37, v61);
                  v38 = (v5 + 64);
                  vst2q_s8(v38, v60);
                  v39 = (v5 + 96);
                  vst2q_s8(v39, *result.i8);
                  v5 += 128;
                }

                while (v5 != v33);
                v5 = v33;
              }

              if (v5 != v8)
              {
                v40 = a1->u64 + 2 * a5 + 2 * v32 - v5 - 2;
                if (v40 < 0xE || (v5 < a4 + (v40 >> 1) + 1 ? (v41 = a4 >= (v40 & 0xFFFFFFFFFFFFFFFELL) + v5 + 2) : (v41 = 1), !v41))
                {
                  v43 = a4;
                  v44 = v5;
                  goto LABEL_60;
                }

                v42 = (v40 >> 1) + 1;
                if (v40 >= 0x3E)
                {
                  v6 = v42 & 0xFFFFFFFFFFFFFFE0;
                  v46 = (v5 + 32);
                  v47 = (a4 + 16);
                  v48 = v42 & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v49 = *v47[-2].i8;
                    v50 = vmovl_u8(*v49.i8);
                    result = vmovl_high_u8(v49);
                    v51 = vmovl_u8(*v47);
                    v52 = vmovl_high_u8(*v47->i8);
                    v46[-2] = v50;
                    v46[-1] = result;
                    *v46 = v51;
                    v46[1] = v52;
                    v46 += 4;
                    v47 += 4;
                    v48 -= 32;
                  }

                  while (v48);
                  if (v42 == v6)
                  {
                    return result;
                  }

                  if ((v42 & 0x18) == 0)
                  {
                    goto LABEL_71;
                  }
                }

                else
                {
                  v6 = 0;
                }

                v43 = (a4 + (v42 & 0xFFFFFFFFFFFFFFF8));
                v44 = (v5 + 2 * (v42 & 0xFFFFFFFFFFFFFFF8));
                v53 = (v5 + 2 * v6);
                v54 = (a4 + v6);
                v55 = v6 - (v42 & 0xFFFFFFFFFFFFFFF8);
                do
                {
                  v56 = *v54++;
                  result = vmovl_u8(v56);
                  *v53++ = result;
                  v55 += 8;
                }

                while (v55);
                if (v42 != (v42 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_60;
                }
              }

              return result;
            }
          }
        }

        break;
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = 25;
    v9 = 1;
    v6 = v57;
    v10 = a3;
    while (v9 != 26)
    {
      v5 = v7;
      v57[--v8] = (v10 % 0xA) | 0x30;
      ++v9;
      ++v7;
      v11 = v10 > 9;
      v10 /= 0xAuLL;
      if (!v11)
      {
        if (a2 >= v5)
        {
          v12 = v5;
        }

        else
        {
          v12 = a2;
        }

        if (v12 >= 8)
        {
          v25 = v12 + 1;
          v26 = v25 & 7;
          if ((v25 & 7) == 0)
          {
            v26 = 8;
          }

          v13 = v25 - v26;
          if (a2 >= v5)
          {
            v27 = v5;
          }

          else
          {
            v27 = a2;
          }

          v28 = v27 - v26 + 1;
          v29 = v57;
          v6 = a1;
          do
          {
            result = vmovl_u8(*&v29[v8]);
            *v6 = result;
            v6 += 16;
            v29 += 8;
            v28 -= 8;
          }

          while (v28);
        }

        else
        {
          v13 = 0;
        }

        v8 = v13 - v5;
        v5 = v13 - v5 - 1;
        v30 = &a1->i16[v13];
        v31 = a2 - v13;
        while (v31)
        {
          v6 = v57[v5 + 25];
          *v30++ = v6;
          ++v5;
          ++v8;
          --v31;
          if (v8 == 1)
          {
            goto LABEL_39;
          }
        }

        break;
      }
    }
  }

LABEL_70:
  __break(1u);
LABEL_71:
  v44 = (v5 + 2 * v6);
  v43 = (a4 + v6);
  do
  {
LABEL_60:
    v45 = *v43++;
    *v44++ = v45;
  }

  while (v44 != v8);
  return result;
}

_BYTE *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>(WTF::StringBuilder *a1, _BYTE *a2, uint64_t *a3)
{
  v5 = *a3;
  if (*a3)
  {
    v6 = *(a1 + 1);
    if (!v6)
    {
LABEL_5:
      v6 = *a1;
      if (!*a1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v6 = *(a1 + 1);
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  if ((*(v6 + 16) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!v5 || (*(v5 + 16) & 4) != 0)
  {
    result = MEMORY[0x22AA68210]();
    if (!result)
    {
      return result;
    }

    if (!v13)
    {
LABEL_77:
      __break(1u);
      return result;
    }

    v14 = result;
    v15 = *a3;
    *result++ = *a2;
    if (!v15)
    {
      return result;
    }

    v11 = *(v15 + 8);
    v16 = *(v15 + 4);
    if ((*(v15 + 16) & 4) != 0)
    {
      if (!v16)
      {
        return result;
      }

      if (v16 == 1)
      {
        *result = *v11;
        return result;
      }

      goto LABEL_53;
    }

    v17 = &result[v16];
    if (v16 >= 0x10)
    {
      v18 = &result[v16 & 0xFFFFFFF0];
      do
      {
        v19 = vld2q_s8(v11);
        v11 += 32;
        *result = v19;
        result += 16;
      }

      while (result != v18);
    }

    if (result == v17)
    {
      return result;
    }

    v20 = &v14[v16];
    v21 = &v14[v16] - result;
    v22 = v21 + 1;
    if (v21 + 1 < 4 || ((v23 = (v20 + 1), result < v11 + 2 * v21 + 2) ? (v24 = v11 >= v23) : (v24 = 1), !v24))
    {
      v42 = result;
      v43 = v11;
      goto LABEL_57;
    }

    if (v22 >= 0x20)
    {
      v25 = v22 & 0xFFFFFFFFFFFFFFE0;
      v55 = (v11 + 32);
      v56 = (result + 16);
      v57 = v22 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v59 = v55[-2];
        v58 = v55[-1];
        v61 = *v55;
        v60 = v55[1];
        v55 += 4;
        v56[-1] = vuzp1q_s8(v59, v58);
        *v56 = vuzp1q_s8(v61, v60);
        v56 += 2;
        v57 -= 32;
      }

      while (v57);
      if (v22 == v25)
      {
        return result;
      }

      if ((v22 & 0x1C) == 0)
      {
        v43 = (v11 + 2 * v25);
        v42 = &result[v25];
        goto LABEL_57;
      }
    }

    else
    {
      v25 = 0;
    }

    v42 = &result[v22 & 0xFFFFFFFFFFFFFFFCLL];
    v43 = (v11 + 2 * (v22 & 0xFFFFFFFFFFFFFFFCLL));
    v62 = (v11 + 2 * v25);
    v63 = &result[v25];
    v64 = v25 - (v22 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v65 = *v62++;
      *v63++ = vuzp1_s8(v65, v65).u32[0];
      v64 += 4;
    }

    while (v64);
    if (v22 == (v22 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

    do
    {
LABEL_57:
      v44 = *v43;
      v43 += 2;
      *v42++ = v44;
    }

    while (v42 != v17);
    return result;
  }

LABEL_9:
  result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!result)
  {
    return result;
  }

  if (!v8)
  {
    goto LABEL_77;
  }

  v9 = result;
  v10 = *a3;
  *result = *a2;
  result += 2;
  if (!v10)
  {
    return result;
  }

  v11 = *(v10 + 8);
  v12 = *(v10 + 4);
  if ((*(v10 + 16) & 4) == 0)
  {
    if (!v12)
    {
      return result;
    }

    if (v12 == 1)
    {
      *result = *v11;
      return result;
    }

    v16 = 2 * v12;
LABEL_53:

    return memcpy(result, v11, v16);
  }

  v26 = &result[2 * v12];
  if (v12 >= 0x40)
  {
    v27 = &result[2 * (v12 & 0xFFFFFFC0)];
    v28 = 0uLL;
    do
    {
      v67.val[0] = *v11;
      v29 = *(v11 + 16);
      v68.val[0] = *(v11 + 32);
      v30 = *(v11 + 48);
      v11 += 64;
      v31 = v30;
      v68.val[1] = 0uLL;
      v69.val[0] = v29;
      v67.val[1] = 0uLL;
      v32 = result;
      vst2q_s8(v32, v67);
      v32 += 32;
      v69.val[1] = 0uLL;
      vst2q_s8(v32, v69);
      v33 = result + 64;
      vst2q_s8(v33, v68);
      v34 = result + 96;
      vst2q_s8(v34, *(&v28 - 1));
      result += 128;
    }

    while (result != v27);
    result = v27;
  }

  if (result != v26)
  {
    v35 = &v9[2 * v12] - result;
    if (v35 < 0xE || (result < v11 + (v35 >> 1) + 1 ? (v36 = v11 >= &result[(v35 & 0xFFFFFFFFFFFFFFFELL) + 2]) : (v36 = 1), !v36))
    {
      v39 = v11;
      v40 = result;
      goto LABEL_50;
    }

    v37 = (v35 >> 1) + 1;
    if (v35 >= 0x3E)
    {
      v38 = v37 & 0xFFFFFFFFFFFFFFE0;
      v45 = (result + 32);
      v46 = (v11 + 16);
      v47 = v37 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v48 = *v46[-2].i8;
        v49 = vmovl_u8(*v46);
        v50 = vmovl_high_u8(*v46->i8);
        v45[-2] = vmovl_u8(*v48.i8);
        v45[-1] = vmovl_high_u8(v48);
        *v45 = v49;
        v45[1] = v50;
        v45 += 4;
        v46 += 4;
        v47 -= 32;
      }

      while (v47);
      if (v37 == v38)
      {
        return result;
      }

      if ((v37 & 0x18) == 0)
      {
        v40 = &result[2 * v38];
        v39 = (v11 + v38);
        goto LABEL_50;
      }
    }

    else
    {
      v38 = 0;
    }

    v39 = (v11 + (v37 & 0xFFFFFFFFFFFFFFF8));
    v40 = &result[2 * (v37 & 0xFFFFFFFFFFFFFFF8)];
    v51 = &result[2 * v38];
    v52 = (v11 + v38);
    v53 = v38 - (v37 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v54 = *v52++;
      *v51++ = vmovl_u8(v54);
      v53 += 8;
    }

    while (v53);
    if (v37 == (v37 & 0xFFFFFFFFFFFFFFF8))
    {
      return result;
    }

    do
    {
LABEL_50:
      v41 = *v39++;
      *v40++ = v41;
    }

    while (v40 != v26);
  }

  return result;
}

void WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, unint64_t a2, unsigned int *a3, size_t a4, unsigned int *a5, unsigned int **a6, unint64_t *a7)
{
  v14 = *a6;
  v15 = *(a1 + 1);
  if ((!v15 && (v15 = *a1) == 0 || (*(v15 + 16) & 4) != 0) && (!v14 || (v14[4] & 4) != 0))
  {
    v37 = MEMORY[0x22AA68210]();
    if (!v37)
    {
      return;
    }

    if (!v17)
    {
      goto LABEL_152;
    }

    v38 = v37;
    v39 = *a4;
    a4 = *(a4 + 8);
    v40 = *a5;
    a5 = *a6;
    v7 = *a7;
    a7 = a7[1];
    v18 = *a3;
    v19 = *a2;
    *v37 = v19;
    a2 = (v37 + 1);
    v41 = &v17[-1].u64[1] + 7;
    v42 = (4 * v18);
    if (v42)
    {
      memset(v37 + 1, 32, (4 * v18));
      if (v41 < v42)
      {
        goto LABEL_152;
      }

      v41 -= v42;
      a2 += v42;
      if (!a4)
      {
LABEL_48:
        v59 = a4;
        v66 = v41 >= a4;
        a4 = v41 - a4;
        if (!v66)
        {
          do
          {
LABEL_152:
            __break(1u);
LABEL_153:
            v92 = (v17 + 2 * v20);
            v91 = (v19 + v20);
            do
            {
LABEL_106:
              v93 = v92->u8[0];
              v92 = (v92 + 2);
              v19 = v93;
              *v91++ = v93;
            }

            while (v91 != v18);
LABEL_125:
            v18 = a5[1];
          }

          while (a4 < v18);
          goto LABEL_126;
        }

        a2 += v59;
        v60 = (4 * v40);
        if (v60)
        {
          memset(a2, 32, (4 * v40));
          if (a4 < v60)
          {
            goto LABEL_152;
          }

          a2 += v60;
          if (a5)
          {
LABEL_53:
            a4 -= v60;
            v17 = *(a5 + 1);
            v61 = a5[1];
            if ((a5[4] & 4) != 0)
            {
              if (v61)
              {
                if (v61 == 1)
                {
                  *a2 = v17->i8[0];
                }

                else
                {
                  memcpy(a2, v17, v61);
                }
              }
            }

            else
            {
              v18 = a2 + v61;
              if (v61 < 0x10)
              {
                v19 = a2;
              }

              else
              {
                v19 = a2;
                do
                {
                  v62 = vld2q_s8(v17->i8);
                  v17 += 2;
                  *v19 = v62;
                  v19 += 16;
                }

                while (v19 != a2 + (v61 & 0xFFFFFFF0));
              }

              if (v19 != v18)
              {
                v88 = &v38[v61 + v42 + v60 + v59 - v19];
                v89 = v88 + 1;
                if (v88 + 1 < 4 || ((v20 = v60 + v42, v19 < v17->u64 + 2 * v88 + 2) ? (v90 = v17 >= &v38[v61 + 1 + v60 + v42 + v59]) : (v90 = 1), !v90))
                {
                  v91 = v19;
                  v92 = v17;
                  goto LABEL_106;
                }

                if (v89 >= 0x20)
                {
                  v20 = v89 & 0xFFFFFFFFFFFFFFE0;
                  v121 = v17 + 2;
                  v122 = (v19 + 16);
                  v123 = v89 & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v125 = v121[-2];
                    v124 = v121[-1];
                    v127 = *v121;
                    v126 = v121[1];
                    v121 += 4;
                    v122[-1] = vuzp1q_s8(v125, v124);
                    *v122 = vuzp1q_s8(v127, v126);
                    v122 += 2;
                    v123 -= 32;
                  }

                  while (v123);
                  if (v89 == v20)
                  {
                    goto LABEL_125;
                  }

                  if ((v89 & 0x1C) == 0)
                  {
                    goto LABEL_153;
                  }
                }

                else
                {
                  v20 = 0;
                }

                v91 = (v19 + (v89 & 0xFFFFFFFFFFFFFFFCLL));
                v92 = (v17 + 2 * (v89 & 0xFFFFFFFFFFFFFFFCLL));
                v128 = (v17 + 2 * v20);
                v19 += v20;
                v20 -= v89 & 0xFFFFFFFFFFFFFFFCLL;
                do
                {
                  v129 = *v128++;
                  *v19 = vuzp1_s8(v129, v129).u32[0];
                  v19 += 4;
                  v20 += 4;
                }

                while (v20);
                if (v89 != (v89 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_106;
                }
              }
            }

            goto LABEL_125;
          }
        }

        else
        {
          v60 = 0;
          if (a5)
          {
            goto LABEL_53;
          }
        }

        v18 = 0;
LABEL_126:
        if (a7)
        {
          if (a7 == 1)
          {
            *(a2 + v18) = *v7;
          }

          else
          {

            memcpy((a2 + v18), v7, a7);
          }
        }

        return;
      }
    }

    else
    {
      v42 = 0;
      if (!a4)
      {
        goto LABEL_48;
      }
    }

    if (a4 == 1)
    {
      v18 = *v39;
      *a2 = v18;
    }

    else
    {
      memcpy(a2, v39, a4);
    }

    goto LABEL_48;
  }

  v16 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!v16)
  {
    return;
  }

  if (!v17)
  {
    goto LABEL_152;
  }

  v7 = v16;
  v22 = *a4;
  v21 = *(a4 + 8);
  a4 = *a5;
  a5 = *a6;
  v23 = *a7;
  v24 = a7[1];
  v25 = *a3;
  *v16 = *a2;
  a7 = (v16 + 1);
  v26 = &v17[-1].i8[15];
  a2 = (4 * v25);
  if (!a2)
  {
    a2 = 0;
    v18 = (v16 + 1);
    v19 = a7 + 2 * v21;
    if (v21 >= 0x40)
    {
      goto LABEL_11;
    }

LABEL_22:
    v27 = v18;
    v36 = &v26[-a2];
    if (v18 == v19)
    {
      goto LABEL_28;
    }

LABEL_23:
    v43 = &v7[2 * v21 + 2 * a2 - v27];
    if (v43 < 0xE || v27 < v22 + (v43 >> 1) + 1 && v22 < (v43 & 0xFFFFFFFFFFFFFFFELL) + v27 + 2)
    {
      v20 = v22;
      v44 = v27;
      goto LABEL_27;
    }

    v63 = (v43 >> 1) + 1;
    if (v43 >= 0x3E)
    {
      v64 = v63 & 0xFFFFFFFFFFFFFFE0;
      v20 = v27 + 32;
      v94 = (v22 + 16);
      v95 = v63 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v96 = *v94[-2].i8;
        v97 = vmovl_u8(*v94);
        v98 = vmovl_high_u8(*v94->i8);
        *(v20 - 32) = vmovl_u8(*v96.i8);
        *(v20 - 16) = vmovl_high_u8(v96);
        *v20 = v97;
        *(v20 + 16) = v98;
        v20 += 64;
        v94 += 4;
        v95 -= 32;
      }

      while (v95);
      if (v63 == v64)
      {
        goto LABEL_28;
      }

      if ((v63 & 0x18) == 0)
      {
        v44 = (v27 + 2 * v64);
        v20 = v22 + v64;
        goto LABEL_27;
      }
    }

    else
    {
      v64 = 0;
    }

    v20 = v22 + (v63 & 0xFFFFFFFFFFFFFFF8);
    v44 = (v27 + 2 * (v63 & 0xFFFFFFFFFFFFFFF8));
    v99 = (v27 + 2 * v64);
    v100 = (v22 + v64);
    v101 = v64 - (v63 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v102 = *v100++;
      *v99++ = vmovl_u8(v102);
      v101 += 8;
    }

    while (v101);
    if (v63 == (v63 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_28;
    }

    do
    {
LABEL_27:
      v45 = *v20++;
      *v44++ = v45;
    }

    while (v44 != v19);
    goto LABEL_28;
  }

  memset_pattern16(v16 + 1, aIneStateTLTAne, 2 * (4 * v25));
  if (v26 < a2)
  {
    goto LABEL_152;
  }

  v18 = a7 + 2 * a2;
  v19 = v18 + 2 * v21;
  if (v21 < 0x40)
  {
    goto LABEL_22;
  }

LABEL_11:
  v27 = v18 + 2 * (v21 & 0x7FFFFFFFFFFFFFC0);
  v28 = 0uLL;
  v29 = v18;
  do
  {
    v131.val[0] = *v22;
    v30 = *(v22 + 16);
    v134.val[0] = *(v22 + 32);
    v31 = *(v22 + 48);
    v22 += 64;
    v32 = v31;
    v134.val[1] = 0uLL;
    v137.val[0] = v30;
    v131.val[1] = 0uLL;
    v33 = v29;
    vst2q_s8(v33, v131);
    v33 += 32;
    v137.val[1] = 0uLL;
    vst2q_s8(v33, v137);
    v34 = v29 + 64;
    vst2q_s8(v34, v134);
    v35 = v29 + 96;
    vst2q_s8(v35, *(&v28 - 1));
    v29 += 128;
  }

  while (v29 != v27);
  v36 = &v26[-a2];
  if (v27 != v19)
  {
    goto LABEL_23;
  }

LABEL_28:
  v46 = v21;
  v66 = v36 >= v21;
  v47 = v36 - v21;
  if (!v66)
  {
    goto LABEL_152;
  }

  a4 = (4 * a4);
  a7 = (v18 + 2 * v46);
  if (!a4)
  {
    a4 = 0;
    if (a5)
    {
      goto LABEL_33;
    }

LABEL_38:
    v50 = 0;
    goto LABEL_79;
  }

  memset_pattern16((v18 + 2 * v46), aIneStateTLTAne, 2 * a4);
  if (v47 < a4)
  {
    goto LABEL_152;
  }

  a7 = (a7 + 2 * a4);
  if (!a5)
  {
    goto LABEL_38;
  }

LABEL_33:
  v48 = v47 - a4;
  v17 = *(a5 + 1);
  v49 = a5[1];
  v18 = *(a5 + 16);
  if ((v18 & 4) != 0)
  {
    v18 = a7 + 2 * v49;
    if (v49 < 0x40)
    {
      v19 = a7;
      if (a7 == v18)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v19 = a7 + 2 * (v49 & 0xFFFFFFC0);
      v51 = 0uLL;
      v52 = a7;
      do
      {
        v132.val[0] = *v17;
        v53 = v17[1];
        v135.val[0] = v17[2];
        v54 = v17[3];
        v17 += 4;
        v55 = v54;
        v135.val[1] = 0uLL;
        v138.val[0] = v53;
        v132.val[1] = 0uLL;
        v56 = v52;
        vst2q_s8(v56, v132);
        v56 += 32;
        v138.val[1] = 0uLL;
        vst2q_s8(v56, v138);
        v57 = v52 + 64;
        vst2q_s8(v57, v135);
        v58 = v52 + 96;
        vst2q_s8(v58, *(&v51 - 1));
        v52 += 128;
      }

      while (v52 != v19);
      if (v19 == v18)
      {
        goto LABEL_78;
      }
    }

    v65 = &v7[2 * v49 + 2 * a2 + 2 * a4 + 2 * v46 - v19];
    if (v65 < 0xE || (v19 < v17->u64 + (v65 >> 1) + 1 ? (v66 = v17 >= (v65 & 0xFFFFFFFFFFFFFFFELL) + v19 + 2) : (v66 = 1), !v66))
    {
      v68 = v17;
      v69 = v19;
      goto LABEL_75;
    }

    v67 = (v65 >> 1) + 1;
    if (v65 >= 0x3E)
    {
      v20 = v67 & 0xFFFFFFFFFFFFFFE0;
      v113 = (v19 + 32);
      v114 = &v17[1];
      v115 = v67 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v116 = *v114[-2].i8;
        v117 = vmovl_u8(*v114);
        v118 = vmovl_high_u8(*v114->i8);
        v113[-2] = vmovl_u8(*v116.i8);
        v113[-1] = vmovl_high_u8(v116);
        *v113 = v117;
        v113[1] = v118;
        v113 += 4;
        v114 += 4;
        v115 -= 32;
      }

      while (v115);
      if (v67 == v20)
      {
        goto LABEL_78;
      }

      if ((v67 & 0x18) == 0)
      {
        v69 = (v19 + 2 * v20);
        v68 = (v17 + v20);
        goto LABEL_75;
      }
    }

    else
    {
      v20 = 0;
    }

    v68 = (v17 + (v67 & 0xFFFFFFFFFFFFFFF8));
    v69 = (v19 + 2 * (v67 & 0xFFFFFFFFFFFFFFF8));
    v19 += 2 * v20;
    v119 = &v17->i8[v20];
    v20 -= v67 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v120 = *v119++;
      *v19 = vmovl_u8(v120);
      v19 += 16;
      v20 += 8;
    }

    while (v20);
    if (v67 == (v67 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_78;
    }

    do
    {
LABEL_75:
      v70 = v68->u8[0];
      v68 = (v68 + 1);
      v19 = v70;
      *v69++ = v70;
    }

    while (v69 != v18);
    goto LABEL_78;
  }

  if (v49)
  {
    if (v49 == 1)
    {
      v18 = v17->u16[0];
      *a7 = v18;
    }

    else
    {
      memcpy(a7, v17, 2 * v49);
    }
  }

LABEL_78:
  v50 = a5[1];
  if (v48 < v50)
  {
    goto LABEL_152;
  }

LABEL_79:
  v71 = a7 + 2 * v50;
  v72 = (v71 + 2 * v24);
  if (v24 >= 0x40)
  {
    v73 = v71 + 2 * (v24 & 0x7FFFFFFFFFFFFFC0);
    v74 = 0uLL;
    do
    {
      v133.val[0] = *v23;
      v75 = *(v23 + 16);
      v136.val[0] = *(v23 + 32);
      v76 = *(v23 + 48);
      v23 += 64;
      v77 = v76;
      v136.val[1] = 0uLL;
      v139.val[0] = v75;
      v133.val[1] = 0uLL;
      v78 = v71;
      vst2q_s8(v78, v133);
      v78 += 32;
      v139.val[1] = 0uLL;
      vst2q_s8(v78, v139);
      v79 = (v71 + 64);
      vst2q_s8(v79, v136);
      v80 = (v71 + 96);
      vst2q_s8(v80, *(&v74 - 1));
      v71 += 128;
    }

    while (v71 != v73);
    v71 = v73;
  }

  if (v71 != v72)
  {
    v81 = &v7[2 * v50 + 2 * v24 + 2 * a2 + 2 * a4 + 2 * v46 - v71];
    if (v81 < 0xE || (v71 < v23 + (v81 >> 1) + 1 ? (v82 = v23 >= (v81 & 0xFFFFFFFFFFFFFFFELL) + v71 + 2) : (v82 = 1), !v82))
    {
      v85 = v23;
      v86 = v71;
      goto LABEL_93;
    }

    v83 = (v81 >> 1) + 1;
    if (v81 >= 0x3E)
    {
      v84 = v83 & 0xFFFFFFFFFFFFFFE0;
      v103 = (v71 + 32);
      v104 = (v23 + 16);
      v105 = v83 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v106 = *v104[-2].i8;
        v107 = vmovl_u8(*v104);
        v108 = vmovl_high_u8(*v104->i8);
        v103[-2] = vmovl_u8(*v106.i8);
        v103[-1] = vmovl_high_u8(v106);
        *v103 = v107;
        v103[1] = v108;
        v103 += 4;
        v104 += 4;
        v105 -= 32;
      }

      while (v105);
      if (v83 == v84)
      {
        return;
      }

      if ((v83 & 0x18) == 0)
      {
        v86 = (v71 + 2 * v84);
        v85 = (v23 + v84);
        goto LABEL_93;
      }
    }

    else
    {
      v84 = 0;
    }

    v85 = (v23 + (v83 & 0xFFFFFFFFFFFFFFF8));
    v86 = (v71 + 2 * (v83 & 0xFFFFFFFFFFFFFFF8));
    v109 = (v71 + 2 * v84);
    v110 = (v23 + v84);
    v111 = v84 - (v83 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v112 = *v110++;
      *v109++ = vmovl_u8(v112);
      v111 += 8;
    }

    while (v111);
    if (v83 == (v83 & 0xFFFFFFFFFFFFFFF8))
    {
      return;
    }

    do
    {
LABEL_93:
      v87 = *v85++;
      *v86++ = v87;
    }

    while (v86 != v72);
  }
}

void WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(WTF::StringBuilder *a1, int *a2, char *a3, char *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7, unint64_t *a8)
{
  v15 = *a5;
  v16 = *a7;
  v17 = *(a1 + 1);
  if ((v17 || (v17 = *a1) != 0) && (*(v17 + 16) & 4) == 0 || v15 && (*(v15 + 16) & 4) == 0 || v16 && (*(v16 + 16) & 4) == 0)
  {
    v18 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (!v18)
    {
      return;
    }

    v20 = v18;
    v21 = v19;
    v22 = *a2;
    v23 = *a3;
    v24 = *a4;
    v25 = *a5;
    v27 = *a6;
    v26 = a6[1];
    v28 = *a7;
    v29 = *a8;
    v49 = a8[1];
    v30 = (4 * v22);
    if (v30)
    {
      memset_pattern16(v18, aIneStateTLTAne, 2 * (4 * v22));
      if (v21 < v30)
      {
        goto LABEL_29;
      }

      v31 = v21 - v30;
      if (v21 == v30)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v30 = 0;
      v31 = v19;
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    v47 = &v20[2 * v30];
    *v47 = v23;
    if (v31 != 1)
    {
      *(v47 + 1) = v24;

      WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v47 + 4, v31 - 2, v25, v27, v26, v28, v29, v49);
      return;
    }

LABEL_29:
    __break(1u);
    return;
  }

  v32 = MEMORY[0x22AA68210]();
  if (!v32)
  {
    return;
  }

  v34 = v32;
  v35 = v33;
  v36 = *a2;
  v37 = *a3;
  v38 = *a4;
  v39 = *a5;
  v41 = *a6;
  v40 = a6[1];
  v42 = *a7;
  v43 = *a8;
  v44 = a8[1];
  v50 = v43;
  v45 = (4 * *a2);
  if (v45)
  {
    memset(v32, 32, (4 * v36));
    if (v35 < v45)
    {
      goto LABEL_29;
    }

    v46 = v35 - v45;
    if (v35 == v45)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v45 = 0;
    v46 = v33;
    if (!v33)
    {
      goto LABEL_29;
    }
  }

  v48 = &v34[v45];
  v34[v45] = v37;
  if (v46 == 1)
  {
    goto LABEL_29;
  }

  v48[1] = v38;

  WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v48 + 2), v46 - 2, v39, v41, v40, v42, v50, v44);
}

char *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(char *result, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    v10 = 0;
    goto LABEL_26;
  }

  v8 = *(a3 + 8);
  v9 = *(a3 + 4);
  if ((*(a3 + 16) & 4) != 0)
  {
    v11 = &result[2 * v9];
    if (v9 < 0x40)
    {
      v12 = result;
      if (result == v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v12 = &result[2 * (v9 & 0xFFFFFFC0)];
      v13 = 0uLL;
      v14 = result;
      do
      {
        v139.val[0] = *v8;
        v15 = *(v8 + 16);
        v143.val[0] = *(v8 + 32);
        v16 = *(v8 + 48);
        v8 += 64;
        v17 = v16;
        v143.val[1] = 0uLL;
        v147.val[0] = v15;
        v139.val[1] = 0uLL;
        v18 = v14;
        vst2q_s8(v18, v139);
        v18 += 32;
        v147.val[1] = 0uLL;
        vst2q_s8(v18, v147);
        v19 = v14 + 64;
        vst2q_s8(v19, v143);
        v20 = v14 + 96;
        vst2q_s8(v20, *(&v13 - 1));
        v14 += 128;
      }

      while (v14 != v12);
      if (v12 == v11)
      {
        goto LABEL_25;
      }
    }

    v21 = &v11[-v12 - 2];
    if (v21 < 0xE || (v12 < v8 + (v21 >> 1) + 1 ? (v22 = v8 >= (v21 & 0xFFFFFFFFFFFFFFFELL) + v12 + 2) : (v22 = 1), !v22))
    {
      v25 = v8;
      v26 = v12;
      goto LABEL_22;
    }

    v23 = (v21 >> 1) + 1;
    if (v21 >= 0x3E)
    {
      v24 = v23 & 0xFFFFFFFFFFFFFFE0;
      v119 = (v12 + 32);
      v120 = (v8 + 16);
      v121 = v23 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v122 = *v120[-2].i8;
        v123 = vmovl_u8(*v120);
        v124 = vmovl_high_u8(*v120->i8);
        v119[-2] = vmovl_u8(*v122.i8);
        v119[-1] = vmovl_high_u8(v122);
        *v119 = v123;
        v119[1] = v124;
        v119 += 4;
        v120 += 4;
        v121 -= 32;
      }

      while (v121);
      if (v23 == v24)
      {
        goto LABEL_25;
      }

      if ((v23 & 0x18) == 0)
      {
        v26 = (v12 + 2 * v24);
        v25 = (v8 + v24);
        goto LABEL_22;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = (v8 + (v23 & 0xFFFFFFFFFFFFFFF8));
    v26 = (v12 + 2 * (v23 & 0xFFFFFFFFFFFFFFF8));
    v125 = (v12 + 2 * v24);
    v126 = (v8 + v24);
    v127 = v24 - (v23 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v128 = *v126++;
      *v125++ = vmovl_u8(v128);
      v127 += 8;
    }

    while (v127);
    if (v23 == (v23 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v27 = *v25++;
      *v26 = v27;
      v26 += 2;
    }

    while (v26 != v11);
    goto LABEL_25;
  }

  if (v9)
  {
    if (v9 == 1)
    {
      *result = *v8;
    }

    else
    {
      v28 = result;
      v29 = a2;
      v30 = a3;
      v31 = a7;
      v32 = a8;
      v33 = a6;
      v34 = a5;
      v35 = a4;
      memcpy(result, *(a3 + 8), 2 * v9);
      a3 = v30;
      a2 = v29;
      a4 = v35;
      a5 = v34;
      a6 = v33;
      result = v28;
      a8 = v32;
      a7 = v31;
    }
  }

LABEL_25:
  v10 = *(a3 + 4);
  if (a2 < v10)
  {
LABEL_120:
    __break(1u);
    return result;
  }

LABEL_26:
  v36 = &result[2 * v10];
  v37 = &v36[2 * a5];
  if (a5 < 0x40)
  {
    v38 = &result[2 * v10];
    v47 = a2 - v10;
    if (v36 == v37)
    {
      goto LABEL_42;
    }

LABEL_32:
    v48 = &result[2 * a5 + 2 * v10 - v38 - 2];
    if (v48 < 0xE || (v38 < a4 + (v48 >> 1) + 1 ? (v49 = a4 >= (v48 & 0xFFFFFFFFFFFFFFFELL) + v38 + 2) : (v49 = 1), !v49))
    {
      v52 = a4;
      v53 = v38;
      goto LABEL_41;
    }

    v50 = (v48 >> 1) + 1;
    if (v48 >= 0x3E)
    {
      v51 = v50 & 0xFFFFFFFFFFFFFFE0;
      v99 = (v38 + 32);
      v100 = (a4 + 16);
      v101 = v50 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v102 = *v100[-2].i8;
        v103 = vmovl_u8(*v100);
        v104 = vmovl_high_u8(*v100->i8);
        v99[-2] = vmovl_u8(*v102.i8);
        v99[-1] = vmovl_high_u8(v102);
        *v99 = v103;
        v99[1] = v104;
        v99 += 4;
        v100 += 4;
        v101 -= 32;
      }

      while (v101);
      if (v50 == v51)
      {
        goto LABEL_42;
      }

      if ((v50 & 0x18) == 0)
      {
        v53 = (v38 + 2 * v51);
        v52 = (a4 + v51);
        goto LABEL_41;
      }
    }

    else
    {
      v51 = 0;
    }

    v52 = (a4 + (v50 & 0xFFFFFFFFFFFFFFF8));
    v53 = (v38 + 2 * (v50 & 0xFFFFFFFFFFFFFFF8));
    v105 = (v38 + 2 * v51);
    v106 = (a4 + v51);
    v107 = v51 - (v50 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v108 = *v106++;
      *v105++ = vmovl_u8(v108);
      v107 += 8;
    }

    while (v107);
    if (v50 == (v50 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_42;
    }

    do
    {
LABEL_41:
      v54 = *v52++;
      *v53 = v54;
      v53 += 2;
    }

    while (v53 != v37);
    goto LABEL_42;
  }

  v38 = &v36[2 * (a5 & 0x7FFFFFFFFFFFFFC0)];
  v39 = 0uLL;
  v40 = &result[2 * v10];
  do
  {
    v140.val[0] = *a4;
    v41 = *(a4 + 16);
    v144.val[0] = *(a4 + 32);
    v42 = *(a4 + 48);
    a4 += 64;
    v43 = v42;
    v144.val[1] = 0uLL;
    v148.val[0] = v41;
    v140.val[1] = 0uLL;
    v44 = v40;
    vst2q_s8(v44, v140);
    v44 += 32;
    v148.val[1] = 0uLL;
    vst2q_s8(v44, v148);
    v45 = v40 + 64;
    vst2q_s8(v45, v144);
    v46 = v40 + 96;
    vst2q_s8(v46, *(&v39 - 1));
    v40 += 128;
  }

  while (v40 != v38);
  v47 = a2 - v10;
  if (v38 != v37)
  {
    goto LABEL_32;
  }

LABEL_42:
  v55 = a5;
  v56 = v47 - a5;
  if (v47 < a5)
  {
    goto LABEL_120;
  }

  v57 = &v36[2 * a5];
  if (!a6)
  {
    v60 = 0;
    goto LABEL_68;
  }

  v58 = *(a6 + 8);
  v59 = *(a6 + 4);
  if ((*(a6 + 16) & 4) != 0)
  {
    v61 = &v57[2 * v59];
    if (v59 < 0x40)
    {
      v62 = &v36[2 * a5];
      if (v57 == v61)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v62 = &v57[2 * (v59 & 0xFFFFFFC0)];
      v63 = 0uLL;
      v64 = &v36[2 * a5];
      do
      {
        v141.val[0] = *v58;
        v65 = v58[1];
        v145.val[0] = v58[2];
        v66 = v58[3];
        v58 += 4;
        v67 = v66;
        v145.val[1] = 0uLL;
        v149.val[0] = v65;
        v141.val[1] = 0uLL;
        v68 = v64;
        vst2q_s8(v68, v141);
        v68 += 32;
        v149.val[1] = 0uLL;
        vst2q_s8(v68, v149);
        v69 = v64 + 64;
        vst2q_s8(v69, v145);
        v70 = v64 + 96;
        vst2q_s8(v70, *(&v63 - 1));
        v64 += 128;
      }

      while (v64 != v62);
      if (v62 == v61)
      {
        goto LABEL_67;
      }
    }

    v71 = &v36[2 * v59 + 2 * a5 - v62 - 2];
    if (v71 < 0xE || (v62 < v58->u64 + (v71 >> 1) + 1 ? (v72 = v58 >= (v71 & 0xFFFFFFFFFFFFFFFELL) + v62 + 2) : (v72 = 1), !v72))
    {
      v75 = v58;
      v76 = v62;
      goto LABEL_64;
    }

    v73 = (v71 >> 1) + 1;
    if (v71 >= 0x3E)
    {
      v74 = v73 & 0xFFFFFFFFFFFFFFE0;
      v129 = (v62 + 32);
      v130 = &v58[1];
      v131 = v73 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v132 = *v130[-2].i8;
        v133 = vmovl_u8(*v130);
        v134 = vmovl_high_u8(*v130->i8);
        v129[-2] = vmovl_u8(*v132.i8);
        v129[-1] = vmovl_high_u8(v132);
        *v129 = v133;
        v129[1] = v134;
        v129 += 4;
        v130 += 4;
        v131 -= 32;
      }

      while (v131);
      if (v73 == v74)
      {
        goto LABEL_67;
      }

      if ((v73 & 0x18) == 0)
      {
        v76 = (v62 + 2 * v74);
        v75 = (v58 + v74);
        goto LABEL_64;
      }
    }

    else
    {
      v74 = 0;
    }

    v75 = (v58 + (v73 & 0xFFFFFFFFFFFFFFF8));
    v76 = (v62 + 2 * (v73 & 0xFFFFFFFFFFFFFFF8));
    v135 = (v62 + 2 * v74);
    v136 = &v58->i8[v74];
    v137 = v74 - (v73 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v138 = *v136++;
      *v135++ = vmovl_u8(v138);
      v137 += 8;
    }

    while (v137);
    if (v73 == (v73 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_67;
    }

    do
    {
LABEL_64:
      v77 = v75->u8[0];
      v75 = (v75 + 1);
      *v76 = v77;
      v76 += 2;
    }

    while (v76 != v61);
    goto LABEL_67;
  }

  if (v59)
  {
    if (v59 == 1)
    {
      *v57 = v58->i16[0];
    }

    else
    {
      v78 = result;
      v79 = a7;
      v80 = a8;
      v81 = a6;
      memcpy(&v36[2 * a5], v58, 2 * v59);
      a6 = v81;
      result = v78;
      a8 = v80;
      a7 = v79;
    }
  }

LABEL_67:
  v60 = *(a6 + 4);
  if (v56 < v60)
  {
    goto LABEL_120;
  }

LABEL_68:
  v82 = &v57[2 * v60];
  v83 = (v82 + 2 * a8);
  if (a8 >= 0x40)
  {
    v84 = v82 + 2 * (a8 & 0x7FFFFFFFFFFFFFC0);
    v85 = 0uLL;
    do
    {
      v142.val[0] = *a7;
      v86 = *(a7 + 16);
      v146.val[0] = *(a7 + 32);
      v87 = *(a7 + 48);
      a7 += 64;
      v88 = v87;
      v146.val[1] = 0uLL;
      v150.val[0] = v86;
      v142.val[1] = 0uLL;
      v89 = v82;
      vst2q_s8(v89, v142);
      v89 += 32;
      v150.val[1] = 0uLL;
      vst2q_s8(v89, v150);
      v90 = (v82 + 64);
      vst2q_s8(v90, v146);
      v91 = (v82 + 96);
      vst2q_s8(v91, *(&v85 - 1));
      v82 += 128;
    }

    while (v82 != v84);
    v82 = v84;
  }

  if (v82 != v83)
  {
    v92 = &result[2 * a8 + 2 * v10 + 2 * v60 + 2 * v55 - v82 - 2];
    if (v92 < 0xE || (v82 < a7 + (v92 >> 1) + 1 ? (v93 = a7 >= (v92 & 0xFFFFFFFFFFFFFFFELL) + v82 + 2) : (v93 = 1), !v93))
    {
      v96 = a7;
      v97 = v82;
      goto LABEL_82;
    }

    v94 = (v92 >> 1) + 1;
    if (v92 >= 0x3E)
    {
      v95 = v94 & 0xFFFFFFFFFFFFFFE0;
      v109 = (v82 + 32);
      v110 = (a7 + 16);
      v111 = v94 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v112 = *v110[-2].i8;
        v113 = vmovl_u8(*v110);
        v114 = vmovl_high_u8(*v110->i8);
        v109[-2] = vmovl_u8(*v112.i8);
        v109[-1] = vmovl_high_u8(v112);
        *v109 = v113;
        v109[1] = v114;
        v109 += 4;
        v110 += 4;
        v111 -= 32;
      }

      while (v111);
      if (v94 == v95)
      {
        return result;
      }

      if ((v94 & 0x18) == 0)
      {
        v97 = (v82 + 2 * v95);
        v96 = (a7 + v95);
        do
        {
LABEL_82:
          v98 = *v96++;
          *v97++ = v98;
        }

        while (v97 != v83);
        return result;
      }
    }

    else
    {
      v95 = 0;
    }

    v96 = (a7 + (v94 & 0xFFFFFFFFFFFFFFF8));
    v97 = (v82 + 2 * (v94 & 0xFFFFFFFFFFFFFFF8));
    v115 = (v82 + 2 * v95);
    v116 = (a7 + v95);
    v117 = v95 - (v94 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v118 = *v116++;
      *v115++ = vmovl_u8(v118);
      v117 += 8;
    }

    while (v117);
    if (v94 != (v94 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_82;
    }
  }

  return result;
}