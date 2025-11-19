WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableUpdatingStatement(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v6 = *(a2 + 56);
  if (v6 == 71 || v6 == 60)
  {
    while (1)
    {
      v9 = *(a2 + 36);
      v10 = (*(a2 + 40) + 1);
      *(a2 + 40) = v10;
      if (v9 <= v10)
      {
        goto LABEL_65;
      }

      v11 = *(a2 + 24) + 32 * v10;
      v7 = *v11;
      *(a2 + 56) = *v11;
      *(a2 + 60) = *(v11 + 4);
      v12 = *v11;
      if (*v11 <= 8u)
      {
        if (((1 << v12) & 0x38) != 0)
        {
          *(a2 + 80) = *(v11 + 24);
        }

        else if (((1 << v12) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v11 + 24);
        }

        else
        {
          if (v12 != 8)
          {
            goto LABEL_7;
          }

          *(a2 + 80) = 0;
          v13 = *(v11 + 24);
          if (v13)
          {
            atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
            v14 = *(a2 + 80);
            *(a2 + 80) = v13;
            if (v14)
            {
              if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v14, a2);
              }
            }
          }
        }

        v7 = *(a2 + 56);
      }

LABEL_7:
      v8 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v8;
      if (v7 != 82)
      {
        v38 = v4;
        LODWORD(v39) = v5;
        DWORD1(v39) = v8 - v5;
        WGSL::AST::Builder::construct<WGSL::AST::DecrementIncrementStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::DecrementIncrementStatement::Operation &,void>();
      }
    }
  }

  v15 = (v6 - 38);
  if (v15 > 0x2B)
  {
    goto LABEL_59;
  }

  if (((1 << (v6 - 38)) & 0x8A412910001) != 0)
  {
    v41 = WGSL::toBinaryOperation(v6) | 0x100;
    while (1)
    {
      v19 = *(a2 + 36);
      v20 = (*(a2 + 40) + 1);
      *(a2 + 40) = v20;
      if (v19 <= v20)
      {
        __break(0xC471u);
        JUMPOUT(0x225781A64);
      }

      v21 = *(a2 + 24) + 32 * v20;
      v17 = *v21;
      *(a2 + 56) = *v21;
      *(a2 + 60) = *(v21 + 4);
      v22 = *v21;
      if (*v21 > 8u)
      {
        goto LABEL_25;
      }

      if (((1 << v22) & 0x38) != 0)
      {
        *(a2 + 80) = *(v21 + 24);
      }

      else if (((1 << v22) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v21 + 24);
      }

      else
      {
        if (v22 != 8)
        {
          goto LABEL_25;
        }

        *(a2 + 80) = 0;
        v23 = *(v21 + 24);
        if (v23)
        {
          atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
          v24 = *(a2 + 80);
          *(a2 + 80) = v23;
          if (v24)
          {
            if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v24, v16);
            }
          }
        }
      }

      v17 = *(a2 + 56);
LABEL_25:
      v18 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v18;
      if (v17 != 82)
      {
        v25 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v38, a2);
        v27 = v40;
        if (!v40)
        {
          WGSL::AST::Builder::construct<WGSL::AST::CompoundAssignmentStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::BinaryOperation &,void>();
        }

        goto LABEL_37;
      }
    }
  }

  if (v15 != 11)
  {
LABEL_59:
    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
    v37 = v5 | ((*(a2 + 96) - v5) << 32);
    *(a1 + 8) = v4;
    *(a1 + 16) = v37;
LABEL_60:
    *(a1 + 24) = 1;
    return result;
  }

  do
  {
    v31 = *(a2 + 36);
    v32 = (*(a2 + 40) + 1);
    *(a2 + 40) = v32;
    if (v31 <= v32)
    {
LABEL_65:
      __break(0xC471u);
      JUMPOUT(0x225781A5CLL);
    }

    v33 = *(a2 + 24) + 32 * v32;
    v29 = *v33;
    *(a2 + 56) = *v33;
    *(a2 + 60) = *(v33 + 4);
    v34 = *v33;
    if (*v33 <= 8u)
    {
      if (((1 << v34) & 0x38) != 0)
      {
        *(a2 + 80) = *(v33 + 24);
LABEL_45:
        v29 = *(a2 + 56);
        goto LABEL_46;
      }

      if (((1 << v34) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v33 + 24);
        goto LABEL_45;
      }

      if (v34 == 8)
      {
        *(a2 + 80) = 0;
        v35 = *(v33 + 24);
        if (v35)
        {
          atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
          v36 = *(a2 + 80);
          *(a2 + 80) = v35;
          if (v36)
          {
            if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v36, a2);
            }
          }
        }

        goto LABEL_45;
      }
    }

LABEL_46:
    v30 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v30;
  }

  while (v29 == 82);
  v25 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v38, a2);
  v27 = v40;
  if (!v40)
  {
    WGSL::AST::Builder::construct<WGSL::AST::AssignmentStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,void>();
  }

LABEL_37:
  if (v27 != 1)
  {
    mpark::throw_bad_variant_access(v25);
  }

  result = v38;
  if (!v38)
  {
    *(a1 + 8) = v39;
    *a1 = 0;
    goto LABEL_60;
  }

  atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
  *(a1 + 8) = v39;
  *a1 = result;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v26);
  }

  return result;
}

mpark *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableUpdatingStatement(uint64_t a1, uint64_t a2)
{
  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseLHSExpression(&v8, a2);
  if (!v10)
  {
    result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseVariableUpdatingStatement(a1, a2);
    v7 = v10;
    if (!v10)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v10 != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = v9;
  *a1 = v6;
  *(a1 + 24) = 1;
  v7 = v10;
  if (v10)
  {
LABEL_8:
    if (v7 != 255)
    {
      result = v8;
      v8 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIfStatementWithAttributes(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl *a4, unsigned int a5)
{
  if (*(a2 + 56) != 25)
  {
    WGSL::toString();
    WGSL::toString();
    if (v62)
    {
      v18 = *(v62 + 1);
      if (v61)
      {
LABEL_18:
        v19 = *(v61 + 4);
        if (v19 < 0)
        {
          goto LABEL_108;
        }

        v17 = __OFADD__(v19, 12);
        v20 = v19 + 12;
        v21 = v17;
        if (v18 < 0)
        {
          goto LABEL_108;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v18 = 0;
      if (v61)
      {
        goto LABEL_18;
      }
    }

    v20 = 12;
    v21 = v17;
    if (v18 < 0)
    {
      goto LABEL_108;
    }

LABEL_39:
    if (v21)
    {
      goto LABEL_108;
    }

    v17 = __OFADD__(v18, v20);
    v28 = v18 + v20;
    if (v17)
    {
      goto LABEL_108;
    }

    v29 = (v28 + 11);
    if (__OFADD__(v28, 11))
    {
      goto LABEL_108;
    }

    if (v62)
    {
      v30 = *(v62 + 4);
      v31 = (v30 >> 2) & 1;
      if (!v61 || (v30 & 4) == 0)
      {
LABEL_64:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v29, v31, "Expected a ", 0xBuLL, v62, ", but got a ", 0xCuLL, v61, &v58);
        v41 = v58;
        if (v58)
        {
          v42 = v61;
          v61 = 0;
          if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v42, v40);
          }

          result = v62;
          v62 = 0;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v40);
          }

          v44 = a5 | ((*(a2 + 96) - a5) << 32);
          *a1 = v41;
          *(a1 + 8) = a4;
          *(a1 + 16) = v44;
          *(a1 + 24) = 1;
          return result;
        }

LABEL_108:
        __break(0xC471u);
        JUMPOUT(0x2257826B0);
      }
    }

    else if (!v61)
    {
      v31 = 1;
      goto LABEL_64;
    }

    v31 = (*(v61 + 16) >> 2) & 1;
    goto LABEL_64;
  }

  do
  {
    v11 = *(a2 + 36);
    v12 = (*(a2 + 40) + 1);
    *(a2 + 40) = v12;
    if (v11 <= v12)
    {
      __break(0xC471u);
      goto LABEL_110;
    }

    v13 = *(a2 + 24) + 32 * v12;
    v9 = *v13;
    *(a2 + 56) = *v13;
    *(a2 + 60) = *(v13 + 4);
    v14 = *v13;
    if (*v13 <= 8u)
    {
      if (((1 << v14) & 0x38) != 0)
      {
        *(a2 + 80) = *(v13 + 24);
LABEL_4:
        v9 = *(a2 + 56);
        goto LABEL_5;
      }

      if (((1 << v14) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v13 + 24);
        goto LABEL_4;
      }

      if (v14 == 8)
      {
        *(a2 + 80) = 0;
        v15 = *(v13 + 24);
        if (v15)
        {
          atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
          v16 = *(a2 + 80);
          *(a2 + 80) = v15;
          if (v16)
          {
            if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v16, a2);
            }
          }
        }

        goto LABEL_4;
      }
    }

LABEL_5:
    v10 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v10;
  }

  while (v9 == 82);
  v22 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseExpression(&v58, a2);
  v24 = v60;
  if (v60)
  {
    if (v60 == 1)
    {
      v25 = v58;
      if (v58)
      {
        atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed);
      }

      *(a1 + 8) = v59;
      *a1 = v25;
      *(a1 + 24) = 1;
      goto LABEL_100;
    }

LABEL_106:
    mpark::throw_bad_variant_access(v22);
  }

  v22 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseCompoundStatement(&v55, a2);
  v26 = v57;
  if (v57)
  {
    if (v57 == 1)
    {
      v27 = v55;
      if (v55)
      {
        atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
      }

      *(a1 + 8) = v56;
      *a1 = v27;
      *(a1 + 24) = 1;
      goto LABEL_95;
    }

    goto LABEL_106;
  }

  v54 = 0;
  if (*(a2 + 56) != 20)
  {
LABEL_92:
    v49 = *(a2 + 96) - a5;
    v51 = a4;
    *&v52 = __PAIR64__(v49, a5);
    WGSL::AST::Builder::construct<WGSL::AST::IfStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::CompoundStatement>,WGSL::AST::Statement *&,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,void>();
  }

  while (2)
  {
    v32 = *(a2 + 36);
    v33 = (*(a2 + 40) + 1);
    *(a2 + 40) = v33;
    if (v32 <= v33)
    {
      __break(0xC471u);
LABEL_110:
      JUMPOUT(0x2257826A8);
    }

    v34 = *(a2 + 24) + 32 * v33;
    v35 = *v34;
    *(a2 + 56) = *v34;
    *(a2 + 60) = *(v34 + 4);
    v36 = *v34;
    if (*v34 <= 8u)
    {
      if (((1 << v36) & 0x38) != 0)
      {
        *(a2 + 80) = *(v34 + 24);
        goto LABEL_55;
      }

      if (((1 << v36) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v34 + 24);
        goto LABEL_55;
      }

      if (v36 == 8)
      {
        *(a2 + 80) = 0;
        v38 = *(v34 + 24);
        if (v38)
        {
          atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
          v39 = *(a2 + 80);
          *(a2 + 80) = v38;
          if (v39)
          {
            if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v39, v23);
            }
          }
        }

LABEL_55:
        v35 = *(a2 + 56);
      }
    }

    v37 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v37;
    if (v35 == 82)
    {
      continue;
    }

    break;
  }

  if (v35 != 25)
  {
    v22 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseCompoundStatement(&v51, a2);
    if (v53)
    {
      if (v53 == 1)
      {
        result = v51;
        if (!v51)
        {
          *a1 = 0;
          *(a1 + 8) = v52;
          *(a1 + 24) = 1;
          if (!v26)
          {
            goto LABEL_98;
          }

          goto LABEL_94;
        }

        atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
        *a1 = result;
        *(a1 + 8) = v52;
        *(a1 + 24) = 1;
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v23);
          if (!v26)
          {
            goto LABEL_98;
          }

          goto LABEL_94;
        }

        if (v26)
        {
          goto LABEL_94;
        }

        goto LABEL_98;
      }

      goto LABEL_106;
    }

    v54 = v51;
    goto LABEL_92;
  }

  v45 = *(a2 + 44);
  *(a2 + 44) = v45 + 1;
  if ((v45 + 1) < 0x81)
  {
    v50[0] = 0;
    v50[1] = 0;
    WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIfStatementWithAttributes(&v51, a2, v50, a4, a5);
    v22 = v50[0];
    if (v50[0])
    {
      v22 = WTF::fastFree(v50[0], v47);
    }

    if (v53)
    {
      if (v53 == 1)
      {
        v48 = v51;
        if (v51)
        {
          atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
        }

        *(a1 + 8) = v52;
        *a1 = v48;
        *(a1 + 24) = 1;
        result = std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v51, v47);
        *(a2 + 44) = v45;
        if (v26)
        {
          goto LABEL_94;
        }

        goto LABEL_98;
      }

      goto LABEL_106;
    }

    v54 = v51;
    std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v51, v47);
    *(a2 + 44) = v45;
    goto LABEL_92;
  }

  result = WTF::StringImpl::createWithoutCopyingNonEmpty();
  v46 = a5 | ((*(a2 + 96) - a5) << 32);
  *a1 = v51;
  *(a1 + 8) = a4;
  *(a1 + 16) = v46;
  *(a1 + 24) = 1;
  *(a2 + 44) = v45;
  if (!v26)
  {
    goto LABEL_98;
  }

LABEL_94:
  if (v26 != 255)
  {
LABEL_95:
    result = v55;
    if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v23);
    }
  }

LABEL_98:
  if (v24 && v24 != 255)
  {
LABEL_100:
    result = v58;
    if (v58)
    {
      if (atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v23);
      }
    }
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<unsigned char>>::parseLHSExpression(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v6 = *(a2 + 44);
  *(a2 + 44) = v6 + 1;
  if ((v6 + 1) >= 0x81)
  {
    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
    v8 = v5 | ((*(a2 + 96) - v5) << 32);
    *(a1 + 8) = v4;
    *(a1 + 16) = v8;
    *(a1 + 24) = 1;
    goto LABEL_3;
  }

  v9 = *(a2 + 56);
  switch(v9)
  {
    case 76:
      v10 = 2;
      goto LABEL_8;
    case 36:
      v10 = 0;
LABEL_8:
      LOBYTE(v45) = v10;
      while (1)
      {
        v13 = *(a2 + 36);
        v14 = (*(a2 + 40) + 1);
        *(a2 + 40) = v14;
        if (v13 <= v14)
        {
          __break(0xC471u);
          goto LABEL_106;
        }

        v15 = *(a2 + 24) + 32 * v14;
        v11 = *v15;
        *(a2 + 56) = *v15;
        *(a2 + 60) = *(v15 + 4);
        v16 = *v15;
        if (*v15 <= 8u)
        {
          if (((1 << v16) & 0x38) != 0)
          {
            *(a2 + 80) = *(v15 + 24);
          }

          else if (((1 << v16) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v15 + 24);
          }

          else
          {
            if (v16 != 8)
            {
              goto LABEL_11;
            }

            *(a2 + 80) = 0;
            v17 = *(v15 + 24);
            if (v17)
            {
              atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
              v18 = *(a2 + 80);
              *(a2 + 80) = v17;
              if (v18)
              {
                if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v18, a2);
                }
              }
            }
          }

          v11 = *(a2 + 56);
        }

LABEL_11:
        v12 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v12;
        if (v11 != 82)
        {
          result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseLHSExpression(&v48, a2);
          if (!v50)
          {
            WGSL::AST::Builder::construct<WGSL::AST::UnaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::UnaryOperation &,void>();
          }

          if (v50 == 1)
          {
            v20 = v48;
            if (v48)
            {
              atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
            }

            *(a1 + 8) = v49;
            *a1 = v20;
            *(a1 + 24) = 1;
            if (!v50)
            {
              goto LABEL_3;
            }

            if (v50 == 255)
            {
              goto LABEL_3;
            }

            result = v48;
            v48 = 0;
            if (!result)
            {
              goto LABEL_3;
            }

LABEL_100:
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v19);
            }

            goto LABEL_3;
          }

LABEL_102:
          mpark::throw_bad_variant_access(result);
        }
      }

    case 8:
      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v48, a2);
      v29 = v51;
      if (!v51)
      {
        v33 = *(a2 + 96) - v5;
        v45 = v4;
        v46 = v5;
        v47 = v33;
        WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
      }

      if (v51 != 1)
      {
        goto LABEL_102;
      }

      v30 = v48;
      if (v48)
      {
        atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
      }

      v43 = v49;
      v42 = v30;
      v44 = 1;
      if (v51 == 255)
      {
        goto LABEL_93;
      }

      if (v51)
      {
        goto LABEL_90;
      }

      result = v50;
      v48 = off_2838D37C0;
      v50 = 0;
      if (!result)
      {
        goto LABEL_93;
      }

LABEL_91:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v19);
      }

      goto LABEL_93;
  }

  if (v9 != 67)
  {
    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
    *&v43 = v4;
    *(&v43 + 1) = v5 | ((*(a2 + 96) - v5) << 32);
    v44 = 1;
    goto LABEL_94;
  }

  do
  {
    v23 = *(a2 + 36);
    v24 = (*(a2 + 40) + 1);
    *(a2 + 40) = v24;
    if (v23 <= v24)
    {
      __break(0xC471u);
      JUMPOUT(0x2257834E0);
    }

    v25 = *(a2 + 24) + 32 * v24;
    v21 = *v25;
    *(a2 + 56) = *v25;
    *(a2 + 60) = *(v25 + 4);
    v26 = *v25;
    if (*v25 <= 8u)
    {
      if (((1 << v26) & 0x38) != 0)
      {
        *(a2 + 80) = *(v25 + 24);
LABEL_32:
        v21 = *(a2 + 56);
        goto LABEL_33;
      }

      if (((1 << v26) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v25 + 24);
        goto LABEL_32;
      }

      if (v26 == 8)
      {
        *(a2 + 80) = 0;
        v27 = *(v25 + 24);
        if (v27)
        {
          atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
          v28 = *(a2 + 80);
          *(a2 + 80) = v27;
          if (v28)
          {
            if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, a2);
            }
          }
        }

        goto LABEL_32;
      }
    }

LABEL_33:
    v22 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v22;
  }

  while (v21 == 82);
  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseLHSExpression(&v48, a2);
  if (v50)
  {
    if (v50 != 1)
    {
      goto LABEL_102;
    }

    v31 = v48;
    if (v48)
    {
      atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
    }

    v43 = v49;
    v42 = v31;
    v29 = 1;
    v44 = 1;
    v32 = v50;
    if (!v50)
    {
      goto LABEL_93;
    }

LABEL_89:
    if (v32 == 255)
    {
      goto LABEL_93;
    }

LABEL_90:
    result = v48;
    v48 = 0;
    if (!result)
    {
      goto LABEL_93;
    }

    goto LABEL_91;
  }

  if (*(a2 + 56) != 68)
  {
    WGSL::toString();
    WGSL::toString();
    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v53, ", but got a ", 13, &v52, &v45);
    v41 = v52;
    v52 = 0;
    if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v41, v19);
    }

    result = v53;
    v53 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v19);
    }

    v42 = v45;
    *&v43 = v4;
    *(&v43 + 1) = v5 | ((*(a2 + 96) - v5) << 32);
    v29 = 1;
    v44 = 1;
    v32 = v50;
    if (!v50)
    {
      goto LABEL_93;
    }

    goto LABEL_89;
  }

  while (2)
  {
    v36 = *(a2 + 36);
    v37 = (*(a2 + 40) + 1);
    *(a2 + 40) = v37;
    if (v36 <= v37)
    {
      __break(0xC471u);
LABEL_106:
      JUMPOUT(0x2257834D8);
    }

    v38 = *(a2 + 24) + 32 * v37;
    v34 = *v38;
    *(a2 + 56) = *v38;
    *(a2 + 60) = *(v38 + 4);
    v39 = *v38;
    if (*v38 <= 8u)
    {
      if (((1 << v39) & 0x38) != 0)
      {
        *(a2 + 80) = *(v38 + 24);
        goto LABEL_68;
      }

      if (((1 << v39) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v38 + 24);
        goto LABEL_68;
      }

      if (v39 == 8)
      {
        *(a2 + 80) = 0;
        v40 = *(v38 + 24);
        if (v40)
        {
          atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
          result = *(a2 + 80);
          *(a2 + 80) = v40;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v19);
            }
          }
        }

LABEL_68:
        v34 = *(a2 + 56);
      }
    }

    v35 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v35;
    if (v34 == 82)
    {
      continue;
    }

    break;
  }

  v29 = 0;
  v42 = v48;
  v44 = 0;
  v32 = v50;
  if (v50)
  {
    goto LABEL_89;
  }

LABEL_93:
  if (!v29)
  {
    result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parsePostfixExpression(a1, a2, v42, v4, v5);
    if (!v44)
    {
      goto LABEL_3;
    }

    goto LABEL_99;
  }

LABEL_94:
  if (v42)
  {
    atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = v43;
  *a1 = v42;
  *(a1 + 24) = 1;
  if (v44)
  {
LABEL_99:
    result = v42;
    if (!v42)
    {
      goto LABEL_3;
    }

    goto LABEL_100;
  }

LABEL_3:
  *(a2 + 44) = v6;
  return result;
}

void WGSL::AST::LoopStatement::~LoopStatement(WGSL::AST::LoopStatement *this, void *a2)
{
  if (*(this + 96) == 1)
  {
    v3 = *(this + 9);
    if (v3)
    {
      *(this + 9) = 0;
      *(this + 20) = 0;
      WTF::fastFree(v3, a2);
    }

    v4 = *(this + 7);
    if (v4)
    {
      *(this + 7) = 0;
      *(this + 16) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 3) = 0;
    *(this + 8) = 0;
    WTF::fastFree(v6, a2);
  }
}

{
  if (*(this + 96) == 1)
  {
    v3 = *(this + 9);
    if (v3)
    {
      *(this + 9) = 0;
      *(this + 20) = 0;
      WTF::fastFree(v3, a2);
    }

    v4 = *(this + 7);
    if (v4)
    {
      *(this + 7) = 0;
      *(this + 16) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 3) = 0;
    *(this + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  JUMPOUT(0x22AA68560);
}

unint64_t WTF::Vector<WGSL::AST::SwitchClause,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 24 * a1[3] <= a3)
  {
    v11 = a1[2];
    if (v11 + (v11 >> 1) <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11 + (v11 >> 1);
    }

    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<WGSL::AST::SwitchClause,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    v6 = a1[2];
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WGSL::AST::SwitchClause,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
    return *a1 + v5;
  }
}

unsigned int *WTF::Vector<WGSL::AST::SwitchClause,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  if (result[2] < a2)
  {
    if (a2 >= 0xAAAAAAB)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = result[3];
      v5 = 24 * a2;
      result = WTF::fastMalloc((24 * a2));
      v2[2] = v5 / 0x18;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        v8 = 24 * v4;
        v9 = v3 + 8;
        do
        {
          *v7 = 0;
          *(v7 + 1) = 0;
          v10 = *(v9 - 1);
          *(v9 - 1) = 0;
          *v7 = v10;
          LODWORD(v10) = *v9;
          *v9 = 0;
          v7[2] = v10;
          LODWORD(v10) = *(v9 + 1);
          *(v9 + 1) = 0;
          v7[3] = v10;
          *(v7 + 2) = *(v9 + 1);
          result = *(v9 - 1);
          if (result)
          {
            *(v9 - 1) = 0;
            *v9 = 0;
            result = WTF::fastFree(result, v6);
          }

          v7 += 6;
          v9 += 24;
          v8 -= 24;
        }

        while (v8);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          v2[2] = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

void WGSL::AST::SwitchStatement::~SwitchStatement(WGSL::AST::SwitchStatement *this, void *a2)
{
  v3 = *(this + 9);
  if (v3)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 17);
  v5 = *(this + 7);
  if (v4)
  {
    v6 = 24 * v4;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *v5 = 0;
        *(v5 + 2) = 0;
        WTF::fastFree(v7, a2);
      }

      v5 = (v5 + 24);
      v6 -= 24;
    }

    while (v6);
    v5 = *(this + 7);
  }

  if (v5)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  v8 = *(this + 5);
  if (v8)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v8, a2);
  }
}

{
  v3 = *(this + 9);
  if (v3)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 17);
  v5 = *(this + 7);
  if (v4)
  {
    v6 = 24 * v4;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *v5 = 0;
        *(v5 + 2) = 0;
        WTF::fastFree(v7, a2);
      }

      v5 = (v5 + 24);
      v6 -= 24;
    }

    while (v6);
    v5 = *(this + 7);
  }

  if (v5)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  v8 = *(this + 5);
  if (v8)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v8, a2);
  }

  JUMPOUT(0x22AA68560);
}

void WGSL::AST::Function::~Function(WGSL::AST::Function *this, void *a2)
{
  v3 = *(this + 11);
  if (v3)
  {
    *(this + 11) = 0;
    *(this + 24) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  *(this + 3) = off_2838D37C0;
  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }
}

{
  v3 = *(this + 11);
  if (v3)
  {
    *(this + 11) = 0;
    *(this + 24) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  *(this + 3) = off_2838D37C0;
  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  JUMPOUT(0x22AA68560);
}

void WGSL::Parser<WGSL::Lexer<char16_t>>::parseDeclaration(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 88);
  v6 = *(a2 + 96);
  v7 = *(a2 + 56);
  if (v7 != 10)
  {
    if (v7 == 14)
    {
      v9 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseConstAssert(v350, a2);
      if (!v351)
      {
LABEL_58:
        *a1 = *v350;
        *(a1 + 24) = 0;
        return;
      }

      if (v351 != 1)
      {
        goto LABEL_789;
      }

      v10 = *v350;
      if (*v350)
      {
        atomic_fetch_add_explicit(*v350, 2u, memory_order_relaxed);
        *a1 = v10;
        *(a1 + 8) = *&v350[8];
        goto LABEL_12;
      }

      *a1 = 0;
      *(a1 + 8) = *&v350[8];
LABEL_250:
      *(a1 + 24) = 1;
      return;
    }

    if (v7 == 13)
    {
      v343 = 0;
      *&v344 = 0;
      WGSL::Parser<WGSL::Lexer<char16_t>>::parseVariableWithAttributes(v350, a2);
      v9 = 0;
      if (v351)
      {
        if (v351 != 1)
        {
          goto LABEL_789;
        }

        v10 = *v350;
        if (*v350)
        {
          atomic_fetch_add_explicit(*v350, 2u, memory_order_relaxed);
          *(a1 + 8) = *&v350[8];
          *a1 = v10;
LABEL_12:
          *(a1 + 24) = 1;
          goto LABEL_36;
        }

        *(a1 + 8) = *&v350[8];
        *a1 = 0;
        goto LABEL_250;
      }

      if (*(a2 + 56) == 73)
      {
        while (1)
        {
          v24 = *(a2 + 36);
          v25 = (*(a2 + 40) + 1);
          *(a2 + 40) = v25;
          if (v24 <= v25)
          {
            __break(0xC471u);
            JUMPOUT(0x2257869C0);
          }

          v26 = *(a2 + 24) + 32 * v25;
          v22 = *v26;
          *(a2 + 56) = *v26;
          *(a2 + 60) = *(v26 + 4);
          v27 = *v26;
          if (*v26 > 8u)
          {
            goto LABEL_47;
          }

          if (((1 << v27) & 0x38) != 0)
          {
            *(a2 + 80) = *(v26 + 24);
          }

          else if (((1 << v27) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v26 + 24);
          }

          else
          {
            if (v27 != 8)
            {
              goto LABEL_47;
            }

            *(a2 + 80) = 0;
            v28 = *(v26 + 24);
            if (v28)
            {
              atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
              v29 = *(a2 + 80);
              *(a2 + 80) = v28;
              if (v29)
              {
                if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v8);
                }
              }
            }
          }

          v22 = *(a2 + 56);
LABEL_47:
          v23 = *(a2 + 68);
          *(a2 + 88) = *(a2 + 60);
          *(a2 + 96) = v23;
          if (v22 != 82)
          {
            goto LABEL_58;
          }
        }
      }

      WGSL::toString();
      WGSL::toString();
      if (v325)
      {
        v39 = *(v325 + 1);
        if (v324)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v39 = 0;
        if (v324)
        {
LABEL_80:
          v40 = *(v324 + 1);
          if (v40 < 0)
          {
            goto LABEL_800;
          }

LABEL_171:
          v83 = __OFADD__(v40, 12);
          v84 = v40 + 12;
          v85 = v83;
          if (v39 < 0)
          {
            goto LABEL_800;
          }

          if (v85)
          {
            goto LABEL_800;
          }

          v83 = __OFADD__(v39, v84);
          v86 = v39 + v84;
          if (v83)
          {
            goto LABEL_800;
          }

          v87 = (v86 + 11);
          if (__OFADD__(v86, 11))
          {
            goto LABEL_800;
          }

          if (v325)
          {
            v88 = *(v325 + 4);
            v89 = (v88 >> 2) & 1;
            if (!v324 || (v88 & 4) == 0)
            {
LABEL_242:
              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v87, v89, "Expected a ", 0xBuLL, v325, ", but got a ", 0xCuLL, v324, &v343);
              v120 = v343;
              if (v343)
              {
                v121 = v324;
                v324 = 0;
                if (v121 && atomic_fetch_add_explicit(v121, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v121, v119);
                }

                v122 = v325;
                v325 = 0;
                if (v122 && atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v122, v119);
                }

                v123 = v6 | ((*(a2 + 96) - v6) << 32);
                *a1 = v120;
                *(a1 + 8) = v5;
                *(a1 + 16) = v123;
                goto LABEL_250;
              }

LABEL_800:
              __break(0xC471u);
              JUMPOUT(0x2257869F8);
            }
          }

          else if (!v324)
          {
            v89 = 1;
            goto LABEL_242;
          }

          v89 = (*(v324 + 16) >> 2) & 1;
          goto LABEL_242;
        }
      }

      v40 = 0;
      goto LABEL_171;
    }

    WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttributes(&v321, a2);
    if (v323)
    {
      if (v323 == 1)
      {
        v19 = v321;
        if (v321)
        {
          atomic_fetch_add_explicit(v321, 2u, memory_order_relaxed);
        }

        *(a1 + 8) = v322;
        *a1 = v19;
        goto LABEL_32;
      }

      goto LABEL_789;
    }

    v30 = *(a2 + 56);
    if (v30 <= 30)
    {
      if (v30 != 23)
      {
        if (v30 != 28)
        {
          goto LABEL_129;
        }

        goto LABEL_107;
      }

      v63 = *(a2 + 88);
      v64 = *(a2 + 96);
      while (1)
      {
        v67 = *(a2 + 36);
        v68 = (*(a2 + 40) + 1);
        *(a2 + 40) = v68;
        if (v67 <= v68)
        {
          __break(0xC471u);
          JUMPOUT(0x2257869D8);
        }

        v69 = *(a2 + 24) + 32 * v68;
        v65 = *v69;
        *(a2 + 56) = *v69;
        *(a2 + 60) = *(v69 + 4);
        v70 = *v69;
        if (*v69 > 8u)
        {
          goto LABEL_133;
        }

        if (((1 << v70) & 0x38) != 0)
        {
          *(a2 + 80) = *(v69 + 24);
        }

        else if (((1 << v70) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v69 + 24);
        }

        else
        {
          if (v70 != 8)
          {
            goto LABEL_133;
          }

          *(a2 + 80) = 0;
          v71 = *(v69 + 24);
          if (v71)
          {
            atomic_fetch_add_explicit(v71, 2u, memory_order_relaxed);
            v72 = *(a2 + 80);
            *(a2 + 80) = v71;
            if (v72)
            {
              if (atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v72, v8);
              }
            }
          }
        }

        v65 = *(a2 + 56);
LABEL_133:
        v66 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v66;
        if (v65 != 82)
        {
          v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v343, a2);
          if (v346)
          {
            if (v346 == 1)
            {
              v74 = v343;
              if (v343)
              {
                atomic_fetch_add_explicit(v343, 2u, memory_order_relaxed);
              }

              v2 = *(&v344 + 1);
              v63 = v344;
              goto LABEL_772;
            }

            goto LABEL_789;
          }

          if (*(a2 + 56) == 67)
          {
            v74 = 1;
            while (1)
            {
              v113 = *(a2 + 36);
              v114 = (*(a2 + 40) + 1);
              *(a2 + 40) = v114;
              if (v113 <= v114)
              {
                __break(0xC471u);
                JUMPOUT(0x225786A28);
              }

              v115 = *(a2 + 24) + 32 * v114;
              v111 = *v115;
              *(a2 + 56) = *v115;
              *(a2 + 60) = *(v115 + 4);
              v116 = *v115;
              if (*v115 > 8u)
              {
                goto LABEL_230;
              }

              if (((1 << v116) & 0x38) != 0)
              {
                *(a2 + 80) = *(v115 + 24);
              }

              else if (((1 << v116) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v115 + 24);
              }

              else
              {
                if (v116 != 8)
                {
                  goto LABEL_230;
                }

                *(a2 + 80) = 0;
                v117 = *(v115 + 24);
                if (v117)
                {
                  atomic_fetch_add_explicit(v117, 2u, memory_order_relaxed);
                  v118 = *(a2 + 80);
                  *(a2 + 80) = v117;
                  if (v118)
                  {
                    if (atomic_fetch_add_explicit(v118, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v118, v8);
                    }
                  }
                }
              }

              v111 = *(a2 + 56);
LABEL_230:
              v112 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v112;
              if (v111 != 82)
              {
                v309 = v63;
                v311 = v64;
                v170 = 0;
                v171 = 0;
                v327 = 0;
                *&v328 = 0;
                while (1)
                {
                  if (*(a2 + 56) == 68)
                  {
                    goto LABEL_534;
                  }

                  v172 = *(a2 + 88);
                  v173 = *(a2 + 96);
                  WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttributes(&v353, a2);
                  if (v355)
                  {
                    if (v355 != 1)
                    {
                      goto LABEL_789;
                    }

                    v9 = v353;
                    if (v353)
                    {
                      atomic_fetch_add_explicit(v353, 2u, memory_order_relaxed);
                    }

                    v341 = v354;
                    v340 = v9;
                    v342 = 1;
LABEL_467:
                    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v9 = WTF::StringImpl::destroy(v9, v8);
                    }

                    goto LABEL_470;
                  }

                  v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v350, a2);
                  if (v352)
                  {
                    if (v352 != 1)
                    {
                      goto LABEL_789;
                    }

                    v174 = *v350;
                    if (*v350)
                    {
                      atomic_fetch_add_explicit(*v350, 2u, memory_order_relaxed);
                    }

                    v341 = *&v350[8];
                    v340 = v174;
                    v342 = 1;
                    goto LABEL_458;
                  }

                  v313 = v74;
                  v175 = v170;
                  v176 = v2;
                  if (*(a2 + 56) != 47)
                  {
                    WGSL::toString();
                    WGSL::toString();
                    if (v330)
                    {
                      v185 = *(v330 + 1);
                    }

                    else
                    {
                      v185 = 0;
                    }

                    if (v318)
                    {
                      v188 = *(v318 + 1);
                      if (v188 < 0)
                      {
                        goto LABEL_811;
                      }
                    }

                    else
                    {
                      v188 = 0;
                    }

                    v83 = __OFADD__(v188, 12);
                    v189 = v188 + 12;
                    v190 = v83;
                    if ((v185 & 0x80000000) == 0 && (v190 & 1) == 0)
                    {
                      v83 = __OFADD__(v185, v189);
                      v191 = v185 + v189;
                      if (!v83)
                      {
                        v192 = (v191 + 11);
                        if (!__OFADD__(v191, 11))
                        {
                          if (v330)
                          {
                            v193 = *(v330 + 4);
                            v194 = (v193 >> 2) & 1;
                            if (!v318 || (v193 & 4) == 0)
                            {
                              goto LABEL_450;
                            }

LABEL_448:
                            v194 = (*(v318 + 16) >> 2) & 1;
                          }

                          else
                          {
                            if (v318)
                            {
                              goto LABEL_448;
                            }

                            v194 = 1;
                          }

LABEL_450:
                          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v192, v194, "Expected a ", 0xBuLL, v330, ", but got a ", 0xCuLL, v318, &v347);
                          v195 = v347;
                          if (v347)
                          {
                            v196 = v318;
                            v318 = 0;
                            if (v196 && atomic_fetch_add_explicit(v196, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v196, v8);
                            }

                            v9 = v330;
                            v330 = 0;
                            if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              v9 = WTF::StringImpl::destroy(v9, v8);
                            }

                            v197 = v173 | ((*(a2 + 96) - v173) << 32);
                            v340 = v195;
                            *&v341 = v172;
                            *(&v341 + 1) = v197;
                            v342 = 1;
                            v2 = v176;
                            v170 = v175;
                            v74 = v313;
                            goto LABEL_458;
                          }
                        }
                      }
                    }

LABEL_811:
                    __break(0xC471u);
                    JUMPOUT(0x225786A50);
                  }

                  v170 = v175;
                  v74 = v313;
                  do
                  {
                    v179 = *(a2 + 36);
                    v180 = (*(a2 + 40) + 1);
                    *(a2 + 40) = v180;
                    if (v179 <= v180)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x225786A18);
                    }

                    v181 = *(a2 + 24) + 32 * v180;
                    v177 = *v181;
                    *(a2 + 56) = *v181;
                    *(a2 + 60) = *(v181 + 4);
                    v182 = *v181;
                    if (*v181 <= 8u)
                    {
                      if (((1 << v182) & 0x38) != 0)
                      {
                        *(a2 + 80) = *(v181 + 24);
LABEL_406:
                        v177 = *(a2 + 56);
                        goto LABEL_407;
                      }

                      if (((1 << v182) & 0xC4) != 0)
                      {
                        *(a2 + 80) = *(v181 + 24);
                        goto LABEL_406;
                      }

                      if (v182 == 8)
                      {
                        *(a2 + 80) = 0;
                        v183 = *(v181 + 24);
                        if (v183)
                        {
                          atomic_fetch_add_explicit(v183, 2u, memory_order_relaxed);
                          v184 = *(a2 + 80);
                          *(a2 + 80) = v183;
                          if (v184)
                          {
                            if (atomic_fetch_add_explicit(v184, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v184, v8);
                            }
                          }
                        }

                        goto LABEL_406;
                      }
                    }

LABEL_407:
                    v178 = *(a2 + 68);
                    *(a2 + 88) = *(a2 + 60);
                    *(a2 + 96) = v178;
                  }

                  while (v177 == 82);
                  v9 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(&v347, a2);
                  if (!v349)
                  {
                    v187 = *(a2 + 96) - v173;
                    v330 = v172;
                    *&v331 = __PAIR64__(v187, v173);
                    LOBYTE(v318) = 0;
                    WGSL::AST::Builder::construct<WGSL::AST::Parameter,WGSL::SourceSpan,WGSL::AST::Identifier,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::AST::ParameterRole,void>();
                  }

                  if (v349 != 1)
                  {
                    goto LABEL_789;
                  }

                  v186 = v347;
                  if (v347)
                  {
                    atomic_fetch_add_explicit(v347, 2u, memory_order_relaxed);
                  }

                  v341 = v348;
                  v340 = v186;
                  v342 = 1;
                  if (v349)
                  {
                    if (v349 != 255)
                    {
                      v9 = v347;
                      v347 = 0;
                      if (v9)
                      {
                        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          v9 = WTF::StringImpl::destroy(v9, v8);
                        }
                      }
                    }
                  }

LABEL_458:
                  if (v352 != 255)
                  {
                    if (v352)
                    {
                      v9 = *v350;
                      *v350 = 0;
                      if (!v9)
                      {
                        goto LABEL_465;
                      }
                    }

                    else
                    {
                      v9 = v351;
                      *v350 = off_2838D37C0;
                      v351 = 0;
                      if (!v9)
                      {
                        goto LABEL_465;
                      }
                    }

                    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v9 = WTF::StringImpl::destroy(v9, v8);
                    }
                  }

LABEL_465:
                  if (v355 != 255)
                  {
                    v9 = v353;
                    if (v355)
                    {
                      goto LABEL_467;
                    }

                    if (v353)
                    {
                      v9 = WTF::fastFree(v353, v8);
                    }
                  }

LABEL_470:
                  if (v342)
                  {
                    if (v342 != 1)
                    {
                      goto LABEL_789;
                    }

                    v74 = v340;
                    if (v340)
                    {
                      atomic_fetch_add_explicit(v340, 2u, memory_order_relaxed);
                    }

                    v198 = 1;
                    v2 = *(&v341 + 1);
                    v314 = v341;
                    v199 = v342;
                    if (!v342)
                    {
                      goto LABEL_391;
                    }

LABEL_497:
                    if (v199 != 255)
                    {
                      v210 = v340;
                      v340 = 0;
                      if (v210)
                      {
                        if (atomic_fetch_add_explicit(v210, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v210, v8);
                        }
                      }
                    }

                    goto LABEL_391;
                  }

                  if (v171 == v328)
                  {
                    v200 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v327, v171 + 1, &v340);
                    v201 = DWORD1(v328);
                    v170 = v327;
                    v327[DWORD1(v328)] = *v200;
                  }

                  else
                  {
                    v170[v171] = v340;
                    v201 = DWORD1(v328);
                  }

                  v171 = v201 + 1;
                  DWORD1(v328) = v201 + 1;
                  if ((v201 + 1) >= 0x100)
                  {
                    WTF::String::number(0xFF);
                    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("function cannot have more than ", 32, &v336, " parameters", 12, v350);
                    v211 = *(a2 + 96);
                    v74 = *v350;
                    *v350 = 0;
                    v212 = v336;
                    v336 = 0;
                    if (v212 && atomic_fetch_add_explicit(v212, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v212, v8);
                    }

                    v2 = v311 | ((v211 - v311) << 32);
                    v198 = 1;
                    v314 = v309;
                    v199 = v342;
                    if (!v342)
                    {
                      goto LABEL_391;
                    }

                    goto LABEL_497;
                  }

                  if (*(a2 + 56) != 48)
                  {
                    v198 = 7;
                    v199 = v342;
                    if (v342)
                    {
                      goto LABEL_497;
                    }

                    goto LABEL_391;
                  }

                  while (2)
                  {
                    v204 = *(a2 + 36);
                    v205 = (*(a2 + 40) + 1);
                    *(a2 + 40) = v205;
                    if (v204 <= v205)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x2257869E0);
                    }

                    v206 = *(a2 + 24) + 32 * v205;
                    v202 = *v206;
                    *(a2 + 56) = *v206;
                    *(a2 + 60) = *(v206 + 4);
                    v207 = *v206;
                    if (*v206 <= 8u)
                    {
                      if (((1 << v207) & 0x38) != 0)
                      {
                        *(a2 + 80) = *(v206 + 24);
                        goto LABEL_484;
                      }

                      if (((1 << v207) & 0xC4) != 0)
                      {
                        *(a2 + 80) = *(v206 + 24);
                        goto LABEL_484;
                      }

                      if (v207 == 8)
                      {
                        *(a2 + 80) = 0;
                        v208 = *(v206 + 24);
                        if (v208)
                        {
                          atomic_fetch_add_explicit(v208, 2u, memory_order_relaxed);
                          v209 = *(a2 + 80);
                          *(a2 + 80) = v208;
                          if (v209)
                          {
                            if (atomic_fetch_add_explicit(v209, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v209, v8);
                            }
                          }
                        }

LABEL_484:
                        v202 = *(a2 + 56);
                      }
                    }

                    v203 = *(a2 + 68);
                    *(a2 + 88) = *(a2 + 60);
                    *(a2 + 96) = v203;
                    if (v202 == 82)
                    {
                      continue;
                    }

                    break;
                  }

                  v198 = 0;
                  v199 = v342;
                  if (v342)
                  {
                    goto LABEL_497;
                  }

LABEL_391:
                  if (v198)
                  {
                    if (v198 != 7)
                    {
                      v264 = v170;
                      v63 = v314;
                      goto LABEL_770;
                    }

                    if (*(a2 + 56) == 68)
                    {
                      while (1)
                      {
LABEL_534:
                        v224 = *(a2 + 36);
                        v225 = (*(a2 + 40) + 1);
                        *(a2 + 40) = v225;
                        if (v224 <= v225)
                        {
                          __break(0xC471u);
                          JUMPOUT(0x225786A30);
                        }

                        v226 = *(a2 + 24) + 32 * v225;
                        v222 = *v226;
                        *(a2 + 56) = *v226;
                        *(a2 + 60) = *(v226 + 4);
                        v227 = *v226;
                        if (*v226 > 8u)
                        {
                          goto LABEL_533;
                        }

                        if (((1 << v227) & 0x38) != 0)
                        {
                          *(a2 + 80) = *(v226 + 24);
                        }

                        else if (((1 << v227) & 0xC4) != 0)
                        {
                          *(a2 + 80) = *(v226 + 24);
                        }

                        else
                        {
                          if (v227 != 8)
                          {
                            goto LABEL_533;
                          }

                          *(a2 + 80) = 0;
                          v228 = *(v226 + 24);
                          if (v228)
                          {
                            atomic_fetch_add_explicit(v228, 2u, memory_order_relaxed);
                            v229 = *(a2 + 80);
                            *(a2 + 80) = v228;
                            if (v229)
                            {
                              if (atomic_fetch_add_explicit(v229, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v229, v8);
                              }
                            }
                          }
                        }

                        v222 = *(a2 + 56);
LABEL_533:
                        v223 = *(a2 + 68);
                        *(a2 + 88) = *(a2 + 60);
                        *(a2 + 96) = v223;
                        if (v222 != 82)
                        {
                          v347 = 0;
                          *&v348 = 0;
                          v340 = 0;
                          if (v222 != 39)
                          {
                            v265 = 0;
                            v266 = v309;
                            goto LABEL_640;
                          }

                          while (2)
                          {
                            v232 = *(a2 + 36);
                            v233 = (*(a2 + 40) + 1);
                            *(a2 + 40) = v233;
                            if (v232 <= v233)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x225786A40);
                            }

                            v234 = *(a2 + 24) + 32 * v233;
                            v230 = *v234;
                            *(a2 + 56) = *v234;
                            *(a2 + 60) = *(v234 + 4);
                            v235 = *v234;
                            if (*v234 <= 8u)
                            {
                              if (((1 << v235) & 0x38) != 0)
                              {
                                *(a2 + 80) = *(v234 + 24);
                                goto LABEL_547;
                              }

                              if (((1 << v235) & 0xC4) != 0)
                              {
                                *(a2 + 80) = *(v234 + 24);
                                goto LABEL_547;
                              }

                              if (v235 == 8)
                              {
                                *(a2 + 80) = 0;
                                v236 = *(v234 + 24);
                                if (v236)
                                {
                                  atomic_fetch_add_explicit(v236, 2u, memory_order_relaxed);
                                  v237 = *(a2 + 80);
                                  *(a2 + 80) = v236;
                                  if (v237)
                                  {
                                    if (atomic_fetch_add_explicit(v237, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v237, v8);
                                    }
                                  }
                                }

LABEL_547:
                                v230 = *(a2 + 56);
                              }
                            }

                            v231 = *(a2 + 68);
                            *(a2 + 88) = *(a2 + 60);
                            *(a2 + 96) = v231;
                            if (v230 != 82)
                            {
                              WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttributes(v350, a2);
                              if (v351)
                              {
                                if (v351 == 1)
                                {
                                  v74 = *v350;
                                  if (*v350)
                                  {
                                    atomic_fetch_add_explicit(*v350, 2u, memory_order_relaxed);
                                  }

                                  v63 = *&v350[8];
                                  v2 = *&v350[16];
                                  std::experimental::fundamentals_v3::expected<WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::CompilationMessage>::~expected(v350, v267);
LABEL_739:
                                  v264 = v327;
LABEL_770:
                                  if (v264)
                                  {
                                    v327 = 0;
                                    LODWORD(v328) = 0;
                                    WTF::fastFree(v264, v8);
                                  }

LABEL_772:
                                  if (v346 != 255)
                                  {
                                    if (v346)
                                    {
                                      v307 = v343;
                                      v343 = 0;
                                      if (!v307)
                                      {
                                        goto LABEL_779;
                                      }
                                    }

                                    else
                                    {
                                      v307 = v345;
                                      v343 = off_2838D37C0;
                                      v345 = 0;
                                      if (!v307)
                                      {
                                        goto LABEL_779;
                                      }
                                    }

                                    if (atomic_fetch_add_explicit(v307, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v307, v8);
                                    }
                                  }

LABEL_779:
                                  if (v74)
                                  {
                                    atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
                                    *(a1 + 8) = v63;
                                    *(a1 + 16) = v2;
                                    *a1 = v74;
                                    *(a1 + 24) = 1;
                                    if (atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v74, v8);
                                    }

                                    goto LABEL_33;
                                  }

                                  *(a1 + 8) = v63;
                                  *(a1 + 16) = v2;
                                  *a1 = 0;
LABEL_32:
                                  *(a1 + 24) = 1;
                                  goto LABEL_33;
                                }

LABEL_789:
                                mpark::throw_bad_variant_access(v9);
                              }

                              v265 = *v350;
                              v347 = *v350;
                              v280 = *&v350[8];
                              *v350 = 0;
                              *&v350[8] = 0;
                              *&v348 = v280;
                              v9 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(&v353, a2);
                              v282 = v355;
                              if (v355)
                              {
                                v266 = v309;
                                if (v355 != 1)
                                {
                                  goto LABEL_789;
                                }

                                v74 = v353;
                                if (v353)
                                {
                                  atomic_fetch_add_explicit(v353, 2u, memory_order_relaxed);
                                }

                                v2 = *(&v354 + 1);
                                v314 = v354;
                              }

                              else
                              {
                                v340 = v353;
                                v266 = v309;
                              }

                              std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v353, v281);
                              std::experimental::fundamentals_v3::expected<WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::CompilationMessage>::~expected(v350, v297);
                              if (v282)
                              {
                                v63 = v314;
                                goto LABEL_737;
                              }

LABEL_640:
                              v9 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseCompoundStatement(v350, a2);
                              if (!v351)
                              {
                                v272 = *(a2 + 96) - v311;
                                v353 = v266;
                                *&v354 = __PAIR64__(v272, v311);
                                WGSL::AST::Builder::construct<WGSL::AST::Function,WGSL::SourceSpan,WGSL::AST::Identifier,WTF::ReferenceWrapperVector<WGSL::AST::Parameter,0ul>,WGSL::AST::Expression *,std::reference_wrapper<WGSL::AST::CompoundStatement>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,void>();
                              }

                              if (v351 != 1)
                              {
                                goto LABEL_789;
                              }

                              v74 = *v350;
                              if (*v350)
                              {
                                atomic_fetch_add_explicit(*v350, 2u, memory_order_relaxed);
                                v63 = *&v350[8];
                                v2 = *&v350[16];
                                if (atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v74, v8);
                                  if (!v265)
                                  {
                                    goto LABEL_739;
                                  }
                                }

                                else
                                {
LABEL_737:
                                  if (!v265)
                                  {
                                    goto LABEL_739;
                                  }
                                }
                              }

                              else
                              {
                                v63 = *&v350[8];
                                v2 = *&v350[16];
                                if (!v265)
                                {
                                  goto LABEL_739;
                                }
                              }

                              v347 = 0;
                              LODWORD(v348) = 0;
                              WTF::fastFree(v265, v8);
                              goto LABEL_739;
                            }

                            continue;
                          }
                        }
                      }
                    }

                    v270 = v170;
                    WGSL::toString();
                    WGSL::toString();
                    if (v353)
                    {
                      v271 = v353[1];
                    }

                    else
                    {
                      v271 = 0;
                    }

                    v63 = v309;
                    if (v347)
                    {
                      v290 = v347[1];
                      if (v290 < 0)
                      {
                        goto LABEL_816;
                      }
                    }

                    else
                    {
                      v290 = 0;
                    }

                    v83 = __OFADD__(v290, 12);
                    v291 = v290 + 12;
                    v292 = v83;
                    if ((v271 & 0x80000000) == 0 && (v292 & 1) == 0)
                    {
                      v83 = __OFADD__(v271, v291);
                      v293 = v271 + v291;
                      if (!v83)
                      {
                        v294 = (v293 + 11);
                        if (!__OFADD__(v293, 11))
                        {
                          if (v353)
                          {
                            v295 = v353[4];
                            v296 = (v295 >> 2) & 1;
                            if (!v347 || (v295 & 4) == 0)
                            {
                              goto LABEL_762;
                            }

LABEL_733:
                            v296 = (*(v347 + 16) >> 2) & 1;
                          }

                          else
                          {
                            if (v347)
                            {
                              goto LABEL_733;
                            }

                            v296 = 1;
                          }

LABEL_762:
                          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v294, v296, "Expected a ", 0xBuLL, v353, ", but got a ", 0xCuLL, v347, v350);
                          v74 = *v350;
                          if (*v350)
                          {
                            v305 = v347;
                            v347 = 0;
                            if (v305 && atomic_fetch_add_explicit(v305, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v305, v8);
                            }

                            v306 = v353;
                            v353 = 0;
                            if (v306 && atomic_fetch_add_explicit(v306, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v306, v8);
                            }

                            v2 = v311 | ((*(a2 + 96) - v311) << 32);
                            v264 = v270;
                            goto LABEL_770;
                          }
                        }
                      }
                    }

LABEL_816:
                    __break(0xC471u);
LABEL_817:
                    JUMPOUT(0x2257869B8);
                  }
                }
              }
            }
          }

          WGSL::toString();
          WGSL::toString();
          if (v353)
          {
            v127 = v353[1];
          }

          else
          {
            v127 = 0;
          }

          if (v347)
          {
            v245 = v347[1];
            if (v245 < 0)
            {
              goto LABEL_814;
            }
          }

          else
          {
            v245 = 0;
          }

          v83 = __OFADD__(v245, 12);
          v246 = v245 + 12;
          v247 = v83;
          if ((v127 & 0x80000000) == 0 && (v247 & 1) == 0)
          {
            v83 = __OFADD__(v127, v246);
            v248 = v127 + v246;
            if (!v83)
            {
              v249 = (v248 + 11);
              if (!__OFADD__(v248, 11))
              {
                if (v353)
                {
                  v250 = v353[4];
                  v251 = (v250 >> 2) & 1;
                  if (!v347 || (v250 & 4) == 0)
                  {
                    goto LABEL_685;
                  }

LABEL_594:
                  v251 = (*(v347 + 16) >> 2) & 1;
                }

                else
                {
                  if (v347)
                  {
                    goto LABEL_594;
                  }

                  v251 = 1;
                }

LABEL_685:
                WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v249, v251, "Expected a ", 0xBuLL, v353, ", but got a ", 0xCuLL, v347, v350);
                v74 = *v350;
                if (*v350)
                {
                  v278 = v347;
                  v347 = 0;
                  if (v278 && atomic_fetch_add_explicit(v278, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v278, v8);
                  }

                  v279 = v353;
                  v353 = 0;
                  if (v279 && atomic_fetch_add_explicit(v279, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v279, v8);
                  }

                  v2 = v64 | ((*(a2 + 96) - v64) << 32);
                  goto LABEL_772;
                }
              }
            }
          }

LABEL_814:
          __break(0xC471u);
          JUMPOUT(0x225786A68);
        }
      }
    }

    if (v30 == 34)
    {
LABEL_107:
      WGSL::Parser<WGSL::Lexer<char16_t>>::parseVariableWithAttributes(&v343, a2);
      if (v345)
      {
        if (v345 != 1)
        {
          goto LABEL_789;
        }

        v53 = v343;
        if (!v343)
        {
          *(a1 + 8) = v344;
          *a1 = 0;
          goto LABEL_32;
        }

        atomic_fetch_add_explicit(v343, 2u, memory_order_relaxed);
        *(a1 + 8) = v344;
        *a1 = v53;
        *(a1 + 24) = 1;
        if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_33;
        }

        goto LABEL_111;
      }

      if (*(a2 + 56) != 73)
      {
        *v350 = *(a2 + 56);
        v352 = 1;
        v9 = WGSL::toString();
        if (v352 == 1)
        {
          WGSL::toString();
          WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v317, ", but got a ", 13, &v316, &v353);
          v98 = v316;
          v316 = 0;
          if (v98 && atomic_fetch_add_explicit(v98, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v98, v97);
          }

          v99 = v317;
          v317 = 0;
          if (v99 && atomic_fetch_add_explicit(v99, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v99, v97);
          }

          v100 = v6 | ((*(a2 + 96) - v6) << 32);
          *a1 = v353;
          *(a1 + 8) = v5;
          *(a1 + 16) = v100;
          *(a1 + 24) = 1;
          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v350, v97);
          goto LABEL_33;
        }

        goto LABEL_789;
      }

      *v350 = 73;
      *&v350[4] = *(a2 + 60);
      v352 = 0;
      while (1)
      {
        v77 = *(a2 + 36);
        v78 = (*(a2 + 40) + 1);
        *(a2 + 40) = v78;
        if (v77 <= v78)
        {
          __break(0xC471u);
          JUMPOUT(0x2257869F0);
        }

        v79 = *(a2 + 24) + 32 * v78;
        v75 = *v79;
        *(a2 + 56) = *v79;
        *(a2 + 60) = *(v79 + 4);
        v80 = *v79;
        if (*v79 > 8u)
        {
          goto LABEL_158;
        }

        if (((1 << v80) & 0x38) != 0)
        {
          *(a2 + 80) = *(v79 + 24);
        }

        else if (((1 << v80) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v79 + 24);
        }

        else
        {
          if (v80 != 8)
          {
            goto LABEL_158;
          }

          *(a2 + 80) = 0;
          v81 = *(v79 + 24);
          if (v81)
          {
            atomic_fetch_add_explicit(v81, 2u, memory_order_relaxed);
            v82 = *(a2 + 80);
            *(a2 + 80) = v81;
            if (v82)
            {
              if (atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v82, v8);
              }
            }
          }
        }

        v75 = *(a2 + 56);
LABEL_158:
        v76 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v76;
        if (v75 != 82)
        {
          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v350, v8);
          v110 = v343;
          goto LABEL_683;
        }
      }
    }

    if (v30 != 31)
    {
LABEL_129:
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v62 = v6 | ((*(a2 + 96) - v6) << 32);
      *a1 = *v350;
      *(a1 + 8) = v5;
      *(a1 + 16) = v62;
      goto LABEL_32;
    }

    v41 = *(a2 + 88);
    v42 = *(a2 + 96);
    while (1)
    {
      v45 = *(a2 + 36);
      v46 = (*(a2 + 40) + 1);
      *(a2 + 40) = v46;
      if (v45 <= v46)
      {
        __break(0xC471u);
        JUMPOUT(0x2257869D0);
      }

      v47 = *(a2 + 24) + 32 * v46;
      v43 = *v47;
      *(a2 + 56) = *v47;
      *(a2 + 60) = *(v47 + 4);
      v48 = *v47;
      if (*v47 > 8u)
      {
        goto LABEL_87;
      }

      if (((1 << v48) & 0x38) != 0)
      {
        *(a2 + 80) = *(v47 + 24);
      }

      else if (((1 << v48) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v47 + 24);
      }

      else
      {
        if (v48 != 8)
        {
          goto LABEL_87;
        }

        *(a2 + 80) = 0;
        v49 = *(v47 + 24);
        if (v49)
        {
          atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
          v50 = *(a2 + 80);
          *(a2 + 80) = v49;
          if (v50)
          {
            if (atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v50, v8);
            }
          }
        }
      }

      v43 = *(a2 + 56);
LABEL_87:
      v44 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v44;
      if (v43 != 82)
      {
        v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v343, a2);
        if (v346)
        {
          if (v346 != 1)
          {
            goto LABEL_789;
          }

          v73 = v343;
          if (v343)
          {
            atomic_fetch_add_explicit(v343, 2u, memory_order_relaxed);
          }

          v319 = v344;
          v318 = v73;
LABEL_667:
          v320 = 1;
LABEL_668:
          if (v346 != 255)
          {
            if (v346)
            {
              v9 = v343;
              v343 = 0;
              if (!v9)
              {
                goto LABEL_675;
              }
            }

            else
            {
              v9 = v345;
              v343 = off_2838D37C0;
              v345 = 0;
              if (!v9)
              {
                goto LABEL_675;
              }
            }

            if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v9 = WTF::StringImpl::destroy(v9, v8);
            }
          }

LABEL_675:
          if (v320)
          {
            if (v320 != 1)
            {
              goto LABEL_789;
            }

            v276 = v318;
            if (v318)
            {
              atomic_fetch_add_explicit(v318, 2u, memory_order_relaxed);
              v277 = v320;
              *(a1 + 8) = v319;
              *a1 = v276;
              *(a1 + 24) = 1;
              if (v277 == 255)
              {
                goto LABEL_33;
              }

              v53 = v318;
              v318 = 0;
              if (!v53)
              {
                goto LABEL_33;
              }
            }

            else
            {
              *(a1 + 8) = v319;
              *a1 = 0;
              *(a1 + 24) = 1;
              v53 = v318;
              v318 = 0;
              if (!v53)
              {
                goto LABEL_33;
              }
            }

            if (atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
              goto LABEL_33;
            }

LABEL_111:
            WTF::StringImpl::destroy(v53, v8);
            goto LABEL_33;
          }

          v110 = v318;
LABEL_683:
          *a1 = v110;
          *(a1 + 24) = 0;
LABEL_33:
          if (v323 != 255)
          {
            v10 = v321;
            if (v323)
            {
              v321 = 0;
              if (v10)
              {
LABEL_36:
                if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) != 2)
                {
                  return;
                }

LABEL_619:
                WTF::StringImpl::destroy(v10, v8);
              }
            }

            else if (v321)
            {
              v321 = 0;
              LODWORD(v322) = 0;
              WTF::fastFree(v10, v8);
            }
          }

          return;
        }

        if (*(a2 + 56) == 43)
        {
          v101 = 2;
          while (1)
          {
            v104 = *(a2 + 36);
            v105 = (*(a2 + 40) + 1);
            *(a2 + 40) = v105;
            if (v104 <= v105)
            {
              __break(0xC471u);
              JUMPOUT(0x225786A20);
            }

            v106 = *(a2 + 24) + 32 * v105;
            v102 = *v106;
            *(a2 + 56) = *v106;
            *(a2 + 60) = *(v106 + 4);
            v107 = *v106;
            if (*v106 > 8u)
            {
              goto LABEL_214;
            }

            if (((1 << v107) & 0x38) != 0)
            {
              *(a2 + 80) = *(v106 + 24);
            }

            else if (((1 << v107) & 0xC4) != 0)
            {
              *(a2 + 80) = *(v106 + 24);
            }

            else
            {
              if (v107 != 8)
              {
                goto LABEL_214;
              }

              *(a2 + 80) = 0;
              v108 = *(v106 + 24);
              if (v108)
              {
                atomic_fetch_add_explicit(v108, 2u, memory_order_relaxed);
                v109 = *(a2 + 80);
                *(a2 + 80) = v108;
                if (v109)
                {
                  if (atomic_fetch_add_explicit(v109, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v109, v8);
                  }
                }
              }
            }

            v102 = *(a2 + 56);
LABEL_214:
            v103 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v103;
            if (v102 != 82)
            {
              v310 = v41;
              v308 = 0;
              v312 = 0;
              v334 = 0;
              v335 = 0;
              v333 = 0;
              v315 = v320;
              while (2)
              {
                if (*(a2 + 56) == 44)
                {
                  v221 = v42;
                  v220 = v310;
                  goto LABEL_622;
                }

                v128 = *(a2 + 88);
                v129 = *(a2 + 96);
                WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttributes(&v353, a2);
                if (v355)
                {
                  if (v355 != 1)
                  {
                    goto LABEL_789;
                  }

                  v9 = v353;
                  if (v353)
                  {
                    atomic_fetch_add_explicit(v353, 2u, memory_order_relaxed);
                  }

                  v341 = v354;
                  v340 = v9;
                  v342 = 1;
LABEL_341:
                  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    v9 = WTF::StringImpl::destroy(v9, v8);
                  }

                  goto LABEL_344;
                }

                v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v350, a2);
                if (v352)
                {
                  if (v352 != 1)
                  {
                    goto LABEL_789;
                  }

                  v130 = *v350;
                  if (*v350)
                  {
                    atomic_fetch_add_explicit(*v350, 2u, memory_order_relaxed);
                  }

                  v341 = *&v350[8];
                  v340 = v130;
                  v342 = 1;
                  goto LABEL_332;
                }

                if (*(a2 + 56) != 47)
                {
                  WGSL::toString();
                  WGSL::toString();
                  if (v336)
                  {
                    v139 = *(v336 + 1);
                  }

                  else
                  {
                    v139 = 0;
                  }

                  if (v339)
                  {
                    v142 = *(v339 + 1);
                    if (v142 < 0)
                    {
                      goto LABEL_810;
                    }
                  }

                  else
                  {
                    v142 = 0;
                  }

                  v83 = __OFADD__(v142, 12);
                  v143 = v142 + 12;
                  v144 = v83;
                  if ((v139 & 0x80000000) == 0 && (v144 & 1) == 0)
                  {
                    v83 = __OFADD__(v139, v143);
                    v145 = v139 + v143;
                    if (!v83)
                    {
                      v146 = (v145 + 11);
                      if (!__OFADD__(v145, 11))
                      {
                        if (v336)
                        {
                          v147 = *(v336 + 4);
                          v148 = (v147 >> 2) & 1;
                          if (!v339 || (v147 & 4) == 0)
                          {
                            goto LABEL_324;
                          }

LABEL_322:
                          v148 = (*(v339 + 16) >> 2) & 1;
                        }

                        else
                        {
                          if (v339)
                          {
                            goto LABEL_322;
                          }

                          v148 = 1;
                        }

LABEL_324:
                        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v146, v148, "Expected a ", 0xBuLL, v336, ", but got a ", 0xCuLL, v339, &v347);
                        v149 = v347;
                        if (v347)
                        {
                          v150 = v339;
                          v339 = 0;
                          if (v150 && atomic_fetch_add_explicit(v150, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v150, v8);
                          }

                          v9 = v336;
                          v336 = 0;
                          if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            v9 = WTF::StringImpl::destroy(v9, v8);
                          }

                          v151 = v129 | ((*(a2 + 96) - v129) << 32);
                          v340 = v149;
                          *&v341 = v128;
                          *(&v341 + 1) = v151;
                          v342 = 1;
                          goto LABEL_332;
                        }
                      }
                    }
                  }

LABEL_810:
                  __break(0xC471u);
                  JUMPOUT(0x225786A48);
                }

LABEL_282:
                v133 = *(a2 + 36);
                v134 = (*(a2 + 40) + 1);
                *(a2 + 40) = v134;
                if (v133 <= v134)
                {
                  __break(0xC471u);
                  JUMPOUT(0x225786A08);
                }

                v135 = *(a2 + 24) + 32 * v134;
                v131 = *v135;
                *(a2 + 56) = *v135;
                *(a2 + 60) = *(v135 + 4);
                v136 = *v135;
                if (*v135 <= 8u)
                {
                  if (((1 << v136) & 0x38) != 0)
                  {
                    *(a2 + 80) = *(v135 + 24);
                    goto LABEL_280;
                  }

                  if (((1 << v136) & 0xC4) != 0)
                  {
                    *(a2 + 80) = *(v135 + 24);
                    goto LABEL_280;
                  }

                  if (v136 == 8)
                  {
                    *(a2 + 80) = 0;
                    v137 = *(v135 + 24);
                    if (v137)
                    {
                      atomic_fetch_add_explicit(v137, 2u, memory_order_relaxed);
                      v138 = *(a2 + 80);
                      *(a2 + 80) = v137;
                      if (v138)
                      {
                        if (atomic_fetch_add_explicit(v138, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v138, v8);
                        }
                      }
                    }

LABEL_280:
                    v131 = *(a2 + 56);
                  }
                }

                v132 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v132;
                if (v131 != 82)
                {
                  v9 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(&v347, a2);
                  if (!v349)
                  {
                    v141 = *(a2 + 96) - v129;
                    v336 = v128;
                    v337 = v129;
                    v338 = v141;
                    WGSL::AST::Builder::construct<WGSL::AST::StructureMember,WGSL::SourceSpan,WGSL::AST::Identifier,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,void>();
                  }

                  if (v349 != 1)
                  {
                    goto LABEL_789;
                  }

                  v140 = v347;
                  if (v347)
                  {
                    atomic_fetch_add_explicit(v347, 2u, memory_order_relaxed);
                  }

                  v341 = v348;
                  v340 = v140;
                  v342 = 1;
                  if (v349)
                  {
                    if (v349 != 255)
                    {
                      v9 = v347;
                      v347 = 0;
                      if (v9)
                      {
                        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          v9 = WTF::StringImpl::destroy(v9, v8);
                        }
                      }
                    }
                  }

LABEL_332:
                  if (v352 != 255)
                  {
                    if (v352)
                    {
                      v9 = *v350;
                      *v350 = 0;
                      if (!v9)
                      {
                        goto LABEL_339;
                      }
                    }

                    else
                    {
                      v9 = v351;
                      *v350 = off_2838D37C0;
                      v351 = 0;
                      if (!v9)
                      {
                        goto LABEL_339;
                      }
                    }

                    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      v9 = WTF::StringImpl::destroy(v9, v8);
                    }
                  }

LABEL_339:
                  if (v355 != 255)
                  {
                    v9 = v353;
                    if (v355)
                    {
                      goto LABEL_341;
                    }

                    if (v353)
                    {
                      v9 = WTF::fastFree(v353, v8);
                    }
                  }

LABEL_344:
                  if (!v342)
                  {
                    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v350, &v333, v340 + 6);
                    if (v350[16])
                    {
                      if (v312 == v335)
                      {
                        v153 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v334, v312 + 1, &v340);
                        v154 = HIDWORD(v335);
                        v308 = v334;
                        *(v334 + HIDWORD(v335)) = *v153;
                      }

                      else
                      {
                        *(v308 + v312) = v340;
                        v154 = HIDWORD(v335);
                      }

                      HIDWORD(v335) = v154 + 1;
                      v312 = v154 + 1;
                      if ((v154 + 1) < 0x400)
                      {
                        if (*(a2 + 56) != 48)
                        {
                          v152 = 7;
                          goto LABEL_381;
                        }

                        while (2)
                        {
                          v162 = *(a2 + 36);
                          v163 = (*(a2 + 40) + 1);
                          *(a2 + 40) = v163;
                          if (v162 <= v163)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x225786A10);
                          }

                          v164 = *(a2 + 24) + 32 * v163;
                          v160 = *v164;
                          *(a2 + 56) = *v164;
                          *(a2 + 60) = *(v164 + 4);
                          v165 = *v164;
                          if (*v164 <= 8u)
                          {
                            if (((1 << v165) & 0x38) != 0)
                            {
                              *(a2 + 80) = *(v164 + 24);
                              goto LABEL_368;
                            }

                            if (((1 << v165) & 0xC4) != 0)
                            {
                              *(a2 + 80) = *(v164 + 24);
                              goto LABEL_368;
                            }

                            if (v165 == 8)
                            {
                              *(a2 + 80) = 0;
                              v166 = *(v164 + 24);
                              if (v166)
                              {
                                atomic_fetch_add_explicit(v166, 2u, memory_order_relaxed);
                                v167 = *(a2 + 80);
                                *(a2 + 80) = v166;
                                if (v167)
                                {
                                  if (atomic_fetch_add_explicit(v167, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v167, v8);
                                  }
                                }
                              }

LABEL_368:
                              v160 = *(a2 + 56);
                            }
                          }

                          v161 = *(a2 + 68);
                          *(a2 + 88) = *(a2 + 60);
                          *(a2 + 96) = v161;
                          if (v160 != 82)
                          {
                            v152 = 0;
                            goto LABEL_381;
                          }

                          continue;
                        }
                      }

                      WTF::String::number(0x3FF);
                      WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("struct cannot have more than ", 30, &v326, " members", 9, &v353);
                      v169 = v42 | ((*(a2 + 96) - v42) << 32);
                      v101 = v353;
                      *&v319 = v310;
                      *(&v319 + 1) = v169;
                      v353 = 0;
                      v159 = v326;
                      v326 = 0;
                      if (!v159)
                      {
LABEL_362:
                        v315 = 1;
                        v152 = 1;
                        goto LABEL_381;
                      }
                    }

                    else
                    {
                      v331 = *(v340 + 2);
                      v330 = off_2838D37C0;
                      v155 = *(v340 + 6);
                      if (v155)
                      {
                        atomic_fetch_add_explicit(v155, 2u, memory_order_relaxed);
                      }

                      v332 = v155;
                      v328 = v344;
                      v327 = off_2838D37C0;
                      v156 = v345;
                      if (v345)
                      {
                        atomic_fetch_add_explicit(v345, 2u, memory_order_relaxed);
                        v155 = v332;
                      }

                      v329 = v156;
                      WTF::makeString<WTF::ASCIILiteral,WGSL::AST::Identifier,WTF::ASCIILiteral,WGSL::AST::Identifier,char>(&v353, v155, v156);
                      v157 = v42 | ((*(a2 + 96) - v42) << 32);
                      v101 = v353;
                      *&v319 = v310;
                      *(&v319 + 1) = v157;
                      v158 = v329;
                      v327 = off_2838D37C0;
                      v329 = 0;
                      if (v158 && atomic_fetch_add_explicit(v158, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v158, v8);
                      }

                      v159 = v332;
                      v330 = off_2838D37C0;
                      v332 = 0;
                      if (!v159)
                      {
                        goto LABEL_362;
                      }
                    }

                    if (atomic_fetch_add_explicit(v159, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v159, v8);
                    }

                    goto LABEL_362;
                  }

                  if (v342 != 1)
                  {
                    goto LABEL_789;
                  }

                  v101 = v340;
                  if (v340)
                  {
                    atomic_fetch_add_explicit(v340, 2u, memory_order_relaxed);
                  }

                  v319 = v341;
                  v315 = 1;
                  v152 = 1;
LABEL_381:
                  if (v342)
                  {
                    if (v342 != 255)
                    {
                      v168 = v340;
                      v340 = 0;
                      if (v168)
                      {
                        if (atomic_fetch_add_explicit(v168, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v168, v8);
                        }
                      }
                    }
                  }

                  if (v152)
                  {
                    v221 = v42;
                    v220 = v310;
                    if (v152 != 7)
                    {
                      v320 = v315;
                      v318 = v101;
                      goto LABEL_750;
                    }

LABEL_622:
                    v320 = v315;
                    v318 = v101;
                    if (!v312)
                    {
                      WTF::StringImpl::createWithoutCopyingNonEmpty();
                      v268 = v221 | ((*(a2 + 96) - v221) << 32);
                      goto LABEL_749;
                    }

                    if (*(a2 + 56) == 44)
                    {
                      while (1)
                      {
                        v258 = *(a2 + 36);
                        v259 = (*(a2 + 40) + 1);
                        *(a2 + 40) = v259;
                        if (v258 <= v259)
                        {
                          __break(0xC471u);
                          JUMPOUT(0x225786A58);
                        }

                        v260 = *(a2 + 24) + 32 * v259;
                        v256 = *v260;
                        *(a2 + 56) = *v260;
                        *(a2 + 60) = *(v260 + 4);
                        v261 = *v260;
                        if (*v260 <= 8u)
                        {
                          if (((1 << v261) & 0x38) != 0)
                          {
                            *(a2 + 80) = *(v260 + 24);
                          }

                          else if (((1 << v261) & 0xC4) != 0)
                          {
                            *(a2 + 80) = *(v260 + 24);
                          }

                          else
                          {
                            if (v261 != 8)
                            {
                              goto LABEL_627;
                            }

                            *(a2 + 80) = 0;
                            v262 = *(v260 + 24);
                            if (v262)
                            {
                              atomic_fetch_add_explicit(v262, 2u, memory_order_relaxed);
                              v263 = *(a2 + 80);
                              *(a2 + 80) = v262;
                              if (v263)
                              {
                                if (atomic_fetch_add_explicit(v263, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v263, v8);
                                }
                              }
                            }
                          }

                          v256 = *(a2 + 56);
                        }

LABEL_627:
                        v257 = *(a2 + 68);
                        *(a2 + 88) = *(a2 + 60);
                        *(a2 + 96) = v257;
                        if (v256 != 82)
                        {
                          *v350 = v220;
                          *&v350[8] = v221;
                          *&v350[12] = v257 - v221;
                          LOBYTE(v353) = 0;
                          WGSL::AST::Builder::construct<WGSL::AST::Structure,WGSL::SourceSpan,WGSL::AST::Identifier,WTF::ReferenceWrapperVector<WGSL::AST::StructureMember,0ul>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::AST::StructureRole,void>();
                        }
                      }
                    }

                    WGSL::toString();
                    WGSL::toString();
                    if (v353)
                    {
                      v269 = v353[1];
                    }

                    else
                    {
                      v269 = 0;
                    }

                    if (v347)
                    {
                      v283 = v347[1];
                      if (v283 < 0)
                      {
                        goto LABEL_815;
                      }
                    }

                    else
                    {
                      v283 = 0;
                    }

                    v83 = __OFADD__(v283, 12);
                    v284 = v283 + 12;
                    v285 = v83;
                    if ((v269 & 0x80000000) == 0 && (v285 & 1) == 0)
                    {
                      v83 = __OFADD__(v269, v284);
                      v286 = v269 + v284;
                      if (!v83)
                      {
                        v287 = (v286 + 11);
                        if (!__OFADD__(v286, 11))
                        {
                          if (v353)
                          {
                            v288 = v353[4];
                            v289 = (v288 >> 2) & 1;
                            if (!v347 || (v288 & 4) == 0)
                            {
LABEL_741:
                              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v287, v289, "Expected a ", 0xBuLL, v353, ", but got a ", 0xCuLL, v347, v350);
                              v298 = *v350;
                              if (*v350)
                              {
                                v299 = v347;
                                v347 = 0;
                                if (v299 && atomic_fetch_add_explicit(v299, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v299, v8);
                                }

                                v300 = v353;
                                v353 = 0;
                                if (v300 && atomic_fetch_add_explicit(v300, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v300, v8);
                                }

                                v268 = v221 | ((*(a2 + 96) - v221) << 32);
                                v318 = v298;
LABEL_749:
                                *&v319 = v220;
                                *(&v319 + 1) = v268;
                                v320 = 1;
LABEL_750:
                                v301 = v333;
                                if (v333)
                                {
                                  v302 = *(v333 - 1);
                                  if (v302)
                                  {
                                    v303 = v333;
                                    do
                                    {
                                      v304 = *v303;
                                      if (*v303 != -1)
                                      {
                                        *v303 = 0;
                                        if (v304)
                                        {
                                          if (atomic_fetch_add_explicit(v304, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                          {
                                            WTF::StringImpl::destroy(v304, v8);
                                          }
                                        }
                                      }

                                      ++v303;
                                      --v302;
                                    }

                                    while (v302);
                                  }

                                  WTF::fastFree((v301 - 16), v8);
                                }

                                v9 = v334;
                                if (v334)
                                {
                                  v334 = 0;
                                  LODWORD(v335) = 0;
                                  v9 = WTF::fastFree(v9, v8);
                                }

                                goto LABEL_668;
                              }

                              goto LABEL_815;
                            }
                          }

                          else if (!v347)
                          {
                            v289 = 1;
                            goto LABEL_741;
                          }

                          v289 = (*(v347 + 16) >> 2) & 1;
                          goto LABEL_741;
                        }
                      }
                    }

LABEL_815:
                    __break(0xC471u);
                    JUMPOUT(0x225786A70);
                  }

                  continue;
                }

                goto LABEL_282;
              }
            }
          }
        }

        WGSL::toString();
        WGSL::toString();
        if (v353)
        {
          v126 = v353[1];
        }

        else
        {
          v126 = 0;
        }

        if (v347)
        {
          v238 = v347[1];
          if (v238 < 0)
          {
            goto LABEL_813;
          }
        }

        else
        {
          v238 = 0;
        }

        v83 = __OFADD__(v238, 12);
        v239 = v238 + 12;
        v240 = v83;
        if ((v126 & 0x80000000) == 0 && (v240 & 1) == 0)
        {
          v83 = __OFADD__(v126, v239);
          v241 = v126 + v239;
          if (!v83)
          {
            v242 = (v241 + 11);
            if (!__OFADD__(v241, 11))
            {
              if (v353)
              {
                v243 = v353[4];
                v244 = (v243 >> 2) & 1;
                if (!v347 || (v243 & 4) == 0)
                {
                  goto LABEL_659;
                }

LABEL_592:
                v244 = (*(v347 + 16) >> 2) & 1;
              }

              else
              {
                if (v347)
                {
                  goto LABEL_592;
                }

                v244 = 1;
              }

LABEL_659:
              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v242, v244, "Expected a ", 0xBuLL, v353, ", but got a ", 0xCuLL, v347, v350);
              v273 = *v350;
              if (*v350)
              {
                v274 = v347;
                v347 = 0;
                if (v274 && atomic_fetch_add_explicit(v274, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v274, v8);
                }

                v9 = v353;
                v353 = 0;
                if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  v9 = WTF::StringImpl::destroy(v9, v8);
                }

                v275 = v42 | ((*(a2 + 96) - v42) << 32);
                v318 = v273;
                *&v319 = v41;
                *(&v319 + 1) = v275;
                goto LABEL_667;
              }
            }
          }
        }

LABEL_813:
        __break(0xC471u);
        JUMPOUT(0x225786A60);
      }
    }
  }

  do
  {
    v13 = *(a2 + 36);
    v14 = (*(a2 + 40) + 1);
    *(a2 + 40) = v14;
    if (v13 <= v14)
    {
      __break(0xC471u);
      goto LABEL_817;
    }

    v15 = *(a2 + 24) + 32 * v14;
    v11 = *v15;
    *(a2 + 56) = *v15;
    *(a2 + 60) = *(v15 + 4);
    v16 = *v15;
    if (*v15 <= 8u)
    {
      if (((1 << v16) & 0x38) != 0)
      {
        *(a2 + 80) = *(v15 + 24);
LABEL_15:
        v11 = *(a2 + 56);
        goto LABEL_16;
      }

      if (((1 << v16) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v15 + 24);
        goto LABEL_15;
      }

      if (v16 == 8)
      {
        *(a2 + 80) = 0;
        v17 = *(v15 + 24);
        if (v17)
        {
          atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
          v18 = *(a2 + 80);
          *(a2 + 80) = v17;
          if (v18)
          {
            if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, a2);
            }
          }
        }

        goto LABEL_15;
      }
    }

LABEL_16:
    v12 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v12;
  }

  while (v11 == 82);
  v9 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v350, a2);
  if (v352)
  {
    if (v352 != 1)
    {
      goto LABEL_789;
    }

    v20 = *v350;
    if (*v350)
    {
      atomic_fetch_add_explicit(*v350, 2u, memory_order_relaxed);
    }

    v5 = *&v350[8];
    v21 = *&v350[16];
    goto LABEL_609;
  }

  if (*(a2 + 56) != 49)
  {
    WGSL::toString();
    WGSL::toString();
    if (v353)
    {
      v51 = v353[1];
      if (v347)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v51 = 0;
      if (v347)
      {
LABEL_100:
        v52 = v347[1];
        if (v52 < 0)
        {
          goto LABEL_801;
        }

LABEL_186:
        v83 = __OFADD__(v52, 12);
        v90 = v52 + 12;
        v91 = v83;
        if (v51 < 0)
        {
          goto LABEL_801;
        }

        if (v91)
        {
          goto LABEL_801;
        }

        v83 = __OFADD__(v51, v90);
        v92 = v51 + v90;
        if (v83)
        {
          goto LABEL_801;
        }

        v93 = (v92 + 11);
        if (__OFADD__(v92, 11))
        {
          goto LABEL_801;
        }

        if (v353)
        {
          v94 = v353[4];
          v95 = (v94 >> 2) & 1;
          if (!v347 || (v94 & 4) == 0)
          {
LABEL_252:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v93, v95, "Expected a ", 0xBuLL, v353, ", but got a ", 0xCuLL, v347, &v343);
            v20 = v343;
            if (v343)
            {
              v124 = v347;
              v347 = 0;
              if (v124 && atomic_fetch_add_explicit(v124, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v124, v8);
              }

              v125 = v353;
              v353 = 0;
              if (v125 && atomic_fetch_add_explicit(v125, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v125, v8);
              }

              v21 = v6 | ((*(a2 + 96) - v6) << 32);
              goto LABEL_609;
            }

LABEL_801:
            __break(0xC471u);
            JUMPOUT(0x225786A00);
          }
        }

        else if (!v347)
        {
          v95 = 1;
          goto LABEL_252;
        }

        v95 = (*(v347 + 16) >> 2) & 1;
        goto LABEL_252;
      }
    }

    v52 = 0;
    goto LABEL_186;
  }

  while (2)
  {
    v33 = *(a2 + 36);
    v34 = (*(a2 + 40) + 1);
    *(a2 + 40) = v34;
    if (v33 <= v34)
    {
      __break(0xC471u);
      JUMPOUT(0x2257869C8);
    }

    v35 = *(a2 + 24) + 32 * v34;
    v31 = *v35;
    *(a2 + 56) = *v35;
    *(a2 + 60) = *(v35 + 4);
    v36 = *v35;
    if (*v35 <= 8u)
    {
      if (((1 << v36) & 0x38) != 0)
      {
        *(a2 + 80) = *(v35 + 24);
        goto LABEL_66;
      }

      if (((1 << v36) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v35 + 24);
        goto LABEL_66;
      }

      if (v36 == 8)
      {
        *(a2 + 80) = 0;
        v37 = *(v35 + 24);
        if (v37)
        {
          atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
          v38 = *(a2 + 80);
          *(a2 + 80) = v37;
          if (v38)
          {
            if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v38, v8);
            }
          }
        }

LABEL_66:
        v31 = *(a2 + 56);
      }
    }

    v32 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v32;
    if (v31 == 82)
    {
      continue;
    }

    break;
  }

  v9 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(&v343, a2);
  if (!v345)
  {
    if (*(a2 + 56) == 73)
    {
      while (1)
      {
        v56 = *(a2 + 36);
        v57 = (*(a2 + 40) + 1);
        *(a2 + 40) = v57;
        if (v56 <= v57)
        {
          __break(0xC471u);
          JUMPOUT(0x2257869E8);
        }

        v58 = *(a2 + 24) + 32 * v57;
        v54 = *v58;
        *(a2 + 56) = *v58;
        *(a2 + 60) = *(v58 + 4);
        v59 = *v58;
        if (*v58 <= 8u)
        {
          if (((1 << v59) & 0x38) != 0)
          {
            *(a2 + 80) = *(v58 + 24);
          }

          else if (((1 << v59) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v58 + 24);
          }

          else
          {
            if (v59 != 8)
            {
              goto LABEL_118;
            }

            *(a2 + 80) = 0;
            v60 = *(v58 + 24);
            if (v60)
            {
              atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
              v61 = *(a2 + 80);
              *(a2 + 80) = v60;
              if (v61)
              {
                if (atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v61, v8);
                }
              }
            }
          }

          v54 = *(a2 + 56);
        }

LABEL_118:
        v55 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v55;
        if (v54 != 82)
        {
          v353 = v5;
          LODWORD(v354) = v6;
          DWORD1(v354) = v55 - v6;
          WGSL::AST::Builder::construct<WGSL::AST::TypeAlias,WGSL::SourceSpan,WGSL::AST::Identifier,std::reference_wrapper<WGSL::AST::Expression>,void>();
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v347)
    {
      v96 = v347[1];
    }

    else
    {
      v96 = 0;
    }

    if (v340)
    {
      v213 = *(v340 + 1);
      if (v213 < 0)
      {
        goto LABEL_808;
      }
    }

    else
    {
      v213 = 0;
    }

    v83 = __OFADD__(v213, 12);
    v214 = v213 + 12;
    v215 = v83;
    if (v96 < 0 || (v215 & 1) != 0 || (v83 = __OFADD__(v96, v214), v216 = v96 + v214, v83) || (v217 = (v216 + 11), __OFADD__(v216, 11)))
    {
LABEL_808:
      __break(0xC471u);
      JUMPOUT(0x225786A38);
    }

    if (v347)
    {
      v218 = v347[4];
      v219 = (v218 >> 2) & 1;
      if (!v340 || (v218 & 4) == 0)
      {
LABEL_596:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v217, v219, "Expected a ", 0xBuLL, v347, ", but got a ", 0xCuLL, v340, &v353);
        v20 = v353;
        if (v353)
        {
          v252 = v340;
          v340 = 0;
          if (v252 && atomic_fetch_add_explicit(v252, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v252, v8);
          }

          v253 = v347;
          v347 = 0;
          if (v253 && atomic_fetch_add_explicit(v253, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v253, v8);
          }

          v21 = v6 | ((*(a2 + 96) - v6) << 32);
          goto LABEL_604;
        }

        goto LABEL_808;
      }
    }

    else if (!v340)
    {
      v219 = 1;
      goto LABEL_596;
    }

    v219 = (*(v340 + 16) >> 2) & 1;
    goto LABEL_596;
  }

  if (v345 != 1)
  {
    goto LABEL_789;
  }

  v20 = v343;
  if (v343)
  {
    atomic_fetch_add_explicit(v343, 2u, memory_order_relaxed);
  }

  v21 = *(&v344 + 1);
  v5 = v344;
LABEL_604:
  if (v345)
  {
    if (v345 != 255)
    {
      v254 = v343;
      v343 = 0;
      if (v254)
      {
        if (atomic_fetch_add_explicit(v254, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v254, v8);
        }
      }
    }
  }

LABEL_609:
  if (v352 != 255)
  {
    if (v352)
    {
      v255 = *v350;
      *v350 = 0;
      if (!v255)
      {
        goto LABEL_616;
      }
    }

    else
    {
      v255 = v351;
      *v350 = off_2838D37C0;
      v351 = 0;
      if (!v255)
      {
        goto LABEL_616;
      }
    }

    if (atomic_fetch_add_explicit(v255, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v255, v8);
    }
  }

LABEL_616:
  if (!v20)
  {
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = v21;
    goto LABEL_250;
  }

  atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
  *a1 = v20;
  *(a1 + 8) = v5;
  *(a1 + 16) = v21;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v10 = v20;
    goto LABEL_619;
  }
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<char16_t>>::parseConstAssert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  if (*(a2 + 56) != 14)
  {
    WGSL::toString();
    WGSL::toString();
    if (v57)
    {
      v15 = *(v57 + 1);
      if (v56)
      {
LABEL_18:
        v16 = *(v56 + 1);
        if (v16 < 0)
        {
          goto LABEL_103;
        }

        v14 = __OFADD__(v16, 12);
        v17 = v16 + 12;
        v18 = v14;
        if (v15 < 0)
        {
          goto LABEL_103;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v15 = 0;
      if (v56)
      {
        goto LABEL_18;
      }
    }

    v17 = 12;
    v18 = v14;
    if (v15 < 0)
    {
      goto LABEL_103;
    }

LABEL_49:
    if (v18)
    {
      goto LABEL_103;
    }

    v14 = __OFADD__(v15, v17);
    v30 = v15 + v17;
    if (v14)
    {
      goto LABEL_103;
    }

    v31 = (v30 + 11);
    if (__OFADD__(v30, 11))
    {
      goto LABEL_103;
    }

    if (v57)
    {
      v32 = *(v57 + 4);
      v33 = (v32 >> 2) & 1;
      if (!v56 || (v32 & 4) == 0)
      {
LABEL_68:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v31, v33, "Expected a ", 0xBuLL, v57, ", but got a ", 0xCuLL, v56, &v53);
        v40 = v53;
        if (v53)
        {
          v41 = v56;
          v56 = 0;
          if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v41, v39);
          }

          result = v57;
          v57 = 0;
          if (!result)
          {
            goto LABEL_75;
          }

LABEL_73:
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v39);
          }

LABEL_75:
          v42 = v5 | ((*(a2 + 96) - v5) << 32);
          *a1 = v40;
          *(a1 + 8) = v4;
          *(a1 + 16) = v42;
LABEL_76:
          *(a1 + 24) = 1;
          return result;
        }

LABEL_103:
        __break(0xC471u);
        JUMPOUT(0x225786F28);
      }
    }

    else if (!v56)
    {
      v33 = 1;
      goto LABEL_68;
    }

    v33 = (*(v56 + 16) >> 2) & 1;
    goto LABEL_68;
  }

  do
  {
    v8 = *(a2 + 36);
    v9 = (*(a2 + 40) + 1);
    *(a2 + 40) = v9;
    if (v8 <= v9)
    {
      __break(0xC471u);
      goto LABEL_105;
    }

    v10 = *(a2 + 24) + 32 * v9;
    v6 = *v10;
    *(a2 + 56) = *v10;
    *(a2 + 60) = *(v10 + 4);
    v11 = *v10;
    if (*v10 <= 8u)
    {
      if (((1 << v11) & 0x38) != 0)
      {
        *(a2 + 80) = *(v10 + 24);
LABEL_4:
        v6 = *(a2 + 56);
        goto LABEL_5;
      }

      if (((1 << v11) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v10 + 24);
        goto LABEL_4;
      }

      if (v11 == 8)
      {
        *(a2 + 80) = 0;
        v12 = *(v10 + 24);
        if (v12)
        {
          atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
          v13 = *(a2 + 80);
          *(a2 + 80) = v12;
          if (v13)
          {
            if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, a2);
            }
          }
        }

        goto LABEL_4;
      }
    }

LABEL_5:
    v7 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v7;
  }

  while (v6 == 82);
  v19 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v53, a2);
  if (!v55)
  {
    if (*(a2 + 56) == 73)
    {
      while (1)
      {
        v24 = *(a2 + 36);
        v25 = (*(a2 + 40) + 1);
        *(a2 + 40) = v25;
        if (v24 <= v25)
        {
          __break(0xC471u);
          JUMPOUT(0x225786F20);
        }

        v26 = *(a2 + 24) + 32 * v25;
        v22 = *v26;
        *(a2 + 56) = *v26;
        *(a2 + 60) = *(v26 + 4);
        v27 = *v26;
        if (*v26 <= 8u)
        {
          if (((1 << v27) & 0x38) != 0)
          {
            *(a2 + 80) = *(v26 + 24);
          }

          else if (((1 << v27) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v26 + 24);
          }

          else
          {
            if (v27 != 8)
            {
              goto LABEL_33;
            }

            *(a2 + 80) = 0;
            v28 = *(v26 + 24);
            if (v28)
            {
              atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
              v29 = *(a2 + 80);
              *(a2 + 80) = v28;
              if (v29)
              {
                if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v20);
                }
              }
            }
          }

          v22 = *(a2 + 56);
        }

LABEL_33:
        v23 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v23;
        if (v22 != 82)
        {
          v48 = v4;
          v49 = v5;
          v50 = v23 - v5;
          WGSL::AST::Builder::construct<WGSL::AST::ConstAssert,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>();
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v52)
    {
      v35 = *(v52 + 1);
      if (v51)
      {
LABEL_60:
        v36 = *(v51 + 1);
        if (v36 < 0)
        {
          goto LABEL_104;
        }

        v14 = __OFADD__(v36, 12);
        v37 = v36 + 12;
        v38 = v14;
        if (v35 < 0)
        {
          goto LABEL_104;
        }

LABEL_83:
        if (v38)
        {
          goto LABEL_104;
        }

        v14 = __OFADD__(v35, v37);
        v43 = v35 + v37;
        if (v14)
        {
          goto LABEL_104;
        }

        v44 = (v43 + 11);
        if (__OFADD__(v43, 11))
        {
          goto LABEL_104;
        }

        if (v52)
        {
          v45 = *(v52 + 4);
          v46 = (v45 >> 2) & 1;
          if (!v51 || (v45 & 4) == 0)
          {
LABEL_93:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v44, v46, "Expected a ", 0xBuLL, v52, ", but got a ", 0xCuLL, v51, &v48);
            v40 = v48;
            if (v48)
            {
              v47 = v51;
              v51 = 0;
              if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v47, v39);
              }

              result = v52;
              v52 = 0;
              if (!result)
              {
                goto LABEL_75;
              }

              goto LABEL_73;
            }

LABEL_104:
            __break(0xC471u);
LABEL_105:
            JUMPOUT(0x225786F18);
          }
        }

        else if (!v51)
        {
          v46 = 1;
          goto LABEL_93;
        }

        v46 = (*(v51 + 16) >> 2) & 1;
        goto LABEL_93;
      }
    }

    else
    {
      v35 = 0;
      if (v51)
      {
        goto LABEL_60;
      }
    }

    v37 = 12;
    if (v34)
    {
      v38 = 1;
    }

    else
    {
      v38 = 0;
    }

    if (v35 < 0)
    {
      goto LABEL_104;
    }

    goto LABEL_83;
  }

  if (v55 != 1)
  {
    mpark::throw_bad_variant_access(v19);
  }

  result = v53;
  if (!v53)
  {
    *(a1 + 8) = v54;
    *a1 = 0;
    goto LABEL_76;
  }

  atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
  *(a1 + 8) = v54;
  *a1 = result;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v20);
  }

  return result;
}

void WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttributes(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v18 = 0;
  v19 = 0;
  v6 = *a1;
  v7 = *(a1 + 24);
  do
  {
    if (*(a2 + 56) != 40)
    {
      *a1 = v4;
      *(a1 + 8) = v19;
      *(a1 + 12) = v5;
      *(a1 + 24) = 0;
      return;
    }

    WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttribute(&v15, a2);
    v10 = v17;
    if (!v17)
    {
      if (v5 == v19)
      {
        v12 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v18, v5 + 1, &v15);
        v13 = HIDWORD(v19);
        v4 = v18;
        *(v18 + HIDWORD(v19)) = *v12;
        v5 = v13 + 1;
        HIDWORD(v19) = v13 + 1;
        v11 = v17;
        if (!v17)
        {
          continue;
        }
      }

      else
      {
        *(v4 + v5++) = v15;
        HIDWORD(v19) = v5;
        v11 = v17;
        if (!v17)
        {
          continue;
        }
      }

LABEL_14:
      if (v11 != 255)
      {
        v14 = v15;
        v15 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v9);
          }
        }
      }

      continue;
    }

    if (v17 != 1)
    {
      *(a1 + 24) = v7;
      *a1 = v6;
      mpark::throw_bad_variant_access(v8);
    }

    v6 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    }

    *(a1 + 8) = v16;
    v7 = 1;
    v11 = v17;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  while (!v10);
  *(a1 + 24) = v7;
  *a1 = v6;
  if (v4)
  {
    v18 = 0;
    LODWORD(v19) = 0;
    WTF::fastFree(v4, v9);
  }
}

double WGSL::Parser<WGSL::Lexer<char16_t>>::parseVariableWithAttributes(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v6 = *(a2 + 56);
  if (v6 > 0x22)
  {
    goto LABEL_26;
  }

  if (((1 << v6) & 0x414002000) == 0)
  {
    if (v6 == 8)
    {
      v16 = *(a2 + 80);
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
        if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, a2);
        }
      }
    }

LABEL_26:
    memset(v167, 0, 20);
    v167[20] = 1;
    WTF::StringBuilder::append();
    WGSL::TemplateTypes<(WGSL::TokenType)13,(WGSL::TokenType)28,(WGSL::TokenType)26,(WGSL::TokenType)34>::appendNameTo(v167);
    WGSL::toString();
    v162 = "], but got a ";
    *&v163 = 13;
    v159 = v157;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>(v167, &v162, &v159);
    if (v157 && atomic_fetch_add_explicit(v157, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v157, v17);
    }

    v19 = *v167;
    if (*v167)
    {
      v20 = v5 | ((*(a2 + 96) - v5) << 32);
    }

    else
    {
      WTF::StringBuilder::shrinkToFit(v167);
      WTF::StringBuilder::reifyString(v167);
      v19 = *v167;
      v20 = v5 | ((*(a2 + 96) - v5) << 32);
      if (!*v167)
      {
LABEL_84:
        *a1 = v19;
        *(a1 + 8) = v4;
        *(a1 + 16) = v20;
        *(a1 + 24) = 1;
        v48 = *&v167[8];
        *&v167[8] = 0;
        if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v48, v17);
        }

LABEL_346:
        v116 = *v167;
        *v167 = 0;
        if (v116)
        {
          goto LABEL_347;
        }

        return result;
      }
    }

    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    goto LABEL_84;
  }

  do
  {
    v9 = *(a2 + 36);
    v10 = (*(a2 + 40) + 1);
    *(a2 + 40) = v10;
    if (v9 <= v10)
    {
      __break(0xC471u);
      goto LABEL_370;
    }

    v11 = *(a2 + 24) + 32 * v10;
    v7 = *v11;
    *(a2 + 56) = *v11;
    *(a2 + 60) = *(v11 + 4);
    v12 = *v11;
    if (*v11 <= 8u)
    {
      if (((1 << v12) & 0x38) != 0)
      {
        *(a2 + 80) = *(v11 + 24);
LABEL_5:
        v7 = *(a2 + 56);
        goto LABEL_6;
      }

      if (((1 << v12) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v11 + 24);
        goto LABEL_5;
      }

      if (v12 == 8)
      {
        *(a2 + 80) = 0;
        v13 = *(v11 + 24);
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          v14 = *(a2 + 80);
          *(a2 + 80) = v13;
          if (v14)
          {
            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, a2);
            }
          }
        }

        goto LABEL_5;
      }
    }

LABEL_6:
    v8 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v8;
  }

  while (v7 == 82);
  if (v6 == 13)
  {
    v15 = 0;
    v154 = 1;
    if (v7 == 83)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

  if (v6 == 28)
  {
    v154 = 0;
    v15 = 2;
    if (v7 == 83)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

  if (v6 != 26)
  {
    v154 = 0;
    v15 = 3;
    if (v7 != 83)
    {
      goto LABEL_64;
    }

LABEL_32:
    v153 = *(a2 + 88);
    while (1)
    {
      v23 = *(a2 + 36);
      v24 = (*(a2 + 40) + 1);
      *(a2 + 40) = v24;
      if (v23 <= v24)
      {
        __break(0xC471u);
        JUMPOUT(0x225788450);
      }

      v25 = *(a2 + 24) + 32 * v24;
      v21 = *v25;
      *(a2 + 56) = *v25;
      *(a2 + 60) = *(v25 + 4);
      v26 = *v25;
      if (*v25 > 8u)
      {
        goto LABEL_35;
      }

      if (((1 << v26) & 0x38) != 0)
      {
        *(a2 + 80) = *(v25 + 24);
      }

      else if (((1 << v26) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v25 + 24);
      }

      else
      {
        if (v26 != 8)
        {
          goto LABEL_35;
        }

        *(a2 + 80) = 0;
        v27 = *(v25 + 24);
        if (v27)
        {
          atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
          v28 = *(a2 + 80);
          *(a2 + 80) = v27;
          if (v28)
          {
            if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v28, a2);
            }
          }
        }
      }

      v21 = *(a2 + 56);
LABEL_35:
      v22 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v22;
      if (v21 != 82)
      {
        v29 = *(a2 + 88);
        if (v21 == 8)
        {
          *v167 = 8;
          *&v167[4] = *(a2 + 60);
          v168 = 0;
          v30 = *(a2 + 80);
          if (v30)
          {
            atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
            v168 = v30;
          }

          v169 = 0;
          while (2)
          {
            v33 = *(a2 + 36);
            v34 = (*(a2 + 40) + 1);
            *(a2 + 40) = v34;
            if (v33 <= v34)
            {
              __break(0xC471u);
              JUMPOUT(0x225788458);
            }

            v35 = *(a2 + 24) + 32 * v34;
            v31 = *v35;
            *(a2 + 56) = *v35;
            *(a2 + 60) = *(v35 + 4);
            v36 = *v35;
            if (*v35 <= 8u)
            {
              if (((1 << v36) & 0x38) != 0)
              {
                *(a2 + 80) = *(v35 + 24);
                goto LABEL_51;
              }

              if (((1 << v36) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v35 + 24);
                goto LABEL_51;
              }

              if (v36 == 8)
              {
                *(a2 + 80) = 0;
                v37 = *(v35 + 24);
                if (v37)
                {
                  atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
                  v38 = *(a2 + 80);
                  *(a2 + 80) = v37;
                  if (v38)
                  {
                    if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v38, a2);
                    }
                  }
                }

LABEL_51:
                v31 = *(a2 + 56);
              }
            }

            v32 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v32;
            if (v31 == 82)
            {
              continue;
            }

            break;
          }

          v39 = WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,WGSL::AddressSpace> [6]>::tryGet<WTF::String>(WGSL::parseAddressSpace(WTF::String const&)::__map, &v168);
          if (v39 && *v39 != 1)
          {
            v47 = 0;
            LOBYTE(v162) = *v39;
          }

          else
          {
            v39 = WTF::StringImpl::createWithoutCopyingNonEmpty();
            v46 = v22 | ((*(a2 + 96) - v22) << 32);
            *&v163 = v29;
            *(&v163 + 1) = v46;
            v47 = 1;
          }

          v164 = v47;
          v53 = v169;
          if (v169 != 255)
          {
            goto LABEL_103;
          }

LABEL_171:
          if (v47)
          {
            goto LABEL_172;
          }

LABEL_109:
          v54 = *(a2 + 56);
          if (v54 == 48)
          {
            if (v162 != 3)
            {
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v72 = v8 | ((*(a2 + 96) - v8) << 32);
              goto LABEL_249;
            }

            while (2)
            {
              v57 = *(a2 + 36);
              v58 = (*(a2 + 40) + 1);
              *(a2 + 40) = v58;
              if (v57 <= v58)
              {
                __break(0xC471u);
                JUMPOUT(0x225788478);
              }

              v59 = *(a2 + 24) + 32 * v58;
              v55 = *v59;
              *(a2 + 56) = *v59;
              *(a2 + 60) = *(v59 + 4);
              v60 = *v59;
              if (*v59 <= 8u)
              {
                if (((1 << v60) & 0x38) != 0)
                {
                  *(a2 + 80) = *(v59 + 24);
                  goto LABEL_113;
                }

                if (((1 << v60) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v59 + 24);
                  goto LABEL_113;
                }

                if (v60 == 8)
                {
                  *(a2 + 80) = 0;
                  v61 = *(v59 + 24);
                  if (v61)
                  {
                    atomic_fetch_add_explicit(v61, 2u, memory_order_relaxed);
                    v62 = *(a2 + 80);
                    *(a2 + 80) = v61;
                    if (v62)
                    {
                      if (atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v62, v17);
                      }
                    }
                  }

LABEL_113:
                  v55 = *(a2 + 56);
                }
              }

              v56 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v56;
              if (v55 == 82)
              {
                continue;
              }

              break;
            }

            v73 = *(a2 + 88);
            if (v55 == 8)
            {
              *v167 = 8;
              *&v167[4] = *(a2 + 60);
              v168 = 0;
              v74 = *(a2 + 80);
              if (v74)
              {
                atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
                v168 = v74;
              }

              v169 = 0;
              while (1)
              {
                v77 = *(a2 + 36);
                v78 = (*(a2 + 40) + 1);
                *(a2 + 40) = v78;
                if (v77 <= v78)
                {
                  __break(0xC471u);
                  JUMPOUT(0x225788488);
                }

                v79 = *(a2 + 24) + 32 * v78;
                v75 = *v79;
                *(a2 + 56) = *v79;
                *(a2 + 60) = *(v79 + 4);
                v80 = *v79;
                if (*v79 > 8u)
                {
                  goto LABEL_151;
                }

                if (((1 << v80) & 0x38) != 0)
                {
                  *(a2 + 80) = *(v79 + 24);
                }

                else if (((1 << v80) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v79 + 24);
                }

                else
                {
                  if (v80 != 8)
                  {
                    goto LABEL_151;
                  }

                  *(a2 + 80) = 0;
                  v81 = *(v79 + 24);
                  if (v81)
                  {
                    atomic_fetch_add_explicit(v81, 2u, memory_order_relaxed);
                    v82 = *(a2 + 80);
                    *(a2 + 80) = v81;
                    if (v82)
                    {
                      if (atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v82, v17);
                      }
                    }
                  }
                }

                v75 = *(a2 + 56);
LABEL_151:
                v76 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v76;
                if (v75 != 82)
                {
                  v88 = WGSL::parseAccessMode(&v168);
                  if (v88)
                  {
                    v89 = 0;
                    LOBYTE(v159) = *v88;
                  }

                  else
                  {
                    WTF::StringImpl::createWithoutCopyingNonEmpty();
                    v97 = v56 | ((*(a2 + 96) - v56) << 32);
                    *&v160 = v73;
                    *(&v160 + 1) = v97;
                    v89 = 1;
                  }

                  goto LABEL_208;
                }
              }
            }

            *v167 = v55;
            v169 = 1;
            WGSL::toString();
            WGSL::toString();
            if (v166)
            {
              v87 = *(v166 + 1);
            }

            else
            {
              v87 = 0;
            }

            if (v165)
            {
              v90 = *(v165 + 4);
              if (v90 < 0)
              {
                goto LABEL_365;
              }
            }

            else
            {
              v90 = 0;
            }

            v41 = __OFADD__(v90, 12);
            v91 = v90 + 12;
            v92 = v41;
            if ((v87 & 0x80000000) == 0 && (v92 & 1) == 0)
            {
              v41 = __OFADD__(v87, v91);
              v93 = v87 + v91;
              if (!v41)
              {
                v94 = (v93 + 11);
                if (!__OFADD__(v93, 11))
                {
                  if (v166)
                  {
                    v95 = *(v166 + 4);
                    v96 = (v95 >> 2) & 1;
                    if (!v165 || (v95 & 4) == 0)
                    {
LABEL_200:
                      WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v94, v96, "Expected a ", 0xBuLL, v166, ", but got a ", 0xCuLL, v165, &v170);
                      v98 = v170;
                      if (v170)
                      {
                        v99 = v165;
                        v165 = 0;
                        if (v99 && atomic_fetch_add_explicit(v99, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v99, v17);
                        }

                        v100 = v166;
                        v166 = 0;
                        if (v100 && atomic_fetch_add_explicit(v100, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v100, v17);
                        }

                        v101 = v56 | ((*(a2 + 96) - v56) << 32);
                        v159 = v98;
                        *&v160 = v73;
                        *(&v160 + 1) = v101;
                        v89 = 1;
LABEL_208:
                        v161 = v89;
                        if (v169 != 255)
                        {
                          if (!v169 && *v167 == 8)
                          {
                            v102 = v168;
                            v168 = 0;
                            if (v102)
                            {
                              if (atomic_fetch_add_explicit(v102, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v102, v17);
                              }
                            }
                          }

                          v89 = v161;
                        }

                        if (v89)
                        {
                          if (v159)
                          {
                            atomic_fetch_add_explicit(v159, 2u, memory_order_relaxed);
                            v157 = v159;
                            v158 = v160;
                            if (v161)
                            {
                              v103 = v159;
                              v159 = 0;
                              if (atomic_fetch_add_explicit(v103, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v103, v17);
                              }
                            }
                          }

                          else
                          {
                            v157 = 0;
                            v158 = v160;
                          }

                          goto LABEL_250;
                        }

                        LOBYTE(v166) = v159;
                        if (*(a2 + 56) == 84)
                        {
                          goto LABEL_133;
                        }

LABEL_221:
                        WGSL::toString();
                        WGSL::toString();
                        if (v159)
                        {
                          v104 = *(v159 + 1);
                          if (v170)
                          {
                            goto LABEL_223;
                          }

LABEL_226:
                          v105 = 0;
                          goto LABEL_227;
                        }

                        v104 = 0;
                        if (!v170)
                        {
                          goto LABEL_226;
                        }

LABEL_223:
                        v105 = *(v170 + 4);
                        if (v105 < 0)
                        {
LABEL_363:
                          __break(0xC471u);
                          JUMPOUT(0x225788490);
                        }

LABEL_227:
                        v41 = __OFADD__(v105, 12);
                        v106 = v105 + 12;
                        v107 = v41;
                        if (v104 < 0)
                        {
                          goto LABEL_363;
                        }

                        if (v107)
                        {
                          goto LABEL_363;
                        }

                        v41 = __OFADD__(v104, v106);
                        v108 = v104 + v106;
                        if (v41)
                        {
                          goto LABEL_363;
                        }

                        v109 = (v108 + 11);
                        if (__OFADD__(v108, 11))
                        {
                          goto LABEL_363;
                        }

                        if (v159)
                        {
                          v110 = *(v159 + 4);
                          v111 = (v110 >> 2) & 1;
                          if (!v170 || (v110 & 4) == 0)
                          {
LABEL_241:
                            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v109, v111, "Expected a ", 0xBuLL, v159, ", but got a ", 0xCuLL, v170, v167);
                            v112 = *v167;
                            if (!*v167)
                            {
                              goto LABEL_363;
                            }

                            v113 = v170;
                            v170 = 0;
                            if (v113 && atomic_fetch_add_explicit(v113, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v113, v17);
                            }

                            v114 = v159;
                            v159 = 0;
                            if (v114 && atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v114, v17);
                            }

                            v72 = v8 | ((*(a2 + 96) - v8) << 32);
                            v157 = v112;
LABEL_249:
                            *&v158 = v153;
                            *(&v158 + 1) = v72;
LABEL_250:
                            if (v164)
                            {
                              if (v164 != 255)
                              {
                                v115 = v162;
                                v162 = 0;
                                if (v115)
                                {
                                  if (atomic_fetch_add_explicit(v115, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v115, v17);
                                  }
                                }
                              }
                            }

                            if (!v157)
                            {
                              *a1 = 0;
                              result = *&v158;
                              *(a1 + 8) = v158;
                              *(a1 + 24) = 1;
                              return result;
                            }

                            atomic_fetch_add_explicit(v157, 2u, memory_order_relaxed);
                            *a1 = v157;
                            result = *&v158;
                            *(a1 + 8) = v158;
                            *(a1 + 24) = 1;
                            v116 = v157;
                            goto LABEL_347;
                          }
                        }

                        else if (!v170)
                        {
                          v111 = 1;
                          goto LABEL_241;
                        }

                        v111 = (*(v170 + 16) >> 2) & 1;
                        goto LABEL_241;
                      }

                      goto LABEL_365;
                    }
                  }

                  else if (!v165)
                  {
                    v96 = 1;
                    goto LABEL_200;
                  }

                  v96 = (*(v165 + 16) >> 2) & 1;
                  goto LABEL_200;
                }
              }
            }

LABEL_365:
            __break(0xC471u);
            JUMPOUT(0x2257884A0);
          }

          if (v162 >= 5u)
          {
            v63 = 1;
          }

          else
          {
            v63 = 0x10001uLL >> (8 * v162);
          }

          LOBYTE(v166) = v63;
          if (v54 != 84)
          {
            goto LABEL_221;
          }

LABEL_133:
          while (2)
          {
            v66 = *(a2 + 36);
            v67 = (*(a2 + 40) + 1);
            *(a2 + 40) = v67;
            if (v66 <= v67)
            {
              __break(0xC471u);
              JUMPOUT(0x225788470);
            }

            v68 = *(a2 + 24) + 32 * v67;
            v64 = *v68;
            *(a2 + 56) = *v68;
            *(a2 + 60) = *(v68 + 4);
            v69 = *v68;
            if (*v68 <= 8u)
            {
              if (((1 << v69) & 0x38) != 0)
              {
                *(a2 + 80) = *(v68 + 24);
                goto LABEL_131;
              }

              if (((1 << v69) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v68 + 24);
                goto LABEL_131;
              }

              if (v69 == 8)
              {
                *(a2 + 80) = 0;
                v70 = *(v68 + 24);
                if (v70)
                {
                  atomic_fetch_add_explicit(v70, 2u, memory_order_relaxed);
                  v71 = *(a2 + 80);
                  *(a2 + 80) = v70;
                  if (v71)
                  {
                    if (atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v71, v17);
                    }
                  }
                }

LABEL_131:
                v64 = *(a2 + 56);
              }
            }

            v65 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v65;
            if (v64 != 82)
            {
              *v167 = v153;
              *&v167[8] = v8;
              *&v167[12] = v65 - v8;
              WGSL::AST::Builder::construct<WGSL::AST::VariableQualifier,WGSL::SourceSpan,WGSL::AddressSpace &,WGSL::AccessMode &,void>();
            }

            continue;
          }
        }

        *v167 = v21;
        v169 = 1;
        WGSL::toString();
        WGSL::toString();
        if (v159)
        {
          v42 = *(v159 + 1);
          if (v170)
          {
LABEL_73:
            v43 = *(v170 + 4);
            if (v43 < 0)
            {
              goto LABEL_361;
            }

            v41 = __OFADD__(v43, 12);
            v44 = v43 + 12;
            v45 = v41;
            if (v42 < 0)
            {
              goto LABEL_361;
            }

LABEL_92:
            if (v45)
            {
              goto LABEL_361;
            }

            v41 = __OFADD__(v42, v44);
            v49 = v42 + v44;
            if (v41)
            {
              goto LABEL_361;
            }

            v50 = (v49 + 11);
            if (__OFADD__(v49, 11))
            {
              goto LABEL_361;
            }

            if (v159)
            {
              v51 = *(v159 + 4);
              v52 = (v51 >> 2) & 1;
              if (!v170 || (v51 & 4) == 0)
              {
                goto LABEL_163;
              }

LABEL_100:
              v52 = (*(v170 + 16) >> 2) & 1;
            }

            else
            {
              if (v170)
              {
                goto LABEL_100;
              }

              v52 = 1;
            }

LABEL_163:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v50, v52, "Expected a ", 0xBuLL, v159, ", but got a ", 0xCuLL, v170, &v162);
            v83 = v162;
            if (v162)
            {
              v84 = v170;
              v170 = 0;
              if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v84, v17);
              }

              v39 = v159;
              v159 = 0;
              if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                v39 = WTF::StringImpl::destroy(v39, v17);
              }

              v85 = v22 | ((*(a2 + 96) - v22) << 32);
              v162 = v83;
              *&v163 = v29;
              *(&v163 + 1) = v85;
              v47 = 1;
              v164 = 1;
              v53 = v169;
              if (v169 == 255)
              {
                goto LABEL_171;
              }

LABEL_103:
              if (!v53 && *v167 == 8)
              {
                v39 = v168;
                v168 = 0;
                if (v39)
                {
                  if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    v39 = WTF::StringImpl::destroy(v39, v17);
                  }
                }
              }

              v47 = v164;
              if (!v164)
              {
                goto LABEL_109;
              }

LABEL_172:
              if (v47 != 1)
              {
                goto LABEL_353;
              }

              v86 = v162;
              if (v162)
              {
                atomic_fetch_add_explicit(v162, 2u, memory_order_relaxed);
              }

              v158 = v163;
              v157 = v86;
              goto LABEL_250;
            }

LABEL_361:
            __break(0xC471u);
            JUMPOUT(0x225788480);
          }
        }

        else
        {
          v42 = 0;
          if (v170)
          {
            goto LABEL_73;
          }
        }

        v44 = 12;
        v45 = v41;
        if ((v42 & 0x80000000) == 0)
        {
          goto LABEL_92;
        }

        goto LABEL_361;
      }
    }
  }

  v154 = 1;
  v15 = 1;
  if (v7 == 83)
  {
    goto LABEL_32;
  }

LABEL_64:
  v39 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v167, a2);
  if (v169)
  {
    if (v169 == 1)
    {
      v40 = *v167;
      if (*v167)
      {
        atomic_fetch_add_explicit(*v167, 2u, memory_order_relaxed);
      }

      result = *&v167[8];
      *(a1 + 8) = *&v167[8];
      *a1 = v40;
      goto LABEL_341;
    }

    goto LABEL_353;
  }

  v159 = 0;
  v117 = *(a2 + 56);
  if (v117 != 47)
  {
    v126 = v15;
    v127 = 0;
    if ((v154 & 1) == 0)
    {
      goto LABEL_287;
    }

    goto LABEL_273;
  }

  while (2)
  {
    v120 = *(a2 + 36);
    v121 = (*(a2 + 40) + 1);
    *(a2 + 40) = v121;
    if (v120 <= v121)
    {
      __break(0xC471u);
      JUMPOUT(0x225788460);
    }

    v122 = *(a2 + 24) + 32 * v121;
    v118 = *v122;
    *(a2 + 56) = *v122;
    *(a2 + 60) = *(v122 + 4);
    v123 = *v122;
    if (*v122 <= 8u)
    {
      if (((1 << v123) & 0x38) != 0)
      {
        *(a2 + 80) = *(v122 + 24);
        goto LABEL_260;
      }

      if (((1 << v123) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v122 + 24);
        goto LABEL_260;
      }

      if (v123 == 8)
      {
        *(a2 + 80) = 0;
        v124 = *(v122 + 24);
        if (v124)
        {
          atomic_fetch_add_explicit(v124, 2u, memory_order_relaxed);
          v125 = *(a2 + 80);
          *(a2 + 80) = v124;
          if (v125)
          {
            if (atomic_fetch_add_explicit(v125, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v125, v17);
            }
          }
        }

LABEL_260:
        v118 = *(a2 + 56);
      }
    }

    v119 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v119;
    if (v118 == 82)
    {
      continue;
    }

    break;
  }

  v39 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(&v162, a2);
  if (!v164)
  {
    v126 = v15;
    v159 = v162;
    v127 = v162 != 0;
    v117 = *(a2 + 56);
    if ((v154 & 1) == 0)
    {
LABEL_287:
      if (v117 != 49)
      {
        if (!v127)
        {
          goto LABEL_310;
        }

        goto LABEL_308;
      }

      while (1)
      {
LABEL_292:
        v135 = *(a2 + 36);
        v136 = (*(a2 + 40) + 1);
        *(a2 + 40) = v136;
        if (v135 <= v136)
        {
          __break(0xC471u);
          JUMPOUT(0x225788468);
        }

        v137 = *(a2 + 24) + 32 * v136;
        v133 = *v137;
        *(a2 + 56) = *v137;
        *(a2 + 60) = *(v137 + 4);
        v138 = *v137;
        if (*v137 > 8u)
        {
          goto LABEL_291;
        }

        if (((1 << v138) & 0x38) != 0)
        {
          *(a2 + 80) = *(v137 + 24);
        }

        else if (((1 << v138) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v137 + 24);
        }

        else
        {
          if (v138 != 8)
          {
            goto LABEL_291;
          }

          *(a2 + 80) = 0;
          v139 = *(v137 + 24);
          if (v139)
          {
            atomic_fetch_add_explicit(v139, 2u, memory_order_relaxed);
            v140 = *(a2 + 80);
            *(a2 + 80) = v139;
            if (v140)
            {
              if (atomic_fetch_add_explicit(v140, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v140, v17);
              }
            }
          }
        }

        v133 = *(a2 + 56);
LABEL_291:
        v134 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v134;
        if (v133 != 82)
        {
          v39 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v162, a2);
          if (v164)
          {
            if (v164 == 1)
            {
              v132 = v162;
              if (v162)
              {
                atomic_fetch_add_explicit(v162, 2u, memory_order_relaxed);
                *a1 = v132;
                result = *&v163;
                *(a1 + 8) = v163;
                *(a1 + 24) = 1;
                if (atomic_fetch_add_explicit(v132, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  goto LABEL_306;
                }

                goto LABEL_342;
              }

LABEL_351:
              *a1 = 0;
              result = *&v163;
              *(a1 + 8) = v163;
LABEL_341:
              *(a1 + 24) = 1;
              goto LABEL_342;
            }

LABEL_353:
            mpark::throw_bad_variant_access(v39);
          }

          if (!v127 && v162 == 0)
          {
LABEL_310:
            if (v126 <= 2)
            {
              if (v126 == 2)
              {
                v142 = "override";
                v143 = 8;
                goto LABEL_314;
              }

              if (!v126)
              {
                __break(0xC471u);
                JUMPOUT(0x2257884CCLL);
              }

              __break(0xC471u);
LABEL_370:
              JUMPOUT(0x225788448);
            }

            v142 = "var";
            v143 = 3;
LABEL_314:
            WTF::tryFastCompactMalloc((v143 + 63));
            v144 = v162;
            if (!v162)
            {
              __break(0xC471u);
              JUMPOUT(0x2257884A8);
            }

            *v162 = 2;
            *(v144 + 1) = v143 + 43;
            *(v144 + 1) = v144 + 20;
            *(v144 + 4) = 4;
            memcpy(v144 + 20, v142, v143);
            qmemcpy(v144 + v143 + 20, " declaration requires a type or initializer", 43);
            result = *"e or initializer";
            v145 = v5 | ((*(a2 + 96) - v5) << 32);
            *a1 = v144;
LABEL_340:
            *(a1 + 8) = v4;
            *(a1 + 16) = v145;
            goto LABEL_341;
          }

LABEL_308:
          v141 = *(a2 + 96) - v5;
          v162 = v4;
          *&v163 = __PAIR64__(v141, v5);
          WGSL::AST::Builder::construct<WGSL::AST::Variable,WGSL::SourceSpan,WGSL::AST::VariableFlavor &,WGSL::AST::Identifier,WGSL::AST::VariableQualifier *,WGSL::AST::Expression *,WGSL::AST::Expression *,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,void>();
        }
      }
    }

LABEL_273:
    if (v117 == 49)
    {
      goto LABEL_292;
    }

    WGSL::toString();
    WGSL::toString();
    if (v156)
    {
      v128 = *(v156 + 1);
      if (v155)
      {
        goto LABEL_276;
      }
    }

    else
    {
      v128 = 0;
      if (v155)
      {
LABEL_276:
        v129 = *(v155 + 1);
        if (v129 < 0)
        {
          goto LABEL_364;
        }

LABEL_318:
        v41 = __OFADD__(v129, 12);
        v146 = v129 + 12;
        v147 = v41;
        if (v128 < 0)
        {
          goto LABEL_364;
        }

        if (v147)
        {
          goto LABEL_364;
        }

        v41 = __OFADD__(v128, v146);
        v148 = v128 + v146;
        if (v41)
        {
          goto LABEL_364;
        }

        v149 = (v148 + 11);
        if (__OFADD__(v148, 11))
        {
          goto LABEL_364;
        }

        if (v156)
        {
          v150 = *(v156 + 4);
          v151 = (v150 >> 2) & 1;
          if (!v155 || (v150 & 4) == 0)
          {
LABEL_332:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v149, v151, "Expected a ", 0xBuLL, v156, ", but got a ", 0xCuLL, v155, &v162);
            v152 = v162;
            if (v162)
            {
              if (v155 && atomic_fetch_add_explicit(v155, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v155, v17);
              }

              if (v156 && atomic_fetch_add_explicit(v156, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v156, v17);
              }

              v145 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = v152;
              goto LABEL_340;
            }

LABEL_364:
            __break(0xC471u);
            JUMPOUT(0x225788498);
          }
        }

        else if (!v155)
        {
          v151 = 1;
          goto LABEL_332;
        }

        v151 = (*(v155 + 16) >> 2) & 1;
        goto LABEL_332;
      }
    }

    v129 = 0;
    goto LABEL_318;
  }

  if (v164 != 1)
  {
    goto LABEL_353;
  }

  v130 = v162;
  if (!v162)
  {
    goto LABEL_351;
  }

  atomic_fetch_add_explicit(v162, 2u, memory_order_relaxed);
  v131 = v164;
  *a1 = v130;
  result = *&v163;
  *(a1 + 8) = v163;
  *(a1 + 24) = 1;
  if (v131)
  {
    if (v131 != 255)
    {
      v132 = v162;
      v162 = 0;
      if (v132)
      {
        if (atomic_fetch_add_explicit(v132, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
LABEL_306:
          WTF::StringImpl::destroy(v132, v17);
        }
      }
    }
  }

LABEL_342:
  if (v169 == 255)
  {
    return result;
  }

  if (v169)
  {
    goto LABEL_346;
  }

  v116 = v168;
  *v167 = off_2838D37C0;
  v168 = 0;
  if (!v116)
  {
    return result;
  }

LABEL_347:
  if (atomic_fetch_add_explicit(v116, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v116, v17);
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v6 = *(a2 + 48);
  *(a2 + 48) = v6 + 1;
  if ((v6 + 1) >= 0x10)
  {
    WTF::String::number(0xF);
    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("composite type may not be nested more than ", 44, &v17, " levels", 8, &v13);
    v12 = v5 | ((*(a2 + 96) - v5) << 32);
    *a1 = v13;
    *(a1 + 8) = v4;
    *(a1 + 16) = v12;
    *(a1 + 24) = 1;
    v13 = 0;
    result = v17;
    v17 = 0;
    if (!result)
    {
      goto LABEL_20;
    }

LABEL_18:
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v8);
    }

    goto LABEL_20;
  }

  if (*(a2 + 56) != 8)
  {
    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
    v11 = v5 | ((*(a2 + 96) - v5) << 32);
    *(a1 + 8) = v4;
    *(a1 + 16) = v11;
    *(a1 + 24) = 1;
    goto LABEL_20;
  }

  result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v13, a2);
  if (!v16)
  {
    if (MEMORY[0x22AA683D0](v15, "array", 5))
    {
      result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseArrayType(a1, a2);
      v10 = v16;
      if (v16 == 255)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeNameAfterIdentifier(a1, a2, &v13, v4, v5);
      v10 = v16;
      if (v16 == 255)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_14;
  }

  if (v16 != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  v9 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = v14;
  *a1 = v9;
  *(a1 + 24) = 1;
  v10 = v16;
  if (v16 != 255)
  {
LABEL_14:
    if (v10)
    {
      result = v13;
      v13 = 0;
      if (!result)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = v15;
      v13 = off_2838D37C0;
      v15 = 0;
      if (!result)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_18;
  }

LABEL_20:
  *(a2 + 48) = v6;
  return result;
}

mpark *WGSL::Parser<WGSL::Lexer<char16_t>>::parseArrayType(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v56 = 0;
  v55 = 0;
  v6 = v5;
  if (*(a2 + 56) != 83)
  {
    goto LABEL_65;
  }

  do
  {
    v9 = *(a2 + 36);
    v10 = (*(a2 + 40) + 1);
    *(a2 + 40) = v10;
    if (v9 <= v10)
    {
      __break(0xC471u);
      goto LABEL_107;
    }

    v11 = *(a2 + 24) + 32 * v10;
    v7 = *v11;
    *(a2 + 56) = *v11;
    *(a2 + 60) = *(v11 + 4);
    v12 = *v11;
    if (*v11 <= 8u)
    {
      if (((1 << v12) & 0x38) != 0)
      {
        *(a2 + 80) = *(v11 + 24);
LABEL_4:
        v7 = *(a2 + 56);
        goto LABEL_5;
      }

      if (((1 << v12) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v11 + 24);
        goto LABEL_4;
      }

      if (v12 == 8)
      {
        *(a2 + 80) = 0;
        v13 = *(v11 + 24);
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          v14 = *(a2 + 80);
          *(a2 + 80) = v13;
          if (v14)
          {
            if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v14, a2);
            }
          }
        }

        goto LABEL_4;
      }
    }

LABEL_5:
    v8 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v8;
  }

  while (v7 == 82);
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(&v52, a2);
  if (v54)
  {
    if (v54 == 1)
    {
      v17 = v52;
      if (v52)
      {
        atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
      }

      *(a1 + 8) = v53;
      *a1 = v17;
      goto LABEL_95;
    }

LABEL_102:
    mpark::throw_bad_variant_access(result);
  }

  v56 = v52;
  v18 = *(a2 + 56);
  if (v18 != 48)
  {
LABEL_44:
    if (v18 == 84)
    {
      while (1)
      {
LABEL_49:
        v29 = *(a2 + 36);
        v30 = (*(a2 + 40) + 1);
        *(a2 + 40) = v30;
        if (v29 <= v30)
        {
          __break(0xC471u);
          JUMPOUT(0x225788C34);
        }

        v31 = *(a2 + 24) + 32 * v30;
        v27 = *v31;
        *(a2 + 56) = *v31;
        *(a2 + 60) = *(v31 + 4);
        v32 = *v31;
        if (*v31 > 8u)
        {
          goto LABEL_48;
        }

        if (((1 << v32) & 0x38) != 0)
        {
          *(a2 + 80) = *(v31 + 24);
        }

        else if (((1 << v32) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v31 + 24);
        }

        else
        {
          if (v32 != 8)
          {
            goto LABEL_48;
          }

          *(a2 + 80) = 0;
          v33 = *(v31 + 24);
          if (v33)
          {
            atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
            v34 = *(a2 + 80);
            *(a2 + 80) = v33;
            if (v34)
            {
              if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v34, v16);
              }
            }
          }
        }

        v27 = *(a2 + 56);
LABEL_48:
        v28 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v28;
        if (v27 != 82)
        {
          if (v54)
          {
            if (v54 != 255)
            {
              v35 = v52;
              v52 = 0;
              if (v35)
              {
                if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v35, v16);
                }
              }
            }
          }

          v6 = *(a2 + 96);
LABEL_65:
          v52 = v4;
          LODWORD(v53) = v5;
          DWORD1(v53) = v6 - v5;
          WGSL::AST::Builder::construct<WGSL::AST::ArrayTypeExpression,WGSL::SourceSpan,WGSL::AST::Expression *&,WGSL::AST::Expression *&,void>();
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v48)
    {
      v36 = *(v48 + 1);
      if (v47)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v36 = 0;
      if (v47)
      {
LABEL_69:
        v37 = *(v47 + 1);
        if (v37 < 0)
        {
LABEL_106:
          __break(0xC471u);
LABEL_107:
          JUMPOUT(0x225788C2CLL);
        }

LABEL_73:
        v38 = __OFADD__(v37, 12);
        v39 = v37 + 12;
        v40 = v38;
        if (v36 < 0)
        {
          goto LABEL_106;
        }

        if (v40)
        {
          goto LABEL_106;
        }

        v38 = __OFADD__(v36, v39);
        v41 = v36 + v39;
        if (v38)
        {
          goto LABEL_106;
        }

        v42 = (v41 + 11);
        if (__OFADD__(v41, 11))
        {
          goto LABEL_106;
        }

        if (v48)
        {
          v43 = *(v48 + 4);
          v44 = (v43 >> 2) & 1;
          if (!v47 || (v43 & 4) == 0)
          {
LABEL_87:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v42, v44, "Expected a ", 0xBuLL, v48, ", but got a ", 0xCuLL, v47, &v49);
            v45 = v49;
            if (v49)
            {
              if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v47, v16);
              }

              result = v48;
              if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(v48, v16);
              }

              v46 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = v45;
              *(a1 + 8) = v4;
              *(a1 + 16) = v46;
              goto LABEL_95;
            }

            goto LABEL_106;
          }
        }

        else if (!v47)
        {
          v44 = 1;
          goto LABEL_87;
        }

        v44 = (*(v47 + 16) >> 2) & 1;
        goto LABEL_87;
      }
    }

    v37 = 0;
    goto LABEL_73;
  }

  while (2)
  {
    v19 = *(a2 + 36);
    v20 = (*(a2 + 40) + 1);
    *(a2 + 40) = v20;
    if (v19 <= v20)
    {
      __break(0xC471u);
      JUMPOUT(0x225788C3CLL);
    }

    v21 = *(a2 + 24) + 32 * v20;
    v22 = *v21;
    *(a2 + 56) = *v21;
    *(a2 + 60) = *(v21 + 4);
    v23 = *v21;
    if (*v21 <= 8u)
    {
      if (((1 << v23) & 0x38) != 0)
      {
        *(a2 + 80) = *(v21 + 24);
        goto LABEL_28;
      }

      if (((1 << v23) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v21 + 24);
        goto LABEL_28;
      }

      if (v23 == 8)
      {
        *(a2 + 80) = 0;
        v25 = *(v21 + 24);
        if (v25)
        {
          atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
          v26 = *(a2 + 80);
          *(a2 + 80) = v25;
          if (v26)
          {
            if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v26, v16);
            }
          }
        }

LABEL_28:
        v22 = *(a2 + 56);
      }
    }

    v24 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v24;
    if (v22 == 82)
    {
      continue;
    }

    break;
  }

  if (v22 == 84)
  {
    goto LABEL_49;
  }

  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v49, a2);
  if (!v51)
  {
    v55 = v49;
    v18 = *(a2 + 56);
    if (v18 == 48)
    {
      WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v16);
      v18 = *(a2 + 56);
    }

    goto LABEL_44;
  }

  if (v51 != 1)
  {
    goto LABEL_102;
  }

  result = v49;
  if (!v49)
  {
    *(a1 + 8) = v50;
    *a1 = 0;
LABEL_95:
    *(a1 + 24) = 1;
    goto LABEL_96;
  }

  atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
  *(a1 + 8) = v50;
  *a1 = result;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v16);
  }

LABEL_96:
  if (v54)
  {
    if (v54 != 255)
    {
      result = v52;
      v52 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v16);
        }
      }
    }
  }

  return result;
}

WTF *WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeNameAfterIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl *a4, unsigned int a5)
{
  if (*(a2 + 56) != 83)
  {
    v17 = *(a2 + 96) - a5;
    v63 = a4;
    *&v64 = __PAIR64__(v17, a5);
    WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
  }

  do
  {
    v11 = *(a2 + 36);
    v12 = (*(a2 + 40) + 1);
    *(a2 + 40) = v12;
    if (v11 <= v12)
    {
      __break(0xC471u);
      JUMPOUT(0x22578922CLL);
    }

    v13 = *(a2 + 24) + 32 * v12;
    v9 = *v13;
    *(a2 + 56) = *v13;
    *(a2 + 60) = *(v13 + 4);
    v14 = *v13;
    if (*v13 <= 8u)
    {
      if (((1 << v14) & 0x38) != 0)
      {
        *(a2 + 80) = *(v13 + 24);
LABEL_4:
        v9 = *(a2 + 56);
        goto LABEL_5;
      }

      if (((1 << v14) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v13 + 24);
        goto LABEL_4;
      }

      if (v14 == 8)
      {
        *(a2 + 80) = 0;
        v15 = *(v13 + 24);
        if (v15)
        {
          atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
          v16 = *(a2 + 80);
          *(a2 + 80) = v15;
          if (v16)
          {
            if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v16, a2);
            }
          }
        }

        goto LABEL_4;
      }
    }

LABEL_5:
    v10 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v10;
  }

  while (v9 == 82);
  v58 = a4;
  v59 = a5;
  v60 = 0;
  v18 = 0;
  v66 = 0;
  v67 = 0;
  v19 = *a1;
  v20 = a1;
  v21 = *(a1 + 24);
  while (1)
  {
    v22 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeName(&v63, a2);
    if (!v65)
    {
      if (v18 == v67)
      {
        v26 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v66, v18 + 1, &v63);
        v27 = HIDWORD(v67);
        v60 = v66;
        *(v66 + HIDWORD(v67)) = *v26;
        v18 = v27 + 1;
        HIDWORD(v67) = v27 + 1;
        if (*(a2 + 56) == 48)
        {
          goto LABEL_33;
        }

LABEL_28:
        v24 = 4;
        v25 = v65;
        if (v65)
        {
          goto LABEL_44;
        }

        goto LABEL_48;
      }

      *(v60 + v18) = v63;
      v18 = ++HIDWORD(v67);
      if (*(a2 + 56) != 48)
      {
        goto LABEL_28;
      }

      while (1)
      {
LABEL_33:
        v30 = *(a2 + 36);
        v31 = (*(a2 + 40) + 1);
        *(a2 + 40) = v31;
        if (v30 <= v31)
        {
          *(v20 + 24) = v21;
          *v20 = v19;
          __break(0xC471u);
          goto LABEL_108;
        }

        v32 = *(a2 + 24) + 32 * v31;
        v28 = *v32;
        *(a2 + 56) = *v32;
        *(a2 + 60) = *(v32 + 4);
        v33 = *v32;
        if (*v32 <= 8u)
        {
          if (((1 << v33) & 0x38) != 0)
          {
            *(a2 + 80) = *(v32 + 24);
          }

          else if (((1 << v33) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v32 + 24);
          }

          else
          {
            if (v33 != 8)
            {
              goto LABEL_32;
            }

            *(a2 + 80) = 0;
            v34 = *(v32 + 24);
            if (v34)
            {
              atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
              v35 = *(a2 + 80);
              *(a2 + 80) = v34;
              if (v35)
              {
                if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v35, v23);
                }
              }
            }
          }

          v28 = *(a2 + 56);
        }

LABEL_32:
        v29 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v29;
        if (v28 != 82)
        {
          v24 = 0;
          v25 = v65;
          if (v65)
          {
            goto LABEL_44;
          }

          goto LABEL_48;
        }
      }
    }

    if (v65 != 1)
    {
      *(v20 + 24) = v21;
      *v20 = v19;
      mpark::throw_bad_variant_access(v22);
    }

    v19 = v63;
    if (v63)
    {
      atomic_fetch_add_explicit(v63, 2u, memory_order_relaxed);
    }

    *(v20 + 8) = v64;
    v21 = 1;
    v24 = 1;
    v25 = v65;
    if (v65)
    {
LABEL_44:
      if (v25 != 255)
      {
        v36 = v63;
        v63 = 0;
        if (v36)
        {
          if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v36, v23);
          }
        }
      }
    }

LABEL_48:
    if (v24)
    {
      break;
    }

    if (*(a2 + 56) == 84)
    {
      *(v20 + 24) = v21;
      *v20 = v19;
      goto LABEL_57;
    }
  }

  if (v24 != 4)
  {
    *(v20 + 24) = v21;
    *v20 = v19;
    result = v60;
    if (!v60)
    {
      return result;
    }

    goto LABEL_69;
  }

  if (*(a2 + 56) == 84)
  {
    while (1)
    {
LABEL_57:
      v39 = *(a2 + 36);
      v40 = (*(a2 + 40) + 1);
      *(a2 + 40) = v40;
      if (v39 <= v40)
      {
        __break(0xC471u);
        JUMPOUT(0x225789234);
      }

      v41 = *(a2 + 24) + 32 * v40;
      v37 = *v41;
      *(a2 + 56) = *v41;
      *(a2 + 60) = *(v41 + 4);
      v42 = *v41;
      if (*v41 <= 8u)
      {
        if (((1 << v42) & 0x38) != 0)
        {
          *(a2 + 80) = *(v41 + 24);
        }

        else if (((1 << v42) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v41 + 24);
        }

        else
        {
          if (v42 != 8)
          {
            goto LABEL_56;
          }

          *(a2 + 80) = 0;
          v43 = *(v41 + 24);
          if (v43)
          {
            atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
            v44 = *(a2 + 80);
            *(a2 + 80) = v43;
            if (v44)
            {
              if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v44, v23);
              }
            }
          }
        }

        v37 = *(a2 + 56);
      }

LABEL_56:
      v38 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v38;
      if (v37 != 82)
      {
        v63 = v58;
        LODWORD(v64) = v59;
        DWORD1(v64) = v38 - v59;
        WGSL::AST::Builder::construct<WGSL::AST::ElaboratedTypeExpression,WGSL::SourceSpan,WGSL::AST::Identifier,WTF::ReferenceWrapperVector<WGSL::AST::Expression,0ul>,void>();
      }
    }
  }

  WGSL::toString();
  WGSL::toString();
  if (!v62)
  {
    v47 = 0;
    v48 = v59;
    if (v61)
    {
      goto LABEL_73;
    }

LABEL_80:
    v50 = 12;
    v51 = v46;
    if (v47 < 0)
    {
      goto LABEL_107;
    }

    goto LABEL_84;
  }

  v47 = *(v62 + 1);
  v48 = v59;
  if (!v61)
  {
    goto LABEL_80;
  }

LABEL_73:
  v49 = *(v61 + 1);
  if (v49 < 0)
  {
    goto LABEL_107;
  }

  v46 = __OFADD__(v49, 12);
  v50 = v49 + 12;
  v51 = v46;
  if (v47 < 0)
  {
    goto LABEL_107;
  }

LABEL_84:
  if ((v51 & 1) != 0 || (v46 = __OFADD__(v47, v50), v52 = v47 + v50, v46) || (v53 = (v52 + 11), __OFADD__(v52, 11)))
  {
LABEL_107:
    __break(0xC471u);
LABEL_108:
    JUMPOUT(0x225789224);
  }

  if (!v62)
  {
    if (!v61)
    {
      v55 = 1;
      goto LABEL_94;
    }

LABEL_92:
    v55 = (*(v61 + 16) >> 2) & 1;
    goto LABEL_94;
  }

  v54 = *(v62 + 4);
  v55 = (v54 >> 2) & 1;
  if (v61 && (v54 & 4) != 0)
  {
    goto LABEL_92;
  }

LABEL_94:
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v53, v55, "Expected a ", 0xBuLL, v62, ", but got a ", 0xCuLL, v61, &v63);
  v56 = v63;
  if (!v63)
  {
    goto LABEL_107;
  }

  if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v61, v23);
  }

  if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v62, v23);
  }

  v57 = v48 | ((*(a2 + 96) - v48) << 32);
  *v20 = v56;
  *(v20 + 8) = v58;
  *(v20 + 16) = v57;
  *(v20 + 24) = 1;
  result = v60;
  if (v60)
  {
LABEL_69:
    v66 = 0;
    LODWORD(v67) = 0;
    return WTF::fastFree(result, v23);
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(WTF::StringImpl **a1, uint64_t a2)
{
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(&v30, a2);
  if (v32)
  {
    if (v32 == 1)
    {
      v5 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
      }

      *(a1 + 1) = v31;
      *a1 = v5;
      *(a1 + 24) = 1;
      goto LABEL_37;
    }

    goto LABEL_69;
  }

  v6 = *(a2 + 56);
  if ((v6 - 36) <= 0x2C && ((1 << (v6 - 36)) & 0x100010000001) != 0)
  {
    v25 = *(a2 + 88);
    v8 = *(a2 + 96);
    result = WGSL::toBinaryOperation(v6);
    v36 = result;
    v10 = *a1;
    v11 = *(a1 + 24);
    while (1)
    {
      v14 = *(a2 + 36);
      v15 = (*(a2 + 40) + 1);
      *(a2 + 40) = v15;
      if (v14 <= v15)
      {
        *(a1 + 24) = v11;
        *a1 = v10;
        __break(0xC471u);
        return result;
      }

      v16 = *(a2 + 24) + 32 * v15;
      v12 = *v16;
      *(a2 + 56) = *v16;
      *(a2 + 60) = *(v16 + 4);
      v17 = *v16;
      if (*v16 <= 8u)
      {
        if (((1 << v17) & 0x38) != 0)
        {
          *(a2 + 80) = *(v16 + 24);
        }

        else if (((1 << v17) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v16 + 24);
        }

        else
        {
          if (v17 != 8)
          {
            goto LABEL_14;
          }

          *(a2 + 80) = 0;
          v18 = *(v16 + 24);
          if (v18)
          {
            atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
            result = *(a2 + 80);
            *(a2 + 80) = v18;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v9);
              }
            }
          }
        }

        v12 = *(a2 + 56);
      }

LABEL_14:
      v13 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v13;
      if (v12 != 82)
      {
        result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(&v33, a2);
        if (!v35)
        {
          v20 = *(a2 + 96) - v8;
          v27 = v25;
          *&v28 = __PAIR64__(v20, v8);
          WGSL::AST::Builder::construct<WGSL::AST::BinaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::BinaryOperation const&,void>();
        }

        if (v35 == 1)
        {
          v19 = v33;
          if (v33)
          {
            atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
          }

          *(a1 + 1) = v34;
          if (v35)
          {
            if (v35 != 255)
            {
              result = v33;
              v33 = 0;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v4);
                }
              }
            }
          }

          *(a1 + 24) = 1;
          *a1 = v19;
          goto LABEL_37;
        }

        *(a1 + 24) = v11;
        *a1 = v10;
LABEL_69:
        mpark::throw_bad_variant_access(result);
      }
    }
  }

  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseRelationalExpressionPostUnary(&v33, a2, &v30);
  if (v35)
  {
    if (v35 != 1)
    {
      goto LABEL_69;
    }

    v21 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
    }

    v22 = a1;
    *(a1 + 1) = v34;
    *a1 = v21;
    goto LABEL_48;
  }

  v23 = *(a2 + 56);
  if (v23 == 37)
  {
    result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseShortCircuitExpression(&v27, a2, &v33, 37);
    if (v29)
    {
      if (v29 != 1)
      {
        goto LABEL_69;
      }

      result = v27;
      if (v27)
      {
        goto LABEL_54;
      }

LABEL_59:
      v22 = a1;
      *a1 = 0;
      *(a1 + 1) = v28;
LABEL_48:
      *(v22 + 24) = 1;
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  if (v23 != 65)
  {
    v24 = v33;
LABEL_62:
    *a1 = v24;
    *(a1 + 24) = 0;
    goto LABEL_63;
  }

  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseShortCircuitExpression(&v27, a2, &v33, 65);
  if (!v29)
  {
LABEL_61:
    v24 = v27;
    v33 = v27;
    goto LABEL_62;
  }

  if (v29 != 1)
  {
    goto LABEL_69;
  }

  result = v27;
  if (!v27)
  {
    goto LABEL_59;
  }

LABEL_54:
  atomic_fetch_add_explicit(result, 2u, memory_order_relaxed);
  *a1 = result;
  *(a1 + 1) = v28;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v4);
  }

LABEL_63:
  if (v35)
  {
    if (v35 != 255)
    {
      result = v33;
      if (v33)
      {
        if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

LABEL_37:
  if (v32)
  {
    if (v32 != 255)
    {
      result = v30;
      v30 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v4);
        }
      }
    }
  }

  return result;
}

atomic_uint *WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v6 = *(a2 + 44);
  *(a2 + 44) = v6 + 1;
  if ((v6 + 1) >= 0x81)
  {
    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
    v8 = v5 | ((*(a2 + 96) - v5) << 32);
    *(a1 + 8) = v4;
    *(a1 + 16) = v8;
    *(a1 + 24) = 1;
    goto LABEL_199;
  }

  v9 = *(a2 + 56);
  v10 = (v9 - 36);
  if (v10 > 0x2A)
  {
    goto LABEL_44;
  }

  if (((1 << (v9 - 36)) & 0x50000800021) != 0)
  {
    if (v9 > 58)
    {
      goto LABEL_6;
    }

LABEL_12:
    if (v9 == 36)
    {
      v11 = 0;
      goto LABEL_19;
    }

    if (v9 == 41)
    {
      v11 = 4;
      goto LABEL_19;
    }

LABEL_307:
    __break(0xC471u);
    JUMPOUT(0x22578A8B0);
  }

  if (v10 != 24)
  {
LABEL_44:
    if (v9 <= 6)
    {
      if (v9 > 3)
      {
        if (v9 != 4)
        {
          if (v9 != 5)
          {
            LODWORD(v131[0]) = 6;
            *(v131 + 4) = *(a2 + 60);
            v132 = *(a2 + 80);
            v133 = 0;
            while (1)
            {
              v25 = *(a2 + 36);
              v26 = (*(a2 + 40) + 1);
              *(a2 + 40) = v26;
              if (v25 <= v26)
              {
                __break(0xC471u);
                JUMPOUT(0x22578A858);
              }

              v27 = *(a2 + 24) + 32 * v26;
              v23 = *v27;
              *(a2 + 56) = *v27;
              *(a2 + 60) = *(v27 + 4);
              v28 = *v27;
              if (*v27 <= 8u)
              {
                if (((1 << v28) & 0x38) != 0)
                {
                  *(a2 + 80) = *(v27 + 24);
                }

                else if (((1 << v28) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v27 + 24);
                }

                else
                {
                  if (v28 != 8)
                  {
                    goto LABEL_51;
                  }

                  *(a2 + 80) = 0;
                  v29 = *(v27 + 24);
                  if (v29)
                  {
                    atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
                    v30 = *(a2 + 80);
                    *(a2 + 80) = v29;
                    if (v30)
                    {
                      if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v30, a2);
                      }
                    }
                  }
                }

                v23 = *(a2 + 56);
              }

LABEL_51:
              v24 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v24;
              if (v23 != 82)
              {
                v128 = v4;
                LODWORD(v129) = v5;
                DWORD1(v129) = v24 - v5;
                WGSL::AST::Builder::construct<WGSL::AST::Float32Literal,WGSL::SourceSpan,double &,void>();
              }
            }
          }

          LODWORD(v131[0]) = 5;
          *(v131 + 4) = *(a2 + 60);
          v132 = *(a2 + 80);
          v133 = 0;
          while (1)
          {
            v74 = *(a2 + 36);
            v75 = (*(a2 + 40) + 1);
            *(a2 + 40) = v75;
            if (v74 <= v75)
            {
              __break(0xC471u);
              JUMPOUT(0x22578A888);
            }

            v76 = *(a2 + 24) + 32 * v75;
            v72 = *v76;
            *(a2 + 56) = *v76;
            *(a2 + 60) = *(v76 + 4);
            v77 = *v76;
            if (*v76 <= 8u)
            {
              if (((1 << v77) & 0x38) != 0)
              {
                *(a2 + 80) = *(v76 + 24);
              }

              else if (((1 << v77) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v76 + 24);
              }

              else
              {
                if (v77 != 8)
                {
                  goto LABEL_151;
                }

                *(a2 + 80) = 0;
                v78 = *(v76 + 24);
                if (v78)
                {
                  atomic_fetch_add_explicit(v78, 2u, memory_order_relaxed);
                  v79 = *(a2 + 80);
                  *(a2 + 80) = v78;
                  if (v79)
                  {
                    if (atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v79, a2);
                    }
                  }
                }
              }

              v72 = *(a2 + 56);
            }

LABEL_151:
            v73 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v73;
            if (v72 != 82)
            {
              v128 = v4;
              LODWORD(v129) = v5;
              DWORD1(v129) = v73 - v5;
              WGSL::AST::Builder::construct<WGSL::AST::Unsigned32Literal,WGSL::SourceSpan,long long &,void>();
            }
          }
        }

        LODWORD(v131[0]) = 4;
        *(v131 + 4) = *(a2 + 60);
        v132 = *(a2 + 80);
        v133 = 0;
        while (1)
        {
          v58 = *(a2 + 36);
          v59 = (*(a2 + 40) + 1);
          *(a2 + 40) = v59;
          if (v58 <= v59)
          {
            __break(0xC471u);
            JUMPOUT(0x22578A878);
          }

          v60 = *(a2 + 24) + 32 * v59;
          v56 = *v60;
          *(a2 + 56) = *v60;
          *(a2 + 60) = *(v60 + 4);
          v61 = *v60;
          if (*v60 <= 8u)
          {
            if (((1 << v61) & 0x38) != 0)
            {
              *(a2 + 80) = *(v60 + 24);
            }

            else if (((1 << v61) & 0xC4) != 0)
            {
              *(a2 + 80) = *(v60 + 24);
            }

            else
            {
              if (v61 != 8)
              {
                goto LABEL_123;
              }

              *(a2 + 80) = 0;
              v62 = *(v60 + 24);
              if (v62)
              {
                atomic_fetch_add_explicit(v62, 2u, memory_order_relaxed);
                v63 = *(a2 + 80);
                *(a2 + 80) = v62;
                if (v63)
                {
                  if (atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v63, a2);
                  }
                }
              }
            }

            v56 = *(a2 + 56);
          }

LABEL_123:
          v57 = *(a2 + 68);
          *(a2 + 88) = *(a2 + 60);
          *(a2 + 96) = v57;
          if (v56 != 82)
          {
            v128 = v4;
            LODWORD(v129) = v5;
            DWORD1(v129) = v57 - v5;
            WGSL::AST::Builder::construct<WGSL::AST::Signed32Literal,WGSL::SourceSpan,long long &,void>();
          }
        }
      }

      if (v9 != 2)
      {
        if (v9 == 3)
        {
          LODWORD(v131[0]) = 3;
          *(v131 + 4) = *(a2 + 60);
          v132 = *(a2 + 80);
          v133 = 0;
          while (1)
          {
            v41 = *(a2 + 36);
            v42 = (*(a2 + 40) + 1);
            *(a2 + 40) = v42;
            if (v41 <= v42)
            {
              __break(0xC471u);
              JUMPOUT(0x22578A868);
            }

            v43 = *(a2 + 24) + 32 * v42;
            v39 = *v43;
            *(a2 + 56) = *v43;
            *(a2 + 60) = *(v43 + 4);
            v44 = *v43;
            if (*v43 <= 8u)
            {
              if (((1 << v44) & 0x38) != 0)
              {
                *(a2 + 80) = *(v43 + 24);
              }

              else if (((1 << v44) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v43 + 24);
              }

              else
              {
                if (v44 != 8)
                {
                  goto LABEL_85;
                }

                *(a2 + 80) = 0;
                v45 = *(v43 + 24);
                if (v45)
                {
                  atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
                  v46 = *(a2 + 80);
                  *(a2 + 80) = v45;
                  if (v46)
                  {
                    if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v46, a2);
                    }
                  }
                }
              }

              v39 = *(a2 + 56);
            }

LABEL_85:
            v40 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v40;
            if (v39 != 82)
            {
              v128 = v4;
              LODWORD(v129) = v5;
              DWORD1(v129) = v40 - v5;
              WGSL::AST::Builder::construct<WGSL::AST::AbstractIntegerLiteral,WGSL::SourceSpan,long long &,void>();
            }
          }
        }

LABEL_176:
        result = WTF::StringImpl::createWithoutCopyingNonEmpty();
        v88 = v5 | ((*(a2 + 96) - v5) << 32);
        goto LABEL_177;
      }

      LODWORD(v131[0]) = 2;
      *(v131 + 4) = *(a2 + 60);
      v132 = *(a2 + 80);
      v133 = 0;
      while (1)
      {
        v50 = *(a2 + 36);
        v51 = (*(a2 + 40) + 1);
        *(a2 + 40) = v51;
        if (v50 <= v51)
        {
          __break(0xC471u);
          JUMPOUT(0x22578A870);
        }

        v52 = *(a2 + 24) + 32 * v51;
        v48 = *v52;
        *(a2 + 56) = *v52;
        *(a2 + 60) = *(v52 + 4);
        v53 = *v52;
        if (*v52 <= 8u)
        {
          if (((1 << v53) & 0x38) != 0)
          {
            *(a2 + 80) = *(v52 + 24);
          }

          else if (((1 << v53) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v52 + 24);
          }

          else
          {
            if (v53 != 8)
            {
              goto LABEL_107;
            }

            *(a2 + 80) = 0;
            v54 = *(v52 + 24);
            if (v54)
            {
              atomic_fetch_add_explicit(v54, 2u, memory_order_relaxed);
              v55 = *(a2 + 80);
              *(a2 + 80) = v54;
              if (v55)
              {
                if (atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v55, a2);
                }
              }
            }
          }

          v48 = *(a2 + 56);
        }

LABEL_107:
        v49 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v49;
        if (v48 != 82)
        {
          v128 = v4;
          LODWORD(v129) = v5;
          DWORD1(v129) = v49 - v5;
          WGSL::AST::Builder::construct<WGSL::AST::AbstractFloatLiteral,WGSL::SourceSpan,double &,void>();
        }
      }
    }

    if (v9 > 21)
    {
      if (v9 != 22)
      {
        if (v9 != 33)
        {
          if (v9 != 67)
          {
            goto LABEL_176;
          }

          while (1)
          {
            v33 = *(a2 + 36);
            v34 = (*(a2 + 40) + 1);
            *(a2 + 40) = v34;
            if (v33 <= v34)
            {
              __break(0xC471u);
              JUMPOUT(0x22578A860);
            }

            v35 = *(a2 + 24) + 32 * v34;
            v31 = *v35;
            *(a2 + 56) = *v35;
            *(a2 + 60) = *(v35 + 4);
            v36 = *v35;
            if (*v35 > 8u)
            {
              goto LABEL_69;
            }

            if (((1 << v36) & 0x38) != 0)
            {
              *(a2 + 80) = *(v35 + 24);
            }

            else if (((1 << v36) & 0xC4) != 0)
            {
              *(a2 + 80) = *(v35 + 24);
            }

            else
            {
              if (v36 != 8)
              {
                goto LABEL_69;
              }

              *(a2 + 80) = 0;
              v37 = *(v35 + 24);
              if (v37)
              {
                atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
                v38 = *(a2 + 80);
                *(a2 + 80) = v37;
                if (v38)
                {
                  if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v38, a2);
                  }
                }
              }
            }

            v31 = *(a2 + 56);
LABEL_69:
            v32 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v32;
            if (v31 != 82)
            {
              result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(v131, a2);
              if (v132)
              {
                if (v132 == 1)
                {
                  result = v131[0];
                  if (v131[0])
                  {
                    atomic_fetch_add_explicit(v131[0], 2u, memory_order_relaxed);
                    v122 = *&v131[1];
                    v121 = result;
                    v123 = 1;
                    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
                    {
                      goto LABEL_192;
                    }

LABEL_285:
                    result = WTF::StringImpl::destroy(result, v20);
                    goto LABEL_192;
                  }

                  v122 = *&v131[1];
                  v121 = 0;
LABEL_178:
                  v123 = 1;
                  goto LABEL_192;
                }

LABEL_297:
                mpark::throw_bad_variant_access(result);
              }

              if (*(a2 + 56) == 68)
              {
                while (2)
                {
                  v99 = *(a2 + 36);
                  v100 = (*(a2 + 40) + 1);
                  *(a2 + 40) = v100;
                  if (v99 <= v100)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x22578A8C8);
                  }

                  v101 = *(a2 + 24) + 32 * v100;
                  v97 = *v101;
                  *(a2 + 56) = *v101;
                  *(a2 + 60) = *(v101 + 4);
                  v102 = *v101;
                  if (*v101 <= 8u)
                  {
                    if (((1 << v102) & 0x38) != 0)
                    {
                      *(a2 + 80) = *(v101 + 24);
                      goto LABEL_226;
                    }

                    if (((1 << v102) & 0xC4) != 0)
                    {
                      *(a2 + 80) = *(v101 + 24);
                      goto LABEL_226;
                    }

                    if (v102 == 8)
                    {
                      *(a2 + 80) = 0;
                      v103 = *(v101 + 24);
                      if (v103)
                      {
                        atomic_fetch_add_explicit(v103, 2u, memory_order_relaxed);
                        result = *(a2 + 80);
                        *(a2 + 80) = v103;
                        if (result)
                        {
                          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            result = WTF::StringImpl::destroy(result, v20);
                          }
                        }
                      }

LABEL_226:
                      v97 = *(a2 + 56);
                    }
                  }

                  v98 = *(a2 + 68);
                  *(a2 + 88) = *(a2 + 60);
                  *(a2 + 96) = v98;
                  if (v97 != 82)
                  {
                    v121 = v131[0];
                    v123 = 0;
                    goto LABEL_192;
                  }

                  continue;
                }
              }

              WGSL::toString();
              WGSL::toString();
              if (v125)
              {
                v106 = *(v125 + 1);
              }

              else
              {
                v106 = 0;
              }

              if (v124)
              {
                v109 = *(v124 + 1);
                if (v109 < 0)
                {
                  goto LABEL_311;
                }
              }

              else
              {
                v109 = 0;
              }

              v110 = __OFADD__(v109, 12);
              v111 = v109 + 12;
              v112 = v110;
              if ((v106 & 0x80000000) == 0 && (v112 & 1) == 0)
              {
                v110 = __OFADD__(v106, v111);
                v113 = v106 + v111;
                if (!v110)
                {
                  v114 = (v113 + 11);
                  if (!__OFADD__(v113, 11))
                  {
                    if (v125)
                    {
                      v115 = *(v125 + 4);
                      v116 = (v115 >> 2) & 1;
                      if (!v124 || (v115 & 4) == 0)
                      {
LABEL_287:
                        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v114, v116, "Expected a ", 0xBuLL, v125, ", but got a ", 0xCuLL, v124, &v128);
                        v120 = v128;
                        if (!v128)
                        {
                          goto LABEL_311;
                        }

                        if (v124 && atomic_fetch_add_explicit(v124, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v124, v20);
                        }

                        result = v125;
                        v125 = 0;
                        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          result = WTF::StringImpl::destroy(result, v20);
                        }

                        v88 = v5 | ((*(a2 + 96) - v5) << 32);
                        v121 = v120;
LABEL_177:
                        *&v122 = v4;
                        *(&v122 + 1) = v88;
                        goto LABEL_178;
                      }
                    }

                    else if (!v124)
                    {
                      v116 = 1;
                      goto LABEL_287;
                    }

                    v116 = (*(v124 + 16) >> 2) & 1;
                    goto LABEL_287;
                  }
                }
              }

LABEL_311:
              __break(0xC471u);
LABEL_312:
              JUMPOUT(0x22578A850);
            }
          }
        }

        while (1)
        {
          v82 = *(a2 + 36);
          v83 = (*(a2 + 40) + 1);
          *(a2 + 40) = v83;
          if (v82 <= v83)
          {
            __break(0xC471u);
            JUMPOUT(0x22578A890);
          }

          v84 = *(a2 + 24) + 32 * v83;
          v80 = *v84;
          *(a2 + 56) = *v84;
          *(a2 + 60) = *(v84 + 4);
          v85 = *v84;
          if (*v84 > 8u)
          {
            goto LABEL_165;
          }

          if (((1 << v85) & 0x38) != 0)
          {
            *(a2 + 80) = *(v84 + 24);
          }

          else if (((1 << v85) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v84 + 24);
          }

          else
          {
            if (v85 != 8)
            {
              goto LABEL_165;
            }

            *(a2 + 80) = 0;
            v86 = *(v84 + 24);
            if (v86)
            {
              atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
              v87 = *(a2 + 80);
              *(a2 + 80) = v86;
              if (v87)
              {
                if (atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v87, a2);
                }
              }
            }
          }

          v80 = *(a2 + 56);
LABEL_165:
          v81 = *(a2 + 68);
          *(a2 + 88) = *(a2 + 60);
          *(a2 + 96) = v81;
          if (v80 != 82)
          {
            v131[0] = v4;
            LODWORD(v131[1]) = v5;
            HIDWORD(v131[1]) = v81 - v5;
            LOBYTE(v128) = 1;
LABEL_191:
            WGSL::AST::Builder::construct<WGSL::AST::BoolLiteral,WGSL::SourceSpan,BOOL,void>();
          }
        }
      }

      while (1)
      {
        v66 = *(a2 + 36);
        v67 = (*(a2 + 40) + 1);
        *(a2 + 40) = v67;
        if (v66 <= v67)
        {
          __break(0xC471u);
          JUMPOUT(0x22578A880);
        }

        v68 = *(a2 + 24) + 32 * v67;
        v64 = *v68;
        *(a2 + 56) = *v68;
        *(a2 + 60) = *(v68 + 4);
        v69 = *v68;
        if (*v68 > 8u)
        {
          goto LABEL_137;
        }

        if (((1 << v69) & 0x38) != 0)
        {
          *(a2 + 80) = *(v68 + 24);
        }

        else if (((1 << v69) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v68 + 24);
        }

        else
        {
          if (v69 != 8)
          {
            goto LABEL_137;
          }

          *(a2 + 80) = 0;
          v70 = *(v68 + 24);
          if (v70)
          {
            atomic_fetch_add_explicit(v70, 2u, memory_order_relaxed);
            v71 = *(a2 + 80);
            *(a2 + 80) = v70;
            if (v71)
            {
              if (atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v71, a2);
              }
            }
          }
        }

        v64 = *(a2 + 56);
LABEL_137:
        v65 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v65;
        if (v64 != 82)
        {
          v131[0] = v4;
          LODWORD(v131[1]) = v5;
          HIDWORD(v131[1]) = v65 - v5;
          LOBYTE(v128) = 0;
          goto LABEL_191;
        }
      }
    }

    if (v9 != 7)
    {
      if (v9 != 8)
      {
        goto LABEL_176;
      }

      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v131, a2);
      if (v133)
      {
        if (v133 != 1)
        {
          goto LABEL_297;
        }

        v47 = v131[0];
        if (v131[0])
        {
          atomic_fetch_add_explicit(v131[0], 2u, memory_order_relaxed);
        }

        v122 = *&v131[1];
        v121 = v47;
LABEL_103:
        v123 = 1;
        goto LABEL_279;
      }

      if (MEMORY[0x22AA683D0](v132, "array", 5))
      {
        result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseArrayType(&v128, a2);
        if (v130)
        {
          if (v130 != 1)
          {
            goto LABEL_297;
          }

          result = v128;
          if (v128)
          {
            atomic_fetch_add_explicit(v128, 2u, memory_order_relaxed);
            v122 = v129;
            v121 = result;
            v123 = 1;
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v20);
            }

            goto LABEL_279;
          }

          v122 = v129;
          v121 = 0;
          goto LABEL_103;
        }

        result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseArgumentExpressionList(&v125, a2);
        if (!v127)
        {
          WGSL::AST::Builder::construct<WGSL::AST::CallExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Expression,0ul>,void>();
        }

        if (v127 != 1)
        {
          goto LABEL_297;
        }

        v108 = v125;
        if (v125)
        {
          atomic_fetch_add_explicit(v125, 2u, memory_order_relaxed);
        }

        v122 = v126;
        v121 = v108;
        v123 = 1;
        result = std::experimental::fundamentals_v3::expected<WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::CompilationMessage>::~expected(&v125, v107);
      }

      else
      {
        if ((*(a2 + 56) | 0x10) != 0x53)
        {
          v117 = *(a2 + 96) - v5;
          v128 = v4;
          *&v129 = __PAIR64__(v117, v5);
          WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
        }

        result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeNameAfterIdentifier(&v128, a2, v131, v4, v5);
        if (v130)
        {
          if (v130 != 1)
          {
            goto LABEL_297;
          }

          v105 = v128;
          if (v128)
          {
            atomic_fetch_add_explicit(v128, 2u, memory_order_relaxed);
          }

          v122 = v129;
          v121 = v105;
          v123 = 1;
        }

        else
        {
          result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseArgumentExpressionList(&v125, a2);
          if (!v127)
          {
            WGSL::AST::Builder::construct<WGSL::AST::CallExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Expression,0ul>,void>();
          }

          if (v127 != 1)
          {
            goto LABEL_297;
          }

          v119 = v125;
          if (v125)
          {
            atomic_fetch_add_explicit(v125, 2u, memory_order_relaxed);
          }

          v122 = v126;
          v121 = v119;
          v123 = 1;
          std::experimental::fundamentals_v3::expected<WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::CompilationMessage>::~expected(&v125, v118);
        }

        result = std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v128, v104);
      }

LABEL_279:
      if (v133 == 255)
      {
        goto LABEL_192;
      }

      if (v133)
      {
        result = v131[0];
        v131[0] = 0;
        if (!result)
        {
          goto LABEL_192;
        }
      }

      else
      {
        result = v132;
        v131[0] = off_2838D37C0;
        v132 = 0;
        if (!result)
        {
          goto LABEL_192;
        }
      }

      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        goto LABEL_285;
      }

LABEL_192:
      if (v123)
      {
        if (v123 != 1)
        {
          goto LABEL_297;
        }

        if (v121)
        {
          atomic_fetch_add_explicit(v121, 2u, memory_order_relaxed);
        }

        *(a1 + 8) = v122;
        *a1 = v121;
        *(a1 + 24) = 1;
      }

      else
      {
        result = WGSL::Parser<WGSL::Lexer<char16_t>>::parsePostfixExpression(a1, a2, v121, v4, v5);
      }

      if (v123)
      {
        result = v121;
        if (v121)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_199;
    }

    if ((*(*a2 + 34) & 1) == 0)
    {
      goto LABEL_176;
    }

    LODWORD(v131[0]) = 7;
    *(v131 + 4) = *(a2 + 60);
    v132 = *(a2 + 80);
    v133 = 0;
    while (1)
    {
      v91 = *(a2 + 36);
      v92 = (*(a2 + 40) + 1);
      *(a2 + 40) = v92;
      if (v91 <= v92)
      {
        __break(0xC471u);
        JUMPOUT(0x22578A8B8);
      }

      v93 = *(a2 + 24) + 32 * v92;
      v89 = *v93;
      *(a2 + 56) = *v93;
      *(a2 + 60) = *(v93 + 4);
      v94 = *v93;
      if (*v93 <= 8u)
      {
        if (((1 << v94) & 0x38) != 0)
        {
          *(a2 + 80) = *(v93 + 24);
        }

        else if (((1 << v94) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v93 + 24);
        }

        else
        {
          if (v94 != 8)
          {
            goto LABEL_205;
          }

          *(a2 + 80) = 0;
          v95 = *(v93 + 24);
          if (v95)
          {
            atomic_fetch_add_explicit(v95, 2u, memory_order_relaxed);
            v96 = *(a2 + 80);
            *(a2 + 80) = v95;
            if (v96)
            {
              if (atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v96, a2);
              }
            }
          }
        }

        v89 = *(a2 + 56);
      }

LABEL_205:
      v90 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v90;
      if (v89 != 82)
      {
        v128 = v4;
        LODWORD(v129) = v5;
        DWORD1(v129) = v90 - v5;
        WGSL::AST::Builder::construct<WGSL::AST::Float16Literal,WGSL::SourceSpan,double &,void>();
      }
    }
  }

  *(a2 + 56) = 59;
  if (*(a2 + 36) <= (*(a2 + 40) + 1))
  {
    __break(0xC471u);
    JUMPOUT(0x22578A8C0);
  }

  *(*(a2 + 24) + 32 * (*(a2 + 40) + 1)) = 59;
  v9 = *(a2 + 56);
  if (v9 <= 58)
  {
    goto LABEL_12;
  }

LABEL_6:
  if (v9 == 59)
  {
    v11 = 3;
    goto LABEL_19;
  }

  if (v9 != 76)
  {
    if (v9 == 78)
    {
      v11 = 1;
      goto LABEL_19;
    }

    goto LABEL_307;
  }

  v11 = 2;
LABEL_19:
  LOBYTE(v125) = v11;
  do
  {
    v14 = *(a2 + 36);
    v15 = (*(a2 + 40) + 1);
    *(a2 + 40) = v15;
    if (v14 <= v15)
    {
      __break(0xC471u);
      goto LABEL_312;
    }

    v16 = *(a2 + 24) + 32 * v15;
    v12 = *v16;
    *(a2 + 56) = *v16;
    *(a2 + 60) = *(v16 + 4);
    v17 = *v16;
    if (*v16 <= 8u)
    {
      if (((1 << v17) & 0x38) != 0)
      {
        *(a2 + 80) = *(v16 + 24);
LABEL_21:
        v12 = *(a2 + 56);
        goto LABEL_22;
      }

      if (((1 << v17) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v16 + 24);
        goto LABEL_21;
      }

      if (v17 == 8)
      {
        *(a2 + 80) = 0;
        v18 = *(v16 + 24);
        if (v18)
        {
          atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
          v19 = *(a2 + 80);
          *(a2 + 80) = v18;
          if (v19)
          {
            if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, a2);
            }
          }
        }

        goto LABEL_21;
      }
    }

LABEL_22:
    v13 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v13;
  }

  while (v12 == 82);
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(v131, a2);
  if (!v132)
  {
    v22 = *(a2 + 96) - v5;
    v128 = v4;
    *&v129 = __PAIR64__(v22, v5);
    WGSL::AST::Builder::construct<WGSL::AST::UnaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::UnaryOperation &,void>();
  }

  if (v132 != 1)
  {
    goto LABEL_297;
  }

  v21 = v131[0];
  if (v131[0])
  {
    atomic_fetch_add_explicit(v131[0], 2u, memory_order_relaxed);
  }

  *(a1 + 8) = *&v131[1];
  *a1 = v21;
  *(a1 + 24) = 1;
  if (v132)
  {
    if (v132 != 255)
    {
      result = v131[0];
      v131[0] = 0;
      if (result)
      {
LABEL_42:
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v20);
        }
      }
    }
  }

LABEL_199:
  *(a2 + 44) = v6;
  return result;
}

mpark *WGSL::Parser<WGSL::Lexer<char16_t>>::parseRelationalExpressionPostUnary(uint64_t a1, uint64_t a2, WTF::StringImpl **a3)
{
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseShiftExpressionPostUnary(&v27, a2, a3);
  if (v29)
  {
    if (v29 == 1)
    {
      result = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      *(a1 + 8) = v28;
      *a1 = result;
      *(a1 + 24) = 1;
      if (result)
      {
        goto LABEL_6;
      }

      return result;
    }

LABEL_59:
    mpark::throw_bad_variant_access(result);
  }

  result = v27;
  *a3 = v27;
  v10 = *(a2 + 56);
  if (v10 > 0x38 || ((1 << v10) & 0x19C040000000000) == 0)
  {
    *a1 = result;
    *(a1 + 24) = 0;
    return result;
  }

  result = WGSL::toBinaryOperation(*(a2 + 56));
  do
  {
    v15 = *(a2 + 36);
    v16 = (*(a2 + 40) + 1);
    *(a2 + 40) = v16;
    if (v15 <= v16)
    {
      __break(0xC471u);
      return result;
    }

    v17 = *(a2 + 24) + 32 * v16;
    v13 = *v17;
    *(a2 + 56) = *v17;
    *(a2 + 60) = *(v17 + 4);
    v18 = *v17;
    if (*v17 <= 8u)
    {
      if (((1 << v18) & 0x38) != 0)
      {
        *(a2 + 80) = *(v17 + 24);
LABEL_14:
        v13 = *(a2 + 56);
        goto LABEL_15;
      }

      if (((1 << v18) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v17 + 24);
        goto LABEL_14;
      }

      if (v18 == 8)
      {
        *(a2 + 80) = 0;
        v19 = *(v17 + 24);
        if (v19)
        {
          atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
          result = *(a2 + 80);
          *(a2 + 80) = v19;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v12);
            }
          }
        }

        goto LABEL_14;
      }
    }

LABEL_15:
    v14 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v14;
  }

  while (v13 == 82);
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(&v33, a2);
  if (!v35)
  {
    result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseShiftExpressionPostUnary(&v30, a2, &v33);
    v23 = v32;
    if (v32)
    {
      if (v32 != 1)
      {
        goto LABEL_59;
      }

      v20 = v30;
      if (!v30)
      {
        v26 = v31;
        v21 = 0;
        v22 = v35;
        if (!v35)
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }

      atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
      v26 = v31;
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(v20, v9);
        v21 = 0;
        v22 = v35;
        if (!v35)
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v20 = v30;
    }

    v21 = v23 == 0;
    v22 = v35;
    if (!v35)
    {
      goto LABEL_44;
    }

LABEL_40:
    if (v22 != 255)
    {
      result = v33;
      v33 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v9);
        }
      }
    }

    goto LABEL_44;
  }

  if (v35 != 1)
  {
    goto LABEL_59;
  }

  v20 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
  }

  v21 = 0;
  v26 = v34;
  v22 = v35;
  if (v35)
  {
    goto LABEL_40;
  }

LABEL_44:
  if (v21)
  {
    v24 = *(a2 + 96) - v7;
    v33 = v6;
    *&v34 = __PAIR64__(v24, v7);
    WGSL::AST::Builder::construct<WGSL::AST::BinaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::BinaryOperation const&,void>();
  }

  if (v20)
  {
    atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    *(a1 + 8) = v26;
    *a1 = v20;
    *(a1 + 24) = 1;
    if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v20, v9);
    }

    v25 = v29;
    if (v29)
    {
LABEL_52:
      if (v25 == 255)
      {
        return result;
      }

      result = v27;
      if (!v27)
      {
        return result;
      }

LABEL_6:
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  else
  {
    *(a1 + 8) = v26;
    *a1 = 0;
    *(a1 + 24) = 1;
    v25 = v29;
    if (v29)
    {
      goto LABEL_52;
    }
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<char16_t>>::parseShortCircuitExpression(WTF::StringImpl *result, uint64_t a2, WTF::StringImpl **a3, int a4)
{
  v4 = result;
  if (*(a2 + 56) != a4)
  {
    result = *a3;
    *v4 = *a3;
    *(v4 + 24) = 0;
    return result;
  }

  v6 = *(a2 + 88);
  v7 = *(a2 + 92);
  v8 = *(a2 + 96);
  v24 = *result;
  v25 = result;
  v23 = *(result + 24);
  do
  {
    v9 = *(a2 + 36);
    v10 = (*(a2 + 40) + 1);
    *(a2 + 40) = v10;
    if (v9 <= v10)
    {
      *(v25 + 24) = v23;
      *v25 = v24;
      __break(0xC471u);
      return result;
    }

    v11 = *(a2 + 24) + 32 * v10;
    v12 = *v11;
    *(a2 + 56) = *v11;
    *(a2 + 60) = *(v11 + 4);
    v13 = *v11;
    if (*v11 <= 8u)
    {
      if (((1 << v13) & 0x38) != 0)
      {
        *(a2 + 80) = *(v11 + 24);
        goto LABEL_9;
      }

      if (((1 << v13) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v11 + 24);
LABEL_9:
        v12 = *(a2 + 56);
        goto LABEL_10;
      }

      if (v13 == 8)
      {
        *(a2 + 80) = 0;
        v20 = *(v11 + 24);
        if (v20)
        {
          atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
          result = *(a2 + 80);
          *(a2 + 80) = v20;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }

        goto LABEL_9;
      }
    }

LABEL_10:
    v14 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v14;
  }

  while (v12 == 82);
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(&v30, a2);
  if (!v32)
  {
    result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseRelationalExpressionPostUnary(&v27, a2, &v30);
    v19 = v29;
    if (v29)
    {
      if (v29 != 1)
      {
LABEL_44:
        mpark::throw_bad_variant_access(result);
      }

      v16 = v27;
      if (!v27)
      {
        v26 = v28;
        v17 = 0;
        v18 = v32;
        if (!v32)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      }

      atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      v26 = v28;
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(v16, v15);
        v17 = 0;
        v18 = v32;
        if (!v32)
        {
          goto LABEL_34;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v16 = v27;
    }

    v17 = v19 == 0;
    v18 = v32;
    if (!v32)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  if (v32 != 1)
  {
    goto LABEL_44;
  }

  v16 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
  }

  v17 = 0;
  v26 = v31;
  v18 = v32;
  if (v32)
  {
LABEL_30:
    if (v18 != 255)
    {
      result = v30;
      v30 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v15);
        }
      }
    }
  }

LABEL_34:
  if (v17)
  {
    v21 = *(a2 + 96) - v8;
    v30 = __PAIR64__(v7, v6);
    *&v31 = __PAIR64__(v21, v8);
    WGSL::AST::Builder::construct<WGSL::AST::BinaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::BinaryOperation const&,void>();
  }

  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
    v22 = v25;
    *(v25 + 8) = v26;
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v16, v15);
      v22 = v25;
    }
  }

  else
  {
    v22 = v25;
    *(v25 + 8) = v26;
  }

  *(v22 + 24) = 1;
  *v22 = v16;
  return result;
}