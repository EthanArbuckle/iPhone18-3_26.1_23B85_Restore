uint64_t WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::add(uint64_t a1, uint64_t *a2, const WTF::StringImpl **a3)
{
  v6 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    v6 = *a2;
    if (!*a2)
    {
      v7 = 0;
      v8 = *a3;
      v9 = *(*a3 + 4);
      if (v9 >= 0x100)
      {
        goto LABEL_4;
      }

LABEL_6:
      v10 = WTF::StringImpl::hashSlowCase(v8);
      goto LABEL_7;
    }
  }

  v7 = *(v6 - 8);
  v8 = *a3;
  v9 = *(*a3 + 4);
  if (v9 < 0x100)
  {
    goto LABEL_6;
  }

LABEL_4:
  v10 = v9 >> 8;
LABEL_7:
  v11 = 0;
  for (i = 1; ; ++i)
  {
    v13 = v10 & v7;
    v14 = (v6 + 8 * (v10 & v7));
    v15 = *v14;
    if (*v14 == -1)
    {
      v11 = (v6 + 8 * v13);
      goto LABEL_9;
    }

    if (!v15)
    {
      break;
    }

    result = WTF::equal(*v15, *a3, a3);
    if (result)
    {
      v17 = 0;
      goto LABEL_31;
    }

LABEL_9:
    v10 = i + v13;
  }

  if (v11)
  {
    *v11 = 0;
    --*(*a2 - 16);
    v14 = v11;
  }

  result = WTF::fastMalloc(0x18);
  v18 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = v18;
  *v14 = result;
  v19 = *a2;
  if (*a2)
  {
    v20 = *(v19 - 16);
    v21 = *(v19 - 12) + 1;
    *(v19 - 12) = v21;
    v22 = (v20 + v21);
    v23 = *(v19 - 4);
    if (v23 <= 0x400)
    {
      goto LABEL_20;
    }

LABEL_24:
    if (v23 <= 2 * v22)
    {
LABEL_25:
      v24 = v23 << (6 * v21 >= (2 * v23));
      goto LABEL_26;
    }
  }

  else
  {
    v21 = 1;
    MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
    v22 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
    v23 = MEMORY[0xFFFFFFFFFFFFFFFC];
    if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
    {
      goto LABEL_24;
    }

LABEL_20:
    if (3 * v23 <= 4 * v22)
    {
      if (v23)
      {
        goto LABEL_25;
      }

      v24 = 8;
LABEL_26:
      v14 = WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::rehash(a2, v24, v14);
      result = *v14;
    }
  }

  v25 = a2[2];
  *(result + 8) = v25;
  *(result + 16) = 0;
  if (v25)
  {
    v26 = (v25 + 16);
  }

  else
  {
    v26 = a2 + 1;
  }

  *v26 = result;
  a2[2] = result;
  v17 = 1;
LABEL_31:
  v27 = *v14;
  *a1 = a2;
  *(a1 + 8) = v27;
  *(a1 + 16) = v17;
  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (a2)
  {
    v8 = a2 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x225725BECLL);
  }

  if (a5)
  {
    v9 = a5 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 >> 31)
  {
    goto LABEL_24;
  }

  v10 = *a3;
  if (*a3)
  {
    v11 = *(v10 + 4);
    if (((v11 | v9) & 0x80000000) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v11 = 0;
    if ((v9 & 0x80000000) != 0)
    {
LABEL_21:
      *a6 = 0;
      goto LABEL_24;
    }
  }

  v12 = __OFADD__(v11, v9);
  v13 = v11 + v9;
  if (v12 || __OFADD__(v8, v13))
  {
    goto LABEL_21;
  }

  v14 = !v10 || (*(v10 + 16) & 4) != 0;
  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v8 + v13), v14, a1, v8, v10, a4, v9, a6);
  if (!*a6)
  {
LABEL_24:
    __break(0xC471u);
    JUMPOUT(0x225725BCCLL);
  }

  return result;
}

WTF::StringImpl *WGSL::RewriteGlobalVariables::visit(WGSL::RewriteGlobalVariables *this, const WTF::StringImpl **a2)
{
  v11 = 0;
  result = WTF::HashMap<WTF::String,WGSL::AST::Variable *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Variable *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::AST::Variable *&>(&v10, this + 10, a2 + 7, &v11);
  v5 = *(a2 + 21);
  if (v5 && (*(this + 32) & 1) == 0)
  {
    v8 = a2[9];
    v9 = 8 * v5;
    do
    {
      if ((*(this + 32) & 1) == 0)
      {
        result = (*(*this + 96))(this, *v8);
      }

      v8 = (v8 + 8);
      v9 -= 8;
    }

    while (v9);
  }

  if ((*(this + 32) & 1) == 0)
  {
    v6 = a2[8];
    v7 = *(*this + 216);

    return v7(this, v6);
  }

  return result;
}

uint64_t WGSL::RewriteGlobalVariables::visit(WGSL::RewriteGlobalVariables *this, const WTF::StringImpl **a2)
{
  v6 = a2;
  WTF::HashMap<WTF::String,WGSL::AST::Variable *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Variable *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::AST::Variable *&>(&v5, this + 10, a2 + 6, &v6);

  return WGSL::AST::Visitor::visit(this, a2);
}

_DWORD *WGSL::RewriteGlobalVariables::visit(_DWORD *this, uint64_t **a2)
{
  v3 = this;
  v4 = this[39];
  this[39] = 0;
  v5 = this[45];
  if (!v5)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if (!(v5 >> 28))
  {
    v6 = WTF::fastMalloc((16 * v5));
    v7 = *(v3 + 180);
    this = *(v3 + 168);
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = 0;
    v9 = 16 * v7;
    do
    {
      *(v6 + v8) = *&this[v8 / 4];
      v8 += 16;
    }

    while (v9 != v8);
LABEL_8:
    this = *(v3 + 168);
LABEL_9:
    if (this)
    {
      *(v3 + 168) = 0;
      *(v3 + 176) = 0;
      this = WTF::fastFree(this, a2);
    }

    *(v3 + 168) = 0;
    *(v3 + 176) = 0;
    v10 = a2[5];
    v11 = *(a2 + 13);
    if (v11)
    {
      v12 = 8 * v11;
      do
      {
        v13 = *v10++;
        WGSL::AST::Visitor::visit(v3, v13);
        ++*(v3 + 156);
        v12 -= 8;
      }

      while (v12);
      this = *(v3 + 168);
      v15 = *(v3 + 180);
      if (v15)
      {
        v28 = v6;
        v29 = v5;
        v30 = v4;
        v16 = 16 * v15;
        v17 = this + 2;
        v18 = -1;
        while (1)
        {
          v20 = *(v3 + 40);
          v21 = *v17;
          v31 = *(v17 - 1);
          v22 = *(a2 + 13);
          if (v22 == *(a2 + 12))
          {
            this = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((a2 + 5), v22 + 1, &v31);
            v23 = this;
            LODWORD(v22) = *(a2 + 13);
          }

          else
          {
            v23 = &v31;
          }

          v24 = v18 + 1;
          if (v22 < v21 + v18 + 1)
          {
            goto LABEL_29;
          }

          v25 = (v18 + v21 + 1);
          v26 = &a2[5][v25];
          this = memmove(v26 + 1, v26, 8 * (v22 - v25));
          *v26 = *v23;
          ++*(a2 + 13);
          v19 = *(v20 + 372);
          if (v19 == *(v20 + 368))
          {
            this = WTF::Vector<std::function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v20 + 360, v19 + 1);
            v19 = *(v20 + 372);
          }

          v27 = (*(v20 + 360) + 32 * v19);
          v17 += 4;
          *v27 = &unk_2838D4C78;
          v27[1] = a2 + 5;
          v27[2] = v25;
          v27[3] = v27;
          *(v20 + 372) = v19 + 1;
          v18 = v24;
          v16 -= 16;
          if (!v16)
          {
            this = *(v3 + 168);
            v4 = v30;
            v6 = v28;
            LODWORD(v5) = v29;
            break;
          }
        }
      }

      if (this)
      {
        *(v3 + 168) = 0;
        *(v3 + 176) = 0;
        this = WTF::fastFree(this, v14);
      }
    }

    *(v3 + 168) = v6;
    *(v3 + 176) = v5;
    *(v3 + 180) = v5;
    *(v3 + 156) = v4;
    return this;
  }

  __break(0xC471u);
LABEL_29:
  __break(1u);
  return this;
}

uint64_t WGSL::RewriteGlobalVariables::visit(WGSL::RewriteGlobalVariables *this, WGSL::AST::CompoundAssignmentStatement *a2)
{
  v4 = WGSL::RewriteGlobalVariables::pack(this, 2, *(a2 + 3));
  v5 = *(a2 + 4);

  return WGSL::RewriteGlobalVariables::pack(this, v4, v5);
}

uint64_t WGSL::RewriteGlobalVariables::pack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 264);
  if (v6)
  {
    v7 = *(v6 - 8);
    v8 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v7 & ((v10 >> 31) ^ v10);
    v12 = *(v6 + 8 * v11);
    if (v12 == a3)
    {
      return a2;
    }

    v13 = 1;
    while (v12)
    {
      v11 = (v11 + v13) & v7;
      v12 = *(v6 + 8 * v11);
      ++v13;
      if (v12 == a3)
      {
        return a2;
      }
    }
  }

  v15 = (*(*a3 + 16))(a3);
  if (v15 <= 20)
  {
    if (v15 == 18)
    {
      WGSL::RewriteGlobalVariables::pack(a1, 2, *(a3 + 64));
      WGSL::RewriteGlobalVariables::pack(a1, 2, *(a3 + 72));
      result = 2;
      if ((v4 & 2) != 0)
      {
        return result;
      }

      v26 = *(a3 + 24);
      v27 = *(v26 + 48);
      if (v27 == 10)
      {
        v26 = *(v26 + 8);
        v27 = *(v26 + 48);
      }

      if (v27 == 3)
      {
        *(*(a1 + 40) + 9) = 1;
      }

      else if (v27 == 4)
      {
        if (!WGSL::Type::isConstructible(v26))
        {
          return 2;
        }
      }

      else
      {
        *(*(a1 + 40) + 11) = 1;
      }

      v96 = 0uLL;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v99 = 0uLL;
      v98 = off_2838D37C0;
      WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
    }

    if (v15 != 19)
    {
      if (v15 != 20)
      {
LABEL_39:
        WGSL::AST::Visitor::visit(a1, a3);
        return 2;
      }

      v21 = *(a3 + 64);
      v22 = *(v21 + 24);
      if (!v22)
      {
        goto LABEL_110;
      }

      v23 = *(v22 + 48);
      if (v23 == 10)
      {
        v22 = *(v22 + 8);
        if (!v22)
        {
          goto LABEL_80;
        }

        v23 = *(v22 + 48);
      }

      if (v23 == 11)
      {
        v22 = *(v22 + 8);
        v24 = 1;
        goto LABEL_81;
      }

LABEL_80:
      v24 = 0;
LABEL_81:
      if (*(v22 + 48) == 1)
      {
        if (*(*(a3 + 24) + 48) == 1)
        {
          if (v24)
          {
            LOBYTE(v98) = 2;
            WGSL::AST::Builder::construct<WGSL::AST::UnaryExpression,WGSL::SourceSpan,WGSL::AST::Expression &,WGSL::AST::UnaryOperation,void>();
          }

          v52 = a1;
          v53 = 2;
        }

        else
        {
          v52 = a1;
          v53 = 3;
        }

        WGSL::RewriteGlobalVariables::pack(v52, v53, v21);
      }

      else
      {
        result = WGSL::RewriteGlobalVariables::pack(a1, 3, v21);
        if ((result & 2) == 0)
        {
          if (*(v22 + 48) != 4)
          {
            goto LABEL_207;
          }

          v55 = *(a3 + 128);
          if (v55 == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x22572AE98);
          }

          if (!v55)
          {
            __break(0xC471u);
            JUMPOUT(0x22572AEB8);
          }

          v56 = *(v22 + 8);
          if (v56)
          {
            v57 = *(v56 - 8);
            v58 = *(v55 + 4);
            if (v58 < 0x100)
            {
              v59 = WTF::StringImpl::hashSlowCase(v55);
            }

            else
            {
              v59 = v58 >> 8;
            }

            for (i = 0; ; v59 = i + v94)
            {
              v94 = v59 & v57;
              v92 = *(v56 + 16 * v94);
              if (v92 != -1)
              {
                if (!v92)
                {
                  goto LABEL_202;
                }

                if (WTF::equal(v92, *(a3 + 128), v54))
                {
                  break;
                }
              }

              ++i;
            }

            v92 = *(v56 + 16 * v94 + 8);
          }

          else
          {
            v92 = 0;
          }

LABEL_202:
          result = WGSL::Type::packing(v92);
          if ((result & v4) != 0)
          {
            return result;
          }

LABEL_111:
          v63 = *(a3 + 24);
          v64 = *(v63 + 48);
          if (v64 == 10)
          {
            v63 = *(v63 + 8);
            v64 = *(v63 + 48);
          }

          v95 = result;
          if (v64 == 3)
          {
            v71 = *(a1 + 40);
            if (result)
            {
              *(v71 + 10) = 1;
            }

            else
            {
              *(v71 + 9) = 1;
            }
          }

          else if (v64 == 4)
          {
            if (!WGSL::Type::isConstructible(v63))
            {
              return v95;
            }
          }

          else
          {
            v72 = *(a1 + 40);
            if (result)
            {
              *(v72 + 12) = 1;
            }

            else
            {
              *(v72 + 11) = 1;
            }
          }

          v96 = 0uLL;
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v99 = 0uLL;
          v98 = off_2838D37C0;
          WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
        }
      }

LABEL_110:
      result = 2;
      if ((v4 & 2) != 0)
      {
        return result;
      }

      goto LABEL_111;
    }

    v35 = *(a3 + 64);
    if ((*(*v35 + 16))(v35) != 21 || !MEMORY[0x22AA683D0](v35[11], "arrayLength", 11))
    {
      v46 = *(a3 + 84);
      if (v46)
      {
        v47 = *(a3 + 72);
        v48 = 8 * v46;
        do
        {
          v49 = *v47++;
          WGSL::RewriteGlobalVariables::pack(a1, 2, v49);
          v48 -= 8;
        }

        while (v48);
      }

      if ((v4 & 2) != 0)
      {
        return 2;
      }

      v90 = *(a3 + 24);
      v91 = *(v90 + 48);
      if (v91 == 10)
      {
        v90 = *(v90 + 8);
        v91 = *(v90 + 48);
      }

      if (v91 == 3)
      {
        *(*(a1 + 40) + 9) = 1;
      }

      else if (v91 == 4)
      {
        if (!WGSL::Type::isConstructible(v90))
        {
          return 2;
        }
      }

      else
      {
        *(*(a1 + 40) + 11) = 1;
      }

      v96 = 0uLL;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v99 = 0uLL;
      v98 = off_2838D37C0;
      WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
    }

    if (!*(a3 + 84))
    {
      __break(0xC471u);
      __break(1u);
      __break(0xC471u);
      JUMPOUT(0x22572AE30);
    }

    v37 = **(a3 + 72);
    v104[0] = 0;
    Base = WGSL::RewriteGlobalVariables::getBase(v37, v104, v36);
    v40 = Base;
    v41 = *(a1 + 48);
    if (v41)
    {
      v42 = *(Base + 11);
      if (v42 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x22572AE58);
      }

      if (!v42)
      {
        __break(0xC471u);
        JUMPOUT(0x22572AE78);
      }

      v43 = *(v41 - 8);
      v44 = *(v42 + 4);
      if (v44 < 0x100)
      {
        v45 = WTF::StringImpl::hashSlowCase(v42);
      }

      else
      {
        v45 = v44 >> 8;
      }

      for (j = 0; ; v45 = j + v76)
      {
        v76 = v45 & v43;
        v77 = *(v41 + 32 * (v45 & v43));
        if (v77 != -1)
        {
          if (!v77)
          {
            goto LABEL_144;
          }

          if (WTF::equal(v77, *(v40 + 11), v39))
          {
            break;
          }
        }

        ++j;
      }
    }

    else
    {
LABEL_144:
      v96 = 0uLL;
      v97[0] = 0;
      WTF::HashMap<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>(&v98, (a1 + 112), (a1 + 248), &v96);
      v79 = *(&v96 + 1);
      if (*(&v96 + 1))
      {
        do
        {
          v80 = v79;
          v79 = *(v79 + 2);
          v81 = *v80;
          *v80 = 0;
          if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v81, v78);
          }

          WTF::fastFree(v80, v78);
        }

        while (v79);
      }

      if (v96)
      {
        WTF::fastFree((v96 - 16), v78);
      }

      WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::add(&v96, v98 + 1, v40 + 11);
    }

    v99 = *(v40 + 72);
    v98 = off_2838D37C0;
    v82 = *(v40 + 11);
    if (v82)
    {
      atomic_fetch_add_explicit(v82, 2u, memory_order_relaxed);
      v100 = v82;
      v83 = *(v82 + 4);
      if (v83 < 0)
      {
        goto LABEL_205;
      }

      v84 = __OFADD__(v83, 12);
      v85 = v83 + 12;
      if (v84)
      {
        goto LABEL_205;
      }
    }

    else
    {
      v100 = 0;
      v85 = 12;
    }

    if (!__OFADD__(v85, 2))
    {
      v86 = !v82 || (*(v82 + 16) & 4) != 0;
      WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v85 + 2), v86, "__", 2uLL, v82, "_ArrayLength", 0xCuLL, &v103);
      if (v103)
      {
        v88 = v100;
        v98 = off_2838D37C0;
        v100 = 0;
        if (v88 && atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v88, v87);
        }

        v101 = 0;
        v102 = 0;
        v89 = v103;
        if (v103)
        {
          atomic_fetch_add_explicit(v103, 2u, memory_order_relaxed);
        }

        *&v96 = off_2838D37C0;
        *(&v96 + 1) = 0;
        v97[0] = 0;
        v97[1] = v89;
        WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
      }

LABEL_206:
      __break(0xC471u);
      JUMPOUT(0x22572ADE4);
    }

LABEL_205:
    v103 = 0;
    goto LABEL_206;
  }

  if (v15 > 22)
  {
    if (v15 != 23)
    {
      if (v15 == 25)
      {
        v25 = *(a3 + 64);
        if (*(a3 + 72) == 2)
        {
          WGSL::RewriteGlobalVariables::pack(a1, 3, v25);
          if (**(*(a3 + 64) + 24) - 3 > 1)
          {
            result = 2;
            if ((v4 & 2) != 0)
            {
              return result;
            }
          }

          else
          {
            result = WGSL::Type::packing(*(a3 + 24));
            if ((result & v4) != 0)
            {
              return result;
            }
          }
        }

        else if (*(a3 + 72))
        {
          result = WGSL::RewriteGlobalVariables::pack(a1, 2, v25);
          if ((result & v4) != 0)
          {
            return result;
          }
        }

        else
        {
          WGSL::RewriteGlobalVariables::pack(a1, 3, v25);
          result = 3;
          if ((v4 & 3) != 0)
          {
            return result;
          }
        }

        v60 = *(a3 + 24);
        v61 = *(v60 + 48);
        if (v61 == 10)
        {
          v60 = *(v60 + 8);
          v61 = *(v60 + 48);
        }

        if (v61 == 3)
        {
          v67 = *(a1 + 40);
          if (result)
          {
            *(v67 + 10) = 1;
          }

          else
          {
            *(v67 + 9) = 1;
          }
        }

        else if (v61 == 4)
        {
          v62 = result;
          if (!WGSL::Type::isConstructible(v60))
          {
            return v62;
          }
        }

        else
        {
          v70 = *(a1 + 40);
          if (result)
          {
            *(v70 + 12) = 1;
          }

          else
          {
            *(v70 + 11) = 1;
          }
        }

        v96 = 0uLL;
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v99 = 0uLL;
        v98 = off_2838D37C0;
        WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
      }

      goto LABEL_39;
    }

    v29 = WGSL::RewriteGlobalVariables::pack(a1, 3, *(a3 + 64));
    WGSL::RewriteGlobalVariables::pack(a1, 2, *(a3 + 72));
    result = 2;
    if ((v29 & 2) != 0)
    {
LABEL_54:
      if ((result & v4) != 0)
      {
        return result;
      }

      v33 = *(a3 + 24);
      v34 = *(v33 + 48);
      if (v34 == 10)
      {
        v33 = *(v33 + 8);
        v34 = *(v33 + 48);
      }

      v95 = result;
      if (v34 == 3)
      {
        v73 = *(a1 + 40);
        if (result)
        {
          *(v73 + 10) = 1;
        }

        else
        {
          *(v73 + 9) = 1;
        }
      }

      else if (v34 == 4)
      {
        if (!WGSL::Type::isConstructible(v33))
        {
          return v95;
        }
      }

      else
      {
        v74 = *(a1 + 40);
        if (result)
        {
          *(v74 + 12) = 1;
        }

        else
        {
          *(v74 + 11) = 1;
        }
      }

      v96 = 0uLL;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v99 = 0uLL;
      v98 = off_2838D37C0;
      WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
    }

    v30 = *(*(a3 + 64) + 24);
    if (!v30)
    {
      goto LABEL_51;
    }

    v31 = *(v30 + 48);
    if (v31 == 10)
    {
      v30 = *(v30 + 8);
      if (!v30)
      {
        goto LABEL_51;
      }

      v31 = *(v30 + 48);
    }

    if (v31 == 11)
    {
      v30 = *(v30 + 8);
    }

LABEL_51:
    v32 = *(v30 + 48);
    if (v32 == 1)
    {
      goto LABEL_54;
    }

    if (v32 == 3)
    {
      result = WGSL::Type::packing(*v30);
      goto LABEL_54;
    }

LABEL_207:
    mpark::throw_bad_variant_access(result);
  }

  if (v15 == 21)
  {
    Variable = WGSL::RewriteGlobalVariables::readVariable(a1, a3, v16);
    if (Variable && *(Variable + 8) == 1)
    {
      result = WGSL::Type::packing(*(a3 + 24));
      if ((result & v4) != 0)
      {
        return result;
      }
    }

    else
    {
      result = 2;
      if ((v4 & 2) != 0)
      {
        return result;
      }
    }

    v50 = *(a3 + 24);
    v51 = *(v50 + 48);
    if (v51 == 10)
    {
      v50 = *(v50 + 8);
      v51 = *(v50 + 48);
    }

    v95 = result;
    if (v51 == 3)
    {
      v65 = *(a1 + 40);
      if (result)
      {
        *(v65 + 10) = 1;
      }

      else
      {
        *(v65 + 9) = 1;
      }
    }

    else
    {
      if (v51 == 4)
      {
        if (WGSL::Type::isConstructible(v50))
        {
          goto LABEL_183;
        }

        return v95;
      }

      v68 = *(a1 + 40);
      if (result)
      {
        *(v68 + 12) = 1;
      }

      else
      {
        *(v68 + 11) = 1;
      }
    }

LABEL_183:
    v96 = 0uLL;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v99 = 0uLL;
    v98 = off_2838D37C0;
    WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
  }

  result = WGSL::RewriteGlobalVariables::pack(a1, 3, *(a3 + 64));
  if ((result & v4) != 0)
  {
    return result;
  }

  v17 = *(a3 + 24);
  v18 = *(v17 + 48);
  if (v18 == 10)
  {
    v17 = *(v17 + 8);
    v18 = *(v17 + 48);
  }

  v19 = result;
  if (v18 == 3)
  {
    v66 = *(a1 + 40);
    if (result)
    {
      *(v66 + 10) = 1;
    }

    else
    {
      *(v66 + 9) = 1;
    }

LABEL_185:
    v96 = 0uLL;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v99 = 0uLL;
    v98 = off_2838D37C0;
    WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
  }

  if (v18 != 4)
  {
    v69 = *(a1 + 40);
    if (result)
    {
      *(v69 + 12) = 1;
    }

    else
    {
      *(v69 + 11) = 1;
    }

    goto LABEL_185;
  }

  isConstructible = WGSL::Type::isConstructible(v17);
  result = v19;
  if (isConstructible)
  {
    goto LABEL_185;
  }

  return result;
}

uint64_t WGSL::RewriteGlobalVariables::visit(WGSL::RewriteGlobalVariables *this, WGSL::AST::AssignmentStatement *a2)
{
  v4 = WGSL::RewriteGlobalVariables::pack(this, 3, *(a2 + 3));
  if (v4 == 17)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(a2 + 4);

  return WGSL::RewriteGlobalVariables::pack(this, v5, v6);
}

unint64_t WGSL::RewriteGlobalVariables::visit(unint64_t this, WGSL::AST::VariableStatement *a2)
{
  v3 = *(a2 + 3);
  if (*(v3 + 128) == 3)
  {
    v4 = this;
    this = WGSL::Type::maybeSize(*(v3 + 144));
    if ((this & 0x100000000) == 0)
    {
      __break(1u);
      return this;
    }

    v5 = this;
    this = v4;
    v6 = *(v4 + 276);
    v7 = __CFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      *(v4 + 276) = v8;
      v9 = *(*(a2 + 3) + 120);
      if (!v9)
      {
        return this;
      }

      goto LABEL_7;
    }

    *(v4 + 272) = 1;
  }

  v9 = *(*(a2 + 3) + 120);
  if (!v9)
  {
    return this;
  }

LABEL_7:

  return WGSL::RewriteGlobalVariables::pack(this, 2, v9);
}

uint64_t WGSL::RewriteGlobalVariables::readVariable(WGSL::RewriteGlobalVariables *this, WGSL::AST::IdentifierExpression *a2, const WTF::StringImpl *a3)
{
  v5 = *(this + 10);
  if (v5)
  {
    v6 = *(a2 + 11);
    if (v6 == -1)
    {
      goto LABEL_40;
    }

    if (!v6)
    {
      __break(0xC471u);
      JUMPOUT(0x22572B268);
    }

    v7 = *(v5 - 8);
    v8 = *(v6 + 4);
    if (v8 < 0x100)
    {
      v9 = WTF::StringImpl::hashSlowCase(v6);
    }

    else
    {
      v9 = v8 >> 8;
    }

    for (i = 0; ; v9 = i + v11)
    {
      v11 = v9 & v7;
      v12 = *(v5 + 16 * v11);
      if (v12 != -1)
      {
        if (!v12)
        {
          goto LABEL_14;
        }

        if (WTF::equal(v12, *(a2 + 11), a3))
        {
          break;
        }
      }

      ++i;
    }

    v13 = *(this + 10);
    if (!v13 || v5 + 16 * v11 != v13 + 16 * *(v13 - 4))
    {
      return 0;
    }
  }

LABEL_14:
  v14 = *(this + 6);
  if (!v14)
  {
    return 0;
  }

  v15 = *(a2 + 11);
  if (v15 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22572B288);
  }

  if (!v15)
  {
LABEL_40:
    __break(0xC471u);
    JUMPOUT(0x22572B248);
  }

  v16 = *(v14 - 8);
  v17 = *(v15 + 4);
  if (v17 < 0x100)
  {
    v18 = WTF::StringImpl::hashSlowCase(v15);
  }

  else
  {
    v18 = v17 >> 8;
  }

  for (j = 0; ; v18 = j + v20)
  {
    v20 = v18 & v16;
    v21 = *(v14 + 32 * v20);
    if (v21 != -1)
    {
      if (!v21)
      {
        return 0;
      }

      if (WTF::equal(v21, *(a2 + 11), a3))
      {
        break;
      }
    }

    ++j;
  }

  v22 = v14 + 32 * v20;
  v23 = *(this + 6);
  if (v23 && v22 == v23 + 32 * *(v23 - 4) || !*(*(v22 + 24) + 128))
  {
    return 0;
  }

  WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::add(v26, this + 11, a2 + 11);
  if (v26[16] == 1)
  {
    v24 = *(v22 + 24);
    if (*(v24 + 112))
    {
      (*(*this + 216))(this);
      v24 = *(v22 + 24);
    }

    if (*(v24 + 120))
    {
      (*(*this + 216))(this);
    }
  }

  return v22 + 8;
}

void WGSL::ShaderModule::replace<WGSL::AST::FieldAccessExpression,WGSL::AST::FieldAccessExpression>(uint64_t a1, uint64_t a2)
{
  v20 = *(a2 + 8);
  v21 = *(a2 + 24);
  LOBYTE(v22) = 0;
  v25 = 0;
  if (*(a2 + 56) == 1)
  {
    v24 = -1;
    v4 = *(a2 + 48);
    if (v4 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v4, &v33, &v22, (a2 + 32));
      v24 = *(a2 + 48);
    }

    v25 = 1;
  }

  v5 = *(a2 + 64);
  v28 = *(a2 + 80);
  v26 = v5;
  v27 = off_2838D37C0;
  v6 = *(a2 + 96);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v29 = v6;
  v31 = *(a2 + 112);
  v30 = off_2838D37C0;
  v7 = *(a2 + 128);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  v32 = v7;
  v8 = *(a1 + 372);
  if (v8 == *(a1 + 368))
  {
    WTF::Vector<std::function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 360, v8 + 1);
    v9 = *(a1 + 372);
    v10 = *(a1 + 360);
    v33 = a2;
    v35 = v20;
    v36 = v21;
    LOBYTE(v37) = 0;
    v40 = 0;
    if (v25 != 1)
    {
      goto LABEL_52;
    }

    v39 = -1;
    if (v24 > 5u)
    {
      if (v24 > 8u)
      {
        if (v24 == 9)
        {
          v14 = v23;
          v23 = 0;
          v37 = v22;
          v38 = v14;
          goto LABEL_50;
        }

        if (v24 != 10)
        {
LABEL_51:
          v40 = 1;
LABEL_52:
          v34 = &unk_2838D4458;
          v43 = v28;
          v16 = v29;
          v29 = 0;
          v41 = v26;
          v42 = off_2838D37C0;
          v44 = v16;
          v46 = v31;
          v17 = v32;
          v32 = 0;
          v45 = off_2838D37C0;
          v47 = v17;
          *(v10 + 32 * v9 + 24) = 0;
          operator new();
        }
      }

      else if (v24 == 6)
      {
        LOBYTE(v37) = v22;
        goto LABEL_50;
      }

      v12 = v22;
      v22 = 0;
    }

    else
    {
      if (v24 <= 2u)
      {
        if (v24)
        {
          if (v24 == 1)
          {
            LOWORD(v37) = v22;
          }

          else
          {
            v37 = v22;
          }
        }

        else
        {
          LODWORD(v37) = v22;
        }

        goto LABEL_50;
      }

      if (v24 == 3 || v24 == 4)
      {
        LODWORD(v37) = v22;
LABEL_50:
        v39 = v24;
        goto LABEL_51;
      }

      v12 = v22;
    }

    v37 = v12;
    goto LABEL_50;
  }

  v11 = *(a1 + 360);
  v33 = a2;
  v35 = v20;
  v36 = v21;
  LOBYTE(v37) = 0;
  v40 = 0;
  if (v25 != 1)
  {
LABEL_57:
    v34 = &unk_2838D4458;
    v41 = v26;
    v43 = v28;
    v18 = v29;
    v29 = 0;
    v42 = off_2838D37C0;
    v44 = v18;
    v46 = v31;
    v32 = 0;
    v45 = off_2838D37C0;
    v47 = v7;
    *(v11 + 32 * v8 + 24) = 0;
    operator new();
  }

  v39 = -1;
  if (v24 > 5u)
  {
    if (v24 > 8u)
    {
      if (v24 == 9)
      {
        v15 = v23;
        v23 = 0;
        v37 = v22;
        v38 = v15;
        goto LABEL_55;
      }

      if (v24 != 10)
      {
LABEL_56:
        v40 = 1;
        goto LABEL_57;
      }
    }

    else if (v24 == 6)
    {
      LOBYTE(v37) = v22;
      goto LABEL_55;
    }

    v13 = v22;
    v22 = 0;
  }

  else
  {
    if (v24 <= 2u)
    {
      if (v24)
      {
        if (v24 == 1)
        {
          LOWORD(v37) = v22;
        }

        else
        {
          v37 = v22;
        }
      }

      else
      {
        LODWORD(v37) = v22;
      }

      goto LABEL_55;
    }

    if (v24 == 3 || v24 == 4)
    {
      LODWORD(v37) = v22;
LABEL_55:
      v39 = v24;
      goto LABEL_56;
    }

    v13 = v22;
  }

  v37 = v13;
  goto LABEL_55;
}

WGSL::RewriteGlobalVariables *WGSL::RewriteGlobalVariables::getBase(WGSL::RewriteGlobalVariables *this, WGSL::AST::Expression *a2, unsigned int *a3)
{
  while (1)
  {
    while (1)
    {
      while ((*(*this + 16))(this, a2, a3) == 22)
      {
        this = *(this + 8);
      }

      if ((*(*this + 16))(this) != 25)
      {
        break;
      }

      this = *(this + 8);
    }

    v5 = (*(*this + 16))(this);
    if (v5 != 20)
    {
      break;
    }

    v7 = *(this + 8);
    v8 = *(v7 + 3);
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = *(v8 + 48);
    if (v9 == 10)
    {
      v8 = v8[1];
      if (!v8)
      {
        goto LABEL_13;
      }

      v9 = *(v8 + 48);
    }

    if (v9 == 11)
    {
      v8 = v8[1];
    }

LABEL_13:
    if (*(v8 + 48) != 4)
    {
      mpark::throw_bad_variant_access(v5);
    }

    v10 = *v8;
    v11 = *(*v8 + 84);
    if (!v11)
    {
      goto LABEL_22;
    }

    v12 = *(*(v10 + 72) + 8 * v11 - 8);
    if ((WTF::equal(*(v12 + 48), *(this + 12), v6) & 1) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x22572C104);
    }

    *a2 += *(v12 + 112);
    this = v7;
  }

  if ((*(*this + 16))(this) != 21)
  {
LABEL_22:
    __break(0xC471u);
    JUMPOUT(0x22572C0E4);
  }

  return this;
}

uint64_t WTF::HashMap<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>(uint64_t result, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v4 = *a3;
  if (*a3 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x22572C394);
  }

  v6 = result;
  v7 = *a2;
  if (!*a2)
  {
    v8 = a3;
    v9 = a4;
    result = WTF::HashTable<WGSL::AST::Function *,WTF::KeyValuePair<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashMap<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Function *>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    a3 = v8;
    a4 = v9;
    v7 = *a2;
    v4 = *v8;
  }

  v10 = *(v7 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v7 + 32 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v4)
      {
        v30 = 0;
        v31 = v7 + 32 * *(v7 - 4);
        goto LABEL_33;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v7 + 32 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0u;
      *(v17 + 1) = 0u;
      --*(*a2 - 16);
      v4 = *a3;
      v15 = v17;
    }
  }

  *v15 = v4;
  v19 = *(a4 + 2);
  v20 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  v21 = v15[1];
  v22 = v15[2];
  *(v15 + 1) = v20;
  for (v15[3] = v19; v22; result = WTF::fastFree(v23, a2))
  {
    v23 = v22;
    v22 = *(v22 + 2);
    v24 = *v23;
    *v23 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, a2);
    }
  }

  if (v21)
  {
    result = WTF::fastFree((v21 - 16), a2);
  }

  v25 = *a2;
  if (*a2)
  {
    v26 = *(v25 - 16);
    v27 = *(v25 - 12) + 1;
    *(v25 - 12) = v27;
    v28 = (v26 + v27);
    v29 = *(v25 - 4);
    if (v29 <= 0x400)
    {
      goto LABEL_23;
    }

LABEL_29:
    if (v29 > 2 * v28)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v27 = 1;
  MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
  v28 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
  v29 = MEMORY[0xFFFFFFFFFFFFFFFC];
  if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
  {
    goto LABEL_29;
  }

LABEL_23:
  if (3 * v29 <= 4 * v28)
  {
    if (!v29)
    {
      result = WTF::HashTable<WGSL::AST::Function *,WTF::KeyValuePair<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashMap<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Function *>,WTF::FastMalloc>::rehash(a2, 8u, v15);
      v15 = result;
      v25 = *a2;
      if (!*a2)
      {
LABEL_26:
        v29 = 0;
        goto LABEL_32;
      }

LABEL_31:
      v29 = *(v25 - 4);
      goto LABEL_32;
    }

LABEL_30:
    result = WTF::HashTable<WGSL::AST::Function *,WTF::KeyValuePair<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashMap<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Function *>,WTF::FastMalloc>::rehash(a2, v29 << (6 * v27 >= (2 * v29)), v15);
    v15 = result;
    v25 = *a2;
    if (!*a2)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

LABEL_32:
  v31 = v25 + 32 * v29;
  v30 = 1;
LABEL_33:
  *v6 = v15;
  *(v6 + 8) = v31;
  *(v6 + 16) = v30;
  return result;
}

void WGSL::ShaderModule::replace<WGSL::AST::CallExpression,WGSL::AST::BinaryExpression>(uint64_t a1, const WGSL::AST::CallExpression *a2)
{
  WGSL::AST::CallExpression::CallExpression(&v14, a2);
  v3 = *(a1 + 372);
  if (v3 == *(a1 + 368))
  {
    WTF::Vector<std::function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 360, v3 + 1);
    v4 = *(a1 + 372);
    v5 = *(a1 + 360);
    v25 = a2;
    v27 = v15;
    v28 = v16;
    LOBYTE(v29) = 0;
    v32 = 0;
    if (v20 != 1)
    {
      goto LABEL_44;
    }

    v31 = -1;
    if (v19 > 5u)
    {
      if (v19 > 8u)
      {
        if (v19 == 9)
        {
          v9 = v18;
          v18 = 0;
          v29 = v17;
          v30 = v9;
          goto LABEL_42;
        }

        if (v19 != 10)
        {
LABEL_43:
          v32 = 1;
LABEL_44:
          v26 = &unk_2838D3F20;
          v33 = v21;
          v34 = v22;
          v11 = v23;
          v22 = 0;
          v23 = 0;
          v35 = v11;
          v36 = v24;
          *(v5 + 32 * v4 + 24) = 0;
          operator new();
        }
      }

      else if (v19 == 6)
      {
        LOBYTE(v29) = v17;
        goto LABEL_42;
      }

      v7 = v17;
      v17 = 0;
    }

    else
    {
      if (v19 <= 2u)
      {
        if (v19)
        {
          if (v19 == 1)
          {
            LOWORD(v29) = v17;
          }

          else
          {
            v29 = v17;
          }
        }

        else
        {
          LODWORD(v29) = v17;
        }

        goto LABEL_42;
      }

      if (v19 == 3 || v19 == 4)
      {
        LODWORD(v29) = v17;
LABEL_42:
        v31 = v19;
        goto LABEL_43;
      }

      v7 = v17;
    }

    v29 = v7;
    goto LABEL_42;
  }

  v6 = *(a1 + 360);
  v25 = a2;
  v27 = v15;
  v28 = v16;
  LOBYTE(v29) = 0;
  v32 = 0;
  if (v20 != 1)
  {
LABEL_49:
    v26 = &unk_2838D3F20;
    v33 = v21;
    v34 = v22;
    v12 = v23;
    v22 = 0;
    v23 = 0;
    v35 = v12;
    v36 = v24;
    *(v6 + 32 * v3 + 24) = 0;
    operator new();
  }

  v31 = -1;
  if (v19 > 5u)
  {
    if (v19 > 8u)
    {
      if (v19 == 9)
      {
        v10 = v18;
        v18 = 0;
        v29 = v17;
        v30 = v10;
        goto LABEL_47;
      }

      if (v19 != 10)
      {
LABEL_48:
        v32 = 1;
        goto LABEL_49;
      }
    }

    else if (v19 == 6)
    {
      LOBYTE(v29) = v17;
      goto LABEL_47;
    }

    v8 = v17;
    v17 = 0;
  }

  else
  {
    if (v19 <= 2u)
    {
      if (v19)
      {
        if (v19 == 1)
        {
          LOWORD(v29) = v17;
        }

        else
        {
          v29 = v17;
        }
      }

      else
      {
        LODWORD(v29) = v17;
      }

      goto LABEL_47;
    }

    if (v19 == 3 || v19 == 4)
    {
      LODWORD(v29) = v17;
LABEL_47:
      v31 = v19;
      goto LABEL_48;
    }

    v8 = v17;
  }

  v29 = v8;
  goto LABEL_47;
}

WTF::StringImpl *WTF::HashMap<WTF::String,WGSL::RewriteGlobalVariables::Global,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::RewriteGlobalVariables::Global>(uint64_t a1, uint64_t *a2, const WTF::StringImpl **a3, __int128 *a4)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x22572CDACLL);
  }

  v8 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::RewriteGlobalVariables::Global>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::RewriteGlobalVariables::Global>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::RewriteGlobalVariables::Global,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    v8 = *a2;
    if (!*a2)
    {
      v9 = 0;
      v10 = *a3;
      v11 = *(*a3 + 4);
      if (v11 >= 0x100)
      {
        goto LABEL_6;
      }

LABEL_8:
      v12 = WTF::StringImpl::hashSlowCase(v10);
      goto LABEL_9;
    }
  }

  v9 = *(v8 - 8);
  v10 = *a3;
  v11 = *(*a3 + 4);
  if (v11 < 0x100)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = v11 >> 8;
LABEL_9:
  v13 = 0;
  for (i = 1; ; ++i)
  {
    v15 = v12 & v9;
    v16 = v8 + 32 * v15;
    result = *v16;
    if (*v16 == -1)
    {
      v13 = (v8 + 32 * v15);
      goto LABEL_11;
    }

    if (!result)
    {
      if (v13)
      {
        result = 0;
        *v13 = 0u;
        v13[1] = 0u;
        --*(*a2 - 16);
        v16 = v13;
      }

      v20 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
        result = *v16;
      }

      *v16 = v20;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      v21 = *a4;
      *(v16 + 24) = *(a4 + 2);
      *(v16 + 8) = v21;
      v22 = *a2;
      if (*a2)
      {
        v23 = *(v22 - 16);
        v24 = *(v22 - 12) + 1;
        *(v22 - 12) = v24;
        v25 = (v23 + v24);
        v26 = *(v22 - 4);
        if (v26 <= 0x400)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v25 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v26 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
        {
LABEL_26:
          if (3 * v26 > 4 * v25)
          {
LABEL_34:
            v27 = v22 + 32 * v26;
            v28 = 1;
            goto LABEL_37;
          }

          if (!v26)
          {
            result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::RewriteGlobalVariables::Global>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::RewriteGlobalVariables::Global>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::RewriteGlobalVariables::Global,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, v16);
            v16 = result;
            v22 = *a2;
            if (!*a2)
            {
LABEL_29:
              v26 = 0;
              goto LABEL_34;
            }

LABEL_33:
            v26 = *(v22 - 4);
            goto LABEL_34;
          }

LABEL_32:
          result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::RewriteGlobalVariables::Global>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::RewriteGlobalVariables::Global>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::RewriteGlobalVariables::Global,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, v26 << (6 * v24 >= (2 * v26)), v16);
          v16 = result;
          v22 = *a2;
          if (!*a2)
          {
            goto LABEL_29;
          }

          goto LABEL_33;
        }
      }

      if (v26 > 2 * v25)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    result = WTF::equal(result, *a3, a3);
    if (result)
    {
      break;
    }

LABEL_11:
    v12 = i + v15;
  }

  v18 = *a2;
  if (*a2)
  {
    v19 = *(v18 - 4);
  }

  else
  {
    v19 = 0;
  }

  v28 = 0;
  v27 = v18 + 32 * v19;
LABEL_37:
  *a1 = v16;
  *(a1 + 8) = v27;
  *(a1 + 16) = v28;
  return result;
}

uint64_t WGSL::RewriteGlobalVariables::packStructType(WGSL::RewriteGlobalVariables *a1, uint64_t a2)
{
  v4 = *a2;
  if (*(*a2 + 88) != 6)
  {
    v14 = *(v4 + 84);
    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = 0;
    v16 = *(v4 + 72);
    v17 = 8 * v14;
    do
    {
      v18 = *v16++;
      v15 |= WGSL::RewriteGlobalVariables::packType(a1, *(*(v18 + 104) + 24)) != 0;
      v17 -= 8;
    }

    while (v17);
    v4 = *a2;
    if ((v15 & 1) == 0)
    {
LABEL_14:
      if (*(v4 + 120) != 1)
      {
        return 0;
      }
    }

    v21 = *(v4 + 88);
    v19 = (v4 + 88);
    v20 = v21;
    v22 = *(a1 + 5);
    *v19 = 6;
    v23 = *(v22 + 372);
    if (v23 == *(v22 + 368))
    {
      WTF::Vector<std::function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v22 + 360, v23 + 1);
      v23 = *(v22 + 372);
    }

    v24 = *(v22 + 360) + 32 * v23;
    *v24 = &unk_2838D4EC0;
    *(v24 + 8) = v19;
    *(v24 + 16) = v20;
    *(v24 + 24) = v24;
    *(v24 + 17) = 0;
    *(v24 + 20) = 0;
    ++*(v22 + 372);
    v25 = *(*a2 + 48);
    if (v25)
    {
      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
      v48 = v25;
      v26 = *(v25 + 4);
      if (v26 < 0)
      {
        goto LABEL_48;
      }

      v27 = __OFADD__(v26, 7);
      v28 = v26 + 7;
      if (v27)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v48 = 0;
      v28 = 7;
    }

    if (!__OFADD__(v28, 2))
    {
      v29 = !v25 || (*(v25 + 16) & 4) != 0;
      WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v28 + 2), v29, "__", 2uLL, v25, "_Packed", 7uLL, &v49);
      if (v49)
      {
        if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v48, v30);
        }

        if (v49)
        {
          atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
        }

        v31 = *a2;
        v32 = *(*a2 + 84);
        if (v32)
        {
          if (v32 >> 29)
          {
            __break(0xC471u);
            JUMPOUT(0x22572D698);
          }

          v33 = WTF::fastMalloc((8 * v32));
          v34 = *(v31 + 84);
          if (v34)
          {
            v35 = *(v31 + 72);
            v36 = (v34 - 1) & 0x1FFFFFFFFFFFFFFFLL;
            if (v36 < 3)
            {
              v37 = v33;
              v38 = *(v31 + 72);
            }

            else
            {
              v37 = v33;
              v38 = *(v31 + 72);
              if ((v33 - v35) >= 0x20)
              {
                v39 = v36 + 1;
                v40 = 8 * (v39 & 0x3FFFFFFFFFFFFFFCLL);
                v37 = (v33 + v40);
                v38 = (v35 + v40);
                v41 = (v35 + 16);
                v42 = (v33 + 16);
                v43 = v39 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v44 = *v41;
                  *(v42 - 1) = *(v41 - 1);
                  *v42 = v44;
                  v41 += 2;
                  v42 += 2;
                  v43 -= 4;
                }

                while (v43);
                if (v39 == (v39 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_45;
                }
              }
            }

            v45 = (v35 + 8 * v34);
            do
            {
              v46 = *v38++;
              *v37++ = v46;
            }

            while (v38 != v45);
          }
        }

LABEL_45:
        operator new();
      }

LABEL_49:
      __break(0xC471u);
      JUMPOUT(0x22572D608);
    }

LABEL_48:
    v49 = 0;
    goto LABEL_49;
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x22572D628);
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x22572D648);
  }

  v5 = *(a1 + 23);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 - 8);
  v7 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = *(v5 + 16 * v10);
  if (v11 != a2)
  {
    v12 = 1;
    while (v11)
    {
      v10 = (v10 + v12) & v6;
      v11 = *(v5 + 16 * v10);
      ++v12;
      if (v11 == a2)
      {
        return *(v5 + 16 * v10 + 8);
      }
    }

    return 0;
  }

  return *(v5 + 16 * v10 + 8);
}

uint64_t WGSL::RewriteGlobalVariables::updateReference(WGSL::RewriteGlobalVariables *this, WGSL::AST::Variable *a2, WGSL::AST::Expression *a3)
{
  if ((*(*a2 + 16))(a2) == 59)
  {
    WGSL::AST::Builder::construct<WGSL::AST::ReferenceTypeExpression,WGSL::SourceSpan,WGSL::AST::Expression &,void>();
  }

  result = 96;
  __break(0xC471u);
  return result;
}

const WGSL::Type *WGSL::RewriteGlobalVariables::packType(WGSL::RewriteGlobalVariables *this, const WGSL::Type *a2)
{
  if (!a2)
  {
    return a2;
  }

  v2 = *(a2 + 48);
  if (v2 == 1)
  {
    if (*(a2 + 8) != 3)
    {
      return 0;
    }

    *(*(this + 5) + 30) = 1;
    return a2;
  }

  if (v2 != 3)
  {
    if (v2 == 4)
    {

      return WGSL::RewriteGlobalVariables::packStructType(this);
    }

    return 0;
  }

  v4 = a2;
  a2 = WGSL::RewriteGlobalVariables::packType(this, *a2);
  if (!a2)
  {
    return a2;
  }

  v6 = *(this + 5);
  *(v6 + 9) = 257;
  v7 = *(v4 + 1);
  v8 = *(v4 + 2);

  return WGSL::TypeStore::arrayType(v6 + 96, a2, v7, v8);
}

void WGSL::RewriteGlobalVariables::insertParameter(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v19 = a4;
  if (!a6)
  {
    v6 = 0;
    v7 = *(a1 + 160);
    do
    {
      ++v6;
      v8 = v7 > 9;
      v7 /= 0xAu;
    }

    while (v8);
    v9 = 0;
    v10 = a4;
    do
    {
      ++v9;
      v8 = v10 > 9;
      v10 /= 0xAu;
    }

    while (v8);
    if ((v9 & 0x80000000) == 0)
    {
      v11 = __OFADD__(v9, 1);
      v12 = v9 + 1;
      v13 = v11;
      if ((v6 & 0x80000000) == 0 && (v13 & 1) == 0)
      {
        v11 = __OFADD__(v6, v12);
        v14 = v6 + v12;
        if (!v11 && !__OFADD__(v14, 18))
        {
          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>(&v20, v14 + 18, *(a1 + 160), a4);
          if (v20)
          {
            v15 = off_2838D37C0;
            v16 = 0;
            v17 = 0;
            v18 = v20;
            WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
          }
        }
      }
    }

    __break(0xC471u);
    JUMPOUT(0x22572E3ECLL);
  }

  WGSL::AST::Builder::construct<WGSL::AST::AbstractIntegerLiteral,WGSL::SourceSpan const&,unsigned int &,void>();
}

WTF *WGSL::RewriteGlobalVariables::insertStructs(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3, unsigned int a4, void *a5)
{
  v6 = a2;
  v180 = a1;
  __src = 0;
  v189 = 0;
  v187 = 0;
  v186 = 0;
  if (a4)
  {
    v7 = a3;
    while (1)
    {
      v198 = 0;
      v199 = 0;
      v196 = 0;
      v197 = 0;
      v8 = *(v7 + 5);
      if (v8)
      {
        break;
      }

      ++v187;
      a1 = v196;
LABEL_3:
      v7 = (v7 + 24);
      if (v7 == (a3 + 24 * a4))
      {
        goto LABEL_70;
      }
    }

    v9 = *(v7 + 1);
    v182 = &v9[30 * v8];
    while (1)
    {
      v10 = *(a2 + 192);
      if ((v9[2] & v10) != 0)
      {
        break;
      }

      v9 += 30;
      if (v9 == v182)
      {
        ++v187;
        a1 = v196;
        goto LABEL_3;
      }
    }

    switch(v10)
    {
      case 1:
        v11 = 12;
        break;
      case 4:
        v11 = 24;
        break;
      case 2:
        v11 = 18;
        break;
      default:
        goto LABEL_15;
    }

    v5 = *&v9[v11];
LABEL_15:
    v12 = *(a2 + 56);
    if (!v12)
    {
      goto LABEL_46;
    }

    v13 = *v9;
    v14.i32[0] = *v9;
    v14.i32[1] = v187;
    v15 = vadd_s32(v14, 0x100000001);
    if (!*&v15)
    {
      __break(0xC471u);
      JUMPOUT(0x2257309E8);
    }

    if (v15.i32[1] == -1)
    {
      __break(0xC471u);
      goto LABEL_528;
    }

    v16 = *(v12 - 8);
    v17 = vsub_s32(v14, vshl_n_s32(v15, 0xFuLL));
    v18 = vmul_s32(veor_s8(vshr_n_u32(v17, 0xAuLL), v17), 0x900000009);
    v19 = veor_s8(vshr_n_u32(v18, 6uLL), v18);
    v20 = vadd_s32(v19, vmvn_s8(vshl_n_s32(v19, 0xBuLL)));
    v21 = vmul_s32(veor_s8(vshr_n_u32(v20, 0x10uLL), v20), 0x109132F905AC73FELL);
    v22 = v16 & ((0xD7862706ELL * vadd_s32(v21, vdup_lane_s32(v21, 1)).u32[0]) >> 4);
    v23 = (v12 + 16 * v22);
    v25 = *v23;
    v24 = v23[1];
    if (*v23 != v15.i32[1] || v24 != v15.i32[0])
    {
      v27 = 1;
      while (v25 | v24)
      {
        v22 = (v22 + v27) & v16;
        v23 = (v12 + 16 * v22);
        v25 = *v23;
        v24 = v23[1];
        ++v27;
        if (*v23 == v15.i32[1] && v24 == v15.i32[0])
        {
          goto LABEL_29;
        }
      }

LABEL_46:
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v190[1] = 0;
      v191 = 0;
      v190[0] = off_2838D37C0;
      v192 = v195[0];
      operator new();
    }

LABEL_29:
    if (v23 == (v12 + 16 * *(v12 - 4)))
    {
      goto LABEL_46;
    }

    v29 = *a5;
    if (!*a5)
    {
      goto LABEL_46;
    }

    v30 = *(v29 - 2);
    v31 = (~(v187 << 32) + v187) ^ ((~(v187 << 32) + v187) >> 22);
    v32 = 9 * ((v31 + ~(v31 << 13)) ^ ((v31 + ~(v31 << 13)) >> 8));
    v33 = (v32 ^ (v32 >> 15)) + ~((v32 ^ (v32 >> 15)) << 27);
    v34 = v30 & ((v33 >> 31) ^ v33);
    v35 = v29[2 * v34];
    if (v35 != v187)
    {
      v36 = 1;
      while (v35 != -1)
      {
        v34 = (v34 + v36) & v30;
        v35 = v29[2 * v34];
        ++v36;
        if (v35 == v187)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_46;
    }

LABEL_37:
    if (v34 == *(v29 - 1))
    {
      goto LABEL_46;
    }

    v37 = v29[2 * v34 + 1];
    if (!v37)
    {
      goto LABEL_46;
    }

    v38 = *(v37 - 8);
    v39 = (~(v13 << 32) + v13) ^ ((~(v13 << 32) + v13) >> 22);
    v40 = 9 * ((v39 + ~(v39 << 13)) ^ ((v39 + ~(v39 << 13)) >> 8));
    v41 = (v40 ^ (v40 >> 15)) + ~((v40 ^ (v40 >> 15)) << 27);
    v42 = v38 & ((v41 >> 31) ^ v41);
    v43 = *(v37 + 16 * v42);
    if (v43 != v13)
    {
      v44 = 1;
      while (v43 != -1)
      {
        v42 = (v42 + v44) & v38;
        v43 = *(v37 + 16 * v42);
        ++v44;
        if (v43 == v13)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_46;
    }

LABEL_45:
    if (v42 == *(v37 - 4))
    {
      goto LABEL_46;
    }

    v45 = *(*(v37 + 16 * v42 + 8) + 16);
    if (v45 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x225730A64);
    }

    if (!v45)
    {
      __break(0xC471u);
      JUMPOUT(0x225730A84);
    }

    WTF::HashTable<WGSL::AST::Function *,WTF::KeyValuePair<WGSL::AST::Function *,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Function *,unsigned int>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashMap<WGSL::AST::Function *,unsigned int,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Function *>,WTF::FastMalloc>::rehash(&v186, 8u);
    v46 = v186;
    v47 = *(v186 - 8);
    v48 = (~(v45 << 32) + v45) ^ ((~(v45 << 32) + v45) >> 22);
    v49 = 9 * ((v48 + ~(v48 << 13)) ^ ((v48 + ~(v48 << 13)) >> 8));
    v50 = (v49 ^ (v49 >> 15)) + ~((v49 ^ (v49 >> 15)) << 27);
    v51 = v47 & ((v50 >> 31) ^ v50);
    v52 = (v186 + 16 * v51);
    v53 = *v52;
    if (!*v52)
    {
      goto LABEL_60;
    }

    v54 = 0;
    v55 = 1;
    do
    {
      if (v53 == v45)
      {
        goto LABEL_65;
      }

      if (v53 == -1)
      {
        v54 = v52;
      }

      v51 = (v51 + v55) & v47;
      v52 = (v186 + 16 * v51);
      v53 = *v52;
      ++v55;
    }

    while (*v52);
    if (v54)
    {
      *v54 = 0;
      v54[1] = 0;
      *v54 = v45;
      v54[1] = v9;
      v56 = vadd_s32(*(v46 - 16), 0x1FFFFFFFFLL);
      *(v46 - 16) = v56;
      v57 = v56.i32[1];
      v58 = (v56.i32[1] + v56.i32[0]);
      v59 = *(v46 - 4);
      if (v59 > 0x400)
      {
        goto LABEL_58;
      }
    }

    else
    {
LABEL_60:
      *v52 = v45;
      v52[1] = v9;
      v60 = *(v46 - 16);
      v57 = *(v46 - 12) + 1;
      *(v46 - 12) = v57;
      v58 = (v57 + v60);
      v59 = *(v46 - 4);
      if (v59 > 0x400)
      {
LABEL_58:
        if (v59 > 2 * v58)
        {
LABEL_65:
          if ((v5 & 0x100000000) != 0)
          {
            WGSL::RewriteGlobalVariables::createArgumentBufferEntry(v6, v5);
          }

LABEL_528:
          __break(1u);
          __break(0xC471u);
          JUMPOUT(0x225730A10);
        }

        goto LABEL_63;
      }
    }

    if (3 * v59 > 4 * v58)
    {
      goto LABEL_65;
    }

    if (!v59)
    {
      v61 = 8;
      goto LABEL_64;
    }

LABEL_63:
    v61 = v59 << (6 * v57 >= (2 * v59));
LABEL_64:
    WTF::HashTable<WGSL::AST::Function *,WTF::KeyValuePair<WGSL::AST::Function *,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Function *,unsigned int>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashMap<WGSL::AST::Function *,unsigned int,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Function *>,WTF::FastMalloc>::rehash(&v186, v61);
    goto LABEL_65;
  }

LABEL_70:
  v62 = *a5;
  if (!*a5)
  {
    v64 = 0;
    v63 = 0;
    goto LABEL_78;
  }

  v63 = *(v62 - 1);
  v64 = &v62[2 * v63];
  if (!*(v62 - 3))
  {
LABEL_78:
    v66 = v64;
    v64 = &v62[2 * v63];
    goto LABEL_79;
  }

  if (!v63)
  {
    v67 = 0;
    v66 = *a5;
    goto LABEL_82;
  }

  v65 = 16 * v63;
  v66 = *a5;
  while (*v66 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v66 += 2;
    v65 -= 16;
    if (!v65)
    {
      v66 = v64;
      break;
    }
  }

LABEL_79:
  if (v62)
  {
    v67 = *(v62 - 1);
LABEL_82:
    v62 += 2 * v67;
  }

  if (v66 == v62)
  {
LABEL_458:
    v165 = HIDWORD(v189);
    v166 = v180;
    *v180 = 0;
    *(v180 + 8) = 0;
    *(v180 + 12) = v165;
    if (v165)
    {
      if (v165 >> 30)
      {
        __break(0xC471u);
        JUMPOUT(0x225730BA0);
      }

      v167 = WTF::fastMalloc((4 * v165));
      *(v180 + 8) = v165;
      *v180 = v167;
      memcpy(v167, __src, 4 * HIDWORD(v189));
      v166 = v180;
    }

    *(v166 + 24) = 0;
    goto LABEL_463;
  }

  v183 = v64;
  v184 = v62;
LABEL_85:
  v68 = v66[1];
  if (!v68)
  {
    v70 = 0;
    v69 = 0;
LABEL_94:
    v72 = v70;
    v70 = (v68 + 16 * v69);
    if (!v68)
    {
      j = 0;
      goto LABEL_98;
    }

    goto LABEL_92;
  }

  v69 = *(v68 - 4);
  v70 = (v68 + 16 * v69);
  if (!*(v68 - 12))
  {
    goto LABEL_94;
  }

  if (!v69)
  {
    v73 = 0;
    v72 = v66[1];
    goto LABEL_97;
  }

  v71 = 16 * v69;
  v72 = v66[1];
  while (*v72 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v72 += 2;
    v71 -= 16;
    if (!v71)
    {
      v72 = v70;
      break;
    }
  }

LABEL_92:
  v73 = *(v68 - 4);
LABEL_97:
  j = (v68 + 16 * v73);
  while (1)
  {
LABEL_98:
    if (v72 == j)
    {
      v66 += 2;
      if (v66 == v183)
      {
        if (v66 == v184)
        {
          goto LABEL_458;
        }
      }

      else
      {
        do
        {
          if (*v66 < 0xFFFFFFFFFFFFFFFELL)
          {
            break;
          }

          v66 += 2;
        }

        while (v66 != v183);
        if (v66 == v184)
        {
          goto LABEL_458;
        }
      }

      goto LABEL_85;
    }

    v75 = *(v72[1] + 16);
    if (!v186)
    {
      goto LABEL_335;
    }

    if (v75 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x225730AACLL);
    }

    if (!v75)
    {
      __break(0xC471u);
      JUMPOUT(0x225730ACCLL);
    }

    v76 = *(v186 - 8);
    v77 = (~(v75 << 32) + v75) ^ ((~(v75 << 32) + v75) >> 22);
    v78 = 9 * ((v77 + ~(v77 << 13)) ^ ((v77 + ~(v77 << 13)) >> 8));
    v79 = (v78 ^ (v78 >> 15)) + ~((v78 ^ (v78 >> 15)) << 27);
    v80 = v76 & ((v79 >> 31) ^ v79);
    v81 = *(v186 + 16 * v80);
    if (v81 != v75)
    {
      v82 = 1;
      while (v81)
      {
        v80 = (v80 + v82) & v76;
        v81 = *(v186 + 16 * v80);
        ++v82;
        if (v81 == v75)
        {
          goto LABEL_106;
        }
      }

LABEL_335:
      v130 = j;
      v131 = *(v6 + 88);
      if (!v131)
      {
        goto LABEL_354;
      }

      goto LABEL_336;
    }

LABEL_106:
    if (v80 == *(v186 - 4))
    {
      goto LABEL_335;
    }

    v83 = v186 + 16 * v80;
    v86 = *(v83 + 8);
    v84 = (v83 + 8);
    v85 = v86;
    if (!v86)
    {
      goto LABEL_335;
    }

    v87 = v85[32];
    v88 = v87 == 255 ? -1 : v85[32];
    if (v88 <= 1)
    {
      if (v88)
      {
        if (v87 != 1)
        {
          goto LABEL_508;
        }

        v105 = v85[16];
        if (v105 <= 2)
        {
          v106 = dword_225882158[v105];
          a1 = WGSL::bindingTypeForType(*(v75 + 144));
          if (a1 != v106)
          {
LABEL_292:
            a1 = WTF::StringImpl::createWithoutCopyingNonEmpty();
            v107 = v190[0];
            v185 = v190[0];
            if (!v190[0])
            {
              goto LABEL_296;
            }

            goto LABEL_293;
          }
        }
      }

      else
      {
        if (v85[32])
        {
          goto LABEL_508;
        }

        a1 = WGSL::bindingTypeForType(*(v75 + 144));
        if (a1 != 1)
        {
          goto LABEL_292;
        }
      }
    }

    else
    {
      if (v88 != 2)
      {
        if (v88 == 3)
        {
          if (v87 != 3)
          {
            goto LABEL_508;
          }

          v89 = *(v75 + 144);
          if (!v89 || v89[48] != 8)
          {
            goto LABEL_292;
          }

          v90 = v85[16];
          v91 = *v89;
          v92 = v85[18];
          if (v92 > 1)
          {
            if (v92 == 2)
            {
              if (v91 != 3)
              {
                goto LABEL_292;
              }
            }

            else if (v92 != 5 || v91 != 4)
            {
              goto LABEL_292;
            }
          }

          else if (v85[18])
          {
            if (v92 != 1 || v91 != 2)
            {
              goto LABEL_292;
            }
          }

          else if (v91 != 1)
          {
            goto LABEL_292;
          }

          if (v89[1] != v85[17])
          {
            goto LABEL_292;
          }

          a1 = WGSL::bindingTypeForType(v89);
          if (a1 == 4)
          {
            if (v90 != 1)
            {
              goto LABEL_292;
            }
          }

          else if (a1 == 6)
          {
            if ((v90 & 0xFFFFFFFD) != 0)
            {
              goto LABEL_292;
            }
          }

          else if (a1 != 5 || v90 != 2)
          {
            goto LABEL_292;
          }
        }

        else
        {
          if (v87 != 4)
          {
            goto LABEL_508;
          }

          a1 = WGSL::bindingTypeForType(*(v75 + 144));
          if (a1 != 9)
          {
            goto LABEL_292;
          }
        }

        goto LABEL_158;
      }

      if (v87 != 2)
      {
        goto LABEL_508;
      }

      v94 = *(v75 + 144);
      v95 = v85[18];
      if (v85[18])
      {
        v96 = 3;
      }

      else
      {
        v96 = 2;
      }

      a1 = WGSL::bindingTypeForType(*(v75 + 144));
      if (a1 != v96)
      {
        if (a1 <= 4)
        {
          v6 = a2;
          if (a1 > 2)
          {
            if (a1 == 3)
            {
              v108 = "TextureMultisampled";
              v109 = 20;
            }

            else
            {
              v108 = "TextureStorageReadOnly";
              v109 = 23;
            }
          }

          else if (a1 == 1)
          {
            v108 = "Buffer";
            v109 = 7;
          }

          else
          {
            v108 = "Undefined";
            v109 = 10;
            if (a1 == 2)
            {
              v108 = "Texture";
              v109 = 8;
            }
          }
        }

        else
        {
          v6 = a2;
          if (a1 <= 6)
          {
            if (a1 == 5)
            {
              v108 = "TextureStorageReadWrite";
            }

            else
            {
              v108 = "TextureStorageWriteOnly";
            }

            v109 = 24;
          }

          else if (a1 == 7)
          {
            v108 = "Sampler";
            v109 = 8;
          }

          else if (a1 == 8)
          {
            v108 = "SamplerComparison";
            v109 = 18;
          }

          else
          {
            v108 = "Undefined";
            v109 = 10;
            if (a1 == 9)
            {
              v108 = "TextureExternal";
              v109 = 16;
            }
          }
        }

        if (v95)
        {
          v116 = "TextureMultisampled";
        }

        else
        {
          v116 = "Texture";
        }

        v117 = 8;
        if (v95)
        {
          v117 = 20;
        }

        a1 = WTF::tryMakeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(&v185, "types don't match: WGSL type ", 30, v108, v109, " target type ", 14, v116, v117);
        v107 = v185;
        if (!v185)
        {
          __break(0xC471u);
          JUMPOUT(0x225730AD4);
        }

        goto LABEL_293;
      }

      v97 = v85[16];
      v6 = a2;
      if (!v94)
      {
        goto LABEL_476;
      }

      v98 = v94[48];
      if (v98 == 7)
      {
        v99 = v94[8];
        v100 = v85[17];
        if (v95)
        {
          if (v99 != 7 || v100 != 1)
          {
            goto LABEL_253;
          }

          goto LABEL_141;
        }

        if (v85[17] <= 2u)
        {
          if (v85[17])
          {
            if (v100 == 1)
            {
              if (v94[8] > 3u)
              {
                goto LABEL_254;
              }

              if (v99 == 1)
              {
                v118 = "Texture1d";
LABEL_421:
                v119 = "2d";
LABEL_422:
                v120 = 3;
LABEL_423:
                if (v85[16] <= 1u)
                {
                  if (v85[16])
                  {
                    v151 = "UnfilterableFloat";
                    v152 = 18;
                  }

                  else
                  {
                    v151 = "Float";
                    v152 = 6;
                  }

                  goto LABEL_435;
                }

                if (v97 != 2)
                {
                  if (v97 == 3)
                  {
                    v151 = "SignedInt";
                  }

                  else
                  {
                    if (v97 == 4)
                    {
                      v151 = "UnsignedInt";
                      v152 = 12;
LABEL_435:
                      v153 = "no";
                      if (v95)
                      {
                        v153 = "yes";
                      }

                      __n = v120 - 1;
                      if ((v120 - 1) >> 31)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x225730B24);
                      }

                      v155 = 2;
                      if (v95)
                      {
                        v155 = 3;
                      }

                      v156 = v152 != 0;
                      v157 = v152 - 1;
                      if (!v156)
                      {
                        v157 = 0;
                      }

                      if (v157 >> 31)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x225730B44);
                      }

                      v158 = v157 + 22;
                      if (__OFADD__(v157, 22) || (v159 = __OFADD__(v155, v158), v160 = v155 + v158, v159) || (v159 = __OFADD__(v160, 17), v161 = v160 + 17, v159) || (v159 = __OFADD__(__n, v161), v162 = __n + v161, v159) || (v159 = __OFADD__(v162, 25), v163 = v162 + 25, v159) || (v159 = __OFADD__(9, v163), v164 = v163 + 9, v159) || __OFADD__(v164, 28))
                      {
                        v185 = 0;
                        __break(0xC471u);
                        JUMPOUT(0x225730B50);
                      }

                      a1 = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v190, v164 + 28, "viewDimensions don't match: ", 0x1CuLL, v118, 9uLL, ", bindingViewDimension = ", 0x19uLL, v119, __n, ", multisampled = ", 0x11uLL, v153, v155, ", bindingSampleType = ", 0x16uLL, v151, v157);
                      v107 = v190[0];
                      v185 = v190[0];
                      if (!v190[0])
                      {
                        __break(0xC471u);
                        JUMPOUT(0x225730B58);
                      }

                      goto LABEL_293;
                    }

                    v151 = "Undefined";
                  }

                  v152 = 10;
                  goto LABEL_435;
                }

                v151 = "Depth";
                v152 = 6;
                goto LABEL_435;
              }

              if (v99 != 2)
              {
                goto LABEL_259;
              }
            }

            else
            {
              if (v94[8] > 3u)
              {
                goto LABEL_254;
              }

              if (v99 == 1)
              {
                v118 = "Texture1d";
LABEL_271:
                v119 = "2d_array";
                v120 = 9;
                goto LABEL_423;
              }

              if (v99 == 2)
              {
                goto LABEL_267;
              }

              if (v99 != 3)
              {
                goto LABEL_279;
              }
            }
          }

          else if (v97 == 2 || v99 != 1)
          {
            goto LABEL_253;
          }

LABEL_141:
          v101 = *v94;
          if (!*v94)
          {
            goto LABEL_253;
          }

          if (v101[48])
          {
            if (v85[16] <= 1u)
            {
              if (v85[16])
              {
                v172 = "UnfilterableFloat";
                v178 = 18;
              }

              else
              {
                v172 = "Float";
                v178 = 6;
              }

              goto LABEL_516;
            }

            if (v97 == 2)
            {
              v172 = "Depth";
              v178 = 6;
            }

            else
            {
              if (v97 == 3)
              {
                v172 = "SignedInt";
              }

              else
              {
                if (v97 == 4)
                {
                  v172 = "UnsignedInt";
                  v178 = 12;
                  goto LABEL_516;
                }

                v172 = "Undefined";
              }

              v178 = 10;
            }

LABEL_516:
            v156 = v178 != 0;
            v179 = v178 - 1;
            if (v156)
            {
              v175 = v179;
            }

            else
            {
              v175 = 0;
            }

            if (v175 >> 31)
            {
              __break(0xC471u);
              JUMPOUT(0x225730BF0);
            }

            v176 = v175 + 44;
            if (__OFADD__(v175, 44) || (WTF::tryFastCompactMalloc((v175 + 64)), (v107 = v190[0]) == 0))
            {
              __break(0xC471u);
              JUMPOUT(0x225730BD0);
            }

            *v190[0] = 2;
            *(v107 + 1) = v176;
            *(v107 + 1) = v107 + 20;
            *(v107 + 4) = 4;
            qmemcpy(v107 + 20, "WGSL texture has no elementType: sampleType ", 44);
            if (v175)
            {
              if (v175 == 1)
              {
                *(v107 + 64) = *v172;
                goto LABEL_499;
              }

              v177 = v107 + 64;
LABEL_498:
              memcpy(v177, v172, v175);
            }

            goto LABEL_499;
          }

          if (v85[16] > 2u)
          {
            if (v97 == 4)
            {
              if (*v101 == 2)
              {
                goto LABEL_158;
              }

              v104 = "UnsignedInt";
              v103 = 12;
            }

            else
            {
              if (v97 == 3)
              {
                if (*v101 == 1)
                {
                  goto LABEL_158;
                }

                v104 = "SignedInt";
              }

              else
              {
                v104 = "Undefined";
              }

              v103 = 10;
            }
          }

          else
          {
            if (v97 < 2)
            {
              v102 = *v101;
              if ((v102 & 0xFE) == 4)
              {
                goto LABEL_158;
              }

              if (v85[16])
              {
                v103 = 18;
              }

              else
              {
                v103 = 6;
              }

              if (v85[16])
              {
                v104 = "UnfilterableFloat";
              }

              else
              {
                v104 = "Float";
              }

LABEL_396:
              v149 = "<AbstractInt>";
              v150 = 14;
              switch(v102)
              {
                case 0:
                  break;
                case 1:
                  v149 = "int32";
                  v150 = 6;
                  break;
                case 2:
                  v149 = "uint32";
                  v150 = 7;
                  break;
                case 3:
                  v149 = "<AbstractFloat>";
                  v150 = 16;
                  break;
                case 4:
                  v149 = "f16";
                  v150 = 4;
                  break;
                case 5:
                  v149 = "f32";
                  v150 = 4;
                  break;
                case 6:
                  v149 = "void";
                  v150 = 5;
                  break;
                case 7:
                  v149 = "BOOL";
                  v150 = 5;
                  break;
                case 8:
                  v149 = "sampler";
                  v150 = 8;
                  break;
                case 9:
                  v149 = "sampler_comparion";
                  v150 = 18;
                  break;
                case 10:
                  v149 = "texture_external";
                  v150 = 17;
                  break;
                case 11:
                  v149 = "access_mode";
                  v150 = 12;
                  break;
                case 12:
                  v149 = "texel_format";
                  v150 = 13;
                  break;
                case 13:
                  v149 = "address_space";
                  v150 = 14;
                  break;
                default:
                  v149 = "undefined";
                  v150 = 10;
                  break;
              }

              a1 = WTF::tryMakeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(&v185, "element types don't match: sampleType ", 39, v104, v103, ", primitive->kind ", 19, v149, v150);
              v107 = v185;
              if (!v185)
              {
                __break(0xC471u);
                JUMPOUT(0x225730AE4);
              }

              goto LABEL_293;
            }

            v104 = "Depth";
            v103 = 6;
          }

          v102 = *v101;
          goto LABEL_396;
        }

        if (v100 == 3)
        {
          if (v94[8] > 3u)
          {
            if (v94[8] > 5u)
            {
              goto LABEL_265;
            }

            if (v99 == 4)
            {
              goto LABEL_278;
            }

            goto LABEL_141;
          }

          if (v99 == 1)
          {
            v118 = "Texture1d";
            goto LABEL_400;
          }
        }

        else if (v100 == 4)
        {
          if (v94[8] > 3u)
          {
            if (v94[8] <= 5u)
            {
              goto LABEL_255;
            }

            if (v99 != 6)
            {
              goto LABEL_266;
            }

            goto LABEL_141;
          }

          if (v99 == 1)
          {
            v118 = "Texture1d";
            goto LABEL_403;
          }
        }

        else
        {
          if (v100 == 5 && v97 != 2 && v99 == 4)
          {
            goto LABEL_141;
          }

LABEL_253:
          if (v94[8] > 3u)
          {
LABEL_254:
            if (v94[8] <= 5u)
            {
LABEL_255:
              if (v99 != 4)
              {
                goto LABEL_267;
              }

LABEL_278:
              v118 = "Texture3d";
LABEL_268:
              if (v85[17] <= 2u)
              {
                if (!v85[17])
                {
                  v119 = "1d";
                  goto LABEL_422;
                }

                if (v100 == 1)
                {
                  goto LABEL_421;
                }

                goto LABEL_271;
              }

              if (v100 != 3)
              {
                if (v100 != 4)
                {
                  if (v100 == 5)
                  {
                    v119 = "3d";
                    goto LABEL_422;
                  }

                  v119 = "undefined";
                  v120 = 10;
                  goto LABEL_423;
                }

LABEL_403:
                v119 = "cube-array";
                v120 = 11;
                goto LABEL_423;
              }

LABEL_400:
              v119 = "cube";
              v120 = 5;
              goto LABEL_423;
            }

LABEL_265:
            if (v99 == 6)
            {
              goto LABEL_267;
            }

LABEL_266:
            if (v99 == 7)
            {
LABEL_267:
              v118 = "Texture2d";
              goto LABEL_268;
            }

LABEL_279:
            v118 = "Undefined";
            goto LABEL_268;
          }

          if (v99 == 1)
          {
            v118 = "Texture1d";
            goto LABEL_268;
          }
        }

        if (v99 == 2)
        {
          goto LABEL_267;
        }

LABEL_259:
        if (v99 == 3)
        {
          goto LABEL_267;
        }

        goto LABEL_279;
      }

      if (v98 == 9)
      {
        v110 = v94;
      }

      else
      {
        v110 = 0;
      }

      if (!v110 || v97 != 2)
      {
LABEL_476:
        if (v85[16] > 1u)
        {
          switch(v97)
          {
            case 2u:
              v172 = "Depth";
              v173 = 6;
              goto LABEL_488;
            case 3u:
              v172 = "SignedInt";
              break;
            case 4u:
              v172 = "UnsignedInt";
              v173 = 12;
              goto LABEL_488;
            default:
              v172 = "Undefined";
              break;
          }

          v173 = 10;
          goto LABEL_488;
        }

        if (v85[16])
        {
          v172 = "UnfilterableFloat";
          v173 = 18;
        }

        else
        {
          v172 = "Float";
          v173 = 6;
        }

LABEL_488:
        v156 = v173 != 0;
        v174 = v173 - 1;
        if (v156)
        {
          v175 = v174;
        }

        else
        {
          v175 = 0;
        }

        if (v175 >> 31)
        {
          __break(0xC471u);
          JUMPOUT(0x225730BC8);
        }

        v176 = v175 + 25;
        if (__OFADD__(v175, 25) || (WTF::tryFastCompactMalloc((v175 + 45)), (v107 = v190[0]) == 0))
        {
          __break(0xC471u);
          JUMPOUT(0x225730BA8);
        }

        *v190[0] = 2;
        *(v107 + 1) = v176;
        *(v107 + 1) = v107 + 20;
        *(v107 + 4) = 4;
        qmemcpy(v107 + 20, "depth validation failed: ", 25);
        if (!v175)
        {
          goto LABEL_499;
        }

        if (v175 != 1)
        {
          v177 = v107 + 45;
          goto LABEL_498;
        }

        *(v107 + 45) = *v172;
LABEL_499:
        v185 = v107;
        atomic_fetch_add_explicit(v107, 2u, memory_order_relaxed);
        v169 = (v176 + 45);
        if (__OFADD__(v176, 45))
        {
          goto LABEL_501;
        }

LABEL_470:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v169, (*(v107 + 4) >> 2) & 1, "Shader is incompatible with layout pipeline: ", 0x2DuLL, v107, v190);
        v170 = v190[0];
        if (v190[0])
        {
          *(v180 + 8) = 0;
          *(v180 + 16) = 0;
          *v180 = v170;
          *(v180 + 24) = 1;
          v190[0] = 0;
          if (atomic_fetch_add_explicit(v107, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v107, a2);
          }

          v171 = v185;
          v185 = 0;
          if (v171 && atomic_fetch_add_explicit(v171, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v171, a2);
          }

          goto LABEL_463;
        }

LABEL_502:
        __break(0xC471u);
        JUMPOUT(0x22573080CLL);
      }

      v111 = *v110;
      v112 = v85[17];
      if (v95)
      {
        if (v111 != 5 || v112 != 1)
        {
LABEL_227:
          if ((v111 - 1) >= 4)
          {
            goto LABEL_367;
          }

          v114 = "TextureDepth2d";
          v115 = 15;
LABEL_371:
          if (v85[17] > 2u)
          {
            if (v112 == 3)
            {
LABEL_379:
              v145 = "cube";
              v146 = 5;
              goto LABEL_385;
            }

            if (v112 == 4)
            {
LABEL_380:
              v145 = "cube-array";
              v146 = 11;
              goto LABEL_385;
            }

            if (v112 != 5)
            {
              v145 = "undefined";
              v146 = 10;
              goto LABEL_385;
            }

            v145 = "3d";
          }

          else if (v85[17])
          {
            if (v112 != 1)
            {
              goto LABEL_374;
            }

LABEL_381:
            v145 = "2d";
          }

          else
          {
            v145 = "1d";
          }

          v146 = 3;
          goto LABEL_385;
        }
      }

      else if (v85[17] > 2u)
      {
        if (v112 != 3)
        {
          if (v112 != 4)
          {
            goto LABEL_227;
          }

          if ((v111 - 1) < 3)
          {
            v114 = "TextureDepth2d";
            v115 = 15;
            goto LABEL_380;
          }

          if (v111 != 4)
          {
            goto LABEL_367;
          }

          goto LABEL_158;
        }

        if (*v110 > 3u)
        {
          v114 = "TextureDepth2d";
          v115 = 15;
          if (v111 != 4)
          {
            goto LABEL_367;
          }

          goto LABEL_379;
        }

        v114 = "TextureDepth2d";
        v115 = 15;
        if ((v111 - 1) < 2)
        {
          goto LABEL_379;
        }

        if (v111 != 3)
        {
          goto LABEL_369;
        }
      }

      else
      {
        if (v112 != 1)
        {
          if (v112 != 2)
          {
            goto LABEL_227;
          }

          if (*v110 > 2u)
          {
            v114 = "TextureDepth2d";
            v115 = 15;
            if ((v111 - 3) >= 2)
            {
LABEL_367:
              if (v111 == 5)
              {
                v114 = "Texture2d";
              }

              else
              {
LABEL_369:
                v114 = "Undefined";
              }

              v115 = 10;
              goto LABEL_371;
            }

LABEL_374:
            v145 = "2d_array";
            v146 = 9;
LABEL_385:
            v190[0] = "viewDimensions don't match: ";
            v190[1] = 29;
            v198 = v114;
            v199 = v115;
            v196 = ", textureBinding view dimension ";
            v197 = 33;
            v195[0] = v145;
            v195[1] = v146;
            v194[0] = ", multisampled = ";
            v194[1] = 18;
            v147 = "no";
            if (v95)
            {
              v147 = "yes";
            }

            v148 = 3;
            if (v95)
            {
              v148 = 4;
            }

            v193[0] = v147;
            v193[1] = v148;
            a1 = WTF::tryMakeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(v190, &v198, &v196, v195, v194, v193, &v185);
            v107 = v185;
            if (!v185)
            {
              __break(0xC471u);
              JUMPOUT(0x225730ADCLL);
            }

            goto LABEL_293;
          }

          v114 = "TextureDepth2d";
          v115 = 15;
          if (v111 == 1)
          {
            goto LABEL_374;
          }

          if (v111 != 2)
          {
            goto LABEL_369;
          }

          goto LABEL_158;
        }

        if ((v111 - 2) < 3)
        {
          v114 = "TextureDepth2d";
          v115 = 15;
          goto LABEL_381;
        }

        if (v111 != 1)
        {
          goto LABEL_367;
        }
      }
    }

LABEL_158:
    v107 = *MEMORY[0x277CD4670];
    if (*MEMORY[0x277CD4670])
    {
      atomic_fetch_add_explicit(v107, 2u, memory_order_relaxed);
    }

    v185 = v107;
    if (!v107)
    {
LABEL_296:
      v185 = 0;
      goto LABEL_297;
    }

LABEL_293:
    v121 = *(v107 + 1);
    if (v121)
    {
      goto LABEL_468;
    }

    v185 = 0;
    if (atomic_fetch_add_explicit(v107, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      a1 = WTF::StringImpl::destroy(v107, a2);
    }

LABEL_297:
    v122 = v85[16];
    v123 = v85[32];
    v124 = v123 == 255 ? -1 : v85[32];
    if (v124 <= 1)
    {
      if (!v124)
      {
        if (v85[32])
        {
          goto LABEL_508;
        }

        if ((v122 - 1) < 2)
        {
          v125 = 3;
        }

        else
        {
          v125 = 4;
        }

        if ((*(v75 + 152) & 0x100) == 0)
        {
          goto LABEL_319;
        }

        goto LABEL_318;
      }

      if (v123 != 1)
      {
LABEL_508:
        mpark::throw_bad_variant_access(a1);
      }
    }

    else if (v124 == 2)
    {
      if (v123 != 2)
      {
        goto LABEL_508;
      }
    }

    else if (v124 == 3)
    {
      if (v123 != 3)
      {
        goto LABEL_508;
      }
    }

    else if (v123 != 4)
    {
      goto LABEL_508;
    }

    v125 = 1;
    if ((*(v75 + 152) & 0x100) == 0)
    {
      goto LABEL_319;
    }

LABEL_318:
    if (v125 != *(v75 + 152))
    {
      goto LABEL_327;
    }

LABEL_319:
    if (v85[32])
    {
      v126 = 0;
    }

    else
    {
      v126 = v122 == 1;
    }

    v127 = v126;
    v128 = *(v75 + 154);
    if ((v128 & 0x100) != 0 && v127 != v128)
    {
LABEL_327:
      a1 = WTF::StringImpl::createWithoutCopyingNonEmpty();
      v107 = v190[0];
      goto LABEL_330;
    }

    v107 = *MEMORY[0x277CD4670];
    if (*MEMORY[0x277CD4670])
    {
      atomic_fetch_add_explicit(v107, 2u, memory_order_relaxed);
    }

LABEL_330:
    v185 = v107;
    if (!v107)
    {
      goto LABEL_334;
    }

    v121 = *(v107 + 1);
    if (v121)
    {
LABEL_468:
      atomic_fetch_add_explicit(v107, 2u, memory_order_relaxed);
      if ((v121 & 0x80000000) == 0)
      {
        v169 = (v121 + 45);
        if (!__OFADD__(v121, 45))
        {
          goto LABEL_470;
        }
      }

LABEL_501:
      v190[0] = 0;
      goto LABEL_502;
    }

    v185 = 0;
    if (atomic_fetch_add_explicit(v107, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      a1 = WTF::StringImpl::destroy(v107, a2);
    }

LABEL_334:
    v129 = *v84;
    if (*(*v84 + 32))
    {
      goto LABEL_335;
    }

    a1 = WGSL::Type::maybeSize(*(v75 + 144));
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_528;
    }

    *(v129 + 24) = a1;
    v130 = j;
    v131 = *(v6 + 88);
    if (!v131)
    {
      goto LABEL_354;
    }

LABEL_336:
    v132 = *(v131 - 8);
    v133 = *(v75 + 48);
    v134 = *(v133 + 4);
    if (v134 < 0x100)
    {
      a1 = WTF::StringImpl::hashSlowCase(v133);
    }

    else
    {
      a1 = v134 >> 8;
    }

    for (i = 0; ; a1 = (i + v136))
    {
      v136 = a1 & v132;
      v137 = *(v131 + 8 * (a1 & v132));
      if (v137 != -1)
      {
        if (!v137)
        {
          goto LABEL_354;
        }

        a1 = WTF::equal(*v137, *(v75 + 48), a3);
        if (a1)
        {
          break;
        }
      }

      ++i;
    }

    if (!v186)
    {
      goto LABEL_462;
    }

    if (v75 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x225730B78);
    }

    if (!v75)
    {
      __break(0xC471u);
      JUMPOUT(0x225730B98);
    }

    v138 = *(v186 - 8);
    v139 = (~(v75 << 32) + v75) ^ ((~(v75 << 32) + v75) >> 22);
    v140 = 9 * ((v139 + ~(v139 << 13)) ^ ((v139 + ~(v139 << 13)) >> 8));
    v141 = (v140 ^ (v140 >> 15)) + ~((v140 ^ (v140 >> 15)) << 27);
    v142 = v138 & ((v141 >> 31) ^ v141);
    v143 = *(v186 + 16 * v142);
    if (v143 != v75)
    {
      break;
    }

LABEL_354:
    v72 += 2;
    for (j = v130; v72 != v70; v72 += 2)
    {
      if (*v72 < 0xFFFFFFFFFFFFFFFELL)
      {
        break;
      }
    }
  }

  v144 = 1;
  while (v143)
  {
    v142 = (v142 + v144) & v138;
    v143 = *(v186 + 16 * v142);
    ++v144;
    if (v143 == v75)
    {
      goto LABEL_354;
    }
  }

LABEL_462:
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  *(v180 + 8) = 0;
  *(v180 + 16) = 0;
  *(v180 + 24) = 1;
LABEL_463:
  if (v186)
  {
    WTF::fastFree((v186 - 16), a2);
  }

  result = __src;
  if (__src)
  {
    __src = 0;
    LODWORD(v189) = 0;
    return WTF::fastFree(result, a2);
  }

  return result;
}

void WGSL::RewriteGlobalVariables::finalizeArgumentBufferStruct(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v39 = 0;
  v5 = *a3;
  v6 = *(a3 + 12);
  v7 = (*a3 + 16 * v6);
  v34 = v38;
  v35 = &v39;
  v8 = 126 - 2 * __clz(v6);
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WGSL::AST::StructureMember *>::*> &,std::pair<unsigned int,WGSL::AST::StructureMember *>*,false>(v5, v7, &v34, v9, 1);
  v39 = 0;
  v40 = 0;
  v10 = *(a3 + 12);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 16 * v10;
    v15 = (*a3 + 8);
    do
    {
      v17 = *v15;
      v18 = v13;
      if (v13 == v12)
      {
        v19 = v13 + (v13 >> 1);
        if (v19 <= v18 + 1)
        {
          v19 = v18 + 1;
        }

        if (v19 >> 29)
        {
          __break(0xC471u);
          goto LABEL_37;
        }

        if (v19 <= 0x10)
        {
          v20 = 16;
        }

        else
        {
          v20 = v19;
        }

        v21 = WTF::fastMalloc((8 * v20));
        LODWORD(v40) = v20;
        v39 = v21;
        memcpy(v21, v11, 8 * v18);
        if (v11)
        {
          if (v21 == v11)
          {
            LODWORD(v20) = 0;
            v39 = 0;
            LODWORD(v40) = 0;
          }

          WTF::fastFree(v11, v22);
          v12 = HIDWORD(v40);
          v11 = v39;
        }

        else
        {
          v11 = v21;
        }

        v13 = v12;
        v16 = (v11 + 8 * v12);
        v12 = v20;
      }

      else
      {
        v16 = (v11 + 8 * v13);
      }

      *v16 = v17;
      HIDWORD(v40) = ++v13;
      v15 += 2;
      v14 -= 16;
    }

    while (v14);
  }

  v23 = 0;
  v38[0] = 0;
  v38[1] = 0;
  v24 = *(a1 + 160);
  do
  {
    ++v23;
    v25 = v24 > 9;
    v24 /= 0xAu;
  }

  while (v25);
  v26 = 0;
  v27 = a2;
  do
  {
    ++v26;
    v25 = v27 > 9;
    v27 /= 0xAu;
  }

  while (v25);
  if ((v26 & 0x80000000) == 0)
  {
    v28 = __OFADD__(v26, 1);
    v29 = v26 + 1;
    v30 = v28;
    if ((v23 & 0x80000000) == 0 && (v30 & 1) == 0)
    {
      v28 = __OFADD__(v23, v29);
      v31 = v23 + v29;
      if (!v28 && !__OFADD__(v31, 18))
      {
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>(v33, v31 + 18, *(a1 + 160), a2);
        if (v33[0])
        {
          v34 = off_2838D37C0;
          v35 = 0;
          v36 = 0;
          v37 = v33[0];
          v33[0] = 0;
          v33[1] = 0;
          WGSL::AST::Builder::construct<WGSL::AST::Structure,WGSL::SourceSpan,WGSL::AST::Identifier,WTF::ReferenceWrapperVector<WGSL::AST::StructureMember,0ul>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::AST::StructureRole,void>();
        }
      }
    }
  }

  __break(0xC471u);
LABEL_37:
  JUMPOUT(0x22573107CLL);
}

uint64_t WGSL::RewriteGlobalVariables::insertDynamicOffsetsBufferIfNeeded(uint64_t result)
{
  v1 = *(result + 256);
  if (v1 && *(v1 - 12) || *(result + 192) == 2 && ((v2 = *(result + 40), (*(v2 + 19) & 1) != 0) || (*(v2 + 24) & 1) != 0))
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
  }

  return result;
}

uint64_t WGSL::RewriteGlobalVariables::storeInitialValue(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 48);
  if (v5 == 12)
  {
    v17 = 0;
    v18 = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v15 = 0uLL;
    v14 = off_2838D37C0;
    WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
  }

  if (v5 != 4)
  {
    if (v5 == 3)
    {
      if (*(v4 + 16))
      {
        v7 = 0;
        v8 = a4;
        do
        {
          ++v7;
          v9 = v8 > 9;
          v8 /= 0xAu;
        }

        while (v9);
        if ((v7 & 0x80000000) == 0)
        {
          v10 = (v7 + 3);
          if (!__OFADD__(v7, 3))
          {
            WTF::tryFastCompactMalloc((v10 + 20));
            v11 = v14;
            if (v14)
            {
              *v14 = 2;
              *(v11 + 1) = v10;
              *(v11 + 10) = 24415;
              v11[1] = (v11 + 20);
              *(v11 + 4) = 4;
              *(v11 + 22) = 105;
              LODWORD(v14) = a4;
              WTF::StringTypeAdapter<unsigned int,void>::writeTo<unsigned char>(&v14, v11 + 23, v10 - 3);
              v17 = 0;
              v18 = 0;
              atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
              v14 = off_2838D37C0;
              v15 = 0uLL;
              v16 = v11;
              WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
            }
          }
        }

        __break(0xC471u);
        JUMPOUT(0x2257327B0);
      }

      __break(0xC471u);
      JUMPOUT(0x2257327D0);
    }

LABEL_13:
    WGSL::RewriteGlobalVariables::storeInitialValue(WGSL::AST::Expression &,WTF::ReferenceWrapperVector<WGSL::AST::Statement,0ul> &,unsigned int)::$_0::operator()();
  }

  result = WGSL::Type::isConstructible(v4);
  if (result)
  {
    goto LABEL_13;
  }

  if (*(*v4 + 84))
  {
    v13 = *(**(*v4 + 72) + 48);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    v15 = 0uLL;
    v14 = off_2838D37C0;
    v16 = v13;
    operator new();
  }

  return result;
}

void WGSL::RewriteGlobalVariables::storeInitialValue(WGSL::AST::Expression &,WTF::ReferenceWrapperVector<WGSL::AST::Statement,0ul> &,unsigned int)::$_0::operator()()
{
  v3 = 0;
  v4 = 0;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v1 = 0;
  v2 = 0;
  v0 = off_2838D37C0;
  WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
}

WTF::StringImpl *WTF::HashMap<WTF::String,WGSL::AST::Variable *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Variable *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::AST::Variable *&>(uint64_t a1, uint64_t *a2, const WTF::StringImpl **a3, void *a4)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x225732CD8);
  }

  v8 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::AST::Variable *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::AST::Variable *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::AST::Variable *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Variable *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    v8 = *a2;
    if (!*a2)
    {
      v9 = 0;
      v10 = *a3;
      v11 = *(*a3 + 4);
      if (v11 >= 0x100)
      {
        goto LABEL_6;
      }

LABEL_8:
      v12 = WTF::StringImpl::hashSlowCase(v10);
      goto LABEL_9;
    }
  }

  v9 = *(v8 - 8);
  v10 = *a3;
  v11 = *(*a3 + 4);
  if (v11 < 0x100)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = v11 >> 8;
LABEL_9:
  v13 = 0;
  for (i = 1; ; ++i)
  {
    v15 = v12 & v9;
    v16 = (v8 + 16 * (v12 & v9));
    result = *v16;
    if (*v16 == -1)
    {
      v13 = (v8 + 16 * v15);
      goto LABEL_11;
    }

    if (!result)
    {
      if (v13)
      {
        result = 0;
        *v13 = 0;
        *(v13 + 1) = 0;
        --*(*a2 - 16);
        v16 = v13;
      }

      v20 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
        result = *v16;
      }

      *v16 = v20;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      *(v16 + 1) = *a4;
      v21 = *a2;
      if (*a2)
      {
        v22 = *(v21 - 16);
        v23 = *(v21 - 12) + 1;
        *(v21 - 12) = v23;
        v24 = (v22 + v23);
        v25 = *(v21 - 4);
        if (v25 <= 0x400)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v23 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v24 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v25 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
        {
LABEL_26:
          if (3 * v25 > 4 * v24)
          {
LABEL_34:
            v26 = v21 + 16 * v25;
            v27 = 1;
            goto LABEL_37;
          }

          if (!v25)
          {
            result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::AST::Variable *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::AST::Variable *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::AST::Variable *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Variable *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, v16);
            v16 = result;
            v21 = *a2;
            if (!*a2)
            {
LABEL_29:
              v25 = 0;
              goto LABEL_34;
            }

LABEL_33:
            v25 = *(v21 - 4);
            goto LABEL_34;
          }

LABEL_32:
          result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::AST::Variable *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::AST::Variable *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::AST::Variable *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Variable *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, v25 << (6 * v23 >= (2 * v25)), v16);
          v16 = result;
          v21 = *a2;
          if (!*a2)
          {
            goto LABEL_29;
          }

          goto LABEL_33;
        }
      }

      if (v25 > 2 * v24)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    result = WTF::equal(result, *a3, a3);
    if (result)
    {
      break;
    }

LABEL_11:
    v12 = i + v15;
  }

  v18 = *a2;
  if (*a2)
  {
    v19 = *(v18 - 4);
  }

  else
  {
    v19 = 0;
  }

  v27 = 0;
  v26 = v18 + 16 * v19;
LABEL_37:
  *a1 = v16;
  *(a1 + 8) = v26;
  *(a1 + 16) = v27;
  return result;
}

void WGSL::RewriteGlobalVariables::~RewriteGlobalVariables(WGSL::RewriteGlobalVariables *this, void *a2)
{
  WGSL::RewriteGlobalVariables::~RewriteGlobalVariables(this, a2);

  JUMPOUT(0x22AA68560);
}

{
  *this = &unk_2838D4788;
  v3 = *(this + 33);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(this + 32);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  v5 = *(this + 28);
  if (v5)
  {
    WTF::fastFree((v5 - 16), a2);
  }

  v6 = *(this + 27);
  if (v6)
  {
    WTF::fastFree((v6 - 16), a2);
  }

  v7 = *(this + 23);
  if (v7)
  {
    WTF::fastFree((v7 - 16), a2);
  }

  v8 = *(this + 21);
  if (v8)
  {
    *(this + 21) = 0;
    *(this + 44) = 0;
    WTF::fastFree(v8, a2);
  }

  v9 = *(this + 17);
  if (v9)
  {
    WTF::fastFree((v9 - 16), a2);
  }

  v10 = *(this + 15);
  if (v10)
  {
    v11 = *(v10 - 4);
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        v13 = (v10 + 32 * i);
        if (*v13 != -1)
        {
          v14 = v13[2];
          while (v14)
          {
            v16 = v14;
            v14 = *(v14 + 2);
            v17 = *v16;
            *v16 = 0;
            if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, a2);
            }

            WTF::fastFree(v16, a2);
          }

          v15 = v13[1];
          if (v15)
          {
            WTF::fastFree((v15 - 16), a2);
          }
        }
      }
    }

    WTF::fastFree((v10 - 16), a2);
  }

  v18 = *(this + 14);
  if (v18)
  {
    v19 = *(v18 - 4);
    if (v19)
    {
      for (j = 0; j != v19; ++j)
      {
        v21 = (v18 + 32 * j);
        if (*v21 != -1)
        {
          v22 = v21[2];
          while (v22)
          {
            v24 = v22;
            v22 = *(v22 + 2);
            v25 = *v24;
            *v24 = 0;
            if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, a2);
            }

            WTF::fastFree(v24, a2);
          }

          v23 = v21[1];
          if (v23)
          {
            WTF::fastFree((v23 - 16), a2);
          }
        }
      }
    }

    WTF::fastFree((v18 - 16), a2);
  }

  v26 = *(this + 12);
  while (v26)
  {
    v27 = v26;
    v26 = *(v26 + 2);
    v28 = *v27;
    *v27 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, a2);
    }

    WTF::fastFree(v27, a2);
  }

  v29 = *(this + 11);
  if (v29)
  {
    WTF::fastFree((v29 - 16), a2);
  }

  v30 = *(this + 10);
  if (v30)
  {
    v31 = *(v30 - 4);
    if (v31)
    {
      v32 = *(this + 10);
      do
      {
        v33 = *v32;
        if (*v32 != -1)
        {
          *v32 = 0;
          if (v33)
          {
            if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v33, a2);
            }
          }
        }

        v32 += 2;
        --v31;
      }

      while (v31);
    }

    WTF::fastFree((v30 - 16), a2);
  }

  v34 = *(this + 9);
  if (v34)
  {
    WTF::fastFree((v34 - 16), a2);
  }

  v35 = *(this + 8);
  if (v35)
  {
    v36 = *(v35 - 4);
    if (v36)
    {
      for (k = 0; k != v36; ++k)
      {
        v38 = v35 + 24 * k;
        if (*v38 != -2)
        {
          v39 = *(v38 + 20);
          v40 = *(v38 + 8);
          if (v39)
          {
            v41 = 16 * v39;
            v42 = (v40 + 8);
            do
            {
              v43 = *v42;
              *v42 = 0;
              if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v43, a2);
              }

              v42 += 2;
              v41 -= 16;
            }

            while (v41);
            v40 = *(v38 + 8);
          }

          if (v40)
          {
            *(v38 + 8) = 0;
            *(v38 + 16) = 0;
            WTF::fastFree(v40, a2);
          }
        }
      }
    }

    WTF::fastFree((v35 - 16), a2);
  }

  v44 = *(this + 7);
  if (v44)
  {
    WTF::fastFree((v44 - 16), a2);
  }

  v45 = *(this + 6);
  if (v45)
  {
    v46 = *(v45 - 4);
    if (v46)
    {
      v47 = *(this + 6);
      do
      {
        v48 = *v47;
        if (*v47 != -1)
        {
          *v47 = 0;
          if (v48)
          {
            if (atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v48, a2);
            }
          }
        }

        v47 += 4;
        --v46;
      }

      while (v46);
    }

    WTF::fastFree((v45 - 16), a2);
  }

  *this = &unk_2838D37E8;
  if (*(this + 32) == 1)
  {
    v49 = *(this + 1);
    *(this + 1) = 0;
    if (v49)
    {
      if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, a2);
      }
    }
  }
}

uint64_t std::__function::__func<void WGSL::ShaderModule::append<WGSL::AST::IdentifierExpression &,std::reference_wrapper<WGSL::AST::Expression>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Expression>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WGSL::AST::IdentifierExpression &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D49C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void WGSL::ShaderModule::append<WGSL::AST::IdentifierExpression &,std::reference_wrapper<WGSL::AST::Expression>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Expression>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WGSL::AST::IdentifierExpression &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 12);
  if (v2)
  {
    *(v1 + 12) = v2 - 1;
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t std::__function::__func<void WGSL::ShaderModule::append<WGSL::AST::Expression &,std::reference_wrapper<WGSL::AST::Expression>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Expression>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WGSL::AST::Expression &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D4A10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void WGSL::ShaderModule::append<WGSL::AST::Expression &,std::reference_wrapper<WGSL::AST::Expression>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Expression>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WGSL::AST::Expression &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 12);
  if (v2)
  {
    *(v1 + 12) = v2 - 1;
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionENS5_14CallExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED1Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D4A58;
  *(a1 + 80) = off_2838D37C0;
  v3 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 64) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v5, (a1 + 48));
    }

    *(a1 + 64) = -1;
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionENS5_14CallExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED0Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D4A58;
  *(a1 + 80) = off_2838D37C0;
  v3 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 64) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v5, (a1 + 48));
    }

    *(a1 + 64) = -1;
  }

  return MEMORY[0x22AA68560](a1, 0x10E3C4023CBCC41);
}

uint64_t _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionENS5_14CallExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D4A58;
  *(a2 + 8) = v2;
  *(a2 + 16) = &unk_2838D3EF8;
  *(a2 + 24) = *(result + 24);
  *(a2 + 16) = &unk_2838D3ED0;
  v3 = *(result + 40);
  *(a2 + 48) = 0;
  *(a2 + 40) = v3;
  *(a2 + 72) = 0;
  if (*(result + 72) == 1)
  {
    *(a2 + 64) = -1;
    if (*(result + 64) != 255)
    {
      v4 = a2;
      v5 = result;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(*(result + 64), &v7, (a2 + 48), (result + 48));
      result = v5;
      a2 = v4;
      *(v4 + 64) = *(v5 + 64);
    }

    *(a2 + 72) = 1;
  }

  *(a2 + 16) = off_2838D3EA8;
  *(a2 + 80) = &unk_2838D3EF8;
  *(a2 + 88) = *(result + 88);
  *(a2 + 80) = off_2838D37C0;
  v6 = *(result + 104);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(a2 + 104) = v6;
  return result;
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionENS5_14CallExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7destroyEv(uint64_t a1, WTF::StringImpl *a2)
{
  *(a1 + 80) = off_2838D37C0;
  v3 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 64) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, (a1 + 48));
    }

    *(a1 + 64) = -1;
  }
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionENS5_14CallExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE18destroy_deallocateEv(void *__p, WTF::StringImpl *a2)
{
  __p[10] = off_2838D37C0;
  v3 = __p[13];
  __p[13] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  __p[2] = &unk_2838D3ED0;
  if (*(__p + 72) == 1 && *(__p + 64) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, __p + 48);
  }

  operator delete(__p);
}

__n128 _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionENS5_14CallExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEEclEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 72);
  if (v4)
  {
    *(v3 + 72) = 0;
    *(v3 + 80) = 0;
    WTF::fastFree(v4, a2);
  }

  *v3 = &unk_2838D3ED0;
  if (*(v3 + 56) == 1)
  {
    if (*(v3 + 48) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v8, (v3 + 32));
    }

    *(v3 + 48) = -1;
  }

  v5 = *(a1 + 8);
  *v5 = &unk_2838D3EF8;
  *(v5 + 8) = *(a1 + 24);
  *v5 = &unk_2838D3ED0;
  *(v5 + 24) = *(a1 + 40);
  *(v5 + 32) = 0;
  *(v5 + 56) = 0;
  if (*(a1 + 72) == 1)
  {
    mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v5 + 32, (a1 + 48));
    *(v5 + 56) = 1;
  }

  *v5 = off_2838D3EA8;
  *(v5 + 64) = &unk_2838D3EF8;
  result = *(a1 + 88);
  *(v5 + 72) = result;
  *(v5 + 64) = off_2838D37C0;
  v7 = *(a1 + 104);
  *(a1 + 104) = 0;
  *(v5 + 88) = v7;
  return result;
}

uint64_t WGSL::AST::CallExpression::CallExpression(uint64_t this, const WGSL::AST::CallExpression *a2)
{
  v3 = this;
  *this = &unk_2838D3EF8;
  *(this + 8) = *(a2 + 8);
  *this = &unk_2838D3ED0;
  *(this + 24) = *(a2 + 3);
  *(this + 32) = 0;
  v4 = (this + 32);
  *(this + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    *(this + 48) = -1;
    this = *(a2 + 48);
    if (this != 255)
    {
      this = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(this, &v20, v4, a2 + 4);
      *(v3 + 48) = *(a2 + 48);
    }

    *(v3 + 56) = 1;
  }

  *v3 = &unk_2838D3F20;
  *(v3 + 64) = *(a2 + 8);
  v5 = *(a2 + 21);
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 84) = v5;
  if (!v5)
  {
    goto LABEL_17;
  }

  if (!(v5 >> 29))
  {
    v6 = WTF::fastMalloc((8 * v5));
    *(v3 + 80) = v5;
    *(v3 + 72) = v6;
    v7 = *(a2 + 21);
    if (v7)
    {
      v8 = *(a2 + 9);
      v9 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v9 < 3)
      {
        v10 = *(a2 + 9);
      }

      else
      {
        v10 = *(a2 + 9);
        if (v6 - v8 >= 0x20)
        {
          v11 = v9 + 1;
          v12 = v11 & 0x3FFFFFFFFFFFFFFCLL;
          v13 = &v6[v12];
          v10 = (v8 + v12 * 8);
          v14 = (v8 + 16);
          v15 = v6 + 2;
          v16 = v11 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v17 = *v14;
            *(v15 - 1) = *(v14 - 1);
            *v15 = v17;
            v14 += 2;
            v15 += 2;
            v16 -= 4;
          }

          while (v16);
          v6 = v13;
          if (v11 == (v11 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_17;
          }
        }
      }

      v18 = (v8 + 8 * v7);
      do
      {
        v19 = *v10++;
        *v6++ = v19;
      }

      while (v10 != v18);
    }

LABEL_17:
    *(v3 + 88) = *(a2 + 44);
    return v3;
  }

  __break(0xC471u);
  return this;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21FieldAccessExpressionENS5_14CallExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED1Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D4AA0;
  *(a1 + 120) = off_2838D37C0;
  v3 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  *(a1 + 88) = off_2838D37C0;
  v4 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 64) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v6, (a1 + 48));
    }

    *(a1 + 64) = -1;
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21FieldAccessExpressionENS5_14CallExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED0Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D4AA0;
  *(a1 + 120) = off_2838D37C0;
  v3 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  *(a1 + 88) = off_2838D37C0;
  v4 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 64) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v6, (a1 + 48));
    }

    *(a1 + 64) = -1;
  }

  return MEMORY[0x22AA68560](a1, 0x10E3C4024385685);
}

uint64_t _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21FieldAccessExpressionENS5_14CallExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D4AA0;
  *(a2 + 8) = v2;
  *(a2 + 16) = &unk_2838D3EF8;
  *(a2 + 24) = *(result + 24);
  *(a2 + 16) = &unk_2838D3ED0;
  v3 = *(result + 40);
  *(a2 + 48) = 0;
  *(a2 + 40) = v3;
  *(a2 + 72) = 0;
  if (*(result + 72) == 1)
  {
    *(a2 + 64) = -1;
    if (*(result + 64) != 255)
    {
      v4 = a2;
      v5 = result;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(*(result + 64), &v8, (a2 + 48), (result + 48));
      result = v5;
      a2 = v4;
      *(v4 + 64) = *(v5 + 64);
    }

    *(a2 + 72) = 1;
  }

  *(a2 + 16) = &unk_2838D4458;
  *(a2 + 80) = *(result + 80);
  *(a2 + 88) = &unk_2838D3EF8;
  *(a2 + 96) = *(result + 96);
  *(a2 + 88) = off_2838D37C0;
  v6 = *(result + 112);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(a2 + 112) = v6;
  *(a2 + 120) = &unk_2838D3EF8;
  *(a2 + 128) = *(result + 128);
  *(a2 + 120) = off_2838D37C0;
  v7 = *(result + 144);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  *(a2 + 144) = v7;
  return result;
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21FieldAccessExpressionENS5_14CallExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7destroyEv(uint64_t a1, WTF::StringImpl *a2)
{
  *(a1 + 120) = off_2838D37C0;
  v3 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  *(a1 + 88) = off_2838D37C0;
  v4 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 64) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v5, (a1 + 48));
    }

    *(a1 + 64) = -1;
  }
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21FieldAccessExpressionENS5_14CallExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE18destroy_deallocateEv(void *__p, WTF::StringImpl *a2)
{
  __p[15] = off_2838D37C0;
  v3 = __p[18];
  __p[18] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  __p[11] = off_2838D37C0;
  v4 = __p[14];
  __p[14] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  __p[2] = &unk_2838D3ED0;
  if (*(__p + 72) == 1 && *(__p + 64) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v5, __p + 48);
  }

  operator delete(__p);
}

__n128 _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21FieldAccessExpressionENS5_14CallExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEEclEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 72);
  if (v4)
  {
    *(v3 + 72) = 0;
    *(v3 + 80) = 0;
    WTF::fastFree(v4, a2);
  }

  *v3 = &unk_2838D3ED0;
  if (*(v3 + 56) == 1)
  {
    if (*(v3 + 48) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v9, (v3 + 32));
    }

    *(v3 + 48) = -1;
  }

  v5 = *(a1 + 8);
  *v5 = &unk_2838D3EF8;
  *(v5 + 8) = *(a1 + 24);
  *v5 = &unk_2838D3ED0;
  *(v5 + 24) = *(a1 + 40);
  *(v5 + 32) = 0;
  *(v5 + 56) = 0;
  if (*(a1 + 72) == 1)
  {
    mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v5 + 32, (a1 + 48));
    *(v5 + 56) = 1;
  }

  *v5 = &unk_2838D4458;
  *(v5 + 64) = *(a1 + 80);
  *(v5 + 72) = &unk_2838D3EF8;
  *(v5 + 80) = *(a1 + 96);
  *(v5 + 72) = off_2838D37C0;
  v6 = *(a1 + 112);
  *(a1 + 112) = 0;
  *(v5 + 96) = v6;
  *(v5 + 104) = &unk_2838D3EF8;
  result = *(a1 + 128);
  *(v5 + 112) = result;
  *(v5 + 104) = off_2838D37C0;
  v8 = *(a1 + 144);
  *(a1 + 144) = 0;
  *(v5 + 128) = v8;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21IndexAccessExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED1Ev(uint64_t result)
{
  *result = &unk_2838D4AE8;
  *(result + 16) = &unk_2838D3ED0;
  if (*(result + 72) == 1)
  {
    if (*(result + 64) != 255)
    {
      v5 = v1;
      v6 = v2;
      v3 = result;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, (result + 48));
      result = v3;
    }

    *(result + 64) = -1;
  }

  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21IndexAccessExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_2838D4AE8;
  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 64) != 255)
    {
      v1 = a1;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v3, (a1 + 48));
      a1 = v1;
    }

    *(a1 + 64) = -1;
  }

  return MEMORY[0x22AA68560]();
}

__n128 _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21IndexAccessExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7__cloneEPNS0_6__baseISJ_EE(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2838D4AE8;
  *(a2 + 8) = v2;
  *(a2 + 16) = &unk_2838D3EF8;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 16) = &unk_2838D3ED0;
  v3 = *(a1 + 40);
  *(a2 + 48) = 0;
  *(a2 + 40) = v3;
  *(a2 + 72) = 0;
  if (*(a1 + 72) == 1)
  {
    *(a2 + 64) = -1;
    if (*(a1 + 64) != 255)
    {
      v4 = a2;
      v5 = a1;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(*(a1 + 64), &v7, (a2 + 48), (a1 + 48));
      a1 = v5;
      a2 = v4;
      *(v4 + 64) = *(v5 + 64);
    }

    *(a2 + 72) = 1;
  }

  *(a2 + 16) = off_2838D3F98;
  result = *(a1 + 80);
  *(a2 + 80) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21IndexAccessExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7destroyEv(uint64_t a1)
{
  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    v5 = v1;
    v6 = v2;
    if (*(a1 + 64) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, (a1 + 48));
    }

    *(a1 + 64) = -1;
  }
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21IndexAccessExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1 && *(a1 + 64) != 255)
  {
    v1 = a1;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v2, (a1 + 48));
    a1 = v1;
  }

  operator delete(a1);
}

__n128 _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21IndexAccessExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEEclEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  *v2 = &unk_2838D3ED0;
  if (*(v2 + 56) == 1)
  {
    if (*(v2 + 48) == 255)
    {
      v3 = v2;
    }

    else
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v5, (v2 + 32));
      v3 = *(a1 + 8);
    }

    *(v2 + 48) = -1;
    v2 = v3;
  }

  *v2 = &unk_2838D3EF8;
  *(v2 + 8) = *(a1 + 24);
  *v2 = &unk_2838D3ED0;
  *(v2 + 24) = *(a1 + 40);
  *(v2 + 32) = 0;
  *(v2 + 56) = 0;
  if (*(a1 + 72) == 1)
  {
    mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v2 + 32, (a1 + 48));
    *(v2 + 56) = 1;
  }

  *v2 = off_2838D3F98;
  result = *(a1 + 80);
  *(v2 + 64) = result;
  return result;
}

void WGSL::AST::IdentityExpression::~IdentityExpression(WGSL::AST::IdentityExpression *this)
{
  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      v5 = v1;
      v6 = v2;
      v3 = this;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, this + 32);
      this = v3;
    }

    *(this + 48) = -1;
  }
}

{
  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      v1 = this;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v2, this + 32);
      this = v1;
    }

    *(this + 48) = -1;
  }

  MEMORY[0x22AA68560]();
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST16BinaryExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED1Ev(uint64_t result)
{
  *result = &unk_2838D4B58;
  *(result + 16) = &unk_2838D3ED0;
  if (*(result + 72) == 1)
  {
    if (*(result + 64) != 255)
    {
      v5 = v1;
      v6 = v2;
      v3 = result;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, (result + 48));
      result = v3;
    }

    *(result + 64) = -1;
  }

  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST16BinaryExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_2838D4B58;
  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 64) != 255)
    {
      v1 = a1;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v3, (a1 + 48));
      a1 = v1;
    }

    *(a1 + 64) = -1;
  }

  return MEMORY[0x22AA68560]();
}

__n128 _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST16BinaryExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7__cloneEPNS0_6__baseISJ_EE(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2838D4B58;
  *(a2 + 8) = v2;
  *(a2 + 16) = &unk_2838D3EF8;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 16) = &unk_2838D3ED0;
  v3 = *(a1 + 40);
  *(a2 + 48) = 0;
  *(a2 + 40) = v3;
  *(a2 + 72) = 0;
  if (*(a1 + 72) == 1)
  {
    *(a2 + 64) = -1;
    if (*(a1 + 64) != 255)
    {
      v4 = a2;
      v5 = a1;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(*(a1 + 64), &v7, (a2 + 48), (a1 + 48));
      a1 = v5;
      a2 = v4;
      *(v4 + 64) = *(v5 + 64);
    }

    *(a2 + 72) = 1;
  }

  *(a2 + 16) = off_2838D3F70;
  result = *(a1 + 80);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 80) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST16BinaryExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7destroyEv(uint64_t a1)
{
  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    v5 = v1;
    v6 = v2;
    if (*(a1 + 64) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, (a1 + 48));
    }

    *(a1 + 64) = -1;
  }
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST16BinaryExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1 && *(a1 + 64) != 255)
  {
    v1 = a1;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v2, (a1 + 48));
    a1 = v1;
  }

  operator delete(a1);
}

__n128 _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST16BinaryExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEEclEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  *v2 = &unk_2838D3ED0;
  if (*(v2 + 56) == 1)
  {
    if (*(v2 + 48) == 255)
    {
      v3 = v2;
    }

    else
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v5, (v2 + 32));
      v3 = *(a1 + 8);
    }

    *(v2 + 48) = -1;
    v2 = v3;
  }

  *v2 = &unk_2838D3EF8;
  *(v2 + 8) = *(a1 + 24);
  *v2 = &unk_2838D3ED0;
  *(v2 + 24) = *(a1 + 40);
  *(v2 + 32) = 0;
  *(v2 + 56) = 0;
  if (*(a1 + 72) == 1)
  {
    mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v2 + 32, (a1 + 48));
    *(v2 + 56) = 1;
  }

  *v2 = off_2838D3F70;
  result = *(a1 + 80);
  *(v2 + 80) = *(a1 + 96);
  *(v2 + 64) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST15UnaryExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED1Ev(uint64_t result)
{
  *result = &unk_2838D4BA0;
  *(result + 16) = &unk_2838D3ED0;
  if (*(result + 72) == 1)
  {
    if (*(result + 64) != 255)
    {
      v5 = v1;
      v6 = v2;
      v3 = result;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, (result + 48));
      result = v3;
    }

    *(result + 64) = -1;
  }

  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST15UnaryExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_2838D4BA0;
  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 64) != 255)
    {
      v1 = a1;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v3, (a1 + 48));
      a1 = v1;
    }

    *(a1 + 64) = -1;
  }

  return MEMORY[0x22AA68560]();
}

uint64_t _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST15UnaryExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D4BA0;
  *(a2 + 8) = v2;
  *(a2 + 16) = &unk_2838D3EF8;
  *(a2 + 24) = *(result + 24);
  *(a2 + 16) = &unk_2838D3ED0;
  v3 = *(result + 40);
  *(a2 + 48) = 0;
  *(a2 + 40) = v3;
  *(a2 + 72) = 0;
  if (*(result + 72) == 1)
  {
    *(a2 + 64) = -1;
    if (*(result + 64) != 255)
    {
      v4 = a2;
      v5 = result;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(*(result + 64), &v7, (a2 + 48), (result + 48));
      result = v5;
      a2 = v4;
      *(v4 + 64) = *(v5 + 64);
    }

    *(a2 + 72) = 1;
  }

  *(a2 + 16) = off_2838D4008;
  v6 = *(result + 80);
  *(a2 + 88) = *(result + 88);
  *(a2 + 80) = v6;
  return result;
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST15UnaryExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7destroyEv(uint64_t a1)
{
  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    v5 = v1;
    v6 = v2;
    if (*(a1 + 64) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, (a1 + 48));
    }

    *(a1 + 64) = -1;
  }
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST15UnaryExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1 && *(a1 + 64) != 255)
  {
    v1 = a1;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v2, (a1 + 48));
    a1 = v1;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST15UnaryExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEEclEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  *v2 = &unk_2838D3ED0;
  if (*(v2 + 56) == 1)
  {
    if (*(v2 + 48) == 255)
    {
      v3 = v2;
    }

    else
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v6, (v2 + 32));
      v3 = *(a1 + 8);
    }

    *(v2 + 48) = -1;
    v2 = v3;
  }

  *v2 = &unk_2838D3EF8;
  *(v2 + 8) = *(a1 + 24);
  *v2 = &unk_2838D3ED0;
  *(v2 + 24) = *(a1 + 40);
  *(v2 + 32) = 0;
  result = v2 + 32;
  *(v2 + 56) = 0;
  if (*(a1 + 72) == 1)
  {
    result = mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(result, (a1 + 48));
    *(v2 + 56) = 1;
  }

  *v2 = off_2838D4008;
  v5 = *(a1 + 80);
  *(v2 + 72) = *(a1 + 88);
  *(v2 + 64) = v5;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST14CallExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEED1Ev(uint64_t a1, void *a2)
{
  *a1 = &unk_2838D4BE8;
  v3 = *(a1 + 88);
  if (v3)
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    WTF::fastFree(v3, a2);
  }

  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 64) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v5, (a1 + 48));
    }

    *(a1 + 64) = -1;
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST14CallExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEED0Ev(uint64_t a1, void *a2)
{
  *a1 = &unk_2838D4BE8;
  v3 = *(a1 + 88);
  if (v3)
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    WTF::fastFree(v3, a2);
  }

  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 64) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v5, (a1 + 48));
    }

    *(a1 + 64) = -1;
  }

  return MEMORY[0x22AA68560](a1, 0x10E3C40596A2E4BLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST14CallExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE7__cloneEPNS0_6__baseISI_EE(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2838D4BE8;
  a2[1] = v2;
  return WGSL::AST::CallExpression::CallExpression((a2 + 2), (a1 + 16));
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST14CallExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE7destroyEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    WTF::fastFree(v3, a2);
  }

  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 64) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, (a1 + 48));
    }

    *(a1 + 64) = -1;
  }
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST14CallExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE18destroy_deallocateEv(void *__p, void *a2)
{
  v3 = __p[11];
  if (v3)
  {
    __p[11] = 0;
    *(__p + 24) = 0;
    WTF::fastFree(v3, a2);
  }

  __p[2] = &unk_2838D3ED0;
  if (*(__p + 72) == 1 && *(__p + 64) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, __p + 48);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST14CallExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEEclEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 72);
  if (v4)
  {
    *(v3 + 72) = 0;
    *(v3 + 80) = 0;
    WTF::fastFree(v4, a2);
  }

  *v3 = &unk_2838D3ED0;
  if (*(v3 + 56) == 1)
  {
    if (*(v3 + 48) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v9, (v3 + 32));
    }

    *(v3 + 48) = -1;
  }

  v5 = *(a1 + 8);
  *v5 = &unk_2838D3EF8;
  *(v5 + 8) = *(a1 + 24);
  *v5 = &unk_2838D3ED0;
  *(v5 + 24) = *(a1 + 40);
  *(v5 + 32) = 0;
  result = v5 + 32;
  *(v5 + 56) = 0;
  if (*(a1 + 72) == 1)
  {
    result = mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(result, (a1 + 48));
    *(v5 + 56) = 1;
  }

  *v5 = &unk_2838D3F20;
  v7 = *(a1 + 80);
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 64) = v7;
  v8 = *(a1 + 88);
  *(a1 + 88) = 0;
  *(v5 + 72) = v8;
  LODWORD(v8) = *(a1 + 96);
  *(a1 + 96) = 0;
  *(v5 + 80) = v8;
  LODWORD(v8) = *(a1 + 100);
  *(a1 + 100) = 0;
  *(v5 + 84) = v8;
  *(v5 + 88) = *(a1 + 104);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST18IdentityExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED1Ev(uint64_t result)
{
  *result = &unk_2838D4C30;
  *(result + 16) = &unk_2838D3ED0;
  if (*(result + 72) == 1)
  {
    if (*(result + 64) != 255)
    {
      v5 = v1;
      v6 = v2;
      v3 = result;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, (result + 48));
      result = v3;
    }

    *(result + 64) = -1;
  }

  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST18IdentityExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_2838D4C30;
  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 64) != 255)
    {
      v1 = a1;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v3, (a1 + 48));
      a1 = v1;
    }

    *(a1 + 64) = -1;
  }

  return MEMORY[0x22AA68560]();
}

uint64_t _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST18IdentityExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D4C30;
  *(a2 + 8) = v2;
  *(a2 + 16) = &unk_2838D3EF8;
  *(a2 + 24) = *(result + 24);
  *(a2 + 16) = &unk_2838D3ED0;
  v3 = *(result + 40);
  *(a2 + 48) = 0;
  *(a2 + 40) = v3;
  *(a2 + 72) = 0;
  if (*(result + 72) == 1)
  {
    *(a2 + 64) = -1;
    if (*(result + 64) != 255)
    {
      v4 = a2;
      v5 = result;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(*(result + 64), &v6, (a2 + 48), (result + 48));
      result = v5;
      a2 = v4;
      *(v4 + 64) = *(v5 + 64);
    }

    *(a2 + 72) = 1;
  }

  *(a2 + 16) = off_2838D4B30;
  *(a2 + 80) = *(result + 80);
  return result;
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST18IdentityExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7destroyEv(uint64_t a1)
{
  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1)
  {
    v5 = v1;
    v6 = v2;
    if (*(a1 + 64) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, (a1 + 48));
    }

    *(a1 + 64) = -1;
  }
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST18IdentityExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  *(a1 + 16) = &unk_2838D3ED0;
  if (*(a1 + 72) == 1 && *(a1 + 64) != 255)
  {
    v1 = a1;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v2, (a1 + 48));
    a1 = v1;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST18IdentityExpressionENS5_14CallExpressionEEENS_9enable_ifIXooltstT_stT0_sr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEEclEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  *v2 = &unk_2838D3ED0;
  if (*(v2 + 56) == 1)
  {
    if (*(v2 + 48) == 255)
    {
      v3 = v2;
    }

    else
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v5, (v2 + 32));
      v3 = *(a1 + 8);
    }

    *(v2 + 48) = -1;
    v2 = v3;
  }

  *v2 = &unk_2838D3EF8;
  *(v2 + 8) = *(a1 + 24);
  *v2 = &unk_2838D3ED0;
  *(v2 + 24) = *(a1 + 40);
  *(v2 + 32) = 0;
  result = v2 + 32;
  *(v2 + 56) = 0;
  if (*(a1 + 72) == 1)
  {
    result = mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(result, (a1 + 48));
    *(v2 + 56) = 1;
  }

  *v2 = off_2838D4B30;
  *(v2 + 64) = *(a1 + 80);
  return result;
}

uint64_t std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WTF::String>::*> &,std::pair<unsigned int,WTF::String>*,false>(uint64_t result, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = a2;
  v9 = result;
LABEL_2:
  v10 = v8 - 16;
  v11 = v8 - 32;
  v187 = v8 - 48;
  v188 = v8 - 32;
  v12 = v9;
  while (1)
  {
    v9 = v12;
    v13 = (v8 - v12) >> 4;
    v14 = v13 - 2;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      if (*(v8 + **(a3 + 8) - 16) < *(v9 + **(a3 + 8)))
      {
        v107 = *v9;
        *v9 = *(v8 - 4);
        *(v8 - 4) = v107;
        goto LABEL_150;
      }

      return result;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {
        if (v9 != v8)
        {
          v125 = v9 + 4;
          if (v9 + 4 != v8)
          {
            v126 = 0;
            v127 = v9;
            do
            {
              v128 = v125;
              if (*(v125 + **(a3 + 8)) < *(v127 + **(a3 + 8)))
              {
                v190[0] = *v125;
                v129 = *(v127 + 3);
                *(v127 + 3) = 0;
                v191 = v129;
                v130 = v126;
                while (1)
                {
                  v131 = v9 + v130;
                  *(v131 + 4) = *(v9 + v130);
                  v132 = *(v9 + v130 + 8);
                  *(v131 + 1) = 0;
                  v133 = *(v9 + v130 + 24);
                  *(v131 + 3) = v132;
                  if (v133 && atomic_fetch_add_explicit(v133, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v133, a2);
                  }

                  if (!v130)
                  {
                    break;
                  }

                  v134 = **(a3 + 8);
                  v135 = v9 + v130 + v134;
                  v130 -= 16;
                  if (*(v190 + v134) >= *(v135 - 4))
                  {
                    v136 = v9 + v130 + 16;
                    goto LABEL_165;
                  }
                }

                v136 = v9;
LABEL_165:
                *v136 = v190[0];
                v137 = v191;
                v191 = 0;
                result = *(v136 + 8);
                *(v136 + 8) = v137;
                if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  result = WTF::StringImpl::destroy(result, a2);
                }
              }

              v125 = v128 + 4;
              v126 += 16;
              v127 = v128;
            }

            while (v128 + 4 != v8);
          }
        }

        return result;
      }

      if (v9 == v8)
      {
        return result;
      }

      v177 = v9 + 4;
      if (v9 + 4 == v8)
      {
        return result;
      }

      v178 = 4;
      v10 = v9;
      while (1)
      {
        v179 = **(a3 + 8);
        LODWORD(v5) = *(v177 + v179);
        if (v5 < *(v10 + v179))
        {
          break;
        }

LABEL_233:
        v10 += 16;
        v178 += 4;
        v177 = &v9[v178];
        if (&v9[v178] == v8)
        {
          return result;
        }
      }

      v180 = 0;
      v190[0] = *v177;
      v181 = *(v10 + 24);
      *(v10 + 24) = 0;
      v191 = v181;
      while (1)
      {
        v182 = v10 + v180;
        *(v182 + 16) = *(v10 + v180);
        v11 = *(v10 + v180 + 8);
        *(v182 + 8) = 0;
        result = *(v10 + v180 + 24);
        *(v182 + 24) = v11;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }

        v16 = v178 * 4 + v180;
        if (!(v178 * 4 + v180))
        {
          break;
        }

        v183 = **(a3 + 8);
        v184 = v10 + v180 + v183;
        v180 -= 16;
        if (*(v190 + v183) >= *(v184 - 16))
        {
          v185 = v10 + v180;
          *(v185 + 16) = v190[0];
          result = *(v10 + v180 + 24);
          *(v185 + 24) = v191;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }

          goto LABEL_233;
        }
      }

LABEL_244:
      __break(1u);
LABEL_245:
      *v9 = v9[4];
      v9[4] = v5;
      v186 = *(v9 + 1);
      *(v9 + 1) = *(v9 + 3);
      *(v9 + 3) = v186;
      if (*(v10 + *v11) < *(v16 + *v11))
      {
        v9[4] = *(v8 - 4);
        *(v8 - 4) = v5;
        *(v9 + 3) = *(v8 - 1);
        *(v8 - 1) = v186;
      }

      return result;
    }

    if (!a4)
    {
      if (v9 == v8)
      {
        return result;
      }

      v138 = v14 >> 1;
      v16 = v14 >> 1;
      while (2)
      {
        v10 = v16;
        if (v138 >= v16)
        {
          v139 = (2 * v16) | 1;
          v140 = &v9[4 * v139];
          if (2 * v10 + 2 >= v13)
          {
            v143 = **(a3 + 8);
            v5 = &v9[4 * v10];
            v144 = *(v140 + v143);
            v11 = *(v5 + v143);
            if (v144 >= v11)
            {
              goto LABEL_178;
            }
          }

          else
          {
            v141 = **(a3 + 8);
            if (*(v140 + v141) < *(v140 + v141 + 16))
            {
              v140 += 4;
              v139 = 2 * v10 + 2;
            }

            v5 = &v9[4 * v10];
            v142 = *(v140 + v141);
            v11 = *(v5 + v141);
            if (v142 >= v11)
            {
LABEL_178:
              v190[0] = *v5;
              v11 = *(v5 + 1);
              *(v5 + 1) = 0;
              v191 = v11;
              do
              {
                v147 = v140;
                *v5 = *v140;
                v148 = *(v140 + 1);
                v147[1] = 0;
                v149 = *(v5 + 1);
                *(v5 + 1) = v148;
                if (v149 && atomic_fetch_add_explicit(v149, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v149, a2);
                }

                if (v138 < v139)
                {
                  break;
                }

                v11 = (2 * v139) | 1;
                v140 = &v9[4 * v11];
                v150 = **(a3 + 8);
                if (2 * v139 + 2 < v13 && *(v140 + v150) < *(v140 + v150 + 16))
                {
                  v140 += 4;
                  v11 = 2 * v139 + 2;
                }

                v145 = *(v140 + v150);
                v146 = *(v190 + v150);
                v5 = v147;
                v139 = v11;
              }

              while (v145 >= v146);
              *v147 = v190[0];
              v151 = v191;
              v191 = 0;
              v152 = v147[1];
              v147[1] = v151;
              if (v152 && atomic_fetch_add_explicit(v152, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v152, a2);
              }

              result = v191;
              if (v191 && atomic_fetch_add_explicit(v191, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, a2);
              }
            }
          }
        }

        v16 = v10 - 1;
        if (v10)
        {
          continue;
        }

        break;
      }

      while (2)
      {
        if (v13 <= 0)
        {
          goto LABEL_244;
        }

        v154 = 0;
        v155 = *v9;
        v156 = *(v9 + 1);
        *(v9 + 1) = 0;
        v10 = v9;
        do
        {
          v157 = v10;
          v158 = v10 + 16 * v154;
          v10 = v158 + 16;
          v159 = 2 * v154;
          v154 = (2 * v154) | 1;
          LODWORD(v5) = v159 + 2;
          if (v159 + 2 < v13)
          {
            v160 = v158 + 32;
            if (*(v10 + **(a3 + 8)) < *(v160 + **(a3 + 8)))
            {
              v10 = v160;
              v154 = v159 + 2;
            }
          }

          *v157 = *v10;
          v11 = *(v10 + 8);
          *(v10 + 8) = 0;
          v161 = *(v157 + 8);
          *(v157 + 8) = v11;
          if (v161 && atomic_fetch_add_explicit(v161, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v161, a2);
          }
        }

        while (v154 <= ((v13 - 2) >> 1));
        v162 = (v8 - 16);
        if (v10 == (v8 - 16))
        {
          *v10 = v155;
          result = *(v10 + 8);
          *(v10 + 8) = v156;
          if (!result)
          {
            goto LABEL_195;
          }
        }

        else
        {
          *v10 = *(v8 - 4);
          v163 = *(v8 - 1);
          *(v8 - 1) = 0;
          v164 = *(v10 + 8);
          *(v10 + 8) = v163;
          if (v164 && atomic_fetch_add_explicit(v164, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v164, a2);
          }

          *(v8 - 4) = v155;
          result = *(v8 - 1);
          *(v8 - 1) = v156;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }

          v165 = (v10 + 16 - v9) >> 4;
          v153 = v165 < 2;
          v166 = v165 - 2;
          if (v153)
          {
            goto LABEL_195;
          }

          v167 = v166 >> 1;
          v168 = &v9[4 * (v166 >> 1)];
          v169 = **(a3 + 8);
          LODWORD(v5) = *(v168 + v169);
          v11 = *(v10 + v169);
          if (v5 >= v11)
          {
            goto LABEL_195;
          }

          v190[0] = *v10;
          v11 = *(v10 + 8);
          *(v10 + 8) = 0;
          v191 = v11;
          do
          {
            v170 = v168;
            *v10 = *v168;
            v171 = *(v168 + 1);
            *(v170 + 1) = 0;
            v172 = *(v10 + 8);
            *(v10 + 8) = v171;
            if (v172 && atomic_fetch_add_explicit(v172, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v172, a2);
            }

            if (!v167)
            {
              break;
            }

            v167 = (v167 - 1) >> 1;
            v168 = &v9[4 * v167];
            v173 = **(a3 + 8);
            LODWORD(v5) = *(v168 + v173);
            v11 = *(v190 + v173);
            v10 = v170;
          }

          while (v5 < v11);
          *v170 = v190[0];
          result = *(v170 + 1);
          *(v170 + 1) = v191;
          if (!result)
          {
LABEL_195:
            v16 = v13 - 1;
            v8 = v162;
            v153 = v13-- > 2;
            if (!v153)
            {
              return result;
            }

            continue;
          }
        }

        break;
      }

      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      goto LABEL_195;
    }

    v15 = &v9[4 * (v13 >> 1)];
    v16 = *(a3 + 8);
    v5 = *v16;
    v17 = *(v10 + *v16);
    if (v13 < 0x81)
    {
      v21 = *(v5 + v9);
      LODWORD(v5) = *(v5 + v15);
      if (v21 >= v5)
      {
        if (v17 < v21)
        {
          v26 = *v9;
          *v9 = *(v8 - 4);
          *(v8 - 4) = v26;
          v5 = *(v9 + 1);
          *(v9 + 1) = *(v8 - 1);
          *(v8 - 1) = v5;
          LODWORD(v5) = *(v15 + *v16);
          if (*(v9 + *v16) < v5)
          {
            v27 = *v15;
            *v15 = *v9;
            *v9 = v27;
            v5 = *(v15 + 1);
            *(v15 + 1) = *(v9 + 1);
            *(v9 + 1) = v5;
            --a4;
            if (a5)
            {
              goto LABEL_38;
            }

            goto LABEL_59;
          }
        }
      }

      else
      {
        LODWORD(v5) = *v15;
        if (v17 < v21)
        {
          *v15 = *(v8 - 4);
          *(v8 - 4) = v5;
          v5 = *(v15 + 1);
          *(v15 + 1) = *(v8 - 1);
          *(v8 - 1) = v5;
          --a4;
          if (a5)
          {
            goto LABEL_38;
          }

          goto LABEL_59;
        }

        *v15 = *v9;
        *v9 = v5;
        v38 = *(v15 + 1);
        *(v15 + 1) = *(v9 + 1);
        *(v9 + 1) = v38;
        if (*(v10 + *v16) < *(v9 + *v16))
        {
          *v9 = *(v8 - 4);
          *(v8 - 4) = v5;
          *(v9 + 1) = *(v8 - 1);
          *(v8 - 1) = v38;
        }
      }

      --a4;
      if (a5)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v18 = *(v5 + v15);
      if (v18 >= *(v5 + v9))
      {
        if (v17 < v18)
        {
          v22 = *v15;
          *v15 = *(v8 - 4);
          *(v8 - 4) = v22;
          v23 = *(v15 + 1);
          *(v15 + 1) = *(v8 - 1);
          *(v8 - 1) = v23;
          if (*(v15 + *v16) < *(v9 + *v16))
          {
            v24 = *v9;
            *v9 = *v15;
            *v15 = v24;
            v25 = *(v9 + 1);
            *(v9 + 1) = *(v15 + 1);
            *(v15 + 1) = v25;
          }
        }
      }

      else
      {
        v19 = *v9;
        if (v17 >= v18)
        {
          *v9 = *v15;
          *v15 = v19;
          v28 = *(v9 + 1);
          *(v9 + 1) = *(v15 + 1);
          *(v15 + 1) = v28;
          if (*(v10 + *v16) < *(v15 + *v16))
          {
            *v15 = *(v8 - 4);
            *(v8 - 4) = v19;
            *(v15 + 1) = *(v8 - 1);
            *(v8 - 1) = v28;
          }
        }

        else
        {
          *v9 = *(v8 - 4);
          *(v8 - 4) = v19;
          v20 = *(v9 + 1);
          *(v9 + 1) = *(v8 - 1);
          *(v8 - 1) = v20;
        }
      }

      v29 = v15 - 4;
      v30 = *(v15 + *v16 - 16);
      v31 = *&v188[*v16];
      if (v30 >= *(v9 + *v16 + 16))
      {
        if (v31 < v30)
        {
          v34 = *v29;
          *v29 = *(v8 - 8);
          *(v8 - 8) = v34;
          v35 = *(v15 - 1);
          *(v15 - 1) = *(v8 - 3);
          *(v8 - 3) = v35;
          if (*(v29 + *v16) < *(v9 + *v16 + 16))
          {
            v36 = v9[4];
            v9[4] = *v29;
            *v29 = v36;
            v37 = *(v9 + 3);
            *(v9 + 3) = *(v15 - 1);
            *(v15 - 1) = v37;
          }
        }
      }

      else
      {
        v32 = v9[4];
        if (v31 >= v30)
        {
          v9[4] = *v29;
          *v29 = v32;
          v39 = *(v9 + 3);
          *(v9 + 3) = *(v15 - 1);
          *(v15 - 1) = v39;
          if (*&v188[*v16] < *(v29 + *v16))
          {
            *v29 = *(v8 - 8);
            *(v8 - 8) = v32;
            *(v15 - 1) = *(v8 - 3);
            *(v8 - 3) = v39;
          }
        }

        else
        {
          v9[4] = *(v8 - 8);
          *(v8 - 8) = v32;
          v33 = *(v9 + 3);
          *(v9 + 3) = *(v8 - 3);
          *(v8 - 3) = v33;
        }
      }

      v40 = v15 + 4;
      v41 = *(v15 + *v16 + 16);
      v42 = *&v187[*v16];
      if (v41 >= *(v9 + *v16 + 32))
      {
        if (v42 < v41)
        {
          v45 = *v40;
          *v40 = *(v8 - 12);
          *(v8 - 12) = v45;
          v46 = *(v15 + 3);
          *(v15 + 3) = *(v8 - 5);
          *(v8 - 5) = v46;
          if (*(v40 + *v16) < *(v9 + *v16 + 32))
          {
            v47 = v9[8];
            v9[8] = *v40;
            *v40 = v47;
            v48 = *(v9 + 5);
            *(v9 + 5) = *(v15 + 3);
            *(v15 + 3) = v48;
          }
        }
      }

      else
      {
        v43 = v9[8];
        if (v42 >= v41)
        {
          v9[8] = *v40;
          *v40 = v43;
          v49 = *(v9 + 5);
          *(v9 + 5) = *(v15 + 3);
          *(v15 + 3) = v49;
          if (*&v187[*v16] < *(v40 + *v16))
          {
            *v40 = *(v8 - 12);
            *(v8 - 12) = v43;
            *(v15 + 3) = *(v8 - 5);
            *(v8 - 5) = v49;
          }
        }

        else
        {
          v9[8] = *(v8 - 12);
          *(v8 - 12) = v43;
          v44 = *(v9 + 5);
          *(v9 + 5) = *(v8 - 5);
          *(v8 - 5) = v44;
        }
      }

      v50 = *(v15 + *v16);
      v51 = *(v40 + *v16);
      if (v50 >= *(v29 + *v16))
      {
        v52 = *v15;
        if (v51 < v50)
        {
          v54 = *v40;
          *v15 = *v40;
          *v40 = v52;
          v55 = *(v15 + 1);
          v56 = *(v15 + 3);
          *(v15 + 1) = v56;
          *(v15 + 3) = v55;
          if (*(v15 + *v16) >= *(v29 + *v16))
          {
            v52 = v54;
          }

          else
          {
            v52 = *v29;
            *v29 = v54;
            *v15 = v52;
            v57 = *(v15 - 1);
            *(v15 - 1) = v56;
            *(v15 + 1) = v57;
          }
        }
      }

      else
      {
        v52 = *v29;
        if (v51 >= v50)
        {
          *v29 = *v15;
          *v15 = v52;
          v58 = *(v15 - 1);
          *(v15 - 1) = *(v15 + 1);
          *(v15 + 1) = v58;
          if (*(v40 + *v16) < *(v15 + *v16))
          {
            v59 = *v40;
            *v15 = *v40;
            *v40 = v52;
            *(v15 + 1) = *(v15 + 3);
            *(v15 + 3) = v58;
            v52 = v59;
          }
        }

        else
        {
          *v29 = *v40;
          *v40 = v52;
          v53 = *(v15 - 1);
          *(v15 - 1) = *(v15 + 3);
          *(v15 + 3) = v53;
          v52 = *v15;
        }
      }

      v60 = *v9;
      *v9 = v52;
      *v15 = v60;
      v5 = *(v9 + 1);
      *(v9 + 1) = *(v15 + 1);
      *(v15 + 1) = v5;
      --a4;
      if (a5)
      {
LABEL_38:
        v11 = *v9;
        goto LABEL_60;
      }
    }

LABEL_59:
    v61 = (v9 + *v16);
    LODWORD(v5) = *(v61 - 4);
    v62 = *v61;
    v11 = *v9;
    if (v5 >= v62)
    {
      v190[0] = *v9;
      v86 = *(v9 + 1);
      *(v9 + 1) = 0;
      v191 = v86;
      v87 = *v16;
      v88 = *(v190 + *v16);
      if (v88 < *(v10 + *v16))
      {
        v5 = (v87 + 16);
        v89 = v9;
        while (1)
        {
          v11 = (v89 + 4);
          if (v89 + 4 == v8)
          {
            goto LABEL_244;
          }

          v90 = *(v5 + v89);
          v89 += 4;
          if (v88 < v90)
          {
            goto LABEL_107;
          }
        }
      }

      v91 = v9 + 4;
      do
      {
        v11 = v91;
        if (v91 >= v8)
        {
          break;
        }

        v92 = *(v87 + v91);
        v91 += 4;
      }

      while (v88 >= v92);
LABEL_107:
      v5 = v8;
      if (v11 < v8)
      {
        v93 = v87 - 16;
        v94 = v8;
        while (v94 != v9)
        {
          v5 = (v94 - 4);
          v95 = *(v94 + v93);
          v94 -= 4;
          if (v88 >= v95)
          {
            goto LABEL_111;
          }
        }

        goto LABEL_244;
      }

LABEL_111:
      if (v11 < v5)
      {
LABEL_112:
        v96 = *v11;
        *v11 = *v5;
        *v5 = v96;
        v97 = *(v11 + 8);
        *(v11 + 8) = *(v5 + 1);
        *(v5 + 1) = v97;
        v12 = v11 + 16;
        if ((v11 + 16) != v8)
        {
          v98 = *v16;
          v99 = *(v190 + *v16);
          if (v99 < *(v12 + *v16))
          {
LABEL_118:
            v11 = v98 - 16;
            while (v5 != v9)
            {
              v101 = v5 - 16;
              v102 = *(v5 + v11);
              v5 = (v5 - 16);
              if (v99 >= v102)
              {
                v11 = v12;
                v5 = v101;
                if (v12 < v101)
                {
                  goto LABEL_112;
                }

                goto LABEL_124;
              }
            }
          }

          else
          {
            v11 += 32;
            while (v11 != v8)
            {
              v100 = *(v98 + v11);
              v11 += 16;
              if (v99 < v100)
              {
                v12 = v11 - 16;
                goto LABEL_118;
              }
            }
          }
        }

        goto LABEL_244;
      }

      v12 = v11;
LABEL_124:
      if ((v12 - 16) != v9)
      {
        *v9 = *(v12 - 16);
        v103 = *(v12 - 8);
        *(v12 - 8) = 0;
        v104 = *(v9 + 1);
        *(v9 + 1) = v103;
        if (v104)
        {
          if (atomic_fetch_add_explicit(v104, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v104, a2);
          }
        }
      }

      *(v12 - 16) = v190[0];
      v105 = v191;
      v191 = 0;
      v106 = *(v12 - 8);
      *(v12 - 8) = v105;
      if (v106 && atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v106, a2);
      }

      result = v191;
      if (v191 && atomic_fetch_add_explicit(v191, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

      a5 = 0;
    }

    else
    {
LABEL_60:
      v190[0] = v11;
      v16 = *(v9 + 1);
      *(v9 + 1) = 0;
      v191 = v16;
      v63 = v9 + 4;
      if (v9 + 4 == v8)
      {
        goto LABEL_244;
      }

      v16 = *(a3 + 8);
      v5 = *v16;
      v11 = *(v190 + *v16);
      if (*(v63 + *v16) < v11)
      {
        v64 = (v9 + 8);
        while (v64 != v8)
        {
          v65 = *(v5 + v64);
          v64 = (v64 + 16);
          if (v65 >= v11)
          {
            v63 = (v64 - 16);
            v5 = (v5 - 16);
            v66 = v8;
            while (v66 != v9)
            {
              v67 = (v66 - 4);
              v68 = *(v5 + v66);
              v66 -= 4;
              if (v68 < v11)
              {
                goto LABEL_73;
              }
            }

            goto LABEL_244;
          }
        }

        goto LABEL_244;
      }

      v69 = v5 - 16;
      v67 = v8;
      while (v63 < v67)
      {
        v70 = (v67 - 16);
        v71 = *&v69[v67];
        v67 = (v67 - 16);
        if (v71 < v11)
        {
          v67 = v70;
          break;
        }
      }

LABEL_73:
      v12 = v63;
      if (v63 < v67)
      {
        v72 = v63;
        v11 = v67;
LABEL_75:
        v73 = *v72;
        *v72 = *v11;
        *v11 = v73;
        v5 = *(v72 + 8);
        *(v72 + 8) = *(v11 + 8);
        *(v11 + 8) = v5;
        v12 = v72 + 16;
        if ((v72 + 16) != v8)
        {
          v74 = *v16;
          LODWORD(v5) = *(v190 + *v16);
          if (*(v12 + *v16) >= v5)
          {
LABEL_81:
            v77 = v74 - 16;
            while (v11 != v9)
            {
              v78 = v11 - 16;
              v79 = *(v11 + v77);
              v11 -= 16;
              if (v79 < v5)
              {
                v72 = v12;
                v11 = v78;
                if (v12 < v78)
                {
                  goto LABEL_75;
                }

                goto LABEL_85;
              }
            }
          }

          else
          {
            v75 = (v72 + 32);
            while (v75 != v8)
            {
              v76 = *(v74 + v75);
              v75 = (v75 + 16);
              if (v76 >= v5)
              {
                v12 = v75 - 16;
                goto LABEL_81;
              }
            }
          }
        }

        goto LABEL_244;
      }

LABEL_85:
      if ((v12 - 16) != v9)
      {
        *v9 = *(v12 - 16);
        v80 = *(v12 - 8);
        *(v12 - 8) = 0;
        v81 = *(v9 + 1);
        *(v9 + 1) = v80;
        if (v81)
        {
          if (atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v81, a2);
          }
        }
      }

      *(v12 - 16) = v190[0];
      v82 = v191;
      v191 = 0;
      v83 = *(v12 - 8);
      *(v12 - 8) = v82;
      if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v83, a2);
      }

      v84 = v191;
      if (v191)
      {
        if (atomic_fetch_add_explicit(v191, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v84, a2);
        }
      }

      if (v63 < v67)
      {
        goto LABEL_98;
      }

      v85 = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WTF::String>::*> &,std::pair<unsigned int,WTF::String>*>(v9, (v12 - 16), a3);
      result = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WTF::String>::*> &,std::pair<unsigned int,WTF::String>*>(v12, v8, a3);
      if (result)
      {
        v8 = (v12 - 16);
        if (v85)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v85)
      {
LABEL_98:
        result = std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WTF::String>::*> &,std::pair<unsigned int,WTF::String>*,false>(v9, v12 - 16, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v121 = *(a3 + 8);

      return std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WTF::String>::*> &,std::pair<unsigned int,WTF::String>*,0>(v9, v9 + 4, v9 + 8, v8 - 4, v121);
    }

    if (v13 == 5)
    {
      v108 = v9 + 4;
      v109 = v9 + 8;
      result = std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WTF::String>::*> &,std::pair<unsigned int,WTF::String>*,0>(v9, v9 + 4, v9 + 8, v9 + 12, *(a3 + 8));
      v110 = *(a3 + 8);
      if (*(v8 + *v110 - 16) >= *(v9 + *v110 + 48))
      {
        return result;
      }

      v111 = v9[12];
      v9[12] = *(v8 - 4);
      *(v8 - 4) = v111;
      v112 = *(v9 + 7);
      *(v9 + 7) = *(v8 - 1);
      *(v8 - 1) = v112;
      if (*(v9 + *v110 + 48) >= *(v109 + *v110))
      {
        return result;
      }

      v113 = v9[8];
      v114 = v9[12];
      v9[8] = v114;
      v9[12] = v113;
      v115 = *(v9 + 5);
      v116 = *(v9 + 7);
      *(v9 + 5) = v116;
      *(v9 + 7) = v115;
      if (*(v109 + *v110) >= *(v108 + *v110))
      {
        return result;
      }

      v117 = v9[4];
      v9[4] = v114;
      v9[8] = v117;
      v118 = *(v9 + 3);
      *(v9 + 3) = v116;
      *(v9 + 5) = v118;
      if (*(v108 + *v110) >= *(v9 + *v110))
      {
        return result;
      }

      v119 = *v9;
      *v9 = v114;
      v9[4] = v119;
      v120 = *(v9 + 1);
      *(v9 + 1) = v116;
      goto LABEL_229;
    }

    goto LABEL_10;
  }

  v16 = (v9 + 4);
  v11 = *(a3 + 8);
  v122 = *(v9 + *v11 + 16);
  v123 = *(v10 + *v11);
  if (v122 >= *(v9 + *v11))
  {
    if (v123 >= v122)
    {
      return result;
    }

    v174 = v9[4];
    v9[4] = *(v8 - 4);
    *(v8 - 4) = v174;
    v175 = *(v9 + 3);
    *(v9 + 3) = *(v8 - 1);
    *(v8 - 1) = v175;
    if (*(v16 + *v11) >= *(v9 + *v11))
    {
      return result;
    }

    v176 = *v9;
    *v9 = v9[4];
    v9[4] = v176;
    v120 = *(v9 + 1);
    *(v9 + 1) = *(v9 + 3);
LABEL_229:
    *(v9 + 3) = v120;
    return result;
  }

  LODWORD(v5) = *v9;
  if (v123 >= v122)
  {
    goto LABEL_245;
  }

  *v9 = *(v8 - 4);
  *(v8 - 4) = v5;
LABEL_150:
  v124 = *(v9 + 1);
  *(v9 + 1) = *(v8 - 1);
  *(v8 - 1) = v124;
  return result;
}

int *std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WTF::String>::*> &,std::pair<unsigned int,WTF::String>*,0>(int *result, int *a2, int *a3, int *a4, void *a5)
{
  v5 = *(a2 + *a5);
  v6 = *(a3 + *a5);
  if (v5 >= *(result + *a5))
  {
    if (v6 < v5)
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      v10 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v10;
      if (*(a2 + *a5) < *(result + *a5))
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
        v12 = *(result + 1);
        *(result + 1) = *(a2 + 1);
        *(a2 + 1) = v12;
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 >= v5)
    {
      *result = *a2;
      *a2 = v7;
      v13 = *(result + 1);
      *(result + 1) = *(a2 + 1);
      *(a2 + 1) = v13;
      if (*(a3 + *a5) < *(a2 + *a5))
      {
        *a2 = *a3;
        *a3 = v7;
        *(a2 + 1) = *(a3 + 1);
        *(a3 + 1) = v13;
      }
    }

    else
    {
      *result = *a3;
      *a3 = v7;
      v8 = *(result + 1);
      *(result + 1) = *(a3 + 1);
      *(a3 + 1) = v8;
    }
  }

  if (*(a4 + *a5) < *(a3 + *a5))
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    v15 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 1);
    *(a4 + 1) = v15;
    if (*(a3 + *a5) < *(a2 + *a5))
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v17;
      if (*(a2 + *a5) < *(result + *a5))
      {
        v18 = *result;
        *result = *a2;
        *a2 = v18;
        v19 = *(result + 1);
        *(result + 1) = *(a2 + 1);
        *(a2 + 1) = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WTF::String>::*> &,std::pair<unsigned int,WTF::String>*>(uint64_t a1, WTF::StringImpl *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v22 = a1 + 16;
        v23 = *(a3 + 8);
        v24 = *(a1 + 16 + *v23);
        v25 = *(a2 + *v23 - 16);
        if (v24 < *(a1 + *v23))
        {
          v26 = *a1;
          if (v25 >= v24)
          {
            *a1 = *(a1 + 16);
            *(a1 + 16) = v26;
            v44 = *(a1 + 8);
            *(a1 + 8) = *(a1 + 24);
            *(a1 + 24) = v44;
            if (*(a2 + *v23 - 16) < *(v22 + *v23))
            {
              *(a1 + 16) = *(a2 - 4);
              *(a2 - 4) = v26;
              *(a1 + 24) = *(a2 - 1);
              *(a2 - 1) = v44;
            }

            return 1;
          }

          *a1 = *(a2 - 4);
          *(a2 - 4) = v26;
          goto LABEL_17;
        }

        if (v25 >= v24)
        {
          return 1;
        }

        v35 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 4);
        *(a2 - 4) = v35;
        v36 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v36;
        if (*(v22 + *v23) >= *(a1 + *v23))
        {
          return 1;
        }

        v37 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v37;
        v21 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 24);
        break;
      case 4:
        std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WTF::String>::*> &,std::pair<unsigned int,WTF::String>*,0>(a1, (a1 + 16), (a1 + 32), a2 - 4, *(a3 + 8));
        return 1;
      case 5:
        v8 = a1 + 16;
        v9 = a1 + 32;
        v10 = a1 + 48;
        std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WTF::String>::*> &,std::pair<unsigned int,WTF::String>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), *(a3 + 8));
        v11 = *(a3 + 8);
        if (*(a2 + *v11 - 16) >= *(v10 + *v11))
        {
          return 1;
        }

        v12 = *(a1 + 48);
        *(a1 + 48) = *(a2 - 4);
        *(a2 - 4) = v12;
        v13 = *(a1 + 56);
        *(a1 + 56) = *(a2 - 1);
        *(a2 - 1) = v13;
        if (*(v10 + *v11) >= *(v9 + *v11))
        {
          return 1;
        }

        v14 = *(a1 + 32);
        v15 = *(a1 + 48);
        *(a1 + 32) = v15;
        *(a1 + 48) = v14;
        v16 = *(a1 + 40);
        v17 = *(a1 + 56);
        *(a1 + 40) = v17;
        *(a1 + 56) = v16;
        if (*(v9 + *v11) >= *(v8 + *v11))
        {
          return 1;
        }

        v18 = *(a1 + 16);
        *(a1 + 16) = v15;
        *(a1 + 32) = v18;
        v19 = *(a1 + 24);
        *(a1 + 24) = v17;
        *(a1 + 40) = v19;
        if (*(v8 + *v11) >= *(a1 + *v11))
        {
          return 1;
        }

        v20 = *a1;
        *a1 = v15;
        *(a1 + 16) = v20;
        v21 = *(a1 + 8);
        *(a1 + 8) = v17;
        break;
      default:
        goto LABEL_18;
    }

    *(a1 + 24) = v21;
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (*(a2 + **(a3 + 8) - 16) < *(a1 + **(a3 + 8)))
    {
      v7 = *a1;
      *a1 = *(a2 - 4);
      *(a2 - 4) = v7;
LABEL_17:
      v27 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 1);
      *(a2 - 1) = v27;
    }

    return 1;
  }

LABEL_18:
  v28 = a1 + 16;
  v29 = *(a3 + 8);
  v30 = *(a1 + 16 + *v29);
  v31 = (a1 + 32);
  v32 = *(a1 + 32 + *v29);
  if (v30 >= *(a1 + *v29))
  {
    if (v32 < v30)
    {
      v38 = *(a1 + 16);
      v39 = *(a1 + 32);
      *(a1 + 16) = v39;
      *(a1 + 32) = v38;
      v40 = *(a1 + 24);
      v41 = *(a1 + 40);
      *(a1 + 24) = v41;
      *(a1 + 40) = v40;
      if (*(v28 + *v29) < *(a1 + *v29))
      {
        v42 = *a1;
        *a1 = v39;
        *(a1 + 16) = v42;
        v43 = *(a1 + 8);
        *(a1 + 8) = v41;
        *(a1 + 24) = v43;
      }
    }
  }

  else
  {
    v33 = *a1;
    if (v32 >= v30)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v33;
      v45 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v45;
      if (*(v31 + *v29) < *(v28 + *v29))
      {
        *(a1 + 16) = *(a1 + 32);
        *(a1 + 32) = v33;
        *(a1 + 24) = *(a1 + 40);
        *(a1 + 40) = v45;
      }
    }

    else
    {
      *a1 = *(a1 + 32);
      *(a1 + 32) = v33;
      v34 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 40);
      *(a1 + 40) = v34;
    }
  }

  v46 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v47 = 0;
  v48 = 0;
  while (1)
  {
    if (*(v46 + **(a3 + 8)) < *(v31 + **(a3 + 8)))
    {
      v61[0] = *v46;
      v49 = v46[1];
      v46[1] = 0;
      v62 = v49;
      v50 = v47;
      while (1)
      {
        v51 = a1 + v50;
        *(v51 + 48) = *(a1 + v50 + 32);
        v52 = *(a1 + v50 + 40);
        *(v51 + 40) = 0;
        v53 = *(a1 + v50 + 56);
        *(v51 + 56) = v52;
        if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v53, a2);
        }

        if (v50 == -32)
        {
          break;
        }

        v54 = **(a3 + 8);
        v55 = a1 + v50 + v54;
        v50 -= 16;
        if (*(v61 + v54) >= *(v55 + 16))
        {
          v56 = a1 + v50 + 48;
          goto LABEL_46;
        }
      }

      v56 = a1;
LABEL_46:
      *v56 = v61[0];
      v57 = v62;
      v62 = 0;
      v58 = *(v56 + 8);
      *(v56 + 8) = v57;
      if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v58, a2);
      }

      v59 = v62;
      if (v62)
      {
        if (atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v59, a2);
        }
      }

      if (++v48 == 8)
      {
        return v46 + 2 == a2;
      }
    }

    v31 = v46;
    v47 += 16;
    v46 += 2;
    if (v46 == a2)
    {
      return 1;
    }
  }
}

uint64_t WGSL::bindingTypeForType(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 48);
    if (v1 == 255)
    {
      v2 = -1;
    }

    else
    {
      v2 = *(result + 48);
    }

    switch(v2)
    {
      case 1:
        if (v1 != 1)
        {
          goto LABEL_44;
        }

        result = 1;
        break;
      case 2:
        if (v1 != 2)
        {
          goto LABEL_44;
        }

        result = 1;
        break;
      case 3:
        if (v1 != 3)
        {
          goto LABEL_44;
        }

        result = 1;
        break;
      case 4:
        if (v1 != 4)
        {
          goto LABEL_44;
        }

        result = 1;
        break;
      case 5:
        if (v1 != 5)
        {
          goto LABEL_44;
        }

        result = 1;
        break;
      case 6:
        if (v1 == 6)
        {
          __break(0xC471u);
          JUMPOUT(0x225737634);
        }

        goto LABEL_44;
      case 7:
        if (v1 != 7)
        {
          goto LABEL_44;
        }

        if (*(result + 8) == 7)
        {
          result = 3;
        }

        else
        {
          result = 2;
        }

        break;
      case 8:
        if (v1 != 8)
        {
          goto LABEL_44;
        }

        v3 = *(result + 2);
        if (v3 == 1)
        {
          v4 = 5;
        }

        else
        {
          v4 = 4;
        }

        if (v3 == 2)
        {
          result = 6;
        }

        else
        {
          result = v4;
        }

        break;
      case 9:
        if (v1 != 9)
        {
          goto LABEL_44;
        }

        if (*result == 5)
        {
          result = 3;
        }

        else
        {
          result = 2;
        }

        break;
      case 10:
        if (v1 != 10)
        {
          goto LABEL_44;
        }

        result = 1;
        break;
      case 11:
        if (v1 != 11)
        {
          goto LABEL_44;
        }

        result = 1;
        break;
      case 12:
        if (v1 == 12)
        {
          goto LABEL_40;
        }

        goto LABEL_44;
      case 13:
        if (v1 == 13)
        {
          __break(0xC471u);
          JUMPOUT(0x225737660);
        }

        goto LABEL_44;
      default:
        if (*(result + 48))
        {
LABEL_44:
          mpark::throw_bad_variant_access(result);
        }

        if (*result - 8 >= 6)
        {
LABEL_40:
          result = 1;
        }

        else
        {
          result = dword_225882164[(*result - 8)];
        }

        break;
    }
  }

  return result;
}

int *std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WGSL::AST::StructureMember *>::*> &,std::pair<unsigned int,WGSL::AST::StructureMember *>*,false>(int *result, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v162 = a2 - 3;
  v163 = a2 - 2;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = (a2 - v11) >> 4;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      if (*(a2 + **(a3 + 8) - 16) >= *(v11 + **(a3 + 8)))
      {
        return result;
      }

      v99 = *v11;
      *v11 = *(a2 - 4);
      *(a2 - 4) = v99;
      goto LABEL_134;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 == a2)
        {
          return result;
        }

        v117 = (v11 + 16);
        if ((v11 + 16) == a2)
        {
          return result;
        }

        v118 = 0;
        v119 = *(a3 + 8);
        v120 = v11;
        while (1)
        {
          v122 = *(v120 + *v119);
          v120 = v117;
          if (*(v117 + *v119) < v122)
          {
            v164 = *v117;
            v123 = v118;
            do
            {
              v124 = v11 + v123;
              *(v124 + 16) = *(v11 + v123);
              *(v124 + 24) = *(v11 + v123 + 8);
              if (!v123)
              {
                v121 = v11;
                goto LABEL_140;
              }

              v123 -= 16;
            }

            while (*(&v164 + *v119) < *(v124 + *v119 - 16));
            v121 = v11 + v123 + 16;
LABEL_140:
            *v121 = v164;
            *(v121 + 8) = *(&v164 + 1);
          }

          v117 = v120 + 1;
          v118 += 16;
          if (v120 + 1 == a2)
          {
            return result;
          }
        }
      }

      if (v11 == a2)
      {
        return result;
      }

      v154 = (v11 + 16);
      if ((v11 + 16) == a2)
      {
        return result;
      }

      v21 = 0;
      v14 = *(a3 + 8);
      v63 = (v11 - 16);
      v155 = -16;
      v156 = 16;
      while (1)
      {
        v157 = v21 + v11;
        v21 = v156;
        if (*(v154 + *v14) < *&v157[*v14])
        {
          v164 = *v154;
          v158 = v155;
          v159 = v63;
          do
          {
            *(v159 + 8) = *(v159 + 4);
            *(v159 + 5) = *(v159 + 3);
            if (!v158)
            {
              goto LABEL_194;
            }

            v160 = *(v159-- + *v14);
            v158 += 16;
          }

          while (*(&v164 + *v14) < v160);
          *(v159 + 8) = v164;
          *(v159 + 5) = *(&v164 + 1);
        }

        v156 = (v21 + 1);
        v154 = (v21 + v11 + 16);
        ++v63;
        v155 -= 16;
        if (v154 == a2)
        {
          return result;
        }
      }
    }

    if (!a4)
    {
      if (v11 == a2)
      {
        return result;
      }

      v125 = (v12 - 2) >> 1;
      v126 = *(a3 + 8);
      v127 = v125;
      while (1)
      {
        if (v125 >= v127)
        {
          v129 = (2 * (v127 & 0xFFFFFFFFFFFFFFFLL)) | 1;
          v130 = v11 + 16 * v129;
          if (2 * (v127 & 0xFFFFFFFFFFFFFFFLL) + 2 < v12)
          {
            if (*(v130 + *v126) < *(v130 + 16 + *v126))
            {
              v130 += 16;
              v129 = 2 * (v127 & 0xFFFFFFFFFFFFFFFLL) + 2;
            }

            v131 = v11 + 16 * v127;
            if (*(v130 + *v126) < *(v131 + *v126))
            {
              goto LABEL_150;
            }

LABEL_158:
            v164 = *v131;
            do
            {
              v134 = v130;
              *v131 = *v130;
              *(v131 + 8) = *(v130 + 8);
              if (v125 < v129)
              {
                break;
              }

              v135 = (2 * (v129 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
              v130 = v11 + 16 * v135;
              v136 = 2 * v129 + 2;
              v137 = *v126;
              if (v136 < v12 && *(v130 + v137) < *(v130 + 16 + v137))
              {
                v130 += 16;
                v135 = v136;
              }

              v132 = *(v130 + v137);
              v133 = *(&v164 + v137);
              v131 = v134;
              v129 = v135;
            }

            while (v132 >= v133);
            *v134 = v164;
            *(v134 + 8) = *(&v164 + 1);
            goto LABEL_150;
          }

          v131 = v11 + 16 * v127;
          if (*(v130 + *v126) >= *(v131 + *v126))
          {
            goto LABEL_158;
          }
        }

LABEL_150:
        v128 = v127-- <= 0;
        if (v128)
        {
          do
          {
            v138 = 0;
            v139 = *v11;
            v140 = *(v11 + 8);
            v141 = *(a3 + 8);
            v142 = v11;
            do
            {
              result = (v142 + 16 * v138);
              v143 = result + 4;
              v144 = (2 * v138) | 1;
              v145 = 2 * v138 + 2;
              if (v145 < v12)
              {
                result += 8;
                if (*(v143 + *v141) < *(result + *v141))
                {
                  v143 = result;
                  v144 = v145;
                }
              }

              *v142 = *v143;
              *(v142 + 8) = *(v143 + 1);
              v142 = v143;
              v138 = v144;
            }

            while (v144 <= ((v12 - 2) >> 1));
            if (v143 == (a2 - 1))
            {
              *v143 = v139;
              *(v143 + 1) = v140;
            }

            else
            {
              *v143 = *(a2 - 4);
              *(v143 + 1) = *(a2 - 1);
              *(a2 - 4) = v139;
              *(a2 - 1) = v140;
              v146 = (v143 - v11 + 16) >> 4;
              v128 = v146 < 2;
              v147 = v146 - 2;
              if (!v128)
              {
                v148 = v147 >> 1;
                v149 = v11 + 16 * v148;
                if (*(v149 + *v141) < *(v143 + *v141))
                {
                  v164 = *v143;
                  do
                  {
                    v150 = v149;
                    *v143 = *v149;
                    *(v143 + 1) = *(v149 + 8);
                    if (!v148)
                    {
                      break;
                    }

                    v148 = (v148 - 1) >> 1;
                    v149 = v11 + 16 * v148;
                    v143 = v150;
                  }

                  while (*(v149 + *v141) < *(&v164 + *v141));
                  *v150 = v164;
                  *(v150 + 8) = *(&v164 + 1);
                }
              }
            }

            --a2;
            v128 = v12-- <= 2;
          }

          while (!v128);
          return result;
        }
      }
    }

    v13 = v11 + 16 * (v12 >> 1);
    v14 = *(a3 + 8);
    v15 = *v14;
    v16 = *(v10 + *v14);
    if (v12 < 0x81)
    {
      v20 = *(v15 + v11);
      LODWORD(v21) = *(v15 + v13);
      if (v20 >= v21)
      {
        if (v16 < v20)
        {
          v26 = *v11;
          *v11 = *(a2 - 4);
          *(a2 - 4) = v26;
          v21 = *(v11 + 8);
          *(v11 + 8) = *(a2 - 1);
          *(a2 - 1) = v21;
          LODWORD(v21) = *(v13 + *v14);
          if (*(v11 + *v14) < v21)
          {
            v27 = *v13;
            *v13 = *v11;
            *v11 = v27;
            v21 = *(v13 + 8);
            *(v13 + 8) = *(v11 + 8);
            *(v11 + 8) = v21;
            --a4;
            if ((a5 & 1) == 0)
            {
              goto LABEL_59;
            }

            goto LABEL_60;
          }
        }
      }

      else
      {
        LODWORD(v21) = *v13;
        if (v16 < v20)
        {
          *v13 = *(a2 - 4);
          *(a2 - 4) = v21;
          v21 = *(v13 + 8);
          *(v13 + 8) = *(a2 - 1);
          *(a2 - 1) = v21;
          --a4;
          if ((a5 & 1) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        *v13 = *v11;
        *v11 = v21;
        v38 = *(v13 + 8);
        *(v13 + 8) = *(v11 + 8);
        *(v11 + 8) = v38;
        if (*(v10 + *v14) < *(v11 + *v14))
        {
          *v11 = *(a2 - 4);
          *(a2 - 4) = v21;
          *(v11 + 8) = *(a2 - 1);
          *(a2 - 1) = v38;
        }
      }

      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_60:
      v14 = *(a3 + 8);
      v164 = *v11;
      v63 = (v11 + 16);
      if ((v11 + 16) == a2)
      {
        goto LABEL_194;
      }

      v21 = *v14;
      v64 = *(&v164 + *v14);
      if (*(v63 + *v14) < v64)
      {
        v63 = (v11 + 32);
        while (v63 != a2)
        {
          v65 = *(v21 + v63++);
          if (v65 >= v64)
          {
            --v63;
            v66 = v21 - 1;
            v67 = a2;
            while (v67 != v11)
            {
              v21 = v67 - 1;
              v68 = *(v66 + v67--);
              if (v68 < v64)
              {
                goto LABEL_73;
              }
            }

            goto LABEL_194;
          }
        }

        goto LABEL_194;
      }

      v69 = v21 - 1;
      v21 = a2;
      while (v63 < v21)
      {
        v70 = v21 - 1;
        v71 = *(v69 + v21--);
        if (v71 < v64)
        {
          v21 = v70;
          break;
        }
      }

LABEL_73:
      v11 = v63;
      if (v63 < v21)
      {
        v72 = v63;
        v73 = v21;
LABEL_75:
        v74 = *v72;
        *v72 = *v73;
        *v73 = v74;
        v75 = v72[1];
        v72[1] = *(v73 + 1);
        *(v73 + 1) = v75;
        v11 = (v72 + 2);
        if (v72 + 2 != a2)
        {
          v76 = *v14;
          v77 = *(&v164 + *v14);
          if (*(v11 + *v14) >= v77)
          {
LABEL_81:
            v80 = v76 - 1;
            while (v73 != v9)
            {
              v81 = (v73 - 1);
              v82 = *(v80 + v73--);
              if (v82 < v77)
              {
                v72 = v11;
                v73 = v81;
                if (v11 < v81)
                {
                  goto LABEL_75;
                }

                goto LABEL_85;
              }
            }
          }

          else
          {
            v78 = (v72 + 4);
            while (v78 != a2)
            {
              v79 = *(v76 + v78++);
              if (v79 >= v77)
              {
                v11 = (v78 - 1);
                goto LABEL_81;
              }
            }
          }
        }

        goto LABEL_194;
      }

LABEL_85:
      if (v11 - 16 != v9)
      {
        *v9 = *(v11 - 16);
        *(v9 + 8) = *(v11 - 8);
      }

      *(v11 - 16) = v164;
      *(v11 - 8) = *(&v164 + 1);
      if (v63 < v21)
      {
LABEL_90:
        result = std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WGSL::AST::StructureMember *>::*> &,std::pair<unsigned int,WGSL::AST::StructureMember *>*,false>(v9, v11 - 16, a3, a4, a5 & 1);
        a5 = 0;
      }

      else
      {
        v83 = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WGSL::AST::StructureMember *>::*> &,std::pair<unsigned int,WGSL::AST::StructureMember *>*>(v9, (v11 - 16), a3);
        result = std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WGSL::AST::StructureMember *>::*> &,std::pair<unsigned int,WGSL::AST::StructureMember *>*>(v11, a2, a3);
        if (result)
        {
          a2 = (v11 - 16);
          if (v83)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v83)
        {
          goto LABEL_90;
        }
      }
    }

    else
    {
      v17 = *(v15 + v13);
      if (v17 >= *(v15 + v11))
      {
        if (v16 < v17)
        {
          v22 = *v13;
          *v13 = *(a2 - 4);
          *(a2 - 4) = v22;
          v23 = *(v13 + 8);
          *(v13 + 8) = *(a2 - 1);
          *(a2 - 1) = v23;
          if (*(v13 + *v14) < *(v11 + *v14))
          {
            v24 = *v11;
            *v11 = *v13;
            *v13 = v24;
            v25 = *(v11 + 8);
            *(v11 + 8) = *(v13 + 8);
            *(v13 + 8) = v25;
          }
        }
      }

      else
      {
        v18 = *v11;
        if (v16 >= v17)
        {
          *v11 = *v13;
          *v13 = v18;
          v28 = *(v11 + 8);
          *(v11 + 8) = *(v13 + 8);
          *(v13 + 8) = v28;
          if (*(v10 + *v14) < *(v13 + *v14))
          {
            *v13 = *(a2 - 4);
            *(a2 - 4) = v18;
            *(v13 + 8) = *(a2 - 1);
            *(a2 - 1) = v28;
          }
        }

        else
        {
          *v11 = *(a2 - 4);
          *(a2 - 4) = v18;
          v19 = *(v11 + 8);
          *(v11 + 8) = *(a2 - 1);
          *(a2 - 1) = v19;
        }
      }

      v29 = (v13 - 16);
      v30 = *(v13 - 16 + *v14);
      v31 = *(v163 + *v14);
      if (v30 >= *(v11 + 16 + *v14))
      {
        if (v31 < v30)
        {
          v34 = *v29;
          *v29 = *(a2 - 8);
          *(a2 - 8) = v34;
          v35 = *(v13 - 8);
          *(v13 - 8) = *(a2 - 3);
          *(a2 - 3) = v35;
          if (*(v29 + *v14) < *(v11 + 16 + *v14))
          {
            v36 = *(v11 + 16);
            *(v11 + 16) = *v29;
            *v29 = v36;
            v37 = *(v11 + 24);
            *(v11 + 24) = *(v13 - 8);
            *(v13 - 8) = v37;
          }
        }
      }

      else
      {
        v32 = *(v11 + 16);
        if (v31 >= v30)
        {
          *(v11 + 16) = *v29;
          *v29 = v32;
          v39 = *(v11 + 24);
          *(v11 + 24) = *(v13 - 8);
          *(v13 - 8) = v39;
          if (*(v163 + *v14) < *(v29 + *v14))
          {
            *v29 = *(a2 - 8);
            *(a2 - 8) = v32;
            *(v13 - 8) = *(a2 - 3);
            *(a2 - 3) = v39;
          }
        }

        else
        {
          *(v11 + 16) = *(a2 - 8);
          *(a2 - 8) = v32;
          v33 = *(v11 + 24);
          *(v11 + 24) = *(a2 - 3);
          *(a2 - 3) = v33;
        }
      }

      v40 = (v13 + 16);
      v41 = *(v13 + 16 + *v14);
      v42 = *(v162 + *v14);
      if (v41 >= *(v11 + 32 + *v14))
      {
        if (v42 < v41)
        {
          v45 = *v40;
          *v40 = *(a2 - 12);
          *(a2 - 12) = v45;
          v46 = *(v13 + 24);
          *(v13 + 24) = *(a2 - 5);
          *(a2 - 5) = v46;
          if (*(v40 + *v14) < *(v11 + 32 + *v14))
          {
            v47 = *(v11 + 32);
            *(v11 + 32) = *v40;
            *v40 = v47;
            v48 = *(v11 + 40);
            *(v11 + 40) = *(v13 + 24);
            *(v13 + 24) = v48;
          }
        }
      }

      else
      {
        v43 = *(v11 + 32);
        if (v42 >= v41)
        {
          *(v11 + 32) = *v40;
          *v40 = v43;
          v49 = *(v11 + 40);
          *(v11 + 40) = *(v13 + 24);
          *(v13 + 24) = v49;
          if (*(v162 + *v14) < *(v40 + *v14))
          {
            *v40 = *(a2 - 12);
            *(a2 - 12) = v43;
            *(v13 + 24) = *(a2 - 5);
            *(a2 - 5) = v49;
          }
        }

        else
        {
          *(v11 + 32) = *(a2 - 12);
          *(a2 - 12) = v43;
          v44 = *(v11 + 40);
          *(v11 + 40) = *(a2 - 5);
          *(a2 - 5) = v44;
        }
      }

      v50 = *(v13 + *v14);
      v51 = *(v40 + *v14);
      if (v50 >= *(v29 + *v14))
      {
        v52 = *v13;
        if (v51 < v50)
        {
          v54 = *v40;
          *v13 = *v40;
          *v40 = v52;
          v55 = *(v13 + 8);
          v56 = *(v13 + 24);
          *(v13 + 8) = v56;
          *(v13 + 24) = v55;
          if (*(v13 + *v14) >= *(v29 + *v14))
          {
            v52 = v54;
          }

          else
          {
            v52 = *v29;
            *v29 = v54;
            *v13 = v52;
            v57 = *(v13 - 8);
            *(v13 - 8) = v56;
            *(v13 + 8) = v57;
          }
        }
      }

      else
      {
        v52 = *v29;
        if (v51 >= v50)
        {
          *v29 = *v13;
          *v13 = v52;
          v58 = *(v13 - 8);
          *(v13 - 8) = *(v13 + 8);
          *(v13 + 8) = v58;
          if (*(v40 + *v14) < *(v13 + *v14))
          {
            v59 = *v40;
            *v13 = *v40;
            *v40 = v52;
            *(v13 + 8) = *(v13 + 24);
            *(v13 + 24) = v58;
            v52 = v59;
          }
        }

        else
        {
          *v29 = *v40;
          *v40 = v52;
          v53 = *(v13 - 8);
          *(v13 - 8) = *(v13 + 24);
          *(v13 + 24) = v53;
          v52 = *v13;
        }
      }

      v60 = *v11;
      *v11 = v52;
      *v13 = v60;
      v21 = *(v11 + 8);
      *(v11 + 8) = *(v13 + 8);
      *(v13 + 8) = v21;
      --a4;
      if (a5)
      {
        goto LABEL_60;
      }

LABEL_59:
      v61 = *v14;
      v62 = (v11 + *v14);
      LODWORD(v21) = *(v62 - 4);
      if (v21 < *v62)
      {
        goto LABEL_60;
      }

      v164 = *v11;
      v84 = *(&v164 + v61);
      if (v84 < *(v61 + v10))
      {
        v21 = v61 + 1;
        v85 = v11;
        while (1)
        {
          v63 = (v85 + 16);
          if ((v85 + 16) == a2)
          {
            break;
          }

          v86 = *(v21 + v85);
          v85 += 16;
          if (v84 < v86)
          {
            goto LABEL_99;
          }
        }

LABEL_194:
        __break(1u);
LABEL_195:
        *v9 = *(v9 + 16);
        *(v9 + 16) = v21;
        v161 = *(v9 + 8);
        *(v9 + 8) = *(v9 + 24);
        *(v9 + 24) = v161;
        if (*(v10 + *v63) < *(v14 + *v63))
        {
          *(v9 + 16) = *(a2 - 4);
          *(a2 - 4) = v21;
          *(v9 + 24) = *(a2 - 1);
          *(a2 - 1) = v161;
        }

        return result;
      }

      v87 = (v11 + 16);
      do
      {
        v63 = v87;
        if (v87 >= a2)
        {
          break;
        }

        v88 = *(v61 + v87++);
      }

      while (v84 >= v88);
LABEL_99:
      v21 = a2;
      if (v63 < a2)
      {
        v89 = v61 - 1;
        v90 = a2;
        while (v90 != v11)
        {
          v21 = v90 - 1;
          v91 = *(v89 + v90--);
          if (v84 >= v91)
          {
            goto LABEL_103;
          }
        }

        goto LABEL_194;
      }

LABEL_103:
      if (v63 < v21)
      {
LABEL_104:
        v92 = *v63;
        *v63 = *v21;
        *v21 = v92;
        v93 = *(v63 + 1);
        *(v63 + 1) = *(v21 + 1);
        *(v21 + 1) = v93;
        v11 = (v63 + 1);
        if (v63 + 1 != a2)
        {
          v94 = *v14;
          v95 = *(&v164 + *v14);
          if (v95 < *(v11 + *v14))
          {
LABEL_110:
            v63 = v94 - 1;
            while (v21 != v9)
            {
              v97 = (v21 - 1);
              v98 = *(v63 + v21--);
              if (v95 >= v98)
              {
                v63 = v11;
                v21 = v97;
                if (v11 < v97)
                {
                  goto LABEL_104;
                }

                goto LABEL_116;
              }
            }
          }

          else
          {
            v63 += 2;
            while (v63 != a2)
            {
              v96 = *(v94 + v63++);
              if (v95 < v96)
              {
                v11 = (v63 - 1);
                goto LABEL_110;
              }
            }
          }
        }

        goto LABEL_194;
      }

      v11 = v63;
LABEL_116:
      if (v11 - 16 != v9)
      {
        *v9 = *(v11 - 16);
        *(v9 + 8) = *(v11 - 8);
      }

      a5 = 0;
      *(v11 - 16) = v164;
      *(v11 - 8) = *(&v164 + 1);
    }
  }

  if (v12 == 3)
  {
    v14 = (v11 + 16);
    v63 = *(a3 + 8);
    v114 = *(v11 + 16 + *v63);
    v115 = *(v10 + *v63);
    if (v114 < *(v11 + *v63))
    {
      LODWORD(v21) = *v11;
      if (v115 < v114)
      {
        *v11 = *(a2 - 4);
        *(a2 - 4) = v21;
LABEL_134:
        v116 = *(v11 + 8);
        *(v11 + 8) = *(a2 - 1);
        *(a2 - 1) = v116;
        return result;
      }

      goto LABEL_195;
    }

    if (v115 >= v114)
    {
      return result;
    }

    v151 = *(v11 + 16);
    *(v11 + 16) = *(a2 - 4);
    *(a2 - 4) = v151;
    v152 = *(v11 + 24);
    *(v11 + 24) = *(a2 - 1);
    *(a2 - 1) = v152;
    if (*(v14 + *v63) >= *(v11 + *v63))
    {
      return result;
    }

    v153 = *v11;
    *v11 = *(v11 + 16);
    *(v11 + 16) = v153;
    v112 = *(v11 + 8);
    *(v11 + 8) = *(v11 + 24);
LABEL_184:
    *(v11 + 24) = v112;
    return result;
  }

  if (v12 != 4)
  {
    if (v12 == 5)
    {
      v100 = v11 + 16;
      v101 = v11 + 32;
      result = std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WTF::String>::*> &,std::pair<unsigned int,WTF::String>*,0>(v11, (v11 + 16), (v11 + 32), (v11 + 48), *(a3 + 8));
      v102 = *(a3 + 8);
      if (*(a2 + *v102 - 16) >= *(v11 + 48 + *v102))
      {
        return result;
      }

      v103 = *(v11 + 48);
      *(v11 + 48) = *(a2 - 4);
      *(a2 - 4) = v103;
      v104 = *(v11 + 56);
      *(v11 + 56) = *(a2 - 1);
      *(a2 - 1) = v104;
      if (*(v11 + 48 + *v102) >= *(v101 + *v102))
      {
        return result;
      }

      v105 = *(v11 + 32);
      v106 = *(v11 + 48);
      *(v11 + 32) = v106;
      *(v11 + 48) = v105;
      v107 = *(v11 + 40);
      v108 = *(v11 + 56);
      *(v11 + 40) = v108;
      *(v11 + 56) = v107;
      if (*(v101 + *v102) >= *(v100 + *v102))
      {
        return result;
      }

      v109 = *(v11 + 16);
      *(v11 + 16) = v106;
      *(v11 + 32) = v109;
      v110 = *(v11 + 24);
      *(v11 + 24) = v108;
      *(v11 + 40) = v110;
      if (*(v100 + *v102) >= *(v11 + *v102))
      {
        return result;
      }

      v111 = *v11;
      *v11 = v106;
      *(v11 + 16) = v111;
      v112 = *(v11 + 8);
      *(v11 + 8) = v108;
      goto LABEL_184;
    }

    goto LABEL_10;
  }

  v113 = *(a3 + 8);

  return std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WTF::String>::*> &,std::pair<unsigned int,WTF::String>*,0>(v11, (v11 + 16), (v11 + 32), a2 - 4, v113);
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WGSL::AST::StructureMember *>::*> &,std::pair<unsigned int,WGSL::AST::StructureMember *>*>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v22 = a1 + 16;
        v23 = *(a3 + 8);
        v24 = *(a1 + 16 + *v23);
        v25 = *(a2 + *v23 - 16);
        if (v24 >= *(a1 + *v23))
        {
          if (v25 < v24)
          {
            v35 = *(a1 + 16);
            *(a1 + 16) = *(a2 - 4);
            *(a2 - 4) = v35;
            v36 = *(a1 + 24);
            *(a1 + 24) = *(a2 - 1);
            *(a2 - 1) = v36;
            if (*(v22 + *v23) < *(a1 + *v23))
            {
              v37 = *a1;
              *a1 = *(a1 + 16);
              *(a1 + 16) = v37;
              v38 = *(a1 + 8);
              *(a1 + 8) = *(a1 + 24);
              *(a1 + 24) = v38;
            }
          }

          return 1;
        }

        v26 = *a1;
        if (v25 >= v24)
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v26;
          v45 = *(a1 + 8);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 24) = v45;
          if (*(a2 + *v23 - 16) < *(v22 + *v23))
          {
            *(a1 + 16) = *(a2 - 4);
            *(a2 - 4) = v26;
            *(a1 + 24) = *(a2 - 1);
            *(a2 - 1) = v45;
          }

          return 1;
        }

        *a1 = *(a2 - 4);
        *(a2 - 4) = v26;
        goto LABEL_17;
      case 4:
        std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WTF::String>::*> &,std::pair<unsigned int,WTF::String>*,0>(a1, (a1 + 16), (a1 + 32), a2 - 4, *(a3 + 8));
        return 1;
      case 5:
        v5 = a1 + 16;
        v6 = a1 + 32;
        v7 = a1 + 48;
        std::__sort4[abi:sn200100]<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WTF::String>::*> &,std::pair<unsigned int,WTF::String>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), *(a3 + 8));
        v11 = *(a3 + 8);
        if (*(a2 + *v11 - 16) < *(v7 + *v11))
        {
          v12 = *(a1 + 48);
          *(a1 + 48) = *(a2 - 4);
          *(a2 - 4) = v12;
          v13 = *(a1 + 56);
          *(a1 + 56) = *(a2 - 1);
          *(a2 - 1) = v13;
          if (*(v7 + *v11) < *(v6 + *v11))
          {
            v14 = *(a1 + 32);
            v15 = *(a1 + 48);
            *(a1 + 32) = v15;
            *(a1 + 48) = v14;
            v16 = *(a1 + 40);
            v17 = *(a1 + 56);
            *(a1 + 40) = v17;
            *(a1 + 56) = v16;
            if (*(v6 + *v11) < *(v5 + *v11))
            {
              v18 = *(a1 + 16);
              *(a1 + 16) = v15;
              *(a1 + 32) = v18;
              v19 = *(a1 + 24);
              *(a1 + 24) = v17;
              *(a1 + 40) = v19;
              if (*(v5 + *v11) < *(a1 + *v11))
              {
                v20 = *a1;
                *a1 = v15;
                *(a1 + 16) = v20;
                v21 = *(a1 + 8);
                *(a1 + 8) = v17;
                *(a1 + 24) = v21;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      if (*(a2 + **(a3 + 8) - 16) < *(a1 + **(a3 + 8)))
      {
        v4 = *a1;
        *a1 = *(a2 - 4);
        *(a2 - 4) = v4;
LABEL_17:
        v27 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v27;
      }

      return 1;
    }
  }

  v28 = a1 + 16;
  v29 = *(a3 + 8);
  v30 = *(a1 + 16 + *v29);
  v31 = (a1 + 32);
  v32 = *(a1 + 32 + *v29);
  if (v30 >= *(a1 + *v29))
  {
    if (v32 < v30)
    {
      v39 = *(a1 + 16);
      v40 = *(a1 + 32);
      *(a1 + 16) = v40;
      *(a1 + 32) = v39;
      v41 = *(a1 + 24);
      v42 = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
      if (*(v28 + *v29) < *(a1 + *v29))
      {
        v43 = *a1;
        *a1 = v40;
        *(a1 + 16) = v43;
        v44 = *(a1 + 8);
        *(a1 + 8) = v42;
        *(a1 + 24) = v44;
      }
    }
  }

  else
  {
    v33 = *a1;
    if (v32 >= v30)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v33;
      v46 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v46;
      if (*(v31 + *v29) < *(v28 + *v29))
      {
        *(a1 + 16) = *(a1 + 32);
        *(a1 + 32) = v33;
        *(a1 + 24) = *(a1 + 40);
        *(a1 + 40) = v46;
      }
    }

    else
    {
      *a1 = *(a1 + 32);
      *(a1 + 32) = v33;
      v34 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 40);
      *(a1 + 40) = v34;
    }
  }

  v47 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    if (*(v47 + *v29) < *(v31 + *v29))
    {
      v54 = *v47;
      v51 = v48;
      do
      {
        v52 = a1 + v51;
        *(v52 + 48) = *(a1 + v51 + 32);
        *(v52 + 56) = *(a1 + v51 + 40);
        if (v51 == -32)
        {
          v50 = a1;
          goto LABEL_35;
        }

        v51 -= 16;
      }

      while (*(&v54 + *v29) < *(v52 + *v29 + 16));
      v50 = a1 + v51 + 48;
LABEL_35:
      *v50 = v54;
      *(v50 + 8) = *(&v54 + 1);
      if (++v49 == 8)
      {
        return v47 + 1 == a2;
      }
    }

    v31 = v47;
    v48 += 16;
    if (++v47 == a2)
    {
      return 1;
    }
  }
}