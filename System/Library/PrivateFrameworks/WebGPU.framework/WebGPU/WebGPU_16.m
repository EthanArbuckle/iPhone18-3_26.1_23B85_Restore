unint64_t WTF::Vector<WGSL::EntryPointRewriter::BuiltinMemberOrParameter,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + (a1[3] << 6) <= a3)
  {
    WTF::Vector<WGSL::EntryPointRewriter::BuiltinMemberOrParameter,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    WTF::Vector<WGSL::EntryPointRewriter::BuiltinMemberOrParameter,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return *a1 + v5;
  }
}

unsigned int *WTF::Vector<WGSL::EntryPointRewriter::BuiltinMemberOrParameter,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  v2 = result[2];
  if (v2 + (v2 >> 1) <= v2 + 1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = v2 + (v2 >> 1);
  }

  if (v3 <= a2)
  {
    v3 = a2;
  }

  if (v3 >> 26)
  {
    __break(0xC471u);
  }

  else
  {
    v4 = result;
    v5 = *result;
    if (v3 <= 0x10)
    {
      v6 = 16;
    }

    else
    {
      v6 = v3;
    }

    v7 = result[3];
    result = WTF::fastMalloc((v6 << 6));
    v4[2] = v6;
    *v4 = result;
    if (v7)
    {
      v9 = result;
      v10 = 0;
      v11 = v7 << 6;
      do
      {
        v12 = &v9[v10 / 4];
        *v12 = &unk_2838D3EF8;
        v13 = v5 + v10;
        *(v12 + 2) = *(v5 + v10 + 8);
        *v12 = off_2838D37C0;
        v14 = *(v5 + v10 + 24);
        *(v13 + 3) = 0;
        *(v12 + 6) = v14;
        *(v12 + 5) = 0;
        *(v12 + 6) = 0;
        v15 = *(v5 + v10 + 40);
        *(v13 + 5) = 0;
        *(v12 + 5) = v15;
        LODWORD(v15) = *(v5 + v10 + 48);
        *(v13 + 12) = 0;
        v12[12] = v15;
        LODWORD(v15) = *(v5 + v10 + 52);
        *(v13 + 13) = 0;
        v12[13] = v15;
        *(v12 + 56) = *(v5 + v10 + 56);
        v16 = *(v5 + v10 + 40);
        if (v16)
        {
          *(v13 + 5) = 0;
          *(v13 + 12) = 0;
          WTF::fastFree(v16, v8);
        }

        *v13 = off_2838D37C0;
        result = *(v13 + 3);
        *(v13 + 3) = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v8);
        }

        v10 += 64;
      }

      while (v11 != v10);
    }

    if (v5)
    {
      if (*v4 == v5)
      {
        *v4 = 0;
        v4[2] = 0;
      }

      return WTF::fastFree(v5, v8);
    }
  }

  return result;
}

unint64_t WTF::Vector<WGSL::EntryPointRewriter::MemberOrParameter,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 56 * a1[3] <= a3)
  {
    WTF::Vector<WGSL::EntryPointRewriter::MemberOrParameter,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    WTF::Vector<WGSL::EntryPointRewriter::MemberOrParameter,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return *a1 + v5;
  }
}

unsigned int *WTF::Vector<WGSL::EntryPointRewriter::MemberOrParameter,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  v2 = result[2];
  if (v2 + (v2 >> 1) <= v2 + 1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = v2 + (v2 >> 1);
  }

  if (v3 <= a2)
  {
    v3 = a2;
  }

  if (v3 >= 0x4924925)
  {
    __break(0xC471u);
  }

  else
  {
    v4 = result;
    v5 = *result;
    if (v3 <= 0x10)
    {
      v3 = 16;
    }

    v6 = result[3];
    v7 = 56 * v3;
    result = WTF::fastMalloc((56 * v3));
    v4[2] = v7 / 0x38;
    *v4 = result;
    if (v6)
    {
      v9 = result;
      v10 = 56 * v6;
      v11 = v5 + 40;
      v12 = v5;
      v13 = result;
      do
      {
        *v13 = &unk_2838D3EF8;
        *(v13 + 2) = *(v11 - 2);
        *v13 = off_2838D37C0;
        v14 = *(v11 - 1);
        *(v11 - 2) = 0;
        *(v13 + 6) = v14;
        *(v13 + 5) = 0;
        *(v13 + 6) = 0;
        v15 = *v11;
        *v11 = 0;
        *(v13 + 5) = v15;
        LODWORD(v15) = *(v11 + 2);
        *(v11 + 2) = 0;
        v13[12] = v15;
        LODWORD(v15) = *(v11 + 3);
        *(v11 + 3) = 0;
        v13[13] = v15;
        v16 = *v11;
        if (*v11)
        {
          *v11 = 0;
          *(v11 + 2) = 0;
          WTF::fastFree(v16, v8);
        }

        *(v11 - 5) = off_2838D37C0;
        result = *(v11 - 2);
        *(v11 - 2) = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v8);
        }

        v9 += 14;
        v11 += 56;
        v12 = (v12 + 56);
        v13 += 14;
        v10 -= 56;
      }

      while (v10);
    }

    if (v5)
    {
      if (*v4 == v5)
      {
        *v4 = 0;
        v4[2] = 0;
      }

      return WTF::fastFree(v5, v8);
    }
  }

  return result;
}

WTF::StringImpl *WGSL::GraphBuilder::visit(WGSL::GraphBuilder *this, const WTF::StringImpl **a2)
{
  result = WTF::HashMap<WTF::String,WGSL::Empty,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Empty>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::Empty const&>(v10, (*(this + 5) + 8), a2 + 7);
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

WTF::StringImpl *WGSL::GraphBuilder::visit(WGSL::GraphBuilder *this, WGSL::AST::VariableStatement *a2)
{
  result = WTF::HashMap<WTF::String,WGSL::Empty,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Empty>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::Empty const&>(v7, (*(this + 5) + 8), (*(a2 + 3) + 48));
  if ((*(this + 32) & 1) == 0)
  {
    v5 = *(a2 + 3);
    v6 = *(*this + 64);

    return v6(this, v5);
  }

  return result;
}

atomic_uint *WGSL::GraphBuilder::visit(WGSL::GraphBuilder *this, WGSL::AST::Expression *a2)
{
  v3 = *(this + 24);
  *(this + 24) = v3 + 1;
  if ((v3 + 1) < 0x201)
  {
    result = WGSL::AST::Visitor::visit(this, a2);
LABEL_3:
    *(this + 24) = v3;
    return result;
  }

  WTF::String::number(0x200);
  WTF::makeString<WTF::ASCIILiteral,WTF::String>("reached maximum expression depth of ", 37, &v10, &v11);
  v6 = v11;
  v11 = 0;
  v12 = v6;
  v13 = *(a2 + 8);
  WGSL::AST::Visitor::setError(this, &v12);
  v8 = v12;
  v12 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = v11;
  v11 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  result = v10;
  v10 = 0;
  if (!result || atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    goto LABEL_3;
  }

  result = WTF::StringImpl::destroy(result, v7);
  *(this + 24) = v3;
  return result;
}

WTF::StringImpl *WGSL::AST::Visitor::setError(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v6 = *(a2 + 8);
  v5 = v2;
  v7 = 1;
  result = std::optional<WGSL::CompilationMessage>::swap[abi:sn200100](&v5, (a1 + 8));
  if (v7 == 1)
  {
    result = v5;
    v5 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  return result;
}

unint64_t WTF::makeString<WTF::ASCIILiteral,WTF::String>@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    v5 = a2 - 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 >> 31)
  {
    goto LABEL_16;
  }

  v7 = *a3;
  if (*a3)
  {
    v8 = *(v7 + 4);
    if (((v8 | v5) & 0x80000000) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
    if ((v5 & 0x80000000) != 0)
    {
LABEL_15:
      *a4 = 0;
      goto LABEL_16;
    }
  }

  v9 = (v5 + v8);
  if (__OFADD__(v5, v8))
  {
    goto LABEL_15;
  }

  if (!v7)
  {
    result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v9, 1, a1, v5, 0, a4);
    if (*a4)
    {
      return result;
    }

LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x2257162ECLL);
  }

  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v9, (*(v7 + 16) >> 2) & 1, a1, v5, v7, a4);
  if (!*a4)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t WGSL::GraphBuilder::visit(uint64_t this, WGSL::AST::IdentifierExpression *a2, const WTF::StringImpl *a3)
{
  v4 = this;
  v5 = *(this + 40);
  do
  {
    v6 = v5[1];
    if (v6)
    {
      v7 = *(a2 + 11);
      if (v7 == -1)
      {
        goto LABEL_69;
      }

      if (!v7)
      {
        __break(0xC471u);
        JUMPOUT(0x2257166E4);
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
        this = *(v6 + 16 * v12);
        if (this != -1)
        {
          if (!this)
          {
            goto LABEL_16;
          }

          this = WTF::equal(this, *(a2 + 11), a3);
          if (this)
          {
            break;
          }
        }

        ++i;
      }

      v13 = v5[1];
      if (!v13 || v6 + 16 * v12 != v13 + 16 * *(v13 - 4))
      {
        return this;
      }
    }

LABEL_16:
    v5 = *v5;
  }

  while (v5);
  v14 = *(v4 + 80);
  v15 = *(v14 + 8);
  if (!v15)
  {
    return this;
  }

  v16 = *(a2 + 11);
  if (v16 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x225716704);
  }

  if (!v16)
  {
LABEL_69:
    __break(0xC471u);
    JUMPOUT(0x2257166C4);
  }

  v17 = *(v15 - 8);
  v18 = *(v16 + 4);
  if (v18 < 0x100)
  {
    v19 = WTF::StringImpl::hashSlowCase(v16);
  }

  else
  {
    v19 = v18 >> 8;
  }

  for (j = 0; ; v19 = j + v21)
  {
    v21 = v19 & v17;
    this = *(v15 + 16 * v21);
    if (this != -1)
    {
      if (!this)
      {
        v23 = *(v14 + 8);
        if (!v23)
        {
          return this;
        }

        v24 = *(v23 - 4);
        v22 = v23 + 16 * v24;
        goto LABEL_32;
      }

      this = WTF::equal(this, *(a2 + 11), a3);
      if (this)
      {
        break;
      }
    }

    ++j;
  }

  v22 = v15 + 16 * v21;
  v23 = *(v14 + 8);
  if (!v23)
  {
    goto LABEL_33;
  }

  v24 = *(v23 - 4);
LABEL_32:
  v23 += 16 * v24;
LABEL_33:
  if (v23 == v22)
  {
    return this;
  }

  v25 = *(v22 + 8);
  if (!v25)
  {
    return this;
  }

  v27 = *(v4 + 80);
  v26 = *(v4 + 88);
  v29 = (v27 + 16);
  v28 = *(v27 + 16);
  if (v28 || (WTF::HashTable<WTF::ListHashSetNode<WGSL::Graph::Edge> *,WTF::ListHashSetNode<WGSL::Graph::Edge> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WGSL::Graph::EdgeHash>,WTF::HashTraits<WTF::ListHashSetNode<WGSL::Graph::Edge> *>,WTF::HashTraits<WTF::ListHashSetNode<WGSL::Graph::Edge> *>,WTF::FastMalloc>::rehash(v29, 8u, 0), (v28 = *v29) != 0))
  {
    v30 = *(v28 - 8);
  }

  else
  {
    v30 = 0;
  }

  v31 = 0;
  v32 = (~(v26 << 32) + v26) ^ ((~(v26 << 32) + v26) >> 22);
  v33 = 9 * ((v32 + ~(v32 << 13)) ^ ((v32 + ~(v32 << 13)) >> 8));
  v34 = (v33 ^ (v33 >> 15)) + ~((v33 ^ (v33 >> 15)) << 27);
  v35 = (~(v25 << 32) + v25) ^ ((~(v25 << 32) + v25) >> 22);
  v36 = 9 * ((v35 + ~(v35 << 13)) ^ ((v35 + ~(v35 << 13)) >> 8));
  v37 = (v36 ^ (v36 >> 15)) + ~((v36 ^ (v36 >> 15)) << 27);
  v38 = (0xD7862706ELL * (95187966 * ((v37 >> 31) ^ v37) + 277951225 * ((v34 >> 31) ^ v34))) >> 4;
  for (k = 1; ; ++k)
  {
    v40 = v38 & v30;
    v41 = (v28 + 8 * v40);
    v42 = *v41;
    if (*v41 == -1)
    {
      v31 = (v28 + 8 * v40);
      goto LABEL_40;
    }

    if (!v42)
    {
      break;
    }

    if (*v42 == v26 && v42[1] == v25)
    {
      goto LABEL_63;
    }

LABEL_40:
    LODWORD(v38) = k + v40;
  }

  if (v31)
  {
    *v31 = 0;
    --*(*v29 - 16);
    v41 = v31;
  }

  v44 = WTF::fastMalloc(0x20);
  *v44 = v26;
  v44[1] = v25;
  v44[2] = 0;
  v44[3] = 0;
  *v41 = v44;
  v45 = *v29;
  if (*v29)
  {
    v46 = *(v45 - 16);
    v47 = *(v45 - 12) + 1;
    *(v45 - 12) = v47;
    v48 = (v46 + v47);
    v49 = *(v45 - 4);
    if (v49 <= 0x400)
    {
      goto LABEL_53;
    }

LABEL_57:
    if (v49 <= 2 * v48)
    {
LABEL_58:
      v50 = v49 << (6 * v47 >= (2 * v49));
      goto LABEL_59;
    }
  }

  else
  {
    v47 = 1;
    MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
    v48 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
    v49 = MEMORY[0xFFFFFFFFFFFFFFFC];
    if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
    {
      goto LABEL_57;
    }

LABEL_53:
    if (3 * v49 <= 4 * v48)
    {
      if (v49)
      {
        goto LABEL_58;
      }

      v50 = 8;
LABEL_59:
      v41 = WTF::HashTable<WTF::ListHashSetNode<WGSL::Graph::Edge> *,WTF::ListHashSetNode<WGSL::Graph::Edge> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WGSL::Graph::EdgeHash>,WTF::HashTraits<WTF::ListHashSetNode<WGSL::Graph::Edge> *>,WTF::HashTraits<WTF::ListHashSetNode<WGSL::Graph::Edge> *>,WTF::FastMalloc>::rehash(v29, v50, v41);
      v44 = *v41;
    }
  }

  v51 = *(v27 + 32);
  v44[2] = v51;
  v44[3] = 0;
  if (!v51)
  {
    v51 = v27;
  }

  *(v51 + 24) = v44;
  *(v27 + 32) = v44;
  v42 = *v41;
LABEL_63:
  WTF::ListHashSet<WGSL::Graph::Edge,WGSL::Graph::EdgeHash>::add(v52, (v26 + 40), v42);
  return WTF::ListHashSet<WGSL::Graph::Edge,WGSL::Graph::EdgeHash>::add(v52, (v25 + 16), v42);
}

uint64_t WGSL::reorderGlobals@<X0>(WGSL *this@<X0>, WGSL::ShaderModule *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = this;
  v111[5] = *MEMORY[0x277D85DE8];
  v5 = *(this + 19);
  if (!v5)
  {
    memset(v104, 0, sizeof(v104));
    v102 = 0;
    v103 = 0;
    goto LABEL_69;
  }

  v6 = v5 << 6;
  v7 = WTF::fastMalloc(((*(this + 19) << 6) | 8));
  *v7 = v5;
  v8 = 16;
  do
  {
    v9 = v7 + v8;
    *(v9 + 6) = 0;
    *(v9 + 1) = 0uLL;
    *(v9 + 2) = 0uLL;
    *v9 = 0uLL;
    v8 += 64;
    v6 -= 64;
  }

  while (v6);
  v10 = *(v3 + 19);
  v103 = 0;
  v104[0] = v7;
  memset(&v104[1], 0, 32);
  v102 = 0;
  if (!v10)
  {
LABEL_69:
    v63 = (v3 + 64);
    if (*(v3 + 18))
    {
      if (*(v3 + 19))
      {
        *(v3 + 19) = 0;
      }

      v64 = *v63;
      if (*v63)
      {
        *(v3 + 8) = 0;
        *(v3 + 18) = 0;
        WTF::fastFree(v64, a2);
      }
    }

    v106 = 0;
    operator new();
  }

  if (v10 >> 29)
  {
    __break(0xC471u);
LABEL_139:
    JUMPOUT(0x225717638);
  }

  v11 = WTF::fastMalloc((8 * v10));
  LODWORD(v103) = v10;
  v102 = v11;
  v12 = *(v3 + 19);
  if (!v12)
  {
    goto LABEL_69;
  }

  v13 = v11;
  v14 = v3;
  v15 = 0;
  v98 = v14;
  v99 = a3;
  v16 = *(v14 + 8);
  v100 = &v16[v12];
LABEL_10:
  v20 = *v16;
  v21 = (*(**v16 + 16))(*v16);
  if (v21 == 15)
  {
    goto LABEL_24;
  }

  v22 = (*(*v20 + 24))(v20);
  v24 = v104[1];
  if (!v104[1])
  {
    goto LABEL_24;
  }

  v25 = v22;
  v26 = *(v22 + 24);
  if (v26 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x225717710);
  }

  if (!v26)
  {
    __break(0xC471u);
    JUMPOUT(0x225717730);
  }

  v27 = *(v104[1] - 2);
  v28 = *(v26 + 4);
  v29 = v28 < 0x100 ? WTF::StringImpl::hashSlowCase(v26) : v28 >> 8;
  for (i = 0; ; v29 = i + v31)
  {
    v31 = v29 & v27;
    v32 = *(v24 + 2 * v31);
    if (v32 != -1)
    {
      if (!v32)
      {
        goto LABEL_24;
      }

      if (WTF::equal(v32, *(v25 + 24), v23))
      {
        break;
      }
    }

    ++i;
  }

  if (v104[1] && v24 + 16 * v31 == v104[1] + 16 * *(v104[1] - 1))
  {
LABEL_24:
    if (v15 >= *v104[0])
    {
      __break(0xC471u);
      JUMPOUT(0x225717690);
    }

    v33 = v104[0] + 64 * v15;
    *(v33 + 2) = v15;
    v34 = v33 + 8;
    v36 = v34[2];
    v35 = v34[3];
    v34[1] = v20;
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = 0;
    if (v35)
    {
      do
      {
        v37 = *(v35 + 3);
        WTF::fastFree(v35, a2);
        v35 = v37;
      }

      while (v37);
    }

    if (v36)
    {
      WTF::fastFree((v36 - 16), a2);
    }

    v39 = v34[5];
    v38 = v34[6];
    v34[5] = 0;
    v34[6] = 0;
    v34[7] = 0;
    if (v38)
    {
      do
      {
        v40 = *(v38 + 3);
        WTF::fastFree(v38, a2);
        v38 = v40;
      }

      while (v40);
    }

    if (v39)
    {
      WTF::fastFree((v39 - 16), a2);
    }

    if (v15 >= *v104[0])
    {
      __break(0xC471u);
      JUMPOUT(0x2257176B0);
    }

    v41 = (v104[0] + 64 * v15 + 8);
    if (v21 == 15)
    {
      goto LABEL_66;
    }

    v42 = (*(*v20 + 24))(v20);
    v44 = *(v42 + 24);
    if (v44 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x2257176D0);
    }

    if (!v44)
    {
      __break(0xC471u);
      JUMPOUT(0x2257176F0);
    }

    v45 = v42;
    v46 = v104[1];
    if (v104[1] || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::AST::Function *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::AST::Function *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::AST::Function *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(&v104[1], 8u), (v46 = v104[1]) != 0))
    {
      v47 = *(v46 - 2);
      v48 = *(v45 + 24);
      v49 = *(v48 + 4);
      if (v49 >= 0x100)
      {
LABEL_40:
        v50 = v49 >> 8;
LABEL_43:
        v51 = 0;
        for (j = 1; ; ++j)
        {
          v53 = v50 & v47;
          v54 = v46 + 16 * (v50 & v47);
          v55 = *v54;
          if (*v54 == -1)
          {
            v51 = v46 + 16 * v53;
          }

          else
          {
            if (!v55)
            {
              if (v51)
              {
                v55 = 0;
                *v51 = 0;
                *(v51 + 1) = 0;
                --*(v104[1] - 4);
                v54 = v51;
              }

              v56 = *(v45 + 24);
              if (v56)
              {
                atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
                v55 = *v54;
              }

              *v54 = v56;
              if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v55, a2);
              }

              *(v54 + 1) = v41;
              v57 = v104[1];
              if (v104[1])
              {
                v58 = *(v104[1] - 4);
                v59 = *(v104[1] - 3) + 1;
                *(v104[1] - 3) = v59;
                v60 = (v58 + v59);
                v61 = *(v57 - 1);
                if (v61 <= 0x400)
                {
                  goto LABEL_59;
                }

LABEL_63:
                if (v61 <= 2 * v60)
                {
LABEL_64:
                  v62 = v61 << (6 * v59 >= (2 * v61));
                  goto LABEL_65;
                }
              }

              else
              {
                v59 = 1;
                MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
                v60 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
                v61 = MEMORY[0xFFFFFFFFFFFFFFFC];
                if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
                {
                  goto LABEL_63;
                }

LABEL_59:
                if (3 * v61 <= 4 * v60)
                {
                  if (v61)
                  {
                    goto LABEL_64;
                  }

                  v62 = 8;
LABEL_65:
                  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::AST::Function *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::AST::Function *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::AST::Function *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(&v104[1], v62);
                }
              }

LABEL_66:
              v107 = v41;
              v18 = HIDWORD(v103);
              if (HIDWORD(v103) == v103)
              {
                v17 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v102, HIDWORD(v103) + 1, &v107);
                v18 = HIDWORD(v103);
                v13 = v102;
                *(v102 + HIDWORD(v103)) = *v17;
              }

              else
              {
                v13 = v102;
                *(v102 + HIDWORD(v103)) = v41;
              }

              ++v15;
              v19 = v18 + 1;
              HIDWORD(v103) = v19;
              if (++v16 != v100)
              {
                goto LABEL_10;
              }

              v3 = v98;
              if (v19)
              {
                v107 = &unk_2838D37E8;
                LOBYTE(v108) = 0;
                v109 = 0;
                memset(v110, 0, sizeof(v110));
                WGSL::ContextProvider<WGSL::Empty>::ContextScope::ContextScope(v111, v110);
              }

              goto LABEL_69;
            }

            if (WTF::equal(v55, *(v45 + 24), v43))
            {
              goto LABEL_66;
            }
          }

          v50 = j + v53;
        }
      }
    }

    else
    {
      v47 = 0;
      v48 = *(v45 + 24);
      v49 = *(v48 + 4);
      if (v49 >= 0x100)
      {
        goto LABEL_40;
      }
    }

    v50 = WTF::StringImpl::hashSlowCase(v48);
    goto LABEL_43;
  }

  v107 = 0;
  v87 = *((*(*v20 + 24))(v20) + 24);
  if (v87)
  {
    atomic_fetch_add_explicit(v87, 2u, memory_order_relaxed);
    v101 = v87;
    v88 = *(v87 + 4);
    v89 = v99;
    if (v88 < 0)
    {
      goto LABEL_130;
    }

    v90 = __OFADD__(v88, 1);
    v91 = v88 + 1;
    if (v90)
    {
      goto LABEL_130;
    }
  }

  else
  {
    v101 = 0;
    v89 = v99;
    v91 = 1;
  }

  if (__OFADD__(v91, 18))
  {
LABEL_130:
    v105[0] = 0;
LABEL_131:
    __break(0xC471u);
    goto LABEL_139;
  }

  v92 = !v87 || (*(v87 + 16) & 4) != 0;
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<char,void>>((v91 + 18), v92, "redeclaration of '", 0x12uLL, v87, 39, v105);
  v93 = v105[0];
  if (!v105[0])
  {
    goto LABEL_131;
  }

  v94 = v20[1];
  v95 = v20[2];
  v105[0] = 0;
  v96 = WTF::fastMalloc(0x18);
  atomic_fetch_add_explicit(v93, 2u, memory_order_relaxed);
  *v96 = v93;
  v96[1] = v94;
  v96[2] = v95;
  if (atomic_fetch_add_explicit(v93, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v93, v65);
  }

  v97 = v105[0];
  v105[0] = 0;
  if (v97 && atomic_fetch_add_explicit(v97, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v97, v65);
  }

  if (v101 && atomic_fetch_add_explicit(v101, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v101, v65);
  }

  if (v13)
  {
    v102 = 0;
    LODWORD(v103) = 0;
    WTF::fastFree(v13, v65);
  }

  v66 = v104[3];
  if (v104[3])
  {
    do
    {
      v67 = *(v66 + 3);
      WTF::fastFree(v66, v65);
      v66 = v67;
    }

    while (v67);
  }

  if (v104[2])
  {
    WTF::fastFree((v104[2] - 16), v65);
  }

  v68 = v104[1];
  if (v104[1])
  {
    v69 = *(v104[1] - 1);
    if (v69)
    {
      v70 = v104[1];
      do
      {
        v71 = *v70;
        if (*v70 != -1)
        {
          *v70 = 0;
          if (v71)
          {
            if (atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v71, v65);
            }
          }
        }

        v70 += 2;
        --v69;
      }

      while (v69);
    }

    WTF::fastFree((v68 - 16), v65);
  }

  v72 = v104[0];
  v104[0] = 0;
  if (v72)
  {
    v73 = *v72;
    if (v73)
    {
      v74 = v72 + 64 * v73 + 8;
      v75 = (v72 + 8);
      do
      {
        v76 = v75[6];
        if (v76)
        {
          do
          {
            v77 = *(v76 + 3);
            WTF::fastFree(v76, v65);
            v76 = v77;
          }

          while (v77);
        }

        v78 = v75[5];
        if (v78)
        {
          WTF::fastFree((v78 - 16), v65);
        }

        v79 = v75[3];
        if (v79)
        {
          do
          {
            v80 = *(v79 + 3);
            WTF::fastFree(v79, v65);
            v79 = v80;
          }

          while (v80);
        }

        v81 = v75[2];
        if (v81)
        {
          WTF::fastFree((v81 - 16), v65);
        }

        v75 += 8;
      }

      while (v75 != v74);
    }

    WTF::fastFree(v72, v65);
  }

  v82 = WTF::fastMalloc(0x18);
  *(v89 + 8) = 0x100000001;
  *v89 = v82;
  v84 = *v96;
  if (*v96)
  {
    atomic_fetch_add_explicit(v84, 2u, memory_order_relaxed);
  }

  *v82 = v84;
  *(v82 + 8) = *(v96 + 1);
  *(v89 + 16) = 0;
  *(v89 + 24) = 0;
  *(v89 + 32) = 1;
  v85 = *v96;
  *v96 = 0;
  if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v85, v83);
  }

  return WTF::fastFree(v96, v83);
}

void WGSL::GraphBuilder::~GraphBuilder(WGSL::GraphBuilder *this, WTF::StringImpl *a2)
{
  WGSL::AST::ScopedVisitor<WGSL::Empty>::~ScopedVisitor(this, a2);

  JUMPOUT(0x22AA68560);
}

void WGSL::AST::ScopedVisitor<WGSL::Empty>::visit(uint64_t a1)
{
  WGSL::ContextProvider<WGSL::Empty>::ContextScope::ContextScope(&v1, (a1 + 40));
}

{
  WGSL::ContextProvider<WGSL::Empty>::ContextScope::ContextScope(&v1, (a1 + 40));
}

{
  WGSL::ContextProvider<WGSL::Empty>::ContextScope::ContextScope(&v1, (a1 + 40));
}

{
  WGSL::ContextProvider<WGSL::Empty>::ContextScope::ContextScope(&v1, (a1 + 40));
}

uint64_t WGSL::AST::ScopedVisitor<WGSL::Empty>::~ScopedVisitor(uint64_t result, WTF::StringImpl *a2)
{
  v2 = *(result + 64);
  *v2 = *(result + 72);
  v3 = *(v2 + 20);
  if (v3)
  {
    v4 = result;
    v5 = v3 - 1;
    v6 = *(v2 + 8);
    v7 = *(v6 + 8 * v5);
    *(v6 + 8 * v5) = 0;
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v9 = *(v8 - 4);
        if (v9)
        {
          v10 = *(v7 + 8);
          do
          {
            v11 = *v10;
            if (*v10 != -1)
            {
              *v10 = 0;
              if (v11)
              {
                if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v11, a2);
                }
              }
            }

            v10 += 2;
            --v9;
          }

          while (v9);
        }

        WTF::fastFree((v8 - 16), a2);
      }

      MEMORY[0x22AA68560](v7, 0x60C405C6656D0);
    }

    *(v2 + 20) = v5;
    v12 = *(v4 + 60);
    v13 = *(v4 + 48);
    if (v12)
    {
      v14 = (v13 + 8 * v12);
      do
      {
        v15 = *v13;
        *v13 = 0;
        if (v15)
        {
          v16 = *(v15 + 8);
          if (v16)
          {
            v17 = *(v16 - 4);
            if (v17)
            {
              v18 = *(v15 + 8);
              do
              {
                v19 = *v18;
                if (*v18 != -1)
                {
                  *v18 = 0;
                  if (v19)
                  {
                    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v19, a2);
                    }
                  }
                }

                v18 += 2;
                --v17;
              }

              while (v17);
            }

            WTF::fastFree((v16 - 16), a2);
          }

          MEMORY[0x22AA68560](v15, 0x60C405C6656D0);
        }

        v13 = (v13 + 8);
      }

      while (v13 != v14);
      v13 = *(v4 + 48);
    }

    if (v13)
    {
      *(v4 + 48) = 0;
      *(v4 + 56) = 0;
      WTF::fastFree(v13, a2);
    }

    *v4 = &unk_2838D37E8;
    if (*(v4 + 32) == 1)
    {
      v20 = *(v4 + 8);
      *(v4 + 8) = 0;
      if (v20)
      {
        if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, a2);
        }
      }
    }

    return v4;
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void WGSL::ContextProvider<WGSL::Empty>::ContextScope::ContextScope(uint64_t **a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = a2;
  a1[1] = v2;
  operator new();
}

uint64_t *WTF::ListHashSet<WGSL::Graph::Edge,WGSL::Graph::EdgeHash>::add(uint64_t *result, uint64_t *a2, void *a3)
{
  v5 = result;
  v6 = *a2;
  if (*a2 || (result = WTF::HashTable<WTF::ListHashSetNode<WGSL::Graph::Edge> *,WTF::ListHashSetNode<WGSL::Graph::Edge> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WGSL::Graph::EdgeHash>,WTF::HashTraits<WTF::ListHashSetNode<WGSL::Graph::Edge> *>,WTF::HashTraits<WTF::ListHashSetNode<WGSL::Graph::Edge> *>,WTF::FastMalloc>::rehash(a2, 8u, 0), (v6 = *a2) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  v9 = a3[1];
  v10 = ~(*a3 << 32) + *a3;
  v11 = (v10 ^ (v10 >> 22)) + ~((v10 ^ (v10 >> 22)) << 13);
  v12 = (9 * (v11 ^ (v11 >> 8))) ^ ((9 * (v11 ^ (v11 >> 8))) >> 15);
  v13 = (~(v9 << 32) + v9) ^ ((~(v9 << 32) + v9) >> 22);
  v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
  v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
  v16 = (0xD7862706ELL * (277951225 * (((v12 + ~(v12 << 27)) >> 31) ^ (v12 + ~(v12 << 27))) + 95187966 * ((v15 >> 31) ^ v15))) >> 4;
  for (i = 1; ; ++i)
  {
    v18 = v16 & v7;
    v19 = (v6 + 8 * (v16 & v7));
    v20 = *v19;
    if (*v19 == -1)
    {
      v8 = (v6 + 8 * v18);
      goto LABEL_6;
    }

    if (!v20)
    {
      break;
    }

    if (*v20 == *a3 && v20[1] == v9)
    {
      *v5 = a2;
      v5[1] = v20;
      *(v5 + 16) = 0;
      return result;
    }

LABEL_6:
    LODWORD(v16) = i + v18;
  }

  if (v8)
  {
    *v8 = 0;
    --*(*a2 - 16);
    v19 = v8;
  }

  result = WTF::fastMalloc(0x20);
  *result = *a3;
  result[2] = 0;
  result[3] = 0;
  *v19 = result;
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
      goto LABEL_19;
    }

LABEL_23:
    if (v26 <= 2 * v25)
    {
LABEL_24:
      v27 = v26 << (6 * v24 >= (2 * v26));
      goto LABEL_25;
    }
  }

  else
  {
    v24 = 1;
    MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
    v25 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
    v26 = MEMORY[0xFFFFFFFFFFFFFFFC];
    if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
    {
      goto LABEL_23;
    }

LABEL_19:
    if (3 * v26 <= 4 * v25)
    {
      if (v26)
      {
        goto LABEL_24;
      }

      v27 = 8;
LABEL_25:
      v19 = WTF::HashTable<WTF::ListHashSetNode<WGSL::Graph::Edge> *,WTF::ListHashSetNode<WGSL::Graph::Edge> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WGSL::Graph::EdgeHash>,WTF::HashTraits<WTF::ListHashSetNode<WGSL::Graph::Edge> *>,WTF::HashTraits<WTF::ListHashSetNode<WGSL::Graph::Edge> *>,WTF::FastMalloc>::rehash(a2, v27, v19);
      result = *v19;
    }
  }

  v28 = a2[2];
  result[2] = v28;
  result[3] = 0;
  if (v28)
  {
    v29 = (v28 + 24);
  }

  else
  {
    v29 = (a2 + 1);
  }

  *v29 = result;
  a2[2] = result;
  v30 = *v19;
  *v5 = a2;
  v5[1] = v30;
  *(v5 + 16) = 1;
  return result;
}

_DWORD *WTF::HashTable<WTF::ListHashSetNode<WGSL::Graph::Edge> *,WTF::ListHashSetNode<WGSL::Graph::Edge> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WGSL::Graph::EdgeHash>,WTF::HashTraits<WTF::ListHashSetNode<WGSL::Graph::Edge> *>,WTF::HashTraits<WTF::ListHashSetNode<WGSL::Graph::Edge> *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void **a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
  v11 = v9 + 4;
  *a1 = (v9 + 4);
  v12 = a2 - 1;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = (v6 + 8 * v13);
      v16 = *v15;
      if (*v15 + 1 >= 2)
      {
        v17 = ~(*v16 << 32) + *v16;
        v18 = (v17 ^ (v17 >> 22)) + ~((v17 ^ (v17 >> 22)) << 13);
        v19 = (9 * (v18 ^ (v18 >> 8))) ^ ((9 * (v18 ^ (v18 >> 8))) >> 15);
        v20 = ~(v16[1] << 32) + v16[1];
        v21 = (v20 ^ (v20 >> 22)) + ~((v20 ^ (v20 >> 22)) << 13);
        v10 = (9 * (v21 ^ (v21 >> 8))) ^ ((9 * (v21 ^ (v21 >> 8))) >> 15);
        LODWORD(v10) = v12 & ((0xD7862706ELL * (277951225 * (((v19 + ~(v19 << 27)) >> 31) ^ (v19 + ~(v19 << 27))) + 95187966 * (((v10 + ~(v10 << 27)) >> 31) ^ (v10 + ~(v10 << 27))))) >> 4);
        v22 = 1;
        do
        {
          v23 = v10;
          v24 = *&v11[2 * v10];
          v10 = (v10 + v22++) & v12;
        }

        while (v24);
        *&v11[2 * v23] = v16;
        if (v15 == a3)
        {
          v14 = &v11[2 * v23];
        }
      }

      ++v13;
    }

    while (v13 != v7);
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    WTF::fastFree((v6 - 16), v10);
  }

  return v14;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<char,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, _BYTE *a3@<X2>, size_t a4@<X3>, unint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  v7 = result;
  if (!a2)
  {
    if (!result)
    {
      goto LABEL_11;
    }

    if (result > 0x7FFFFFEF)
    {
      goto LABEL_10;
    }

    v19 = result;
    v24 = a7;
    result = WTF::tryFastCompactMalloc((2 * result + 20));
    v14 = v108;
    if (!v108)
    {
      a7 = v24;
      goto LABEL_82;
    }

    v25 = v108 + 20;
    *v108 = 2;
    *(v108 + 4) = v19;
    *(v108 + 8) = v108 + 20;
    *(v108 + 16) = 0;
    v26 = v108 + 20 + 2 * a4;
    a7 = v24;
    if (a4 < 0x40)
    {
      v27 = v108 + 20;
      v30 = a6;
      v31 = a5;
      v32 = a3;
    }

    else
    {
      v27 = v25 + 2 * (a4 & 0x7FFFFFFFFFFFFFC0);
      v28 = 0uLL;
      v29 = (v108 + 20);
      v30 = a6;
      v31 = a5;
      v32 = a3;
      do
      {
        v109.val[0] = *v32;
        v33 = *(v32 + 16);
        v111.val[0] = *(v32 + 32);
        v34 = *(v32 + 48);
        v32 += 64;
        v35 = v34;
        v111.val[1] = 0uLL;
        v113.val[0] = v33;
        v109.val[1] = 0uLL;
        v36 = v29;
        vst2q_s8(v36, v109);
        v36 += 32;
        v113.val[1] = 0uLL;
        vst2q_s8(v36, v113);
        v37 = v29 + 64;
        vst2q_s8(v37, v111);
        v38 = v29 + 96;
        vst2q_s8(v38, *(&v28 - 1));
        v29 += 128;
      }

      while (v29 != v27);
    }

    if (v27 != v26)
    {
      v39 = v108 + 2 * a4 - v27 + 18;
      if (v39 < 0xE || (v27 < v32 + (v39 >> 1) + 1 ? (v40 = v32 >= (v39 & 0xFFFFFFFFFFFFFFFELL) + v27 + 2) : (v40 = 1), !v40))
      {
        v43 = v32;
        result = v27;
        goto LABEL_30;
      }

      v41 = (v39 >> 1) + 1;
      if (v39 >= 0x3E)
      {
        v42 = v41 & 0xFFFFFFFFFFFFFFE0;
        v78 = (v27 + 32);
        result = v32 + 16;
        v79 = v41 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v80 = *(result - 16);
          v81 = vmovl_u8(*result);
          v82 = vmovl_high_u8(*result);
          v78[-2] = vmovl_u8(*v80.i8);
          v78[-1] = vmovl_high_u8(v80);
          *v78 = v81;
          v78[1] = v82;
          v78 += 4;
          result += 32;
          v79 -= 32;
        }

        while (v79);
        if (v41 == v42)
        {
          goto LABEL_31;
        }

        if ((v41 & 0x18) == 0)
        {
          result = v27 + 2 * v42;
          v43 = (v32 + v42);
          do
          {
LABEL_30:
            v44 = *v43++;
            *result = v44;
            result += 2;
          }

          while (result != v26);
          goto LABEL_31;
        }
      }

      else
      {
        v42 = 0;
      }

      v43 = (v32 + (v41 & 0xFFFFFFFFFFFFFFF8));
      result = v27 + 2 * (v41 & 0xFFFFFFFFFFFFFFF8);
      v83 = (v27 + 2 * v42);
      v84 = (v32 + v42);
      v85 = v42 - (v41 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v86 = *v84++;
        *v83++ = vmovl_u8(v86);
        v85 += 8;
      }

      while (v85);
      if (v41 != (v41 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_30;
      }
    }

LABEL_31:
    v40 = v7 >= a4;
    v45 = v7 - a4;
    if (!v40)
    {
      goto LABEL_112;
    }

    v46 = (v25 + 2 * a4);
    if (!v31)
    {
LABEL_80:
      if (v45 != v31)
      {
        v46[v31] = v30;
        goto LABEL_82;
      }

      goto LABEL_112;
    }

    v47 = *(v31 + 8);
    v48 = *(v31 + 4);
    if ((*(v31 + 16) & 4) == 0)
    {
      if (v48)
      {
        if (v48 == 1)
        {
          *v46 = v47->i16[0];
        }

        else
        {
          result = memcpy(v46, v47, 2 * v48);
          v31 = a5;
          v30 = a6;
          a7 = v24;
        }
      }

LABEL_79:
      v31 = *(v31 + 4);
      if (v45 < v31)
      {
        goto LABEL_112;
      }

      goto LABEL_80;
    }

    v57 = &v46[v48];
    if (v48 < 0x40)
    {
      v58 = v46;
    }

    else
    {
      v58 = &v46[v48 & 0xFFFFFFC0];
      v59 = 0uLL;
      v60 = v46;
      do
      {
        v110.val[0] = *v47;
        v61 = v47[1];
        v112.val[0] = v47[2];
        v62 = v47[3];
        v47 += 4;
        v63 = v62;
        v112.val[1] = 0uLL;
        v114.val[0] = v61;
        v110.val[1] = 0uLL;
        v64 = v60;
        vst2q_s8(v64, v110);
        v64 += 32;
        v114.val[1] = 0uLL;
        vst2q_s8(v64, v114);
        v65 = v60 + 64;
        vst2q_s8(v65, v112);
        v66 = v60 + 96;
        vst2q_s8(v66, *(&v59 - 1));
        v60 += 128;
      }

      while (v60 != v58);
    }

    if (v58 == v57)
    {
      goto LABEL_79;
    }

    v74 = v108 + 2 * (a4 + v48) - v58 + 18;
    if (v74 < 0xE || v58 < v47->u64 + (v74 >> 1) + 1 && v47 < (v74 & 0xFFFFFFFFFFFFFFFELL) + v58 + 2)
    {
      v75 = v47;
      v76 = v58;
      goto LABEL_72;
    }

    v87 = (v74 >> 1) + 1;
    if (v74 >= 0x3E)
    {
      v88 = v87 & 0xFFFFFFFFFFFFFFE0;
      v99 = (v58 + 32);
      v100 = &v47[1];
      v101 = v87 & 0xFFFFFFFFFFFFFFE0;
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
      if (v87 == v88)
      {
        goto LABEL_79;
      }

      if ((v87 & 0x18) == 0)
      {
        v76 = (v58 + 2 * v88);
        v75 = (v47 + v88);
        goto LABEL_72;
      }
    }

    else
    {
      v88 = 0;
    }

    v75 = (v47 + (v87 & 0xFFFFFFFFFFFFFFF8));
    v76 = (v58 + 2 * (v87 & 0xFFFFFFFFFFFFFFF8));
    v105 = (v58 + 2 * v88);
    result = v47->i64 + v88;
    v106 = v88 - (v87 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v107 = *result;
      result += 8;
      *v105++ = vmovl_u8(v107);
      v106 += 8;
    }

    while (v106);
    if (v87 == (v87 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_79;
    }

    do
    {
LABEL_72:
      v77 = v75->u8[0];
      v75 = (v75 + 1);
      *v76++ = v77;
    }

    while (v76 != v57);
    goto LABEL_79;
  }

  if (!result)
  {
LABEL_11:
    v14 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_82;
  }

  if ((result & 0x80000000) != 0)
  {
LABEL_10:
    v14 = 0;
LABEL_82:
    *a7 = v14;
    return result;
  }

  v8 = result;
  v13 = a7;
  result = WTF::tryFastCompactMalloc((result + 20));
  v14 = v108;
  if (!v108)
  {
    a7 = v13;
    goto LABEL_82;
  }

  v15 = (v108 + 20);
  *v108 = 2;
  *(v108 + 4) = v8;
  *(v108 + 8) = v108 + 20;
  *(v108 + 16) = 4;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  if (a4)
  {
    if (a4 == 1)
    {
      *v15 = *a3;
    }

    else
    {
      result = memcpy((v108 + 20), a3, a4);
      v18 = a4;
      v17 = a5;
      v16 = a6;
    }
  }

  v49 = v18;
  v50 = v7 - v18;
  if (v7 < v18)
  {
    goto LABEL_112;
  }

  v51 = &v15[v18];
  a7 = v13;
  if (v17)
  {
    v52 = *(v17 + 8);
    v53 = *(v17 + 4);
    if ((*(v17 + 16) & 4) != 0)
    {
      if (v53)
      {
        if (v53 == 1)
        {
          *v51 = v52->i8[0];
        }

        else
        {
          result = memcpy(v51, v52, v53);
          v17 = a5;
          v16 = a6;
          a7 = v13;
        }
      }
    }

    else
    {
      v54 = &v51[v53];
      if (v53 < 0x10)
      {
        v55 = v51;
      }

      else
      {
        v55 = v51;
        do
        {
          v56 = vld2q_s8(v52->i8);
          v52 += 2;
          *v55 = v56;
          v55 += 16;
        }

        while (v55 != &v51[v53 & 0xFFFFFFF0]);
      }

      if (v55 != v54)
      {
        v67 = v108 + v53 + v49;
        v68 = v67 - v55 + 20;
        if (v68 < 4 || (v55 < &v52[2].u64[1] + 2 * v67 + -2 * v55 ? (v69 = v52 >= v67 + 20) : (v69 = 1), !v69))
        {
          v71 = v55;
          v72 = v52;
          goto LABEL_64;
        }

        if (v68 >= 0x20)
        {
          v70 = v68 & 0xFFFFFFFFFFFFFFE0;
          v89 = v52 + 2;
          v90 = (v55 + 16);
          v91 = v68 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v93 = v89[-2];
            v92 = v89[-1];
            v95 = *v89;
            v94 = v89[1];
            v89 += 4;
            v90[-1] = vuzp1q_s8(v93, v92);
            *v90 = vuzp1q_s8(v95, v94);
            v90 += 2;
            v91 -= 32;
          }

          while (v91);
          if (v68 == v70)
          {
            goto LABEL_75;
          }

          if ((v68 & 0x1C) == 0)
          {
            v72 = (v52 + 2 * v70);
            v71 = (v55 + v70);
            do
            {
LABEL_64:
              v73 = v72->i8[0];
              v72 = (v72 + 2);
              *v71++ = v73;
            }

            while (v71 != v54);
            goto LABEL_75;
          }
        }

        else
        {
          v70 = 0;
        }

        v71 = (v55 + (v68 & 0xFFFFFFFFFFFFFFFCLL));
        v72 = (v52 + 2 * (v68 & 0xFFFFFFFFFFFFFFFCLL));
        result = v52->i64 + 2 * v70;
        v96 = (v55 + v70);
        v97 = v70 - (v68 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v98 = *result;
          result += 8;
          *v96++ = vuzp1_s8(v98, v98).u32[0];
          v97 += 4;
        }

        while (v97);
        if (v68 != (v68 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_64;
        }
      }
    }

LABEL_75:
    v17 = *(v17 + 4);
    if (v50 < v17)
    {
      goto LABEL_112;
    }
  }

  if (v50 != v17)
  {
    v51[v17] = v16;
    goto LABEL_82;
  }

LABEL_112:
  __break(1u);
  return result;
}

__n128 std::__function::__func<WGSL::reorder(WTF::ReferenceWrapperVector<WGSL::AST::Declaration,0ul> &)::$_0,std::allocator<WGSL::reorder(WTF::ReferenceWrapperVector<WGSL::AST::Declaration,0ul> &)::$_0>,void ()(WGSL::Graph::Node &,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2838D4740;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<WGSL::reorder(WTF::ReferenceWrapperVector<WGSL::AST::Declaration,0ul> &)::$_0,std::allocator<WGSL::reorder(WTF::ReferenceWrapperVector<WGSL::AST::Declaration,0ul> &)::$_0>,void ()(WGSL::Graph::Node &,unsigned int)>::operator()(uint64_t result, uint64_t a2, unsigned int *a3)
{
  v4 = result;
  v5 = *a3;
  v6 = *(result + 8);
  v7 = *(a2 + 8);
  v8 = *(v6 + 12);
  if (v8 == *(v6 + 8))
  {
    v9 = v8 + (v8 >> 1);
    if (v9 <= v8 + 1)
    {
      v9 = v8 + 1;
    }

    if (v9 >> 29)
    {
LABEL_23:
      __break(0xC471u);
    }

    else
    {
      v10 = *v6;
      if (v9 <= 0x10)
      {
        v11 = 16;
      }

      else
      {
        v11 = v9;
      }

      v12 = WTF::fastMalloc((8 * v11));
      *(v6 + 8) = v11;
      *v6 = v12;
      result = memcpy(v12, v10, 8 * v8);
      if (v10)
      {
        if (*v6 == v10)
        {
          *v6 = 0;
          *(v6 + 8) = 0;
        }

        result = WTF::fastFree(v10, v13);
      }

      v14 = *(v6 + 12);
      *(*v6 + 8 * v14) = v7;
      *(v6 + 12) = v14 + 1;
      for (i = *(a2 + 24); i; i = i[3])
      {
LABEL_17:
        v16 = *i;
        v17 = i[1];
        WTF::ListHashSet<WGSL::Graph::Edge,WGSL::Graph::EdgeHash>::remove(*i + 5, *i, v17);
        result = WTF::ListHashSet<WGSL::Graph::Edge,WGSL::Graph::EdgeHash>::remove((*(v4 + 16) + 16), v16, v17);
        v18 = v16[5];
        if ((!v18 || !*(v18 - 12)) && *v16 < v5)
        {
          v19 = *(v4 + 24);
          v21 = v5;
          v20 = *(v19 + 24);
          if (!v20)
          {
            result = std::__throw_bad_function_call[abi:sn200100]();
            goto LABEL_23;
          }

          result = (*(*v20 + 48))(v20, v16, &v21);
        }
      }
    }
  }

  else
  {
    *(*v6 + 8 * v8) = v7;
    *(v6 + 12) = v8 + 1;
    i = *(a2 + 24);
    if (i)
    {
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t *WTF::ListHashSet<WGSL::Graph::Edge,WGSL::Graph::EdgeHash>::remove(uint64_t *result, void *a2, void *a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = *(v3 - 8);
    v5 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = (a3 + ~(a3 << 32)) ^ ((a3 + ~(a3 << 32)) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v4 & ((0xD7862706ELL * (277951225 * ((v7 >> 31) ^ v7) + 95187966 * ((v10 >> 31) ^ v10))) >> 4);
    v12 = 1;
    for (i = v11; ; i = (i + v12++) & v4)
    {
      v14 = *(v3 + 8 * i);
      if (v14 != -1)
      {
        if (!v14)
        {
          return result;
        }

        if (*v14 == a2 && *(v14 + 1) == a3)
        {
          break;
        }
      }
    }

    v16 = *(v3 - 4);
    if (i != v16)
    {
      for (j = 1; ; ++j)
      {
        v18 = v11;
        v19 = *(v3 + 8 * v11);
        if (v19 != -1)
        {
          if (!v19)
          {
            goto LABEL_29;
          }

          v21 = *v19;
          v20 = v19[1];
          if (v21 == a2 && v20 == a3)
          {
            break;
          }
        }

        v11 = (v18 + j) & v4;
      }

      if (v16 != v18)
      {
        *(v3 + 8 * v18) = -1;
        v23 = vadd_s32(*(v3 - 16), 0xFFFFFFFF00000001);
        *(v3 - 16) = v23;
        if (6 * v23.i32[1] < v16 && v16 >= 9)
        {
          v25 = result;
          WTF::HashTable<WTF::ListHashSetNode<WGSL::Graph::Edge> *,WTF::ListHashSetNode<WGSL::Graph::Edge> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WGSL::Graph::EdgeHash>,WTF::HashTraits<WTF::ListHashSetNode<WGSL::Graph::Edge> *>,WTF::HashTraits<WTF::ListHashSetNode<WGSL::Graph::Edge> *>,WTF::FastMalloc>::rehash(result, v16 >> 1, 0);
          result = v25;
        }
      }

LABEL_29:
      v26 = *(v14 + 2);
      v27 = *(v14 + 3);
      v28 = (v26 + 24);
      if (!v26)
      {
        v28 = (result + 1);
      }

      *v28 = v27;
      if (!v27)
      {
        v27 = result;
      }

      v27[2] = v26;

      return WTF::fastFree(v14, a2);
    }
  }

  return result;
}

uint64_t WTF::HashTable<WGSL::Graph::Node *,WGSL::Graph::Node *,WTF::IdentityExtractor,WTF::DefaultHash<WGSL::Graph::Node *>,WTF::HashTraits<WGSL::Graph::Node *>,WTF::HashTraits<WGSL::Graph::Node *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((8 * a2 + 16));
  v9 = (result + 16);
  *a1 = result + 16;
  v10 = a2 - 1;
  *(result + 8) = a2 - 1;
  *(result + 12) = a2;
  *result = 0;
  *(result + 4) = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v12 = *(v4 + 8 * i);
      if ((v12 + 1) >= 2)
      {
        v13 = (~(v12 << 32) + v12) ^ ((~(v12 << 32) + v12) >> 22);
        v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
        v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
        v16 = v10 & ((v15 >> 31) ^ v15);
        v17 = 1;
        do
        {
          result = v16;
          v8 = *&v9[2 * v16];
          v16 = (v16 + v17++) & v10;
        }

        while (v8);
        *&v9[2 * result] = v12;
      }
    }
  }

  if (v4)
  {

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

int8x16_t *WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>(WTF::StringBuilder *a1, unint64_t *a2, uint64_t *a3)
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

    v23 = result;
    v24 = a2[1];
    v25 = *a3;
    if (v24)
    {
      v26 = *a2;
      if (v24 == 1)
      {
        result->i8[0] = *v26;
      }

      else
      {
        v51 = v22;
        result = memcpy(result, v26, v24);
        v22 = v51;
      }
    }

    if (v22 < v24)
    {
LABEL_106:
      __break(1u);
      return result;
    }

    if (!v25)
    {
      return result;
    }

    result = (v23 + v24);
    v36 = *(v25 + 8);
    v52 = *(v25 + 4);
    if ((*(v25 + 16) & 4) != 0)
    {
      if (!v52)
      {
        return result;
      }

      if (v52 == 1)
      {
        result->i8[0] = *v36;
        return result;
      }

      goto LABEL_73;
    }

    v53 = (result + v52);
    if (v52 >= 0x10)
    {
      v54 = (result + (v52 & 0xFFFFFFF0));
      do
      {
        v55 = vld2q_s8(v36);
        v36 += 32;
        *result++ = v55;
      }

      while (result != v54);
    }

    if (result == v53)
    {
      return result;
    }

    v56 = v23->u64 + v52 + v24;
    v57 = v56 - result;
    if (v56 - result < 4 || (result < v36 + 2 * v57 ? (v58 = v36 >= v56) : (v58 = 1), !v58))
    {
      v63 = result;
      v64 = v36;
      goto LABEL_77;
    }

    if (v57 >= 0x20)
    {
      v59 = v57 & 0xFFFFFFFFFFFFFFE0;
      v86 = (v36 + 32);
      v87 = result + 1;
      v88 = v57 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v90 = v86[-2];
        v89 = v86[-1];
        v92 = *v86;
        v91 = v86[1];
        v86 += 4;
        v87[-1] = vuzp1q_s8(v90, v89);
        *v87 = vuzp1q_s8(v92, v91);
        v87 += 2;
        v88 -= 32;
      }

      while (v88);
      if (v57 == v59)
      {
        return result;
      }

      if ((v57 & 0x1C) == 0)
      {
        v64 = (v36 + 2 * v59);
        v63 = (result + v59);
        goto LABEL_77;
      }
    }

    else
    {
      v59 = 0;
    }

    v63 = (result + (v57 & 0xFFFFFFFFFFFFFFFCLL));
    v64 = (v36 + 2 * (v57 & 0xFFFFFFFFFFFFFFFCLL));
    v93 = (v36 + 2 * v59);
    v94 = (result->i32 + v59);
    v95 = v59 - (v57 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v96 = *v93++;
      *v94++ = vuzp1_s8(v96, v96).u32[0];
      v95 += 4;
    }

    while (v95);
    if (v57 == (v57 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

    do
    {
LABEL_77:
      v65 = *v64;
      v64 += 2;
      v63->i8[0] = v65;
      v63 = (v63 + 1);
    }

    while (v63 != v53);
    return result;
  }

LABEL_9:
  result = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
  if (!result)
  {
    return result;
  }

  v10 = *a2;
  v9 = a2[1];
  v11 = *a3;
  v12 = (result + 2 * v9);
  if (v9 < 0x40)
  {
    v13 = result;
    if (result == v12)
    {
      goto LABEL_30;
    }

LABEL_20:
    v27 = v12 - v13 - 2;
    if (v27 < 0xE || (v13 < v10 + (v27 >> 1) + 1 ? (v28 = v10 >= (v27 & 0xFFFFFFFFFFFFFFFELL) + v13 + 2) : (v28 = 1), !v28))
    {
      v31 = v10;
      v32 = v13;
      goto LABEL_29;
    }

    v29 = (v27 >> 1) + 1;
    if (v27 >= 0x3E)
    {
      v30 = v29 & 0xFFFFFFFFFFFFFFE0;
      v66 = (v13 + 32);
      v67 = (v10 + 16);
      v68 = v29 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v69 = *v67[-2].i8;
        v70 = vmovl_u8(*v67);
        v71 = vmovl_high_u8(*v67->i8);
        v66[-2] = vmovl_u8(*v69.i8);
        v66[-1] = vmovl_high_u8(v69);
        *v66 = v70;
        v66[1] = v71;
        v66 += 4;
        v67 += 4;
        v68 -= 32;
      }

      while (v68);
      if (v29 == v30)
      {
        goto LABEL_30;
      }

      if ((v29 & 0x18) == 0)
      {
        v32 = (v13 + 2 * v30);
        v31 = (v10 + v30);
        goto LABEL_29;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = (v10 + (v29 & 0xFFFFFFFFFFFFFFF8));
    v32 = (v13 + 2 * (v29 & 0xFFFFFFFFFFFFFFF8));
    v72 = (v13 + 2 * v30);
    v73 = (v10 + v30);
    v74 = v30 - (v29 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v75 = *v73++;
      *v72++ = vmovl_u8(v75);
      v74 += 8;
    }

    while (v74);
    if (v29 == (v29 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_30;
    }

    do
    {
LABEL_29:
      v33 = *v31++;
      v32->i16[0] = v33;
      v32 = (v32 + 2);
    }

    while (v32 != v12);
    goto LABEL_30;
  }

  v13 = result + 2 * (v9 & 0x7FFFFFFFFFFFFFC0);
  v14 = 0uLL;
  v15 = result;
  do
  {
    v98.val[0] = *v10;
    v16 = *(v10 + 16);
    v100.val[0] = *(v10 + 32);
    v17 = *(v10 + 48);
    v10 += 64;
    v18 = v17;
    v100.val[1] = 0uLL;
    v102.val[0] = v16;
    v98.val[1] = 0uLL;
    v19 = v15;
    vst2q_s8(v19, v98);
    v19 += 32;
    v102.val[1] = 0uLL;
    vst2q_s8(v19, v102);
    i8 = v15[4].i8;
    vst2q_s8(i8, v100);
    v21 = v15[6].i8;
    vst2q_s8(v21, *(&v14 - 1));
    v15 += 8;
  }

  while (v15 != v13);
  if (v13 != v12)
  {
    goto LABEL_20;
  }

LABEL_30:
  v34 = v9;
  if (v8 < v9)
  {
    goto LABEL_106;
  }

  if (!v11)
  {
    return result;
  }

  v35 = (result + 2 * v9);
  v36 = *(v11 + 8);
  v37 = *(v11 + 4);
  if ((*(v11 + 16) & 4) == 0)
  {
    if (!v37)
    {
      return result;
    }

    if (v37 == 1)
    {
      v35->i16[0] = *v36;
      return result;
    }

    v52 = 2 * v37;
    result = (result + 2 * v34);
LABEL_73:

    return memcpy(result, v36, v52);
  }

  v38 = (v35 + 2 * v37);
  if (v37 >= 0x40)
  {
    v39 = (v35 + 2 * (v37 & 0xFFFFFFC0));
    v40 = 0uLL;
    do
    {
      v99.val[0] = *v36;
      v41 = *(v36 + 16);
      v101.val[0] = *(v36 + 32);
      v42 = *(v36 + 48);
      v36 += 64;
      v43 = v42;
      v101.val[1] = 0uLL;
      v103.val[0] = v41;
      v99.val[1] = 0uLL;
      v44 = v35;
      vst2q_s8(v44, v99);
      v44 += 32;
      v103.val[1] = 0uLL;
      vst2q_s8(v44, v103);
      v45 = v35[4].i8;
      vst2q_s8(v45, v101);
      v46 = v35[6].i8;
      vst2q_s8(v46, *(&v40 - 1));
      v35 += 8;
    }

    while (v35 != v39);
    v35 = v39;
  }

  if (v35 != v38)
  {
    v47 = result + 2 * v37 + 2 * v34 - v35 - 2;
    if (v47 < 0xE || (v35 < v36 + (v47 >> 1) + 1 ? (v48 = v36 >= v35->u64 + (v47 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v48 = 1), !v48))
    {
      v60 = v36;
      v61 = v35;
      goto LABEL_70;
    }

    v49 = (v47 >> 1) + 1;
    if (v47 >= 0x3E)
    {
      v50 = v49 & 0xFFFFFFFFFFFFFFE0;
      v76 = v35 + 2;
      v77 = (v36 + 16);
      v78 = v49 & 0xFFFFFFFFFFFFFFE0;
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
      if (v49 == v50)
      {
        return result;
      }

      if ((v49 & 0x18) == 0)
      {
        v61 = (v35 + 2 * v50);
        v60 = (v36 + v50);
        goto LABEL_70;
      }
    }

    else
    {
      v50 = 0;
    }

    v60 = (v36 + (v49 & 0xFFFFFFFFFFFFFFF8));
    v61 = (v35 + 2 * (v49 & 0xFFFFFFFFFFFFFFF8));
    v82 = (v35 + 2 * v50);
    v83 = (v36 + v50);
    v84 = v50 - (v49 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v85 = *v83++;
      *v82++ = vmovl_u8(v85);
      v84 += 8;
    }

    while (v84);
    if (v49 == (v49 & 0xFFFFFFFFFFFFFFF8))
    {
      return result;
    }

    do
    {
LABEL_70:
      v62 = *v60++;
      v61->i16[0] = v62;
      v61 = (v61 + 2);
    }

    while (v61 != v38);
  }

  return result;
}

WTF::StringImpl *WTF::HashMap<WTF::String,WGSL::Empty,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Empty>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::Empty const&>(uint64_t a1, uint64_t *a2, const WTF::StringImpl **a3)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x2257198F4);
  }

  v6 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Empty>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Empty>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Empty,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Empty>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    v6 = *a2;
    if (!*a2)
    {
      v7 = 0;
      v8 = *a3;
      v9 = *(*a3 + 4);
      if (v9 >= 0x100)
      {
        goto LABEL_6;
      }

LABEL_8:
      v10 = WTF::StringImpl::hashSlowCase(v8);
      goto LABEL_9;
    }
  }

  v7 = *(v6 - 8);
  v8 = *a3;
  v9 = *(*a3 + 4);
  if (v9 < 0x100)
  {
    goto LABEL_8;
  }

LABEL_6:
  v10 = v9 >> 8;
LABEL_9:
  v11 = 0;
  for (i = 1; ; ++i)
  {
    v13 = v10 & v7;
    v14 = (v6 + 16 * (v10 & v7));
    result = *v14;
    if (*v14 == -1)
    {
      v11 = (v6 + 16 * v13);
      goto LABEL_11;
    }

    if (!result)
    {
      if (v11)
      {
        result = 0;
        *v11 = 0;
        --*(*a2 - 16);
        v14 = v11;
      }

      v18 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
        result = *v14;
      }

      *v14 = v18;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }

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
          goto LABEL_26;
        }
      }

      else
      {
        v21 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v22 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v23 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
        {
LABEL_26:
          if (3 * v23 > 4 * v22)
          {
LABEL_34:
            v24 = v19 + 16 * v23;
            v25 = 1;
            goto LABEL_37;
          }

          if (!v23)
          {
            result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Empty>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Empty>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Empty,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Empty>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, v14);
            v14 = result;
            v19 = *a2;
            if (!*a2)
            {
LABEL_29:
              v23 = 0;
              goto LABEL_34;
            }

LABEL_33:
            v23 = *(v19 - 4);
            goto LABEL_34;
          }

LABEL_32:
          result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Empty>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Empty>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Empty,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Empty>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, v23 << (6 * v21 >= (2 * v23)), v14);
          v14 = result;
          v19 = *a2;
          if (!*a2)
          {
            goto LABEL_29;
          }

          goto LABEL_33;
        }
      }

      if (v23 > 2 * v22)
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
    v10 = i + v13;
  }

  v16 = *a2;
  if (*a2)
  {
    v17 = *(v16 - 4);
  }

  else
  {
    v17 = 0;
  }

  v25 = 0;
  v24 = v16 + 16 * v17;
LABEL_37:
  *a1 = v14;
  *(a1 + 8) = v24;
  *(a1 + 16) = v25;
  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Empty>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Empty>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Empty,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Empty>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl **a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = WTF::fastMalloc((16 * a2 + 16));
    v11 = v9 + 4;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (a2 == 1)
  {
    v12 = 0;
LABEL_10:
    v15 = a2 - v12;
    v16 = &v9[4 * v12 + 4];
    do
    {
      *v16 = 0;
      v16 += 2;
      --v15;
    }

    while (v15);
    goto LABEL_12;
  }

  v12 = a2 & 0xFFFFFFFE;
  v13 = v9 + 8;
  v14 = v12;
  do
  {
    *(v13 - 2) = 0;
    *v13 = 0;
    v13 += 4;
    v14 -= 2;
  }

  while (v14);
  if (v12 != a2)
  {
    goto LABEL_10;
  }

LABEL_12:
  *a1 = v11;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = (v6 + 16 * v17);
      v20 = *v19;
      if (*v19 != -1)
      {
        if (v20)
        {
          v21 = *a1;
          if (*a1)
          {
            v22 = *(v21 - 8);
            v23 = *(v20 + 4);
            if (v23 >= 0x100)
            {
              goto LABEL_22;
            }

LABEL_24:
            v24 = WTF::StringImpl::hashSlowCase(v20);
          }

          else
          {
            v22 = 0;
            v23 = *(v20 + 4);
            if (v23 < 0x100)
            {
              goto LABEL_24;
            }

LABEL_22:
            v24 = v23 >> 8;
          }

          v25 = 0;
          do
          {
            v26 = v24 & v22;
            v24 = ++v25 + v26;
          }

          while (*(v21 + 16 * v26));
          v27 = (v21 + 16 * v26);
          v28 = *v19;
          *v19 = 0;
          *v27 = v28;
          v29 = *v19;
          *v19 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v10);
          }

          if (v19 == a3)
          {
            v18 = v27;
          }

          goto LABEL_16;
        }

        *v19 = 0;
      }

LABEL_16:
      if (++v17 == v7)
      {
        goto LABEL_31;
      }
    }
  }

  v18 = 0;
  result = 0;
  if (v6)
  {
LABEL_31:
    WTF::fastFree((v6 - 16), v10);
    return v18;
  }

  return result;
}

uint64_t WGSL::RewriteGlobalVariables::collectGlobals@<X0>(uint64_t this@<X0>, WTF::StringImpl *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = this;
  v116 = 0;
  v117 = 0;
  v6 = *(*(this + 40) + 76);
  if (!v6)
  {
    v7 = 0;
    v8 = 0;
LABEL_95:
    v73 = *(v5 + 64);
    if (v73)
    {
      v74 = *(v73 - 4);
      v75 = v73 + 24 * v74;
      if (*(v73 - 12))
      {
        if (!v74)
        {
          goto LABEL_143;
        }

        v76 = 24 * v74;
        v77 = *(v5 + 64);
        while (*v77 >= 0xFFFFFFFFFFFFFFFELL)
        {
          v77 += 24;
          v76 -= 24;
          if (!v76)
          {
            v77 = v75;
            goto LABEL_102;
          }
        }

        goto LABEL_102;
      }
    }

    else
    {
      v75 = 0;
      LODWORD(v74) = 0;
    }

    v77 = v75;
    v75 = v73 + 24 * v74;
    if (!v73)
    {
      v78 = 0;
      if (!v77)
      {
        goto LABEL_143;
      }

      goto LABEL_136;
    }

LABEL_102:
    v78 = v73 + 24 * *(v73 - 4);
    if (v77 == v78)
    {
      goto LABEL_143;
    }

    do
    {
LABEL_136:
      v119 = 0;
      v100 = *(v77 + 8);
      v101 = *(v77 + 20);
      *&v123 = v118;
      *(&v123 + 1) = &v119;
      v102 = 126 - 2 * __clz(v101);
      if (v101)
      {
        v103 = v102;
      }

      else
      {
        v103 = 0;
      }

      this = std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,WTF::String>::*> &,std::pair<unsigned int,WTF::String>*,false>(v100, (v100 + 16 * v101), &v123, v103, 1);
      do
      {
        v77 += 24;
      }

      while (v77 != v75 && *v77 >= 0xFFFFFFFFFFFFFFFELL);
    }

    while (v77 != v78);
LABEL_143:
    if (!v8)
    {
      *a3 = 0;
      *(a3 + 24) = 0;
      if (!v7)
      {
        return this;
      }

      goto LABEL_165;
    }

    v104 = *(*v7 + 48);
    if (v104)
    {
      atomic_fetch_add_explicit(v104, 2u, memory_order_relaxed);
      v105 = *(v104 + 4);
      v114 = v104;
      if (v105 < 0)
      {
        goto LABEL_162;
      }

      v84 = __OFADD__(v105, 12);
      v106 = v105 + 12;
      if (v84)
      {
        goto LABEL_162;
      }
    }

    else
    {
      v114 = 0;
      v106 = 12;
    }

    if (!__OFADD__(v106, 2))
    {
      v107 = !v104 || (*(v104 + 16) & 4) != 0;
      WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v106 + 2), v107, "__", 2uLL, v104, "_ArrayLength", 0xCuLL, &v123);
      if (v123)
      {
        v120 = 0;
        v121 = 0;
        v119 = off_2838D37C0;
        v122 = v123;
        *&v123 = 0;
        if (v114 && atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v114, v108);
        }

        v109 = v122;
        if (v122)
        {
          atomic_fetch_add_explicit(v122, 2u, memory_order_relaxed);
        }

        v118[1] = 0;
        v118[2] = 0;
        v118[0] = off_2838D37C0;
        v118[3] = v109;
        if (!*(v5 + 232))
        {
          v115[0] = 0;
          v115[1] = 0;
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          *(&v123 + 1) = 0;
          v124 = 0;
          *&v123 = off_2838D37C0;
          WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
        }

        operator new();
      }

LABEL_163:
      __break(0xC471u);
      JUMPOUT(0x22571C0B8);
    }

LABEL_162:
    *&v123 = 0;
    goto LABEL_163;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v12 = *(v5 + 40);
    if (v9 >= *(v12 + 76))
    {
      __break(0xC471u);
      JUMPOUT(0x22571C1CCLL);
    }

    v13 = *(*(v12 + 64) + 8 * v9);
    this = (*(*v13 + 16))(v13);
    if (this != 60)
    {
      goto LABEL_6;
    }

    v14 = v4;
    v15 = *(v13 + 164);
    if ((v15 & 0x100000000) == 0)
    {
      LODWORD(v3) = 0;
      v16 = 0;
      v4 = v14;
      goto LABEL_21;
    }

    if ((*(v13 + 156) & 0x100000000) == 0)
    {
      __break(0xC471u);
      goto LABEL_173;
    }

    v17 = *(v5 + 40);
    v18 = *(v5 + 192);
    if (v18 == 4)
    {
      LODWORD(v3) = v17[12];
      if (v3 <= v15)
      {
        break;
      }

      goto LABEL_20;
    }

    if (v18 == 2)
    {
      LODWORD(v3) = v17[11];
      if (v3 <= v15)
      {
        break;
      }

      goto LABEL_20;
    }

    if (v18 != 1)
    {
      break;
    }

    LODWORD(v3) = v17[10];
    if (v3 <= v15)
    {
      break;
    }

LABEL_20:
    v10 = v15 >> 8;
    v16 = *(v13 + 164);
    LODWORD(v3) = 1;
    v4 = *(v13 + 156);
LABEL_21:
    v113 = v10;
    v19 = v16 | (v10 << 8);
    *&v123 = v19 | (v4 << 32);
    BYTE8(v123) = v3;
    v124 = v13;
    this = WTF::HashMap<WTF::String,WGSL::RewriteGlobalVariables::Global,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::RewriteGlobalVariables::Global>(v115, (v5 + 48), (v13 + 48), &v123);
    if (v3)
    {
      v20 = __PAIR64__(v4, v19);
      v112 = v4;
      v21 = vadd_s32(__PAIR64__(v4, v19), 0x100000001);
      v22 = v21.i32[0];
      v23 = v21.i32[1];
      if (!*&v21)
      {
        goto LABEL_174;
      }

      if (v21.i32[0] == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x22571C234);
      }

      v24 = *(v5 + 56);
      if (!v24)
      {
        v111 = v21;
        WTF::HashTable<std::tuple<unsigned int,unsigned int>,WTF::KeyValuePair<std::tuple<unsigned int,unsigned int>,WGSL::AST::Variable *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<unsigned int,unsigned int>,WGSL::AST::Variable *>>,WTF::DefaultHash<std::tuple<unsigned int,unsigned int>>,WTF::HashMap<std::tuple<unsigned int,unsigned int>,WGSL::AST::Variable *,WTF::DefaultHash<std::tuple<unsigned int,unsigned int>>,WTF::HashTraits<std::tuple<unsigned int,unsigned int>>,WTF::HashTraits<WGSL::AST::Variable *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<unsigned int,unsigned int>>,WTF::FastMalloc>::rehash((v5 + 56), 8u);
        v21 = v111;
        v20 = __PAIR64__(v4, v19);
        v24 = *(v5 + 56);
      }

      v25 = *(v24 - 8);
      v26 = vsub_s32(v20, vshl_n_s32(v21, 0xFuLL));
      v27 = vmul_s32(veor_s8(vshr_n_u32(v26, 0xAuLL), v26), 0x900000009);
      v28 = veor_s8(vshr_n_u32(v27, 6uLL), v27);
      v29 = vadd_s32(v28, vmvn_s8(vshl_n_s32(v28, 0xBuLL)));
      v30 = vmul_s32(veor_s8(vshr_n_u32(v29, 0x10uLL), v29), 0x5AC73FE109132F9);
      v31 = v25 & ((0xD7862706ELL * vadd_s32(v30, vdup_lane_s32(v30, 1)).u32[0]) >> 4);
      v32 = (v24 + 16 * v31);
      v33 = *v32;
      v34 = *(v32 + 1);
      if (*v32)
      {
        v35 = 0;
        v36 = 1;
        while (v33 != v22 || v34 != v23)
        {
          if (v33 == -1)
          {
            v35 = v32;
          }

          v31 = (v31 + v36) & v25;
          v32 = (v24 + 16 * v31);
          v33 = *v32;
          v34 = *(v32 + 1);
          ++v36;
          if (!*v32)
          {
            if (v35)
            {
              *v35 = 0;
              v35[1] = 0;
              v24 = *(v5 + 56);
              --*(v24 - 16);
              v32 = v35;
            }

            goto LABEL_36;
          }
        }

LABEL_43:
        v42 = *(v5 + 64);
        if (!v42)
        {
          WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Vector<std::pair<unsigned int,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Vector<std::pair<unsigned int,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::IntHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Vector<std::pair<unsigned int,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<std::pair<unsigned int,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash((v5 + 64), 8u, 0);
          v42 = *(v5 + 64);
        }

        v43 = *(v42 - 8);
        v44 = (~(v19 << 32) + v19) ^ ((~(v19 << 32) + v19) >> 22);
        v45 = 9 * ((v44 + ~(v44 << 13)) ^ ((v44 + ~(v44 << 13)) >> 8));
        v46 = (v45 ^ (v45 >> 15)) + ~((v45 ^ (v45 >> 15)) << 27);
        v47 = v43 & ((v46 >> 31) ^ v46);
        v3 = v42 + 24 * v47;
        v48 = *v3;
        if (*v3 != -1)
        {
          v49 = 0;
          v50 = 1;
          while (v48 != v19)
          {
            if (v48 == -2)
            {
              v49 = v3;
            }

            v47 = (v47 + v50) & v43;
            v3 = v42 + 24 * v47;
            v48 = *v3;
            ++v50;
            if (*v3 == -1)
            {
              if (v49)
              {
                v49[1] = 0;
                v49[2] = 0;
                *v49 = -1;
                --*(*(v5 + 64) - 16);
                v3 = v49;
              }

              goto LABEL_53;
            }
          }

          goto LABEL_72;
        }

LABEL_53:
        *v3 = v19;
        v52 = (v3 + 8);
        v51 = *(v3 + 8);
        v53 = *(v3 + 20);
        if (v53)
        {
          v54 = 16 * v53;
          v55 = (v51 + 8);
          do
          {
            v56 = *v55;
            *v55 = 0;
            if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v56, a2);
            }

            v55 += 2;
            v54 -= 16;
          }

          while (v54);
          v51 = *v52;
        }

        v4 = v112;
        if (v51)
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          WTF::fastFree(v51, a2);
        }

        *v52 = 0;
        *(v3 + 16) = 0;
        v57 = *(v5 + 64);
        if (v57)
        {
          v58 = *(v57 - 16);
          v59 = *(v57 - 12) + 1;
          *(v57 - 12) = v59;
          v60 = (v58 + v59);
          v61 = *(v57 - 4);
          if (v61 <= 0x400)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v59 = 1;
          MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
          v60 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
          v61 = MEMORY[0xFFFFFFFFFFFFFFFC];
          if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
          {
LABEL_64:
            if (3 * v61 <= 4 * v60)
            {
              if (!v61)
              {
                v62 = 8;
LABEL_71:
                v3 = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Vector<std::pair<unsigned int,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Vector<std::pair<unsigned int,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::IntHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Vector<std::pair<unsigned int,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<std::pair<unsigned int,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash((v5 + 64), v62, v3);
                goto LABEL_72;
              }

LABEL_70:
              v62 = v61 << (6 * v59 >= (2 * v61));
              goto LABEL_71;
            }

LABEL_72:
            LODWORD(v123) = v4;
            v63 = *(v13 + 48);
            if (v63)
            {
              atomic_fetch_add_explicit(v63, 2u, memory_order_relaxed);
            }

            *(&v123 + 1) = v63;
            v64 = *(v3 + 20);
            if (v64 == *(v3 + 16))
            {
              v65 = WTF::Vector<std::pair<unsigned int,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v3 + 8, v64 + 1, &v123);
              v64 = *(v3 + 20);
              v66 = *(v3 + 8) + 16 * v64;
              *v66 = *v65;
              v67 = *(v65 + 8);
              *(v65 + 8) = 0;
              *(v66 + 8) = v67;
            }

            else
            {
              v68 = *(v3 + 8) + 16 * v64;
              *v68 = v123;
              *(&v123 + 1) = 0;
              *(v68 + 8) = v63;
            }

            *(v3 + 20) = v64 + 1;
            this = *(&v123 + 1);
            *(&v123 + 1) = 0;
            if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              this = WTF::StringImpl::destroy(this, a2);
            }

            v69 = *(*(v13 + 112) + 24);
            if (v69)
            {
              v70 = *(v69 + 48);
              if (v70 == 4)
              {
                this = WGSL::RewriteGlobalVariables::packStructType(v5, v69);
                if (this)
                {
                  v119 = 0;
                  v120 = 0;
                  if (*(this + 48) == 4)
                  {
                    v72 = *(*this + 48);
                    if (v72)
                    {
                      atomic_fetch_add_explicit(v72, 2u, memory_order_relaxed);
                    }

                    *(&v123 + 1) = 0;
                    v124 = 0;
                    *&v123 = off_2838D37C0;
                    v125 = v72;
                    WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
                  }

LABEL_170:
                  mpark::throw_bad_variant_access(this);
                }
              }

              else if (v70 == 3)
              {
                this = WGSL::RewriteGlobalVariables::packType(v5, *v69);
                if (this)
                {
                  v71 = *(v5 + 40);
                  *(v71 + 9) = 257;
                  this = WGSL::TypeStore::arrayType(v71 + 96, this, *(v69 + 8), *(v69 + 16));
                  if (this)
                  {
                    if (*(this + 48) == 3)
                    {
                      v119 = 0;
                      v120 = 0;
                      WTF::StringImpl::createWithoutCopyingNonEmpty();
                      *(&v123 + 1) = 0;
                      v124 = 0;
                      *&v123 = off_2838D37C0;
                      WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
                    }

                    goto LABEL_170;
                  }
                }
              }
            }

            *&v123 = v13;
            DWORD2(v123) = v19;
            v11 = HIDWORD(v117);
            if (HIDWORD(v117) == v117)
            {
              this = WTF::Vector<std::tuple<WGSL::AST::Function *,WGSL::AST::CallExpression *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v116, HIDWORD(v117) + 1, &v123);
              v11 = HIDWORD(v117);
              v7 = v116;
              *(v116 + HIDWORD(v117)) = *this;
            }

            else
            {
              v7 = v116;
              *(v116 + HIDWORD(v117)) = v123;
            }

            v8 = v11 + 1;
            HIDWORD(v117) = v11 + 1;
            goto LABEL_5;
          }
        }

        if (v61 <= 2 * v60)
        {
          goto LABEL_70;
        }

        goto LABEL_72;
      }

LABEL_36:
      *v32 = v22;
      *(v32 + 1) = v23;
      v32[1] = v13;
      v37 = *(v24 - 16);
      v38 = *(v24 - 12) + 1;
      *(v24 - 12) = v38;
      v39 = (v37 + v38);
      v40 = *(v24 - 4);
      if (v40 > 0x400)
      {
        if (v40 > 2 * v39)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (3 * v40 > 4 * v39)
        {
          goto LABEL_43;
        }

        if (!v40)
        {
          v41 = 8;
LABEL_42:
          WTF::HashTable<std::tuple<unsigned int,unsigned int>,WTF::KeyValuePair<std::tuple<unsigned int,unsigned int>,WGSL::AST::Variable *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<unsigned int,unsigned int>,WGSL::AST::Variable *>>,WTF::DefaultHash<std::tuple<unsigned int,unsigned int>>,WTF::HashMap<std::tuple<unsigned int,unsigned int>,WGSL::AST::Variable *,WTF::DefaultHash<std::tuple<unsigned int,unsigned int>>,WTF::HashTraits<std::tuple<unsigned int,unsigned int>>,WTF::HashTraits<WGSL::AST::Variable *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<unsigned int,unsigned int>>,WTF::FastMalloc>::rehash((v5 + 56), v41);
          goto LABEL_43;
        }
      }

      v41 = v40 << (6 * v38 >= (2 * v40));
      goto LABEL_42;
    }

LABEL_5:
    v10 = v113;
LABEL_6:
    if (++v9 == v6)
    {
      goto LABEL_95;
    }
  }

  v79 = 0;
  v80 = *(v13 + 164);
  do
  {
    ++v79;
    v81 = v80 > 9;
    LODWORD(v80) = v80 / 0xA;
  }

  while (v81);
  v82 = 0;
  v83 = v3;
  do
  {
    ++v82;
    v81 = v83 > 9;
    v83 /= 0xAu;
  }

  while (v81);
  if (v82 < 0)
  {
    goto LABEL_176;
  }

  v84 = __OFADD__(v82, 15);
  v85 = v82 + 15;
  if (v84)
  {
    goto LABEL_176;
  }

  v84 = __OFADD__(v85, 44);
  v86 = v85 + 44;
  v87 = v84;
  if (v79 < 0)
  {
    goto LABEL_176;
  }

  if (v87)
  {
    goto LABEL_176;
  }

  v84 = __OFADD__(v79, v86);
  v88 = v79 + v86;
  if (v84)
  {
    goto LABEL_176;
  }

  v89 = (v88 + 24);
  if (__OFADD__(v88, 24))
  {
    goto LABEL_176;
  }

  if (v88 != -24)
  {
    if ((v89 & 0x80000000) == 0)
    {
      WTF::tryFastCompactMalloc((v89 + 20));
      v90 = v123;
      if (v123)
      {
        *v123 = 2;
        *(v90 + 4) = v89;
        *(v90 + 8) = v90 + 20;
        *(v90 + 16) = 4;
        qmemcpy((v90 + 20), "global has buffer index ", 24);
        if (v89 > 0x17)
        {
          v91 = v89 - 24;
          LODWORD(v119) = v15;
          WTF::StringTypeAdapter<unsigned int,void>::writeTo<unsigned char>(&v119, (v90 + 44), v89 - 24);
          LODWORD(v92) = 0;
          v93 = v119;
          do
          {
            v92 = (v92 + 1);
            v81 = v93 > 9;
            v93 /= 0xAu;
          }

          while (v81);
          v94 = v91 - v92;
          if (v91 >= v92)
          {
            v95 = (v90 + 44 + v92);
            qmemcpy(v95, " which exceeds the max allowed buffer index ", 44);
            if (v94 > 0x2B)
            {
              v96 = v94 - 44;
              v97 = v95 + 44;
              LODWORD(v123) = v3;
              this = WTF::StringTypeAdapter<unsigned int,void>::writeTo<unsigned char>(&v123, v95 + 44, v94 - 44);
              LODWORD(v98) = 0;
              v99 = v123;
              do
              {
                v98 = (v98 + 1);
                v81 = v99 > 9;
                v99 /= 0xAu;
              }

              while (v81);
              if (v96 >= v98)
              {
                qmemcpy(&v97[v98], " for this stage", 15);
                goto LABEL_168;
              }
            }
          }
        }

LABEL_173:
        __break(1u);
LABEL_174:
        __break(0xC471u);
        JUMPOUT(0x22571C214);
      }
    }

LABEL_176:
    __break(0xC471u);
    JUMPOUT(0x22571C23CLL);
  }

  v90 = MEMORY[0x277CD4668];
  atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
LABEL_168:
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = v90;
  *(a3 + 24) = 1;
  if (v7)
  {
LABEL_165:
    v116 = 0;
    LODWORD(v117) = 0;
    return WTF::fastFree(v7, a2);
  }

  return this;
}

uint64_t WGSL::RewriteGlobalVariables::visitEntryPoint@<X0>(uint64_t result@<X0>, WTF::StringImpl *a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 200);
  v7 = *v6;
  if (!*v6)
  {
LABEL_17:
    v14 = 0;
    v15 = **(v5 + 200);
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v8 = *(a2 + 2);
  if (v8 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x2257227C0);
  }

  if (!v8)
  {
    __break(0xC471u);
    JUMPOUT(0x2257227E0);
  }

  v9 = *(v7 - 8);
  v10 = *(v8 + 4);
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(v8);
  }

  else
  {
    v11 = v10 >> 8;
  }

  for (i = 0; ; v11 = i + v13)
  {
    v13 = v11 & v9;
    result = *(v7 + 16 * v13);
    if (result == -1)
    {
      goto LABEL_8;
    }

    if (!result)
    {
      break;
    }

    result = WTF::equal(result, *(v4 + 16), a3);
    if (result)
    {
      v14 = v7 + 16 * v13;
      v15 = **(v5 + 200);
      if (v15)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }

LABEL_8:
    ++i;
  }

  if (!*v6)
  {
    goto LABEL_17;
  }

  v14 = *v6 + 16 * *(*v6 - 4);
  v15 = **(v5 + 200);
  if (v15)
  {
LABEL_18:
    v15 += 16 * *(v15 - 4);
  }

LABEL_19:
  if (v14 == v15)
  {
LABEL_236:
    *a4 = 0;
    *(a4 + 24) = 0;
    return result;
  }

  v16 = *(v5 + 96);
  while (v16)
  {
    v17 = v16;
    v16 = *(v16 + 2);
    v18 = *v17;
    *v17 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, a2);
    }

    WTF::fastFree(v17, a2);
  }

  v19 = *(v5 + 88);
  if (v19)
  {
    *(v5 + 88) = 0;
    WTF::fastFree((v19 - 16), a2);
  }

  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  v20 = *(v5 + 72);
  if (v20)
  {
    *(v5 + 72) = 0;
    WTF::fastFree((v20 - 16), a2);
  }

  v21 = *(v5 + 256);
  if (v21)
  {
    *(v5 + 256) = 0;
    WTF::fastFree((v21 - 16), a2);
  }

  v23 = v5 + 136;
  v22 = *(v5 + 136);
  if (v22)
  {
    *v23 = 0;
    WTF::fastFree((v22 - 16), a2);
  }

  v24 = *(v5 + 208);
  v616 = 0;
  BYTE8(v619) = 0;
  v613 = 0uLL;
  LOBYTE(v614) = 0;
  v617 = 0;
  LOBYTE(v618) = 0;
  v620 = 0uLL;
  v25 = *(v4 + 16);
  if (v25 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x225722800);
  }

  if (!v25)
  {
    __break(0xC471u);
    JUMPOUT(0x225722820);
  }

  v26 = *v24;
  if (*v24 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Reflection::EntryPointInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Reflection::EntryPointInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Reflection::EntryPointInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Reflection::EntryPointInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v24, 8u, 0), (v26 = *v24) != 0))
  {
    v27 = *(v26 - 8);
    v28 = *(v4 + 16);
    v29 = *(v28 + 4);
    v592 = v5;
    v587 = v14;
    if (v29 >= 0x100)
    {
      goto LABEL_39;
    }

LABEL_41:
    v30 = WTF::StringImpl::hashSlowCase(v28);
  }

  else
  {
    v27 = 0;
    v28 = *(v4 + 16);
    v29 = *(v28 + 4);
    v592 = v5;
    v587 = v14;
    if (v29 < 0x100)
    {
      goto LABEL_41;
    }

LABEL_39:
    v30 = v29 >> 8;
  }

  v31 = 0;
  v32 = 1;
  v33 = 104;
  while (2)
  {
    v34 = v30 & v27;
    v35 = v26 + 104 * (v30 & v27);
    v36 = *v35;
    if (*v35 == -1)
    {
      v31 = v26 + 104 * v34;
LABEL_44:
      v30 = v32 + v34;
      v32 = (v32 + 1);
      continue;
    }

    break;
  }

  if (v36)
  {
    if (WTF::equal(v36, *(v4 + 16), a3))
    {
      WGSL::Reflection::EntryPointInformation::~EntryPointInformation(&v613, a2);
      __break(0xC471u);
      JUMPOUT(0x22571C524);
    }

    goto LABEL_44;
  }

  if (v31)
  {
    v36 = 0;
    *(v31 + 96) = 0;
    *(v31 + 64) = 0u;
    *(v31 + 80) = 0u;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 0u;
    *v31 = 0u;
    *(v31 + 16) = 0u;
    --*(*v24 - 16);
    v35 = v31;
  }

  v37 = *(v4 + 16);
  v38 = v592;
  if (v37)
  {
    atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
    v36 = *v35;
  }

  *v35 = v37;
  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, a2);
  }

  v39 = 0;
  v40 = v613;
  v613 = 0uLL;
  *&v599[8] = *(&v40 + 1);
  v599[16] = 0;
  LOBYTE(v601) = 0;
  if (v616 == 1)
  {
    v41 = v614;
    v614 = 0;
    *&v599[16] = v41;
    v42 = v615;
    v615 = 0;
    v600 = v42;
    v39 = 1;
    LOBYTE(v601) = 1;
  }

  v43 = v617;
  v617 = 0;
  v603 = v618;
  v604 = v619;
  v605 = v620;
  v602 = v43;
  *v599 = 0;
  v44 = *(v35 + 8);
  *(v35 + 8) = v40;
  if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v44, a2);
  }

  v45 = *&v599[8];
  *&v599[8] = 0;
  v46 = *(v35 + 16);
  *(v35 + 16) = v45;
  if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, a2);
  }

  if (*(v35 + 40) == v39)
  {
    if (*(v35 + 40))
    {
      v47 = *(v35 + 36);
      v33 = *(v35 + 24);
      if (v47)
      {
        v48 = v33 + 24 * v47;
        do
        {
          v49 = *(v33 + 20);
          v50 = *(v33 + 8);
          if (v49)
          {
            v32 = 120 * v49;
            v51 = (v50 + 40);
            do
            {
              v52 = *v51;
              *v51 = 0;
              if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v52, a2);
              }

              v51 += 15;
              v32 -= 120;
            }

            while (v32);
            v50 = *(v33 + 8);
            v38 = v592;
          }

          if (v50)
          {
            *(v33 + 8) = 0;
            *(v33 + 16) = 0;
            WTF::fastFree(v50, a2);
          }

          v33 += 24;
        }

        while (v33 != v48);
        v33 = *(v35 + 24);
      }

      if (v33)
      {
        *(v35 + 24) = 0;
        *(v35 + 32) = 0;
        WTF::fastFree(v33, a2);
      }

      *(v35 + 24) = *&v599[16];
      v62 = v600;
      *&v599[16] = 0;
      v600 = 0;
      *(v35 + 32) = v62;
    }

    v60 = v599;
    v602 = 0;
    v61 = *(v35 + 48);
    *(v35 + 48) = v43;
    if (v61)
    {
      goto LABEL_98;
    }
  }

  else if (*(v35 + 40))
  {
    v53 = *(v35 + 36);
    v33 = *(v35 + 24);
    if (v53)
    {
      v54 = v33 + 24 * v53;
      do
      {
        v55 = *(v33 + 20);
        v56 = *(v33 + 8);
        if (v55)
        {
          v32 = 120 * v55;
          v57 = (v56 + 40);
          do
          {
            v58 = *v57;
            *v57 = 0;
            if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v58, a2);
            }

            v57 += 15;
            v32 -= 120;
          }

          while (v32);
          v56 = *(v33 + 8);
          v38 = v592;
        }

        if (v56)
        {
          *(v33 + 8) = 0;
          *(v33 + 16) = 0;
          WTF::fastFree(v56, a2);
        }

        v33 += 24;
      }

      while (v33 != v54);
      v33 = *(v35 + 24);
    }

    if (v33)
    {
      *(v35 + 24) = 0;
      *(v35 + 32) = 0;
      WTF::fastFree(v33, a2);
    }

    *(v35 + 40) = 0;
    v60 = v599;
    v602 = 0;
    v61 = *(v35 + 48);
    *(v35 + 48) = v43;
    if (v61)
    {
LABEL_98:
      v63 = *(v61 - 4);
      if (v63)
      {
        v33 = 4294967294;
        v32 = v61;
        do
        {
          if (*v32 != -1)
          {
            v64 = *(v32 + 8);
            *(v32 + 8) = 0;
            if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v64, a2);
            }

            v65 = *v32;
            *v32 = 0;
            if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v65, a2);
            }
          }

          v32 += 32;
          --v63;
        }

        while (v63);
      }

      WTF::fastFree((v61 - 16), a2);
    }
  }

  else
  {
    *(v35 + 24) = *&v599[16];
    v59 = v600;
    *&v599[16] = 0;
    v600 = 0;
    *(v35 + 32) = v59;
    *(v35 + 40) = 1;
    v60 = v599;
    v602 = 0;
    v61 = *(v35 + 48);
    *(v35 + 48) = v43;
    if (v61)
    {
      goto LABEL_98;
    }
  }

  v66 = v603;
  v67 = v604;
  *(v35 + 88) = v605;
  *(v35 + 72) = v67;
  *(v35 + 56) = v66;
  WGSL::Reflection::EntryPointInformation::~EntryPointInformation(v599, a2);
  v69 = *v24;
  if (*v24)
  {
    v70 = *(v69 - 16);
    v71 = *(v69 - 12) + 1;
    *(v69 - 12) = v71;
    v72 = (v70 + v71);
    v73 = *(v69 - 4);
    if (v73 <= 0x400)
    {
      goto LABEL_111;
    }

LABEL_115:
    if (v73 <= 2 * v72)
    {
LABEL_116:
      v74 = v73 << (6 * v71 >= (2 * v73));
      goto LABEL_117;
    }
  }

  else
  {
    v71 = 1;
    MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
    v72 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
    v73 = MEMORY[0xFFFFFFFFFFFFFFFC];
    if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
    {
      goto LABEL_115;
    }

LABEL_111:
    if (3 * v73 <= 4 * v72)
    {
      if (v73)
      {
        goto LABEL_116;
      }

      v74 = 8;
LABEL_117:
      v35 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Reflection::EntryPointInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Reflection::EntryPointInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Reflection::EntryPointInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Reflection::EntryPointInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v24, v74, v35);
    }
  }

  WGSL::Reflection::EntryPointInformation::~EntryPointInformation(&v613, v68);
  *(v38 + 192) = *(v4 + 8);
  v77 = (v35 + 8);
  *(v38 + 128) = v35 + 8;
  v78 = *(v4 + 16);
  if (v78)
  {
    add_explicit = atomic_fetch_add_explicit(v78, 2u, memory_order_relaxed);
  }

  v79 = *v77;
  *v77 = v78;
  if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v79, v75);
  }

  v80 = *(v38 + 128);
  v81 = *(*v4 + 48);
  if (v81)
  {
    add_explicit = atomic_fetch_add_explicit(v81, 2u, memory_order_relaxed);
  }

  v82 = *(v80 + 8);
  *(v80 + 8) = v81;
  if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v82, v75);
  }

  v83 = *(v38 + 192);
  switch(v83)
  {
    case 1:
      v88 = *(v38 + 128);
      if (*(v88 + 72))
      {
        *(v88 + 72) = 0;
      }

      *(v88 + 48) = 0;
      break;
    case 2:
      v86 = *(v38 + 128);
      if (*(v86 + 72) != 1)
      {
        v87 = 1;
        goto LABEL_148;
      }

      break;
    case 4:
      v84 = *(*v4 + 84);
      if (v84)
      {
        v85 = *(*v4 + 72);
        v60 = 8 * v84;
        while (1)
        {
          v24 = *v85;
          if ((*(**v85 + 16))(*v85) == 14)
          {
            break;
          }

          ++v85;
          v60 -= 8;
          if (!v60)
          {
            goto LABEL_149;
          }
        }

        v89 = *(v24 + 40);
        v86 = *(v38 + 128);
        add_explicit = *(v86 + 72);
        *(v86 + 48) = *(v24 + 24);
        *(v86 + 64) = v89;
        if (add_explicit != 2)
        {
          v87 = 2;
LABEL_148:
          *(v86 + 72) = v87;
        }
      }

      break;
  }

LABEL_149:
  v90 = *(v587 + 8);
  v580 = v4;
  if (v90)
  {
    *(v38 + 144) = 0;
    v91 = *(v90 + 3);
    if (v91)
    {
      v92 = 0;
      v93 = *v90;
      v589 = (*v90 + 24 * v91);
      v590 = 0;
      while (1)
      {
        v94 = *(v93 + 20);
        ++v92;
        if (v94)
        {
          break;
        }

LABEL_152:
        v93 += 24;
        if (v93 == v589)
        {
          goto LABEL_226;
        }
      }

      v95 = *(v93 + 8);
      if (v92 != -1)
      {
        v96 = v95 + 120 * v94;
        while (1)
        {
          v97 = *(v38 + 192);
          if ((*(v95 + 8) & v97) != 0)
          {
            switch(v97)
            {
              case 1:
                v98 = *(v95 + 64);
                if ((v98 & 0x100000000) == 0)
                {
                  goto LABEL_157;
                }

                break;
              case 4:
                v98 = *(v95 + 112);
                if ((v98 & 0x100000000) == 0)
                {
                  goto LABEL_157;
                }

                break;
              case 2:
                v98 = *(v95 + 88);
                if ((v98 & 0x100000000) == 0)
                {
                  goto LABEL_157;
                }

                break;
              default:
                goto LABEL_157;
            }

            LODWORD(v61) = *v95;
            v99 = *(v38 + 256);
            if (!v99)
            {
              v100 = WTF::fastZeroedMalloc(0x70);
              *v100 = xmmword_225881CF0;
              v99 = v100 + 1;
              *(v38 + 256) = v100 + 1;
            }

            v101 = v61 + 1;
            v102 = *(v99 - 2);
            v103 = v102 & ((0xD7862706ELL * (277951225 * v92 + 95187966 * (v61 + 1))) >> 4);
            v104 = v99 + 3 * v103;
            v105 = *v104;
            v106 = v104[1];
            if (*v104)
            {
              v107 = 0;
              v108 = 1;
              while (v105 != v92 || v106 != v101)
              {
                if (v105 == -1)
                {
                  v107 = v104;
                }

                v103 = (v103 + v108) & v102;
                v104 = v99 + 3 * v103;
                v105 = *v104;
                v106 = v104[1];
                ++v108;
                if (!*v104)
                {
                  if (v107)
                  {
                    v107[2] = 0;
                    *v107 = 0;
                    v99 = *(v38 + 256);
                    --*(v99 - 4);
                    v104 = v107;
                  }

                  goto LABEL_179;
                }
              }

              goto LABEL_157;
            }

LABEL_179:
            *v104 = v92;
            v104[1] = v101;
            v104[2] = v98;
            v109 = *(v99 - 4);
            LODWORD(v61) = *(v99 - 3) + 1;
            *(v99 - 3) = v61;
            v110 = (v109 + v61);
            v33 = *(v99 - 1);
            if (v33 > 0x400)
            {
              if (v33 <= 2 * v110)
              {
                goto LABEL_184;
              }
            }

            else if (3 * v33 <= 4 * v110)
            {
              if (v33)
              {
LABEL_184:
                v111 = v33 << (6 * v61 >= (2 * v33));
              }

              else
              {
                v111 = 8;
              }

              v112 = WTF::fastZeroedMalloc((12 * v111 + 16));
              v592[32] = v112 + 4;
              v112[2] = v111 - 1;
              v112[3] = v111;
              *v112 = 0;
              v112[1] = v61;
              if (v33)
              {
                for (j = 0; j != v33; ++j)
                {
                  v114 = v99 + 3 * j;
                  v115 = *v114;
                  if (*v114 != -1)
                  {
                    v116 = v114[1];
                    if (v115 | v116)
                    {
                      v117 = v592[32];
                      if (v117)
                      {
                        v118 = *(v117 - 8);
                      }

                      else
                      {
                        v118 = 0;
                      }

                      v119 = v118 & ((0xD7862706ELL * (277951225 * v115 + 95187966 * v116)) >> 4);
                      v120 = 1;
                      do
                      {
                        v121 = v117 + 12 * v119;
                        v119 = (v119 + v120++) & v118;
                      }

                      while (*v121);
                      v122 = *v114;
                      *(v121 + 8) = v114[2];
                      *v121 = v122;
                    }
                  }
                }
              }

              WTF::fastFree((v99 - 1), 0x5AC73FE);
              v38 = v592;
            }
          }

LABEL_157:
          v95 += 120;
          if (v95 == v96)
          {
            goto LABEL_152;
          }
        }
      }

      v123 = *(v38 + 192);
      v124 = 120 * v94;
      while (1)
      {
        if ((*(v95 + 8) & v123) != 0)
        {
          switch(v123)
          {
            case 1:
              v125 = 64;
LABEL_198:
              if (*(v95 + v125 + 4))
              {
                __break(0xC471u);
                JUMPOUT(0x225722840);
              }

              break;
            case 2:
              v125 = 88;
              goto LABEL_198;
            case 4:
              v125 = 112;
              goto LABEL_198;
          }
        }

        v95 += 120;
        v92 = -1;
        v124 -= 120;
        if (!v124)
        {
          goto LABEL_152;
        }
      }
    }
  }

  else
  {
    v126 = *(v38 + 128);
    if (*(v126 + 32) == 1)
    {
      v127 = *(v126 + 28);
      v24 = *(v126 + 16);
      if (v127)
      {
        v60 = v24 + 24 * v127;
        LODWORD(v35) = -2;
        do
        {
          v128 = *(v24 + 20);
          v129 = *(v24 + 8);
          if (v128)
          {
            v61 = 120 * v128;
            v33 = v129 + 40;
            do
            {
              v130 = *v33;
              *v33 = 0;
              if (v130 && atomic_fetch_add_explicit(v130, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v130, v75);
              }

              v33 += 120;
              v61 -= 120;
            }

            while (v61);
            v129 = *(v24 + 8);
          }

          if (v129)
          {
            *(v24 + 8) = 0;
            *(v24 + 16) = 0;
            WTF::fastFree(v129, v75);
          }

          v24 += 24;
        }

        while (v24 != v60);
        v24 = *(v126 + 16);
      }

      if (v24)
      {
        *(v126 + 16) = 0;
        *(v126 + 24) = 0;
        WTF::fastFree(v24, v75);
      }

      *(v126 + 16) = 0;
      *(v126 + 24) = 0;
    }

    else
    {
      *(v126 + 16) = 0;
      *(v126 + 24) = 0;
      *(v126 + 32) = 1;
    }

    v131 = *(v38 + 128);
    v132 = *(v131 + 32);
    if ((v132 & 1) == 0)
    {
      goto LABEL_957;
    }

    *(v38 + 144) = v131 + 16;
  }

LABEL_226:
  v4 = v580;
  result = (*(*v38 + 56))(v38, *v580);
  if (*(v38 + 32) == 1)
  {
    v134 = *(v38 + 8);
    if (v134)
    {
      atomic_fetch_add_explicit(v134, 2u, memory_order_relaxed);
    }

    v135 = a4;
    *(a4 + 8) = *(v38 + 16);
    *a4 = v134;
    goto LABEL_230;
  }

  v136 = *(v38 + 88);
  if (!v136 || !*(v136 - 12))
  {
    result = WGSL::RewriteGlobalVariables::insertDynamicOffsetsBufferIfNeeded(v38);
    goto LABEL_236;
  }

  v137 = *v580;
  v621 = 0;
  v622 = 0;
  v623 = 0;
  v138 = *(v38 + 40);
  v32 = *(v138 + 52);
  v23 = &v614;
  *&v613 = &v614;
  *(&v613 + 1) = 16;
  __src = &v612;
  v610 = &v612;
  v611 = 16;
  v38 = *(v38 + 96);
  if (!v38)
  {
    v139 = 0;
    v140 = (v137 + 8);
    *v599 = *(v137 + 8);
    *&v599[16] = &v601;
    v600 = 16;
    v141 = 16;
    v38 = v592;
LABEL_239:
    memcpy(&v601, &v614, 8 * v139);
    goto LABEL_240;
  }

  v582 = v137;
  v590 = &v614;
  do
  {
    v24 = v592[6];
    if (!v24)
    {
LABEL_1024:
      __break(0xC471u);
      JUMPOUT(0x225722798);
    }

    v152 = *v38;
    if (*v38 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x225722868);
    }

    if (!v152)
    {
      __break(0xC471u);
      JUMPOUT(0x225722888);
    }

    v153 = *(v24 - 8);
    v154 = *(v152 + 4);
    if (v154 < 0x100)
    {
      v155 = WTF::StringImpl::hashSlowCase(v152);
    }

    else
    {
      v155 = v154 >> 8;
    }

    for (k = 0; ; v155 = k + v35)
    {
      v35 = v155 & v153;
      inserted = *(v24 + 32 * v35);
      if (inserted == -1)
      {
        goto LABEL_262;
      }

      if (!inserted)
      {
        break;
      }

      inserted = WTF::equal(inserted, *v38, v133);
      if (inserted)
      {
        v131 = v24 + 32 * v35;
        v158 = v592[6];
        if (v158)
        {
          add_explicit = *(v158 - 4);
          goto LABEL_270;
        }

        goto LABEL_271;
      }

LABEL_262:
      ++k;
    }

    v158 = v592[6];
    if (!v158)
    {
      goto LABEL_1024;
    }

    add_explicit = *(v158 - 4);
    v131 = v158 + 32 * add_explicit;
LABEL_270:
    if (v131 == v158 + 32 * add_explicit)
    {
      goto LABEL_1024;
    }

LABEL_271:
    v159 = v131 + 8;
    v60 = *(v131 + 24);
    v160 = *(v60 + 128);
    if (v160 < 2)
    {
      goto LABEL_274;
    }

    if (v160 == 2)
    {
      v165 = *(v60 + 144);
      if (!v165[48])
      {
        v166 = 0;
        v167 = *v165;
        if (v167 > 2)
        {
          if (v167 <= 0xD)
          {
            if (v167 == 4)
            {
              v166 = 4;
            }

            else if (v167 == 5)
            {
              v166 = 1;
            }

            else if (((1 << v167) & 0x3F48) != 0)
            {
              goto LABEL_1036;
            }
          }
        }

        else
        {
          if (v167 != 1)
          {
            if (v167 == 2)
            {
              v166 = 3;
              goto LABEL_338;
            }

LABEL_1036:
            __break(0xC471u);
            JUMPOUT(0x225722B28);
          }

          v166 = 2;
        }

LABEL_338:
        v204 = *(v60 + 80);
        if (v204)
        {
          atomic_fetch_add_explicit(v204, 2u, memory_order_relaxed);
        }

        v205 = *(v60 + 172);
        if ((v205 & 0x100000000) != 0)
        {
          WTF::String::number(v205);
          v206 = *v599;
          *v599 = 0;
          if (v204)
          {
            if (atomic_fetch_add_explicit(v204, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v204, v75);
              v207 = *v599;
              *v599 = 0;
              if (v207)
              {
                if (atomic_fetch_add_explicit(v207, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v207, v75);
                }
              }
            }
          }

          v204 = v206;
        }

        v208 = v592[16];
        v209 = *(v60 + 48);
        if (v209)
        {
          atomic_fetch_add_explicit(v209, 2u, memory_order_relaxed);
        }

        if (v204 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x225722B48);
        }

        if (!v204)
        {
          __break(0xC471u);
          JUMPOUT(0x225722B68);
        }

        v61 = v32;
        v210 = *(v60 + 120);
        v211 = *(v208 + 40);
        if (v211 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Reflection::SpecializationConstant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Reflection::SpecializationConstant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Reflection::SpecializationConstant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Reflection::SpecializationConstant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash((v208 + 40), 8u), (v211 = *(v208 + 40)) != 0))
        {
          v212 = *(v211 - 8);
          v213 = v204[4];
          LODWORD(v585) = v166;
          v589 = v208;
          v584 = v210;
          if (v213 >= 0x100)
          {
            goto LABEL_354;
          }

LABEL_356:
          v214 = WTF::StringImpl::hashSlowCase(v204);
        }

        else
        {
          v212 = 0;
          v213 = v204[4];
          LODWORD(v585) = v166;
          v589 = v208;
          v584 = v210;
          if (v213 < 0x100)
          {
            goto LABEL_356;
          }

LABEL_354:
          v214 = v213 >> 8;
        }

        v215 = 0;
        for (m = 1; ; ++m)
        {
          v217 = v214 & v212;
          v33 = v211 + 32 * v217;
          v218 = *v33;
          if (*v33 == -1)
          {
            v215 = (v211 + 32 * v217);
          }

          else
          {
            if (!v218)
            {
              if (v215)
              {
                *v215 = 0u;
                v215[1] = 0u;
                --*(v589[5] - 4);
                v33 = v215;
              }

              v4 = v580;
              v23 = &v614;
              v32 = v61;
              atomic_fetch_add_explicit(v204, 2u, memory_order_relaxed);
              v219 = *v33;
              *v33 = v204;
              if (v219 && atomic_fetch_add_explicit(v219, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v219, v75);
              }

              v220 = *(v33 + 8);
              *(v33 + 8) = v209;
              if (v220 && atomic_fetch_add_explicit(v220, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v220, v75);
              }

              *(v33 + 16) = v585;
              *(v33 + 24) = v584;
              v221 = v589[5];
              if (v221)
              {
                v222 = *(v221 - 4);
                v223 = *(v221 - 3) + 1;
                *(v221 - 3) = v223;
                v224 = (v222 + v223);
                v225 = *(v221 - 1);
                if (v225 <= 0x400)
                {
                  goto LABEL_376;
                }

LABEL_380:
                if (v225 <= 2 * v224)
                {
LABEL_381:
                  v226 = v225 << (6 * v223 >= (2 * v225));
                  goto LABEL_382;
                }
              }

              else
              {
                v223 = 1;
                MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
                v224 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
                v225 = MEMORY[0xFFFFFFFFFFFFFFFC];
                if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
                {
                  goto LABEL_380;
                }

LABEL_376:
                if (3 * v225 <= 4 * v224)
                {
                  if (v225)
                  {
                    goto LABEL_381;
                  }

                  v226 = 8;
LABEL_382:
                  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Reflection::SpecializationConstant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Reflection::SpecializationConstant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Reflection::SpecializationConstant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Reflection::SpecializationConstant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v589 + 5, v226);
                }
              }

LABEL_383:
              if (atomic_fetch_add_explicit(v204, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v204, v75);
              }

              goto LABEL_254;
            }

            if (WTF::equal(v218, v204, v133))
            {
              v4 = v580;
              v23 = &v614;
              v32 = v61;
              if (v209 && atomic_fetch_add_explicit(v209, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v209, v75);
              }

              goto LABEL_383;
            }
          }

          v214 = m + v217;
        }
      }

LABEL_1015:
      mpark::throw_bad_variant_access(inserted);
    }

    if (v160 == 3)
    {
LABEL_274:
      if ((*(v131 + 16) & 1) == 0)
      {
        *v599 = v131 + 8;
        v161 = HIDWORD(v623);
        if (HIDWORD(v623) == v623)
        {
          v162 = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v622, HIDWORD(v623) + 1, v599);
          v163 = HIDWORD(v623);
          *(v622 + HIDWORD(v623)) = *v162;
          HIDWORD(v623) = v163 + 1;
          v164 = *(v60 + 104);
          if (!v164)
          {
            goto LABEL_326;
          }

LABEL_323:
          if (*(v164 + 24) == 5)
          {
            v200 = *(v60 + 144);
            *v599 = v200;
            v201 = HIDWORD(v613);
            if (HIDWORD(v613) == DWORD2(v613))
            {
              v202 = WTF::Vector<WGSL::Type const*,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v613, HIDWORD(v613) + 1, v599);
              v201 = HIDWORD(v613);
              *(v613 + 8 * HIDWORD(v613)) = *v202;
            }

            else
            {
              *(v613 + 8 * HIDWORD(v613)) = v200;
            }

            HIDWORD(v613) = v201 + 1;
            goto LABEL_254;
          }
        }

        else
        {
          *(v622 + HIDWORD(v623)) = v159;
          HIDWORD(v623) = v161 + 1;
          v164 = *(v60 + 104);
          if (v164)
          {
            goto LABEL_323;
          }
        }

LABEL_326:
        v203 = *(v60 + 144);
        *v599 = v203;
        v151 = HIDWORD(v611);
        if (HIDWORD(v611) == v611)
        {
          v150 = WTF::Vector<WGSL::Type const*,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v610, HIDWORD(v611) + 1, v599);
          v151 = HIDWORD(v611);
          *(v610 + HIDWORD(v611)) = *v150;
        }

        else
        {
          *(v610 + HIDWORD(v611)) = v203;
        }

        HIDWORD(v611) = v151 + 1;
        goto LABEL_254;
      }
    }

    else
    {
      v132 = *(v131 + 16);
      if ((v132 & 1) == 0)
      {
        goto LABEL_957;
      }
    }

    v35 = *(v131 + 8);
    v61 = *(v131 + 12);
    v33 = v621;
    if (!v621)
    {
      WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::HashMap<unsigned long long,WGSL::RewriteGlobalVariables::Global *,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::HashMap<unsigned long long,WGSL::RewriteGlobalVariables::Global *,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::IntHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::HashMap<unsigned long long,WGSL::RewriteGlobalVariables::Global *,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::HashMap<unsigned long long,WGSL::RewriteGlobalVariables::Global *,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(&v621, 8u, 0);
      v33 = v621;
    }

    v168 = *(v33 - 8);
    v169 = (~(v35 << 32) + v35) ^ ((~(v35 << 32) + v35) >> 22);
    v170 = 9 * ((v169 + ~(v169 << 13)) ^ ((v169 + ~(v169 << 13)) >> 8));
    v171 = (v170 ^ (v170 >> 15)) + ~((v170 ^ (v170 >> 15)) << 27);
    v172 = v168 & ((v171 >> 31) ^ v171);
    v173 = (v33 + 16 * v172);
    v174 = *v173;
    if (*v173 == -1)
    {
LABEL_294:
      v177 = v173[1];
      *v173 = v35;
      v173[1] = 0;
      if (v177)
      {
        WTF::fastFree((v177 - 16), v75);
      }

      v178 = *(v33 - 16);
      v179 = *(v33 - 12) + 1;
      *(v33 - 12) = v179;
      v180 = (v178 + v179);
      v181 = *(v33 - 4);
      if (v181 > 0x400)
      {
        if (v181 > 2 * v180)
        {
          goto LABEL_303;
        }
      }

      else
      {
        if (3 * v181 > 4 * v180)
        {
          goto LABEL_303;
        }

        if (!v181)
        {
          v182 = 8;
LABEL_302:
          v173 = WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::HashMap<unsigned long long,WGSL::RewriteGlobalVariables::Global *,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::HashMap<unsigned long long,WGSL::RewriteGlobalVariables::Global *,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::IntHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::HashMap<unsigned long long,WGSL::RewriteGlobalVariables::Global *,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::HashMap<unsigned long long,WGSL::RewriteGlobalVariables::Global *,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(&v621, v182, v173);
          goto LABEL_303;
        }
      }

      v182 = v181 << (6 * v179 >= (2 * v181));
      goto LABEL_302;
    }

    v175 = 0;
    v176 = 1;
    while (v174 != v35)
    {
      if (v174 == -2)
      {
        v175 = v173;
      }

      v172 = (v172 + v176) & v168;
      v173 = (v33 + 16 * v172);
      v174 = *v173;
      ++v176;
      if (*v173 == -1)
      {
        if (v175)
        {
          *v175 = -1;
          v175[1] = 0;
          --*(v33 - 16);
          v173 = v175;
        }

        goto LABEL_294;
      }
    }

LABEL_303:
    v185 = v173[1];
    v184 = v173 + 1;
    v183 = v185;
    if (!v185)
    {
      WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::CommandEncoder *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::CommandEncoder *>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::CommandEncoder *,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::CommandEncoder *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(v184, 8u);
      v183 = *v184;
    }

    v186 = *(v183 - 8);
    v187 = (~(v61 << 32) + v61) ^ ((~(v61 << 32) + v61) >> 22);
    v188 = 9 * ((v187 + ~(v187 << 13)) ^ ((v187 + ~(v187 << 13)) >> 8));
    v189 = (v188 ^ (v188 >> 15)) + ~((v188 ^ (v188 >> 15)) << 27);
    v190 = v186 & ((v189 >> 31) ^ v189);
    v191 = (v183 + 16 * v190);
    v192 = *v191;
    if (*v191 == -1)
    {
      goto LABEL_313;
    }

    v133 = 0;
    v193 = 1;
    while (2)
    {
      if (v192 == v61)
      {
        v38 = v592;
        v24 = *v592[16];
        if (v24)
        {
          atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
        }

        v227 = *(v191[1] + 16);
        *&v599[8] = *(v227 + 64);
        v589 = off_2838D37C0;
        *v599 = off_2838D37C0;
        v33 = *(v227 + 80);
        if (v33)
        {
          atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
        }

        v600 = v33;
        v608 = *(v60 + 64);
        v585 = off_2838D37C0;
        v607 = off_2838D37C0;
        v23 = *(v60 + 80);
        if (v23)
        {
          atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
          v33 = v600;
        }

        v609 = v23;
        if (v24)
        {
          v228 = *(v24 + 4);
          if (v33)
          {
            goto LABEL_393;
          }

LABEL_398:
          v229 = 0;
          if (!v23)
          {
            goto LABEL_399;
          }

LABEL_394:
          v230 = *(v23 + 4);
        }

        else
        {
          v228 = 0;
          if (!v33)
          {
            goto LABEL_398;
          }

LABEL_393:
          v229 = *(v33 + 4);
          if (v23)
          {
            goto LABEL_394;
          }

LABEL_399:
          v230 = 0;
        }

        v235 = 0;
        v236 = v35;
        do
        {
          ++v235;
          v237 = v236 > 9;
          v236 /= 0xAu;
        }

        while (v237);
        v238 = 0;
        v239 = v61;
        do
        {
          ++v238;
          v237 = v239 > 9;
          v239 /= 0xAu;
        }

        while (v237);
        if (v238 < 0)
        {
          goto LABEL_1023;
        }

        v240 = __OFADD__(v238, 1);
        v241 = v238 + 1;
        if (v240)
        {
          goto LABEL_1023;
        }

        v240 = __OFADD__(v241, 11);
        v242 = v241 + 11;
        v243 = v240;
        if (v235 < 0)
        {
          goto LABEL_1023;
        }

        if (v243)
        {
          goto LABEL_1023;
        }

        v240 = __OFADD__(v235, v242);
        v244 = v235 + v242;
        if (v240)
        {
          goto LABEL_1023;
        }

        v240 = __OFADD__(v244, 52);
        v245 = v244 + 52;
        v246 = v240;
        if (v230 < 0)
        {
          goto LABEL_1023;
        }

        if (v246)
        {
          goto LABEL_1023;
        }

        v240 = __OFADD__(v230, v245);
        v247 = v230 + v245;
        if (v240)
        {
          goto LABEL_1023;
        }

        v240 = __OFADD__(v247, 7);
        v248 = v247 + 7;
        v249 = v240;
        if (v229 < 0)
        {
          goto LABEL_1023;
        }

        if (v249)
        {
          goto LABEL_1023;
        }

        v240 = __OFADD__(v229, v248);
        v250 = v229 + v248;
        if (v240)
        {
          goto LABEL_1023;
        }

        v240 = __OFADD__(v250, 18);
        v251 = v250 + 18;
        v252 = v240;
        if (v228 < 0)
        {
          goto LABEL_1023;
        }

        if (v252)
        {
          goto LABEL_1023;
        }

        v240 = __OFADD__(v228, v251);
        v253 = v228 + v251;
        if (v240)
        {
          goto LABEL_1023;
        }

        v254 = v253 + 13;
        if (__OFADD__(v253, 13))
        {
          goto LABEL_1023;
        }

        if (v24 && (*(v24 + 16) & 4) == 0 || v33 && (*(v33 + 16) & 4) == 0 || v23 && (*(v23 + 16) & 4) == 0)
        {
          if (v253 != -13)
          {
            if (v254 <= 0x7FFFFFEF)
            {
              v32 = v254;
              WTF::tryFastCompactMalloc((2 * v254 + 20));
              v132 = v595;
              if (v595)
              {
                *v595 = 2;
                *(v132 + 4) = v254;
                *(v132 + 20) = xmmword_225882090;
                *(v132 + 8) = v132 + 20;
                *(v132 + 16) = 0;
                *(v132 + 36) = 0x200074006E0069;
                v131 = 39;
                *(v132 + 44) = 39;
                if (v254 > 0xC)
                {
                  v578 = v132;
                  v4 = v132 + 46;
                  v32 = v254 - 13;
                  if (!v24)
                  {
                    v286 = 0;
                    goto LABEL_523;
                  }

                  v75 = *(v24 + 8);
                  add_explicit = *(v24 + 4);
                  v131 = *(v24 + 16);
                  if ((v131 & 4) != 0)
                  {
                    v131 = v4 + 2 * add_explicit;
                    if (add_explicit < 0x40)
                    {
                      v132 += 46;
                    }

                    else
                    {
                      v132 = v4 + 2 * (add_explicit & 0xFFFFFFC0);
                      v287 = 0uLL;
                      v288 = v4;
                      do
                      {
                        v625.val[0] = *v75;
                        v289 = v75[1];
                        v628.val[0] = v75[2];
                        v290 = v75[3];
                        v75 += 4;
                        v291 = v290;
                        v628.val[1] = 0uLL;
                        v631.val[0] = v289;
                        v625.val[1] = 0uLL;
                        v292 = v288;
                        vst2q_s8(v292, v625);
                        v292 += 32;
                        v631.val[1] = 0uLL;
                        vst2q_s8(v292, v631);
                        v293 = v288 + 64;
                        vst2q_s8(v293, v628);
                        v294 = v288 + 96;
                        vst2q_s8(v294, *(&v287 - 1));
                        v288 += 128;
                      }

                      while (v288 != v132);
                    }

                    if (v132 != v131)
                    {
                      add_explicit = v578 + 2 * add_explicit - v132;
                      v296 = add_explicit + 44;
                      if (add_explicit + 44 >= 0xE)
                      {
                        add_explicit = (v296 & 0xFFFFFFFFFFFFFFFELL) + v132 + 2;
                        if (v132 >= v75->u64 + (v296 >> 1) + 1 || v75 >= add_explicit)
                        {
                          add_explicit = (v296 >> 1) + 1;
                          if (v296 >= 0x3E)
                          {
                            goto LABEL_958;
                          }

                          v298 = 0;
                          goto LABEL_962;
                        }
                      }

                      v299 = v75;
                      v300 = v132;
                      goto LABEL_519;
                    }
                  }

                  else if (add_explicit)
                  {
                    if (add_explicit == 1)
                    {
                      v131 = v75->u16[0];
                      *v4 = v131;
                    }

                    else
                    {
                      memcpy((v132 + 46), v75, 2 * add_explicit);
                    }
                  }

                  goto LABEL_522;
                }

                while (1)
                {
LABEL_957:
                  __break(1u);
LABEL_958:
                  v298 = add_explicit & 0xFFFFFFFFFFFFFFE0;
                  v519 = (v132 + 32);
                  v520 = &v75[1];
                  v521 = add_explicit & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v522 = *v520[-2].i8;
                    v523 = vmovl_u8(*v520);
                    v524 = vmovl_high_u8(*v520->i8);
                    v519[-2] = vmovl_u8(*v522.i8);
                    v519[-1] = vmovl_high_u8(v522);
                    *v519 = v523;
                    v519[1] = v524;
                    v519 += 4;
                    v520 += 4;
                    v521 -= 32;
                  }

                  while (v521);
                  if (add_explicit != v298)
                  {
                    if ((add_explicit & 0x18) == 0)
                    {
                      v300 = (v132 + 2 * v298);
                      v299 = (v75 + v298);
                      do
                      {
LABEL_519:
                        v301 = v299->u8[0];
                        v299 = (v299 + 1);
                        v132 = v301;
                        *v300++ = v301;
                      }

                      while (v300 != v131);
                      goto LABEL_522;
                    }

LABEL_962:
                    v299 = (v75 + (add_explicit & 0xFFFFFFFFFFFFFFF8));
                    v300 = (v132 + 2 * (add_explicit & 0xFFFFFFFFFFFFFFF8));
                    v132 += 2 * v298;
                    v525 = &v75->i8[v298];
                    v526 = v298 - (add_explicit & 0xFFFFFFFFFFFFFFF8);
                    do
                    {
                      v527 = *v525++;
                      *v132 = vmovl_u8(v527);
                      v132 += 16;
                      v526 += 8;
                    }

                    while (v526);
                    if (add_explicit != (add_explicit & 0xFFFFFFFFFFFFFFF8))
                    {
                      goto LABEL_519;
                    }
                  }

LABEL_522:
                  v286 = *(v24 + 4);
                  if (v32 < v286)
                  {
                    continue;
                  }

LABEL_523:
                  v131 = v4 + 2 * v286;
                  *v131 = xmmword_2258820A0;
                  *(v131 + 16) = xmmword_2258820B0;
                  *(v131 + 32) = 2555936;
                  v132 = v32 - v286;
                  if (v32 - v286 <= 0x11)
                  {
                    continue;
                  }

                  v4 = v131 + 36;
                  v32 = v132 - 18;
                  if (!v33)
                  {
                    add_explicit = 0;
                    goto LABEL_544;
                  }

                  v75 = *(v33 + 8);
                  v302 = *(v33 + 4);
                  v131 = *(v33 + 16);
                  if ((v131 & 4) != 0)
                  {
                    v131 = v4 + 2 * v302;
                    if (v302 < 0x40)
                    {
                      v132 = v4;
                    }

                    else
                    {
                      v132 = v4 + 2 * (v302 & 0xFFFFFFC0);
                      v303 = 0uLL;
                      v304 = v4;
                      do
                      {
                        v626.val[0] = *v75;
                        v305 = v75[1];
                        v629.val[0] = v75[2];
                        v306 = v75[3];
                        v75 += 4;
                        v307 = v306;
                        v629.val[1] = 0uLL;
                        v632.val[0] = v305;
                        v626.val[1] = 0uLL;
                        v308 = v304;
                        vst2q_s8(v308, v626);
                        v308 += 32;
                        v632.val[1] = 0uLL;
                        vst2q_s8(v308, v632);
                        v309 = v304 + 64;
                        vst2q_s8(v309, v629);
                        v310 = v304 + 96;
                        vst2q_s8(v310, *(&v303 - 1));
                        v304 += 128;
                      }

                      while (v304 != v132);
                    }

                    if (v132 != v131)
                    {
                      v311 = v578 + 2 * v286 + 2 * v302 - v132 + 80;
                      if (v311 < 0xE || v132 < v75->u64 + (v311 >> 1) + 1 && v75 < (v311 & 0xFFFFFFFFFFFFFFFELL) + v132 + 2)
                      {
                        v312 = v75;
                        v313 = v132;
                        goto LABEL_540;
                      }

                      v517 = (v311 >> 1) + 1;
                      if (v311 >= 0x3E)
                      {
                        v518 = v517 & 0xFFFFFFFFFFFFFFE0;
                        v528 = (v132 + 32);
                        v529 = &v75[1];
                        v530 = v517 & 0xFFFFFFFFFFFFFFE0;
                        do
                        {
                          v531 = *v529[-2].i8;
                          v532 = vmovl_u8(*v529);
                          v533 = vmovl_high_u8(*v529->i8);
                          v528[-2] = vmovl_u8(*v531.i8);
                          v528[-1] = vmovl_high_u8(v531);
                          *v528 = v532;
                          v528[1] = v533;
                          v528 += 4;
                          v529 += 4;
                          v530 -= 32;
                        }

                        while (v530);
                        if (v517 == v518)
                        {
                          goto LABEL_543;
                        }

                        if ((v517 & 0x18) == 0)
                        {
                          v313 = (v132 + 2 * v518);
                          v312 = (v75 + v518);
                          do
                          {
LABEL_540:
                            v314 = v312->u8[0];
                            v312 = (v312 + 1);
                            v132 = v314;
                            *v313++ = v314;
                          }

                          while (v313 != v131);
                          goto LABEL_543;
                        }
                      }

                      else
                      {
                        v518 = 0;
                      }

                      v312 = (v75 + (v517 & 0xFFFFFFFFFFFFFFF8));
                      v313 = (v132 + 2 * (v517 & 0xFFFFFFFFFFFFFFF8));
                      v132 += 2 * v518;
                      v534 = &v75->i8[v518];
                      v535 = v518 - (v517 & 0xFFFFFFFFFFFFFFF8);
                      do
                      {
                        v536 = *v534++;
                        *v132 = vmovl_u8(v536);
                        v132 += 16;
                        v535 += 8;
                      }

                      while (v535);
                      if (v517 != (v517 & 0xFFFFFFFFFFFFFFF8))
                      {
                        goto LABEL_540;
                      }
                    }
                  }

                  else if (v302)
                  {
                    if (v302 == 1)
                    {
                      v131 = v75->u16[0];
                      *v4 = v131;
                    }

                    else
                    {
                      memcpy(v4, v75, 2 * v302);
                    }
                  }

LABEL_543:
                  add_explicit = *(v33 + 4);
                  if (v32 < add_explicit)
                  {
                    continue;
                  }

LABEL_544:
                  v131 = v4 + 2 * add_explicit;
                  *v131 = 0x6E006100200027;
                  *(v131 + 8) = 2097252;
                  *(v131 + 12) = 39;
                  v132 = v32 - add_explicit;
                  if (v32 - add_explicit <= 6)
                  {
                    continue;
                  }

                  v4 = v131 + 14;
                  v33 = v132 - 7;
                  if (!v23)
                  {
                    v131 = 0;
                    goto LABEL_570;
                  }

                  v75 = *(v23 + 8);
                  v315 = *(v23 + 4);
                  if ((*(v23 + 16) & 4) != 0)
                  {
                    v316 = (v4 + 2 * v315);
                    if (v315 < 0x40)
                    {
                      v132 = v4;
                    }

                    else
                    {
                      v132 = v4 + 2 * (v315 & 0xFFFFFFC0);
                      v317 = 0uLL;
                      v318 = v4;
                      do
                      {
                        v627.val[0] = *v75;
                        v319 = v75[1];
                        v630.val[0] = v75[2];
                        v320 = v75[3];
                        v75 += 4;
                        v321 = v320;
                        v630.val[1] = 0uLL;
                        v633.val[0] = v319;
                        v627.val[1] = 0uLL;
                        v322 = v318;
                        vst2q_s8(v322, v627);
                        v322 += 32;
                        v633.val[1] = 0uLL;
                        vst2q_s8(v322, v633);
                        v323 = v318 + 64;
                        vst2q_s8(v323, v630);
                        v324 = v318 + 96;
                        vst2q_s8(v324, *(&v317 - 1));
                        v318 += 128;
                      }

                      while (v318 != v132);
                    }

                    if (v132 != v316)
                    {
                      add_explicit = v578 + 2 * v286 + 2 * add_explicit + 2 * v315 - v132;
                      v325 = add_explicit + 94;
                      if (add_explicit + 94 < 0xE || ((add_explicit = (v325 & 0xFFFFFFFFFFFFFFFELL) + v132 + 2, v132 < v75->u64 + (v325 >> 1) + 1) ? (v326 = v75 >= add_explicit) : (v326 = 1), !v326))
                      {
                        v328 = v75;
                        v329 = v132;
                        goto LABEL_566;
                      }

                      add_explicit = (v325 >> 1) + 1;
                      if (v325 >= 0x3E)
                      {
                        v327 = add_explicit & 0xFFFFFFFFFFFFFFE0;
                        v537 = (v132 + 32);
                        v538 = &v75[1];
                        v539 = add_explicit & 0xFFFFFFFFFFFFFFE0;
                        do
                        {
                          v540 = *v538[-2].i8;
                          v541 = vmovl_u8(*v538);
                          v542 = vmovl_high_u8(*v538->i8);
                          v537[-2] = vmovl_u8(*v540.i8);
                          v537[-1] = vmovl_high_u8(v540);
                          *v537 = v541;
                          v537[1] = v542;
                          v537 += 4;
                          v538 += 4;
                          v539 -= 32;
                        }

                        while (v539);
                        if (add_explicit == v327)
                        {
                          goto LABEL_569;
                        }

                        if ((add_explicit & 0x18) == 0)
                        {
                          v329 = (v132 + 2 * v327);
                          v328 = (v75 + v327);
                          do
                          {
LABEL_566:
                            v330 = v328->u8[0];
                            v328 = (v328 + 1);
                            v132 = v330;
                            *v329++ = v330;
                          }

                          while (v329 != v316);
                          goto LABEL_569;
                        }
                      }

                      else
                      {
                        v327 = 0;
                      }

                      v328 = (v75 + (add_explicit & 0xFFFFFFFFFFFFFFF8));
                      v329 = (v132 + 2 * (add_explicit & 0xFFFFFFFFFFFFFFF8));
                      v132 += 2 * v327;
                      v543 = &v75->i8[v327];
                      v544 = v327 - (add_explicit & 0xFFFFFFFFFFFFFFF8);
                      do
                      {
                        v545 = *v543++;
                        *v132 = vmovl_u8(v545);
                        v132 += 16;
                        v544 += 8;
                      }

                      while (v544);
                      if (add_explicit != (add_explicit & 0xFFFFFFFFFFFFFFF8))
                      {
                        goto LABEL_566;
                      }
                    }
                  }

                  else if (v315)
                  {
                    if (v315 == 1)
                    {
                      *v4 = v75->i16[0];
                    }

                    else
                    {
                      memcpy(v4, v75, 2 * v315);
                    }
                  }

LABEL_569:
                  v131 = *(v23 + 4);
                  if (v33 < v131)
                  {
                    continue;
                  }

LABEL_570:
                  v132 = v4 + 2 * v131;
                  *v132 = 39;
                  *(v132 + 2) = xmmword_2258820C0;
                  *(v132 + 18) = xmmword_2258820D0;
                  *(v132 + 34) = xmmword_2258820E0;
                  *(v132 + 50) = xmmword_2258820F0;
                  *(v132 + 66) = xmmword_225882100;
                  *(v132 + 82) = xmmword_225882110;
                  *(v132 + 98) = 7340149;
                  add_explicit = 40;
                  v131 = v33 - v131;
                  *(v132 + 102) = 40;
                  if (v131 > 0x33)
                  {
                    v4 = v132 + 104;
                    v23 = v131 - 52;
                    v624[0] = v35;
                    WTF::StringTypeAdapter<unsigned int,void>::writeTo<char16_t>(v624, (v132 + 104), v131 - 52);
                    LODWORD(v131) = 0;
                    v331 = v624[0];
                    add_explicit = 3435973837;
                    do
                    {
                      v131 = (v131 + 1);
                      v237 = v331 > 9;
                      v331 /= 0xAu;
                    }

                    while (v237);
                    v132 = v23 - v131;
                    if (v23 >= v131)
                    {
                      v131 = v4 + 2 * v131;
                      *v131 = xmmword_225882120;
                      *(v131 + 16) = 6750318;
                      add_explicit = 40;
                      *(v131 + 20) = 40;
                      if (v132 > 0xA)
                      {
                        v4 = v131 + 22;
                        v23 = v132 - 11;
                        LODWORD(v595) = v61;
                        WTF::StringTypeAdapter<unsigned int,void>::writeTo<char16_t>(&v595, (v131 + 22), v132 - 11);
                        LODWORD(v131) = 0;
                        LODWORD(v132) = v595;
                        add_explicit = 3435973837;
                        do
                        {
                          v131 = (v131 + 1);
                          v237 = v132 > 9;
                          v132 = v132 / 0xAuLL;
                        }

                        while (v237);
                        v332 = v23 == v131;
                        if (v23 >= v131)
                        {
                          v23 = v590;
                          if (!v332)
                          {
                            *(v4 + 2 * v131) = 41;
                            goto LABEL_657;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_1023:
            __break(0xC471u);
            JUMPOUT(0x225722778);
          }

          goto LABEL_456;
        }

        if (v253 == -13)
        {
LABEL_456:
          v578 = MEMORY[0x277CD4668];
          atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
          v23 = &v614;
LABEL_658:
          v33 = *(v60 + 16);
          v577 = *(v60 + 8);
          v359 = v609;
          v607 = v585;
          v609 = 0;
          if (v359 && atomic_fetch_add_explicit(v359, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v359, v75);
          }

          v360 = v600;
          *v599 = v589;
          v600 = 0;
          if (v360 && atomic_fetch_add_explicit(v360, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v360, v75);
          }

          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v75);
          }

          v285 = 0;
          v24 = 1;
          v284 = __src;
          goto LABEL_668;
        }

        if ((v254 & 0x80000000) != 0)
        {
          goto LABEL_1023;
        }

        v32 = v254;
        WTF::tryFastCompactMalloc((v254 + 20));
        v255 = v595;
        if (!v595)
        {
          goto LABEL_1023;
        }

        *v595 = 2;
        v255[1] = v254;
        *(v255 + 5) = *"entry point '";
        add_explicit = (v255 + 5);
        *(v255 + 1) = v255 + 5;
        v132 = 4;
        v255[4] = 4;
        v131 = *" point '";
        *(v255 + 25) = *" point '";
        if (v254 <= 0xC)
        {
          goto LABEL_957;
        }

        v32 = v254 - 13;
        v578 = v255;
        v4 = v255 + 33;
        if (!v24)
        {
          v295 = 0;
          goto LABEL_595;
        }

        v75 = *(v24 + 8);
        v256 = *(v24 + 4);
        v131 = *(v24 + 16);
        if ((v131 & 4) != 0)
        {
          if (v256)
          {
            if (v256 == 1)
            {
              v131 = v75->u8[0];
              *v4 = v131;
            }

            else
            {
              memcpy(v255 + 33, v75, v256);
            }
          }
        }

        else
        {
          v131 = v4 + v256;
          if (v256 < 0x10)
          {
            v132 = v255 + 33;
          }

          else
          {
            add_explicit = v4 + (v256 & 0xFFFFFFF0);
            v132 = v255 + 33;
            do
            {
              v257 = vld2q_s8(v75->i8);
              v75 += 2;
              *v132 = v257;
              v132 += 16;
            }

            while (v132 != add_explicit);
          }

          if (v132 != v131)
          {
            v333 = v255 + v256;
            add_explicit = v578 + v256 - v132 + 33;
            if (add_explicit < 4 || (v132 < v75[4].u64 + 2 * v333 + -2 * v132 + 2 ? (v334 = v75 >= v333 + 33) : (v334 = 1), !v334))
            {
              v336 = v132;
              v337 = v75;
              goto LABEL_591;
            }

            if (add_explicit >= 0x20)
            {
              v335 = add_explicit & 0xFFFFFFFFFFFFFFE0;
              v546 = v75 + 2;
              v547 = (v132 + 16);
              v548 = add_explicit & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v550 = v546[-2];
                v549 = v546[-1];
                v552 = *v546;
                v551 = v546[1];
                v546 += 4;
                v547[-1] = vuzp1q_s8(v550, v549);
                *v547 = vuzp1q_s8(v552, v551);
                v547 += 2;
                v548 -= 32;
              }

              while (v548);
              if (add_explicit == v335)
              {
                goto LABEL_594;
              }

              if ((add_explicit & 0x1C) == 0)
              {
                v337 = (v75 + 2 * v335);
                v336 = (v132 + v335);
                do
                {
LABEL_591:
                  v338 = v337->u8[0];
                  v337 = (v337 + 2);
                  v132 = v338;
                  *v336++ = v338;
                }

                while (v336 != v131);
                goto LABEL_594;
              }
            }

            else
            {
              v335 = 0;
            }

            v336 = (v132 + (add_explicit & 0xFFFFFFFFFFFFFFFCLL));
            v337 = (v75 + 2 * (add_explicit & 0xFFFFFFFFFFFFFFFCLL));
            v553 = (v75 + 2 * v335);
            v132 += v335;
            v554 = v335 - (add_explicit & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v555 = *v553++;
              *v132 = vuzp1_s8(v555, v555).u32[0];
              v132 += 4;
              v554 += 4;
            }

            while (v554);
            if (add_explicit != (add_explicit & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_591;
            }
          }
        }

LABEL_594:
        v295 = *(v24 + 4);
        if (v32 < v295)
        {
          goto LABEL_957;
        }

LABEL_595:
        v131 = v32 - v295;
        v132 = v4 + v295;
        *v132 = *"' uses variables '";
        add_explicit = 10016;
        *(v132 + 16) = 10016;
        if (v32 - v295 <= 0x11)
        {
          goto LABEL_957;
        }

        v32 = v131 - 18;
        v4 = v132 + 18;
        if (!v33)
        {
          v341 = 0;
          goto LABEL_621;
        }

        v75 = *(v33 + 8);
        v339 = *(v33 + 4);
        v131 = *(v33 + 16);
        if ((v131 & 4) != 0)
        {
          if (v339)
          {
            if (v339 == 1)
            {
              v131 = v75->u8[0];
              *v4 = v131;
            }

            else
            {
              memcpy((v132 + 18), v75, v339);
            }
          }
        }

        else
        {
          v131 = v4 + v339;
          if (v339 < 0x10)
          {
            v132 += 18;
          }

          else
          {
            add_explicit = v4 + (v339 & 0xFFFFFFF0);
            v132 += 18;
            do
            {
              v340 = vld2q_s8(v75->i8);
              v75 += 2;
              *v132 = v340;
              v132 += 16;
            }

            while (v132 != add_explicit);
          }

          if (v132 != v131)
          {
            v342 = v578 + v295 + v339;
            add_explicit = &v342[-v132 + 51];
            if (add_explicit < 4 || (v132 < v75[6].u64 + 2 * v342 + -2 * v132 + 6 ? (v343 = v75 >= (v342 + 51)) : (v343 = 1), !v343))
            {
              v345 = v132;
              v346 = v75;
              goto LABEL_617;
            }

            if (add_explicit >= 0x20)
            {
              v344 = add_explicit & 0xFFFFFFFFFFFFFFE0;
              v556 = v75 + 2;
              v557 = (v132 + 16);
              v558 = add_explicit & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v560 = v556[-2];
                v559 = v556[-1];
                v562 = *v556;
                v561 = v556[1];
                v556 += 4;
                v557[-1] = vuzp1q_s8(v560, v559);
                *v557 = vuzp1q_s8(v562, v561);
                v557 += 2;
                v558 -= 32;
              }

              while (v558);
              if (add_explicit == v344)
              {
                goto LABEL_620;
              }

              if ((add_explicit & 0x1C) == 0)
              {
                v346 = (v75 + 2 * v344);
                v345 = (v132 + v344);
                do
                {
LABEL_617:
                  v347 = v346->u8[0];
                  v346 = (v346 + 2);
                  v132 = v347;
                  *v345++ = v347;
                }

                while (v345 != v131);
                goto LABEL_620;
              }
            }

            else
            {
              v344 = 0;
            }

            v345 = (v132 + (add_explicit & 0xFFFFFFFFFFFFFFFCLL));
            v346 = (v75 + 2 * (add_explicit & 0xFFFFFFFFFFFFFFFCLL));
            v563 = (v75 + 2 * v344);
            v132 += v344;
            v564 = v344 - (add_explicit & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v565 = *v563++;
              *v132 = vuzp1_s8(v565, v565).u32[0];
              v132 += 4;
              v564 += 4;
            }

            while (v564);
            if (add_explicit != (add_explicit & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_617;
            }
          }
        }

LABEL_620:
        v341 = *(v33 + 4);
        if (v32 < v341)
        {
          goto LABEL_957;
        }

LABEL_621:
        v131 = v32 - v341;
        v132 = v4 + v341;
        *(v132 + 3) = 656434286;
        add_explicit = 1851858983;
        *v132 = 1851858983;
        if (v32 - v341 <= 6)
        {
          goto LABEL_957;
        }

        v33 = v131 - 7;
        v4 = v132 + 7;
        if (!v23)
        {
          v132 = 0;
          goto LABEL_647;
        }

        v75 = *(v23 + 8);
        v348 = *(v23 + 4);
        v131 = *(v23 + 16);
        if ((v131 & 4) != 0)
        {
          if (v348)
          {
            if (v348 == 1)
            {
              v131 = v75->u8[0];
              *v4 = v131;
            }

            else
            {
              memcpy((v132 + 7), v75, v348);
            }
          }
        }

        else
        {
          v131 = v4 + v348;
          if (v348 < 0x10)
          {
            v349 = v132 + 7;
          }

          else
          {
            add_explicit = v4 + (v348 & 0xFFFFFFF0);
            v349 = v132 + 7;
            do
            {
              v350 = vld2q_s8(v75->i8);
              v75 += 2;
              *v349 = v350;
              v349 += 16;
            }

            while (v349 != add_explicit);
          }

          if (v349 != v131)
          {
            add_explicit = v578 + v348 + v295 + v341 - v349 + 58;
            if (add_explicit < 4 || ((v351 = v578 + v348 + v341 + v295, v349 < v75[7].u64 + 2 * v351 + -2 * v349 + 4) ? (v352 = v75 >= (v351 + 58)) : (v352 = 1), !v352))
            {
              v354 = v349;
              v355 = v75;
              goto LABEL_643;
            }

            if (add_explicit >= 0x20)
            {
              v353 = add_explicit & 0xFFFFFFFFFFFFFFE0;
              v566 = v75 + 2;
              v567 = (v349 + 16);
              v568 = add_explicit & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v570 = v566[-2];
                v569 = v566[-1];
                v572 = *v566;
                v571 = v566[1];
                v566 += 4;
                v567[-1] = vuzp1q_s8(v570, v569);
                *v567 = vuzp1q_s8(v572, v571);
                v567 += 2;
                v568 -= 32;
              }

              while (v568);
              if (add_explicit == v353)
              {
                goto LABEL_646;
              }

              if ((add_explicit & 0x1C) == 0)
              {
                v355 = (v75 + 2 * v353);
                v354 = (v349 + v353);
                do
                {
LABEL_643:
                  v356 = v355->i8[0];
                  v355 = (v355 + 2);
                  *v354++ = v356;
                }

                while (v354 != v131);
                goto LABEL_646;
              }
            }

            else
            {
              v353 = 0;
            }

            v354 = (v349 + (add_explicit & 0xFFFFFFFFFFFFFFFCLL));
            v355 = (v75 + 2 * (add_explicit & 0xFFFFFFFFFFFFFFFCLL));
            v573 = (v75 + 2 * v353);
            v574 = (v349 + v353);
            v575 = v353 - (add_explicit & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v576 = *v573++;
              *v574++ = vuzp1_s8(v576, v576).u32[0];
              v575 += 4;
            }

            while (v575);
            if (add_explicit != (add_explicit & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_643;
            }
          }
        }

LABEL_646:
        v132 = *(v23 + 4);
        if (v33 < v132)
        {
          goto LABEL_957;
        }

LABEL_647:
        v131 = v33 - v132;
        v132 += v4;
        qmemcpy(v132, "', both which use the same resource binding: @group(", 52);
        add_explicit = 678458735;
        if (v131 <= 0x33)
        {
          goto LABEL_957;
        }

        v23 = v131 - 52;
        v4 = v132 + 52;
        v624[0] = v35;
        WTF::StringTypeAdapter<unsigned int,void>::writeTo<unsigned char>(v624, (v132 + 52), v131 - 52);
        LODWORD(v131) = 0;
        v357 = v624[0];
        add_explicit = 3435973837;
        do
        {
          v131 = (v131 + 1);
          v237 = v357 > 9;
          v357 /= 0xAu;
        }

        while (v237);
        v132 = v23 - v131;
        if (v23 < v131)
        {
          goto LABEL_957;
        }

        v131 += v4;
        *v131 = *") @binding(";
        add_explicit = 677867113;
        *(v131 + 7) = 677867113;
        if (v132 <= 0xA)
        {
          goto LABEL_957;
        }

        v23 = v132 - 11;
        v4 = v131 + 11;
        LODWORD(v595) = v61;
        WTF::StringTypeAdapter<unsigned int,void>::writeTo<unsigned char>(&v595, (v131 + 11), v132 - 11);
        LODWORD(v131) = 0;
        LODWORD(v132) = v595;
        add_explicit = 3435973837;
        do
        {
          v131 = (v131 + 1);
          v237 = v132 > 9;
          v132 = v132 / 0xAuLL;
        }

        while (v237);
        v358 = v23 == v131;
        if (v23 < v131)
        {
          goto LABEL_957;
        }

        v23 = &v614;
        if (v358)
        {
          goto LABEL_957;
        }

        *(v4 + v131) = 41;
LABEL_657:
        v4 = v580;
        goto LABEL_658;
      }

      if (v192 == -2)
      {
        v133 = v191;
      }

      v190 = (v190 + v193) & v186;
      v191 = (v183 + 16 * v190);
      v192 = *v191;
      ++v193;
      if (*v191 != -1)
      {
        continue;
      }

      break;
    }

    if (v133)
    {
      *v133 = -1;
      v133[1] = 0;
      v194 = *(v183 - 16) - 1;
      *(v183 - 16) = v194;
      goto LABEL_314;
    }

LABEL_313:
    v194 = *(v183 - 16);
    v133 = v191;
LABEL_314:
    *v133 = v61;
    v133[1] = v159;
    v195 = *(v183 - 12) + 1;
    *(v183 - 12) = v195;
    v196 = (v195 + v194);
    v197 = *(v183 - 4);
    if (v197 > 0x400)
    {
      if (v197 <= 2 * v196)
      {
        goto LABEL_318;
      }
    }

    else if (3 * v197 <= 4 * v196)
    {
LABEL_318:
      v198 = v197 << (6 * v195 >= (2 * v197));
      if (v197)
      {
        v199 = v198;
      }

      else
      {
        v199 = 8;
      }

      WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WebGPU::CommandEncoder *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WebGPU::CommandEncoder *>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WebGPU::CommandEncoder *,WTF::DefaultHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WebGPU::CommandEncoder *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(v184, v199);
    }

LABEL_254:
    v38 = *(v38 + 16);
  }

  while (v38);
  v38 = v592;
  v138 = v592[5];
  v263 = v613;
  v140 = (v582 + 8);
  *v599 = *(v582 + 8);
  *&v599[16] = &v601;
  v600 = 16;
  v139 = HIDWORD(v613);
  if (v613 == &v614)
  {
    v141 = DWORD2(v613);
    goto LABEL_239;
  }

  *&v613 = &v614;
  *&v599[16] = v263;
  v141 = DWORD2(v613);
  DWORD2(v613) = 16;
LABEL_240:
  HIDWORD(v613) = 0;
  v600 = __PAIR64__(v139, v141);
  v606 = v32;
  v142 = *(v138 + 404);
  if (v142 == *(v138 + 400))
  {
    v143 = v142 + (v142 >> 1);
    if (v143 <= v142 + 1)
    {
      v143 = v142 + 1;
    }

    if (v143 >> 29)
    {
      __break(0xC471u);
      JUMPOUT(0x225722B80);
    }

    v144 = *(v138 + 392);
    if (v143 <= 0x10)
    {
      v32 = 16;
    }

    else
    {
      v32 = v143;
    }

    v146 = WTF::fastMalloc((8 * v32));
    *(v138 + 400) = v32;
    *(v138 + 392) = v146;
    if (v142)
    {
      v147 = 8 * v142;
      v32 = v144;
      do
      {
        v148 = *v32;
        *v32 = 0;
        *v146 = v148;
        v149 = *v32;
        *v32 = 0;
        if (v149)
        {
          (*(*v149 + 8))(v149);
        }

        v146 = (v146 + 8);
        v32 += 8;
        v147 -= 8;
      }

      while (v147);
      v146 = *(v138 + 392);
    }

    if (v144)
    {
      if (v146 == v144)
      {
        *(v138 + 392) = 0;
        *(v138 + 400) = 0;
      }

      WTF::fastFree(v144, v145);
      v146 = *(v138 + 392);
    }

    v258 = *(v138 + 404);
    v259 = WTF::fastMalloc(0xB0);
    *v259 = &unk_2838D4F58;
    *(v259 + 8) = *v599;
    *(v259 + 24) = v259 + 40;
    *(v259 + 32) = 16;
    v260 = *&v599[16];
    if (*&v599[16] == &v601)
    {
      v262 = HIDWORD(v600);
      v32 = v259;
      memcpy((v259 + 40), &v601, 8 * HIDWORD(v600));
      v259 = v32;
      v261 = v600;
    }

    else
    {
      *&v599[16] = &v601;
      *(v259 + 24) = v260;
      v261 = v600;
      v262 = HIDWORD(v600);
      LODWORD(v600) = 16;
    }

    HIDWORD(v600) = 0;
    *(v259 + 32) = v261;
    *(v259 + 36) = v262;
    *(v259 + 168) = v606;
    *(v146 + v258) = v259;
  }

  else
  {
    v231 = *(v138 + 392);
    v232 = WTF::fastMalloc(0xB0);
    *v232 = &unk_2838D4F58;
    *(v232 + 8) = *v599;
    *(v232 + 24) = v232 + 40;
    *(v232 + 32) = 16;
    v233 = *&v599[16];
    if (*&v599[16] == &v601)
    {
      v32 = HIDWORD(v600);
      memcpy((v232 + 40), &v601, 8 * HIDWORD(v600));
      v234 = v600;
    }

    else
    {
      *&v599[16] = &v601;
      *(v232 + 24) = v233;
      v234 = v600;
      v32 = HIDWORD(v600);
      LODWORD(v600) = 16;
    }

    HIDWORD(v600) = 0;
    *(v232 + 32) = v234;
    *(v232 + 36) = v32;
    *(v232 + 168) = v606;
    *(v231 + 8 * v142) = v232;
  }

  ++*(v138 + 404);
  v264 = *(v38 + 40);
  v265 = v610;
  *v599 = *v140;
  *&v599[16] = &v601;
  if (v610 == &v612)
  {
    v277 = HIDWORD(v611);
    memcpy(&v601, &v612, 8 * HIDWORD(v611));
    HIDWORD(v611) = 0;
    v600 = __PAIR64__(v277, v611);
    v268 = *(v264 + 404);
    if (v268 != *(v264 + 400))
    {
      goto LABEL_484;
    }

LABEL_472:
    v269 = v268 + (v268 >> 1);
    if (v269 <= v268 + 1)
    {
      v269 = v268 + 1;
    }

    if (v269 >> 29)
    {
      __break(0xC471u);
      JUMPOUT(0x225722B88);
    }

    v270 = *(v264 + 392);
    if (v269 <= 0x10)
    {
      v271 = 16;
    }

    else
    {
      v271 = v269;
    }

    v35 = WTF::fastMalloc((8 * v271));
    *(v264 + 400) = v271;
    *(v264 + 392) = v35;
    if (v268)
    {
      v273 = 8 * v268;
      v274 = v270;
      do
      {
        v275 = *v274;
        *v274 = 0;
        *v35 = v275;
        v276 = *v274;
        *v274 = 0;
        if (v276)
        {
          (*(*v276 + 8))(v276);
        }

        v35 += 8;
        v274 = (v274 + 8);
        v273 -= 8;
      }

      while (v273);
      v35 = *(v264 + 392);
    }

    if (v270)
    {
      if (v35 == v270)
      {
        *(v264 + 392) = 0;
        *(v264 + 400) = 0;
      }

      WTF::fastFree(v270, v272);
      v35 = *(v264 + 392);
    }

    v280 = *(v264 + 404);
    v281 = WTF::fastMalloc(0xA8);
    *v281 = &unk_2838D4F80;
    *(v281 + 8) = *v599;
    *(v281 + 24) = v281 + 40;
    *(v281 + 32) = 16;
    if (*&v599[16] == &v601)
    {
      LODWORD(v61) = HIDWORD(v600);
      v283 = v281;
      memcpy((v281 + 40), &v601, 8 * HIDWORD(v600));
      v281 = v283;
      v282 = v600;
    }

    else
    {
      *(v281 + 24) = *&v599[16];
      v282 = v600;
      LODWORD(v61) = HIDWORD(v600);
    }

    *(v281 + 32) = v282;
    *(v281 + 36) = v61;
    *(v35 + 8 * v280) = v281;
  }

  else
  {
    v610 = &v612;
    *&v599[16] = v265;
    v266 = v611;
    v267 = HIDWORD(v611);
    v611 = 16;
    v600 = __PAIR64__(v267, v266);
    v268 = *(v264 + 404);
    if (v268 == *(v264 + 400))
    {
      goto LABEL_472;
    }

LABEL_484:
    v61 = *(v264 + 392);
    v35 = WTF::fastMalloc(0xA8);
    *v35 = &unk_2838D4F80;
    *(v35 + 8) = *v599;
    *(v35 + 24) = v35 + 40;
    *(v35 + 32) = 16;
    if (*&v599[16] == &v601)
    {
      v279 = HIDWORD(v600);
      memcpy((v35 + 40), &v601, 8 * HIDWORD(v600));
      v278 = v600;
    }

    else
    {
      *(v35 + 24) = *&v599[16];
      v278 = v600;
      v279 = HIDWORD(v600);
    }

    *(v35 + 32) = v278;
    *(v35 + 36) = v279;
    *(v61 + 8 * v268) = v35;
  }

  v284 = &v612;
  v24 = 0;
  ++*(v264 + 404);
  v33 = v623;
  v577 = v622;
  v578 = v621;
  v621 = 0;
  v622 = 0;
  v285 = 1;
LABEL_668:
  v361 = v610;
  if (v284 != v610 && v610)
  {
    v610 = 0;
    LODWORD(v611) = 0;
    WTF::fastFree(v361, v75);
  }

  v362 = v613;
  if (v23 != v613 && v613)
  {
    *&v613 = 0;
    DWORD2(v613) = 0;
    WTF::fastFree(v362, v75);
  }

  if (v622)
  {
    WTF::fastFree(v622, v75);
  }

  v363 = v621;
  if (v621)
  {
    v35 = *(v621 - 1);
    if (v35)
    {
      v61 = (v621 + 2);
      do
      {
        if (*(v61 - 8) != -2 && *v61)
        {
          WTF::fastFree((*v61 - 16), v75);
        }

        v61 += 16;
        --v35;
      }

      while (v35);
    }

    WTF::fastFree((v363 - 16), v75);
  }

  if (v285)
  {
    v595 = 0;
    if (v578 && (v364 = *(v578 - 3), v364))
    {
      v132 = *(v578 - 3);
      v365 = *(v578 - 3);
      add_explicit = (v364 - 1);
      v60 = v578;
      if (v364 == 1)
      {
        goto LABEL_690;
      }

      v131 = __clz(add_explicit);
      if (!v131)
      {
        goto LABEL_957;
      }

      v132 = (1 << -v131);
      v365 = 1 << -v131;
      if (v364 <= 0x400)
      {
LABEL_690:
        if (3 * v132 <= 4 * v364)
        {
          goto LABEL_691;
        }
      }

      else if (v132 <= 2 * v364)
      {
LABEL_691:
        v365 *= 2;
      }

      if (v365 > 0x400)
      {
        v366 = 0.416666667;
      }

      else
      {
        v366 = 0.604166667;
      }

      if (v365 * v366 <= v364)
      {
        v365 *= 2;
      }

      if (v365 <= 8)
      {
        v370 = 8;
      }

      else
      {
        v370 = v365;
      }

      v371 = WTF::fastMalloc((16 * v370 + 16));
      v24 = v371;
      v61 = (v371 + 4);
      v372 = v371 + 12;
      v373 = v370 & 0xFFFFFFFC;
      do
      {
        *(v372 - 2) = xmmword_225881D00;
        *(v372 - 1) = xmmword_225881D00;
        *v372 = xmmword_225881D00;
        v372[1] = xmmword_225881D00;
        v372 += 4;
        v373 -= 4;
      }

      while (v373);
      v374 = v370 - (v370 & 0xFFFFFFFC);
      if (v374)
      {
        v375 = (v371 + ((16 * v370) & 0xFFFFFFFC0) + 24);
        do
        {
          *(v375 - 1) = -1;
          *v375 = 0;
          v375 += 2;
          --v374;
        }

        while (v374);
      }

      v595 = v371 + 4;
      v371[2] = v370 - 1;
      v371[3] = v370;
      *v371 = 0;
      v371[1] = v364;
      v376 = *(v578 - 1);
      v35 = &v578[4 * v376];
      v590 = v33;
      if (*(v578 - 3))
      {
        if (v376)
        {
          v377 = 16 * v376;
          v33 = v578;
          while (*v33 >= 0xFFFFFFFFFFFFFFFELL)
          {
            v33 += 16;
            v377 -= 16;
            if (!v377)
            {
              goto LABEL_716;
            }
          }
        }

        else
        {
          v376 = 0;
          v33 = v578;
        }
      }

      else
      {
LABEL_716:
        v33 = &v578[4 * v376];
      }

      v38 = &v578[4 * v376];
      if (v33 != v38)
      {
        v4 = -1;
        __src = -1;
        do
        {
          v378 = *(v24 + 8);
          v379 = *v33;
          v380 = *v33 + ~(*v33 << 32);
          v381 = (v380 ^ (v380 >> 22)) + ~((v380 ^ (v380 >> 22)) << 13);
          v382 = (9 * (v381 ^ (v381 >> 8))) ^ ((9 * (v381 ^ (v381 >> 8))) >> 15);
          v383 = v378 & (((v382 + ~(v382 << 27)) >> 31) ^ (v382 + ~(v382 << 27)));
          v384 = 1;
          do
          {
            v32 = v383;
            v385 = *(v61 + 16 * v383);
            v383 = (v383 + v384++) & v378;
          }

          while (v385 != -1);
          v386 = *(v33 + 8);
          if (v386)
          {
            v23 = *(v386 - 3);
            if (v23)
            {
              v132 = *(v386 - 3);
              v387 = *(v386 - 3);
              add_explicit = (v23 - 1);
              if (v23 == 1)
              {
                goto LABEL_730;
              }

              v131 = __clz(add_explicit);
              if (!v131)
              {
                goto LABEL_957;
              }

              v132 = (1 << -v131);
              v387 = 1 << -v131;
              if (v23 <= 0x400)
              {
LABEL_730:
                if (3 * v132 <= 4 * v23)
                {
                  goto LABEL_731;
                }
              }

              else if (v132 <= 2 * v23)
              {
LABEL_731:
                v387 *= 2;
              }

              v388 = v23;
              v389 = v387;
              if (v387 > 0x400)
              {
                if (v389 * 0.416666667 > v388)
                {
                  goto LABEL_738;
                }
              }

              else if (v389 * 0.604166667 > v388)
              {
LABEL_738:
                if (v387 <= 8)
                {
                  v60 = 8;
                }

                else
                {
                  v60 = v387;
                }

                v390 = WTF::fastMalloc((16 * v60 + 16));
                v386 = (v390 + 4);
                v391 = v390 + 12;
                v392 = v60 & 0xFFFFFFFC;
                do
                {
                  *(v391 - 2) = xmmword_225881D00;
                  *(v391 - 1) = xmmword_225881D00;
                  *v391 = xmmword_225881D00;
                  v391[1] = xmmword_225881D00;
                  v391 += 4;
                  v392 -= 4;
                }

                while (v392);
                v393 = v60 - (v60 & 0xFFFFFFFC);
                if (v393)
                {
                  v394 = (v390 + ((16 * v60) & 0xFFFFFFFC0) + 24);
                  do
                  {
                    *(v394 - 1) = -1;
                    *v394 = 0;
                    v394 += 2;
                    --v393;
                  }

                  while (v393);
                }

                v395 = v60 - 1;
                v390[2] = v60 - 1;
                v390[3] = v60;
                *v390 = 0;
                v390[1] = v23;
                v396 = *(v33 + 8);
                if (v396)
                {
                  v397 = *(v396 - 1);
                  v398 = &v396[2 * v397];
                  if (*(v396 - 3))
                  {
                    if (v397)
                    {
                      v399 = 16 * v397;
                      v400 = *(v33 + 8);
                      while (*v400 >= 0xFFFFFFFFFFFFFFFELL)
                      {
                        v400 += 2;
                        v399 -= 16;
                        if (!v399)
                        {
                          v400 = v398;
                          break;
                        }
                      }

LABEL_755:
                      if (v396)
                      {
                        v401 = *(v396 - 1);
                        goto LABEL_760;
                      }
                    }

                    else
                    {
                      v401 = 0;
                      v400 = *(v33 + 8);
LABEL_760:
                      v396 += 2 * v401;
                    }

                    while (v400 != v396)
                    {
                      v402 = *v400 + ~(*v400 << 32);
                      v403 = (v402 ^ (v402 >> 22)) + ~((v402 ^ (v402 >> 22)) << 13);
                      v404 = (9 * (v403 ^ (v403 >> 8))) ^ ((9 * (v403 ^ (v403 >> 8))) >> 15);
                      v405 = v395 & (((v404 + ~(v404 << 27)) >> 31) ^ (v404 + ~(v404 << 27)));
                      v406 = 1;
                      do
                      {
                        v407 = v405;
                        v408 = *(v386 + 2 * v405);
                        v405 = (v405 + v406++) & v395;
                      }

                      while (v408 != -1);
                      v409 = (v386 + 16 * v407);
                      v410 = v400[1];
                      *v409 = *v400;
                      v409[1] = v410;
                      do
                      {
                        v400 += 2;
                      }

                      while (v400 != v398 && *v400 >= 0xFFFFFFFFFFFFFFFELL);
                    }

                    goto LABEL_767;
                  }
                }

                else
                {
                  v398 = 0;
                  v397 = 0;
                }

                v400 = v398;
                v398 = &v396[2 * v397];
                goto LABEL_755;
              }

              v387 *= 2;
              goto LABEL_738;
            }

            v386 = 0;
          }

LABEL_767:
          v411 = (v61 + 16 * v32);
          v412 = v411[1];
          *v411 = v379;
          v411[1] = v386;
          if (v412)
          {
            WTF::fastFree((v412 - 16), v75);
          }

          do
          {
            v33 += 16;
          }

          while (v33 != v35 && *v33 >= 0xFFFFFFFFFFFFFFFELL);
        }

        while (v33 != v38);
      }

      v38 = v592;
      v4 = v580;
      v33 = v590;
      v368 = 0;
      v369 = HIDWORD(v590);
      v596 = 0;
      v597 = 0;
      v598 = HIDWORD(v590);
      if (HIDWORD(v590))
      {
LABEL_773:
        if (v33 >> 61)
        {
          __break(0xC471u);
          JUMPOUT(0x225722B70);
        }

        v368 = WTF::fastMalloc((8 * v369));
        v597 = v369;
        v596 = v368;
        memcpy(v368, v577, 8 * v369);
      }
    }

    else
    {
      v61 = 0;
      v368 = 0;
      v369 = HIDWORD(v33);
      v596 = 0;
      v597 = 0;
      v598 = HIDWORD(v33);
      if (HIDWORD(v33))
      {
        goto LABEL_773;
      }
    }

    if (*(v38 + 144))
    {
      v413 = *(v38 + 64);
      if (v413)
      {
        v414 = *(v413 - 4);
        v415 = (v413 + 24 * v414);
        if (*(v413 - 12))
        {
          if (v414)
          {
            v416 = 24 * v414;
            v417 = *(v38 + 64);
            while (*v417 >= 0xFFFFFFFFFFFFFFFELL)
            {
              v417 += 3;
              v416 -= 24;
              if (!v416)
              {
                v417 = v415;
                break;
              }
            }

LABEL_791:
            if (v413)
            {
              v422 = *(v413 - 4);
              goto LABEL_796;
            }

            v423 = 0;
          }

          else
          {
            v422 = 0;
            v417 = *(v38 + 64);
LABEL_796:
            v423 = (v413 + 24 * v422);
          }

          if (v417 == v423 || !v61)
          {
            v424 = 0;
            v490 = 0;
            v425 = 0;
          }

          else
          {
            v424 = 0;
            v581 = 0;
            v583 = v423;
            v588 = 0;
LABEL_801:
            v426 = *v417;
            if (*v417 == -2)
            {
              __break(0xC471u);
              JUMPOUT(0x2257228B0);
            }

            if (v426 == -1)
            {
              __break(0xC471u);
              JUMPOUT(0x2257228D0);
            }

            v427 = *(v61 - 8);
            v428 = (v426 + ~(v426 << 32)) ^ ((v426 + ~(v426 << 32)) >> 22);
            v429 = 9 * ((v428 + ~(v428 << 13)) ^ ((v428 + ~(v428 << 13)) >> 8));
            v430 = (v429 ^ (v429 >> 15)) + ~((v429 ^ (v429 >> 15)) << 27);
            v431 = v427 & ((v430 >> 31) ^ v430);
            v432 = *(v61 + 16 * v431);
            if (v432 != v426)
            {
              v433 = 1;
              do
              {
                if (v432 == -1)
                {
                  goto LABEL_893;
                }

                v431 = (v431 + v433) & v427;
                v432 = *(v61 + 16 * v431);
                ++v433;
              }

              while (v432 != v426);
            }

            if (v431 != *(v61 - 4))
            {
              v613 = 0uLL;
              v610 = 0;
              v434 = *(v417 + 5);
              if (!v434)
              {
LABEL_889:
                if (v610)
                {
                  WTF::fastFree((v610 - 16), v75);
                }

                if (v613)
                {
                  WTF::fastFree(v613, v75);
                }

                goto LABEL_893;
              }

              v586 = v424;
              v591 = v61 + 16 * v431;
              v435 = v417[1];
              __srca = &v435[4 * v434];
LABEL_813:
              v436 = *v435;
              v437 = *(v435 + 1);
              if (v437)
              {
                atomic_fetch_add_explicit(v437, 2u, memory_order_relaxed);
              }

              LODWORD(v621) = *v417;
              v438 = *(v38 + 48);
              if (!v438)
              {
LABEL_1016:
                __break(0xC471u);
                JUMPOUT(0x225722678);
              }

              if (v437 == -1)
              {
                __break(0xC471u);
                JUMPOUT(0x2257226F8);
              }

              if (!v437)
              {
                __break(0xC471u);
                JUMPOUT(0x225722718);
              }

              v439 = *(v438 - 8);
              v440 = v437[4];
              if (v440 < 0x100)
              {
                v441 = WTF::StringImpl::hashSlowCase(v437);
              }

              else
              {
                v441 = v440 >> 8;
              }

              for (n = 0; ; v441 = n + v443)
              {
                v443 = v441 & v439;
                v444 = *(v438 + 32 * v443);
                if (v444 != -1)
                {
                  if (!v444)
                  {
                    v38 = v592;
                    v446 = v592[6];
                    if (!v446)
                    {
                      goto LABEL_1016;
                    }

                    v447 = *(v446 - 4);
                    v445 = v446 + 32 * v447;
LABEL_830:
                    if (v445 == v446 + 32 * v447)
                    {
                      goto LABEL_1016;
                    }

LABEL_831:
                    v448 = *(v38 + 224);
                    if (!v448)
                    {
                      goto LABEL_839;
                    }

                    v449 = *(v445 + 24);
                    if (v449 == -1)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x225722750);
                    }

                    if (!v449)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x225722770);
                    }

                    v450 = *(v448 - 8);
                    v451 = (~(v449 << 32) + v449) ^ ((~(v449 << 32) + v449) >> 22);
                    v452 = 9 * ((v451 + ~(v451 << 13)) ^ ((v451 + ~(v451 << 13)) >> 8));
                    v453 = (v452 ^ (v452 >> 15)) + ~((v452 ^ (v452 >> 15)) << 27);
                    v454 = v450 & ((v453 >> 31) ^ v453);
                    v455 = *(v448 + 16 * v454);
                    if (v455 == v449)
                    {
LABEL_838:
                      if (v454 == *(v448 - 4))
                      {
                        goto LABEL_839;
                      }

                      v469 = v448 + 16 * v454;
                      v471 = *(v469 + 8);
                      v470 = v469 + 8;
                      if (WGSL::bindingTypeForType(*(v471 + 144)) != 9)
                      {
                        v472 = *(*v470 + 152);
                        if ((v472 & 0x100) != 0 && v472 == 3 && v610)
                        {
                          v473 = *(v445 + 24);
                          if (v473 == -1)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x2257228F0);
                          }

                          if (!v473)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x225722910);
                          }

                          v474 = *(v610 - 2);
                          v475 = (~(v473 << 32) + v473) ^ ((~(v473 << 32) + v473) >> 22);
                          v476 = 9 * ((v475 + ~(v475 << 13)) ^ ((v475 + ~(v475 << 13)) >> 8));
                          v477 = (v476 ^ (v476 >> 15)) + ~((v476 ^ (v476 >> 15)) << 27);
                          v478 = v474 & ((v477 >> 31) ^ v477);
                          v479 = *(v610 + 2 * v478);
                          if (v479 != v473)
                          {
                            v480 = 1;
                            do
                            {
                              if (!v479)
                              {
                                goto LABEL_868;
                              }

                              v478 = (v478 + v480) & v474;
                              v479 = *(v610 + 2 * v478);
                              ++v480;
                            }

                            while (v479 != v473);
                          }

LABEL_866:
                          WGSL::RewriteGlobalVariables::createArgumentBufferEntry(v38, 0);
                        }
                      }
                    }

                    else
                    {
                      v456 = 1;
                      while (v455)
                      {
                        v454 = (v454 + v456) & v450;
                        v455 = *(v448 + 16 * v454);
                        ++v456;
                        if (v455 == v449)
                        {
                          goto LABEL_838;
                        }
                      }

LABEL_839:
                      v457 = *(v591 + 8);
                      if (!v457)
                      {
                        goto LABEL_868;
                      }

                      v458 = *(v457 - 8);
                      v459 = (~(v436 << 32) + v436) ^ ((~(v436 << 32) + v436) >> 22);
                      v460 = 9 * ((v459 + ~(v459 << 13)) ^ ((v459 + ~(v459 << 13)) >> 8));
                      v461 = (v460 ^ (v460 >> 15)) + ~((v460 ^ (v460 >> 15)) << 27);
                      v462 = v458 & ((v461 >> 31) ^ v461);
                      v463 = *(v457 + 16 * v462);
                      if (v463 != v436)
                      {
                        v464 = 1;
                        do
                        {
                          if (v463 == -1)
                          {
                            goto LABEL_868;
                          }

                          v462 = (v462 + v464) & v458;
                          v463 = *(v457 + 16 * v462);
                          ++v464;
                        }

                        while (v463 != v436);
                      }

                      v465 = *(v38 + 88);
                      if (v465)
                      {
                        v466 = *(v465 - 8);
                        v467 = v437[4];
                        if (v467 < 0x100)
                        {
                          v468 = WTF::StringImpl::hashSlowCase(v437);
                        }

                        else
                        {
                          v468 = v467 >> 8;
                        }

                        for (ii = 0; ; v468 = ii + v482)
                        {
                          v482 = v468 & v466;
                          v483 = *(v465 + 8 * (v468 & v466));
                          if (v483 != -1)
                          {
                            if (!v483)
                            {
                              v38 = v592;
                              break;
                            }

                            if (WTF::equal(*v483, v437, v133))
                            {
                              v38 = v592;
                              goto LABEL_866;
                            }
                          }

                          ++ii;
                        }
                      }
                    }

LABEL_868:
                    if (atomic_fetch_add_explicit(v437, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v437, v75);
                    }

                    v435 += 4;
                    if (v435 == __srca)
                    {
                      if (HIDWORD(v613))
                      {
                        v423 = v583;
                        v424 = v586;
                        if (v588 == v581)
                        {
                          v484 = v588 + (v588 >> 1);
                          if (v484 <= v588 + 1)
                          {
                            v484 = v588 + 1;
                          }

                          if (v484 >> 30)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x225722B78);
                          }

                          if (v484 <= 0x10)
                          {
                            v485 = 16;
                          }

                          else
                          {
                            v485 = v484;
                          }

                          v486 = WTF::fastMalloc((4 * v485));
                          memcpy(v486, v586, 4 * v588);
                          if (v586)
                          {
                            if (v486 == v586)
                            {
                              v488 = 0;
                            }

                            else
                            {
                              v488 = v486;
                            }

                            if (v486 == v586)
                            {
                              LODWORD(v485) = 0;
                            }

                            v581 = v485;
                            WTF::fastFree(v586, v487);
                            v424 = v488;
                          }

                          else
                          {
                            v581 = v485;
                            v424 = v486;
                          }

                          v423 = v583;
                        }

                        v489 = *v417;
                        *(v424 + v588++) = *v417;
                        WGSL::RewriteGlobalVariables::finalizeArgumentBufferStruct(v38, v489, &v613);
                      }

                      else
                      {
                        v424 = v586;
                        v423 = v583;
                      }

                      goto LABEL_889;
                    }

                    goto LABEL_813;
                  }

                  if (WTF::equal(v444, v437, v133))
                  {
                    v445 = v438 + 32 * v443;
                    v38 = v592;
                    v446 = v592[6];
                    if (v446)
                    {
                      v447 = *(v446 - 4);
                      goto LABEL_830;
                    }

                    goto LABEL_831;
                  }
                }

                ++n;
              }
            }

            while (1)
            {
              do
              {
LABEL_893:
                v417 += 3;
              }

              while (v417 != v415 && *v417 >= 0xFFFFFFFFFFFFFFFELL);
              if (v417 == v423)
              {
                break;
              }

              v61 = v595;
              if (v595)
              {
                goto LABEL_801;
              }
            }

            v425 = v588;
            v490 = v581;
          }

          v607 = v424;
          *&v608 = __PAIR64__(v425, v490);
          LOBYTE(v609) = 0;
          v4 = v580;
LABEL_899:
          v491 = *v4;
          v613 = *(*v4 + 8);
          if (v425)
          {
            v492 = v424 + 4 * v425;
            do
            {
              v493 = 0;
              v494 = v424;
              v495 = *v424;
              v496 = *v424;
              do
              {
                ++v493;
                v237 = v496 > 9;
                v496 /= 0xAu;
              }

              while (v237);
              if (v493 < 0 || (v497 = (v493 + 17), __OFADD__(v493, 17)) || (WTF::tryFastCompactMalloc((v497 + 20)), (v498 = v610) == 0))
              {
                __break(0xC471u);
                JUMPOUT(0x225722720);
              }

              *v610 = 2;
              *(v498 + 1) = v497;
              *(v498 + 1) = v498 + 20;
              *(v498 + 4) = 4;
              *(v498 + 36) = 95;
              *(v498 + 20) = *"__ArgumentBuffer_";
              LODWORD(v610) = v495;
              WTF::StringTypeAdapter<unsigned int,void>::writeTo<unsigned char>(&v610, v498 + 37, v497 - 17);
              *&v599[8] = 0;
              *&v599[16] = 0;
              *v599 = off_2838D37C0;
              v600 = v498;
              WGSL::RewriteGlobalVariables::insertParameter(v592, &v613, v491, v495, v599, 0);
              v500 = v600;
              *v599 = off_2838D37C0;
              v600 = 0;
              if (v500 && atomic_fetch_add_explicit(v500, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v500, v499);
              }

              v424 = (v494 + 4);
            }

            while (v494 + 4 != v492);
          }

          WGSL::RewriteGlobalVariables::insertDynamicOffsetsBufferIfNeeded(v592);
          v501 = v595;
          if (v595)
          {
            v502 = *(v595 - 1);
            v503 = &v595[4 * v502];
            if (*(v595 - 3))
            {
              if (v502)
              {
                v504 = 16 * v502;
                v505 = v595;
                while (*v505 >= 0xFFFFFFFFFFFFFFFELL)
                {
                  v505 += 2;
                  v504 -= 16;
                  if (!v504)
                  {
                    v505 = v503;
                    break;
                  }
                }

LABEL_919:
                if (v595)
                {
                  v506 = *(v595 - 1);
                  goto LABEL_922;
                }
              }

              else
              {
                v506 = 0;
                v505 = v595;
LABEL_922:
                v501 = &v595[4 * v506];
              }

              if (v505 != v501)
              {
                v507 = 0;
                v508 = *v505;
                v509 = *v505;
                do
                {
                  ++v507;
                  v237 = v509 > 9;
                  v509 /= 0xAu;
                }

                while (v237);
                if ((v507 & 0x80000000) == 0)
                {
                  v510 = (v507 + 17);
                  if (!__OFADD__(v507, 17))
                  {
                    WTF::tryFastCompactMalloc((v510 + 20));
                    v511 = *v624;
                    if (*v624)
                    {
                      **v624 = 2;
                      *(v511 + 4) = v510;
                      *(v511 + 8) = v511 + 20;
                      *(v511 + 16) = 4;
                      *(v511 + 36) = 95;
                      *(v511 + 20) = *"__ArgumentBuffer_";
                      v624[0] = v508;
                      WTF::StringTypeAdapter<unsigned int,void>::writeTo<unsigned char>(v624, (v511 + 37), v510 - 17);
                      *(&v613 + 1) = 0;
                      v614 = 0;
                      *&v613 = off_2838D37C0;
                      v615 = v511;
                      atomic_fetch_add_explicit(v511, 2u, memory_order_relaxed);
                      *&v599[8] = 0;
                      *&v599[16] = 0;
                      *v599 = off_2838D37C0;
                      v600 = v511;
                      operator new();
                    }
                  }
                }

                __break(0xC471u);
                JUMPOUT(0x225722728);
              }

              if (v598)
              {
                *v599 = 0;
                *&v599[8] = 0;
                WGSL::AST::Builder::construct<WGSL::AST::VariableStatement,WGSL::SourceSpan,WGSL::AST::Variable &,void>();
              }

              v368 = v596;
              *a4 = 0;
              *(a4 + 24) = 0;
              result = v607;
              if (v607)
              {
                result = WTF::fastFree(v607, v419);
              }

              v421 = v577;
              v420 = v578;
LABEL_935:
              if (v368)
              {
                goto LABEL_936;
              }

              goto LABEL_937;
            }
          }

          else
          {
            v503 = 0;
          }

          v505 = v503;
          goto LABEL_919;
        }
      }

      else
      {
        v415 = 0;
        LODWORD(v414) = 0;
      }

      v417 = v415;
      v415 = (v413 + 24 * v414);
      goto LABEL_791;
    }

    WGSL::RewriteGlobalVariables::insertStructs(&v607, v38, **(v587 + 8), *(*(v587 + 8) + 12), &v595);
    v418 = v609;
    if (!v609)
    {
      v424 = v607;
      v425 = DWORD1(v608);
      goto LABEL_899;
    }

    inserted = WGSL::RewriteGlobalVariables::insertDynamicOffsetsBufferIfNeeded(v38);
    if (v418 != 1)
    {
      goto LABEL_1015;
    }

    result = v607;
    v421 = v577;
    v420 = v578;
    if (v607)
    {
      atomic_fetch_add_explicit(v607, 2u, memory_order_relaxed);
      *a4 = result;
      *(a4 + 8) = v608;
      *(a4 + 24) = 1;
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_935;
      }

      result = WTF::StringImpl::destroy(result, v419);
      if (v368)
      {
LABEL_936:
        v596 = 0;
        v597 = 0;
        result = WTF::fastFree(v368, v419);
      }
    }

    else
    {
      *a4 = 0;
      *(a4 + 8) = v608;
      *(a4 + 24) = 1;
      if (v368)
      {
        goto LABEL_936;
      }
    }

LABEL_937:
    v512 = v595;
    if (v595)
    {
      v513 = *(v595 - 1);
      if (v513)
      {
        v514 = v595 + 2;
        do
        {
          if (*(v514 - 1) != -2 && *v514)
          {
            WTF::fastFree((*v514 - 16), v419);
          }

          v514 += 2;
          --v513;
        }

        while (v513);
      }

      result = WTF::fastFree((v512 - 4), v419);
    }

    if (v421)
    {
      result = WTF::fastFree(v421, v419);
    }

    if (v420)
    {
      v515 = *(v420 - 1);
      if (v515)
      {
        v516 = v420 + 2;
        do
        {
          if (*(v516 - 1) != -2 && *v516)
          {
            WTF::fastFree((*v516 - 16), v419);
          }

          v516 += 2;
          --v515;
        }

        while (v515);
      }

      return WTF::fastFree((v420 - 4), v419);
    }
  }

  else
  {
    inserted = WGSL::RewriteGlobalVariables::insertDynamicOffsetsBufferIfNeeded(v38);
    if ((v24 & 1) == 0)
    {
      goto LABEL_1015;
    }

    result = v578;
    if (!v578)
    {
      v135 = a4;
      *a4 = 0;
      *(a4 + 8) = v577;
      *(a4 + 16) = v33;
LABEL_230:
      *(v135 + 24) = 1;
      return result;
    }

    atomic_fetch_add_explicit(v578, 2u, memory_order_relaxed);
    *a4 = v578;
    *(a4 + 8) = v577;
    *(a4 + 16) = v33;
    *(a4 + 24) = 1;
    if (atomic_fetch_add_explicit(v578, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v578, v367);
    }
  }

  return result;
}

void *WGSL::RewriteGlobalVariables::visitCallee(WGSL::CallGraph::Callee const&)::$_1::operator()(void *result, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = *result;
  v4 = *(*result + 96);
  if (v4 && *(result[1] + 20))
  {
    do
    {
      if (*(result[1] + 20))
      {
        v5 = *(v3 + 48);
        if (!v5)
        {
          goto LABEL_39;
        }

        v6 = *v4;
        if (*v4 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x2257240D4);
        }

        if (!v6)
        {
          __break(0xC471u);
          JUMPOUT(0x2257240F4);
        }

        v7 = *(v5 - 8);
        v8 = v6[4];
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
          v12 = *(v5 + 32 * v11);
          if (v12 != -1)
          {
            if (!v12)
            {
              v14 = *(v3 + 48);
              if (v14)
              {
                v15 = *(v14 - 4);
                v13 = v14 + 32 * v15;
LABEL_21:
                if (v13 != v14 + 32 * v15)
                {
LABEL_22:
                  if (*v4)
                  {
                    atomic_fetch_add_explicit(*v4, 2u, memory_order_relaxed);
                  }

                  operator new();
                }
              }

LABEL_39:
              __break(0xC471u);
              JUMPOUT(0x2257240B4);
            }

            if (WTF::equal(v12, *v4, a3))
            {
              v13 = v5 + 32 * v11;
              v14 = *(v3 + 48);
              if (v14)
              {
                v15 = *(v14 - 4);
                goto LABEL_21;
              }

              goto LABEL_22;
            }
          }

          ++i;
        }
      }

      v4 = *(v4 + 16);
    }

    while (v4);
  }

  v16 = *(v3 + 112);
  if (v16)
  {
    v17 = *result[1];
    if (v17 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x2257241E8);
    }

    if (!v17)
    {
      __break(0xC471u);
      JUMPOUT(0x225724068);
    }

    v18 = *(v16 - 8);
    v19 = (~(v17 << 32) + v17) ^ ((~(v17 << 32) + v17) >> 22);
    v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
    v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
    v22 = v18 & ((v21 >> 31) ^ v21);
    v23 = *(v16 + 32 * v22);
    if (v23 == v17)
    {
LABEL_32:
      if (v22 != *(v16 - 4))
      {
        v25 = *(v16 + 32 * v22 + 8);
        if (v25)
        {
          if (*(v25 - 12))
          {
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
          }
        }
      }
    }

    else
    {
      v24 = 1;
      while (v23)
      {
        v22 = (v22 + v24) & v18;
        v23 = *(v16 + 32 * v22);
        ++v24;
        if (v23 == v17)
        {
          goto LABEL_32;
        }
      }
    }
  }

  return result;
}

uint64_t WGSL::RewriteGlobalVariables::visit(WGSL::RewriteGlobalVariables *this, WGSL::AST::Function *a2, const WTF::StringImpl *a3)
{
  v199 = *MEMORY[0x277D85DE8];
  v3 = *(this + 5);
  if ((*(v3 + 352) & 1) == 0)
  {
    __break(1u);
  }

  v4 = this;
  v5 = *(v3 + 344);
  v6 = *(v5 - 8);
  v7 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = v5 + 24 * v10;
  v12 = *v11;
  if (*v11 == a2)
  {
LABEL_6:
    v178 = a2;
    v14 = *(v11 + 20);
    if (!v14)
    {
LABEL_213:
      v15 = 0;
      v16 = 0;
      v132 = 0;
LABEL_214:
      v164 = *(v4 + 11);
      v165 = *(v4 + 12);
      *(v4 + 11) = v15;
      *(v4 + 12) = v16;
      *(v4 + 13) = v132;
      while (v165)
      {
        v166 = v165;
        v165 = *(v165 + 2);
        v167 = *v166;
        *v166 = 0;
        if (v167 && atomic_fetch_add_explicit(v167, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v167, a2);
        }

        WTF::fastFree(v166, a2);
      }

      if (v164)
      {
        WTF::fastFree((v164 - 16), a2);
      }

      v168 = *(v4 + 10);
      if (v168)
      {
        *(v4 + 10) = 0;
        v169 = *(v168 - 1);
        if (v169)
        {
          v170 = v168;
          do
          {
            v171 = *v170;
            if (*v170 != -1)
            {
              *v170 = 0;
              if (v171)
              {
                if (atomic_fetch_add_explicit(v171, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v171, a2);
                }
              }
            }

            v170 += 2;
            --v169;
          }

          while (v169);
        }

        WTF::fastFree((v168 - 2), a2);
      }

      *(v4 + 272) = 0;
      *(v4 + 69) = 0;
      v191 = 0;
      WTF::HashMap<WTF::String,WGSL::AST::Variable *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Variable *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::AST::Variable *&>(v197, v4 + 10, v178 + 6, &v191);
      *(v4 + 31) = v178;
      result = WGSL::AST::Visitor::visit(v4, v178);
      *(v4 + 31) = 0;
      if (*(v4 + 272) || *(v4 + 69) > 0x2000u)
      {
        WTF::String::number(0x2000);
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("The combined byte size of all variables in this function exceeds ", 66, &v186, " bytes", 7, v197);
        v172 = v197[0];
        v197[0] = 0;
        v187 = v172;
        v188 = *(v178 + 8);
        WGSL::AST::Visitor::setError(v4, &v187);
        v174 = v187;
        v187 = 0;
        if (v174 && atomic_fetch_add_explicit(v174, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v174, v173);
        }

        v175 = v197[0];
        v197[0] = 0;
        if (v175 && atomic_fetch_add_explicit(v175, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v175, v173);
        }

        result = v186;
        v186 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v173);
          }
        }
      }

      return result;
    }
  }

  else
  {
    v13 = 1;
    while (v12)
    {
      v10 = (v10 + v13) & v6;
      v11 = v5 + 24 * v10;
      v12 = *v11;
      ++v13;
      if (*v11 == a2)
      {
        goto LABEL_6;
      }
    }

    v11 = v5 + 24 * *(v5 - 4);
    v178 = a2;
    v14 = *(v11 + 20);
    if (!v14)
    {
      goto LABEL_213;
    }
  }

  v15 = 0;
  v16 = 0;
  v185 = 0;
  v17 = *(v11 + 8);
  v179 = &v17[3 * v14];
  while (1)
  {
    v183 = v17;
    v189[0] = v4;
    v189[1] = v17;
    v18 = *(v4 + 15);
    v19 = *v17;
    if (!v18)
    {
      goto LABEL_17;
    }

    if (v19 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x2257258DCLL);
    }

    if (!v19)
    {
      __break(0xC471u);
      JUMPOUT(0x2257258FCLL);
    }

    v20 = *(v18 - 8);
    v21 = (~(v19 << 32) + v19) ^ ((~(v19 << 32) + v19) >> 22);
    v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
    v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
    v24 = v20 & ((v23 >> 31) ^ v23);
    v25 = *(v18 + 32 * v24);
    if (v25 == v19)
    {
LABEL_16:
      if (v24 == *(v18 - 4))
      {
        goto LABEL_17;
      }

      v54 = 0uLL;
      memset(v197, 0, sizeof(v197));
      v55 = *(v18 + 32 * v24 + 16);
      if (v55)
      {
        v56 = 0;
        while (1)
        {
          if (v56 || (WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::rehash(v197, 8u, 0), (v56 = v197[0]) != 0))
          {
            v63 = *(v56 - 2);
            v64 = *v55;
            v65 = *(*v55 + 16);
            if (v65 < 0x100)
            {
              goto LABEL_63;
            }
          }

          else
          {
            v63 = 0;
            v64 = *v55;
            v65 = *(*v55 + 16);
            if (v65 < 0x100)
            {
LABEL_63:
              v66 = WTF::StringImpl::hashSlowCase(v64);
              goto LABEL_64;
            }
          }

          v66 = v65 >> 8;
LABEL_64:
          v67 = 0;
          for (i = 1; ; ++i)
          {
            v69 = v66 & v63;
            v70 = (v56 + 8 * (v66 & v63));
            v71 = *v70;
            if (*v70 == -1)
            {
              v67 = (v56 + 8 * v69);
              goto LABEL_66;
            }

            if (!v71)
            {
              break;
            }

            if (WTF::equal(*v71, *v55, a3))
            {
              goto LABEL_57;
            }

LABEL_66:
            v66 = i + v69;
          }

          if (v67)
          {
            *v67 = 0;
            --*(v197[0] - 4);
            v70 = v67;
          }

          v58 = WTF::fastMalloc(0x18);
          v72 = *v55;
          if (*v55)
          {
            atomic_fetch_add_explicit(v72, 2u, memory_order_relaxed);
          }

          v58[1] = 0;
          v58[2] = 0;
          *v58 = v72;
          *v70 = v58;
          v73 = v197[0];
          if (v197[0])
          {
            v74 = *(v197[0] - 4);
            v75 = *(v197[0] - 3) + 1;
            *(v197[0] - 3) = v75;
            v76 = (v74 + v75);
            v77 = *(v73 - 1);
            if (v77 <= 0x400)
            {
              goto LABEL_77;
            }

LABEL_81:
            if (v77 > 2 * v76)
            {
              goto LABEL_54;
            }

LABEL_52:
            v57 = v77 << (6 * v75 >= (2 * v77));
            goto LABEL_53;
          }

          v75 = 1;
          MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
          v76 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
          v77 = MEMORY[0xFFFFFFFFFFFFFFFC];
          if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
          {
            goto LABEL_81;
          }

LABEL_77:
          if (3 * v77 <= 4 * v76)
          {
            if (v77)
            {
              goto LABEL_52;
            }

            v57 = 8;
LABEL_53:
            v58 = *WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::rehash(v197, v57, v70);
          }

LABEL_54:
          v59 = v197[2];
          v58[1] = v197[2];
          v58[2] = 0;
          v60 = (v59 + 16);
          v61 = v59 == 0;
          v62 = &v197[1];
          if (!v61)
          {
            v62 = v60;
          }

          *v62 = v58;
          v197[2] = v58;
LABEL_57:
          v55 = *(v55 + 16);
          v56 = v197[0];
          v4 = this;
          if (!v55)
          {
            v54 = *&v197[1];
            goto LABEL_89;
          }
        }
      }

      v56 = 0;
LABEL_89:
      v79 = *(v4 + 11);
      *(v4 + 11) = v56;
      v197[0] = v79;
      v80 = *(v4 + 6);
      *(v4 + 6) = v54;
      *&v197[1] = v80;
      v81 = v80;
      if (v80)
      {
        do
        {
          v83 = v81;
          v81 = *(v81 + 2);
          v84 = *v83;
          *v83 = 0;
          if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v84, v19);
          }

          WTF::fastFree(v83, v19);
        }

        while (v81);
        v79 = v197[0];
        if (!v197[0])
        {
          goto LABEL_92;
        }
      }

      else if (!v79)
      {
LABEL_92:
        result = WGSL::RewriteGlobalVariables::visitCallee(WGSL::CallGraph::Callee const&)::$_1::operator()(v189, v19, a3);
        goto LABEL_169;
      }

      WTF::fastFree((v79 - 16), v19);
      goto LABEL_92;
    }

    v26 = 1;
    while (v25)
    {
      v24 = (v24 + v26) & v20;
      v25 = *(v18 + 32 * v24);
      ++v26;
      if (v25 == v19)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    v181 = v16;
    (*(*v4 + 56))(v4, v19);
    v29 = *(v4 + 12);
    if (v29)
    {
      v39 = *(v4 + 6);
      if (!v39)
      {
        goto LABEL_260;
      }

      v40 = *v29;
      if (*v29 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x225725830);
      }

      if (!v40)
      {
        __break(0xC471u);
        JUMPOUT(0x225725850);
      }

      v41 = *(v39 - 8);
      v42 = *(v40 + 4);
      if (v42 < 0x100)
      {
        v43 = WTF::StringImpl::hashSlowCase(v40);
      }

      else
      {
        v43 = v42 >> 8;
      }

      for (j = 0; ; v43 = j + v45)
      {
        v45 = v43 & v41;
        v46 = *(v39 + 32 * v45);
        if (v46 != -1)
        {
          if (!v46)
          {
            v48 = *(v4 + 6);
            if (v48)
            {
              v49 = *(v48 - 4);
              v47 = v48 + 32 * v49;
LABEL_42:
              if (v47 != v48 + 32 * v49)
              {
LABEL_43:
                v50 = *(v47 + 24);
                if (*(v50 + 128) != 3 && !*(v50 + 112))
                {
                  v51 = *(v50 + 144);
                  v195 = 0;
                  v196 = 0;
                  WTF::StringPrintStream::StringPrintStream(v197);
                  WGSL::Type::dump(v51, v197);
                  WTF::StringPrintStream::toString(&v190, v197);
                  WTF::StringPrintStream::~StringPrintStream(v197);
                  v192 = 0;
                  v193 = 0;
                  v52 = v190;
                  v190 = 0;
                  v191 = off_2838D37C0;
                  v194 = v52;
                  WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
                }

                v53 = *v29;
                if (*v29)
                {
                  atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
                }

                v197[1] = 0;
                v197[2] = 0;
                v197[0] = off_2838D37C0;
                v198 = v53;
                operator new();
              }
            }

LABEL_260:
            __break(0xC471u);
            JUMPOUT(0x225725810);
          }

          if (WTF::equal(v46, *v29, v28))
          {
            v47 = v39 + 32 * v45;
            v48 = *(v4 + 6);
            if (v48)
            {
              v49 = *(v48 - 4);
              goto LABEL_42;
            }

            goto LABEL_43;
          }
        }

        ++j;
      }
    }

    v30 = *(v4 + 14);
    v16 = v181;
    if (v30)
    {
      v31 = *v183;
      if (*v183 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x22572591CLL);
      }

      if (!v31)
      {
        goto LABEL_260;
      }

      v32 = *(v30 - 8);
      v33 = (~(v31 << 32) + v31) ^ ((~(v31 << 32) + v31) >> 22);
      v34 = 9 * ((v33 + ~(v33 << 13)) ^ ((v33 + ~(v33 << 13)) >> 8));
      v35 = (v34 ^ (v34 >> 15)) + ~((v34 ^ (v34 >> 15)) << 27);
      v36 = v32 & ((v35 >> 31) ^ v35);
      v37 = *(v30 + 32 * v36);
      if (v37 == v31)
      {
LABEL_25:
        if (v36 != *(v30 - 4))
        {
          v78 = *(v30 + 32 * v36 + 8);
          if (v78)
          {
            if (*(v78 - 12))
            {
              v191 = 0;
              v192 = 0;
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v197[1] = 0;
              v197[2] = 0;
              v197[0] = off_2838D37C0;
              v198 = v195;
              WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
            }
          }
        }
      }

      else
      {
        v38 = 1;
        while (v37)
        {
          v36 = (v36 + v38) & v32;
          v37 = *(v30 + 32 * v36);
          ++v38;
          if (v37 == v31)
          {
            goto LABEL_25;
          }
        }
      }
    }

    result = WGSL::RewriteGlobalVariables::visitCallee(WGSL::CallGraph::Callee const&)::$_1::operator()(v189, v27, v28);
    v85 = *v183;
    if (*v183 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x22572589CLL);
    }

    if (!v85)
    {
      __break(0xC471u);
      JUMPOUT(0x2257258BCLL);
    }

    v86 = *(this + 15);
    if (!v86)
    {
      result = WTF::HashTable<WGSL::AST::Function *,WTF::KeyValuePair<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashMap<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Function *>,WTF::FastMalloc>::rehash(this + 15, 8u, 0);
      v86 = *(this + 15);
      v85 = *v183;
    }

    v87 = *(v86 - 8);
    v88 = (v85 + ~(v85 << 32)) ^ ((v85 + ~(v85 << 32)) >> 22);
    v89 = 9 * ((v88 + ~(v88 << 13)) ^ ((v88 + ~(v88 << 13)) >> 8));
    v90 = (v89 ^ (v89 >> 15)) + ~((v89 ^ (v89 >> 15)) << 27);
    v91 = v87 & ((v90 >> 31) ^ v90);
    v92 = (v86 + 32 * v91);
    v93 = *v92;
    if (*v92)
    {
      v94 = 0;
      v95 = 1;
      do
      {
        if (v93 == v85)
        {
          goto LABEL_169;
        }

        if (v93 == -1)
        {
          v94 = v92;
        }

        v91 = (v91 + v95) & v87;
        v92 = (v86 + 32 * v91);
        v93 = *v92;
        ++v95;
      }

      while (*v92);
      if (v94)
      {
        *v94 = 0u;
        *(v94 + 1) = 0u;
        --*(*(this + 15) - 16);
        v85 = *v183;
        v92 = v94;
      }
    }

    *v92 = v85;
    memset(v197, 0, sizeof(v197));
    v96 = *(this + 12);
    if (v96)
    {
      v97 = 0;
      while (1)
      {
        if (v97 || (WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::rehash(v197, 8u, 0), (v97 = v197[0]) != 0))
        {
          v102 = *(v97 - 2);
          v103 = *v96;
          v104 = *(*v96 + 16);
          if (v104 < 0x100)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v102 = 0;
          v103 = *v96;
          v104 = *(*v96 + 16);
          if (v104 < 0x100)
          {
LABEL_124:
            v105 = WTF::StringImpl::hashSlowCase(v103);
            goto LABEL_125;
          }
        }

        v105 = v104 >> 8;
LABEL_125:
        v106 = 0;
        for (k = 1; ; ++k)
        {
          v108 = v105 & v102;
          v109 = (v97 + 8 * (v105 & v102));
          v110 = *v109;
          if (*v109 == -1)
          {
            v106 = (v97 + 8 * v108);
            goto LABEL_127;
          }

          if (!v110)
          {
            break;
          }

          result = WTF::equal(*v110, *v96, a3);
          if (result)
          {
            goto LABEL_118;
          }

LABEL_127:
          v105 = k + v108;
        }

        if (v106)
        {
          *v106 = 0;
          --*(v197[0] - 4);
          v109 = v106;
        }

        result = WTF::fastMalloc(0x18);
        v111 = *v96;
        if (*v96)
        {
          atomic_fetch_add_explicit(v111, 2u, memory_order_relaxed);
        }

        *(result + 8) = 0;
        *(result + 16) = 0;
        *result = v111;
        *v109 = result;
        v112 = v197[0];
        if (v197[0])
        {
          v113 = *(v197[0] - 4);
          v114 = *(v197[0] - 3) + 1;
          *(v197[0] - 3) = v114;
          v115 = (v113 + v114);
          v116 = *(v112 - 1);
          if (v116 <= 0x400)
          {
            goto LABEL_138;
          }

LABEL_142:
          if (v116 > 2 * v115)
          {
            goto LABEL_115;
          }

LABEL_113:
          v98 = v116 << (6 * v114 >= (2 * v116));
          goto LABEL_114;
        }

        v114 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v115 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v116 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
        {
          goto LABEL_142;
        }

LABEL_138:
        if (3 * v116 <= 4 * v115)
        {
          if (v116)
          {
            goto LABEL_113;
          }

          v98 = 8;
LABEL_114:
          result = *WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::rehash(v197, v98, v109);
        }

LABEL_115:
        v99 = v197[2];
        *(result + 8) = v197[2];
        *(result + 16) = 0;
        v100 = (v99 + 16);
        v61 = v99 == 0;
        v101 = &v197[1];
        if (!v61)
        {
          v101 = v100;
        }

        *v101 = result;
        v197[2] = result;
LABEL_118:
        v96 = *(v96 + 16);
        v97 = v197[0];
        if (!v96)
        {
          v117 = *&v197[1];
          memset(v197, 0, sizeof(v197));
          v118 = v92[1];
          v119 = v92[2];
          v92[1] = v97;
          *(v92 + 1) = v117;
          if (!v119)
          {
            goto LABEL_147;
          }

          goto LABEL_158;
        }
      }
    }

    memset(v197, 0, sizeof(v197));
    v118 = v92[1];
    v119 = v92[2];
    v92[1] = 0;
    *(v92 + 1) = 0uLL;
    if (!v119)
    {
      goto LABEL_147;
    }

    do
    {
LABEL_158:
      v127 = v119;
      v119 = *(v119 + 2);
      v128 = *v127;
      *v127 = 0;
      if (v128 && atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v128, a2);
      }

      result = WTF::fastFree(v127, a2);
    }

    while (v119);
LABEL_147:
    if (v118)
    {
      result = WTF::fastFree((v118 - 16), a2);
    }

    for (m = v197[1]; m; result = WTF::fastFree(v129, a2))
    {
      v129 = m;
      m = *(m + 2);
      v130 = *v129;
      *v129 = 0;
      if (v130 && atomic_fetch_add_explicit(v130, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v130, a2);
      }
    }

    if (v197[0])
    {
      result = WTF::fastFree((v197[0] - 16), a2);
    }

    v121 = *(this + 15);
    if (v121)
    {
      v122 = *(v121 - 16);
      v123 = *(v121 - 12) + 1;
      *(v121 - 12) = v123;
      v124 = (v122 + v123);
      v125 = *(v121 - 4);
      if (v125 > 0x400)
      {
        goto LABEL_166;
      }
    }

    else
    {
      v123 = 1;
      MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
      v124 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
      v125 = MEMORY[0xFFFFFFFFFFFFFFFC];
      if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
      {
LABEL_166:
        if (v125 > 2 * v124)
        {
          goto LABEL_169;
        }

LABEL_167:
        v126 = v125 << (6 * v123 >= (2 * v125));
        goto LABEL_168;
      }
    }

    if (3 * v125 > 4 * v124)
    {
      goto LABEL_169;
    }

    if (v125)
    {
      goto LABEL_167;
    }

    v126 = 8;
LABEL_168:
    result = WTF::HashTable<WGSL::AST::Function *,WTF::KeyValuePair<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashMap<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Function *>,WTF::FastMalloc>::rehash(this + 15, v126, v92);
LABEL_169:
    if (*(this + 32))
    {
      break;
    }

    v131 = *(this + 12);
    if (v131)
    {
      while (1)
      {
        v134 = v15;
        if (v15)
        {
          v135 = *(v15 - 2);
          v136 = *v131;
          v137 = *(*v131 + 16);
          if (v137 < 0x100)
          {
            goto LABEL_179;
          }
        }

        else
        {
          v139 = WTF::fastZeroedMalloc(0x50);
          *v139 = xmmword_225881CF0;
          v134 = v139 + 16;
          v135 = *(v139 + 8);
          v136 = *v131;
          v137 = *(*v131 + 16);
          if (v137 < 0x100)
          {
LABEL_179:
            v138 = WTF::StringImpl::hashSlowCase(v136);
            goto LABEL_180;
          }
        }

        v138 = v137 >> 8;
LABEL_180:
        v140 = 0;
        for (n = 1; ; ++n)
        {
          v142 = v138 & v135;
          v143 = (v134 + 8 * (v138 & v135));
          v144 = *v143;
          if (*v143 == -1)
          {
            v140 = (v134 + 8 * v142);
            goto LABEL_182;
          }

          if (!v144)
          {
            break;
          }

          if (WTF::equal(*v144, *v131, a3))
          {
            v15 = v134;
            v132 = v185;
            goto LABEL_174;
          }

LABEL_182:
          v138 = n + v142;
        }

        if (v140)
        {
          *v140 = 0;
          --*(v134 - 16);
          v143 = v140;
        }

        v132 = WTF::fastMalloc(0x18);
        v145 = *v131;
        if (*v131)
        {
          atomic_fetch_add_explicit(v145, 2u, memory_order_relaxed);
        }

        v132[1] = 0;
        v132[2] = 0;
        *v132 = v145;
        *v143 = v132;
        v146 = *(v134 - 16);
        v147 = *(v134 - 12) + 1;
        *(v134 - 12) = v147;
        v148 = (v146 + v147);
        v149 = *(v134 - 4);
        if (v149 > 0x400)
        {
          if (v149 <= 2 * v148)
          {
            goto LABEL_196;
          }

LABEL_172:
          v15 = v134;
          v133 = v185;
          v132[1] = v185;
          v132[2] = 0;
          if (!v185)
          {
            goto LABEL_211;
          }

LABEL_173:
          v133[2] = v132;
          goto LABEL_174;
        }

        if (3 * v149 > 4 * v148)
        {
          goto LABEL_172;
        }

        if (!v149)
        {
          v180 = (v134 - 16);
          v150 = 8;
          goto LABEL_197;
        }

LABEL_196:
        v180 = (v134 - 16);
        v150 = v149 << (6 * v147 >= (2 * v149));
LABEL_197:
        v182 = v16;
        v151 = WTF::fastZeroedMalloc((8 * v150 + 16));
        v15 = v151 + 4;
        v151[2] = v150 - 1;
        v151[3] = v150;
        *v151 = 0;
        v151[1] = v147;
        if (v149)
        {
          v153 = v151;
          v154 = 0;
          v155 = 0;
          do
          {
            v156 = (v134 + 8 * v154);
            v157 = *v156;
            if (*v156 + 1 >= 2)
            {
              v158 = v153[2];
              v159 = *v157;
              v160 = *(*v157 + 4);
              v161 = v160 < 0x100 ? WTF::StringImpl::hashSlowCase(v159) : v160 >> 8;
              v162 = 0;
              do
              {
                v163 = v161 & v158;
                v161 = ++v162 + v163;
              }

              while (*&v15[2 * v163]);
              *&v15[2 * v163] = *v156;
              if (v156 == v143)
              {
                v155 = &v15[2 * v163];
              }
            }

            ++v154;
          }

          while (v154 != v149);
        }

        else
        {
          v155 = 0;
        }

        WTF::fastFree(v180, v152);
        v132 = *v155;
        v16 = v182;
        v133 = v185;
        v132[1] = v185;
        v132[2] = 0;
        if (v185)
        {
          goto LABEL_173;
        }

LABEL_211:
        v16 = v132;
LABEL_174:
        v131 = *(v131 + 16);
        v185 = v132;
        if (!v131)
        {
          goto LABEL_8;
        }
      }
    }

    v132 = v185;
LABEL_8:
    v17 = v183 + 3;
    v185 = v132;
    v4 = this;
    if (v183 + 3 == v179)
    {
      goto LABEL_214;
    }
  }

  for (; v16; result = WTF::fastFree(v176, a2))
  {
    v176 = v16;
    v16 = v16[2];
    v177 = *v176;
    *v176 = 0;
    if (v177 && atomic_fetch_add_explicit(v177, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v177, a2);
    }
  }

  if (v15)
  {
    return WTF::fastFree((v15 - 4), a2);
  }

  return result;
}