WTF::StringImpl *WGSL::Parser<WGSL::Lexer<char16_t>>::parsePostfixExpression(WTF::StringImpl **a1, uint64_t a2, WTF::StringImpl *a3, unint64_t a4, int a5)
{
  v6 = a4;
  result = a3;
  v61 = *(a2 + 96);
  v62 = *(a2 + 88);
  v75 = a3;
  v64 = *a1;
  v10 = HIDWORD(a4);
  v63 = *(a1 + 24);
  v11 = *(a2 + 56);
  if (v11 == 45)
  {
    while (1)
    {
      v14 = *(a2 + 36);
      v15 = (*(a2 + 40) + 1);
      *(a2 + 40) = v15;
      if (v14 <= v15)
      {
        *(a1 + 24) = v63;
        *a1 = v64;
        __break(0xC471u);
        goto LABEL_106;
      }

      v16 = *(a2 + 24) + 32 * v15;
      v12 = *v16;
      *(a2 + 56) = *v16;
      *(a2 + 60) = *(v16 + 4);
      v17 = *v16;
      if (*v16 > 8u)
      {
        goto LABEL_7;
      }

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
          goto LABEL_7;
        }

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
      }

      v12 = *(a2 + 56);
LABEL_7:
      v13 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v13;
      if (v12 != 82)
      {
        v20 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v66, a2);
        if (v68)
        {
          if (v68 != 1)
          {
            *(a1 + 24) = v63;
            *a1 = v64;
            mpark::throw_bad_variant_access(v20);
          }

          result = v66;
          v65 = v66;
          if (v66)
          {
            atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
            *(a1 + 1) = v67;
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v21);
            }
          }

          else
          {
            *(a1 + 1) = v67;
          }

          goto LABEL_98;
        }

        if (*(a2 + 56) != 46)
        {
          WGSL::toString();
          WGSL::toString();
          if (v74)
          {
            v48 = *(v74 + 1);
            if (v73)
            {
LABEL_69:
              v49 = *(v73 + 1);
              if (v49 < 0)
              {
                goto LABEL_105;
              }

              v47 = __OFADD__(v49, 12);
              v50 = v49 + 12;
              v51 = v47;
              if (v48 < 0)
              {
                goto LABEL_105;
              }

LABEL_80:
              if (v51)
              {
                goto LABEL_105;
              }

              v47 = __OFADD__(v48, v50);
              v52 = v48 + v50;
              if (v47)
              {
                goto LABEL_105;
              }

              v53 = (v52 + 11);
              if (__OFADD__(v52, 11))
              {
                goto LABEL_105;
              }

              if (v74)
              {
                v54 = *(v74 + 4);
                v55 = (v54 >> 2) & 1;
                if (!v73 || (v54 & 4) == 0)
                {
                  goto LABEL_90;
                }

LABEL_88:
                v55 = (*(v73 + 16) >> 2) & 1;
              }

              else
              {
                if (v73)
                {
                  goto LABEL_88;
                }

                v55 = 1;
              }

LABEL_90:
              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v53, v55, "Expected a ", 0xBuLL, v74, ", but got a ", 0xCuLL, v73, &v70);
              v57 = v70;
              if (v70)
              {
                v58 = v73;
                v73 = 0;
                if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v58, v56);
                }

                v65 = v57;
                result = v74;
                v74 = 0;
                if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v56);
                }

                v59 = v61 | ((*(a2 + 96) - v61) << 32);
                a1[1] = v62;
                a1[2] = v59;
                goto LABEL_98;
              }

LABEL_105:
              __break(0xC471u);
LABEL_106:
              JUMPOUT(0x22578B5A8);
            }
          }

          else
          {
            v48 = 0;
            if (v73)
            {
              goto LABEL_69;
            }
          }

          v50 = 12;
          v51 = v47;
          if ((v48 & 0x80000000) == 0)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
        }

        while (2)
        {
          v24 = *(a2 + 36);
          v25 = (*(a2 + 40) + 1);
          *(a2 + 40) = v25;
          if (v24 <= v25)
          {
            *(a1 + 24) = v63;
            *a1 = v64;
            __break(0xC471u);
            JUMPOUT(0x22578B5C0);
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
              goto LABEL_22;
            }

            if (((1 << v27) & 0xC4) != 0)
            {
              *(a2 + 80) = *(v26 + 24);
              goto LABEL_22;
            }

            if (v27 == 8)
            {
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
                    WTF::StringImpl::destroy(v29, v21);
                  }
                }
              }

LABEL_22:
              v22 = *(a2 + 56);
            }
          }

          v23 = *(a2 + 68);
          *(a2 + 88) = *(a2 + 60);
          *(a2 + 96) = v23;
          if (v22 != 82)
          {
            v70 = __PAIR64__(v10, v6);
            v71 = a5;
            v72 = v23 - a5;
            WGSL::AST::Builder::construct<WGSL::AST::IndexAccessExpression,WGSL::SourceSpan &,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,void>();
          }

          continue;
        }
      }
    }
  }

  if (v11 != 69)
  {
    *a1 = a3;
    *(a1 + 24) = 0;
    return result;
  }

  do
  {
    v32 = *(a2 + 36);
    v33 = (*(a2 + 40) + 1);
    *(a2 + 40) = v33;
    if (v32 <= v33)
    {
      *(a1 + 24) = v63;
      *a1 = v64;
      __break(0xC471u);
      JUMPOUT(0x22578B5D8);
    }

    v34 = *(a2 + 24) + 32 * v33;
    v30 = *v34;
    *(a2 + 56) = *v34;
    *(a2 + 60) = *(v34 + 4);
    v35 = *v34;
    if (*v34 <= 8u)
    {
      if (((1 << v35) & 0x38) != 0)
      {
        *(a2 + 80) = *(v34 + 24);
LABEL_37:
        v30 = *(a2 + 56);
        goto LABEL_38;
      }

      if (((1 << v35) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v34 + 24);
        goto LABEL_37;
      }

      if (v35 == 8)
      {
        *(a2 + 80) = 0;
        v36 = *(v34 + 24);
        if (v36)
        {
          atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
          v37 = *(a2 + 80);
          *(a2 + 80) = v36;
          if (v37)
          {
            if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v38 = a1;
              v39 = result;
              WTF::StringImpl::destroy(v37, a2);
              result = v39;
              a1 = v38;
            }
          }
        }

        goto LABEL_37;
      }
    }

LABEL_38:
    v31 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v31;
  }

  while (v30 == 82);
  v60 = a1;
  v40 = result;
  v41 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v66, a2);
  if (!v69)
  {
    v44 = *(a2 + 96) - a5;
    v70 = __PAIR64__(v10, v6);
    v71 = a5;
    v72 = v44;
    WGSL::AST::Builder::construct<WGSL::AST::FieldAccessExpression,WGSL::SourceSpan &,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::Identifier,void>();
  }

  if (v69 != 1)
  {
    *(v60 + 24) = v63;
    *v60 = v64;
    mpark::throw_bad_variant_access(v41);
  }

  v43 = v66;
  result = v40;
  if (v66)
  {
    atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
  }

  v65 = v43;
  a1 = v60;
  *(v60 + 1) = v67;
  if (v69 != 255)
  {
    if (v69)
    {
      v45 = v66;
      v66 = 0;
      if (!v45)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v45 = v68;
      v66 = off_2838D37C0;
      v68 = 0;
      if (!v45)
      {
        goto LABEL_98;
      }
    }

    if (atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v46 = result;
      WTF::StringImpl::destroy(v45, v42);
      result = v46;
      a1 = v60;
    }
  }

LABEL_98:
  *(a1 + 24) = 1;
  *a1 = v65;
  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<char16_t>>::parseArgumentExpressionList(WTF::StringImpl *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v6 = *(a2 + 44);
  *(a2 + 44) = v6 + 1;
  if ((v6 + 1) >= 0x81)
  {
    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
    v7 = v5 | ((*(a2 + 96) - v5) << 32);
LABEL_131:
    *(v3 + 1) = v4;
    *(v3 + 2) = v7;
    *(v3 + 24) = 1;
    goto LABEL_132;
  }

  if (*(a2 + 56) != 67)
  {
    WGSL::toString();
    WGSL::toString();
    if (v71)
    {
      v16 = *(v71 + 1);
      if (v70)
      {
LABEL_20:
        v17 = *(v70 + 1);
        if (v17 < 0)
        {
          goto LABEL_138;
        }

        v15 = __OFADD__(v17, 12);
        v18 = v17 + 12;
        v19 = v15;
        if (v16 < 0)
        {
          goto LABEL_138;
        }

LABEL_113:
        if (v19)
        {
          goto LABEL_138;
        }

        v15 = __OFADD__(v16, v18);
        v54 = v16 + v18;
        if (v15)
        {
          goto LABEL_138;
        }

        v55 = (v54 + 11);
        if (__OFADD__(v54, 11))
        {
          goto LABEL_138;
        }

        if (v71)
        {
          v56 = *(v71 + 4);
          v57 = (v56 >> 2) & 1;
          if (!v70 || (v56 & 4) == 0)
          {
LABEL_123:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v55, v57, "Expected a ", 0xBuLL, v71, ", but got a ", 0xCuLL, v70, &v65);
            v59 = v65;
            if (v65)
            {
              v60 = v70;
              v70 = 0;
              if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v60, v58);
              }

              result = v71;
              v71 = 0;
              if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v58);
              }

              v7 = v5 | ((*(a2 + 96) - v5) << 32);
              *v3 = v59;
              goto LABEL_131;
            }

LABEL_138:
            __break(0xC471u);
LABEL_139:
            JUMPOUT(0x22578BC88);
          }
        }

        else if (!v70)
        {
          v57 = 1;
          goto LABEL_123;
        }

        v57 = (*(v70 + 16) >> 2) & 1;
        goto LABEL_123;
      }
    }

    else
    {
      v16 = 0;
      if (v70)
      {
        goto LABEL_20;
      }
    }

    v18 = 12;
    v19 = v15;
    if (v16 < 0)
    {
      goto LABEL_138;
    }

    goto LABEL_113;
  }

  do
  {
    v10 = *(a2 + 36);
    v11 = (*(a2 + 40) + 1);
    *(a2 + 40) = v11;
    if (v10 <= v11)
    {
      __break(0xC471u);
      JUMPOUT(0x22578BC90);
    }

    v12 = *(a2 + 24) + 32 * v11;
    v8 = *v12;
    *(a2 + 56) = *v12;
    *(a2 + 60) = *(v12 + 4);
    v13 = *v12;
    if (*v12 <= 8u)
    {
      if (((1 << v13) & 0x38) != 0)
      {
        *(a2 + 80) = *(v12 + 24);
LABEL_6:
        v8 = *(a2 + 56);
        goto LABEL_7;
      }

      if (((1 << v13) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v12 + 24);
        goto LABEL_6;
      }

      if (v13 == 8)
      {
        *(a2 + 80) = 0;
        v14 = *(v12 + 24);
        if (v14)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
          result = *(a2 + 80);
          *(a2 + 80) = v14;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }

        goto LABEL_6;
      }
    }

LABEL_7:
    v9 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v9;
  }

  while (v8 == 82);
  v61 = v5;
  v62 = v4;
  v20 = 0;
  v21 = 0;
  v68 = 0;
  v69 = 0;
  v22 = *v3;
  v23 = *(v3 + 24);
  do
  {
    if (*(a2 + 56) == 68)
    {
      *(v3 + 24) = v23;
      *v3 = v22;
      while (1)
      {
        v49 = *(a2 + 36);
        v50 = (*(a2 + 40) + 1);
        *(a2 + 40) = v50;
        if (v49 <= v50)
        {
          __break(0xC471u);
          JUMPOUT(0x22578BC98);
        }

        v51 = *(a2 + 24) + 32 * v50;
        v47 = *v51;
        *(a2 + 56) = *v51;
        *(a2 + 60) = *(v51 + 4);
        v52 = *v51;
        if (*v51 > 8u)
        {
          goto LABEL_93;
        }

        if (((1 << v52) & 0x38) != 0)
        {
          *(a2 + 80) = *(v51 + 24);
        }

        else if (((1 << v52) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v51 + 24);
        }

        else
        {
          if (v52 != 8)
          {
            goto LABEL_93;
          }

          *(a2 + 80) = 0;
          v53 = *(v51 + 24);
          if (v53)
          {
            atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
            result = *(a2 + 80);
            *(a2 + 80) = v53;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, a2);
              }
            }
          }
        }

        v47 = *(a2 + 56);
LABEL_93:
        v48 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v48;
        if (v47 != 82)
        {
          *v3 = v68;
          *(v3 + 2) = v69;
          *(v3 + 3) = v21;
          *(v3 + 24) = 0;
          goto LABEL_132;
        }
      }
    }

    result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v65, a2);
    if (v67)
    {
      if (v67 != 1)
      {
        *(v3 + 24) = v23;
        *v3 = v22;
        mpark::throw_bad_variant_access(result);
      }

      v22 = v65;
      if (v65)
      {
        atomic_fetch_add_explicit(v65, 2u, memory_order_relaxed);
      }

      v24 = 0;
      *(v3 + 8) = v66;
      goto LABEL_85;
    }

    if (v21 == v69)
    {
      result = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v68, v21 + 1, &v65);
      v25 = HIDWORD(v69);
      v20 = v68;
      *(v68 + HIDWORD(v69)) = *result;
      v21 = v25 + 1;
      HIDWORD(v69) = v25 + 1;
      v26 = *(a2 + 56);
      if (v26 == 68)
      {
        goto LABEL_60;
      }
    }

    else
    {
      *(v20 + v21) = v65;
      v21 = ++HIDWORD(v69);
      v26 = *(a2 + 56);
      if (v26 == 68)
      {
LABEL_60:
        v24 = 1;
        v40 = v67;
        if (!v67)
        {
          continue;
        }

        goto LABEL_86;
      }
    }

    if (v26 == 48)
    {
      while (1)
      {
        v35 = *(a2 + 36);
        v36 = (*(a2 + 40) + 1);
        *(a2 + 40) = v36;
        if (v35 <= v36)
        {
          *(v3 + 24) = v23;
          *v3 = v22;
          __break(0xC471u);
          goto LABEL_139;
        }

        v37 = *(a2 + 24) + 32 * v36;
        v33 = *v37;
        *(a2 + 56) = *v37;
        *(a2 + 60) = *(v37 + 4);
        v38 = *v37;
        if (*v37 <= 8u)
        {
          if (((1 << v38) & 0x38) != 0)
          {
            *(a2 + 80) = *(v37 + 24);
          }

          else if (((1 << v38) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v37 + 24);
          }

          else
          {
            if (v38 != 8)
            {
              goto LABEL_49;
            }

            *(a2 + 80) = 0;
            v39 = *(v37 + 24);
            if (v39)
            {
              atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
              result = *(a2 + 80);
              *(a2 + 80) = v39;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, a2);
                }
              }
            }
          }

          v33 = *(a2 + 56);
        }

LABEL_49:
        v34 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v34;
        if (v33 != 82)
        {
          goto LABEL_60;
        }
      }
    }

    WGSL::toString();
    WGSL::toString();
    if (v64)
    {
      v28 = *(v64 + 1);
      v29 = v63;
      if (v63)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v28 = 0;
      v29 = v63;
      if (v63)
      {
LABEL_41:
        v30 = *(v29 + 4);
        if (v30 < 0)
        {
          goto LABEL_137;
        }

        v15 = __OFADD__(v30, 12);
        v31 = v30 + 12;
        v32 = v15;
        if (v28 < 0)
        {
          goto LABEL_137;
        }

        goto LABEL_67;
      }
    }

    v31 = 12;
    if (v27)
    {
      v32 = 1;
    }

    else
    {
      v32 = 0;
    }

    if (v28 < 0)
    {
LABEL_137:
      __break(0xC471u);
      JUMPOUT(0x22578BCA0);
    }

LABEL_67:
    if (v32)
    {
      goto LABEL_137;
    }

    v15 = __OFADD__(v28, v31);
    v41 = v28 + v31;
    if (v15)
    {
      goto LABEL_137;
    }

    v42 = (v41 + 11);
    if (__OFADD__(v41, 11))
    {
      goto LABEL_137;
    }

    if (v64)
    {
      v43 = *(v64 + 4);
      v44 = (v43 >> 2) & 1;
      if (!v29 || (v43 & 4) == 0)
      {
        goto LABEL_77;
      }
    }

    else if (!v29)
    {
      v44 = 1;
      goto LABEL_77;
    }

    v44 = (*(v29 + 16) >> 2) & 1;
LABEL_77:
    WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v42, v44, "Expected a ", 0xBuLL, v64, ", but got a ", 0xCuLL, v29, &v72);
    v22 = v72;
    if (!v72)
    {
      goto LABEL_137;
    }

    v45 = v63;
    v63 = 0;
    if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, a2);
    }

    result = v64;
    v64 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, a2);
    }

    v24 = 0;
    v46 = v61 | ((*(a2 + 96) - v61) << 32);
    *(v3 + 1) = v62;
    *(v3 + 2) = v46;
LABEL_85:
    v23 = 1;
    v40 = v67;
    if (!v67)
    {
      continue;
    }

LABEL_86:
    if (v40 != 255)
    {
      result = v65;
      v65 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }
    }
  }

  while ((v24 & 1) != 0);
  *(v3 + 24) = v23;
  *v3 = v22;
  if (v20)
  {
    v68 = 0;
    LODWORD(v69) = 0;
    result = WTF::fastFree(v20, a2);
  }

LABEL_132:
  *(a2 + 44) = v6;
  return result;
}

atomic_uint *WGSL::Parser<WGSL::Lexer<char16_t>>::parseShiftExpressionPostUnary(atomic_uint *result, uint64_t a2, void *a3)
{
  v5 = result;
  v6 = *(a2 + 56);
  if ((v6 - 59) <= 0x11)
  {
    if (((1 << (v6 - 59)) & 0x28809) != 0)
    {
      goto LABEL_3;
    }

    if (v6 == 60)
    {
      *(a2 + 56) = 59;
      if (*(a2 + 36) <= (*(a2 + 40) + 1))
      {
        __break(0xC471u);
LABEL_108:
        JUMPOUT(0x22578C350);
      }

      *(*(a2 + 24) + 32 * (*(a2 + 40) + 1)) = 59;
LABEL_3:
      result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseMultiplicativeExpressionPostUnary(&v55, a2, a3);
      if (v57)
      {
        if (v57 != 1)
        {
          goto LABEL_102;
        }

        result = v55;
        if (v55)
        {
          atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
        }

        *(v5 + 2) = v56;
        *v5 = result;
        *(v5 + 24) = 1;
        if (!result)
        {
          return result;
        }

LABEL_50:
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }

        return result;
      }

      v46 = v55;
      *a3 = v55;
      v8 = *v5;
      v47 = *(v5 + 24);
LABEL_10:
      v9 = *(a2 + 56);
      if ((v9 - 59) > 0x11)
      {
LABEL_72:
        *v5 = *a3;
        *(v5 + 24) = 0;
        return v46;
      }

      if (((1 << (v9 - 59)) & 0x28809) == 0)
      {
        if (v9 != 60)
        {
          goto LABEL_72;
        }

        *(a2 + 56) = 59;
        if (*(a2 + 36) <= (*(a2 + 40) + 1))
        {
          *(v5 + 24) = v47;
          *v5 = v8;
          __break(0xC471u);
          JUMPOUT(0x22578C364);
        }

        *(*(a2 + 24) + 32 * (*(a2 + 40) + 1)) = 59;
        v9 = *(a2 + 56);
      }

      v54 = WGSL::toBinaryOperation(v9);
      while (1)
      {
        v13 = *(a2 + 36);
        v14 = (*(a2 + 40) + 1);
        *(a2 + 40) = v14;
        if (v13 <= v14)
        {
          *(v5 + 24) = v47;
          *v5 = v8;
          __break(0xC471u);
          goto LABEL_108;
        }

        v15 = *(a2 + 24) + 32 * v14;
        v11 = *v15;
        *(a2 + 56) = *v15;
        *(a2 + 60) = *(v15 + 4);
        v16 = *v15;
        if (*v15 > 8u)
        {
          goto LABEL_15;
        }

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
            goto LABEL_15;
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
                WTF::StringImpl::destroy(v18, v10);
              }
            }
          }
        }

        v11 = *(a2 + 56);
LABEL_15:
        v12 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v12;
        if (v11 != 82)
        {
          result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(&v51, a2);
          if (v53)
          {
            if (v53 == 1)
            {
              v8 = v51;
              if (v51)
              {
                atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
              }

              v20 = 0;
              *(v5 + 2) = v52;
              v47 = 1;
              v21 = v53;
              if (!v53)
              {
                goto LABEL_9;
              }

              goto LABEL_38;
            }

LABEL_101:
            *(v5 + 24) = v47;
            *v5 = v8;
LABEL_102:
            mpark::throw_bad_variant_access(result);
          }

          result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseMultiplicativeExpressionPostUnary(&v48, a2, &v51);
          v20 = v50 == 0;
          if (!v50)
          {
            WGSL::AST::Builder::construct<WGSL::AST::BinaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::BinaryOperation const&,void>();
          }

          if (v50 != 1)
          {
            goto LABEL_101;
          }

          v8 = v48;
          if (!v48)
          {
            *(v5 + 2) = v49;
            v47 = 1;
            v21 = v53;
            if (!v53)
            {
              goto LABEL_9;
            }

            goto LABEL_38;
          }

          atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
          *(v5 + 2) = v49;
          if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v8, v19);
          }

          v47 = 1;
          v21 = v53;
          if (v53)
          {
LABEL_38:
            if (v21 != 255)
            {
              v22 = v51;
              v51 = 0;
              if (v22)
              {
                if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v22, v19);
                }
              }
            }
          }

LABEL_9:
          if (!v20)
          {
            *(v5 + 24) = 1;
            *v5 = v8;
            return v46;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v23 = *(a2 + 88);
  v24 = *(a2 + 96);
  if (v6 != 57)
  {
    if (v6 != 53)
    {
      *result = *a3;
      *(result + 24) = 0;
      return result;
    }

    while (1)
    {
      v27 = *(a2 + 36);
      v28 = (*(a2 + 40) + 1);
      *(a2 + 40) = v28;
      if (v27 <= v28)
      {
        __break(0xC471u);
        JUMPOUT(0x22578C36CLL);
      }

      v29 = *(a2 + 24) + 32 * v28;
      v25 = *v29;
      *(a2 + 56) = *v29;
      *(a2 + 60) = *(v29 + 4);
      v30 = *v29;
      if (*v29 > 8u)
      {
        goto LABEL_61;
      }

      if (((1 << v30) & 0x38) != 0)
      {
        *(a2 + 80) = *(v29 + 24);
      }

      else if (((1 << v30) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v29 + 24);
      }

      else
      {
        if (v30 != 8)
        {
          goto LABEL_61;
        }

        *(a2 + 80) = 0;
        v31 = *(v29 + 24);
        if (v31)
        {
          atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
          v32 = *(a2 + 80);
          *(a2 + 80) = v31;
          if (v32)
          {
            if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v32, a2);
            }
          }
        }
      }

      v25 = *(a2 + 56);
LABEL_61:
      v26 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v26;
      if (v25 != 82)
      {
        result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(&v55, a2);
        v41 = v57;
        if (!v57)
        {
          v42 = *(a2 + 96) - v24;
          v51 = v23;
          *&v52 = __PAIR64__(v42, v24);
          v43 = 9;
          goto LABEL_96;
        }

        goto LABEL_91;
      }
    }
  }

  do
  {
    v35 = *(a2 + 36);
    v36 = (*(a2 + 40) + 1);
    *(a2 + 40) = v36;
    if (v35 <= v36)
    {
      __break(0xC471u);
      JUMPOUT(0x22578C374);
    }

    v37 = *(a2 + 24) + 32 * v36;
    v33 = *v37;
    *(a2 + 56) = *v37;
    *(a2 + 60) = *(v37 + 4);
    v38 = *v37;
    if (*v37 <= 8u)
    {
      if (((1 << v38) & 0x38) != 0)
      {
        *(a2 + 80) = *(v37 + 24);
LABEL_75:
        v33 = *(a2 + 56);
        goto LABEL_76;
      }

      if (((1 << v38) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v37 + 24);
        goto LABEL_75;
      }

      if (v38 == 8)
      {
        *(a2 + 80) = 0;
        v39 = *(v37 + 24);
        if (v39)
        {
          atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
          v40 = *(a2 + 80);
          *(a2 + 80) = v39;
          if (v40)
          {
            if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v40, a2);
            }
          }
        }

        goto LABEL_75;
      }
    }

LABEL_76:
    v34 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v34;
  }

  while (v33 == 82);
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(&v55, a2);
  v41 = v57;
  if (!v57)
  {
    v45 = *(a2 + 96) - v24;
    v51 = v23;
    *&v52 = __PAIR64__(v45, v24);
    v43 = 8;
LABEL_96:
    LOBYTE(v48) = v43;
    WGSL::AST::Builder::construct<WGSL::AST::BinaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::BinaryOperation const&,void>();
  }

LABEL_91:
  if (v41 != 1)
  {
    goto LABEL_102;
  }

  v44 = v55;
  if (v55)
  {
    atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
  }

  *(v5 + 2) = v56;
  *v5 = v44;
  *(v5 + 24) = 1;
  if (v57)
  {
    if (v57 != 255)
    {
      result = v55;
      v55 = 0;
      if (result)
      {
        goto LABEL_50;
      }
    }
  }

  return result;
}

mpark *WGSL::Parser<WGSL::Lexer<char16_t>>::parseMultiplicativeExpressionPostUnary(mpark *result, uint64_t a2, void *a3)
{
  v4 = result;
  v5 = *result;
  v19 = *(result + 24);
  v6 = *(a2 + 56);
  if ((v6 - 62) > 0xE || ((1 << (v6 - 62)) & 0x5001) == 0)
  {
    *result = *a3;
    *(result + 24) = 0;
    return result;
  }

  v23 = 2;
  if (v6 == 62)
  {
    v8 = 4;
    goto LABEL_11;
  }

  if (v6 == 74)
  {
    v8 = 3;
LABEL_11:
    v23 = v8;
    goto LABEL_17;
  }

  if (v6 != 76)
  {
LABEL_41:
    *(v4 + 24) = v19;
    *v4 = v5;
    __break(0xC471u);
    JUMPOUT(0x22578C5ECLL);
  }

  do
  {
LABEL_17:
    v11 = *(a2 + 36);
    v12 = (*(a2 + 40) + 1);
    *(a2 + 40) = v12;
    if (v11 <= v12)
    {
      goto LABEL_41;
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
LABEL_15:
        v9 = *(a2 + 56);
        goto LABEL_16;
      }

      if (((1 << v14) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v13 + 24);
        goto LABEL_15;
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

        goto LABEL_15;
      }
    }

LABEL_16:
    v10 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v10;
  }

  while (v9 == 82);
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseUnaryExpression(&v20, a2);
  if (!v22)
  {
    WGSL::AST::Builder::construct<WGSL::AST::BinaryExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::BinaryOperation const&,void>();
  }

  if (v22 != 1)
  {
    *(v4 + 24) = v19;
    *v4 = v5;
    mpark::throw_bad_variant_access(result);
  }

  v18 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
  }

  *(v4 + 8) = v21;
  if (v22)
  {
    if (v22 != 255)
    {
      result = v20;
      v20 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v17);
        }
      }
    }
  }

  *(v4 + 24) = 1;
  *v4 = v18;
  return result;
}

void WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttribute(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  if (*(a2 + 56) != 40)
  {
    WGSL::toString();
    WGSL::toString();
    if (v257)
    {
      v15 = *(v257 + 1);
      if (v256)
      {
LABEL_18:
        v16 = *(v256 + 4);
        if (v16 < 0)
        {
          goto LABEL_490;
        }

        v14 = __OFADD__(v16, 12);
        v17 = v16 + 12;
        v18 = v14;
        if (v15 < 0)
        {
          goto LABEL_490;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v15 = 0;
      if (v256)
      {
        goto LABEL_18;
      }
    }

    v17 = 12;
    v18 = v14;
    if (v15 < 0)
    {
      goto LABEL_490;
    }

LABEL_45:
    if (v18)
    {
      goto LABEL_490;
    }

    v14 = __OFADD__(v15, v17);
    v27 = v15 + v17;
    if (v14)
    {
      goto LABEL_490;
    }

    v28 = (v27 + 11);
    if (__OFADD__(v27, 11))
    {
      goto LABEL_490;
    }

    if (v257)
    {
      v29 = *(v257 + 4);
      v30 = (v29 >> 2) & 1;
      if (!v256 || (v29 & 4) == 0)
      {
LABEL_125:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v28, v30, "Expected a ", 0xBuLL, v257, ", but got a ", 0xCuLL, v256, v249);
        v70 = *v249;
        if (*v249)
        {
          v71 = v256;
          v256 = 0;
          if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v71, v69);
          }

          v72 = v257;
          v257 = 0;
          if (!v72)
          {
            goto LABEL_182;
          }

          goto LABEL_180;
        }

LABEL_490:
        __break(0xC471u);
        JUMPOUT(0x22578E58CLL);
      }
    }

    else if (!v256)
    {
      v30 = 1;
      goto LABEL_125;
    }

    v30 = (*(v256 + 16) >> 2) & 1;
    goto LABEL_125;
  }

  do
  {
    v6 = *(a2 + 36);
    v7 = (*(a2 + 40) + 1);
    *(a2 + 40) = v7;
    if (v6 <= v7)
    {
      __break(0xC471u);
      goto LABEL_498;
    }

    v8 = *(a2 + 24) + 32 * v7;
    v9 = *v8;
    *(a2 + 56) = *v8;
    *(a2 + 60) = *(v8 + 4);
    v10 = *v8;
    if (*v8 <= 8u)
    {
      if (((1 << v10) & 0x38) != 0)
      {
        *(a2 + 80) = *(v8 + 24);
        goto LABEL_8;
      }

      if (((1 << v10) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v8 + 24);
LABEL_8:
        v9 = *(a2 + 56);
        goto LABEL_9;
      }

      if (v10 == 8)
      {
        *(a2 + 80) = 0;
        v12 = *(v8 + 24);
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

        goto LABEL_8;
      }
    }

LABEL_9:
    v11 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v11;
  }

  while (v9 == 82);
  if (v9 == 8)
  {
    v31 = *(a2 + 80);
    if (v31)
    {
      atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
    }

    while (1)
    {
      v34 = *(a2 + 36);
      v35 = (*(a2 + 40) + 1);
      *(a2 + 40) = v35;
      if (v34 <= v35)
      {
        __break(0xC471u);
        JUMPOUT(0x22578E584);
      }

      v36 = *(a2 + 24) + 32 * v35;
      v32 = *v36;
      *(a2 + 56) = *v36;
      *(a2 + 60) = *(v36 + 4);
      v37 = *v36;
      if (*v36 > 8u)
      {
        goto LABEL_59;
      }

      if (((1 << v37) & 0x38) != 0)
      {
        *(a2 + 80) = *(v36 + 24);
      }

      else if (((1 << v37) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v36 + 24);
      }

      else
      {
        if (v37 != 8)
        {
          goto LABEL_59;
        }

        *(a2 + 80) = 0;
        v38 = *(v36 + 24);
        if (v38)
        {
          atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
          v39 = *(a2 + 80);
          *(a2 + 80) = v38;
          if (v39)
          {
            if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v39, a2);
            }
          }
        }
      }

      v32 = *(a2 + 56);
LABEL_59:
      v33 = *(a2 + 68);
      *(a2 + 88) = *(a2 + 60);
      *(a2 + 96) = v33;
      if (v32 != 82)
      {
        if (MEMORY[0x22AA683D0](v31, "group", 5))
        {
          if (*(a2 + 56) == 67)
          {
            while (1)
            {
              v51 = *(a2 + 36);
              v52 = (*(a2 + 40) + 1);
              *(a2 + 40) = v52;
              if (v51 <= v52)
              {
                __break(0xC471u);
                JUMPOUT(0x22578E594);
              }

              v53 = *(a2 + 24) + 32 * v52;
              v49 = *v53;
              *(a2 + 56) = *v53;
              *(a2 + 60) = *(v53 + 4);
              v54 = *v53;
              if (*v53 > 8u)
              {
                goto LABEL_89;
              }

              if (((1 << v54) & 0x38) != 0)
              {
                *(a2 + 80) = *(v53 + 24);
              }

              else if (((1 << v54) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v53 + 24);
              }

              else
              {
                if (v54 != 8)
                {
                  goto LABEL_89;
                }

                *(a2 + 80) = 0;
                v55 = *(v53 + 24);
                if (v55)
                {
                  atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
                  v56 = *(a2 + 80);
                  *(a2 + 80) = v55;
                  if (v56)
                  {
                    if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v56, v48);
                    }
                  }
                }
              }

              v49 = *(a2 + 56);
LABEL_89:
              v50 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v50;
              if (v49 != 82)
              {
                v45 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v229, a2);
                if (v231)
                {
                  if (v231 == 1)
                  {
                    v88 = v229;
                    if (v229)
                    {
                      atomic_fetch_add_explicit(v229, 2u, memory_order_relaxed);
                      *(a1 + 8) = v230;
                      *a1 = v88;
                      *(a1 + 24) = 1;
                      if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v88, v46);
                        if (!v31)
                        {
                          return;
                        }

                        goto LABEL_333;
                      }

LABEL_332:
                      if (!v31)
                      {
                        return;
                      }

LABEL_333:
                      if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) != 2)
                      {
                        return;
                      }

                      v68 = v31;
LABEL_335:
                      WTF::StringImpl::destroy(v68, v46);
                      return;
                    }

                    *(a1 + 8) = v230;
                    *a1 = 0;
LABEL_331:
                    *(a1 + 24) = 1;
                    goto LABEL_332;
                  }

LABEL_486:
                  mpark::throw_bad_variant_access(v45);
                }

                v99 = *(a2 + 56);
                if (v99 == 48)
                {
                  WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v46);
                  v99 = *(a2 + 56);
                }

                if (v99 != 68)
                {
                  *v249 = v99;
                  LOBYTE(v251) = 1;
                  v45 = WGSL::toString();
                  if (v251 != 1)
                  {
                    goto LABEL_486;
                  }

                  WGSL::toString();
                  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v244, ", but got a ", 13, &v243, &v220);
                  v124 = v243;
                  v243 = 0;
                  if (v124 && atomic_fetch_add_explicit(v124, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v124, v93);
                  }

                  v125 = v244;
                  v244 = 0;
                  if (v125 && atomic_fetch_add_explicit(v125, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v125, v93);
                  }

                  v117 = (*(a2 + 96) - v5);
                  v118 = v220;
                  goto LABEL_268;
                }

                *v249 = 68;
                *&v249[4] = *(a2 + 60);
                LOBYTE(v251) = 0;
                while (2)
                {
                  v102 = *(a2 + 36);
                  v103 = (*(a2 + 40) + 1);
                  *(a2 + 40) = v103;
                  if (v102 <= v103)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x22578E5B4);
                  }

                  v104 = *(a2 + 24) + 32 * v103;
                  v100 = *v104;
                  *(a2 + 56) = *v104;
                  *(a2 + 60) = *(v104 + 4);
                  v105 = *v104;
                  if (*v104 <= 8u)
                  {
                    if (((1 << v105) & 0x38) != 0)
                    {
                      *(a2 + 80) = *(v104 + 24);
                      goto LABEL_204;
                    }

                    if (((1 << v105) & 0xC4) != 0)
                    {
                      *(a2 + 80) = *(v104 + 24);
                      goto LABEL_204;
                    }

                    if (v105 == 8)
                    {
                      *(a2 + 80) = 0;
                      v106 = *(v104 + 24);
                      if (v106)
                      {
                        atomic_fetch_add_explicit(v106, 2u, memory_order_relaxed);
                        v107 = *(a2 + 80);
                        *(a2 + 80) = v106;
                        if (v107)
                        {
                          if (atomic_fetch_add_explicit(v107, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v107, v46);
                          }
                        }
                      }

LABEL_204:
                      v100 = *(a2 + 56);
                    }
                  }

                  v101 = *(a2 + 68);
                  *(a2 + 88) = *(a2 + 60);
                  *(a2 + 96) = v101;
                  if (v100 != 82)
                  {
                    std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v46);
                    v126 = *(a2 + 96) - v5;
                    *v249 = v4;
                    *&v249[8] = v5;
                    *&v249[12] = v126;
                    WGSL::AST::Builder::construct<WGSL::AST::GroupAttribute,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>();
                  }

                  continue;
                }
              }
            }
          }

          WGSL::toString();
          WGSL::toString();
          if (v246)
          {
            v77 = *(v246 + 1);
            if (v245)
            {
              goto LABEL_150;
            }

LABEL_217:
            v78 = 0;
            goto LABEL_218;
          }

          v77 = 0;
          if (!v245)
          {
            goto LABEL_217;
          }

LABEL_150:
          v78 = *(v245 + 4);
          if (v78 < 0)
          {
LABEL_496:
            __break(0xC471u);
            JUMPOUT(0x22578E5BCLL);
          }

LABEL_218:
          v14 = __OFADD__(v78, 12);
          v108 = v78 + 12;
          v109 = v14;
          if (v77 < 0)
          {
            goto LABEL_496;
          }

          if (v109)
          {
            goto LABEL_496;
          }

          v14 = __OFADD__(v77, v108);
          v110 = v77 + v108;
          if (v14)
          {
            goto LABEL_496;
          }

          v111 = (v110 + 11);
          if (__OFADD__(v110, 11))
          {
            goto LABEL_496;
          }

          if (v246)
          {
            v112 = *(v246 + 4);
            v113 = (v112 >> 2) & 1;
            if (!v245 || (v112 & 4) == 0)
            {
LABEL_290:
              WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v111, v113, "Expected a ", 0xBuLL, v246, ", but got a ", 0xCuLL, v245, v249);
              v134 = *v249;
              if (!*v249)
              {
                goto LABEL_496;
              }

              v135 = v245;
              v245 = 0;
              if (v135 && atomic_fetch_add_explicit(v135, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v135, v46);
              }

              v136 = v246;
              v246 = 0;
              if (!v136)
              {
LABEL_330:
                v147 = v5 | ((*(a2 + 96) - v5) << 32);
                *a1 = v134;
                *(a1 + 8) = v4;
                *(a1 + 16) = v147;
                goto LABEL_331;
              }

LABEL_328:
              if (atomic_fetch_add_explicit(v136, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v136, v46);
              }

              goto LABEL_330;
            }
          }

          else if (!v245)
          {
            v113 = 1;
            goto LABEL_290;
          }

          v113 = (*(v245 + 16) >> 2) & 1;
          goto LABEL_290;
        }

        if (MEMORY[0x22AA683D0](v31, "binding", 7))
        {
          if (*(a2 + 56) == 67)
          {
            *v249 = 67;
            *&v249[4] = *(a2 + 60);
            LOBYTE(v251) = 0;
            while (1)
            {
              v60 = *(a2 + 36);
              v61 = (*(a2 + 40) + 1);
              *(a2 + 40) = v61;
              if (v60 <= v61)
              {
                __break(0xC471u);
                JUMPOUT(0x22578E5A4);
              }

              v62 = *(a2 + 24) + 32 * v61;
              v58 = *v62;
              *(a2 + 56) = *v62;
              *(a2 + 60) = *(v62 + 4);
              v63 = *v62;
              if (*v62 > 8u)
              {
                goto LABEL_105;
              }

              if (((1 << v63) & 0x38) != 0)
              {
                *(a2 + 80) = *(v62 + 24);
              }

              else if (((1 << v63) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v62 + 24);
              }

              else
              {
                if (v63 != 8)
                {
                  goto LABEL_105;
                }

                *(a2 + 80) = 0;
                v64 = *(v62 + 24);
                if (v64)
                {
                  atomic_fetch_add_explicit(v64, 2u, memory_order_relaxed);
                  v65 = *(a2 + 80);
                  *(a2 + 80) = v64;
                  if (v65)
                  {
                    if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v65, v57);
                    }
                  }
                }
              }

              v58 = *(a2 + 56);
LABEL_105:
              v59 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v59;
              if (v58 != 82)
              {
                std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v57);
                v45 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v229, a2);
                v97 = v231;
                if (v231)
                {
                  goto LABEL_195;
                }

                if (*(a2 + 56) == 48)
                {
                  WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v96);
                }

                WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v249, a2, 68);
                if (!v251)
                {
                  std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v119);
                  v145 = *(a2 + 96) - v5;
                  *v249 = v4;
                  *&v249[8] = v5;
                  *&v249[12] = v145;
                  WGSL::AST::Builder::construct<WGSL::AST::BindingAttribute,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>();
                }

                v45 = WGSL::toString();
                if (v251 != 1)
                {
                  goto LABEL_486;
                }

                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v240, ", but got a ", 13, &v239, &v220);
                v121 = v239;
                v239 = 0;
                if (v121 && atomic_fetch_add_explicit(v121, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v121, v120);
                }

                v122 = v240;
                v240 = 0;
                if (v122)
                {
LABEL_257:
                  if (atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v122, v120);
                  }
                }

LABEL_259:
                v123 = v5 | ((*(a2 + 96) - v5) << 32);
                *a1 = v220;
                *(a1 + 8) = v4;
                *(a1 + 16) = v123;
                *(a1 + 24) = 1;
                std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v120);
LABEL_320:
                std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v229, v96);
                if (!v31)
                {
                  return;
                }

                goto LABEL_333;
              }
            }
          }

          WGSL::toString();
          WGSL::toString();
          if (v242)
          {
            v91 = *(v242 + 1);
          }

          else
          {
            v91 = 0;
          }

          if (v241)
          {
            v127 = *(v241 + 4);
            if (v127 < 0)
            {
              goto LABEL_497;
            }
          }

          else
          {
            v127 = 0;
          }

          v14 = __OFADD__(v127, 12);
          v128 = v127 + 12;
          v129 = v14;
          if ((v91 & 0x80000000) == 0 && (v129 & 1) == 0)
          {
            v14 = __OFADD__(v91, v128);
            v130 = v91 + v128;
            if (!v14)
            {
              v131 = (v130 + 11);
              if (!__OFADD__(v130, 11))
              {
                if (v242)
                {
                  v132 = *(v242 + 4);
                  v133 = (v132 >> 2) & 1;
                  if (!v241 || (v132 & 4) == 0)
                  {
                    goto LABEL_323;
                  }

LABEL_288:
                  v133 = (*(v241 + 16) >> 2) & 1;
                }

                else
                {
                  if (v241)
                  {
                    goto LABEL_288;
                  }

                  v133 = 1;
                }

LABEL_323:
                WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v131, v133, "Expected a ", 0xBuLL, v242, ", but got a ", 0xCuLL, v241, &v229);
                v134 = v229;
                if (v229)
                {
                  v146 = v241;
                  v241 = 0;
                  if (v146 && atomic_fetch_add_explicit(v146, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v146, v46);
                  }

                  v136 = v242;
                  v242 = 0;
                  if (!v136)
                  {
                    goto LABEL_330;
                  }

                  goto LABEL_328;
                }
              }
            }
          }

LABEL_497:
          __break(0xC471u);
LABEL_498:
          JUMPOUT(0x22578E574);
        }

        if (MEMORY[0x22AA683D0](v31, "location", 8))
        {
          if (*(a2 + 56) != 67)
          {
            *v249 = *(a2 + 56);
            LOBYTE(v251) = 1;
            goto LABEL_241;
          }

          *v249 = 67;
          *&v249[4] = *(a2 + 60);
          LOBYTE(v251) = 0;
          while (1)
          {
            v82 = *(a2 + 36);
            v83 = (*(a2 + 40) + 1);
            *(a2 + 40) = v83;
            if (v82 <= v83)
            {
              __break(0xC471u);
              JUMPOUT(0x22578E5ACLL);
            }

            v84 = *(a2 + 24) + 32 * v83;
            v80 = *v84;
            *(a2 + 56) = *v84;
            *(a2 + 60) = *(v84 + 4);
            v85 = *v84;
            if (*v84 > 8u)
            {
              goto LABEL_157;
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
                goto LABEL_157;
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
                    WTF::StringImpl::destroy(v87, v79);
                  }
                }
              }
            }

            v80 = *(a2 + 56);
LABEL_157:
            v81 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v81;
            if (v80 != 82)
            {
              if (v251)
              {
LABEL_241:
                v45 = WGSL::toString();
                if (v251 != 1)
                {
                  goto LABEL_486;
                }

                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v238, ", but got a ", 13, &v237, &v229);
                v116 = v237;
                v237 = 0;
                if (v116 && atomic_fetch_add_explicit(v116, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v116, v93);
                }

                v95 = v238;
                v238 = 0;
                if (v95)
                {
                  goto LABEL_246;
                }

LABEL_248:
                v117 = (*(a2 + 96) - v5);
                v118 = v229;
LABEL_268:
                *a1 = v118;
                *(a1 + 8) = v4;
                *(a1 + 16) = v5 | (v117 << 32);
                *(a1 + 24) = 1;
                std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v93);
                if (!v31)
                {
                  return;
                }

                goto LABEL_333;
              }

              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v79);
              v45 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v229, a2);
              v97 = v231;
              if (!v231)
              {
                if (*(a2 + 56) == 48)
                {
                  WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v96);
                }

                WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v249, a2, 68);
                if (!v251)
                {
                  std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v143);
                  v160 = *(a2 + 96) - v5;
                  *v249 = v4;
                  *&v249[8] = v5;
                  *&v249[12] = v160;
                  WGSL::AST::Builder::construct<WGSL::AST::LocationAttribute,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>();
                }

                v45 = WGSL::toString();
                if (v251 != 1)
                {
                  goto LABEL_486;
                }

                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v236, ", but got a ", 13, &v235, &v220);
                v144 = v235;
                v235 = 0;
                if (v144 && atomic_fetch_add_explicit(v144, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v144, v120);
                }

                v122 = v236;
                v236 = 0;
                if (v122)
                {
                  goto LABEL_257;
                }

                goto LABEL_259;
              }

LABEL_195:
              if (v97 != 1)
              {
                goto LABEL_486;
              }

              v98 = v229;
              if (v229)
              {
                atomic_fetch_add_explicit(v229, 2u, memory_order_relaxed);
              }

              *(a1 + 8) = v230;
              *a1 = v98;
              *(a1 + 24) = 1;
              goto LABEL_320;
            }
          }
        }

        if (MEMORY[0x22AA683D0](v31, "builtin", 7))
        {
          WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v249, a2, 67);
          if (v251)
          {
            v45 = WGSL::toString();
            if (v251 != 1)
            {
              goto LABEL_486;
            }

            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v234, ", but got a ", 13, &v233, &v229);
            v94 = v233;
            v233 = 0;
            if (v94 && atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v94, v93);
            }

            v95 = v234;
            v234 = 0;
            if (v95)
            {
              goto LABEL_246;
            }

            goto LABEL_248;
          }

          v139 = std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v92);
          v45 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v139, a2);
          v141 = v251;
          if (v251)
          {
LABEL_305:
            if (v141 != 1)
            {
              goto LABEL_486;
            }

            v142 = *v249;
            if (*v249)
            {
              atomic_fetch_add_explicit(*v249, 2u, memory_order_relaxed);
            }

            *(a1 + 8) = *&v249[8];
            *a1 = v142;
LABEL_377:
            *(a1 + 24) = 1;
            std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(v249, v140);
            if (!v31)
            {
              return;
            }

            goto LABEL_333;
          }

          v152 = WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,WGSL::Builtin> [12]>::tryGet<WTF::String>(WGSL::parseBuiltin(WTF::String const&)::__map, &v250);
          if (v152)
          {
            v154 = *v152;
            if (v154 > 7)
            {
              if (v154 == 8)
              {
                *(*a2 + 26) = 1;
              }

              else if (v154 == 9)
              {
                *(*a2 + 24) = 1;
              }
            }

            else if (*v152)
            {
              if (v154 == 1)
              {
                *(*a2 + 25) = 1;
              }
            }

            else
            {
              *(*a2 + 19) = 1;
            }

            if (*(a2 + 56) == 48)
            {
              WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v153);
            }

            WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(&v229, a2, 68);
            if (!v232)
            {
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(&v229, v170);
              v176 = *(a2 + 96) - v5;
              v229 = v4;
              *&v230 = __PAIR64__(v176, v5);
              WGSL::AST::Builder::construct<WGSL::AST::BuiltinAttribute,WGSL::SourceSpan,WGSL::Builtin const&,void>();
            }

            v45 = WGSL::toString();
            if (v232 != 1)
            {
              goto LABEL_486;
            }

            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v228, ", but got a ", 13, &v227, &v220);
            v172 = v227;
            v227 = 0;
            if (v172 && atomic_fetch_add_explicit(v172, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v172, v171);
            }

            v173 = v228;
            v228 = 0;
            if (v173)
            {
              goto LABEL_421;
            }

            goto LABEL_423;
          }

LABEL_376:
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v159 = v5 | ((*(a2 + 96) - v5) << 32);
          *a1 = v229;
          *(a1 + 8) = v4;
          *(a1 + 16) = v159;
          goto LABEL_377;
        }

        if (MEMORY[0x22AA683D0](v31, "workgroup_size", 14))
        {
          WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v249, a2, 67);
          if (v251)
          {
            v45 = WGSL::toString();
            if (v251 != 1)
            {
              goto LABEL_486;
            }

            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v226, ", but got a ", 13, &v225, &v229);
            v115 = v225;
            v225 = 0;
            if (v115 && atomic_fetch_add_explicit(v115, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v115, v93);
            }

            v95 = v226;
            v226 = 0;
            if (v95)
            {
              goto LABEL_246;
            }

            goto LABEL_248;
          }

          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v114);
          v45 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v229, a2);
          v97 = v231;
          if (v231)
          {
            goto LABEL_195;
          }

          v223 = 0;
          v224 = 0;
          if (*(a2 + 56) == 48)
          {
            WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v96);
            if (*(a2 + 56) != 68)
            {
              v45 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(v249, a2);
              if (v250)
              {
                if (v250 != 1)
                {
                  goto LABEL_486;
                }

                v151 = *v249;
                if (*v249)
                {
                  atomic_fetch_add_explicit(*v249, 2u, memory_order_relaxed);
                }

                *(a1 + 8) = *&v249[8];
                *a1 = v151;
                *(a1 + 24) = 1;
LABEL_352:
                std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(v249, v150);
                goto LABEL_320;
              }

              v224 = *v249;
              if (*(a2 + 56) == 48)
              {
                WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v150);
                if (*(a2 + 56) != 68)
                {
                  v45 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v220, a2);
                  if (v222)
                  {
                    if (v222 != 1)
                    {
                      goto LABEL_486;
                    }

                    v182 = v220;
                    if (v220)
                    {
                      atomic_fetch_add_explicit(v220, 2u, memory_order_relaxed);
                    }

                    *(a1 + 8) = v221;
                    *a1 = v182;
                    *(a1 + 24) = 1;
                    std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v220, v181);
                    goto LABEL_352;
                  }

                  v223 = v220;
                  if (*(a2 + 56) == 48)
                  {
                    WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v181);
                  }

                  std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v220, v181);
                }
              }

              std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(v249, v150);
            }
          }

          WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v249, a2, 68);
          if (!v251)
          {
            std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v195);
            v197 = *(a2 + 96) - v5;
            *v249 = v4;
            *&v249[8] = v5;
            *&v249[12] = v197;
            WGSL::AST::Builder::construct<WGSL::AST::WorkgroupSizeAttribute,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WGSL::AST::Expression*,WGSL::AST::Expression*,void>();
          }

          v45 = WGSL::toString();
          if (v251 != 1)
          {
            goto LABEL_486;
          }

          WGSL::toString();
          WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v219, ", but got a ", 13, &v218, &v220);
          v196 = v218;
          v218 = 0;
          if (v196 && atomic_fetch_add_explicit(v196, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v196, v120);
          }

          v122 = v219;
          v219 = 0;
          if (v122)
          {
            goto LABEL_257;
          }

          goto LABEL_259;
        }

        if (MEMORY[0x22AA683D0](v31, "align", 5))
        {
          WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v249, a2, 67);
          if (!v251)
          {
            std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v137);
            v45 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v229, a2);
            v97 = v231;
            if (!v231)
            {
              if (*(a2 + 56) == 48)
              {
                WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v96);
              }

              WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v249, a2, 68);
              if (!v251)
              {
                std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v157);
                v177 = *(a2 + 96) - v5;
                *v249 = v4;
                *&v249[8] = v5;
                *&v249[12] = v177;
                WGSL::AST::Builder::construct<WGSL::AST::AlignAttribute,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>();
              }

              v45 = WGSL::toString();
              if (v251 != 1)
              {
                goto LABEL_486;
              }

              WGSL::toString();
              WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v215, ", but got a ", 13, &v214, &v220);
              v158 = v214;
              v214 = 0;
              if (v158 && atomic_fetch_add_explicit(v158, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v158, v120);
              }

              v122 = v215;
              v215 = 0;
              if (v122)
              {
                goto LABEL_257;
              }

              goto LABEL_259;
            }

            goto LABEL_195;
          }

          v45 = WGSL::toString();
          if (v251 != 1)
          {
            goto LABEL_486;
          }

          WGSL::toString();
          WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v217, ", but got a ", 13, &v216, &v229);
          v138 = v216;
          v216 = 0;
          if (v138 && atomic_fetch_add_explicit(v138, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v138, v93);
          }

          v95 = v217;
          v217 = 0;
          if (!v95)
          {
            goto LABEL_248;
          }

LABEL_246:
          if (atomic_fetch_add_explicit(v95, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v95, v93);
          }

          goto LABEL_248;
        }

        if (!MEMORY[0x22AA683D0](v31, "interpolate", 11))
        {
          if (MEMORY[0x22AA683D0](v31, "size", 4))
          {
            WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v249, a2, 67);
            if (!v251)
            {
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v155);
              v45 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v229, a2);
              v97 = v231;
              if (!v231)
              {
                if (*(a2 + 56) == 48)
                {
                  WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v96);
                }

                WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v249, a2, 68);
                if (!v251)
                {
                  std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v168);
                  v184 = *(a2 + 96) - v5;
                  *v249 = v4;
                  *&v249[8] = v5;
                  *&v249[12] = v184;
                  WGSL::AST::Builder::construct<WGSL::AST::SizeAttribute,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>();
                }

                v45 = WGSL::toString();
                if (v251 != 1)
                {
                  goto LABEL_486;
                }

                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v207, ", but got a ", 13, &v206, &v220);
                v169 = v206;
                v206 = 0;
                if (v169 && atomic_fetch_add_explicit(v169, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v169, v120);
                }

                v122 = v207;
                v207 = 0;
                if (v122)
                {
                  goto LABEL_257;
                }

                goto LABEL_259;
              }

              goto LABEL_195;
            }

            v45 = WGSL::toString();
            if (v251 != 1)
            {
              goto LABEL_486;
            }

            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v209, ", but got a ", 13, &v208, &v229);
            v156 = v208;
            v208 = 0;
            if (v156 && atomic_fetch_add_explicit(v156, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v156, v93);
            }

            v95 = v209;
            v209 = 0;
            if (!v95)
            {
              goto LABEL_248;
            }
          }

          else
          {
            if (!MEMORY[0x22AA683D0](v31, "id", 2))
            {
              if (MEMORY[0x22AA683D0](v31, "invariant", 9))
              {
                v167 = *(a2 + 96) - v5;
                *v249 = v4;
                *&v249[8] = v5;
                *&v249[12] = v167;
                WGSL::AST::Builder::construct<WGSL::AST::InvariantAttribute,WGSL::SourceSpan,void>();
              }

              if (MEMORY[0x22AA683D0](v31, "must_use", 8))
              {
                v178 = *(a2 + 96) - v5;
                *v249 = v4;
                *&v249[8] = v5;
                *&v249[12] = v178;
                WGSL::AST::Builder::construct<WGSL::AST::MustUseAttribute,WGSL::SourceSpan,void>();
              }

              if (MEMORY[0x22AA683D0](v31, "const", 5))
              {
                v183 = *(a2 + 96) - v5;
                *v249 = v4;
                *&v249[8] = v5;
                *&v249[12] = v183;
                WGSL::AST::Builder::construct<WGSL::AST::ConstAttribute,WGSL::SourceSpan,void>();
              }

              if (MEMORY[0x22AA683D0](v31, "vertex", 6))
              {
                v185 = *(a2 + 96) - v5;
                *v249 = v4;
                *&v249[8] = v5;
                *&v249[12] = v185;
                v186 = 1;
              }

              else if (MEMORY[0x22AA683D0](v31, "compute", 7))
              {
                v194 = *(a2 + 96) - v5;
                *v249 = v4;
                *&v249[8] = v5;
                *&v249[12] = v194;
                v186 = 4;
              }

              else
              {
                if (!MEMORY[0x22AA683D0](v31, "fragment", 8))
                {
                  WTF::StringImpl::createWithoutCopyingNonEmpty();
                  v201 = v5 | ((*(a2 + 96) - v5) << 32);
                  *a1 = *v249;
                  *(a1 + 8) = v4;
                  *(a1 + 16) = v201;
                  goto LABEL_331;
                }

                v200 = *(a2 + 96) - v5;
                *v249 = v4;
                *&v249[8] = v5;
                *&v249[12] = v200;
                v186 = 2;
              }

              LOBYTE(v229) = v186;
              WGSL::AST::Builder::construct<WGSL::AST::StageAttribute,WGSL::SourceSpan,WGSL::ShaderStage,void>();
            }

            WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v249, a2, 67);
            if (!v251)
            {
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v161);
              v45 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v229, a2);
              v97 = v231;
              if (!v231)
              {
                if (*(a2 + 56) == 48)
                {
                  WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v96);
                }

                WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v249, a2, 68);
                if (!v251)
                {
                  std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v179);
                  v193 = *(a2 + 96) - v5;
                  *v249 = v4;
                  *&v249[8] = v5;
                  *&v249[12] = v193;
                  WGSL::AST::Builder::construct<WGSL::AST::IdAttribute,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>();
                }

                v45 = WGSL::toString();
                if (v251 != 1)
                {
                  goto LABEL_486;
                }

                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v203, ", but got a ", 13, &v202, &v220);
                v180 = v202;
                v202 = 0;
                if (v180 && atomic_fetch_add_explicit(v180, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v180, v120);
                }

                v122 = v203;
                v203 = 0;
                if (v122)
                {
                  goto LABEL_257;
                }

                goto LABEL_259;
              }

              goto LABEL_195;
            }

            v45 = WGSL::toString();
            if (v251 != 1)
            {
              goto LABEL_486;
            }

            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v205, ", but got a ", 13, &v204, &v229);
            v162 = v204;
            v204 = 0;
            if (v162 && atomic_fetch_add_explicit(v162, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v162, v93);
            }

            v95 = v205;
            v205 = 0;
            if (!v95)
            {
              goto LABEL_248;
            }
          }

          goto LABEL_246;
        }

        WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v249, a2, 67);
        if (v251)
        {
          v45 = WGSL::toString();
          if (v251 != 1)
          {
            goto LABEL_486;
          }

          WGSL::toString();
          WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v213, ", but got a ", 13, &v212, &v229);
          v149 = v212;
          v212 = 0;
          if (v149 && atomic_fetch_add_explicit(v149, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v149, v93);
          }

          v95 = v213;
          v213 = 0;
          if (!v95)
          {
            goto LABEL_248;
          }

          goto LABEL_246;
        }

        v163 = std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v249, v148);
        v45 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v163, a2);
        v141 = v251;
        if (v251)
        {
          goto LABEL_305;
        }

        if (!WGSL::parseInterpolationType(&v250))
        {
          goto LABEL_376;
        }

        LOBYTE(v224) = 0;
        if (*(a2 + 56) == 48)
        {
          WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v164);
          v45 = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(&v229, a2);
          if (v232)
          {
            if (v232 != 1)
            {
              goto LABEL_486;
            }

            v166 = v229;
            if (v229)
            {
              atomic_fetch_add_explicit(v229, 2u, memory_order_relaxed);
            }

            *(a1 + 8) = v230;
            *a1 = v166;
LABEL_479:
            *(a1 + 24) = 1;
            std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(&v229, v165);
            std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(v249, v199);
            if (!v31)
            {
              return;
            }

            goto LABEL_333;
          }

          v187 = WTF::SortedArrayMap<std::pair<WTF::ComparableASCIISubsetLiteral<(WTF::ASCIISubset)0>,WGSL::InterpolationSampling> [5]>::tryGet<WTF::String>(WGSL::parseInterpolationSampling(WTF::String const&)::__map, &v231);
          if (!v187)
          {
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v198 = v5 | ((*(a2 + 96) - v5) << 32);
            *a1 = v220;
            *(a1 + 8) = v4;
            *(a1 + 16) = v198;
            goto LABEL_479;
          }

          LOBYTE(v224) = *v187;
          std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(&v229, v188);
          if (*(a2 + 56) == 48)
          {
            WGSL::Parser<WGSL::Lexer<unsigned char>>::consume(a2, v189);
          }
        }

        WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(&v229, a2, 68);
        if (!v232)
        {
          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(&v229, v190);
          v192 = *(a2 + 96) - v5;
          v229 = v4;
          *&v230 = __PAIR64__(v192, v5);
          WGSL::AST::Builder::construct<WGSL::AST::InterpolateAttribute,WGSL::SourceSpan,WGSL::InterpolationType const&,WGSL::InterpolationSampling &,void>();
        }

        v45 = WGSL::toString();
        if (v232 != 1)
        {
          goto LABEL_486;
        }

        WGSL::toString();
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v211, ", but got a ", 13, &v210, &v220);
        v191 = v210;
        v210 = 0;
        if (v191 && atomic_fetch_add_explicit(v191, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v191, v171);
        }

        v173 = v211;
        v211 = 0;
        if (v173)
        {
LABEL_421:
          if (atomic_fetch_add_explicit(v173, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v173, v171);
          }
        }

LABEL_423:
        v174 = v5 | ((*(a2 + 96) - v5) << 32);
        *a1 = v220;
        *(a1 + 8) = v4;
        *(a1 + 16) = v174;
        *(a1 + 24) = 1;
        std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(&v229, v171);
        std::experimental::fundamentals_v3::expected<WGSL::AST::Identifier,WGSL::CompilationMessage>::~expected(v249, v175);
        if (!v31)
        {
          return;
        }

        goto LABEL_333;
      }
    }
  }

  if (v9 != 18)
  {
    WGSL::toString();
    WGSL::toString();
    if (v248)
    {
      v41 = *(v248 + 1);
      if (v247)
      {
LABEL_72:
        v42 = *(v247 + 4);
        if (v42 < 0)
        {
          goto LABEL_492;
        }

        v14 = __OFADD__(v42, 12);
        v43 = v42 + 12;
        v44 = v14;
        if (v41 < 0)
        {
          goto LABEL_492;
        }

        goto LABEL_136;
      }
    }

    else
    {
      v41 = 0;
      if (v247)
      {
        goto LABEL_72;
      }
    }

    v43 = 12;
    if (v40)
    {
      v44 = 1;
    }

    else
    {
      v44 = 0;
    }

    if (v41 < 0)
    {
LABEL_492:
      __break(0xC471u);
      JUMPOUT(0x22578E59CLL);
    }

LABEL_136:
    if (v44)
    {
      goto LABEL_492;
    }

    v14 = __OFADD__(v41, v43);
    v73 = v41 + v43;
    if (v14)
    {
      goto LABEL_492;
    }

    v74 = (v73 + 11);
    if (__OFADD__(v73, 11))
    {
      goto LABEL_492;
    }

    if (v248)
    {
      v75 = *(v248 + 4);
      v76 = (v75 >> 2) & 1;
      if (!v247 || (v75 & 4) == 0)
      {
LABEL_175:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v74, v76, "Expected a ", 0xBuLL, v248, ", but got a ", 0xCuLL, v247, v249);
        v70 = *v249;
        if (!*v249)
        {
          goto LABEL_492;
        }

        v89 = v247;
        v247 = 0;
        if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v89, v69);
        }

        v72 = v248;
        v248 = 0;
        if (!v72)
        {
LABEL_182:
          v90 = v5 | ((*(a2 + 96) - v5) << 32);
          *a1 = v70;
          *(a1 + 8) = v4;
          *(a1 + 16) = v90;
          *(a1 + 24) = 1;
          return;
        }

LABEL_180:
        if (atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v72, v69);
        }

        goto LABEL_182;
      }
    }

    else if (!v247)
    {
      v76 = 1;
      goto LABEL_175;
    }

    v76 = (*(v247 + 16) >> 2) & 1;
    goto LABEL_175;
  }

  while (2)
  {
    v21 = *(a2 + 36);
    v22 = (*(a2 + 40) + 1);
    *(a2 + 40) = v22;
    if (v21 <= v22)
    {
      __break(0xC471u);
      JUMPOUT(0x22578E57CLL);
    }

    v23 = *(a2 + 24) + 32 * v22;
    v19 = *v23;
    *(a2 + 56) = *v23;
    *(a2 + 60) = *(v23 + 4);
    v24 = *v23;
    if (*v23 <= 8u)
    {
      if (((1 << v24) & 0x38) != 0)
      {
        *(a2 + 80) = *(v23 + 24);
        goto LABEL_28;
      }

      if (((1 << v24) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v23 + 24);
        goto LABEL_28;
      }

      if (v24 == 8)
      {
        *(a2 + 80) = 0;
        v25 = *(v23 + 24);
        if (v25)
        {
          atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
          v26 = *(a2 + 80);
          *(a2 + 80) = v25;
          if (v26)
          {
            if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v26, a2);
            }
          }
        }

LABEL_28:
        v19 = *(a2 + 56);
      }
    }

    v20 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v20;
    if (v19 == 82)
    {
      continue;
    }

    break;
  }

  WGSL::Parser<WGSL::Lexer<unsigned char>>::parseDiagnostic(v249, a2);
  if (!v255)
  {
    v66 = *(a2 + 96) - v5;
    v229 = v4;
    *&v230 = __PAIR64__(v66, v5);
    WGSL::AST::Builder::construct<WGSL::AST::DiagnosticAttribute,WGSL::SourceSpan,WGSL::AST::Diagnostic,void>();
  }

  if (v255 != 1)
  {
    goto LABEL_486;
  }

  v47 = *v249;
  if (*v249)
  {
    atomic_fetch_add_explicit(*v249, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = *&v249[8];
  *a1 = v47;
  *(a1 + 24) = 1;
  if (v255 != 255)
  {
    if (v255)
    {
      v68 = *v249;
      *v249 = 0;
      if (!v68)
      {
        return;
      }
    }

    else
    {
      if (v254 == 1)
      {
        v67 = v253;
        v252 = off_2838D37C0;
        v253 = 0;
        if (v67)
        {
          if (atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v67, v46);
          }
        }
      }

      v68 = v251;
      *&v249[8] = off_2838D37C0;
      v251 = 0;
      if (!v68)
      {
        return;
      }
    }

    if (atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      return;
    }

    goto LABEL_335;
  }
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<char16_t>>::parseCompoundStatement(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttributes(&v59, a2);
  if (v61)
  {
    if (v61 == 1)
    {
      v8 = v59;
      if (v59)
      {
        atomic_fetch_add_explicit(v59, 2u, memory_order_relaxed);
      }

      *(a1 + 8) = v60;
      *a1 = v8;
      *(a1 + 24) = 1;
      result = v59;
      goto LABEL_6;
    }

LABEL_112:
    mpark::throw_bad_variant_access(v6);
  }

  if (*(a2 + 56) != 43)
  {
    WGSL::toString();
    WGSL::toString();
    if (v58)
    {
      v19 = *(v58 + 1);
      if (v57)
      {
LABEL_26:
        v20 = *(v57 + 1);
        if (v20 < 0)
        {
          goto LABEL_116;
        }

        v18 = __OFADD__(v20, 12);
        v21 = v20 + 12;
        v22 = v18;
        if (v19 < 0)
        {
          goto LABEL_116;
        }

LABEL_90:
        if (v22)
        {
          goto LABEL_116;
        }

        v18 = __OFADD__(v19, v21);
        v44 = v19 + v21;
        if (v18)
        {
          goto LABEL_116;
        }

        v45 = (v44 + 11);
        if (__OFADD__(v44, 11))
        {
          goto LABEL_116;
        }

        if (v58)
        {
          v46 = *(v58 + 4);
          v47 = (v46 >> 2) & 1;
          if (!v57 || (v46 & 4) == 0)
          {
LABEL_100:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v45, v47, "Expected a ", 0xBuLL, v58, ", but got a ", 0xCuLL, v57, &v52);
            v48 = v52;
            if (v52)
            {
              v49 = v57;
              v57 = 0;
              if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v49, v7);
              }

              v50 = v58;
              v58 = 0;
              if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v50, v7);
              }

              v51 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = v48;
              *(a1 + 8) = v4;
              *(a1 + 16) = v51;
              *(a1 + 24) = 1;
              result = v59;
LABEL_108:
              if (result)
              {
                v59 = 0;
                LODWORD(v60) = 0;
                return WTF::fastFree(result, v7);
              }

              return result;
            }

LABEL_116:
            __break(0xC471u);
LABEL_117:
            JUMPOUT(0x22578EB94);
          }
        }

        else if (!v57)
        {
          v47 = 1;
          goto LABEL_100;
        }

        v47 = (*(v57 + 16) >> 2) & 1;
        goto LABEL_100;
      }
    }

    else
    {
      v19 = 0;
      if (v57)
      {
        goto LABEL_26;
      }
    }

    v21 = 12;
    v22 = v18;
    if (v19 < 0)
    {
      goto LABEL_116;
    }

    goto LABEL_90;
  }

  do
  {
    v12 = *(a2 + 36);
    v13 = (*(a2 + 40) + 1);
    *(a2 + 40) = v13;
    if (v12 <= v13)
    {
      __break(0xC471u);
      JUMPOUT(0x22578EB9CLL);
    }

    v14 = *(a2 + 24) + 32 * v13;
    v10 = *v14;
    *(a2 + 56) = *v14;
    *(a2 + 60) = *(v14 + 4);
    v15 = *v14;
    if (*v14 <= 8u)
    {
      if (((1 << v15) & 0x38) != 0)
      {
        *(a2 + 80) = *(v14 + 24);
LABEL_12:
        v10 = *(a2 + 56);
        goto LABEL_13;
      }

      if (((1 << v15) & 0xC4) != 0)
      {
        *(a2 + 80) = *(v14 + 24);
        goto LABEL_12;
      }

      if (v15 == 8)
      {
        *(a2 + 80) = 0;
        v16 = *(v14 + 24);
        if (v16)
        {
          atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
          v17 = *(a2 + 80);
          *(a2 + 80) = v16;
          if (v17)
          {
            if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v7);
            }
          }
        }

        goto LABEL_12;
      }
    }

LABEL_13:
    v11 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v11;
  }

  while (v10 == 82);
  v55 = 0;
  v56 = 0;
  v23 = *a1;
  v24 = *(a1 + 24);
  while (1)
  {
LABEL_33:
    if (v10 == 73)
    {
      while (1)
      {
        v28 = *(a2 + 36);
        v29 = (*(a2 + 40) + 1);
        *(a2 + 40) = v29;
        if (v28 <= v29)
        {
          *(a1 + 24) = v24;
          *a1 = v23;
          __break(0xC471u);
          goto LABEL_117;
        }

        v30 = *(a2 + 24) + 32 * v29;
        v10 = *v30;
        *(a2 + 56) = *v30;
        *(a2 + 60) = *(v30 + 4);
        v31 = *v30;
        if (*v30 <= 8u)
        {
          if (((1 << v31) & 0x38) != 0)
          {
            *(a2 + 80) = *(v30 + 24);
          }

          else if (((1 << v31) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v30 + 24);
          }

          else
          {
            if (v31 != 8)
            {
              goto LABEL_43;
            }

            *(a2 + 80) = 0;
            v32 = *(v30 + 24);
            if (v32)
            {
              atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
              v33 = *(a2 + 80);
              *(a2 + 80) = v32;
              if (v33)
              {
                if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v33, v7);
                }
              }
            }
          }

          v10 = *(a2 + 56);
        }

LABEL_43:
        v27 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v27;
        if (v10 != 82)
        {
          goto LABEL_33;
        }
      }
    }

    if (v10 == 44)
    {
      *(a1 + 24) = v24;
      *a1 = v23;
      while (1)
      {
        v38 = *(a2 + 36);
        v39 = (*(a2 + 40) + 1);
        *(a2 + 40) = v39;
        if (v38 <= v39)
        {
          __break(0xC471u);
          JUMPOUT(0x22578EBA4);
        }

        v40 = *(a2 + 24) + 32 * v39;
        v36 = *v40;
        *(a2 + 56) = *v40;
        *(a2 + 60) = *(v40 + 4);
        v41 = *v40;
        if (*v40 <= 8u)
        {
          if (((1 << v41) & 0x38) != 0)
          {
            *(a2 + 80) = *(v40 + 24);
          }

          else if (((1 << v41) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v40 + 24);
          }

          else
          {
            if (v41 != 8)
            {
              goto LABEL_67;
            }

            *(a2 + 80) = 0;
            v42 = *(v40 + 24);
            if (v42)
            {
              atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
              v43 = *(a2 + 80);
              *(a2 + 80) = v42;
              if (v43)
              {
                if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v43, v7);
                }
              }
            }
          }

          v36 = *(a2 + 56);
        }

LABEL_67:
        v37 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v37;
        if (v36 != 82)
        {
          v52 = v4;
          LODWORD(v53) = v5;
          DWORD1(v53) = v37 - v5;
          WGSL::AST::Builder::construct<WGSL::AST::CompoundStatement,WGSL::SourceSpan,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WTF::ReferenceWrapperVector<WGSL::AST::Statement,0ul>,void>();
        }
      }
    }

    v6 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseStatement(&v52, a2);
    v25 = v54;
    if (!v54)
    {
      if (HIDWORD(v56) == v56)
      {
        v34 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v55, HIDWORD(v56) + 1, &v52);
        *(v55 + HIDWORD(v56)) = *v34;
        ++HIDWORD(v56);
        v26 = v54;
        if (!v54)
        {
          goto LABEL_62;
        }
      }

      else
      {
        *(v55 + HIDWORD(v56)) = v52;
        ++HIDWORD(v56);
        v26 = v54;
        if (!v54)
        {
          goto LABEL_62;
        }
      }

LABEL_58:
      if (v26 != 255)
      {
        v35 = v52;
        v52 = 0;
        if (v35)
        {
          if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v35, v7);
          }
        }
      }

      goto LABEL_62;
    }

    if (v54 != 1)
    {
      *(a1 + 24) = v24;
      *a1 = v23;
      goto LABEL_112;
    }

    v23 = v52;
    if (v52)
    {
      atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
    }

    *(a1 + 8) = v53;
    v24 = 1;
    v26 = v54;
    if (v54)
    {
      goto LABEL_58;
    }

LABEL_62:
    if (v25)
    {
      break;
    }

    v10 = *(a2 + 56);
  }

  *(a1 + 24) = v24;
  *a1 = v23;
  result = v55;
  if (v55)
  {
    v55 = 0;
    LODWORD(v56) = 0;
    result = WTF::fastFree(result, v7);
  }

  if (v61 != 255)
  {
    result = v59;
    if (v61)
    {
LABEL_6:
      v59 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }

      return result;
    }

    goto LABEL_108;
  }

  return result;
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<char16_t>>::parseStatement(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v6 = *(a2 + 44);
  *(a2 + 44) = v6 + 1;
  if ((v6 + 1) >= 0x81)
  {
    goto LABEL_2;
  }

  switch(*(a2 + 56))
  {
    case 8:
      result = WGSL::Parser<WGSL::Lexer<unsigned char>>::parseIdentifier(v475, a2);
      if (v477)
      {
        if (v477 != 1)
        {
          goto LABEL_969;
        }

        v62 = *v475;
        if (*v475)
        {
          atomic_fetch_add_explicit(*v475, 2u, memory_order_relaxed);
        }

        *(a1 + 8) = *&v475[8];
        *a1 = v62;
        *(a1 + 24) = 1;
      }

      else
      {
        if ((*(a2 + 56) | 0x10) != 0x53)
        {
          v300 = *(a2 + 96) - v5;
          v466 = v4;
          *&v467 = __PAIR64__(v300, v5);
          WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
        }

        result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseTypeNameAfterIdentifier(&v488, a2, v475, v4, v5);
        if (v490)
        {
          if (v490 != 1)
          {
            goto LABEL_969;
          }

          v301 = v488;
          if (v488)
          {
            atomic_fetch_add_explicit(v488, 2u, memory_order_relaxed);
          }

          *(a1 + 8) = v489;
          *a1 = v301;
          *(a1 + 24) = 1;
        }

        else
        {
          result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseArgumentExpressionList(&v483, a2);
          if (!v485)
          {
            v378 = *(a2 + 96) - v5;
            v466 = v4;
            *&v467 = __PAIR64__(v378, v5);
            WGSL::AST::Builder::construct<WGSL::AST::CallExpression,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Expression,0ul>,void>();
          }

          if (v485 != 1)
          {
            goto LABEL_969;
          }

          v175 = v483;
          if (v483)
          {
            atomic_fetch_add_explicit(v483, 2u, memory_order_relaxed);
          }

          *(a1 + 8) = v484;
          *a1 = v175;
          *(a1 + 24) = 1;
          std::experimental::fundamentals_v3::expected<WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::CompilationMessage>::~expected(&v483, v174);
        }

        result = std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v488, v173);
      }

      if (v477 == 255)
      {
        goto LABEL_4;
      }

      if (!v477)
      {
        result = v476;
        *v475 = off_2838D37C0;
        v476 = 0;
        if (result)
        {
          goto LABEL_949;
        }

        goto LABEL_4;
      }

      result = *v475;
      *v475 = 0;
      if (!result)
      {
        goto LABEL_4;
      }

      goto LABEL_949;
    case 0xB:
      while (1)
      {
        v65 = *(a2 + 36);
        v66 = (*(a2 + 40) + 1);
        *(a2 + 40) = v66;
        if (v65 <= v66)
        {
          __break(0xC471u);
          JUMPOUT(0x225792D58);
        }

        v67 = *(a2 + 24) + 32 * v66;
        v63 = *v67;
        *(a2 + 56) = *v67;
        *(a2 + 60) = *(v67 + 4);
        v68 = *v67;
        if (*v67 > 8u)
        {
          goto LABEL_129;
        }

        if (((1 << v68) & 0x38) != 0)
        {
          *(a2 + 80) = *(v67 + 24);
        }

        else if (((1 << v68) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v67 + 24);
        }

        else
        {
          if (v68 != 8)
          {
            goto LABEL_129;
          }

          *(a2 + 80) = 0;
          v69 = *(v67 + 24);
          if (v69)
          {
            atomic_fetch_add_explicit(v69, 2u, memory_order_relaxed);
            v70 = *(a2 + 80);
            *(a2 + 80) = v69;
            if (v70)
            {
              if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v70, a2);
              }
            }
          }
        }

        v63 = *(a2 + 56);
LABEL_129:
        v64 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v64;
        if (v63 != 82)
        {
          if (v63 != 73)
          {
            *v475 = v63;
            LOBYTE(v477) = 1;
            WGSL::toString();
            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v456, ", but got a ", 13, &v455, &v466);
            v165 = v455;
            v455 = 0;
            if (v165 && atomic_fetch_add_explicit(v165, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v165, v146);
            }

            v161 = v456;
            v456 = 0;
            if (!v161)
            {
              goto LABEL_394;
            }

            goto LABEL_392;
          }

          *v475 = 73;
          *&v475[4] = *(a2 + 60);
          LOBYTE(v477) = 0;
          while (2)
          {
            v122 = *(a2 + 36);
            v123 = (*(a2 + 40) + 1);
            *(a2 + 40) = v123;
            if (v122 <= v123)
            {
              __break(0xC471u);
              JUMPOUT(0x225792DB0);
            }

            v124 = *(a2 + 24) + 32 * v123;
            v120 = *v124;
            *(a2 + 56) = *v124;
            *(a2 + 60) = *(v124 + 4);
            v125 = *v124;
            if (*v124 <= 8u)
            {
              if (((1 << v125) & 0x38) != 0)
              {
                *(a2 + 80) = *(v124 + 24);
                goto LABEL_234;
              }

              if (((1 << v125) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v124 + 24);
                goto LABEL_234;
              }

              if (v125 == 8)
              {
                *(a2 + 80) = 0;
                v126 = *(v124 + 24);
                if (v126)
                {
                  atomic_fetch_add_explicit(v126, 2u, memory_order_relaxed);
                  v127 = *(a2 + 80);
                  *(a2 + 80) = v126;
                  if (v127)
                  {
                    if (atomic_fetch_add_explicit(v127, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v127, a2);
                    }
                  }
                }

LABEL_234:
                v120 = *(a2 + 56);
              }
            }

            v121 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v121;
            if (v120 != 82)
            {
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v475, a2);
              v169 = *(a2 + 96) - v5;
              *v475 = v4;
              *&v475[8] = v5;
              *&v475[12] = v169;
              WGSL::AST::Builder::construct<WGSL::AST::BreakStatement,WGSL::SourceSpan,void>();
            }

            continue;
          }
        }
      }

    case 0xD:
    case 0x1A:
    case 0x22:
      *v475 = 0;
      *&v475[8] = 0;
      WGSL::Parser<WGSL::Lexer<char16_t>>::parseVariableWithAttributes(&v466, a2);
      result = *v475;
      if (*v475)
      {
        result = WTF::fastFree(*v475, a2);
      }

      if (v468)
      {
        if (v468 != 1)
        {
          goto LABEL_969;
        }

        goto LABEL_196;
      }

      if (*(a2 + 56) != 73)
      {
        *v475 = *(a2 + 56);
        LOBYTE(v477) = 1;
        result = WGSL::toString();
        if (v477 != 1)
        {
          goto LABEL_969;
        }

        WGSL::toString();
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v460, ", but got a ", 13, &v459, &v488);
        v147 = v459;
        v459 = 0;
        if (v147 && atomic_fetch_add_explicit(v147, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v147, v146);
        }

        v148 = v460;
        v460 = 0;
        if (v148 && atomic_fetch_add_explicit(v148, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v148, v146);
        }

        v149 = (*(a2 + 96) - v5);
        v150 = v488;
        goto LABEL_395;
      }

      *v475 = 73;
      *&v475[4] = *(a2 + 60);
      LOBYTE(v477) = 0;
      while (1)
      {
        v12 = *(a2 + 36);
        v13 = (*(a2 + 40) + 1);
        *(a2 + 40) = v13;
        if (v12 <= v13)
        {
          __break(0xC471u);
          JUMPOUT(0x225792D80);
        }

        v14 = *(a2 + 24) + 32 * v13;
        v10 = *v14;
        *(a2 + 56) = *v14;
        *(a2 + 60) = *(v14 + 4);
        v15 = *v14;
        if (*v14 <= 8u)
        {
          if (((1 << v15) & 0x38) != 0)
          {
            *(a2 + 80) = *(v14 + 24);
          }

          else if (((1 << v15) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v14 + 24);
          }

          else
          {
            if (v15 != 8)
            {
              goto LABEL_20;
            }

            *(a2 + 80) = 0;
            v16 = *(v14 + 24);
            if (v16)
            {
              atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
              v17 = *(a2 + 80);
              *(a2 + 80) = v16;
              if (v17)
              {
                if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v17, a2);
                }
              }
            }
          }

          v10 = *(a2 + 56);
        }

LABEL_20:
        v11 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v11;
        if (v10 != 82)
        {
          std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v475, a2);
          v151 = *(a2 + 96) - v5;
          *v475 = v4;
          *&v475[8] = v5;
          *&v475[12] = v151;
          WGSL::AST::Builder::construct<WGSL::AST::VariableStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Variable>,void>();
        }
      }

    case 0xE:
      result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseConstAssert(v475, a2);
      v52 = v476;
      if (!v476)
      {
        v53 = *(a2 + 96) - v5;
        v466 = v4;
        *&v467 = __PAIR64__(v53, v5);
        WGSL::AST::Builder::construct<WGSL::AST::ConstAssertStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::ConstAssert>,void>();
      }

      goto LABEL_267;
    case 0xF:
      while (1)
      {
        v81 = *(a2 + 36);
        v82 = (*(a2 + 40) + 1);
        *(a2 + 40) = v82;
        if (v81 <= v82)
        {
          __break(0xC471u);
          JUMPOUT(0x225792D68);
        }

        v83 = *(a2 + 24) + 32 * v82;
        v79 = *v83;
        *(a2 + 56) = *v83;
        *(a2 + 60) = *(v83 + 4);
        v84 = *v83;
        if (*v83 > 8u)
        {
          goto LABEL_155;
        }

        if (((1 << v84) & 0x38) != 0)
        {
          *(a2 + 80) = *(v83 + 24);
        }

        else if (((1 << v84) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v83 + 24);
        }

        else
        {
          if (v84 != 8)
          {
            goto LABEL_155;
          }

          *(a2 + 80) = 0;
          v85 = *(v83 + 24);
          if (v85)
          {
            atomic_fetch_add_explicit(v85, 2u, memory_order_relaxed);
            v86 = *(a2 + 80);
            *(a2 + 80) = v85;
            if (v86)
            {
              if (atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v86, a2);
              }
            }
          }
        }

        v79 = *(a2 + 56);
LABEL_155:
        v80 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v80;
        if (v79 != 82)
        {
          if (v79 != 73)
          {
            *v475 = v79;
            LOBYTE(v477) = 1;
            WGSL::toString();
            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v454, ", but got a ", 13, &v453, &v466);
            v166 = v453;
            v453 = 0;
            if (v166 && atomic_fetch_add_explicit(v166, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v166, v146);
            }

            v161 = v454;
            v454 = 0;
            if (!v161)
            {
              goto LABEL_394;
            }

            goto LABEL_392;
          }

          *v475 = 73;
          *&v475[4] = *(a2 + 60);
          LOBYTE(v477) = 0;
          while (2)
          {
            v131 = *(a2 + 36);
            v132 = (*(a2 + 40) + 1);
            *(a2 + 40) = v132;
            if (v131 <= v132)
            {
              __break(0xC471u);
              JUMPOUT(0x225792DB8);
            }

            v133 = *(a2 + 24) + 32 * v132;
            v129 = *v133;
            *(a2 + 56) = *v133;
            *(a2 + 60) = *(v133 + 4);
            v134 = *v133;
            if (*v133 <= 8u)
            {
              if (((1 << v134) & 0x38) != 0)
              {
                *(a2 + 80) = *(v133 + 24);
                goto LABEL_254;
              }

              if (((1 << v134) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v133 + 24);
                goto LABEL_254;
              }

              if (v134 == 8)
              {
                *(a2 + 80) = 0;
                v135 = *(v133 + 24);
                if (v135)
                {
                  atomic_fetch_add_explicit(v135, 2u, memory_order_relaxed);
                  v136 = *(a2 + 80);
                  *(a2 + 80) = v135;
                  if (v136)
                  {
                    if (atomic_fetch_add_explicit(v136, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v136, a2);
                    }
                  }
                }

LABEL_254:
                v129 = *(a2 + 56);
              }
            }

            v130 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v130;
            if (v129 != 82)
            {
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v475, a2);
              v170 = *(a2 + 96) - v5;
              *v475 = v4;
              *&v475[8] = v5;
              *&v475[12] = v170;
              WGSL::AST::Builder::construct<WGSL::AST::ContinueStatement,WGSL::SourceSpan,void>();
            }

            continue;
          }
        }
      }

    case 0x13:
      while (1)
      {
        v45 = *(a2 + 36);
        v46 = (*(a2 + 40) + 1);
        *(a2 + 40) = v46;
        if (v45 <= v46)
        {
          __break(0xC471u);
          JUMPOUT(0x225792D48);
        }

        v47 = *(a2 + 24) + 32 * v46;
        v43 = *v47;
        *(a2 + 56) = *v47;
        *(a2 + 60) = *(v47 + 4);
        v48 = *v47;
        if (*v47 > 8u)
        {
          goto LABEL_86;
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
            goto LABEL_86;
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
                WTF::StringImpl::destroy(v50, a2);
              }
            }
          }
        }

        v43 = *(a2 + 56);
LABEL_86:
        v44 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v44;
        if (v43 != 82)
        {
          if (v43 != 73)
          {
            *v475 = v43;
            LOBYTE(v477) = 1;
            WGSL::toString();
            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v452, ", but got a ", 13, &v451, &v466);
            v160 = v451;
            v451 = 0;
            if (v160 && atomic_fetch_add_explicit(v160, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v160, v146);
            }

            v161 = v452;
            v452 = 0;
            if (!v161)
            {
              goto LABEL_394;
            }

            goto LABEL_392;
          }

          *v475 = 73;
          *&v475[4] = *(a2 + 60);
          LOBYTE(v477) = 0;
          while (2)
          {
            v106 = *(a2 + 36);
            v107 = (*(a2 + 40) + 1);
            *(a2 + 40) = v107;
            if (v106 <= v107)
            {
              __break(0xC471u);
              JUMPOUT(0x225792DA8);
            }

            v108 = *(a2 + 24) + 32 * v107;
            v104 = *v108;
            *(a2 + 56) = *v108;
            *(a2 + 60) = *(v108 + 4);
            v109 = *v108;
            if (*v108 <= 8u)
            {
              if (((1 << v109) & 0x38) != 0)
              {
                *(a2 + 80) = *(v108 + 24);
                goto LABEL_204;
              }

              if (((1 << v109) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v108 + 24);
                goto LABEL_204;
              }

              if (v109 == 8)
              {
                *(a2 + 80) = 0;
                v110 = *(v108 + 24);
                if (v110)
                {
                  atomic_fetch_add_explicit(v110, 2u, memory_order_relaxed);
                  v111 = *(a2 + 80);
                  *(a2 + 80) = v110;
                  if (v111)
                  {
                    if (atomic_fetch_add_explicit(v111, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v111, a2);
                    }
                  }
                }

LABEL_204:
                v104 = *(a2 + 56);
              }
            }

            v105 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v105;
            if (v104 != 82)
            {
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v475, a2);
              v168 = *(a2 + 96) - v5;
              *v475 = v4;
              *&v475[8] = v5;
              *&v475[12] = v168;
              WGSL::AST::Builder::construct<WGSL::AST::DiscardStatement,WGSL::SourceSpan,void>();
            }

            continue;
          }
        }
      }

    case 0x18:
      do
      {
        v56 = *(a2 + 36);
        v57 = (*(a2 + 40) + 1);
        *(a2 + 40) = v57;
        if (v56 <= v57)
        {
          __break(0xC471u);
          JUMPOUT(0x225792D50);
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
LABEL_105:
            v54 = *(a2 + 56);
            goto LABEL_106;
          }

          if (((1 << v59) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v58 + 24);
            goto LABEL_105;
          }

          if (v59 == 8)
          {
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
                  WTF::StringImpl::destroy(v61, a2);
                }
              }
            }

            goto LABEL_105;
          }
        }

LABEL_106:
        v55 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v55;
      }

      while (v54 == 82);
      v488 = 0;
      v483 = 0;
      v470 = 0;
      if (v54 != 67)
      {
        WGSL::toString();
        WGSL::toString();
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v486, ", but got a ", 13, &v481, v475);
        v163 = v481;
        v481 = 0;
        if (v163 && atomic_fetch_add_explicit(v163, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v163, v162);
        }

        result = v486;
        v486 = 0;
        if (result)
        {
          goto LABEL_325;
        }

        goto LABEL_327;
      }

      while (2)
      {
        v112 = *(a2 + 36);
        v113 = (*(a2 + 40) + 1);
        *(a2 + 40) = v113;
        if (v112 <= v113)
        {
          __break(0xC471u);
          JUMPOUT(0x225792E18);
        }

        v114 = *(a2 + 24) + 32 * v113;
        v115 = *v114;
        *(a2 + 56) = *v114;
        *(a2 + 60) = *(v114 + 4);
        v116 = *v114;
        if (*v114 <= 8u)
        {
          if (((1 << v116) & 0x38) != 0)
          {
            *(a2 + 80) = *(v114 + 24);
            goto LABEL_223;
          }

          if (((1 << v116) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v114 + 24);
            goto LABEL_223;
          }

          if (v116 == 8)
          {
            *(a2 + 80) = 0;
            v118 = *(v114 + 24);
            if (v118)
            {
              atomic_fetch_add_explicit(v118, 2u, memory_order_relaxed);
              v119 = *(a2 + 80);
              *(a2 + 80) = v118;
              if (v119)
              {
                if (atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v119, a2);
                }
              }
            }

LABEL_223:
            v115 = *(a2 + 56);
          }
        }

        v117 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v117;
        if (v115 == 82)
        {
          continue;
        }

        break;
      }

      if (v115 > 25)
      {
        if (v115 != 26 && v115 != 34)
        {
          if (v115 == 73)
          {
            goto LABEL_862;
          }

LABEL_812:
          result = WTF::StringImpl::createWithoutCopyingNonEmpty();
          v164 = v5 | ((*(a2 + 96) - v5) << 32);
LABEL_823:
          *(a1 + 8) = v4;
          *(a1 + 16) = v164;
          goto LABEL_3;
        }

LABEL_617:
        v466 = 0;
        *&v467 = 0;
        WGSL::Parser<WGSL::Lexer<char16_t>>::parseVariableWithAttributes(v475, a2);
        result = 0;
        v52 = v476;
        if (!v476)
        {
          v291 = *(a2 + 96) - v5;
          v466 = v4;
          *&v467 = __PAIR64__(v291, v5);
          WGSL::AST::Builder::construct<WGSL::AST::VariableStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Variable>,void>();
        }

LABEL_267:
        if (v52 != 1)
        {
          goto LABEL_969;
        }

        result = *v475;
        if (*v475)
        {
          atomic_fetch_add_explicit(*v475, 2u, memory_order_relaxed);
          v137 = *&v475[8];
          goto LABEL_270;
        }

LABEL_965:
        v431 = *&v475[8];
LABEL_966:
        *(a1 + 8) = v431;
        *a1 = 0;
        goto LABEL_3;
      }

      if (v115 != 8)
      {
        if (v115 != 13)
        {
          goto LABEL_812;
        }

        goto LABEL_617;
      }

      result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseLHSExpression(v475, a2);
      if (v476)
      {
        if (v476 != 1)
        {
          goto LABEL_969;
        }

        v377 = *v475;
        if (*v475)
        {
          atomic_fetch_add_explicit(*v475, 2u, memory_order_relaxed);
        }

        v467 = *&v475[8];
        v466 = v377;
        v468 = 1;
      }

      else
      {
        result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseVariableUpdatingStatement(&v466, a2);
      }

      if (v476)
      {
        if (v476 != 255)
        {
          result = *v475;
          *v475 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }
      }

      if (!v468)
      {
        v488 = v466;
        if (*(a2 + 56) == 73)
        {
          while (1)
          {
LABEL_862:
            v395 = *(a2 + 36);
            v396 = (*(a2 + 40) + 1);
            *(a2 + 40) = v396;
            if (v395 <= v396)
            {
              __break(0xC471u);
              JUMPOUT(0x225792E28);
            }

            v397 = *(a2 + 24) + 32 * v396;
            v398 = *v397;
            *(a2 + 56) = *v397;
            *(a2 + 60) = *(v397 + 4);
            v399 = *v397;
            if (*v397 > 8u)
            {
              goto LABEL_869;
            }

            if (((1 << v399) & 0x38) != 0)
            {
              *(a2 + 80) = *(v397 + 24);
            }

            else if (((1 << v399) & 0xC4) != 0)
            {
              *(a2 + 80) = *(v397 + 24);
            }

            else
            {
              if (v399 != 8)
              {
                goto LABEL_869;
              }

              *(a2 + 80) = 0;
              v401 = *(v397 + 24);
              if (v401)
              {
                atomic_fetch_add_explicit(v401, 2u, memory_order_relaxed);
                v402 = *(a2 + 80);
                *(a2 + 80) = v401;
                if (v402)
                {
                  if (atomic_fetch_add_explicit(v402, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v402, a2);
                  }
                }
              }
            }

            v398 = *(a2 + 56);
LABEL_869:
            v400 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v400;
            if (v398 != 82)
            {
              if (v398 == 73)
              {
                goto LABEL_877;
              }

              result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(v475, a2);
              if (v476)
              {
                if (v476 != 1)
                {
                  goto LABEL_969;
                }

                result = *v475;
                if (!*v475)
                {
LABEL_910:
                  *a1 = 0;
                  *(a1 + 8) = *&v475[8];
                  goto LABEL_3;
                }

LABEL_120:
                atomic_fetch_add_explicit(result, 2u, memory_order_relaxed);
                *a1 = result;
                *(a1 + 8) = *&v475[8];
                *(a1 + 24) = 1;
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
                {
                  goto LABEL_4;
                }

LABEL_950:
                result = WTF::StringImpl::destroy(result, a2);
                goto LABEL_4;
              }

              v483 = *v475;
              if (*(a2 + 56) != 73)
              {
                WGSL::toString();
                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v474, ", but got a ", 13, &v473, v475);
                v423 = v473;
                v473 = 0;
                if (v423 && atomic_fetch_add_explicit(v423, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v423, v162);
                }

                result = v474;
                v474 = 0;
                if (!result)
                {
                  goto LABEL_327;
                }

LABEL_325:
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, v162);
                }

                goto LABEL_327;
              }

LABEL_877:
              while (2)
              {
                v403 = *(a2 + 36);
                v404 = (*(a2 + 40) + 1);
                *(a2 + 40) = v404;
                if (v403 <= v404)
                {
                  __break(0xC471u);
                  JUMPOUT(0x225792E40);
                }

                v405 = *(a2 + 24) + 32 * v404;
                v406 = *v405;
                *(a2 + 56) = *v405;
                *(a2 + 60) = *(v405 + 4);
                v407 = *v405;
                if (*v405 <= 8u)
                {
                  if (((1 << v407) & 0x38) != 0)
                  {
                    *(a2 + 80) = *(v405 + 24);
                    goto LABEL_883;
                  }

                  if (((1 << v407) & 0xC4) != 0)
                  {
                    *(a2 + 80) = *(v405 + 24);
                    goto LABEL_883;
                  }

                  if (v407 == 8)
                  {
                    *(a2 + 80) = 0;
                    v409 = *(v405 + 24);
                    if (v409)
                    {
                      atomic_fetch_add_explicit(v409, 2u, memory_order_relaxed);
                      v410 = *(a2 + 80);
                      *(a2 + 80) = v409;
                      if (v410)
                      {
                        if (atomic_fetch_add_explicit(v410, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v410, a2);
                        }
                      }
                    }

LABEL_883:
                    v406 = *(a2 + 56);
                  }
                }

                v408 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v408;
                if (v406 != 82)
                {
                  if (v406 != 8)
                  {
                    if (v406 == 68)
                    {
                      goto LABEL_893;
                    }

LABEL_2:
                    result = WTF::StringImpl::createWithoutCopyingNonEmpty();
                    v8 = v5 | ((*(a2 + 96) - v5) << 32);
                    *a1 = *v475;
                    *(a1 + 8) = v4;
                    *(a1 + 16) = v8;
LABEL_3:
                    *(a1 + 24) = 1;
                    goto LABEL_4;
                  }

                  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseVariableUpdatingStatement(v475, a2);
                  if (v476)
                  {
                    if (v476 != 1)
                    {
                      goto LABEL_969;
                    }

                    v422 = *v475;
                    if (*v475)
                    {
                      atomic_fetch_add_explicit(*v475, 2u, memory_order_relaxed);
                    }

LABEL_931:
                    *(a1 + 8) = *&v475[8];
                    *a1 = v422;
                    *(a1 + 24) = 1;
                    result = std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(v475, v421);
                    goto LABEL_4;
                  }

                  v470 = *v475;
                  std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(v475, v421);
                  if (*(a2 + 56) != 68)
                  {
                    *v475 = *(a2 + 56);
                    LOBYTE(v477) = 1;
                    result = WGSL::toString();
                    if (v477 != 1)
                    {
                      goto LABEL_969;
                    }

                    WGSL::toString();
                    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v465, ", but got a ", 13, &v464, &v466);
                    v426 = v464;
                    v464 = 0;
                    if (v426 && atomic_fetch_add_explicit(v426, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v426, v146);
                    }

                    v161 = v465;
                    v465 = 0;
                    if (!v161)
                    {
LABEL_394:
                      v149 = (*(a2 + 96) - v5);
                      v150 = v466;
LABEL_395:
                      *a1 = v150;
                      *(a1 + 8) = v4;
                      *(a1 + 16) = v5 | (v149 << 32);
                      *(a1 + 24) = 1;
                      result = std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v475, v146);
                      goto LABEL_4;
                    }

LABEL_392:
                    if (atomic_fetch_add_explicit(v161, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v161, v146);
                    }

                    goto LABEL_394;
                  }

LABEL_893:
                  *v475 = 68;
                  *&v475[4] = *(a2 + 60);
                  LOBYTE(v477) = 0;
                  while (2)
                  {
                    v413 = *(a2 + 36);
                    v414 = (*(a2 + 40) + 1);
                    *(a2 + 40) = v414;
                    if (v413 <= v414)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x225792E38);
                    }

                    v415 = *(a2 + 24) + 32 * v414;
                    v411 = *v415;
                    *(a2 + 56) = *v415;
                    *(a2 + 60) = *(v415 + 4);
                    v416 = *v415;
                    if (*v415 <= 8u)
                    {
                      if (((1 << v416) & 0x38) != 0)
                      {
                        *(a2 + 80) = *(v415 + 24);
                        goto LABEL_895;
                      }

                      if (((1 << v416) & 0xC4) != 0)
                      {
                        *(a2 + 80) = *(v415 + 24);
                        goto LABEL_895;
                      }

                      if (v416 == 8)
                      {
                        *(a2 + 80) = 0;
                        v417 = *(v415 + 24);
                        if (v417)
                        {
                          atomic_fetch_add_explicit(v417, 2u, memory_order_relaxed);
                          v418 = *(a2 + 80);
                          *(a2 + 80) = v417;
                          if (v418)
                          {
                            if (atomic_fetch_add_explicit(v418, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v418, a2);
                            }
                          }
                        }

LABEL_895:
                        v411 = *(a2 + 56);
                      }
                    }

                    v412 = *(a2 + 68);
                    *(a2 + 88) = *(a2 + 60);
                    *(a2 + 96) = v412;
                    if (v411 != 82)
                    {
                      v420 = std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v475, a2);
                      result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseCompoundStatement(v420, a2);
                      if (!v476)
                      {
                        v425 = *(a2 + 96) - v5;
                        v466 = v4;
                        *&v467 = __PAIR64__(v425, v5);
                        WGSL::AST::Builder::construct<WGSL::AST::ForStatement,WGSL::SourceSpan,WGSL::AST::Statement *&,WGSL::AST::Expression *&,WGSL::AST::Statement *&,std::reference_wrapper<WGSL::AST::CompoundStatement>,void>();
                      }

                      if (v476 == 1)
                      {
                        v422 = *v475;
                        if (*v475)
                        {
                          atomic_fetch_add_explicit(*v475, 2u, memory_order_relaxed);
                        }

                        goto LABEL_931;
                      }

LABEL_969:
                      mpark::throw_bad_variant_access(result);
                    }

                    continue;
                  }
                }

                continue;
              }
            }
          }
        }

        WGSL::toString();
        WGSL::toString();
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v480, ", but got a ", 13, &v479, v475);
        v419 = v479;
        v479 = 0;
        if (v419 && atomic_fetch_add_explicit(v419, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v419, v162);
        }

        result = v480;
        v480 = 0;
        if (result)
        {
          goto LABEL_325;
        }

LABEL_327:
        v164 = v5 | ((*(a2 + 96) - v5) << 32);
        *a1 = *v475;
        goto LABEL_823;
      }

      if (v468 != 1)
      {
        goto LABEL_969;
      }

      v394 = v466;
      if (!v466)
      {
        *a1 = 0;
        *(a1 + 8) = v467;
        goto LABEL_3;
      }

      atomic_fetch_add_explicit(v466, 2u, memory_order_relaxed);
      v156 = v468;
      *a1 = v394;
      *(a1 + 8) = v467;
      *(a1 + 24) = 1;
      if (v156)
      {
        goto LABEL_306;
      }

LABEL_4:
      *(a2 + 44) = v6;
      return result;
    case 0x19:
      WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttributes(v475, a2);
      if (v476)
      {
        if (v476 != 1)
        {
          goto LABEL_969;
        }

        v51 = *v475;
        if (*v475)
        {
          atomic_fetch_add_explicit(*v475, 2u, memory_order_relaxed);
        }

        *(a1 + 8) = *&v475[8];
        *a1 = v51;
        *(a1 + 24) = 1;
        result = *v475;
        goto LABEL_803;
      }

      result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseIfStatementWithAttributes(a1, a2, v475, v4, v5);
      if (v476 == 255)
      {
        goto LABEL_4;
      }

      result = *v475;
      if (!v476)
      {
        goto LABEL_403;
      }

      goto LABEL_803;
    case 0x1B:
      while (1)
      {
        v73 = *(a2 + 36);
        v74 = (*(a2 + 40) + 1);
        *(a2 + 40) = v74;
        if (v73 <= v74)
        {
          __break(0xC471u);
          JUMPOUT(0x225792D60);
        }

        v75 = *(a2 + 24) + 32 * v74;
        v71 = *v75;
        *(a2 + 56) = *v75;
        *(a2 + 60) = *(v75 + 4);
        v76 = *v75;
        if (*v75 > 8u)
        {
          goto LABEL_142;
        }

        if (((1 << v76) & 0x38) != 0)
        {
          *(a2 + 80) = *(v75 + 24);
        }

        else if (((1 << v76) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v75 + 24);
        }

        else
        {
          if (v76 != 8)
          {
            goto LABEL_142;
          }

          *(a2 + 80) = 0;
          v77 = *(v75 + 24);
          if (v77)
          {
            atomic_fetch_add_explicit(v77, 2u, memory_order_relaxed);
            v78 = *(a2 + 80);
            *(a2 + 80) = v77;
            if (v78)
            {
              if (atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v78, a2);
              }
            }
          }
        }

        v71 = *(a2 + 56);
LABEL_142:
        v72 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v72;
        if (v71 != 82)
        {
          WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttributes(&v488, a2);
          if (v490)
          {
            if (v490 != 1)
            {
              goto LABEL_969;
            }

            v128 = v488;
            if (v488)
            {
              atomic_fetch_add_explicit(v488, 2u, memory_order_relaxed);
            }

            *(a1 + 8) = v489;
            *a1 = v128;
            *(a1 + 24) = 1;
            result = v488;
            goto LABEL_803;
          }

          if (*(a2 + 56) != 43)
          {
            WGSL::toString();
            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v466, ", but got a ", 13, &v483, v475);
            v186 = v483;
            v483 = 0;
            if (v186 && atomic_fetch_add_explicit(v186, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v186, a2);
            }

            v187 = v466;
            v466 = 0;
            if (v187 && atomic_fetch_add_explicit(v187, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v187, a2);
            }

            v188 = v5 | ((*(a2 + 96) - v5) << 32);
            *a1 = *v475;
            *(a1 + 8) = v4;
            *(a1 + 16) = v188;
            *(a1 + 24) = 1;
            result = v488;
            goto LABEL_403;
          }

          while (2)
          {
            v179 = *(a2 + 36);
            v180 = (*(a2 + 40) + 1);
            *(a2 + 40) = v180;
            if (v179 <= v180)
            {
              __break(0xC471u);
              JUMPOUT(0x225792DF8);
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
                goto LABEL_375;
              }

              if (((1 << v182) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v181 + 24);
                goto LABEL_375;
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
                      WTF::StringImpl::destroy(v184, a2);
                    }
                  }
                }

LABEL_375:
                v177 = *(a2 + 56);
              }
            }

            v178 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v178;
            if (v177 == 82)
            {
              continue;
            }

            break;
          }

          v443 = 0;
          v486 = 0;
          v487 = 0;
          v475[0] = 0;
          v478 = 0;
          v189 = *a1;
          v190 = *(a1 + 24);
          while (2)
          {
            while (2)
            {
              v191 = *(a2 + 56);
              if (v191 != 16)
              {
                if (v191 != 44)
                {
                  v192 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseStatement(&v466, a2);
                  v193 = v468;
                  if (v468)
                  {
                    if (v468 != 1)
                    {
LABEL_970:
                      *(a1 + 24) = v190;
                      *a1 = v189;
                      mpark::throw_bad_variant_access(v192);
                    }

                    v189 = v466;
                    if (v466)
                    {
                      atomic_fetch_add_explicit(v466, 2u, memory_order_relaxed);
                    }

                    *(a1 + 8) = v467;
                    v190 = 1;
                    v194 = v468;
                    if (!v468)
                    {
                      goto LABEL_406;
                    }

LABEL_419:
                    if (v194 != 255)
                    {
                      v199 = v466;
                      v466 = 0;
                      if (v199)
                      {
                        if (atomic_fetch_add_explicit(v199, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v199, a2);
                        }
                      }
                    }
                  }

                  else
                  {
                    v195 = HIDWORD(v487);
                    if (HIDWORD(v487) == v487)
                    {
                      v196 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v486, HIDWORD(v487) + 1, &v466);
                      v195 = HIDWORD(v487);
                      v197 = v486;
                      v198 = *v196;
                    }

                    else
                    {
                      v197 = v486;
                      v198 = v466;
                    }

                    *(v197 + 8 * v195) = v198;
                    ++HIDWORD(v487);
                    v194 = v468;
                    if (v468)
                    {
                      goto LABEL_419;
                    }
                  }

LABEL_406:
                  if (v193)
                  {
                    *(a1 + 24) = v190;
                    *a1 = v189;
                    goto LABEL_794;
                  }

                  continue;
                }

                *(a1 + 24) = v190;
                *a1 = v189;
                while (2)
                {
                  v370 = *(a2 + 36);
                  v371 = (*(a2 + 40) + 1);
                  *(a2 + 40) = v371;
                  if (v370 <= v371)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x225792E10);
                  }

                  v372 = *(a2 + 24) + 32 * v371;
                  v368 = *v372;
                  *(a2 + 56) = *v372;
                  *(a2 + 60) = *(v372 + 4);
                  v373 = *v372;
                  if (*v372 <= 8u)
                  {
                    if (((1 << v373) & 0x38) != 0)
                    {
                      *(a2 + 80) = *(v372 + 24);
                      goto LABEL_780;
                    }

                    if (((1 << v373) & 0xC4) != 0)
                    {
                      *(a2 + 80) = *(v372 + 24);
                      goto LABEL_780;
                    }

                    if (v373 == 8)
                    {
                      *(a2 + 80) = 0;
                      v374 = *(v372 + 24);
                      if (v374)
                      {
                        atomic_fetch_add_explicit(v374, 2u, memory_order_relaxed);
                        v375 = *(a2 + 80);
                        *(a2 + 80) = v374;
                        if (v375)
                        {
                          if (atomic_fetch_add_explicit(v375, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v375, a2);
                          }
                        }
                      }

LABEL_780:
                      v368 = *(a2 + 56);
                    }
                  }

                  v369 = *(a2 + 68);
                  *(a2 + 88) = *(a2 + 60);
                  *(a2 + 96) = v369;
                  if (v368 != 82)
                  {
                    v466 = v4;
                    LODWORD(v467) = v5;
                    DWORD1(v467) = v369 - v5;
                    WGSL::AST::Builder::construct<WGSL::AST::LoopStatement,WGSL::SourceSpan,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WTF::ReferenceWrapperVector<WGSL::AST::Statement,0ul>,std::optional<WGSL::AST::Continuing>,void>();
                  }

                  continue;
                }
              }

              break;
            }

            *(a1 + 24) = v190;
            *a1 = v189;
LABEL_427:
            v202 = *(a2 + 36);
            v203 = (*(a2 + 40) + 1);
            *(a2 + 40) = v203;
            if (v202 <= v203)
            {
              __break(0xC471u);
              JUMPOUT(0x225792E00);
            }

            v204 = *(a2 + 24) + 32 * v203;
            v200 = *v204;
            *(a2 + 56) = *v204;
            *(a2 + 60) = *(v204 + 4);
            v205 = *v204;
            if (*v204 <= 8u)
            {
              if (((1 << v205) & 0x38) != 0)
              {
                *(a2 + 80) = *(v204 + 24);
                goto LABEL_425;
              }

              if (((1 << v205) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v204 + 24);
                goto LABEL_425;
              }

              if (v205 == 8)
              {
                *(a2 + 80) = 0;
                v206 = *(v204 + 24);
                if (v206)
                {
                  atomic_fetch_add_explicit(v206, 2u, memory_order_relaxed);
                  v207 = *(a2 + 80);
                  *(a2 + 80) = v206;
                  if (v207)
                  {
                    if (atomic_fetch_add_explicit(v207, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v207, a2);
                    }
                  }
                }

LABEL_425:
                v200 = *(a2 + 56);
              }
            }

            v201 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v201;
            if (v200 != 82)
            {
              v481 = 0;
              v482 = 0;
              WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttributes(&v483, a2);
              if (v485)
              {
                if (v485 != 1)
                {
                  goto LABEL_969;
                }

                v189 = v483;
                if (v483)
                {
                  atomic_fetch_add_explicit(v483, 2u, memory_order_relaxed);
                }

                v208 = 0;
                *(a1 + 8) = v484;
                *a1 = v189;
                v190 = 1;
                *(a1 + 24) = 1;
                v209 = v483;
LABEL_442:
                if (v209 && atomic_fetch_add_explicit(v209, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v209, a2);
                }

                goto LABEL_553;
              }

              if (*(a2 + 56) != 43)
              {
                WGSL::toString();
                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v480, ", but got a ", 13, &v479, &v466);
                v210 = v479;
                v479 = 0;
                if (v210 && atomic_fetch_add_explicit(v210, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v210, a2);
                }

                v211 = v480;
                v480 = 0;
                if (v211)
                {
                  goto LABEL_531;
                }

                goto LABEL_564;
              }

              while (2)
              {
                v214 = *(a2 + 36);
                v215 = (*(a2 + 40) + 1);
                *(a2 + 40) = v215;
                if (v214 <= v215)
                {
                  __break(0xC471u);
                  JUMPOUT(0x225792E48);
                }

                v216 = *(a2 + 24) + 32 * v215;
                v212 = *v216;
                *(a2 + 56) = *v216;
                *(a2 + 60) = *(v216 + 4);
                v217 = *v216;
                if (*v216 <= 8u)
                {
                  if (((1 << v217) & 0x38) != 0)
                  {
                    *(a2 + 80) = *(v216 + 24);
                    goto LABEL_452;
                  }

                  if (((1 << v217) & 0xC4) != 0)
                  {
                    *(a2 + 80) = *(v216 + 24);
                    goto LABEL_452;
                  }

                  if (v217 == 8)
                  {
                    *(a2 + 80) = 0;
                    v218 = *(v216 + 24);
                    if (v218)
                    {
                      atomic_fetch_add_explicit(v218, 2u, memory_order_relaxed);
                      v219 = *(a2 + 80);
                      *(a2 + 80) = v218;
                      if (v219)
                      {
                        if (atomic_fetch_add_explicit(v219, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v219, a2);
                        }
                      }
                    }

LABEL_452:
                    v212 = *(a2 + 56);
                  }
                }

                v213 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v213;
                if (v212 == 82)
                {
                  continue;
                }

                break;
              }

              while (2)
              {
                v220 = *(a2 + 56);
                if (v220 != 11)
                {
                  if (v220 != 44)
                  {
                    v192 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseStatement(&v466, a2);
                    v237 = v468;
                    if (v468)
                    {
                      if (v468 != 1)
                      {
                        goto LABEL_970;
                      }

                      v189 = v466;
                      if (v466)
                      {
                        atomic_fetch_add_explicit(v466, 2u, memory_order_relaxed);
                      }

                      *(a1 + 8) = v467;
                      v190 = 1;
                    }

                    else
                    {
                      v238 = HIDWORD(v482);
                      if (HIDWORD(v482) == v482)
                      {
                        v239 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v481, HIDWORD(v482) + 1, &v466);
                        v238 = HIDWORD(v482);
                        v240 = v481;
                        v241 = *v239;
                      }

                      else
                      {
                        v240 = v481;
                        v241 = v466;
                      }

                      *(v240 + v238) = v241;
                      ++HIDWORD(v482);
                    }

                    if (v468)
                    {
                      if (v468 != 255)
                      {
                        v242 = v466;
                        v466 = 0;
                        if (v242)
                        {
                          if (atomic_fetch_add_explicit(v242, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v242, a2);
                          }
                        }
                      }
                    }

                    if (v237)
                    {
                      v208 = 0;
                      *(a1 + 24) = v190;
                      *a1 = v189;
                      goto LABEL_549;
                    }

                    continue;
                  }

                  v439 = 0;
                  *(a1 + 24) = v190;
                  *a1 = v189;
LABEL_570:
                  while (2)
                  {
                    v268 = *(a2 + 36);
                    v269 = (*(a2 + 40) + 1);
                    *(a2 + 40) = v269;
                    if (v268 <= v269)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x225792E88);
                    }

                    v270 = *(a2 + 24) + 32 * v269;
                    v266 = *v270;
                    *(a2 + 56) = *v270;
                    *(a2 + 60) = *(v270 + 4);
                    v271 = *v270;
                    if (*v270 <= 8u)
                    {
                      if (((1 << v271) & 0x38) != 0)
                      {
                        *(a2 + 80) = *(v270 + 24);
                        goto LABEL_568;
                      }

                      if (((1 << v271) & 0xC4) != 0)
                      {
                        *(a2 + 80) = *(v270 + 24);
                        goto LABEL_568;
                      }

                      if (v271 == 8)
                      {
                        *(a2 + 80) = 0;
                        v272 = *(v270 + 24);
                        if (v272)
                        {
                          atomic_fetch_add_explicit(v272, 2u, memory_order_relaxed);
                          v273 = *(a2 + 80);
                          *(a2 + 80) = v272;
                          if (v273)
                          {
                            if (atomic_fetch_add_explicit(v273, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v273, a2);
                            }
                          }
                        }

LABEL_568:
                        v266 = *(a2 + 56);
                      }
                    }

                    v267 = *(a2 + 68);
                    *(a2 + 88) = *(a2 + 60);
                    *(a2 + 96) = v267;
                    if (v266 != 82)
                    {
                      v274 = v481;
                      v481 = 0;
                      v275 = HIDWORD(v482);
                      v432 = v482;
                      v482 = 0;
                      __src = v483;
                      v483 = 0;
                      v276 = DWORD1(v484);
                      v433 = v275;
                      v435 = v484;
                      *&v484 = 0;
                      if ((v443 & 1) == 0)
                      {
                        *v475 = v274;
                        *&v475[8] = v432;
                        *&v475[12] = v275;
                        *&v475[16] = __src;
                        v476 = __PAIR64__(v276, v435);
                        v477 = v439;
                        v208 = 1;
                        v443 = 1;
                        v441 = __src;
                        v478 = 1;
                        goto LABEL_549;
                      }

                      if (*v475)
                      {
                        WTF::fastFree(*v475, a2);
                      }

                      *v475 = v274;
                      *&v475[8] = v432;
                      *&v475[12] = v433;
                      if (!v441)
                      {
                        v258 = __src;
                        *&v475[16] = __src;
                        v476 = __PAIR64__(v276, v435);
                        v477 = v439;
                        v443 = 1;
                        v208 = 1;
                        v209 = v483;
                        goto LABEL_550;
                      }

                      *&v475[16] = 0;
                      LODWORD(v476) = 0;
                      WTF::fastFree(v441, a2);
                      *&v475[16] = __src;
                      v476 = __PAIR64__(v276, v435);
                      v477 = v439;
                      if (v485 == 255)
                      {
                        v208 = 1;
                        v443 = 1;
                        v441 = __src;
                        goto LABEL_553;
                      }

                      v443 = 1;
                      v209 = v483;
                      v208 = 1;
                      v258 = __src;
                      v441 = __src;
                      if (!v485)
                      {
                        goto LABEL_550;
                      }

                      goto LABEL_442;
                    }

                    continue;
                  }
                }

                break;
              }

              while (2)
              {
                v221 = *(a2 + 36);
                v222 = (*(a2 + 40) + 1);
                *(a2 + 40) = v222;
                if (v221 <= v222)
                {
                  *a1 = v189;
                  *(a1 + 24) = v190;
                  __break(0xC471u);
                  JUMPOUT(0x225792E58);
                }

                v223 = *(a2 + 24) + 32 * v222;
                v224 = *v223;
                *(a2 + 56) = *v223;
                *(a2 + 60) = *(v223 + 4);
                v225 = *v223;
                if (*v223 <= 8u)
                {
                  if (((1 << v225) & 0x38) != 0)
                  {
                    *(a2 + 80) = *(v223 + 24);
                    goto LABEL_471;
                  }

                  if (((1 << v225) & 0xC4) != 0)
                  {
                    *(a2 + 80) = *(v223 + 24);
                    goto LABEL_471;
                  }

                  if (v225 == 8)
                  {
                    *(a2 + 80) = 0;
                    v227 = *(v223 + 24);
                    if (v227)
                    {
                      atomic_fetch_add_explicit(v227, 2u, memory_order_relaxed);
                      v228 = *(a2 + 80);
                      *(a2 + 80) = v227;
                      if (v228)
                      {
                        if (atomic_fetch_add_explicit(v228, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v228, a2);
                        }
                      }
                    }

LABEL_471:
                    v224 = *(a2 + 56);
                  }
                }

                v226 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v226;
                if (v224 == 82)
                {
                  continue;
                }

                break;
              }

              if (v224 != 25)
              {
                if (v224 != 73)
                {
                  WGSL::toString();
                  WGSL::toString();
                  WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v474, ", but got a ", 13, &v473, &v466);
                  v251 = v473;
                  v473 = 0;
                  if (v251 && atomic_fetch_add_explicit(v251, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v251, a2);
                  }

                  v211 = v474;
                  v474 = 0;
                  if (v211)
                  {
LABEL_531:
                    if (atomic_fetch_add_explicit(v211, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v211, a2);
                    }
                  }

LABEL_564:
                  v208 = 0;
                  v189 = v466;
                  v265 = v5 | ((*(a2 + 96) - v5) << 32);
                  *a1 = v466;
                  *(a1 + 8) = v4;
                  *(a1 + 16) = v265;
                  v190 = 1;
                  *(a1 + 24) = 1;
                  goto LABEL_549;
                }

                while (2)
                {
                  v231 = *(a2 + 36);
                  v232 = (*(a2 + 40) + 1);
                  *(a2 + 40) = v232;
                  if (v231 <= v232)
                  {
                    *a1 = v189;
                    *(a1 + 24) = v190;
                    __break(0xC471u);
                    JUMPOUT(0x225792E68);
                  }

                  v233 = *(a2 + 24) + 32 * v232;
                  v229 = *v233;
                  *(a2 + 56) = *v233;
                  *(a2 + 60) = *(v233 + 4);
                  v234 = *v233;
                  if (*v233 <= 8u)
                  {
                    if (((1 << v234) & 0x38) != 0)
                    {
                      *(a2 + 80) = *(v233 + 24);
                      goto LABEL_483;
                    }

                    if (((1 << v234) & 0xC4) != 0)
                    {
                      *(a2 + 80) = *(v233 + 24);
                      goto LABEL_483;
                    }

                    if (v234 == 8)
                    {
                      *(a2 + 80) = 0;
                      v235 = *(v233 + 24);
                      if (v235)
                      {
                        atomic_fetch_add_explicit(v235, 2u, memory_order_relaxed);
                        v236 = *(a2 + 80);
                        *(a2 + 80) = v235;
                        if (v236)
                        {
                          if (atomic_fetch_add_explicit(v236, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v236, a2);
                          }
                        }
                      }

LABEL_483:
                      v229 = *(a2 + 56);
                    }
                  }

                  v230 = *(a2 + 68);
                  *(a2 + 88) = *(a2 + 60);
                  *(a2 + 96) = v230;
                  if (v229 != 82)
                  {
                    v466 = v4;
                    LODWORD(v467) = v5;
                    DWORD1(v467) = v230 - v5;
                    WGSL::AST::Builder::construct<WGSL::AST::BreakStatement,WGSL::SourceSpan,void>();
                  }

                  continue;
                }
              }

              *a1 = v189;
              *(a1 + 24) = v190;
              while (2)
              {
                v245 = *(a2 + 36);
                v246 = (*(a2 + 40) + 1);
                *(a2 + 40) = v246;
                if (v245 <= v246)
                {
                  __break(0xC471u);
                  JUMPOUT(0x225792E70);
                }

                v247 = *(a2 + 24) + 32 * v246;
                v243 = *v247;
                *(a2 + 56) = *v247;
                *(a2 + 60) = *(v247 + 4);
                v248 = *v247;
                if (*v247 <= 8u)
                {
                  if (((1 << v248) & 0x38) != 0)
                  {
                    *(a2 + 80) = *(v247 + 24);
                    goto LABEL_515;
                  }

                  if (((1 << v248) & 0xC4) != 0)
                  {
                    *(a2 + 80) = *(v247 + 24);
                    goto LABEL_515;
                  }

                  if (v248 == 8)
                  {
                    *(a2 + 80) = 0;
                    v249 = *(v247 + 24);
                    if (v249)
                    {
                      atomic_fetch_add_explicit(v249, 2u, memory_order_relaxed);
                      v250 = *(a2 + 80);
                      *(a2 + 80) = v249;
                      if (v250)
                      {
                        if (atomic_fetch_add_explicit(v250, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v250, a2);
                        }
                      }
                    }

LABEL_515:
                    v243 = *(a2 + 56);
                  }
                }

                v244 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v244;
                if (v243 == 82)
                {
                  continue;
                }

                break;
              }

              result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v470, a2);
              if (v472)
              {
                if (v472 != 1)
                {
                  goto LABEL_969;
                }

                v189 = v470;
                if (v470)
                {
                  atomic_fetch_add_explicit(v470, 2u, memory_order_relaxed);
                }

                *(a1 + 8) = v471;
                *a1 = v189;
                *(a1 + 24) = 1;
                goto LABEL_548;
              }

              WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(&v466, a2, 73);
              if (!v469)
              {
                std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(&v466, v253);
                v439 = v470;
                std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v470, v262);
                if (*(a2 + 56) == 44)
                {
                  goto LABEL_570;
                }

                WGSL::toString();
                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v462, ", but got a ", 13, &v461, &v466);
                v263 = v461;
                v461 = 0;
                if (v263 && atomic_fetch_add_explicit(v263, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v263, a2);
                }

                v264 = v462;
                v462 = 0;
                if (v264 && atomic_fetch_add_explicit(v264, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v264, a2);
                }

                goto LABEL_564;
              }

              result = WGSL::toString();
              if (v469 != 1)
              {
                goto LABEL_969;
              }

              WGSL::toString();
              WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v464, ", but got a ", 13, &v463, &v465);
              v255 = v463;
              v463 = 0;
              if (v255 && atomic_fetch_add_explicit(v255, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v255, v254);
              }

              v256 = v464;
              v464 = 0;
              if (v256 && atomic_fetch_add_explicit(v256, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v256, v254);
              }

              v189 = v465;
              v257 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = v465;
              *(a1 + 8) = v4;
              *(a1 + 16) = v257;
              *(a1 + 24) = 1;
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(&v466, v254);
LABEL_548:
              std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v470, v252);
              v208 = 0;
              v190 = 1;
LABEL_549:
              v209 = v483;
              v258 = v441;
LABEL_550:
              if (v209)
              {
                v483 = 0;
                v259 = v208;
                v260 = v258;
                WTF::fastFree(v209, a2);
                v441 = v260;
                v208 = v259;
              }

              else
              {
                v441 = v258;
              }

LABEL_553:
              v261 = v481;
              if (v481)
              {
                v481 = 0;
                LODWORD(v482) = 0;
                WTF::fastFree(v261, a2);
              }

              if ((v208 & 1) == 0)
              {
LABEL_794:
                if (v443)
                {
                  if (*&v475[16])
                  {
                    WTF::fastFree(*&v475[16], a2);
                  }

                  if (*v475)
                  {
                    WTF::fastFree(*v475, a2);
                  }
                }

                result = v486;
                if (v486)
                {
                  v486 = 0;
                  LODWORD(v487) = 0;
                  result = WTF::fastFree(result, a2);
                }

                if (v490 == 255)
                {
                  goto LABEL_4;
                }

                result = v488;
                if (v490)
                {
LABEL_803:
                  if (!result)
                  {
                    goto LABEL_4;
                  }

                  goto LABEL_949;
                }

LABEL_403:
                if (result)
                {
                  result = WTF::fastFree(result, a2);
                }

                goto LABEL_4;
              }

              continue;
            }

            goto LABEL_427;
          }
        }
      }

    case 0x1E:
      while (1)
      {
        v35 = *(a2 + 36);
        v36 = (*(a2 + 40) + 1);
        *(a2 + 40) = v36;
        if (v35 <= v36)
        {
          __break(0xC471u);
          JUMPOUT(0x225792DA0);
        }

        v37 = *(a2 + 24) + 32 * v36;
        v38 = *v37;
        *(a2 + 56) = *v37;
        *(a2 + 60) = *(v37 + 4);
        v39 = *v37;
        if (*v37 > 8u)
        {
          goto LABEL_77;
        }

        if (((1 << v39) & 0x38) != 0)
        {
          *(a2 + 80) = *(v37 + 24);
        }

        else if (((1 << v39) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v37 + 24);
        }

        else
        {
          if (v39 != 8)
          {
            goto LABEL_77;
          }

          *(a2 + 80) = 0;
          v41 = *(v37 + 24);
          if (v41)
          {
            atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
            v42 = *(a2 + 80);
            *(a2 + 80) = v41;
            if (v42)
            {
              if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v42, a2);
              }
            }
          }
        }

        v38 = *(a2 + 56);
LABEL_77:
        v40 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v40;
        if (v38 != 82)
        {
          if (v38 == 73)
          {
            *v475 = v4;
            *&v475[8] = v5;
            *&v475[12] = v40 - v5;
            WGSL::AST::Builder::construct<WGSL::AST::ReturnStatement,WGSL::SourceSpan,decltype(nullptr),void>();
          }

          result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(v475, a2);
          if (!v476)
          {
            v185 = *(a2 + 96) - v5;
            v466 = v4;
            *&v467 = __PAIR64__(v185, v5);
            v488 = *v475;
            WGSL::AST::Builder::construct<WGSL::AST::ReturnStatement,WGSL::SourceSpan,WGSL::AST::Expression *,void>();
          }

          if (v476 != 1)
          {
            goto LABEL_969;
          }

          v158 = *v475;
          if (*v475)
          {
            atomic_fetch_add_explicit(*v475, 2u, memory_order_relaxed);
            v159 = *&v475[8];
            if (atomic_fetch_add_explicit(v158, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v445 = v159;
              result = WTF::StringImpl::destroy(v158, v157);
              v159 = v445;
            }

            atomic_fetch_add_explicit(v158, 2u, memory_order_relaxed);
            *(a1 + 8) = v159;
            *a1 = v158;
            *(a1 + 24) = 1;
            if (atomic_fetch_add_explicit(v158, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(v158, v157);
            }

            goto LABEL_4;
          }

          goto LABEL_965;
        }
      }

    case 0x20:
      while (1)
      {
        v29 = *(a2 + 36);
        v30 = (*(a2 + 40) + 1);
        *(a2 + 40) = v30;
        if (v29 <= v30)
        {
          __break(0xC471u);
          JUMPOUT(0x225792D40);
        }

        v31 = *(a2 + 24) + 32 * v30;
        v27 = *v31;
        *(a2 + 56) = *v31;
        *(a2 + 60) = *(v31 + 4);
        v32 = *v31;
        if (*v31 > 8u)
        {
          goto LABEL_59;
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
            goto LABEL_59;
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
                WTF::StringImpl::destroy(v34, a2);
              }
            }
          }
        }

        v27 = *(a2 + 56);
LABEL_59:
        v28 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v28;
        if (v27 != 82)
        {
          result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v466, a2);
          if (v468)
          {
            if (v468 != 1)
            {
              goto LABEL_969;
            }

LABEL_196:
            v103 = v466;
            if (v466)
            {
              atomic_fetch_add_explicit(v466, 2u, memory_order_relaxed);
            }

            *(a1 + 8) = v467;
            *a1 = v103;
            *(a1 + 24) = 1;
LABEL_199:
            result = v466;
            if (!v466)
            {
              goto LABEL_4;
            }

LABEL_949:
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
              goto LABEL_4;
            }

            goto LABEL_950;
          }

          WGSL::Parser<WGSL::Lexer<char16_t>>::parseAttributes(&v488, a2);
          if (v490)
          {
            if (v490 != 1)
            {
              goto LABEL_969;
            }

            v176 = v488;
            if (v488)
            {
              atomic_fetch_add_explicit(v488, 2u, memory_order_relaxed);
            }

            *(a1 + 8) = v489;
            *a1 = v176;
            *(a1 + 24) = 1;
            result = v488;
            goto LABEL_369;
          }

          if (*(a2 + 56) != 43)
          {
            WGSL::toString();
            WGSL::toString();
            WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v483, ", but got a ", 13, &v470, v475);
            v302 = v470;
            v470 = 0;
            if (v302 && atomic_fetch_add_explicit(v302, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v302, a2);
            }

            v303 = v483;
            v483 = 0;
            if (v303 && atomic_fetch_add_explicit(v303, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v303, a2);
            }

            v304 = v5 | ((*(a2 + 96) - v5) << 32);
            *a1 = *v475;
            *(a1 + 8) = v4;
            *(a1 + 16) = v304;
            *(a1 + 24) = 1;
            result = v488;
            goto LABEL_649;
          }

          while (2)
          {
            v284 = *(a2 + 36);
            v285 = (*(a2 + 40) + 1);
            *(a2 + 40) = v285;
            if (v284 <= v285)
            {
              __break(0xC471u);
              JUMPOUT(0x225792E08);
            }

            v286 = *(a2 + 24) + 32 * v285;
            v282 = *v286;
            *(a2 + 56) = *v286;
            *(a2 + 60) = *(v286 + 4);
            v287 = *v286;
            if (*v286 <= 8u)
            {
              if (((1 << v287) & 0x38) != 0)
              {
                *(a2 + 80) = *(v286 + 24);
                goto LABEL_602;
              }

              if (((1 << v287) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v286 + 24);
                goto LABEL_602;
              }

              if (v287 == 8)
              {
                *(a2 + 80) = 0;
                v288 = *(v286 + 24);
                if (v288)
                {
                  atomic_fetch_add_explicit(v288, 2u, memory_order_relaxed);
                  v289 = *(a2 + 80);
                  *(a2 + 80) = v288;
                  if (v289)
                  {
                    if (atomic_fetch_add_explicit(v289, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v289, a2);
                    }
                  }
                }

LABEL_602:
                v282 = *(a2 + 56);
              }
            }

            v283 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v283;
            if (v282 == 82)
            {
              continue;
            }

            break;
          }

          v434 = 0;
          v444 = 0;
          __srca = 0;
          v486 = 0;
          v487 = 0;
          LOBYTE(v483) = 0;
          v485 = 0;
LABEL_653:
          v305 = *(a2 + 56);
          if (v305 != 44)
          {
            v481 = 0;
            v482 = 0;
            if (v305 != 12)
            {
              if (v305 != 17)
              {
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                v306 = 0;
                v307 = v5 | ((*(a2 + 96) - v5) << 32);
                *(a1 + 8) = v4;
                *(a1 + 16) = v307;
                *(a1 + 24) = 1;
                goto LABEL_770;
              }

              while (2)
              {
                v310 = *(a2 + 36);
                v311 = (*(a2 + 40) + 1);
                *(a2 + 40) = v311;
                if (v310 <= v311)
                {
                  __break(0xC471u);
                  JUMPOUT(0x225792D90);
                }

                v312 = *(a2 + 24) + 32 * v311;
                v308 = *v312;
                *(a2 + 56) = *v312;
                *(a2 + 60) = *(v312 + 4);
                v313 = *v312;
                if (*v312 <= 8u)
                {
                  if (((1 << v313) & 0x38) != 0)
                  {
                    *(a2 + 80) = *(v312 + 24);
                    goto LABEL_658;
                  }

                  if (((1 << v313) & 0xC4) != 0)
                  {
                    *(a2 + 80) = *(v312 + 24);
                    goto LABEL_658;
                  }

                  if (v313 == 8)
                  {
                    *(a2 + 80) = 0;
                    v314 = *(v312 + 24);
                    if (v314)
                    {
                      atomic_fetch_add_explicit(v314, 2u, memory_order_relaxed);
                      v315 = *(a2 + 80);
                      *(a2 + 80) = v314;
                      if (v315)
                      {
                        if (atomic_fetch_add_explicit(v315, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v315, a2);
                        }
                      }
                    }

LABEL_658:
                    v308 = *(a2 + 56);
                  }
                }

                v309 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v309;
                if (v308 != 82)
                {
                  v446 = 0;
                  goto LABEL_734;
                }

                continue;
              }
            }

            while (2)
            {
              v317 = *(a2 + 36);
              v318 = (*(a2 + 40) + 1);
              *(a2 + 40) = v318;
              if (v317 <= v318)
              {
                __break(0xC471u);
                JUMPOUT(0x225792D98);
              }

              v319 = *(a2 + 24) + 32 * v318;
              v308 = *v319;
              *(a2 + 56) = *v319;
              *(a2 + 60) = *(v319 + 4);
              v320 = *v319;
              if (*v319 <= 8u)
              {
                if (((1 << v320) & 0x38) != 0)
                {
                  *(a2 + 80) = *(v319 + 24);
                  goto LABEL_672;
                }

                if (((1 << v320) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v319 + 24);
                  goto LABEL_672;
                }

                if (v320 == 8)
                {
                  *(a2 + 80) = 0;
                  v321 = *(v319 + 24);
                  if (v321)
                  {
                    atomic_fetch_add_explicit(v321, 2u, memory_order_relaxed);
                    v322 = *(a2 + 80);
                    *(a2 + 80) = v321;
                    if (v322)
                    {
                      if (atomic_fetch_add_explicit(v322, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v322, a2);
                      }
                    }
                  }

LABEL_672:
                  v308 = *(a2 + 56);
                }
              }

              v316 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v316;
              if (v308 == 82)
              {
                continue;
              }

              break;
            }

            v436 = 0;
            v446 = 0;
            v442 = 0;
            v323 = *a1;
            v440 = *(a1 + 24);
LABEL_686:
            if (v308 != 17)
            {
              v324 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(v475, a2);
              v325 = v476;
              if (v476)
              {
                if (v476 != 1)
                {
                  *(a1 + 24) = v440;
                  *a1 = v323;
                  mpark::throw_bad_variant_access(v324);
                }

                v323 = *v475;
                if (*v475)
                {
                  atomic_fetch_add_explicit(*v475, 2u, memory_order_relaxed);
                }

                *(a1 + 8) = *&v475[8];
                v440 = 1;
              }

              else
              {
                v333 = v446;
                if (v446 == v482)
                {
                  v334 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v481, v446 + 1, v475);
                  v335 = HIDWORD(v482);
                  v436 = v481;
                  *(v481 + HIDWORD(v482)) = *v334;
                  v446 = v335 + 1;
                  HIDWORD(v482) = v335 + 1;
                }

                else
                {
                  *(v436 + v446++) = *v475;
                  HIDWORD(v482) = v333 + 1;
                }
              }

              if (v476)
              {
                if (v476 != 255)
                {
                  v336 = *v475;
                  *v475 = 0;
                  if (v336)
                  {
                    if (atomic_fetch_add_explicit(v336, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v336, a2);
                    }
                  }
                }
              }

              ++__srca;
              if (v325)
              {
                v306 = 0;
                *(a1 + 24) = v440;
                *a1 = v323;
                goto LABEL_770;
              }

              v308 = *(a2 + 56);
LABEL_716:
              if (v308 != 48)
              {
                goto LABEL_733;
              }

              while (1)
              {
                v337 = *(a2 + 36);
                v338 = (*(a2 + 40) + 1);
                *(a2 + 40) = v338;
                if (v337 <= v338)
                {
                  *(a1 + 24) = v440;
                  *a1 = v323;
                  __break(0xC471u);
                  JUMPOUT(0x225792DF0);
                }

                v339 = *(a2 + 24) + 32 * v338;
                v308 = *v339;
                *(a2 + 56) = *v339;
                *(a2 + 60) = *(v339 + 4);
                v340 = *v339;
                if (*v339 > 8u)
                {
                  goto LABEL_724;
                }

                if (((1 << v340) & 0x38) != 0)
                {
                  *(a2 + 80) = *(v339 + 24);
                }

                else if (((1 << v340) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v339 + 24);
                }

                else
                {
                  if (v340 != 8)
                  {
                    goto LABEL_724;
                  }

                  *(a2 + 80) = 0;
                  v342 = *(v339 + 24);
                  if (v342)
                  {
                    atomic_fetch_add_explicit(v342, 2u, memory_order_relaxed);
                    v343 = *(a2 + 80);
                    *(a2 + 80) = v342;
                    if (v343)
                    {
                      if (atomic_fetch_add_explicit(v343, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v343, a2);
                      }
                    }
                  }
                }

                v308 = *(a2 + 56);
LABEL_724:
                v341 = *(a2 + 68);
                *(a2 + 88) = *(a2 + 60);
                *(a2 + 96) = v341;
                if (v308 != 82)
                {
                  if (v308 == 43 || v308 == 47)
                  {
LABEL_733:
                    *(a1 + 24) = v440;
                    *a1 = v323;
                    if (v442)
                    {
LABEL_734:
                      v344 = 1;
                      if (v444)
                      {
                        WTF::StringImpl::createWithoutCopyingNonEmpty();
                        v306 = 0;
                        v345 = v5 | ((*(a2 + 96) - v5) << 32);
                        *a1 = *v475;
                        *(a1 + 8) = v4;
                        *(a1 + 16) = v345;
                        *(a1 + 24) = 1;
                        v444 = 1;
                        goto LABEL_770;
                      }
                    }

                    else
                    {
                      v344 = 0;
                    }

                    if (v308 != 47)
                    {
LABEL_738:
                      result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseCompoundStatement(v475, a2);
                      if (v476)
                      {
                        if (v476 != 1)
                        {
                          goto LABEL_969;
                        }

                        v346 = *v475;
                        if (*v475)
                        {
                          atomic_fetch_add_explicit(*v475, 2u, memory_order_relaxed);
                          *(a1 + 8) = *&v475[8];
                          *a1 = v346;
                          *(a1 + 24) = 1;
                          if (atomic_fetch_add_explicit(v346, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v346, a2);
                          }

                          v306 = 0;
                        }

                        else
                        {
                          v306 = 0;
                          *(a1 + 8) = *&v475[8];
                          *a1 = 0;
                          *(a1 + 24) = 1;
                        }
                      }

                      else
                      {
                        if (v344)
                        {
                          v355 = v481;
                          v356 = v482;
                          v481 = 0;
                          v482 = 0;
                          v357 = *v475;
                          if (v434)
                          {
                            if (v483)
                            {
                              WTF::fastFree(v483, a2);
                            }

                            v483 = v355;
                            *&v484 = __PAIR64__(v446, v356);
                            v434 = 1;
                            v444 = 1;
                            *(&v484 + 1) = v357;
                          }

                          else
                          {
                            v483 = v355;
                            *&v484 = __PAIR64__(v446, v356);
                            *(&v484 + 1) = *v475;
                            v444 = 1;
                            v434 = 1;
                            v485 = 1;
                          }
                        }

                        else
                        {
                          v470 = v481;
                          v358 = v482;
                          v481 = 0;
                          v482 = 0;
                          *&v471 = __PAIR64__(v446, v358);
                          *(&v471 + 1) = *v475;
                          v359 = HIDWORD(v487);
                          if (HIDWORD(v487) == v487)
                          {
                            v360 = WTF::Vector<WGSL::AST::SwitchClause,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v486, HIDWORD(v487) + 1, &v470);
                            v359 = HIDWORD(v487);
                            v361 = v486 + 24 * HIDWORD(v487);
                            *v361 = 0;
                            *(v361 + 1) = 0;
                            v362 = *v360;
                            *v360 = 0;
                            *v361 = v362;
                            LODWORD(v362) = *(v360 + 8);
                            *(v360 + 8) = 0;
                            *(v361 + 2) = v362;
                            LODWORD(v362) = *(v360 + 12);
                            *(v360 + 12) = 0;
                            *(v361 + 3) = v362;
                            v363 = (v360 + 16);
                          }

                          else
                          {
                            v361 = v486 + 24 * HIDWORD(v487);
                            *v361 = 0;
                            *(v361 + 1) = 0;
                            v364 = v470;
                            v470 = 0;
                            *v361 = v364;
                            *(v361 + 2) = v471;
                            LODWORD(v364) = DWORD1(v471);
                            DWORD1(v471) = 0;
                            *(v361 + 3) = v364;
                            v363 = &v471 + 1;
                          }

                          *(v361 + 2) = *v363;
                          HIDWORD(v487) = v359 + 1;
                          v365 = v470;
                          if (v470)
                          {
                            v470 = 0;
                            LODWORD(v471) = 0;
                            WTF::fastFree(v365, a2);
                          }
                        }

                        if (__srca >= 0x400)
                        {
                          WTF::String::number(0x3FF);
                          WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("switch statement cannot have more than ", 40, &v480, " case selector values", 22, &v470);
                          v366 = v5 | ((*(a2 + 96) - v5) << 32);
                          *a1 = v470;
                          *(a1 + 8) = v4;
                          *(a1 + 16) = v366;
                          *(a1 + 24) = 1;
                          v470 = 0;
                          v367 = v480;
                          v480 = 0;
                          if (v367 && atomic_fetch_add_explicit(v367, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v367, a2);
                          }

                          v306 = 0;
                        }

                        else
                        {
                          v306 = 1;
                        }
                      }

LABEL_770:
                      result = v481;
                      if (v481)
                      {
                        v481 = 0;
                        result = WTF::fastFree(result, a2);
                      }

                      if ((v306 & 1) == 0)
                      {
LABEL_847:
                        if (v434)
                        {
                          result = v483;
                          if (v483)
                          {
                            result = WTF::fastFree(v483, a2);
                          }
                        }

                        goto LABEL_952;
                      }

                      goto LABEL_653;
                    }

                    while (2)
                    {
                      v349 = *(a2 + 36);
                      v350 = (*(a2 + 40) + 1);
                      *(a2 + 40) = v350;
                      if (v349 <= v350)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x225792DDCLL);
                      }

                      v351 = *(a2 + 24) + 32 * v350;
                      v347 = *v351;
                      *(a2 + 56) = *v351;
                      *(a2 + 60) = *(v351 + 4);
                      v352 = *v351;
                      if (*v351 <= 8u)
                      {
                        if (((1 << v352) & 0x38) != 0)
                        {
                          *(a2 + 80) = *(v351 + 24);
                          goto LABEL_745;
                        }

                        if (((1 << v352) & 0xC4) != 0)
                        {
                          *(a2 + 80) = *(v351 + 24);
                          goto LABEL_745;
                        }

                        if (v352 == 8)
                        {
                          *(a2 + 80) = 0;
                          v353 = *(v351 + 24);
                          if (v353)
                          {
                            atomic_fetch_add_explicit(v353, 2u, memory_order_relaxed);
                            v354 = *(a2 + 80);
                            *(a2 + 80) = v353;
                            if (v354)
                            {
                              if (atomic_fetch_add_explicit(v354, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v354, a2);
                              }
                            }
                          }

LABEL_745:
                          v347 = *(a2 + 56);
                        }
                      }

                      v348 = *(a2 + 68);
                      *(a2 + 88) = *(a2 + 60);
                      *(a2 + 96) = v348;
                      if (v347 != 82)
                      {
                        goto LABEL_738;
                      }

                      continue;
                    }
                  }

                  goto LABEL_686;
                }
              }
            }

            while (2)
            {
              v327 = *(a2 + 36);
              v328 = (*(a2 + 40) + 1);
              *(a2 + 40) = v328;
              if (v327 <= v328)
              {
                *(a1 + 24) = v440;
                *a1 = v323;
                __break(0xC471u);
                JUMPOUT(0x225792DD4);
              }

              v329 = *(a2 + 24) + 32 * v328;
              v308 = *v329;
              *(a2 + 56) = *v329;
              *(a2 + 60) = *(v329 + 4);
              v330 = *v329;
              if (*v329 <= 8u)
              {
                if (((1 << v330) & 0x38) != 0)
                {
                  *(a2 + 80) = *(v329 + 24);
                  goto LABEL_693;
                }

                if (((1 << v330) & 0xC4) != 0)
                {
                  *(a2 + 80) = *(v329 + 24);
                  goto LABEL_693;
                }

                if (v330 == 8)
                {
                  *(a2 + 80) = 0;
                  v331 = *(v329 + 24);
                  if (v331)
                  {
                    atomic_fetch_add_explicit(v331, 2u, memory_order_relaxed);
                    v332 = *(a2 + 80);
                    *(a2 + 80) = v331;
                    if (v332)
                    {
                      if (atomic_fetch_add_explicit(v332, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v332, a2);
                      }
                    }
                  }

LABEL_693:
                  v308 = *(a2 + 56);
                }
              }

              v326 = *(a2 + 68);
              *(a2 + 88) = *(a2 + 60);
              *(a2 + 96) = v326;
              if (v308 != 82)
              {
                v442 = 1;
                goto LABEL_716;
              }

              continue;
            }
          }

          *v475 = 44;
          *&v475[4] = *(a2 + 60);
          LOBYTE(v477) = 0;
          while (2)
          {
            v384 = *(a2 + 36);
            v385 = (*(a2 + 40) + 1);
            *(a2 + 40) = v385;
            if (v384 <= v385)
            {
              __break(0xC471u);
              JUMPOUT(0x225792E30);
            }

            v386 = *(a2 + 24) + 32 * v385;
            v382 = *v386;
            *(a2 + 56) = *v386;
            *(a2 + 60) = *(v386 + 4);
            v387 = *v386;
            if (*v386 <= 8u)
            {
              if (((1 << v387) & 0x38) != 0)
              {
                *(a2 + 80) = *(v386 + 24);
                goto LABEL_826;
              }

              if (((1 << v387) & 0xC4) != 0)
              {
                *(a2 + 80) = *(v386 + 24);
                goto LABEL_826;
              }

              if (v387 == 8)
              {
                *(a2 + 80) = 0;
                v388 = *(v386 + 24);
                if (v388)
                {
                  atomic_fetch_add_explicit(v388, 2u, memory_order_relaxed);
                  v389 = *(a2 + 80);
                  *(a2 + 80) = v388;
                  if (v389)
                  {
                    if (atomic_fetch_add_explicit(v389, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v389, a2);
                    }
                  }
                }

LABEL_826:
                v382 = *(a2 + 56);
              }
            }

            v383 = *(a2 + 68);
            *(a2 + 88) = *(a2 + 60);
            *(a2 + 96) = v383;
            if (v382 != 82)
            {
              if (v477)
              {
                result = WGSL::toString();
                if (v477 != 1)
                {
                  goto LABEL_969;
                }

                WGSL::toString();
                WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v481, ", but got a ", 13, &v479, &v470);
                v391 = v479;
                v479 = 0;
                if (v391 && atomic_fetch_add_explicit(v391, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v391, v390);
                }

                v392 = v481;
                v481 = 0;
                if (v392 && atomic_fetch_add_explicit(v392, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v392, v390);
                }

                v393 = v5 | ((*(a2 + 96) - v5) << 32);
                *a1 = v470;
                *(a1 + 8) = v4;
                *(a1 + 16) = v393;
                *(a1 + 24) = 1;
                result = std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v475, v390);
                goto LABEL_847;
              }

              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v475, a2);
              if (v434)
              {
                v424 = *(a2 + 96) - v5;
                *v475 = v4;
                *&v475[8] = v5;
                *&v475[12] = v424;
                WGSL::AST::Builder::construct<WGSL::AST::SwitchStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WTF::Vector<WGSL::AST::SwitchClause,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WGSL::AST::SwitchClause,void>();
              }

              result = WTF::StringImpl::createWithoutCopyingNonEmpty();
              v427 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = *v475;
              *(a1 + 8) = v4;
              *(a1 + 16) = v427;
              *(a1 + 24) = 1;
LABEL_952:
              v428 = v486;
              if (HIDWORD(v487))
              {
                v429 = 24 * HIDWORD(v487);
                v430 = v486;
                do
                {
                  result = *v430;
                  if (*v430)
                  {
                    *v430 = 0;
                    *(v430 + 8) = 0;
                    result = WTF::fastFree(result, a2);
                  }

                  v430 += 24;
                  v429 -= 24;
                }

                while (v429);
              }

              if (v428)
              {
                result = WTF::fastFree(v428, a2);
              }

              if (v490 == 255)
              {
LABEL_960:
                if (!v468 || v468 == 255)
                {
                  goto LABEL_4;
                }

                goto LABEL_199;
              }

              result = v488;
              if (!v490)
              {
LABEL_649:
                if (result)
                {
                  result = WTF::fastFree(result, a2);
                }

                goto LABEL_960;
              }

LABEL_369:
              if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, a2);
              }

              goto LABEL_960;
            }

            continue;
          }
        }
      }

    case 0x23:
      while (1)
      {
        v89 = *(a2 + 36);
        v90 = (*(a2 + 40) + 1);
        *(a2 + 40) = v90;
        if (v89 <= v90)
        {
          __break(0xC471u);
          JUMPOUT(0x225792D70);
        }

        v91 = *(a2 + 24) + 32 * v90;
        v87 = *v91;
        *(a2 + 56) = *v91;
        *(a2 + 60) = *(v91 + 4);
        v92 = *v91;
        if (*v91 > 8u)
        {
          goto LABEL_168;
        }

        if (((1 << v92) & 0x38) != 0)
        {
          *(a2 + 80) = *(v91 + 24);
        }

        else if (((1 << v92) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v91 + 24);
        }

        else
        {
          if (v92 != 8)
          {
            goto LABEL_168;
          }

          *(a2 + 80) = 0;
          v93 = *(v91 + 24);
          if (v93)
          {
            atomic_fetch_add_explicit(v93, 2u, memory_order_relaxed);
            v94 = *(a2 + 80);
            *(a2 + 80) = v93;
            if (v94)
            {
              if (atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v94, a2);
              }
            }
          }
        }

        v87 = *(a2 + 56);
LABEL_168:
        v88 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v88;
        if (v87 != 82)
        {
          result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(v475, a2);
          v52 = v476;
          if (v476)
          {
            goto LABEL_267;
          }

          result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseCompoundStatement(&v466, a2);
          if (!v468)
          {
            v290 = *(a2 + 96) - v5;
            v488 = v4;
            *&v489 = __PAIR64__(v290, v5);
            WGSL::AST::Builder::construct<WGSL::AST::WhileStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,std::reference_wrapper<WGSL::AST::CompoundStatement>,void>();
          }

          if (v468 != 1)
          {
            goto LABEL_969;
          }

          result = v466;
          if (v466)
          {
            atomic_fetch_add_explicit(v466, 2u, memory_order_relaxed);
            v137 = v467;
LABEL_270:
            *(a1 + 8) = v137;
            *a1 = result;
            *(a1 + 24) = 1;
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
            {
              goto LABEL_4;
            }

            goto LABEL_950;
          }

          v431 = v467;
          goto LABEL_966;
        }
      }

    case 0x24:
    case 0x43:
    case 0x4C:
      result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseLHSExpression(v475, a2);
      if (v476)
      {
        if (v476 != 1)
        {
          goto LABEL_969;
        }

        v9 = *v475;
        if (*v475)
        {
          atomic_fetch_add_explicit(*v475, 2u, memory_order_relaxed);
        }

        v467 = *&v475[8];
        v466 = v9;
        v468 = 1;
      }

      else
      {
        result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseVariableUpdatingStatement(&v466, a2);
      }

      if (v476)
      {
        if (v476 != 255)
        {
          result = *v475;
          *v475 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }
      }

      if (v468)
      {
        if (v468 != 1)
        {
          goto LABEL_969;
        }

        v18 = v466;
        if (v466)
        {
          atomic_fetch_add_explicit(v466, 2u, memory_order_relaxed);
        }

        *(a1 + 8) = v467;
        *a1 = v18;
        *(a1 + 24) = 1;
        goto LABEL_305;
      }

      if (*(a2 + 56) != 73)
      {
        *v475 = *(a2 + 56);
        LOBYTE(v477) = 1;
        result = WGSL::toString();
        if (v477 != 1)
        {
          goto LABEL_969;
        }

        WGSL::toString();
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v458, ", but got a ", 13, &v457, &v488);
        v153 = v457;
        v457 = 0;
        if (v153 && atomic_fetch_add_explicit(v153, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v153, v152);
        }

        v154 = v458;
        v458 = 0;
        if (v154 && atomic_fetch_add_explicit(v154, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v154, v152);
        }

        v155 = v5 | ((*(a2 + 96) - v5) << 32);
        *a1 = v488;
        *(a1 + 8) = v4;
        *(a1 + 16) = v155;
        *(a1 + 24) = 1;
        result = std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v475, v152);
LABEL_305:
        v156 = v468;
        if (!v468)
        {
          goto LABEL_4;
        }

LABEL_306:
        if (v156 == 255)
        {
          goto LABEL_4;
        }

        result = v466;
        v466 = 0;
        if (!result)
        {
          goto LABEL_4;
        }

        goto LABEL_949;
      }

      *v475 = 73;
      *&v475[4] = *(a2 + 60);
      LOBYTE(v477) = 0;
      while (1)
      {
        v21 = *(a2 + 36);
        v22 = (*(a2 + 40) + 1);
        *(a2 + 40) = v22;
        if (v21 <= v22)
        {
          __break(0xC471u);
          JUMPOUT(0x225792D88);
        }

        v23 = *(a2 + 24) + 32 * v22;
        v19 = *v23;
        *(a2 + 56) = *v23;
        *(a2 + 60) = *(v23 + 4);
        v24 = *v23;
        if (*v23 > 8u)
        {
          goto LABEL_46;
        }

        if (((1 << v24) & 0x38) != 0)
        {
          *(a2 + 80) = *(v23 + 24);
        }

        else if (((1 << v24) & 0xC4) != 0)
        {
          *(a2 + 80) = *(v23 + 24);
        }

        else
        {
          if (v24 != 8)
          {
            goto LABEL_46;
          }

          *(a2 + 80) = 0;
          v25 = *(v23 + 24);
          if (v25)
          {
            atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
            v26 = *(a2 + 80);
            *(a2 + 80) = v25;
            if (v26)
            {
              if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v26, a2);
              }
            }
          }
        }

        v19 = *(a2 + 56);
LABEL_46:
        v20 = *(a2 + 68);
        *(a2 + 88) = *(a2 + 60);
        *(a2 + 96) = v20;
        if (v19 != 82)
        {
          result = std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v475, a2);
          *a1 = v466;
          *(a1 + 24) = 0;
          goto LABEL_305;
        }
      }

    case 0x2B:
      result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseCompoundStatement(v475, a2);
      if (!v476)
      {
        *a1 = *v475;
        *(a1 + 24) = 0;
        goto LABEL_4;
      }

      if (v476 != 1)
      {
        goto LABEL_969;
      }

      result = *v475;
      if (*v475)
      {
        goto LABEL_120;
      }

      goto LABEL_910;
    case 0x4F:
      goto LABEL_182;
    default:
      goto LABEL_2;
  }

  while (1)
  {
LABEL_182:
    v97 = *(a2 + 36);
    v98 = (*(a2 + 40) + 1);
    *(a2 + 40) = v98;
    if (v97 <= v98)
    {
      __break(0xC471u);
      JUMPOUT(0x225792D78);
    }

    v99 = *(a2 + 24) + 32 * v98;
    v95 = *v99;
    *(a2 + 56) = *v99;
    *(a2 + 60) = *(v99 + 4);
    v100 = *v99;
    if (*v99 > 8u)
    {
      goto LABEL_181;
    }

    if (((1 << v100) & 0x38) != 0)
    {
      *(a2 + 80) = *(v99 + 24);
    }

    else if (((1 << v100) & 0xC4) != 0)
    {
      *(a2 + 80) = *(v99 + 24);
    }

    else
    {
      if (v100 != 8)
      {
        goto LABEL_181;
      }

      *(a2 + 80) = 0;
      v101 = *(v99 + 24);
      if (v101)
      {
        atomic_fetch_add_explicit(v101, 2u, memory_order_relaxed);
        v102 = *(a2 + 80);
        *(a2 + 80) = v101;
        if (v102)
        {
          if (atomic_fetch_add_explicit(v102, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v102, a2);
          }
        }
      }
    }

    v95 = *(a2 + 56);
LABEL_181:
    v96 = *(a2 + 68);
    *(a2 + 88) = *(a2 + 60);
    *(a2 + 96) = v96;
    if (v95 != 82)
    {
      if (v95 == 49)
      {
        *v475 = 49;
        *&v475[4] = *(a2 + 60);
        LOBYTE(v477) = 0;
        while (1)
        {
          v140 = *(a2 + 36);
          v141 = (*(a2 + 40) + 1);
          *(a2 + 40) = v141;
          if (v140 <= v141)
          {
            __break(0xC471u);
            JUMPOUT(0x225792DC0);
          }

          v142 = *(a2 + 24) + 32 * v141;
          v138 = *v142;
          *(a2 + 56) = *v142;
          *(a2 + 60) = *(v142 + 4);
          v143 = *v142;
          if (*v142 > 8u)
          {
            goto LABEL_276;
          }

          if (((1 << v143) & 0x38) != 0)
          {
            *(a2 + 80) = *(v142 + 24);
          }

          else if (((1 << v143) & 0xC4) != 0)
          {
            *(a2 + 80) = *(v142 + 24);
          }

          else
          {
            if (v143 != 8)
            {
              goto LABEL_276;
            }

            *(a2 + 80) = 0;
            v144 = *(v142 + 24);
            if (v144)
            {
              atomic_fetch_add_explicit(v144, 2u, memory_order_relaxed);
              v145 = *(a2 + 80);
              *(a2 + 80) = v144;
              if (v145)
              {
                if (atomic_fetch_add_explicit(v145, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v145, a2);
                }
              }
            }
          }

          v138 = *(a2 + 56);
LABEL_276:
          v139 = *(a2 + 68);
          *(a2 + 88) = *(a2 + 60);
          *(a2 + 96) = v139;
          if (v138 != 82)
          {
            std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v475, a2);
            result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v466, a2);
            if (v468)
            {
              if (v468 != 1)
              {
                goto LABEL_969;
              }

              v172 = v466;
              if (v466)
              {
                atomic_fetch_add_explicit(v466, 2u, memory_order_relaxed);
              }

              *(a1 + 8) = v467;
              *a1 = v172;
              *(a1 + 24) = 1;
            }

            else
            {
              WGSL::Parser<WGSL::Lexer<unsigned char>>::consumeType(v475, a2, 73);
              if (!v477)
              {
                std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v475, v277);
                v376 = *(a2 + 96) - v5;
                *v475 = v4;
                *&v475[8] = v5;
                *&v475[12] = v376;
                WGSL::AST::Builder::construct<WGSL::AST::PhonyAssignmentStatement,WGSL::SourceSpan,std::reference_wrapper<WGSL::AST::Expression>,void>();
              }

              result = WGSL::toString();
              if (v477 != 1)
              {
                goto LABEL_969;
              }

              WGSL::toString();
              WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WTF::String>("Expected a ", 12, &v448, ", but got a ", 13, &v447, &v488);
              v279 = v447;
              v447 = 0;
              if (v279 && atomic_fetch_add_explicit(v279, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v279, v278);
              }

              v280 = v448;
              v448 = 0;
              if (v280 && atomic_fetch_add_explicit(v280, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v280, v278);
              }

              v281 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = v488;
              *(a1 + 8) = v4;
              *(a1 + 16) = v281;
              *(a1 + 24) = 1;
              std::experimental::fundamentals_v3::expected<WGSL::Token,WGSL::TokenType>::~expected(v475, v278);
            }

            result = std::experimental::fundamentals_v3::expected<std::reference_wrapper<WGSL::AST::Expression>,WGSL::CompilationMessage>::~expected(&v466, v171);
            goto LABEL_4;
          }
        }
      }

      WGSL::toString();
      WGSL::toString();
      if (v450)
      {
        v167 = *(v450 + 1);
      }

      else
      {
        v167 = 0;
      }

      if (v449)
      {
        v292 = *(v449 + 1);
        if (v292 < 0)
        {
          goto LABEL_997;
        }
      }

      else
      {
        v292 = 0;
      }

      v293 = __OFADD__(v292, 12);
      v294 = v292 + 12;
      v295 = v293;
      if ((v167 & 0x80000000) == 0 && (v295 & 1) == 0)
      {
        v293 = __OFADD__(v167, v294);
        v296 = v167 + v294;
        if (!v293)
        {
          v297 = (v296 + 11);
          if (!__OFADD__(v296, 11))
          {
            if (v450)
            {
              v298 = *(v450 + 4);
              v299 = (v298 >> 2) & 1;
              if (!v449 || (v298 & 4) == 0)
              {
                goto LABEL_815;
              }

LABEL_636:
              v299 = (*(v449 + 16) >> 2) & 1;
            }

            else
            {
              if (v449)
              {
                goto LABEL_636;
              }

              v299 = 1;
            }

LABEL_815:
            WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v297, v299, "Expected a ", 0xBuLL, v450, ", but got a ", 0xCuLL, v449, &v466);
            v380 = v466;
            if (v466)
            {
              v381 = v449;
              v449 = 0;
              if (v381 && atomic_fetch_add_explicit(v381, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v381, v379);
              }

              result = v450;
              v450 = 0;
              if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v379);
              }

              v164 = v5 | ((*(a2 + 96) - v5) << 32);
              *a1 = v380;
              goto LABEL_823;
            }
          }
        }
      }

LABEL_997:
      __break(0xC471u);
      JUMPOUT(0x225792E20);
    }
  }
}

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<char16_t>>::parseVariableUpdatingStatement(uint64_t a1, uint64_t a2)
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
        JUMPOUT(0x2257933FCLL);
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
        v25 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v38, a2);
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
      JUMPOUT(0x2257933F4);
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
  v25 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v38, a2);
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

mpark *WGSL::Parser<WGSL::Lexer<char16_t>>::parseVariableUpdatingStatement(uint64_t a1, uint64_t a2)
{
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseLHSExpression(&v8, a2);
  if (!v10)
  {
    result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseVariableUpdatingStatement(a1, a2);
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

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<char16_t>>::parseIfStatementWithAttributes(uint64_t a1, uint64_t a2, uint64_t a3, WTF::StringImpl *a4, unsigned int a5)
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
        JUMPOUT(0x225793A78);
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
  v22 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseExpression(&v58, a2);
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

  v22 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseCompoundStatement(&v55, a2);
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
      JUMPOUT(0x225793A70);
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
    v22 = WGSL::Parser<WGSL::Lexer<char16_t>>::parseCompoundStatement(&v51, a2);
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
    WGSL::Parser<WGSL::Lexer<char16_t>>::parseIfStatementWithAttributes(&v51, a2, v50, a4, a5);
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

WTF::StringImpl *WGSL::Parser<WGSL::Lexer<char16_t>>::parseLHSExpression(uint64_t a1, uint64_t a2)
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
          result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseLHSExpression(&v48, a2);
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
      JUMPOUT(0x2257940F8);
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
  result = WGSL::Parser<WGSL::Lexer<char16_t>>::parseLHSExpression(&v48, a2);
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
      JUMPOUT(0x2257940F0);
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
    result = WGSL::Parser<WGSL::Lexer<char16_t>>::parsePostfixExpression(a1, a2, v42, v4, v5);
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

void WGSL::PointerRewriter::rewrite(uint64_t a1, void *a2)
{
  *(a1 + 88) = 0;
  v3 = *(a1 + 108);
  if (v3)
  {
    if (v3 >> 30)
    {
      __break(0xC471u);
      JUMPOUT(0x2257943A8);
    }

    v4 = WTF::fastMalloc((4 * v3));
    memcpy(v4, *(a1 + 96), 4 * *(a1 + 108));
    v5 = *(a1 + 96);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *(a1 + 96);
    if (v5)
    {
LABEL_4:
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      WTF::fastFree(v5, a2);
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  WGSL::ContextProvider<WGSL::Empty>::ContextScope::ContextScope(&v6, (a1 + 40));
}

WTF::StringImpl *WGSL::PointerRewriter::visit(WGSL::PointerRewriter *this, WGSL::AST::VariableStatement *a2)
{
  if ((*(this + 32) & 1) == 0)
  {
    (*(*this + 64))(this, *(a2 + 3));
  }

  v4 = *(a2 + 3);
  v5 = *(v4 + 120);
  v12 = v5;
  if (v5 && (v6 = *(v5 + 24)) != 0 && *(v6 + 48) == 11)
  {
    result = WTF::HashMap<WTF::String,WGSL::AST::Expression *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Expression *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::AST::Expression * const&>(v13, (*(this + 5) + 8), (v4 + 48), &v12);
    v8 = *(this + 27);
    if (v8 == *(this + 26))
    {
      result = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 96, v8 + 1, this + 88);
      v8 = *(this + 27);
      v9 = *(this + 12);
      v10 = *result;
    }

    else
    {
      v9 = *(this + 12);
      v10 = *(this + 22);
    }

    *(v9 + 4 * v8) = v10;
    ++*(this + 27);
  }

  else
  {
    v11 = 0;
    return WTF::HashMap<WTF::String,WGSL::AST::Expression *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Expression *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::AST::Expression * const&>(v13, (*(this + 5) + 8), (v4 + 48), &v11);
  }

  return result;
}