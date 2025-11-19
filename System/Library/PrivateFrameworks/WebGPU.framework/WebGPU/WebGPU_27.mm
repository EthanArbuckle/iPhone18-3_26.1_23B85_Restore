unint64_t WGSL::PointerRewriter::visit(unint64_t this, WGSL::AST::PhonyAssignmentStatement *a2)
{
  v3 = *(*(a2 + 3) + 24);
  if (v3 && *(v3 + 48) == 11)
  {
    v4 = *(this + 108);
    if (v4 == *(this + 104))
    {
      v5 = this;
      this = WTF::Vector<WGPUFeatureName,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(this + 96, v4 + 1, this + 88);
      *(*(v5 + 96) + 4 * (*(v5 + 108))++) = *this;
    }

    else
    {
      *(*(this + 96) + 4 * v4) = *(this + 88);
      ++*(this + 108);
    }
  }

  else if ((*(this + 32) & 1) == 0)
  {
    v6 = *(*this + 216);

    return v6();
  }

  return this;
}

uint64_t WGSL::PointerRewriter::visit(uint64_t this, WGSL::AST::IdentifierExpression *a2, const WTF::StringImpl *a3)
{
  v4 = *(this + 40);
  while (1)
  {
    v5 = v4[1];
    if (v5)
    {
      v6 = *(a2 + 11);
      if (v6 == -1 || !v6)
      {
        __break(0xC471u);
        JUMPOUT(0x225795254);
      }

      v7 = *(v5 - 8);
      v8 = *(v6 + 4);
      v9 = v8 < 0x100 ? WTF::StringImpl::hashSlowCase(v6) : v8 >> 8;
      for (i = 0; ; v9 = i + v11)
      {
        v11 = v9 & v7;
        this = *(v5 + 16 * v11);
        if (this != -1)
        {
          if (!this)
          {
            goto LABEL_2;
          }

          this = WTF::equal(this, *(a2 + 11), a3);
          if (this)
          {
            break;
          }
        }

        ++i;
      }

      v12 = v5 + 16 * v11;
      v13 = v4[1];
      if (!v13 || v12 != v13 + 16 * *(v13 - 4))
      {
        break;
      }
    }

LABEL_2:
    v4 = *v4;
    if (!v4)
    {
      return this;
    }
  }

  if (*(v12 + 8))
  {
    WGSL::AST::Builder::construct<WGSL::AST::IdentityExpression,WGSL::SourceSpan const&,WGSL::AST::Expression &,void>();
  }

  return this;
}

_BYTE *WGSL::PointerRewriter::visit(_BYTE *this, WGSL::AST::UnaryExpression *a2)
{
  if ((this[32] & 1) == 0)
  {
    this = (*(*this + 216))(this, *(a2 + 8));
  }

  if (*(a2 + 72) == 2)
  {
    v3 = a2;
    while (1)
    {
      v3 = *(v3 + 8);
      v4 = (*(*v3 + 16))(v3);
      this = (*(*v3 + 16))(v3);
      if (v4 != 22)
      {
        break;
      }

      if (this != 22)
      {
        __break(0xC471u);
        JUMPOUT(0x2257954A8);
      }
    }

    if (this == 25 && !*(v3 + 72))
    {
      WGSL::AST::Builder::construct<WGSL::AST::IdentityExpression,WGSL::SourceSpan const&,WGSL::AST::Expression &,void>();
    }
  }

  return this;
}

void WGSL::rewritePointers(WGSL *this, WGSL::ShaderModule *a2)
{
  v7 = 0;
  v4 = 0u;
  v3 = 0u;
  v2 = &unk_2838D37E8;
  v5 = 0uLL;
  v6 = 0uLL;
  WGSL::ContextProvider<WGSL::Empty>::ContextScope::ContextScope(&v6 + 1, &v5);
}

void WGSL::PointerRewriter::~PointerRewriter(WGSL::PointerRewriter *this, void *a2)
{
  *this = &unk_2838D62B8;
  v3 = *(this + 12);
  if (v3)
  {
    *(this + 12) = 0;
    *(this + 26) = 0;
    v4 = this;
    WTF::fastFree(v3, a2);
    this = v4;
    v2 = vars8;
  }

  WGSL::AST::ScopedVisitor<WGSL::Empty>::~ScopedVisitor(this, a2);
}

{
  *this = &unk_2838D62B8;
  v3 = *(this + 12);
  if (v3)
  {
    *(this + 12) = 0;
    *(this + 26) = 0;
    WTF::fastFree(v3, a2);
  }

  WGSL::AST::ScopedVisitor<WGSL::Empty>::~ScopedVisitor(this, a2);

  JUMPOUT(0x22AA68560);
}

void WGSL::AST::ScopedVisitor<WGSL::AST::Expression *>::visit(uint64_t a1)
{
  WGSL::ContextProvider<WGSL::Empty>::ContextScope::ContextScope(&v1, (a1 + 40));
}

{
  WGSL::ContextProvider<WGSL::Empty>::ContextScope::ContextScope(&v1, (a1 + 40));
}

__n128 std::__function::__func<void WGSL::ShaderModule::remove<std::reference_wrapper<WGSL::AST::Statement>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Statement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,unsigned long)::{lambda(void)#1},std::allocator<void WGSL::ShaderModule::remove<std::reference_wrapper<WGSL::AST::Statement>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Statement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,unsigned long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2838D64F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

unint64_t std::__function::__func<void WGSL::ShaderModule::remove<std::reference_wrapper<WGSL::AST::Statement>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Statement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,unsigned long)::{lambda(void)#1},std::allocator<void WGSL::ShaderModule::remove<std::reference_wrapper<WGSL::AST::Statement>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Statement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,unsigned long)::{lambda(void)#1}>,void ()(void)>::operator()(unint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  v3 = (result + 24);
  v4 = *(v1 + 12);
  if (v4 == *(v1 + 8))
  {
    result = WTF::Vector<WebGPU::BindGroupLayout::Entry const*,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(*(result + 8), v4 + 1, v3);
    v3 = result;
    LODWORD(v4) = *(v1 + 12);
  }

  v5 = v4 >= v2;
  v6 = v4 - v2;
  if (v5)
  {
    v7 = (*v1 + 8 * v2);
    result = memmove(v7 + 1, v7, 8 * v6);
    *v7 = *v3;
    ++*(v1 + 12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

WTF::StringImpl *WTF::HashMap<WTF::String,WGSL::AST::Expression *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Expression *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::AST::Expression * const&>(uint64_t a1, uint64_t *a2, const WTF::StringImpl **a3, void *a4)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x2257964A4);
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionENS5_18IdentityExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED1Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D6540;
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionENS5_18IdentityExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED0Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D6540;
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

uint64_t _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionENS5_18IdentityExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D6540;
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

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionENS5_18IdentityExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7destroyEv(uint64_t a1, WTF::StringImpl *a2)
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

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionENS5_18IdentityExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE18destroy_deallocateEv(void *__p, WTF::StringImpl *a2)
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

__n128 _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionENS5_18IdentityExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEEclEv(uint64_t a1)
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
  *(v2 + 56) = 0;
  if (*(a1 + 72) == 1)
  {
    mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v2 + 32, (a1 + 48));
    *(v2 + 56) = 1;
  }

  *v2 = off_2838D3EA8;
  *(v2 + 64) = &unk_2838D3EF8;
  result = *(a1 + 88);
  *(v2 + 72) = result;
  *(v2 + 64) = off_2838D37C0;
  v5 = *(a1 + 104);
  *(a1 + 104) = 0;
  *(v2 + 88) = v5;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST15UnaryExpressionENS5_18IdentityExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED1Ev(uint64_t result)
{
  *result = &unk_2838D6588;
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST15UnaryExpressionENS5_18IdentityExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_2838D6588;
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

uint64_t _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST15UnaryExpressionENS5_18IdentityExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D6588;
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

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST15UnaryExpressionENS5_18IdentityExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7destroyEv(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST15UnaryExpressionENS5_18IdentityExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE18destroy_deallocateEv(uint64_t a1)
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST15UnaryExpressionENS5_18IdentityExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEEclEv(uint64_t a1)
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

void WGSL::TypeChecker::TypeChecker(WGSL::TypeChecker *this, WGSL::ShaderModule *a2)
{
  *(this + 1) = 0;
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = this;
  *(this + 4) = 0;
  operator new();
}

void WGSL::TypeChecker::introduceType(WGSL::TypeChecker *this, const WGSL::AST::Identifier *a2, const WGSL::Type *a3, uint64_t a4)
{
  LOBYTE(v12) = 1;
  *(&v12 + 1) = a4;
  v13 = 3;
  v14[0] = 0;
  v15 = 0;
  WTF::HashMap<WTF::String,WGSL::Binding,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Binding>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::Binding const&>(v16, a2 + 1, a3 + 3, &v12);
  v6 = v16[16];
  if (v15 == 1 && v14[16] != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v16, v14);
  }

  if (v6)
  {
    *this = 0;
    *(this + 24) = 0;
  }

  else
  {
    v10 = *(a3 + 8);
    v9 = off_2838D37C0;
    v7 = *(a3 + 3);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    v11 = v7;
    WTF::makeString<WTF::ASCIILiteral,WGSL::AST::Identifier,char>(&v12, "redeclaration of '", 19, v7);
    *this = v12;
    *(this + 8) = *(a3 + 8);
    *(this + 24) = 1;
    *&v12 = 0;
    WGSL::AST::Identifier::~Identifier(&v9, v8);
  }
}

void WGSL::TypeChecker::allocateSimpleConstructor<WGSL::Type const* (WGSL::TypeStore::*)(unsigned char,WGSL::Type const*),WGSL::TypeChecker::declareBuiltins(void)::$_2,int>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
    }
  }

  operator new();
}

void WGSL::TypeChecker::allocateSimpleConstructor<WGSL::Type const* (WGSL::TypeStore::*)(unsigned char,unsigned char,WGSL::Type const*),WGSL::TypeChecker::declareBuiltins(void)::$_3,int,int>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
    }
  }

  operator new();
}

void WGSL::TypeChecker::allocateSimpleConstructor<WGSL::Type const* (WGSL::TypeStore::*)(WGSL::Types::Texture::Kind,WGSL::Type const*),WGSL::TypeChecker::declareBuiltins(void)::$_4,WGSL::Types::Texture::Kind>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
    }
  }

  operator new();
}

void WGSL::TypeChecker::allocateTextureStorageConstructor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a4 == 1)
    {
      v9 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v9 = v10;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = off_2838D37C0;
  v11 = 0;
  v12 = 0;
  v13 = v9;
  v16[0] = &unk_2838D6760;
  v16[1] = a2;
  LOBYTE(v17[0]) = a5;
  v17[1] = v16;
  memset(v17 + 1, 0, 7);
  v14 = a3;
  v15 = a4;
  WGSL::TypeStore::allocateType<WGSL::Types::TypeConstructor,WTF::ASCIILiteral &,std::function<std::experimental::fundamentals_v3::expected<WGSL::Type const*,WGSL::CompilationMessage> ()(WGSL::AST::ElaboratedTypeExpression &)>>();
}

void WGSL::TypeChecker::introduceValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  LOBYTE(v17) = 0;
  *(&v17 + 1) = a4;
  v18 = a5;
  LOBYTE(v19[0]) = 0;
  v21 = 0;
  if (*(a6 + 24) == 1)
  {
    v20 = -1;
    v8 = *(a6 + 16);
    if (v8 != 255)
    {
      v9 = a2;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v8, v22, v19, a6);
      a2 = v9;
      v20 = *(a6 + 16);
    }

    v21 = 1;
  }

  WTF::HashMap<WTF::String,WGSL::Binding,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Binding>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::Binding const&>(v22, (*a2 + 8), (a3 + 24), &v17);
  v11 = v22[16];
  if (v21 == 1 && v20 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v22, v19);
  }

  if (v11)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v15 = *(a3 + 8);
    v14 = off_2838D37C0;
    v12 = *(a3 + 24);
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    }

    v16 = v12;
    WTF::makeString<WTF::ASCIILiteral,WGSL::AST::Identifier,char>(&v17, "redeclaration of '", 19, v12);
    *a1 = v17;
    *(a1 + 8) = *(a3 + 8);
    *(a1 + 24) = 1;
    *&v17 = 0;
    WGSL::AST::Identifier::~Identifier(&v14, v13);
  }
}

WTF *WTF::HashMap<WTF::String,WGSL::OverloadedDeclaration,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::OverloadedDeclaration>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WGSL::OverloadedDeclaration>(uint64_t a1, uint64_t *a2, const WTF::StringImpl **a3, __int128 *a4)
{
  if (*a3 == -1 || !*a3)
  {
    __break(0xC471u);
    JUMPOUT(0x2258245C8);
  }

  v8 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::OverloadedDeclaration>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::OverloadedDeclaration>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::OverloadedDeclaration,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::OverloadedDeclaration>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    v8 = *a2;
    if (!*a2)
    {
      v9 = 0;
      v10 = *a3;
      v11 = *(*a3 + 4);
      v38 = a1;
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
  v38 = a1;
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
    v16 = v8 + 48 * (v12 & v9);
    v17 = *v16;
    if (*v16 == -1)
    {
      v13 = (v8 + 48 * v15);
      goto LABEL_11;
    }

    if (!v17)
    {
      if (v13)
      {
        v13[1] = 0u;
        v13[2] = 0u;
        *v13 = 0u;
        --*(*a2 - 16);
        v16 = v13;
      }

      v21 = *a3;
      *a3 = 0;
      v22 = *v16;
      *v16 = v21;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, a2);
      }

      v23 = *(a4 + 3);
      v24 = *(a4 + 4);
      *(a4 + 3) = 0;
      *(a4 + 4) = 0;
      v25 = *a4;
      *(v16 + 24) = *(a4 + 16);
      *(v16 + 8) = v25;
      v26 = *(v16 + 44);
      if (v26)
      {
        v27 = *(v16 + 32);
        v28 = 88 * v26;
        do
        {
          WGSL::OverloadCandidate::~OverloadCandidate(v27, a2);
          v27 = (v29 + 88);
          v28 -= 88;
        }

        while (v28);
      }

      result = *(v16 + 32);
      if (result)
      {
        *(v16 + 32) = 0;
        *(v16 + 40) = 0;
        result = WTF::fastFree(result, a2);
      }

      *(v16 + 32) = v23;
      *(v16 + 40) = v24;
      v30 = *a2;
      v31 = v38;
      if (*a2)
      {
        v32 = *(v30 - 16);
        v33 = *(v30 - 12) + 1;
        *(v30 - 12) = v33;
        v34 = (v32 + v33);
        v35 = *(v30 - 4);
        if (v35 <= 0x400)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v33 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v34 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v35 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
        {
LABEL_29:
          if (3 * v35 > 4 * v34)
          {
LABEL_37:
            v36 = v30 + 48 * v35;
            v37 = 1;
            goto LABEL_40;
          }

          if (!v35)
          {
            result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::OverloadedDeclaration>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::OverloadedDeclaration>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::OverloadedDeclaration,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::OverloadedDeclaration>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, 8u, v16);
            v16 = result;
            v30 = *a2;
            if (!*a2)
            {
LABEL_32:
              LODWORD(v35) = 0;
              goto LABEL_37;
            }

LABEL_36:
            LODWORD(v35) = *(v30 - 4);
            goto LABEL_37;
          }

LABEL_35:
          result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::OverloadedDeclaration>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::OverloadedDeclaration>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::OverloadedDeclaration,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::OverloadedDeclaration>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a2, v35 << (6 * v33 >= (2 * v35)), v16);
          v16 = result;
          v30 = *a2;
          if (!*a2)
          {
            goto LABEL_32;
          }

          goto LABEL_36;
        }
      }

      if (v35 > 2 * v34)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    result = WTF::equal(v17, *a3, a3);
    if (result)
    {
      break;
    }

LABEL_11:
    v12 = i + v15;
  }

  v19 = *a2;
  if (*a2)
  {
    v20 = *(v19 - 4);
  }

  else
  {
    v20 = 0;
  }

  v31 = v38;
  v37 = 0;
  v36 = v19 + 48 * v20;
LABEL_40:
  *v31 = v16;
  *(v31 + 8) = v36;
  *(v31 + 16) = v37;
  return result;
}

void WGSL::constantNot(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_77;
  }

  LOBYTE(v37[0]) = 0;
  v38 = -1;
  v4 = *(v3 + 24);
  if (v4 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v4, v34, v37, v3 + 1), v38 = *(v3 + 24), LOBYTE(v34[0]) = 0, v35 = -1, v38 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v38, v31, v34, v37), v35 = v38, v38 == 255))
  {
LABEL_48:
    if (*(v3 + 24) != 6)
    {
      __break(0xC471u);
      JUMPOUT(0x225824AF8);
    }

    LOBYTE(v34[0]) = (v3[2] & 1) == 0;
    v35 = 6;
    *a2 = v34[0];
    a2[16] = 6;
    a2[24] = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, v34);
    if (v38 == 255)
    {
      return;
    }

LABEL_50:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v37);
    return;
  }

  if (v38 != 8 || !v34[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, v34);
    goto LABEL_48;
  }

  v5 = *v34[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, v34);
  if (!v5)
  {
    goto LABEL_48;
  }

  v6 = WTF::fastMalloc((24 * v5 + 8));
  *v6 = v5;
  v7 = v6 + 2;
  v8 = 6;
  bzero(v6 + 2, 24 * ((24 * v5 - 24) / 0x18uLL) + 24);
  v9 = 0;
  LODWORD(v29[0]) = 0;
  v30 = 0;
  v10 = a2[24];
  v11 = *a2;
  do
  {
    v12 = v38;
    if (v38 == 8)
    {
      if (v9 >= *v37[0])
      {
        *a2 = v11;
        a2[24] = v10;
        __break(0xC471u);
        JUMPOUT(0x225824B50);
      }

      v13 = (v37[0] + v8 * 4 - 16);
      v12 = *(v37[0] + v8 * 4);
      if (v30 == 255)
      {
        if (v12 == 255)
        {
          goto LABEL_22;
        }
      }

      else if (v12 == 255)
      {
        goto LABEL_72;
      }

      v34[0] = v29;
    }

    else
    {
      if (v30 == 255)
      {
        if (v38 == 255)
        {
          *a2 = v11;
          a2[24] = v10;
          goto LABEL_76;
        }
      }

      else if (v38 == 255)
      {
LABEL_72:
        *a2 = v11;
        a2[24] = v10;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v29);
        v30 = -1;
        goto LABEL_76;
      }

      v34[0] = v29;
      v13 = v37;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v12, v34, v29, v13);
LABEL_22:
    if (v30 != 6)
    {
      *a2 = v11;
      a2[24] = v10;
LABEL_76:
      __break(0xC471u);
LABEL_77:
      JUMPOUT(0x225824AD8);
    }

    LOBYTE(v31[0]) = (v29[0] & 1) == 0;
    v32 = 6;
    LOBYTE(v34[0]) = v31[0];
    v35 = 6;
    v36 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v33, v31);
    v16 = v36;
    if (!v36)
    {
      if (v9 >= *v6)
      {
        *a2 = v11;
        a2[24] = v10;
        __break(0xC471u);
        JUMPOUT(0x225824B78);
      }

      if (LOBYTE(v6[v8]) == 255)
      {
        if (v35 == 255)
        {
          goto LABEL_35;
        }
      }

      else if (v35 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, v7);
        LOBYTE(v6[v8]) = -1;
        v17 = v36;
        if (v36 == 255)
        {
          goto LABEL_42;
        }

        goto LABEL_36;
      }

      v31[0] = v7;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v35, v31, v7, v34);
LABEL_35:
      v17 = v36;
      if (v36 == 255)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    if (v36 != 1)
    {
      *a2 = v11;
      a2[24] = v10;
      mpark::throw_bad_variant_access(v14);
    }

    v11 = v34[0];
    if (v34[0])
    {
      atomic_fetch_add_explicit(v34[0], 2u, memory_order_relaxed);
      v10 = 1;
      v17 = v36;
      if (v36 == 255)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v10 = 1;
      v17 = v36;
      if (v36 == 255)
      {
        goto LABEL_42;
      }
    }

LABEL_36:
    if (v17)
    {
      v18 = v34[0];
      v34[0] = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v15);
      }
    }

    else if (v35 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, v34);
    }

LABEL_42:
    if (v16)
    {
      *a2 = v11;
      a2[24] = v10;
      goto LABEL_59;
    }

    ++v9;
    v7 += 24;
    v8 += 6;
  }

  while (v5 != v9);
  v19 = *v6;
  v20 = 24 * v19;
  v21 = WTF::fastMalloc((24 * v19 + 8));
  v22 = v21;
  *v21 = v19;
  if (v19)
  {
    v23 = (v21 + 6);
    v24 = (v6 + 6);
    do
    {
      *(v23 - 16) = 0;
      *v23 = -1;
      v25 = *v24;
      if (v25 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v25, v34, v23 - 2, v24 - 2);
        *v23 = *v24;
      }

      v23 += 3;
      v24 += 3;
      v20 -= 24;
    }

    while (v20);
  }

  v35 = 8;
  v34[0] = 0;
  *a2 = v22;
  a2[16] = 8;
  a2[24] = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, v34);
LABEL_59:
  if (v30 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v29);
  }

  v26 = *v6;
  if (v26)
  {
    v27 = 24 * v26;
    v28 = v6 + 6;
    do
    {
      v15 = (v28 - 16);
      if (*v28 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v15);
      }

      *v28 = -1;
      v28 += 24;
      v27 -= 24;
    }

    while (v27);
  }

  WTF::fastFree(v6, v15);
  if (v38 != 255)
  {
    goto LABEL_50;
  }
}

void WGSL::constantOr(int **a1@<X1>, _BYTE *a2@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x2258252BCLL);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x2258252DCLL);
  }

  LOBYTE(v44[0]) = 0;
  v45 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255)
  {
    v6 = 255;
    LOBYTE(v46[0]) = 0;
    v47 = -1;
    v7 = *(v3 + 48);
    if (v7 == 255)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v34, v44, v3 + 1);
  v6 = *(v3 + 24);
  v45 = *(v3 + 24);
  LOBYTE(v46[0]) = 0;
  v47 = -1;
  v7 = *(v3 + 48);
  if (v7 != 255)
  {
LABEL_5:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v34, v46, v3 + 4);
    v47 = *(v3 + 48);
    v6 = v45;
  }

LABEL_6:
  LOBYTE(v34[0]) = 0;
  v35 = -1;
  if (v6 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v41, v34, v44), v35 = v45, v45 == 255))
  {
LABEL_10:
    LOBYTE(v34[0]) = 0;
    v35 = -1;
    v8 = v47;
    if (v47 == 255)
    {
      goto LABEL_75;
    }

    v8 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v47, v41, v34, v46);
    v35 = v47;
    if (v47 != 8)
    {
      if (v47 == 255)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }

    goto LABEL_16;
  }

  if (v45 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v34);
    goto LABEL_10;
  }

LABEL_16:
  if (!v34[0])
  {
LABEL_74:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v34);
LABEL_75:
    if (*(v3 + 24) != 6)
    {
      __break(0xC471u);
      JUMPOUT(0x2258252FCLL);
    }

    if (*(v3 + 48) != 6)
    {
      mpark::throw_bad_variant_access(v8);
    }

    LOBYTE(v34[0]) = *(v3 + 8) | v3[8] & 1;
    v35 = 6;
    *a2 = v34[0];
    a2[16] = 6;
    a2[24] = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v34);
    if (v47 == 255)
    {
      goto LABEL_79;
    }

LABEL_78:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v46);
    goto LABEL_79;
  }

  v9 = *v34[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v34);
  if (!v9)
  {
    goto LABEL_75;
  }

  v10 = WTF::fastMalloc((24 * v9 + 8));
  *v10 = v9;
  v11 = v10 + 2;
  v12 = 24;
  bzero(v10 + 2, 24 * ((24 * v9 - 24) / 0x18uLL) + 24);
  v13 = 0;
  v35 = 0;
  LODWORD(v36[0]) = 0;
  v37 = 0;
  v14 = *a2;
  v33 = a2[24];
  LODWORD(v34[0]) = 0;
  do
  {
    v15 = v45;
    if (v45 == 8)
    {
      if (v13 >= *v44[0])
      {
        goto LABEL_102;
      }

      v16 = (v44[0] + v12 - 16);
      v15 = *(v44[0] + v12);
      if (v35 == 255)
      {
        if (v15 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v15 == 255)
      {
        goto LABEL_26;
      }

      v41[0] = v34;
    }

    else
    {
      if (v35 == 255)
      {
        if (v45 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v45 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v34);
        v35 = -1;
        goto LABEL_32;
      }

      v41[0] = v34;
      v16 = v44;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v15, v41, v34, v16);
LABEL_32:
    v17 = v47;
    if (v47 != 8)
    {
      if (v37 == 255)
      {
        if (v47 == 255)
        {
          v19 = 0;
          goto LABEL_47;
        }
      }

      else if (v47 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v36);
        v19 = 0;
        v37 = -1;
        goto LABEL_47;
      }

      v41[0] = v36;
      v18 = v46;
      goto LABEL_45;
    }

    if (v13 >= *v46[0])
    {
      goto LABEL_102;
    }

    v18 = (v46[0] + v12 - 16);
    v17 = *(v46[0] + v12);
    if (v37 != 255)
    {
      if (v17 == 255)
      {
        goto LABEL_39;
      }

LABEL_44:
      v41[0] = v36;
LABEL_45:
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v41, v36, v18);
      goto LABEL_46;
    }

    if (v17 != 255)
    {
      goto LABEL_44;
    }

LABEL_46:
    v19 = v37 == 6;
LABEL_47:
    if (v35 != 6)
    {
      *a2 = v14;
      a2[24] = v33;
      __break(0xC471u);
      JUMPOUT(0x22582529CLL);
    }

    if (!v19)
    {
LABEL_95:
      *a2 = v14;
      a2[24] = v33;
      mpark::throw_bad_variant_access(v17);
    }

    LOBYTE(v38[0]) = v36[0] & 1 | LOBYTE(v34[0]);
    v39 = 6;
    LOBYTE(v41[0]) = v38[0];
    v42 = 6;
    v43 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v40, v38);
    v21 = v43;
    if (v43)
    {
      if (v43 != 1)
      {
        goto LABEL_95;
      }

      v14 = v41[0];
      if (v41[0])
      {
        atomic_fetch_add_explicit(v41[0], 2u, memory_order_relaxed);
      }

      v33 = 1;
    }

    else
    {
      if (v13 >= *v10)
      {
LABEL_102:
        *a2 = v14;
        a2[24] = v33;
        __break(0xC471u);
        JUMPOUT(0x225825270);
      }

      if (LOBYTE(v10[v12 / 4]) == 255)
      {
        if (v42 == 255)
        {
          goto LABEL_60;
        }
      }

      else if (v42 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v38, v11);
        LOBYTE(v10[v12 / 4]) = -1;
        goto LABEL_60;
      }

      v38[0] = v11;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v42, v38, v11, v41);
    }

LABEL_60:
    if (v43 != 255)
    {
      if (v43)
      {
        v22 = v41[0];
        v41[0] = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v20);
        }
      }

      else if (v42 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v38, v41);
      }
    }

    if (v21)
    {
      *a2 = v14;
      a2[24] = v33;
      if (v37 == 255)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    ++v13;
    v11 += 24;
    v12 += 24;
  }

  while (v9 != v13);
  v23 = *v10;
  v24 = 24 * v23;
  v25 = WTF::fastMalloc((24 * v23 + 8));
  v26 = v25;
  *v25 = v23;
  if (v23)
  {
    v27 = (v25 + 6);
    v28 = (v10 + 6);
    do
    {
      *(v27 - 16) = 0;
      *v27 = -1;
      v29 = *v28;
      if (v29 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v29, v41, v27 - 2, v28 - 2);
        *v27 = *v28;
      }

      v27 += 3;
      v28 += 3;
      v24 -= 24;
    }

    while (v24);
  }

  v42 = 8;
  v41[0] = 0;
  *a2 = v26;
  a2[16] = 8;
  a2[24] = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v38, v41);
  if (v37 != 255)
  {
LABEL_83:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v36);
  }

LABEL_84:
  v37 = -1;
  if (v35 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v34);
  }

  v30 = *v10;
  if (v30)
  {
    v31 = 24 * v30;
    v32 = v10 + 6;
    do
    {
      v20 = (v32 - 16);
      if (*v32 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v20);
      }

      *v32 = -1;
      v32 += 24;
      v31 -= 24;
    }

    while (v31);
  }

  WTF::fastFree(v10, v20);
  if (v47 != 255)
  {
    goto LABEL_78;
  }

LABEL_79:
  v47 = -1;
  if (v45 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v44);
  }
}

void WGSL::constantAnd(int **a1@<X1>, _BYTE *a2@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x225825A38);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x225825A58);
  }

  LOBYTE(v44[0]) = 0;
  v45 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255)
  {
    v6 = 255;
    LOBYTE(v46[0]) = 0;
    v47 = -1;
    v7 = *(v3 + 48);
    if (v7 == 255)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v34, v44, v3 + 1);
  v6 = *(v3 + 24);
  v45 = *(v3 + 24);
  LOBYTE(v46[0]) = 0;
  v47 = -1;
  v7 = *(v3 + 48);
  if (v7 != 255)
  {
LABEL_5:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v34, v46, v3 + 4);
    v47 = *(v3 + 48);
    v6 = v45;
  }

LABEL_6:
  LOBYTE(v34[0]) = 0;
  v35 = -1;
  if (v6 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v41, v34, v44), v35 = v45, v45 == 255))
  {
LABEL_10:
    LOBYTE(v34[0]) = 0;
    v35 = -1;
    v8 = v47;
    if (v47 == 255)
    {
      goto LABEL_75;
    }

    v8 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v47, v41, v34, v46);
    v35 = v47;
    if (v47 != 8)
    {
      if (v47 == 255)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }

    goto LABEL_16;
  }

  if (v45 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v34);
    goto LABEL_10;
  }

LABEL_16:
  if (!v34[0])
  {
LABEL_74:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v34);
LABEL_75:
    if (*(v3 + 24) != 6)
    {
      __break(0xC471u);
      JUMPOUT(0x225825A78);
    }

    if (*(v3 + 48) != 6)
    {
      mpark::throw_bad_variant_access(v8);
    }

    LOBYTE(v34[0]) = v3[2] & v3[8];
    v35 = 6;
    *a2 = v34[0];
    a2[16] = 6;
    a2[24] = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v34);
    if (v47 == 255)
    {
      goto LABEL_79;
    }

LABEL_78:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v46);
    goto LABEL_79;
  }

  v9 = *v34[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v34);
  if (!v9)
  {
    goto LABEL_75;
  }

  v10 = WTF::fastMalloc((24 * v9 + 8));
  *v10 = v9;
  v11 = v10 + 2;
  v12 = 24;
  bzero(v10 + 2, 24 * ((24 * v9 - 24) / 0x18uLL) + 24);
  v13 = 0;
  v35 = 0;
  LODWORD(v36[0]) = 0;
  v37 = 0;
  v14 = *a2;
  v33 = a2[24];
  LODWORD(v34[0]) = 0;
  do
  {
    v15 = v45;
    if (v45 == 8)
    {
      if (v13 >= *v44[0])
      {
        goto LABEL_102;
      }

      v16 = (v44[0] + v12 - 16);
      v15 = *(v44[0] + v12);
      if (v35 == 255)
      {
        if (v15 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v15 == 255)
      {
        goto LABEL_26;
      }

      v41[0] = v34;
    }

    else
    {
      if (v35 == 255)
      {
        if (v45 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v45 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v34);
        v35 = -1;
        goto LABEL_32;
      }

      v41[0] = v34;
      v16 = v44;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v15, v41, v34, v16);
LABEL_32:
    v17 = v47;
    if (v47 != 8)
    {
      if (v37 == 255)
      {
        if (v47 == 255)
        {
          v19 = 0;
          goto LABEL_47;
        }
      }

      else if (v47 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v36);
        v19 = 0;
        v37 = -1;
        goto LABEL_47;
      }

      v41[0] = v36;
      v18 = v46;
      goto LABEL_45;
    }

    if (v13 >= *v46[0])
    {
      goto LABEL_102;
    }

    v18 = (v46[0] + v12 - 16);
    v17 = *(v46[0] + v12);
    if (v37 != 255)
    {
      if (v17 == 255)
      {
        goto LABEL_39;
      }

LABEL_44:
      v41[0] = v36;
LABEL_45:
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v41, v36, v18);
      goto LABEL_46;
    }

    if (v17 != 255)
    {
      goto LABEL_44;
    }

LABEL_46:
    v19 = v37 == 6;
LABEL_47:
    if (v35 != 6)
    {
      *a2 = v14;
      a2[24] = v33;
      __break(0xC471u);
      JUMPOUT(0x225825A18);
    }

    if (!v19)
    {
LABEL_95:
      *a2 = v14;
      a2[24] = v33;
      mpark::throw_bad_variant_access(v17);
    }

    LOBYTE(v38[0]) = v36[0] & LOBYTE(v34[0]);
    v39 = 6;
    LOBYTE(v41[0]) = v36[0] & LOBYTE(v34[0]);
    v42 = 6;
    v43 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v40, v38);
    v21 = v43;
    if (v43)
    {
      if (v43 != 1)
      {
        goto LABEL_95;
      }

      v14 = v41[0];
      if (v41[0])
      {
        atomic_fetch_add_explicit(v41[0], 2u, memory_order_relaxed);
      }

      v33 = 1;
    }

    else
    {
      if (v13 >= *v10)
      {
LABEL_102:
        *a2 = v14;
        a2[24] = v33;
        __break(0xC471u);
        JUMPOUT(0x2258259ECLL);
      }

      if (LOBYTE(v10[v12 / 4]) == 255)
      {
        if (v42 == 255)
        {
          goto LABEL_60;
        }
      }

      else if (v42 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v38, v11);
        LOBYTE(v10[v12 / 4]) = -1;
        goto LABEL_60;
      }

      v38[0] = v11;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v42, v38, v11, v41);
    }

LABEL_60:
    if (v43 != 255)
    {
      if (v43)
      {
        v22 = v41[0];
        v41[0] = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v20);
        }
      }

      else if (v42 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v38, v41);
      }
    }

    if (v21)
    {
      *a2 = v14;
      a2[24] = v33;
      if (v37 == 255)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    ++v13;
    v11 += 24;
    v12 += 24;
  }

  while (v9 != v13);
  v23 = *v10;
  v24 = 24 * v23;
  v25 = WTF::fastMalloc((24 * v23 + 8));
  v26 = v25;
  *v25 = v23;
  if (v23)
  {
    v27 = (v25 + 6);
    v28 = (v10 + 6);
    do
    {
      *(v27 - 16) = 0;
      *v27 = -1;
      v29 = *v28;
      if (v29 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v29, v41, v27 - 2, v28 - 2);
        *v27 = *v28;
      }

      v27 += 3;
      v28 += 3;
      v24 -= 24;
    }

    while (v24);
  }

  v42 = 8;
  v41[0] = 0;
  *a2 = v26;
  a2[16] = 8;
  a2[24] = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v38, v41);
  if (v37 != 255)
  {
LABEL_83:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v36);
  }

LABEL_84:
  v37 = -1;
  if (v35 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v34);
  }

  v30 = *v10;
  if (v30)
  {
    v31 = 24 * v30;
    v32 = v10 + 6;
    do
    {
      v20 = (v32 - 16);
      if (*v32 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v20);
      }

      *v32 = -1;
      v32 += 24;
      v31 -= 24;
    }

    while (v31);
  }

  WTF::fastFree(v10, v20);
  if (v47 != 255)
  {
    goto LABEL_78;
  }

LABEL_79:
  v47 = -1;
  if (v45 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v44);
  }
}

void WGSL::constantBitwiseOr(int **a1@<X1>, uint64_t a2@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x2258262F8);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x225826318);
  }

  LOBYTE(v49[0]) = 0;
  v50 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255)
  {
    v6 = 255;
    LOBYTE(v51[0]) = 0;
    v52 = -1;
    v7 = *(v3 + 48);
    if (v7 == 255)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v41, v49, v3 + 1);
  v6 = *(v3 + 24);
  v50 = *(v3 + 24);
  LOBYTE(v51[0]) = 0;
  v52 = -1;
  v7 = *(v3 + 48);
  if (v7 != 255)
  {
LABEL_5:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v41, v51, v3 + 4);
    v52 = *(v3 + 48);
    v6 = v50;
  }

LABEL_6:
  LOBYTE(v41[0]) = 0;
  v42 = -1;
  if (v6 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v46, v41, v49), v42 = v50, v50 == 255))
  {
LABEL_10:
    LOBYTE(v41[0]) = 0;
    v42 = -1;
    v8 = v52;
    if (v52 == 255)
    {
      goto LABEL_84;
    }

    v8 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v52, v46, v41, v51);
    v42 = v52;
    if (v52 != 8)
    {
      if (v52 != 255)
      {
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    goto LABEL_16;
  }

  if (v50 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
    goto LABEL_10;
  }

LABEL_16:
  if (!v41[0])
  {
LABEL_83:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
    goto LABEL_84;
  }

  v9 = *v41[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
  if (!v9)
  {
LABEL_84:
    v26 = *(v3 + 24);
    if (v26 > 4)
    {
      if (v26 == 5)
      {
        if (*(v3 + 48) == 5)
        {
          v41[0] = *(v3 + 4) | *(v3 + 1);
          v42 = 5;
          *a2 = v41[0];
          goto LABEL_98;
        }

        goto LABEL_122;
      }

      if (v26 == 6)
      {
        if (*(v3 + 48) == 6)
        {
          LOBYTE(v41[0]) = *(v3 + 32) | *(v3 + 8);
          v42 = 6;
          *a2 = v41[0];
LABEL_98:
          *(a2 + 16) = v26;
          *(a2 + 24) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
          if (v52 == 255)
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }

        goto LABEL_122;
      }
    }

    else
    {
      if (v26 == 3)
      {
        if (*(v3 + 48) == 3)
        {
          v27 = v3[8] | v3[2];
          LODWORD(v41[0]) = v27;
          v28 = 3;
LABEL_94:
          v42 = v28;
          *a2 = v27;
          goto LABEL_98;
        }

        goto LABEL_122;
      }

      if (v26 == 4)
      {
        if (*(v3 + 48) == 4)
        {
          v27 = v3[8] | v3[2];
          LODWORD(v41[0]) = v27;
          v28 = 4;
          goto LABEL_94;
        }

LABEL_122:
        mpark::throw_bad_variant_access(v8);
      }
    }

    __break(0xC471u);
LABEL_129:
    JUMPOUT(0x2258262B0);
  }

  v10 = WTF::fastMalloc((24 * v9 + 8));
  *v10 = v9;
  v11 = v10 + 2;
  v12 = 24;
  bzero(v10 + 2, 24 * ((24 * v9 - 24) / 0x18uLL) + 24);
  v13 = 0;
  LODWORD(v41[0]) = 0;
  v42 = 0;
  LODWORD(v43[0]) = 0;
  v44 = 0;
  v14 = *a2;
  v15 = *(a2 + 24);
  do
  {
    v16 = v50;
    if (v50 == 8)
    {
      if (v13 >= *v49[0])
      {
        goto LABEL_123;
      }

      v17 = (v49[0] + v12 - 16);
      v16 = *(v49[0] + v12);
      if (v42 == 255)
      {
        if (v16 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v16 == 255)
      {
        goto LABEL_26;
      }

      v46[0] = v41;
    }

    else
    {
      if (v42 == 255)
      {
        if (v50 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v50 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
        v42 = -1;
        goto LABEL_32;
      }

      v46[0] = v41;
      v17 = v49;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v16, v46, v41, v17);
LABEL_32:
    v18 = v52;
    if (v52 == 8)
    {
      if (v13 >= *v51[0])
      {
LABEL_123:
        *a2 = v14;
        *(a2 + 24) = v15;
        __break(0xC471u);
        goto LABEL_129;
      }

      v19 = (v51[0] + v12 - 16);
      v18 = *(v51[0] + v12);
      if (v44 == 255)
      {
        if (v18 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v18 == 255)
      {
        goto LABEL_39;
      }

      v46[0] = v43;
    }

    else
    {
      if (v44 == 255)
      {
        if (v52 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v52 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v43);
        v44 = -1;
        goto LABEL_45;
      }

      v46[0] = v43;
      v19 = v51;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v18, v46, v43, v19);
LABEL_45:
    if (v42 > 4u)
    {
      if (v42 == 5)
      {
        if (v44 != 5)
        {
          goto LABEL_121;
        }

        v39[0] = (v43[0] | v41[0]);
        v40 = 5;
        v46[0] = (v43[0] | v41[0]);
      }

      else
      {
        if (v42 != 6)
        {
LABEL_124:
          *a2 = v14;
          *(a2 + 24) = v15;
          __break(0xC471u);
          JUMPOUT(0x2258262D8);
        }

        if (v44 != 6)
        {
LABEL_121:
          *a2 = v14;
          *(a2 + 24) = v15;
          mpark::throw_bad_variant_access(v18);
        }

        LOBYTE(v39[0]) = LOBYTE(v43[0]) | LOBYTE(v41[0]);
        v40 = 6;
        LOBYTE(v46[0]) = LOBYTE(v43[0]) | LOBYTE(v41[0]);
      }
    }

    else
    {
      if (v42 == 3)
      {
        if (v44 != 3)
        {
          goto LABEL_121;
        }

        v20 = LODWORD(v43[0]) | LODWORD(v41[0]);
        LODWORD(v39[0]) = LODWORD(v43[0]) | LODWORD(v41[0]);
        v21 = 3;
      }

      else
      {
        if (v42 != 4)
        {
          goto LABEL_124;
        }

        if (v44 != 4)
        {
          goto LABEL_121;
        }

        v20 = LODWORD(v43[0]) | LODWORD(v41[0]);
        LODWORD(v39[0]) = LODWORD(v43[0]) | LODWORD(v41[0]);
        v21 = 4;
      }

      v40 = v21;
      LODWORD(v46[0]) = v20;
    }

    v47 = v42;
    v48 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v45, v39);
    v23 = v48;
    if (!v48)
    {
      if (v13 >= *v10)
      {
        *a2 = v14;
        *(a2 + 24) = v15;
        __break(0xC471u);
        JUMPOUT(0x225826340);
      }

      if (LOBYTE(v10[v12 / 4]) == 255)
      {
        if (v47 == 255)
        {
          goto LABEL_71;
        }
      }

      else if (v47 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v11);
        LOBYTE(v10[v12 / 4]) = -1;
        v24 = v48;
        if (v48 == 255)
        {
          goto LABEL_78;
        }

        goto LABEL_72;
      }

      v39[0] = v11;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v47, v39, v11, v46);
LABEL_71:
      v24 = v48;
      if (v48 == 255)
      {
        goto LABEL_78;
      }

      goto LABEL_72;
    }

    if (v48 != 1)
    {
      goto LABEL_121;
    }

    v14 = v46[0];
    if (v46[0])
    {
      atomic_fetch_add_explicit(v46[0], 2u, memory_order_relaxed);
      v15 = 1;
      v24 = v48;
      if (v48 == 255)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v15 = 1;
      v24 = v48;
      if (v48 == 255)
      {
        goto LABEL_78;
      }
    }

LABEL_72:
    if (v24)
    {
      v25 = v46[0];
      v46[0] = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v22);
      }
    }

    else if (v47 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v46);
    }

LABEL_78:
    if (v23)
    {
      *a2 = v14;
      *(a2 + 24) = v15;
      if (v44 == 255)
      {
        goto LABEL_105;
      }

      goto LABEL_104;
    }

    ++v13;
    v11 += 24;
    v12 += 24;
  }

  while (v9 != v13);
  v32 = *v10;
  v33 = 24 * v32;
  v34 = WTF::fastMalloc((24 * v32 + 8));
  v35 = v34;
  *v34 = v32;
  if (v32)
  {
    v36 = (v34 + 6);
    v37 = (v10 + 6);
    do
    {
      *(v36 - 16) = 0;
      *v36 = -1;
      v38 = *v37;
      if (v38 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v38, v46, v36 - 2, v37 - 2);
        *v36 = *v37;
      }

      v36 += 3;
      v37 += 3;
      v33 -= 24;
    }

    while (v33);
  }

  v47 = 8;
  v46[0] = 0;
  *a2 = v35;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v46);
  if (v44 != 255)
  {
LABEL_104:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v43);
  }

LABEL_105:
  v44 = -1;
  if (v42 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
  }

  v29 = *v10;
  if (v29)
  {
    v30 = 24 * v29;
    v31 = v10 + 6;
    do
    {
      v22 = (v31 - 16);
      if (*v31 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v22);
      }

      *v31 = -1;
      v31 += 24;
      v30 -= 24;
    }

    while (v30);
  }

  WTF::fastFree(v10, v22);
  if (v52 != 255)
  {
LABEL_99:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v51);
  }

LABEL_100:
  v52 = -1;
  if (v50 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v49);
  }
}

void WGSL::constantBitwiseAnd(int **a1@<X1>, uint64_t a2@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x225826BB4);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x225826BD4);
  }

  LOBYTE(v49[0]) = 0;
  v50 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255)
  {
    v6 = 255;
    LOBYTE(v51[0]) = 0;
    v52 = -1;
    v7 = *(v3 + 48);
    if (v7 == 255)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v41, v49, v3 + 1);
  v6 = *(v3 + 24);
  v50 = *(v3 + 24);
  LOBYTE(v51[0]) = 0;
  v52 = -1;
  v7 = *(v3 + 48);
  if (v7 != 255)
  {
LABEL_5:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v41, v51, v3 + 4);
    v52 = *(v3 + 48);
    v6 = v50;
  }

LABEL_6:
  LOBYTE(v41[0]) = 0;
  v42 = -1;
  if (v6 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v46, v41, v49), v42 = v50, v50 == 255))
  {
LABEL_10:
    LOBYTE(v41[0]) = 0;
    v42 = -1;
    v8 = v52;
    if (v52 == 255)
    {
      goto LABEL_84;
    }

    v8 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v52, v46, v41, v51);
    v42 = v52;
    if (v52 != 8)
    {
      if (v52 != 255)
      {
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    goto LABEL_16;
  }

  if (v50 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
    goto LABEL_10;
  }

LABEL_16:
  if (!v41[0])
  {
LABEL_83:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
    goto LABEL_84;
  }

  v9 = *v41[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
  if (!v9)
  {
LABEL_84:
    v26 = *(v3 + 24);
    if (v26 > 4)
    {
      if (v26 == 5)
      {
        if (*(v3 + 48) == 5)
        {
          v41[0] = *(v3 + 4) & *(v3 + 1);
          v42 = 5;
          *a2 = v41[0];
          goto LABEL_98;
        }

        goto LABEL_122;
      }

      if (v26 == 6)
      {
        if (*(v3 + 48) == 6)
        {
          LOBYTE(v41[0]) = v3[8] & v3[2];
          v42 = 6;
          *a2 = v41[0];
LABEL_98:
          *(a2 + 16) = v26;
          *(a2 + 24) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
          if (v52 == 255)
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }

        goto LABEL_122;
      }
    }

    else
    {
      if (v26 == 3)
      {
        if (*(v3 + 48) == 3)
        {
          v27 = v3[8] & v3[2];
          LODWORD(v41[0]) = v27;
          v28 = 3;
LABEL_94:
          v42 = v28;
          *a2 = v27;
          goto LABEL_98;
        }

        goto LABEL_122;
      }

      if (v26 == 4)
      {
        if (*(v3 + 48) == 4)
        {
          v27 = v3[8] & v3[2];
          LODWORD(v41[0]) = v27;
          v28 = 4;
          goto LABEL_94;
        }

LABEL_122:
        mpark::throw_bad_variant_access(v8);
      }
    }

    __break(0xC471u);
LABEL_129:
    JUMPOUT(0x225826B6CLL);
  }

  v10 = WTF::fastMalloc((24 * v9 + 8));
  *v10 = v9;
  v11 = v10 + 2;
  v12 = 24;
  bzero(v10 + 2, 24 * ((24 * v9 - 24) / 0x18uLL) + 24);
  v13 = 0;
  LODWORD(v41[0]) = 0;
  v42 = 0;
  LODWORD(v43[0]) = 0;
  v44 = 0;
  v14 = *a2;
  v15 = *(a2 + 24);
  do
  {
    v16 = v50;
    if (v50 == 8)
    {
      if (v13 >= *v49[0])
      {
        goto LABEL_123;
      }

      v17 = (v49[0] + v12 - 16);
      v16 = *(v49[0] + v12);
      if (v42 == 255)
      {
        if (v16 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v16 == 255)
      {
        goto LABEL_26;
      }

      v46[0] = v41;
    }

    else
    {
      if (v42 == 255)
      {
        if (v50 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v50 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
        v42 = -1;
        goto LABEL_32;
      }

      v46[0] = v41;
      v17 = v49;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v16, v46, v41, v17);
LABEL_32:
    v18 = v52;
    if (v52 == 8)
    {
      if (v13 >= *v51[0])
      {
LABEL_123:
        *a2 = v14;
        *(a2 + 24) = v15;
        __break(0xC471u);
        goto LABEL_129;
      }

      v19 = (v51[0] + v12 - 16);
      v18 = *(v51[0] + v12);
      if (v44 == 255)
      {
        if (v18 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v18 == 255)
      {
        goto LABEL_39;
      }

      v46[0] = v43;
    }

    else
    {
      if (v44 == 255)
      {
        if (v52 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v52 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v43);
        v44 = -1;
        goto LABEL_45;
      }

      v46[0] = v43;
      v19 = v51;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v18, v46, v43, v19);
LABEL_45:
    if (v42 > 4u)
    {
      if (v42 == 5)
      {
        if (v44 != 5)
        {
          goto LABEL_121;
        }

        v39[0] = (v43[0] & v41[0]);
        v40 = 5;
        v46[0] = (v43[0] & v41[0]);
      }

      else
      {
        if (v42 != 6)
        {
LABEL_124:
          *a2 = v14;
          *(a2 + 24) = v15;
          __break(0xC471u);
          JUMPOUT(0x225826B94);
        }

        if (v44 != 6)
        {
LABEL_121:
          *a2 = v14;
          *(a2 + 24) = v15;
          mpark::throw_bad_variant_access(v18);
        }

        LOBYTE(v39[0]) = v43[0] & LOBYTE(v41[0]);
        v40 = 6;
        LOBYTE(v46[0]) = v43[0] & LOBYTE(v41[0]);
      }
    }

    else
    {
      if (v42 == 3)
      {
        if (v44 != 3)
        {
          goto LABEL_121;
        }

        v20 = v43[0] & LODWORD(v41[0]);
        LODWORD(v39[0]) = v43[0] & LODWORD(v41[0]);
        v21 = 3;
      }

      else
      {
        if (v42 != 4)
        {
          goto LABEL_124;
        }

        if (v44 != 4)
        {
          goto LABEL_121;
        }

        v20 = v43[0] & LODWORD(v41[0]);
        LODWORD(v39[0]) = v43[0] & LODWORD(v41[0]);
        v21 = 4;
      }

      v40 = v21;
      LODWORD(v46[0]) = v20;
    }

    v47 = v42;
    v48 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v45, v39);
    v23 = v48;
    if (!v48)
    {
      if (v13 >= *v10)
      {
        *a2 = v14;
        *(a2 + 24) = v15;
        __break(0xC471u);
        JUMPOUT(0x225826BFCLL);
      }

      if (LOBYTE(v10[v12 / 4]) == 255)
      {
        if (v47 == 255)
        {
          goto LABEL_71;
        }
      }

      else if (v47 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v11);
        LOBYTE(v10[v12 / 4]) = -1;
        v24 = v48;
        if (v48 == 255)
        {
          goto LABEL_78;
        }

        goto LABEL_72;
      }

      v39[0] = v11;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v47, v39, v11, v46);
LABEL_71:
      v24 = v48;
      if (v48 == 255)
      {
        goto LABEL_78;
      }

      goto LABEL_72;
    }

    if (v48 != 1)
    {
      goto LABEL_121;
    }

    v14 = v46[0];
    if (v46[0])
    {
      atomic_fetch_add_explicit(v46[0], 2u, memory_order_relaxed);
      v15 = 1;
      v24 = v48;
      if (v48 == 255)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v15 = 1;
      v24 = v48;
      if (v48 == 255)
      {
        goto LABEL_78;
      }
    }

LABEL_72:
    if (v24)
    {
      v25 = v46[0];
      v46[0] = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v22);
      }
    }

    else if (v47 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v46);
    }

LABEL_78:
    if (v23)
    {
      *a2 = v14;
      *(a2 + 24) = v15;
      if (v44 == 255)
      {
        goto LABEL_105;
      }

      goto LABEL_104;
    }

    ++v13;
    v11 += 24;
    v12 += 24;
  }

  while (v9 != v13);
  v32 = *v10;
  v33 = 24 * v32;
  v34 = WTF::fastMalloc((24 * v32 + 8));
  v35 = v34;
  *v34 = v32;
  if (v32)
  {
    v36 = (v34 + 6);
    v37 = (v10 + 6);
    do
    {
      *(v36 - 16) = 0;
      *v36 = -1;
      v38 = *v37;
      if (v38 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v38, v46, v36 - 2, v37 - 2);
        *v36 = *v37;
      }

      v36 += 3;
      v37 += 3;
      v33 -= 24;
    }

    while (v33);
  }

  v47 = 8;
  v46[0] = 0;
  *a2 = v35;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v46);
  if (v44 != 255)
  {
LABEL_104:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v43);
  }

LABEL_105:
  v44 = -1;
  if (v42 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
  }

  v29 = *v10;
  if (v29)
  {
    v30 = 24 * v29;
    v31 = v10 + 6;
    do
    {
      v22 = (v31 - 16);
      if (*v31 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v22);
      }

      *v31 = -1;
      v31 += 24;
      v30 -= 24;
    }

    while (v30);
  }

  WTF::fastFree(v10, v22);
  if (v52 != 255)
  {
LABEL_99:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v51);
  }

LABEL_100:
  v52 = -1;
  if (v50 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v49);
  }
}

void WGSL::constantMinus(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v125 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (!*a2)
  {
    goto LABEL_292;
  }

  if (*v3 != 1)
  {
    if (*v3)
    {
      v22 = *(v3 + 24);
      if (v22 == 9)
      {
        if (*(v3 + 48) == 9 && *(a1 + 48) == 2)
        {
          v23 = *(v3 + 8);
          v24 = *(v3 + 12);
          v25 = (v23 | (v24 << 32));
          v26 = v24 * v23;
          if (!(v24 * v23))
          {
            v28 = 0;
            v51 = 0;
            v121[0] = (v23 | (v24 << 32));
            goto LABEL_222;
          }

          v107 = (v23 | (v24 << 32));
          v27 = *a1;
          v28 = WTF::fastMalloc((24 * v26 + 8));
          *v28 = v26;
          v108 = v26;
          v109 = v28 + 2;
          bzero(v28 + 2, 24 * ((24 * v26 - 24) / 0x18) + 24);
          v29 = 0;
          while (1)
          {
            v31 = *(v3 + 16);
            if (*v31 <= v29)
            {
              __break(0xC471u);
              goto LABEL_305;
            }

            v32 = &v31[6 * v29];
            LOBYTE(v121[0]) = 0;
            v122 = -1;
            v33 = *(v32 + 24);
            if (v33 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v33, v117, v121, v32 + 1);
              v122 = *(v32 + 24);
            }

            v34 = *(v3 + 40);
            if (*v34 <= v29)
            {
              __break(0xC471u);
              JUMPOUT(0x225827EF8);
            }

            v35 = &v34[6 * v29];
            LOBYTE(v123[0]) = 0;
            v124 = -1;
            v36 = *(v35 + 24);
            if (v36 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v36, v117, v123, v35 + 1);
              v124 = *(v35 + 24);
            }

            v37 = WTF::fastMalloc(0x38);
            *v37 = 2;
            *(v37 + 8) = 0;
            *(v37 + 24) = -1;
            if (v122 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v122, v117, v37 + 1, v121);
              *(v37 + 24) = v122;
            }

            *(v37 + 32) = 0;
            *(v37 + 48) = -1;
            if (v124 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v124, v117, v37 + 4, v123);
              *(v37 + 48) = v124;
            }

            v114[0] = v37;
            WGSL::constantMinus(v117, v27, v114);
            v39 = *v37;
            if (v39)
            {
              v40 = 24 * v39;
              v41 = v37 + 6;
              do
              {
                v38 = v41 - 16;
                if (*v41 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v111, v38);
                }

                *v41 = -1;
                v41 += 24;
                v40 -= 24;
              }

              while (v40);
            }

            a1 = WTF::fastFree(v37, v38);
            if (v124 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v111, v123);
            }

            v124 = -1;
            if (v122 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v111, v121);
            }

            v43 = LOBYTE(v119[0]);
            if (LOBYTE(v119[0]))
            {
              if (LOBYTE(v119[0]) != 1)
              {
                break;
              }

              v44 = v117[0];
              if (v117[0])
              {
                atomic_fetch_add_explicit(v117[0], 2u, memory_order_relaxed);
              }

              *a3 = v44;
              *(a3 + 24) = 1;
            }

            else
            {
              if (*v28 <= v29)
              {
                __break(0xC471u);
                JUMPOUT(0x225827F38);
              }

              v45 = &v109[6 * v29];
              if (*(v45 + 16) == 255)
              {
                if (v118 == 255)
                {
                  goto LABEL_100;
                }
              }

              else if (v118 == 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v121, &v109[6 * v29]);
                LOBYTE(v109[6 * v29 + 4]) = -1;
                goto LABEL_100;
              }

              v121[0] = &v109[6 * v29];
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v118, v121, v45, v117);
            }

LABEL_100:
            if (LOBYTE(v119[0]) != 255)
            {
              if (LOBYTE(v119[0]))
              {
                v46 = v117[0];
                v117[0] = 0;
                if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v46, v42);
                }
              }

              else if (v118 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v121, v117);
                if (v43)
                {
                  goto LABEL_223;
                }

                goto LABEL_69;
              }
            }

            if (v43)
            {
              goto LABEL_223;
            }

LABEL_69:
            v29 = (v29 + 1);
            v30 = *v28;
            if (v30 <= v29)
            {
              v25 = v107;
              v121[0] = v107;
              v81 = 24 * v30;
              v51 = WTF::fastMalloc((24 * v30 + 8));
              *v51 = v30;
              if (v30)
              {
                v82 = 0;
                do
                {
                  LOBYTE(v51[v82 / 4 + 2]) = 0;
                  v83 = &v28[v82 / 4];
                  LOBYTE(v51[v82 / 4 + 6]) = -1;
                  v84 = LOBYTE(v28[v82 / 4 + 6]);
                  if (v84 != 255)
                  {
                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v84, v117, &v51[v82 / 4 + 2], v83 + 1);
                    LOBYTE(v51[v82 / 4 + 6]) = *(v83 + 24);
                  }

                  v82 += 24;
                }

                while (v81 != v82);
              }

              v26 = v108;
LABEL_222:
              v122 = 9;
              v121[1] = 0;
              *a3 = v25;
              *(a3 + 8) = v51;
              *(a3 + 16) = 9;
              *(a3 + 24) = 0;
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v117, v121);
              if (!v26)
              {
                return;
              }

LABEL_223:
              v85 = *v28;
              if (v85)
              {
                v86 = 24 * v85;
                v87 = v28 + 6;
                do
                {
                  v42 = (v87 - 16);
                  if (*v87 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v121, v42);
                  }

                  *v87 = -1;
                  v87 += 24;
                  v86 -= 24;
                }

                while (v86);
              }

              WTF::fastFree(v28, v42);
              return;
            }
          }
        }

LABEL_287:
        mpark::throw_bad_variant_access(a1);
      }

      v47 = (v3 + 8);
      LOBYTE(v121[0]) = 0;
      v122 = -1;
      v48 = 255;
      if (v22 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v22, v117, v121, (v3 + 8));
        v48 = *(v3 + 24);
        v122 = *(v3 + 24);
      }

      v49 = (v3 + 32);
      LOBYTE(v123[0]) = 0;
      v124 = -1;
      v50 = *(v3 + 48);
      if (v50 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v50, v117, v123, (v3 + 32));
        v124 = *(v3 + 48);
        v48 = v122;
      }

      LOBYTE(v117[0]) = 0;
      v118 = -1;
      if (v48 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v48, v114, v117, v121);
        v118 = v122;
        if (v122 != 255)
        {
          if (v122 == 8)
          {
LABEL_129:
            if (!v117[0])
            {
LABEL_229:
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v114, v117);
LABEL_230:
              v88 = *(v3 + 24);
              if (v88 > 2)
              {
                if (v88 == 5)
                {
                  if (*(v3 + 48) != 5)
                  {
                    goto LABEL_287;
                  }

                  v117[0] = (*v47 - *v49);
                  v92 = 5;
                  v118 = 5;
                  v93 = a3;
                  *a3 = v117[0];
                }

                else
                {
                  if (v88 == 4)
                  {
                    if (*(v3 + 48) != 4)
                    {
                      goto LABEL_287;
                    }

                    v91 = *v47 - *v49;
                    LODWORD(v117[0]) = v91;
                    v92 = 4;
                  }

                  else
                  {
                    if (v88 != 3)
                    {
                      goto LABEL_304;
                    }

                    if (*(v3 + 48) != 3)
                    {
                      goto LABEL_287;
                    }

                    v91 = *v47 - *v49;
                    LODWORD(v117[0]) = v91;
                    v92 = 3;
                  }

                  v118 = v92;
                  v93 = a3;
                  *a3 = v91;
                }

                *(v93 + 16) = v92;
                *(v93 + 24) = 0;
              }

              else
              {
                if (*(v3 + 24))
                {
                  if (v88 == 1)
                  {
                    v89 = *(v3 + 48);
                    if (v89 != 1)
                    {
                      goto LABEL_287;
                    }

                    *v117 = *v47 - *v49;
                    v118 = 1;
                    v90 = a3;
                    *a3 = v117[0];
LABEL_246:
                    *(v90 + 16) = v89;
                    *(v90 + 24) = 0;
                    goto LABEL_252;
                  }

                  if (v88 == 2)
                  {
                    v89 = *(v3 + 48);
                    if (v89 != 2)
                    {
                      goto LABEL_287;
                    }

                    *v117 = *v47 - *v49;
                    v118 = 2;
                    v90 = a3;
                    *a3 = v117[0];
                    goto LABEL_246;
                  }

LABEL_304:
                  __break(0xC471u);
LABEL_305:
                  JUMPOUT(0x225827ED8);
                }

                if (*(v3 + 48))
                {
                  goto LABEL_287;
                }

                *v117 = *v47 - *v49;
                v118 = 0;
                *a3 = v117[0];
                *(a3 + 16) = 0;
                *(a3 + 24) = 0;
              }

LABEL_252:
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v114, v117);
              if (v124 == 255)
              {
                goto LABEL_254;
              }

              goto LABEL_253;
            }

            v56 = *v117[0];
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v114, v117);
            if (!v56)
            {
              goto LABEL_230;
            }

            v57 = WTF::fastMalloc((24 * v56 + 8));
            *v57 = v56;
            v58 = v57 + 2;
            v59 = 24;
            bzero(v57 + 2, 24 * ((24 * v56 - 24) / 0x18uLL) + 24);
            v60 = 0;
            LODWORD(v117[0]) = 0;
            v118 = 0;
            LODWORD(v119[0]) = 0;
            v120 = 0;
            v61 = *a3;
            while (1)
            {
              v62 = v122;
              if (v122 == 8)
              {
                if (v60 >= *v121[0])
                {
                  goto LABEL_294;
                }

                v63 = (v121[0] + v59 - 16);
                v62 = *(v121[0] + v59);
                if (v118 == 255)
                {
                  if (v62 == 255)
                  {
                    goto LABEL_145;
                  }
                }

                else if (v62 == 255)
                {
                  goto LABEL_139;
                }

                v114[0] = v117;
              }

              else
              {
                if (v118 == 255)
                {
                  if (v122 == 255)
                  {
                    goto LABEL_145;
                  }
                }

                else if (v122 == 255)
                {
LABEL_139:
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v114, v117);
                  v118 = -1;
                  goto LABEL_145;
                }

                v114[0] = v117;
                v63 = v121;
              }

              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v62, v114, v117, v63);
LABEL_145:
              v64 = v124;
              if (v124 == 8)
              {
                if (v60 >= *v123[0])
                {
LABEL_294:
                  *a3 = v61;
                  __break(0xC471u);
                  JUMPOUT(0x225827F60);
                }

                v65 = (v123[0] + v59 - 16);
                v64 = *(v123[0] + v59);
                if (v120 == 255)
                {
                  if (v64 == 255)
                  {
                    goto LABEL_158;
                  }
                }

                else if (v64 == 255)
                {
                  goto LABEL_152;
                }

                v114[0] = v119;
              }

              else
              {
                if (v120 == 255)
                {
                  if (v124 == 255)
                  {
                    goto LABEL_158;
                  }
                }

                else if (v124 == 255)
                {
LABEL_152:
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v114, v119);
                  v120 = -1;
                  goto LABEL_158;
                }

                v114[0] = v119;
                v65 = v123;
              }

              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v64, v114, v119, v65);
LABEL_158:
              if (v118 > 2u)
              {
                switch(v118)
                {
                  case 3u:
                    if (v120 != 3)
                    {
                      goto LABEL_288;
                    }

                    v68 = LODWORD(v117[0]) - LODWORD(v119[0]);
                    LODWORD(v111[0]) = LODWORD(v117[0]) - LODWORD(v119[0]);
                    v69 = 3;
LABEL_173:
                    v112 = v69;
                    LODWORD(v114[0]) = v68;
                    break;
                  case 4u:
                    if (v120 != 4)
                    {
                      goto LABEL_288;
                    }

                    v68 = LODWORD(v117[0]) - LODWORD(v119[0]);
                    LODWORD(v111[0]) = LODWORD(v117[0]) - LODWORD(v119[0]);
                    v69 = 4;
                    goto LABEL_173;
                  case 5u:
                    if (v120 != 5)
                    {
LABEL_288:
                      *a3 = v61;
                      mpark::throw_bad_variant_access(v64);
                    }

                    v111[0] = v117[0] - v119[0];
                    v69 = 5;
                    v112 = 5;
                    v114[0] = (v117[0] - v119[0]);
                    break;
                  default:
LABEL_298:
                    *a3 = v61;
                    __break(0xC471u);
                    JUMPOUT(0x225828000);
                }

                v115 = v69;
                v116 = 0;
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v113, v111);
                v67 = v116;
                if (v116)
                {
                  goto LABEL_185;
                }

                goto LABEL_177;
              }

              if (v118)
              {
                if (v118 == 1)
                {
                  if (v120 != 1)
                  {
                    goto LABEL_288;
                  }

                  *v111 = *v117 - *v119;
                  v112 = 1;
                  *v114 = *v117 - *v119;
                  v115 = 1;
                  v116 = 0;
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v113, v111);
                  v67 = v116;
                  if (v116)
                  {
                    goto LABEL_185;
                  }
                }

                else
                {
                  if (v118 != 2)
                  {
                    goto LABEL_298;
                  }

                  if (v120 != 2)
                  {
                    goto LABEL_288;
                  }

                  *v111 = *v117 - *v119;
                  v112 = 2;
                  *v114 = *v117 - *v119;
                  v115 = 2;
                  v116 = 0;
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v113, v111);
                  v67 = v116;
                  if (v116)
                  {
LABEL_185:
                    if (v67 != 1)
                    {
                      goto LABEL_288;
                    }

                    v61 = v114[0];
                    if (v114[0])
                    {
                      atomic_fetch_add_explicit(v114[0], 2u, memory_order_relaxed);
                    }

                    *(a3 + 24) = 1;
                    goto LABEL_191;
                  }
                }
              }

              else
              {
                if (v120)
                {
                  goto LABEL_288;
                }

                *v111 = *v117 - *v119;
                v112 = 0;
                *v114 = *v117 - *v119;
                v115 = 0;
                v116 = 0;
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v113, v111);
                v67 = v116;
                if (v116)
                {
                  goto LABEL_185;
                }
              }

LABEL_177:
              if (v60 >= *v57)
              {
                *a3 = v61;
                __break(0xC471u);
                JUMPOUT(0x225827FD8);
              }

              if (LOBYTE(v57[v59 / 4]) == 255)
              {
                if (v115 != 255)
                {
LABEL_190:
                  v111[0] = v58;
                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v115, v111, v58, v114);
                }
              }

              else
              {
                if (v115 != 255)
                {
                  goto LABEL_190;
                }

                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v111, v58);
                LOBYTE(v57[v59 / 4]) = -1;
              }

LABEL_191:
              if (v116 != 255)
              {
                if (v116)
                {
                  v70 = v114[0];
                  v114[0] = 0;
                  if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v70, v66);
                  }
                }

                else if (v115 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v111, v114);
                }
              }

              if (v67)
              {
                *a3 = v61;
                goto LABEL_260;
              }

              ++v60;
              v58 += 24;
              v59 += 24;
              if (v56 == v60)
              {
                v71 = *v57;
                v72 = 24 * v71;
                v73 = WTF::fastMalloc((24 * v71 + 8));
                v74 = v73;
                *v73 = v71;
                if (v71)
                {
                  v75 = (v73 + 6);
                  v76 = (v57 + 6);
                  do
                  {
                    *(v75 - 16) = 0;
                    *v75 = -1;
                    v77 = *v76;
                    if (v77 != 255)
                    {
                      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v77, v114, v75 - 2, v76 - 2);
                      *v75 = *v76;
                    }

                    v75 += 3;
                    v76 += 3;
                    v72 -= 24;
                  }

                  while (v72);
                }

                v115 = 8;
                v114[0] = 0;
                *a3 = v74;
                *(a3 + 16) = 8;
                *(a3 + 24) = 0;
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v111, v114);
LABEL_260:
                if (v120 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v114, v119);
                }

                v120 = -1;
                if (v118 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v114, v117);
                }

                v94 = *v57;
                if (v94)
                {
                  v95 = 24 * v94;
                  v96 = v57 + 6;
                  do
                  {
                    v66 = (v96 - 16);
                    if (*v96 != 255)
                    {
                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v117, v66);
                    }

                    *v96 = -1;
                    v96 += 24;
                    v95 -= 24;
                  }

                  while (v95);
                }

                WTF::fastFree(v57, v66);
                if (v124 == 255)
                {
LABEL_254:
                  v124 = -1;
                  if (v122 == 255)
                  {
                    return;
                  }

                  v79 = v117;
                  v80 = v121;
                  goto LABEL_256;
                }

LABEL_253:
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v117, v123);
                goto LABEL_254;
              }
            }
          }

          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v114, v117);
        }
      }

      LOBYTE(v117[0]) = 0;
      v118 = -1;
      a1 = v124;
      if (v124 == 255)
      {
        goto LABEL_230;
      }

      a1 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v124, v114, v117, v123);
      v118 = v124;
      if (v124 != 8)
      {
        if (v124 == 255)
        {
          goto LABEL_230;
        }

        goto LABEL_229;
      }

      goto LABEL_129;
    }

LABEL_292:
    __break(0xC471u);
    JUMPOUT(0x225827F18);
  }

  v4 = (v3 + 8);
  LOBYTE(v114[0]) = 0;
  v115 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v121, v114, (v3 + 8)), v115 = *(v3 + 24), LOBYTE(v121[0]) = 0, v122 = -1, v115 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v115, v117, v121, v114), v122 = v115, v115 == 255))
  {
LABEL_122:
    v52 = *(v3 + 24);
    if (v52 <= 2)
    {
      if (!*(v3 + 24))
      {
        *v121 = -*v4;
        v122 = 0;
        *a3 = v121[0];
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        goto LABEL_214;
      }

      if (v52 == 1)
      {
        *v121 = -*v4;
        v122 = 1;
        v53 = a3;
        *a3 = v121[0];
LABEL_209:
        *(v53 + 16) = v52;
        *(v53 + 24) = 0;
        goto LABEL_214;
      }

      if (v52 == 2)
      {
        *v121 = -*v4;
        v122 = 2;
        v53 = a3;
        *a3 = v121[0];
        goto LABEL_209;
      }

LABEL_299:
      __break(0xC471u);
      JUMPOUT(0x225828020);
    }

    if (v52 == 5)
    {
      v121[0] = -*v4;
      v55 = 5;
      v122 = 5;
      v78 = a3;
      *a3 = v121[0];
    }

    else
    {
      if (v52 == 4)
      {
        v54 = -*v4;
        LODWORD(v121[0]) = v54;
        v55 = 4;
      }

      else
      {
        if (v52 != 3)
        {
          goto LABEL_299;
        }

        v54 = -*v4;
        LODWORD(v121[0]) = v54;
        v55 = 3;
      }

      v122 = v55;
      v78 = a3;
      *a3 = v54;
    }

    *(v78 + 16) = v55;
    *(v78 + 24) = 0;
LABEL_214:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v117, v121);
    if (v115 == 255)
    {
      return;
    }

    goto LABEL_215;
  }

  if (v115 != 8 || !v121[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v117, v121);
    goto LABEL_122;
  }

  v6 = *v121[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v117, v121);
  if (!v6)
  {
    goto LABEL_122;
  }

  v7 = WTF::fastMalloc((24 * v6 + 8));
  *v7 = v6;
  v8 = (v7 + 1);
  v9 = 3;
  bzero(v7 + 1, 24 * ((24 * v6 - 24) / 0x18uLL) + 24);
  v10 = 0;
  LODWORD(v111[0]) = 0;
  v112 = 0;
  v11 = *(a3 + 24);
  v12 = *a3;
  do
  {
    v13 = v115;
    if (v115 == 8)
    {
      if (v10 >= *v114[0])
      {
        *a3 = v12;
        *(a3 + 24) = v11;
        __break(0xC471u);
        JUMPOUT(0x225827FB0);
      }

      v14 = (v114[0] + v9 * 8 - 16);
      v13 = *(v114[0] + v9 * 8);
      if (v112 == 255)
      {
        if (v13 == 255)
        {
          goto LABEL_23;
        }
      }

      else if (v13 == 255)
      {
        goto LABEL_295;
      }

      v121[0] = v111;
    }

    else
    {
      if (v112 == 255)
      {
        if (v115 == 255)
        {
          *a3 = v12;
          *(a3 + 24) = v11;
          goto LABEL_303;
        }
      }

      else if (v115 == 255)
      {
LABEL_295:
        *a3 = v12;
        *(a3 + 24) = v11;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v121, v111);
        v112 = -1;
        goto LABEL_303;
      }

      v121[0] = v111;
      v14 = v114;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v13, v121, v111, v14);
LABEL_23:
    if (v112 > 2u)
    {
      switch(v112)
      {
        case 3u:
          v15 = -LODWORD(v111[0]);
          LODWORD(v117[0]) = -LODWORD(v111[0]);
          v16 = 3;
          goto LABEL_32;
        case 4u:
          v15 = -LODWORD(v111[0]);
          LODWORD(v117[0]) = -LODWORD(v111[0]);
          v16 = 4;
LABEL_32:
          v118 = v16;
          LODWORD(v121[0]) = v15;
LABEL_37:
          v122 = v16;
          goto LABEL_38;
        case 5u:
          v117[0] = -v111[0];
          v16 = 5;
          v118 = 5;
          v121[0] = -v111[0];
          goto LABEL_37;
      }

LABEL_301:
      *a3 = v12;
      *(a3 + 24) = v11;
LABEL_303:
      __break(0xC471u);
      JUMPOUT(0x225828088);
    }

    if (v112)
    {
      if (v112 == 1)
      {
        *v117 = -*v111;
        v118 = 1;
        *v121 = -*v111;
        v122 = 1;
      }

      else
      {
        if (v112 != 2)
        {
          goto LABEL_301;
        }

        *v117 = -*v111;
        v118 = 2;
        *v121 = -*v111;
        v122 = 2;
      }
    }

    else
    {
      *v117 = -*v111;
      v118 = 0;
      *v121 = -*v111;
      v122 = 0;
    }

LABEL_38:
    LOBYTE(v123[0]) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v113, v117);
    v19 = LOBYTE(v123[0]);
    if (!LOBYTE(v123[0]))
    {
      if (v10 >= *v7)
      {
        *a3 = v12;
        *(a3 + 24) = v11;
        __break(0xC471u);
        JUMPOUT(0x22582804CLL);
      }

      if (LOBYTE(v7[v9]) == 255)
      {
        if (v122 == 255)
        {
          goto LABEL_50;
        }
      }

      else if (v122 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v117, v8);
        LOBYTE(v7[v9]) = -1;
        v20 = LOBYTE(v123[0]);
        if (LOBYTE(v123[0]) == 255)
        {
          goto LABEL_57;
        }

        goto LABEL_51;
      }

      v117[0] = v8;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v122, v117, v8, v121);
LABEL_50:
      v20 = LOBYTE(v123[0]);
      if (LOBYTE(v123[0]) == 255)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

    if (LOBYTE(v123[0]) != 1)
    {
      *a3 = v12;
      *(a3 + 24) = v11;
      mpark::throw_bad_variant_access(v17);
    }

    v12 = v121[0];
    if (v121[0])
    {
      atomic_fetch_add_explicit(v121[0], 2u, memory_order_relaxed);
      v11 = 1;
      v20 = LOBYTE(v123[0]);
      if (LOBYTE(v123[0]) == 255)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v11 = 1;
      v20 = LOBYTE(v123[0]);
      if (LOBYTE(v123[0]) == 255)
      {
        goto LABEL_57;
      }
    }

LABEL_51:
    if (v20)
    {
      v21 = v121[0];
      v121[0] = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v18);
      }
    }

    else if (v122 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v117, v121);
    }

LABEL_57:
    if (v19)
    {
      *a3 = v12;
      *(a3 + 24) = v11;
      goto LABEL_278;
    }

    ++v10;
    v8 = (v8 + 24);
    v9 += 3;
  }

  while (v6 != v10);
  v97 = *v7;
  v98 = 24 * v97;
  v99 = WTF::fastMalloc((24 * v97 + 8));
  v100 = v99;
  *v99 = v97;
  if (v97)
  {
    v101 = (v99 + 6);
    v102 = v7 + 3;
    do
    {
      *(v101 - 16) = 0;
      *v101 = -1;
      v103 = *v102;
      if (v103 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v103, v121, v101 - 2, v102 - 2);
        *v101 = *v102;
      }

      v101 += 3;
      v102 += 3;
      v98 -= 24;
    }

    while (v98);
  }

  v122 = 8;
  v121[0] = 0;
  *a3 = v100;
  *(a3 + 16) = 8;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v117, v121);
LABEL_278:
  if (v112 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v121, v111);
  }

  v104 = *v7;
  if (v104)
  {
    v105 = 24 * v104;
    v106 = v7 + 3;
    do
    {
      v18 = (v106 - 16);
      if (*v106 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v121, v18);
      }

      *v106 = -1;
      v106 += 24;
      v105 -= 24;
    }

    while (v105);
  }

  WTF::fastFree(v7, v18);
  if (v115 != 255)
  {
LABEL_215:
    v79 = v121;
    v80 = v114;
LABEL_256:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v79, v80);
  }
}

void WGSL::constantAdd(uint64_t a1@<X0>, int **a2@<X1>, uint64_t a3@<X8>)
{
  v93 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = **a2;
  if (!v5)
  {
    __break(0xC471u);
    JUMPOUT(0x225828EA8);
  }

  v6 = *(v4 + 24);
  if (v6 != 9)
  {
    if (v5 == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x225828EE8);
    }

    v36 = (v4 + 2);
    LOBYTE(v89[0]) = 0;
    v90 = -1;
    v37 = 255;
    if (v6 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v85, v89, v4 + 1);
      v37 = *(v4 + 24);
      v90 = *(v4 + 24);
    }

    v38 = (v4 + 8);
    LOBYTE(v91[0]) = 0;
    v92 = -1;
    v39 = *(v4 + 48);
    if (v39 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v39, v85, v91, v4 + 4);
      v92 = *(v4 + 48);
      v37 = v90;
    }

    LOBYTE(v85[0]) = 0;
    v86 = -1;
    if (v37 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v37, v82, v85, v89);
      v86 = v90;
      if (v90 != 255)
      {
        if (v90 == 8)
        {
LABEL_66:
          if (!v85[0])
          {
LABEL_142:
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, v85);
LABEL_143:
            v56 = *(v4 + 24);
            if (v56 <= 2)
            {
              if (!*(v4 + 24))
              {
                if (*(v4 + 48))
                {
                  goto LABEL_198;
                }

                *v85 = *v36 + *v38;
                v86 = 0;
                *a3 = v85[0];
                *(a3 + 16) = 0;
                goto LABEL_164;
              }

              if (v56 == 1)
              {
                if (*(v4 + 48) != 1)
                {
                  goto LABEL_198;
                }

                *v85 = *v36 + *v38;
                v86 = 1;
                *a3 = v85[0];
                *(a3 + 16) = 1;
                goto LABEL_164;
              }

              if (v56 == 2)
              {
                if (*(v4 + 48) != 2)
                {
                  goto LABEL_198;
                }

                *v85 = *v36 + *v38;
                v86 = 2;
                *a3 = v85[0];
                *(a3 + 16) = 2;
LABEL_164:
                *(a3 + 24) = 0;
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, v85);
                if (v92 == 255)
                {
                  goto LABEL_166;
                }

                goto LABEL_165;
              }

LABEL_208:
              __break(0xC471u);
LABEL_209:
              JUMPOUT(0x225828DFCLL);
            }

            if (v56 == 5)
            {
              if (*(v4 + 48) != 5)
              {
                goto LABEL_198;
              }

              v85[0] = (*v38 + *v36);
              v58 = 5;
              v86 = 5;
              *a3 = v85[0];
            }

            else
            {
              if (v56 == 4)
              {
                if (*(v4 + 48) != 4)
                {
                  goto LABEL_198;
                }

                v57 = *v38 + *v36;
                LODWORD(v85[0]) = v57;
                v58 = 4;
              }

              else
              {
                if (v56 != 3)
                {
                  goto LABEL_208;
                }

                if (*(v4 + 48) != 3)
                {
                  goto LABEL_198;
                }

                v57 = *v38 + *v36;
                LODWORD(v85[0]) = v57;
                v58 = 3;
              }

              v86 = v58;
              *a3 = v57;
            }

            *(a3 + 16) = v58;
            goto LABEL_164;
          }

          v40 = *v85[0];
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, v85);
          if (!v40)
          {
            goto LABEL_143;
          }

          v41 = WTF::fastMalloc((24 * v40 + 8));
          *v41 = v40;
          v42 = v41 + 2;
          v43 = 24;
          bzero(v41 + 2, 24 * ((24 * v40 - 24) / 0x18uLL) + 24);
          v44 = 0;
          LODWORD(v85[0]) = 0;
          v86 = 0;
          LODWORD(v87[0]) = 0;
          v88 = 0;
          v45 = *a3;
          v75 = a3;
          v46 = *(a3 + 24);
          while (1)
          {
            v47 = v90;
            if (v90 == 8)
            {
              if (v44 >= *v89[0])
              {
                goto LABEL_202;
              }

              v48 = &v89[0][v43 - 16];
              v47 = v89[0][v43];
              if (v86 == 255)
              {
                if (v47 == 255)
                {
                  goto LABEL_82;
                }
              }

              else if (v47 == 255)
              {
                goto LABEL_76;
              }

              v82[0] = v85;
            }

            else
            {
              if (v86 == 255)
              {
                if (v90 == 255)
                {
                  goto LABEL_82;
                }
              }

              else if (v90 == 255)
              {
LABEL_76:
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, v85);
                v86 = -1;
                goto LABEL_82;
              }

              v82[0] = v85;
              v48 = v89;
            }

            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v47, v82, v85, v48);
LABEL_82:
            a1 = v92;
            if (v92 == 8)
            {
              if (v44 >= *v91[0])
              {
LABEL_202:
                *v75 = v45;
                *(v75 + 24) = v46;
                __break(0xC471u);
                JUMPOUT(0x225828E88);
              }

              v49 = (v91[0] + v43 - 16);
              a1 = *(v91[0] + v43);
              if (v88 == 255)
              {
                if (a1 == 255)
                {
                  goto LABEL_95;
                }
              }

              else if (a1 == 255)
              {
                goto LABEL_89;
              }

              v82[0] = v87;
            }

            else
            {
              if (v88 == 255)
              {
                if (v92 == 255)
                {
                  goto LABEL_95;
                }
              }

              else if (v92 == 255)
              {
LABEL_89:
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, v87);
                v88 = -1;
                goto LABEL_95;
              }

              v82[0] = v87;
              v49 = v91;
            }

            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(a1, v82, v87, v49);
LABEL_95:
            if (v86 > 2u)
            {
              switch(v86)
              {
                case 3u:
                  if (v88 != 3)
                  {
                    goto LABEL_197;
                  }

                  v52 = LODWORD(v87[0]) + LODWORD(v85[0]);
                  LODWORD(v79[0]) = LODWORD(v87[0]) + LODWORD(v85[0]);
                  v53 = 3;
LABEL_114:
                  v80 = v53;
                  LODWORD(v82[0]) = v52;
                  break;
                case 4u:
                  if (v88 != 4)
                  {
                    goto LABEL_197;
                  }

                  v52 = LODWORD(v87[0]) + LODWORD(v85[0]);
                  LODWORD(v79[0]) = LODWORD(v87[0]) + LODWORD(v85[0]);
                  v53 = 4;
                  goto LABEL_114;
                case 5u:
                  if (v88 != 5)
                  {
LABEL_197:
                    *v75 = v45;
                    *(v75 + 24) = v46;
                    goto LABEL_198;
                  }

                  v79[0] = v85[0] + v87[0];
                  v53 = 5;
                  v80 = 5;
                  v82[0] = (v85[0] + v87[0]);
                  break;
                default:
LABEL_207:
                  *v75 = v45;
                  *(v75 + 24) = v46;
                  __break(0xC471u);
                  JUMPOUT(0x225828F40);
              }

              v83 = v53;
              v84 = 0;
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v81, v79);
              v51 = v84;
              if (!v84)
              {
                goto LABEL_107;
              }

              goto LABEL_123;
            }

            if (v86)
            {
              if (v86 == 1)
              {
                if (v88 != 1)
                {
                  goto LABEL_197;
                }

                *v79 = *v85 + *v87;
                v80 = v88;
                *v82 = *v85 + *v87;
                v83 = v88;
                v84 = 0;
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v81, v79);
                v51 = v84;
                if (!v84)
                {
                  goto LABEL_107;
                }
              }

              else
              {
                if (v86 != 2)
                {
                  goto LABEL_207;
                }

                if (v88 != 2)
                {
                  goto LABEL_197;
                }

                *v79 = *v85 + *v87;
                v80 = 2;
                *v82 = *v85 + *v87;
                v83 = 2;
                v84 = 0;
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v81, v79);
                v51 = v84;
                if (!v84)
                {
LABEL_107:
                  if (v44 >= *v41)
                  {
                    *v75 = v45;
                    *(v75 + 24) = v46;
                    __break(0xC471u);
                    JUMPOUT(0x225828F14);
                  }

                  if (LOBYTE(v41[v43 / 4]) == 255)
                  {
                    if (v83 != 255)
                    {
                      goto LABEL_128;
                    }
                  }

                  else
                  {
                    if (v83 == 255)
                    {
                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v79, v42);
                      LOBYTE(v41[v43 / 4]) = -1;
                      v54 = v84;
                      if (v84 != 255)
                      {
                        goto LABEL_130;
                      }

                      goto LABEL_136;
                    }

LABEL_128:
                    v79[0] = v42;
                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v83, v79, v42, v82);
                  }

                  v54 = v84;
                  if (v84 != 255)
                  {
                    goto LABEL_130;
                  }

                  goto LABEL_136;
                }
              }
            }

            else
            {
              if (v88)
              {
                goto LABEL_197;
              }

              *v79 = *v85 + *v87;
              v80 = 0;
              *v82 = *v85 + *v87;
              v83 = 0;
              v84 = 0;
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v81, v79);
              v51 = v84;
              if (!v84)
              {
                goto LABEL_107;
              }
            }

LABEL_123:
            if (v51 != 1)
            {
              goto LABEL_197;
            }

            v45 = v82[0];
            if (v82[0])
            {
              atomic_fetch_add_explicit(v82[0], 2u, memory_order_relaxed);
              v46 = 1;
              v54 = v84;
              if (v84 != 255)
              {
                goto LABEL_130;
              }
            }

            else
            {
              v46 = 1;
              v54 = v84;
              if (v84 != 255)
              {
LABEL_130:
                if (v54)
                {
                  v55 = v82[0];
                  v82[0] = 0;
                  if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v55, v50);
                  }
                }

                else if (v83 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v79, v82);
                }
              }
            }

LABEL_136:
            if (v51)
            {
              *v75 = v45;
              *(v75 + 24) = v46;
              goto LABEL_185;
            }

            ++v44;
            v42 += 24;
            v43 += 24;
            if (v40 == v44)
            {
              v62 = *v41;
              v63 = 24 * v62;
              v64 = WTF::fastMalloc((24 * v62 + 8));
              v65 = v64;
              *v64 = v62;
              if (v62)
              {
                v66 = (v64 + 6);
                v67 = (v41 + 6);
                do
                {
                  *(v66 - 16) = 0;
                  *v66 = -1;
                  v68 = *v67;
                  if (v68 != 255)
                  {
                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v68, v82, v66 - 2, v67 - 2);
                    *v66 = *v67;
                  }

                  v66 += 3;
                  v67 += 3;
                  v63 -= 24;
                }

                while (v63);
              }

              v83 = 8;
              v82[0] = 0;
              *v75 = v65;
              *(v75 + 16) = 8;
              *(v75 + 24) = 0;
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v79, v82);
LABEL_185:
              if (v88 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, v87);
              }

              v88 = -1;
              if (v86 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, v85);
              }

              v69 = *v41;
              if (v69)
              {
                v70 = 24 * v69;
                v71 = v41 + 6;
                do
                {
                  v50 = (v71 - 16);
                  if (*v71 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v85, v50);
                  }

                  *v71 = -1;
                  v71 += 24;
                  v70 -= 24;
                }

                while (v70);
              }

              WTF::fastFree(v41, v50);
              if (v92 == 255)
              {
LABEL_166:
                v92 = -1;
                if (v90 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v85, v89);
                }

                return;
              }

LABEL_165:
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v85, v91);
              goto LABEL_166;
            }
          }
        }

        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, v85);
      }
    }

    LOBYTE(v85[0]) = 0;
    v86 = -1;
    a1 = v92;
    if (v92 == 255)
    {
      goto LABEL_143;
    }

    a1 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v92, v82, v85, v91);
    v86 = v92;
    if (v92 != 8)
    {
      if (v92 == 255)
      {
        goto LABEL_143;
      }

      goto LABEL_142;
    }

    goto LABEL_66;
  }

  if (v5 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x225828EC8);
  }

  if (*(v4 + 48) != 9 || *(a1 + 48) != 2)
  {
LABEL_198:
    mpark::throw_bad_variant_access(a1);
  }

  v7 = v4[2];
  v8 = v4[3];
  v9 = (v7 | (v8 << 32));
  v10 = v8 * v7;
  if (v8 * v7)
  {
    v72 = (v7 | (v8 << 32));
    v78 = *a1;
    v11 = WTF::fastMalloc((24 * v10 + 8));
    *v11 = v10;
    v73 = v10;
    v76 = v11 + 2;
    bzero(v11 + 2, 24 * ((24 * v10 - 24) / 0x18) + 24);
    LODWORD(v12) = 0;
    v13 = 0;
    v77 = *(a3 + 24);
    v74 = a3;
    v14 = *a3;
    while (1)
    {
      v15 = *(v4 + 2);
      if (*v15 <= v12)
      {
        *v74 = v14;
        *(v74 + 24) = v77;
        __break(0xC471u);
        goto LABEL_209;
      }

      v16 = &v15[6 * v13];
      LOBYTE(v89[0]) = 0;
      v90 = -1;
      v17 = *(v16 + 24);
      if (v17 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v17, v85, v89, v16 + 1);
        v90 = *(v16 + 24);
      }

      v18 = *(v4 + 5);
      if (*v18 <= v12)
      {
        *v74 = v14;
        *(v74 + 24) = v77;
        __break(0xC471u);
        JUMPOUT(0x225828E2CLL);
      }

      v19 = &v18[6 * v13];
      LOBYTE(v91[0]) = 0;
      v92 = -1;
      v20 = *(v19 + 24);
      if (v20 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v20, v85, v91, v19 + 1);
        v92 = *(v19 + 24);
      }

      v21 = WTF::fastMalloc(0x38);
      *v21 = 2;
      *(v21 + 8) = 0;
      *(v21 + 24) = -1;
      if (v90 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v90, v85, v21 + 1, v89);
        *(v21 + 24) = v90;
      }

      *(v21 + 32) = 0;
      *(v21 + 48) = -1;
      if (v92 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v92, v85, v21 + 4, v91);
        *(v21 + 48) = v92;
      }

      v82[0] = v21;
      WGSL::constantAdd(v85, v78, v82);
      v23 = *v21;
      if (v23)
      {
        v24 = 24 * v23;
        v25 = v21 + 6;
        do
        {
          v22 = v25 - 16;
          if (*v25 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v79, v22);
          }

          *v25 = -1;
          v25 += 24;
          v24 -= 24;
        }

        while (v24);
      }

      v26 = WTF::fastFree(v21, v22);
      if (v92 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v79, v91);
      }

      v92 = -1;
      if (v90 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v79, v89);
      }

      v28 = LOBYTE(v87[0]);
      if (LOBYTE(v87[0]))
      {
        if (LOBYTE(v87[0]) != 1)
        {
          *v74 = v14;
          *(v74 + 24) = v77;
          mpark::throw_bad_variant_access(v26);
        }

        v14 = v85[0];
        if (v85[0])
        {
          atomic_fetch_add_explicit(v85[0], 2u, memory_order_relaxed);
        }

        v77 = 1;
        goto LABEL_38;
      }

      if (*v11 <= v12)
      {
        *v74 = v14;
        *(v74 + 24) = v77;
        __break(0xC471u);
        JUMPOUT(0x225828E5CLL);
      }

      v29 = &v76[6 * v13];
      if (*(v29 + 16) == 255)
      {
        if (v86 != 255)
        {
LABEL_37:
          v89[0] = &v76[6 * v13];
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v86, v89, v29, v85);
        }
      }

      else
      {
        if (v86 != 255)
        {
          goto LABEL_37;
        }

        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v89, &v76[6 * v13]);
        LOBYTE(v76[6 * v13 + 4]) = -1;
      }

LABEL_38:
      if (LOBYTE(v87[0]) != 255)
      {
        if (LOBYTE(v87[0]))
        {
          v30 = v85[0];
          v85[0] = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v27);
          }
        }

        else if (v86 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v89, v85);
        }
      }

      if (v28)
      {
        *v74 = v14;
        *(v74 + 24) = v77;
        goto LABEL_171;
      }

      v12 = (v12 + 1);
      v31 = *v11;
      v13 = v12;
      if (v31 <= v12)
      {
        v9 = v72;
        v89[0] = v72;
        v32 = WTF::fastMalloc((24 * v31 + 8));
        *v32 = v31;
        if (v31)
        {
          v33 = 0;
          a3 = v74;
          do
          {
            LOBYTE(v32[v33 + 2]) = 0;
            v34 = &v11[v33];
            LOBYTE(v32[v33 + 6]) = -1;
            v35 = LOBYTE(v11[v33 + 6]);
            if (v35 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v35, v85, &v32[v33 + 2], v34 + 1);
              LOBYTE(v32[v33 + 6]) = *(v34 + 24);
            }

            v33 += 6;
          }

          while (6 * v31 != v33);
        }

        else
        {
          a3 = v74;
        }

        v10 = v73;
        goto LABEL_170;
      }
    }
  }

  v11 = 0;
  v32 = 0;
  v89[0] = (v7 | (v8 << 32));
LABEL_170:
  v90 = 9;
  v89[1] = 0;
  *a3 = v9;
  *(a3 + 8) = v32;
  *(a3 + 16) = 9;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v85, v89);
  if (v10)
  {
LABEL_171:
    v59 = *v11;
    if (v59)
    {
      v60 = 24 * v59;
      v61 = v11 + 6;
      do
      {
        v27 = (v61 - 16);
        if (*v61 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v89, v27);
        }

        *v61 = -1;
        v61 += 24;
        v60 -= 24;
      }

      while (v60);
    }

    WTF::fastFree(v11, v27);
  }
}

void WGSL::constantMultiply(uint64_t a1@<X0>, int **a2@<X1>, uint64_t a3@<X8>)
{
  v271 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = **a2;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x22582B298);
  }

  v5 = (v3 + 2);
  v6 = *(v3 + 24);
  if (v6 == 9)
  {
    v7 = (v3 + 2);
  }

  else
  {
    v7 = 0;
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22582B2B8);
  }

  v9 = (v3 + 8);
  v10 = *(v3 + 48);
  if (v10 == 9)
  {
    v11 = (v3 + 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = v6 == 9 && v10 == 9;
  v246 = v11;
  if (v12)
  {
    if (*(a1 + 48) != 2)
    {
      goto LABEL_536;
    }

    v18 = *a1;
    v19 = v3[8];
    v20 = v3[3];
    v21 = v20 * v19;
    if (v20 * v19)
    {
      v22 = v3[3];
      v23 = WTF::fastMalloc((24 * v21 + 8));
      *v23 = v21;
      bzero(v23 + 2, 24 * ((24 * v21 - 24) / 0x18) + 24);
      v20 = v22;
      v24 = *v9;
      if (!*v9)
      {
        goto LABEL_135;
      }
    }

    else
    {
      v23 = 0;
      v24 = *(v3 + 8);
      if (!v19)
      {
        goto LABEL_135;
      }
    }

    v247 = 0;
    v234 = v19;
    v238 = (v23 + 2);
    LODWORD(v25) = v3[3];
    v243 = v23;
    v232 = v20;
LABEL_34:
    if (!v25)
    {
      goto LABEL_134;
    }

    v26 = 0;
    v241 = (v20 * v247);
    while (1)
    {
      WGSL::zeroValue(v256, v18);
      if (*v7)
      {
        for (i = 0; i < *v7; ++i)
        {
          v28 = v26 + v3[3] * i;
          v29 = *(v3 + 2);
          if (*v29 <= v28)
          {
            __break(0xC471u);
            JUMPOUT(0x22582B258);
          }

          v30 = &v29[6 * v28];
          LOBYTE(v266) = 0;
          v268 = -1;
          v31 = *(v30 + 24);
          if (v31 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v31, v258, &v266, v30 + 1);
            v268 = *(v30 + 24);
          }

          v32 = i + v3[9] * v247;
          v33 = *(v3 + 5);
          if (*v33 <= v32)
          {
            __break(0xC471u);
            JUMPOUT(0x22582B278);
          }

          v34 = &v33[6 * v32];
          LOBYTE(v269[0]) = 0;
          v270 = -1;
          v35 = *(v34 + 24);
          if (v35 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v35, v258, v269, v34 + 1);
            v270 = *(v34 + 24);
          }

          v36 = WTF::fastMalloc(0x38);
          *v36 = 2;
          *(v36 + 8) = 0;
          *(v36 + 24) = -1;
          if (v268 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v268, v258, v36 + 1, &v266);
            *(v36 + 24) = v268;
          }

          *(v36 + 32) = 0;
          *(v36 + 48) = -1;
          if (v270 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v270, v258, v36 + 4, v269);
            *(v36 + 48) = v270;
          }

          v258[0] = v36;
          WGSL::constantMultiply(&v261);
          v38 = *v36;
          if (v38)
          {
            v39 = 24 * v38;
            v40 = v36 + 6;
            do
            {
              v37 = v40 - 16;
              if (*v40 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v253, v37);
              }

              *v40 = -1;
              v40 += 24;
              v39 -= 24;
            }

            while (v39);
          }

          v10 = WTF::fastFree(v36, v37);
          if (v270 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v253, v269);
          }

          v270 = -1;
          if (v268 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v253, &v266);
          }

          if (LOBYTE(v264[0]))
          {
            if (LOBYTE(v264[0]) == 1)
            {
              v64 = v261;
              if (*&v261 == 0.0)
              {
                *a3 = 0;
                *(a3 + 24) = 1;
                if (v257 == 255)
                {
                  goto LABEL_260;
                }

                goto LABEL_259;
              }

              atomic_fetch_add_explicit(v261, 2u, memory_order_relaxed);
              v65 = LOBYTE(v264[0]);
              *a3 = v64;
              *(a3 + 24) = 1;
              if (v65 != 255)
              {
                if (v65)
                {
                  v93 = v261;
                  *&v261 = 0.0;
                  if (v93 && atomic_fetch_add_explicit(v93, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v93, v41);
                  }
                }

                else if (v263 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, &v261);
                  if (v257 == 255)
                  {
                    goto LABEL_260;
                  }

LABEL_259:
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v256);
LABEL_260:
                  v23 = v243;
                  if (!v243)
                  {
                    return;
                  }

LABEL_261:
                  v94 = *v23;
                  if (v94)
                  {
                    v95 = 24 * v94;
                    v96 = v23 + 6;
                    do
                    {
                      v41 = (v96 - 16);
                      if (*v96 != 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v41);
                      }

                      *v96 = -1;
                      v96 += 24;
                      v95 -= 24;
                    }

                    while (v95);
                  }

                  v97 = v23;
LABEL_472:
                  WTF::fastFree(v97, v41);
                  return;
                }
              }

LABEL_258:
              if (v257 != 255)
              {
                goto LABEL_259;
              }

              goto LABEL_260;
            }

LABEL_536:
            mpark::throw_bad_variant_access(v10);
          }

          LOBYTE(v253[0]) = 0;
          v254 = -1;
          v42 = v263;
          if (v263 > 5u)
          {
            if (v263 > 8u)
            {
              if (v263 != 9)
              {
                if (v263 != 10)
                {
                  goto LABEL_79;
                }

LABEL_71:
                v43 = v261;
                *&v261 = 0.0;
LABEL_77:
                v253[0] = v43;
                goto LABEL_78;
              }

              v44 = v262;
              v262 = 0;
              v253[0] = v261;
              v253[1] = v44;
            }

            else
            {
              if (v263 != 6)
              {
                goto LABEL_71;
              }

              LOBYTE(v253[0]) = v261;
            }
          }

          else
          {
            if (v263 <= 2u)
            {
              if (v263)
              {
                if (v263 == 1)
                {
                  LOWORD(v253[0]) = v261;
                }

                else
                {
                  v253[0] = v261;
                }
              }

              else
              {
                LODWORD(v253[0]) = v261;
              }

              goto LABEL_78;
            }

            if (v263 != 3 && v263 != 4)
            {
              v43 = v261;
              goto LABEL_77;
            }

            LODWORD(v253[0]) = v261;
          }

LABEL_78:
          v254 = v263;
LABEL_79:
          LOBYTE(v266) = 0;
          v268 = -1;
          if (v257 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v257, v258, &v266, v256);
            v268 = v257;
            v42 = v254;
          }

          LOBYTE(v269[0]) = 0;
          v270 = -1;
          if (v42 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v42, v258, v269, v253);
            v270 = v254;
          }

          v45 = WTF::fastMalloc(0x38);
          *v45 = 2;
          *(v45 + 8) = 0;
          *(v45 + 24) = -1;
          if (v268 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v268, v258, v45 + 1, &v266);
            *(v45 + 24) = v268;
          }

          *(v45 + 32) = 0;
          *(v45 + 48) = -1;
          if (v270 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v270, v258, v45 + 4, v269);
            *(v45 + 48) = v270;
          }

          v252 = v45;
          WGSL::constantAdd(v18, &v252, v258);
          v47 = *v45;
          if (v47)
          {
            v48 = 24 * v47;
            v49 = v45 + 6;
            do
            {
              v46 = v49 - 16;
              if (*v49 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v255, v46);
              }

              *v49 = -1;
              v49 += 24;
              v48 -= 24;
            }

            while (v48);
          }

          v10 = WTF::fastFree(v45, v46);
          if (v270 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v255, v269);
          }

          v270 = -1;
          if (v268 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v255, &v266);
          }

          v50 = v260;
          if (v260)
          {
            if (v260 != 1)
            {
              goto LABEL_536;
            }

            v51 = v258[0];
            if (v258[0])
            {
              atomic_fetch_add_explicit(v258[0], 2u, memory_order_relaxed);
            }

            *a3 = v51;
            *(a3 + 24) = 1;
          }

          else
          {
            if (v257 == 255)
            {
              if (v259 == 255)
              {
                goto LABEL_106;
              }
            }

            else if (v259 == 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v256);
              LOBYTE(v257) = -1;
              goto LABEL_106;
            }

            v266 = v256;
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v259, &v266, v256, v258);
          }

LABEL_106:
          if (v260 != 255)
          {
            if (v260)
            {
              v52 = v258[0];
              v258[0] = 0;
              if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v52, v41);
              }
            }

            else if (v259 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v258);
            }
          }

          if (v254 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v253);
          }

          if (LOBYTE(v264[0]) != 255)
          {
            if (LOBYTE(v264[0]))
            {
              v53 = v261;
              *&v261 = 0.0;
              if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v53, v41);
              }
            }

            else if (v263 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, &v261);
            }
          }

          if (v50)
          {
            goto LABEL_258;
          }
        }
      }

      if (v26 + v241 >= *v243)
      {
        __break(0xC471u);
        JUMPOUT(0x22582B32CLL);
      }

      v54 = (v238 + 24 * v26 + 24 * v241);
      if (*(v54 + 16) == 255)
      {
        v55 = v246;
        if (v257 == 255)
        {
          goto LABEL_132;
        }
      }

      else
      {
        v55 = v246;
        if (v257 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v238 + 24 * v26 + 24 * v241);
          *(v238 + 24 * v26 + 24 * v241 + 16) = -1;
          v55 = v246;
          if (v257 == 255)
          {
            goto LABEL_132;
          }

LABEL_131:
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v256);
          goto LABEL_132;
        }
      }

      v266 = (v238 + 24 * v26 + 24 * v241);
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v257, &v266, v54, v256);
      if (v257 != 255)
      {
        goto LABEL_131;
      }

LABEL_132:
      ++v26;
      v25 = v3[3];
      if (v26 >= v25)
      {
        v24 = *v55;
        v23 = v243;
        v20 = v232;
        v19 = v234;
LABEL_134:
        if (++v247 >= LODWORD(v24))
        {
LABEL_135:
          v56 = (v19 | (v20 << 32));
          v266 = v56;
          if (v23)
          {
            v57 = *v23;
            v58 = 24 * v57;
            v59 = WTF::fastMalloc((24 * v57 + 8));
            v60 = v59;
            *v59 = v57;
            if (v57)
            {
              v61 = (v59 + 6);
              v62 = (v23 + 6);
              do
              {
                *(v61 - 16) = 0;
                *v61 = -1;
                v63 = *v62;
                if (v63 != 255)
                {
                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v63, &v261, v61 - 2, v62 - 2);
                  *v61 = *v62;
                }

                v61 += 3;
                v62 += 3;
                v58 -= 24;
              }

              while (v58);
              v56 = v266;
            }
          }

          else
          {
            v60 = 0;
          }

          v268 = 9;
          v267 = 0;
          *a3 = v56;
          *(a3 + 8) = v60;
          *(a3 + 16) = 9;
          *(a3 + 24) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v261, &v266);
          if (!v23)
          {
            return;
          }

          goto LABEL_261;
        }

        goto LABEL_34;
      }
    }
  }

  if (v6 != 9 && v10 != 9)
  {
    LOBYTE(v266) = 0;
    v268 = -1;
    if (v6 == 255)
    {
      LOBYTE(v269[0]) = 0;
      v270 = -1;
      if (v10 == 255)
      {
        goto LABEL_30;
      }
    }

    else
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, &v261, &v266, v3 + 1);
      LODWORD(v6) = *(v3 + 24);
      v268 = *(v3 + 24);
      LODWORD(v10) = *(v3 + 48);
      LOBYTE(v269[0]) = 0;
      v270 = -1;
      if (v10 == 255)
      {
LABEL_30:
        LOBYTE(v261) = 0;
        v263 = -1;
        if (v6 == 255)
        {
          goto LABEL_159;
        }

        goto LABEL_156;
      }
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v10, &v261, v269, v3 + 4);
    v270 = *(v3 + 48);
    LODWORD(v6) = v268;
    LOBYTE(v261) = 0;
    v263 = -1;
    if (v268 == 255)
    {
      goto LABEL_159;
    }

LABEL_156:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v258, &v261, &v266);
    v263 = v268;
    if (v268 != 255)
    {
      if (v268 == 8)
      {
LABEL_163:
        if (*&v261 == 0.0)
        {
LABEL_239:
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v261);
LABEL_240:
          v87 = *(v3 + 24);
          if (v87 > 2)
          {
            if (v87 == 5)
            {
              if (*(v3 + 48) != 5)
              {
                goto LABEL_536;
              }

              v261 = (*v9 * *v5);
              v91 = 5;
              v263 = 5;
              v136 = a3;
              *a3 = *&v261;
            }

            else
            {
              if (v87 == 4)
              {
                if (*(v3 + 48) != 4)
                {
                  goto LABEL_536;
                }

                v90 = *v9 * *v5;
                LODWORD(v261) = v90;
                v91 = 4;
              }

              else
              {
                if (v87 != 3)
                {
                  goto LABEL_555;
                }

                if (*(v3 + 48) != 3)
                {
                  goto LABEL_536;
                }

                v90 = *v9 * *v5;
                LODWORD(v261) = v90;
                v91 = 3;
              }

              v263 = v91;
              v136 = a3;
              *a3 = v90;
            }

            *(v136 + 16) = v91;
            *(v136 + 24) = 0;
          }

          else
          {
            if (*(v3 + 24))
            {
              if (v87 == 1)
              {
                v88 = *(v3 + 48);
                if (v88 != 1)
                {
                  goto LABEL_536;
                }

                *&v261 = *v5 * *v9;
                v263 = 1;
                v89 = a3;
                *a3 = v261;
LABEL_342:
                *(v89 + 16) = v88;
                *(v89 + 24) = 0;
                goto LABEL_348;
              }

              if (v87 == 2)
              {
                v88 = *(v3 + 48);
                if (v88 != 2)
                {
                  goto LABEL_536;
                }

                *&v261 = *v5 * *v9;
                v263 = 2;
                v89 = a3;
                *a3 = *&v261;
                goto LABEL_342;
              }

LABEL_555:
              __break(0xC471u);
LABEL_556:
              JUMPOUT(0x22582B1D8);
            }

            if (*(v3 + 48))
            {
              goto LABEL_536;
            }

            *&v261 = *v5 * *v9;
            v263 = 0;
            *a3 = v261;
            *(a3 + 16) = 0;
            *(a3 + 24) = 0;
          }

LABEL_348:
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v261);
          if (v270 == 255)
          {
            goto LABEL_350;
          }

          goto LABEL_349;
        }

        v70 = *v261;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v261);
        if (!v70)
        {
          goto LABEL_240;
        }

        v71 = WTF::fastMalloc((24 * v70 + 8));
        *v71 = v70;
        v72 = v71 + 2;
        v73 = 6;
        bzero(v71 + 2, 24 * ((24 * v70 - 24) / 0x18uLL) + 24);
        v74 = 0;
        LODWORD(v261) = 0;
        v263 = 0;
        LODWORD(v264[0]) = 0;
        v265 = 0;
        v75 = *a3;
        v76 = *(a3 + 24);
        while (1)
        {
          v77 = v268;
          if (v268 == 8)
          {
            if (v74 >= *v266)
            {
              goto LABEL_548;
            }

            v78 = &v266[v73 / 2 - 2];
            v77 = LOBYTE(v266[v73 / 2]);
            if (v263 == 255)
            {
              if (v77 == 255)
              {
                goto LABEL_179;
              }
            }

            else if (v77 == 255)
            {
              goto LABEL_173;
            }

            v258[0] = &v261;
          }

          else
          {
            if (v263 == 255)
            {
              if (v268 == 255)
              {
                goto LABEL_179;
              }
            }

            else if (v268 == 255)
            {
LABEL_173:
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v261);
              v263 = -1;
              goto LABEL_179;
            }

            v258[0] = &v261;
            v78 = &v266;
          }

          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v77, v258, &v261, v78);
LABEL_179:
          v79 = v270;
          if (v270 == 8)
          {
            if (v74 >= *v269[0])
            {
LABEL_548:
              *a3 = v75;
              *(a3 + 24) = v76;
              __break(0xC471u);
              JUMPOUT(0x22582B30CLL);
            }

            v80 = (v269[0] + v73 * 4 - 16);
            v79 = *(v269[0] + v73 * 4);
            if (v265 == 255)
            {
              if (v79 == 255)
              {
                goto LABEL_192;
              }
            }

            else if (v79 == 255)
            {
              goto LABEL_186;
            }

            v258[0] = v264;
          }

          else
          {
            if (v265 == 255)
            {
              if (v270 == 255)
              {
                goto LABEL_192;
              }
            }

            else if (v270 == 255)
            {
LABEL_186:
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, v264);
              v265 = -1;
              goto LABEL_192;
            }

            v258[0] = v264;
            v80 = v269;
          }

          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v79, v258, v264, v80);
LABEL_192:
          if (v263 > 2u)
          {
            switch(v263)
            {
              case 3u:
                if (v265 != 3)
                {
                  goto LABEL_537;
                }

                v83 = LODWORD(v264[0]) * v261;
                LODWORD(v256[0]) = LODWORD(v264[0]) * v261;
                v84 = 3;
LABEL_211:
                LOBYTE(v257) = v84;
                LODWORD(v258[0]) = v83;
                break;
              case 4u:
                if (v265 != 4)
                {
                  goto LABEL_537;
                }

                v83 = LODWORD(v264[0]) * v261;
                LODWORD(v256[0]) = LODWORD(v264[0]) * v261;
                v84 = 4;
                goto LABEL_211;
              case 5u:
                if (v265 != 5)
                {
LABEL_537:
                  *a3 = v75;
                  *(a3 + 24) = v76;
                  mpark::throw_bad_variant_access(v79);
                }

                v256[0] = (v264[0] * v261);
                v84 = 5;
                LOBYTE(v257) = 5;
                v258[0] = (v264[0] * v261);
                break;
              default:
LABEL_554:
                *a3 = v75;
                *(a3 + 24) = v76;
                __break(0xC471u);
                JUMPOUT(0x22582B3ECLL);
            }

            v259 = v84;
            v260 = 0;
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v253, v256);
            v82 = v260;
            if (!v260)
            {
              goto LABEL_204;
            }

            goto LABEL_220;
          }

          if (v263)
          {
            if (v263 == 1)
            {
              if (v265 != 1)
              {
                goto LABEL_537;
              }

              *v256 = *&v261 * *v264;
              LOBYTE(v257) = v265;
              *v258 = *&v261 * *v264;
              v259 = v265;
              v260 = 0;
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v253, v256);
              v82 = v260;
              if (!v260)
              {
                goto LABEL_204;
              }
            }

            else
            {
              if (v263 != 2)
              {
                goto LABEL_554;
              }

              if (v265 != 2)
              {
                goto LABEL_537;
              }

              *v256 = *&v261 * *v264;
              LOBYTE(v257) = 2;
              *v258 = *&v261 * *v264;
              v259 = 2;
              v260 = 0;
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v253, v256);
              v82 = v260;
              if (!v260)
              {
LABEL_204:
                if (v74 >= *v71)
                {
                  *a3 = v75;
                  *(a3 + 24) = v76;
                  __break(0xC471u);
                  JUMPOUT(0x22582B3C0);
                }

                if (LOBYTE(v71[v73]) == 255)
                {
                  if (v259 != 255)
                  {
                    goto LABEL_225;
                  }
                }

                else
                {
                  if (v259 == 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v256, v72);
                    LOBYTE(v71[v73]) = -1;
                    v85 = v260;
                    if (v260 != 255)
                    {
                      goto LABEL_227;
                    }

                    goto LABEL_233;
                  }

LABEL_225:
                  v256[0] = v72;
                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v259, v256, v72, v258);
                }

                v85 = v260;
                if (v260 != 255)
                {
                  goto LABEL_227;
                }

                goto LABEL_233;
              }
            }
          }

          else
          {
            if (v265)
            {
              goto LABEL_537;
            }

            *v256 = *&v261 * *v264;
            LOBYTE(v257) = 0;
            *v258 = *&v261 * *v264;
            v259 = 0;
            v260 = 0;
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v253, v256);
            v82 = v260;
            if (!v260)
            {
              goto LABEL_204;
            }
          }

LABEL_220:
          if (v82 != 1)
          {
            goto LABEL_537;
          }

          v75 = v258[0];
          if (v258[0])
          {
            atomic_fetch_add_explicit(v258[0], 2u, memory_order_relaxed);
            v76 = 1;
            v85 = v260;
            if (v260 != 255)
            {
              goto LABEL_227;
            }
          }

          else
          {
            v76 = 1;
            v85 = v260;
            if (v260 != 255)
            {
LABEL_227:
              if (v85)
              {
                v86 = v258[0];
                v258[0] = 0;
                if (v86 && atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v86, v81);
                }
              }

              else if (v259 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v256, v258);
              }
            }
          }

LABEL_233:
          if (v82)
          {
            *a3 = v75;
            *(a3 + 24) = v76;
            goto LABEL_445;
          }

          ++v74;
          v72 += 24;
          v73 += 6;
          if (v70 == v74)
          {
            v188 = *v71;
            v189 = 24 * v188;
            v190 = WTF::fastMalloc((24 * v188 + 8));
            v191 = v190;
            *v190 = v188;
            if (v188)
            {
              v192 = (v190 + 6);
              v193 = (v71 + 6);
              do
              {
                *(v192 - 16) = 0;
                *v192 = -1;
                v194 = *v193;
                if (v194 != 255)
                {
                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v194, v258, v192 - 2, v193 - 2);
                  *v192 = *v193;
                }

                v192 += 3;
                v193 += 3;
                v189 -= 24;
              }

              while (v189);
            }

            v259 = 8;
            v258[0] = 0;
            *a3 = v191;
            *(a3 + 16) = 8;
            *(a3 + 24) = 0;
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v256, v258);
LABEL_445:
            if (v265 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, v264);
            }

            v265 = -1;
            if (v263 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v261);
            }

            v195 = *v71;
            if (v195)
            {
              v196 = 24 * v195;
              v197 = v71 + 6;
              do
              {
                v81 = (v197 - 16);
                if (*v197 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v261, v81);
                }

                *v197 = -1;
                v197 += 24;
                v196 -= 24;
              }

              while (v196);
            }

            WTF::fastFree(v71, v81);
            if (v270 == 255)
            {
LABEL_350:
              v270 = -1;
              if (v268 != 255)
              {
                v137 = &v261;
                v138 = &v266;
                goto LABEL_352;
              }

              return;
            }

LABEL_349:
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v261, v269);
            goto LABEL_350;
          }
        }
      }

      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v261);
    }

LABEL_159:
    LOBYTE(v261) = 0;
    v263 = -1;
    v10 = v270;
    if (v270 == 255)
    {
      goto LABEL_240;
    }

    v10 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v270, v258, &v261, v269);
    v263 = v270;
    if (v270 != 8)
    {
      if (v270 == 255)
      {
        goto LABEL_240;
      }

      goto LABEL_239;
    }

    goto LABEL_163;
  }

  if (v10 == 8)
  {
    if (*(a1 + 48) != 1)
    {
      goto LABEL_536;
    }

    v240 = *a1;
    v14 = *v7;
    v15 = v7[1];
    if (v15)
    {
      v16 = WTF::fastMalloc((24 * v15 + 8));
      *v16 = v15;
      bzero(v16 + 2, 24 * ((24 * v15 - 24) / 0x18uLL) + 24);
      v237 = v16;
      v242 = (v3 + 8);
      if (v14)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v237 = 0;
      v242 = (v3 + 8);
      if (v14)
      {
LABEL_22:
        v17 = WTF::fastMalloc((24 * v14 + 8));
        *v17 = v14;
        bzero(v17 + 2, 24 * ((24 * v14 - 24) / 0x18uLL) + 24);
        if (!v15)
        {
LABEL_329:
          if (v237)
          {
            v129 = *v237;
            v130 = 24 * v129;
            v131 = WTF::fastMalloc((24 * v129 + 8));
            v132 = v131;
            *v131 = v129;
            if (v129)
            {
              v133 = (v131 + 6);
              v134 = (v237 + 24);
              do
              {
                *(v133 - 16) = 0;
                *v133 = -1;
                v135 = *v134;
                if (v135 != 255)
                {
                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v135, &v266, v133 - 2, v134 - 2);
                  *v133 = *v134;
                }

                v133 += 3;
                v134 += 3;
                v130 -= 24;
              }

              while (v130);
            }
          }

          else
          {
            v132 = 0;
          }

          v268 = 8;
          v266 = 0;
          *a3 = v132;
          *(a3 + 16) = 8;
          *(a3 + 24) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v261, &v266);
LABEL_355:
          v139 = v237;
          if (v17)
          {
            v140 = *v17;
            if (v140)
            {
              v141 = 24 * v140;
              v142 = v17 + 6;
              do
              {
                v41 = (v142 - 16);
                if (*v142 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v41);
                }

                *v142 = -1;
                v142 += 24;
                v141 -= 24;
              }

              while (v141);
            }

            WTF::fastFree(v17, v41);
          }

          if (!v237)
          {
            return;
          }

          v143 = *v237;
          if (v143)
          {
            v144 = 24 * v143;
            v145 = v237 + 24;
            do
            {
              v41 = (v145 - 16);
              if (*v145 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v41);
              }

              *v145 = -1;
              v145 += 24;
              v144 -= 24;
            }

            while (v144);
          }

LABEL_471:
          v97 = v139;
          goto LABEL_472;
        }

        goto LABEL_269;
      }
    }

    v17 = 0;
    if (!v15)
    {
      goto LABEL_329;
    }

LABEL_269:
    v98 = 0;
    v235 = v237 + 8;
    while (1)
    {
      v248 = v98;
      if (v14)
      {
        v99 = 0;
        v100 = v98;
        v101 = (v17 + 6);
        while (1)
        {
          while (1)
          {
            v102 = *(v7 + 1);
            if (*v102 <= v100)
            {
              __break(0xC471u);
              goto LABEL_556;
            }

            if (v99 >= *v17)
            {
              __break(0xC471u);
              JUMPOUT(0x22582B1F8);
            }

            v103 = &v102[6 * v100];
            v104 = *(v103 + 24);
            if (*v101 != 255)
            {
              break;
            }

            if (v104 != 255)
            {
              goto LABEL_275;
            }

LABEL_276:
            ++v99;
            v101 += 3;
            v100 += v15;
            if (v14 == v99)
            {
              goto LABEL_284;
            }
          }

          if (v104 != 255)
          {
LABEL_275:
            v266 = (v101 - 2);
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v104, &v266, v101 - 2, v103 + 1);
            goto LABEL_276;
          }

          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v101 - 16);
          *v101 = -1;
          v101 += 3;
          ++v99;
          v100 += v15;
          if (v14 == v99)
          {
            goto LABEL_284;
          }
        }
      }

      if (v17)
      {
LABEL_284:
        v105 = *v17;
        v106 = 24 * v105;
        v107 = WTF::fastMalloc((24 * v105 + 8));
        v108 = v107;
        *v107 = v105;
        if (v105)
        {
          v109 = (v107 + 6);
          v110 = (v17 + 6);
          do
          {
            *(v109 - 16) = 0;
            *v109 = -1;
            v111 = *v110;
            if (v111 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v111, v256, v109 - 2, v110 - 2);
              *v109 = *v110;
            }

            v109 += 3;
            v110 += 3;
            v106 -= 24;
          }

          while (v106);
        }
      }

      else
      {
        v108 = 0;
      }

      v266 = v108;
      v268 = 8;
      v112 = *v242;
      if (*v242)
      {
        v113 = *v112;
        v114 = 24 * v113;
        v115 = WTF::fastMalloc((24 * v113 + 8));
        v116 = v115;
        *v115 = v113;
        if (v113)
        {
          v117 = (v115 + 6);
          v118 = (v112 + 6);
          do
          {
            *(v117 - 16) = 0;
            *v117 = -1;
            v119 = *v118;
            if (v119 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v119, v256, v117 - 2, v118 - 2);
              *v117 = *v118;
            }

            v117 += 3;
            v118 += 3;
            v114 -= 24;
          }

          while (v114);
        }
      }

      else
      {
        v116 = 0;
      }

      v269[0] = v116;
      v270 = 8;
      v120 = WTF::fastMalloc(0x38);
      *v120 = 2;
      *(v120 + 8) = 0;
      *(v120 + 24) = -1;
      if (v268 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v268, v256, v120 + 1, &v266);
        *(v120 + 24) = v268;
      }

      *(v120 + 32) = 0;
      *(v120 + 48) = -1;
      if (v270 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v270, v256, v120 + 4, v269);
        *(v120 + 48) = v270;
      }

      v258[0] = v120;
      WGSL::constantDot(v240, &v261);
      v122 = *v120;
      if (v122)
      {
        v123 = 24 * v122;
        v124 = v120 + 6;
        do
        {
          v121 = v124 - 16;
          if (*v124 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v256, v121);
          }

          *v124 = -1;
          v124 += 24;
          v123 -= 24;
        }

        while (v123);
      }

      v10 = WTF::fastFree(v120, v121);
      if (v270 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v256, v269);
      }

      v270 = -1;
      if (v268 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v256, &v266);
      }

      v125 = LOBYTE(v264[0]);
      if (LOBYTE(v264[0]))
      {
        if (LOBYTE(v264[0]) != 1)
        {
          goto LABEL_536;
        }

        v126 = v261;
        if (*&v261 != 0.0)
        {
          atomic_fetch_add_explicit(v261, 2u, memory_order_relaxed);
        }

        *a3 = v126;
        *(a3 + 24) = 1;
      }

      else
      {
        if (v248 >= *v237)
        {
          __break(0xC471u);
          JUMPOUT(0x22582B34CLL);
        }

        v127 = &v235[24 * v248];
        if (v127[16] == 255)
        {
          if (v263 == 255)
          {
            goto LABEL_321;
          }
        }

        else if (v263 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, &v235[24 * v248]);
          v235[24 * v248 + 16] = -1;
          goto LABEL_321;
        }

        v266 = &v235[24 * v248];
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v263, &v266, v127, &v261);
      }

LABEL_321:
      if (LOBYTE(v264[0]) == 255)
      {
        goto LABEL_270;
      }

      if (LOBYTE(v264[0]))
      {
        v128 = v261;
        *&v261 = 0.0;
        if (v128 && atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v128, v41);
        }

LABEL_270:
        if (v125)
        {
          goto LABEL_355;
        }

        goto LABEL_271;
      }

      if (v263 == 255)
      {
        goto LABEL_270;
      }

      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, &v261);
      if (v125)
      {
        goto LABEL_355;
      }

LABEL_271:
      v98 = v248 + 1;
      if (v248 + 1 == v15)
      {
        goto LABEL_329;
      }
    }
  }

  if (v6 == 8)
  {
    if (*(a1 + 48) != 1)
    {
      goto LABEL_536;
    }

    v244 = *a1;
    v67 = *v11;
    v66 = *(v11 + 1);
    if (v67)
    {
      v68 = WTF::fastMalloc((24 * v67 + 8));
      *v68 = v67;
      bzero(v68 + 2, 24 * ((24 * v67 - 24) / 0x18uLL) + 24);
      v239 = v68;
      if (v66)
      {
        goto LABEL_152;
      }
    }

    else
    {
      v239 = 0;
      if (v66)
      {
LABEL_152:
        v69 = WTF::fastMalloc((24 * v66 + 8));
        *v69 = v66;
        bzero(v69 + 2, 24 * ((24 * v66 - 24) / 0x18uLL) + 24);
        if (!v67)
        {
LABEL_432:
          if (v239)
          {
            v181 = *v239;
            v182 = 24 * v181;
            v183 = WTF::fastMalloc((24 * v181 + 8));
            v184 = v183;
            *v183 = v181;
            if (v181)
            {
              v185 = (v183 + 6);
              v186 = (v239 + 24);
              do
              {
                *(v185 - 16) = 0;
                *v185 = -1;
                v187 = *v186;
                if (v187 != 255)
                {
                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v187, &v266, v185 - 2, v186 - 2);
                  *v185 = *v186;
                }

                v185 += 3;
                v186 += 3;
                v182 -= 24;
              }

              while (v182);
            }
          }

          else
          {
            v184 = 0;
          }

          v268 = 8;
          v266 = 0;
          *a3 = v184;
          *(a3 + 16) = 8;
          *(a3 + 24) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v261, &v266);
LABEL_458:
          v139 = v239;
          if (v69)
          {
            v198 = *v69;
            if (v198)
            {
              v199 = 24 * v198;
              v200 = v69 + 6;
              do
              {
                v41 = (v200 - 16);
                if (*v200 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v41);
                }

                *v200 = -1;
                v200 += 24;
                v199 -= 24;
              }

              while (v199);
            }

            WTF::fastFree(v69, v41);
          }

          if (!v239)
          {
            return;
          }

          v201 = *v239;
          if (v201)
          {
            v202 = 24 * v201;
            v203 = v239 + 24;
            do
            {
              v41 = (v203 - 16);
              if (*v203 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v41);
              }

              *v203 = -1;
              v203 += 24;
              v202 -= 24;
            }

            while (v202);
          }

          goto LABEL_471;
        }

        goto LABEL_372;
      }
    }

    v69 = 0;
    if (!v67)
    {
      goto LABEL_432;
    }

LABEL_372:
    v146 = 0;
    v147 = 0;
    v233 = v239 + 8;
    v236 = v67;
    while (1)
    {
      v249 = v147;
      v148 = v146;
      if (v66)
      {
        v149 = 0;
        v150 = 24 * v146 + 24;
        v151 = (v69 + 6);
        do
        {
          while (1)
          {
            v152 = *(v11 + 1);
            if (v148 + v149 >= *v152)
            {
              __break(0xC471u);
              JUMPOUT(0x22582B218);
            }

            if (v149 >= *v69)
            {
              __break(0xC471u);
              JUMPOUT(0x22582B238);
            }

            v153 = *(v152 + v150);
            if (*v151 != 255)
            {
              break;
            }

            if (v153 != 255)
            {
              goto LABEL_378;
            }

LABEL_379:
            ++v149;
            v151 += 3;
            v150 += 24;
            if (v66 == v149)
            {
              goto LABEL_385;
            }
          }

          if (v153 != 255)
          {
LABEL_378:
            v266 = (v151 - 2);
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v153, &v266, v151 - 2, (v152 + v150 - 16));
            goto LABEL_379;
          }

          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v151 - 16);
          *v151 = -1;
          v151 += 3;
          ++v149;
          v150 += 24;
        }

        while (v66 != v149);
      }

LABEL_385:
      v154 = *v5;
      if (!*v5)
      {
        break;
      }

      v155 = v5;
      v156 = *v154;
      v157 = 24 * v156;
      v158 = WTF::fastMalloc((24 * v156 + 8));
      v159 = v158;
      *v158 = v156;
      if (v156)
      {
        v160 = (v158 + 24);
        v161 = (v154 + 6);
        v5 = v155;
        v67 = v236;
        do
        {
          *(v160 - 16) = 0;
          *v160 = -1;
          v162 = *v161;
          if (v162 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v162, &v261, v160 - 2, v161 - 2);
            *v160 = *v161;
          }

          v160 += 3;
          v161 += 3;
          v157 -= 24;
        }

        while (v157);
LABEL_392:
        v266 = v159;
        v268 = 8;
        if (!v69)
        {
          goto LABEL_399;
        }

        goto LABEL_393;
      }

      v5 = v155;
      v67 = v236;
      v266 = v158;
      v268 = 8;
      if (!v69)
      {
LABEL_399:
        v166 = 0;
        goto LABEL_400;
      }

LABEL_393:
      v163 = *v69;
      v164 = 24 * v163;
      v165 = WTF::fastMalloc((24 * v163 + 8));
      v166 = v165;
      *v165 = v163;
      if (v163)
      {
        v167 = (v165 + 6);
        v168 = (v69 + 6);
        do
        {
          *(v167 - 16) = 0;
          *v167 = -1;
          v169 = *v168;
          if (v169 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v169, &v261, v167 - 2, v168 - 2);
            *v167 = *v168;
          }

          v167 += 3;
          v168 += 3;
          v164 -= 24;
        }

        while (v164);
      }

LABEL_400:
      v269[0] = v166;
      v270 = 8;
      v170 = WTF::fastMalloc(0x38);
      *v170 = 2;
      *(v170 + 8) = 0;
      *(v170 + 24) = -1;
      if (v268 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v268, &v261, v170 + 1, &v266);
        *(v170 + 24) = v268;
      }

      *(v170 + 32) = 0;
      *(v170 + 48) = -1;
      if (v270 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v270, &v261, v170 + 4, v269);
        *(v170 + 48) = v270;
      }

      v258[0] = v170;
      WGSL::constantDot(v244, &v261);
      v172 = *v170;
      if (v172)
      {
        v173 = 24 * v172;
        v174 = v170 + 6;
        do
        {
          v171 = v174 - 16;
          if (*v174 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v256, v171);
          }

          *v174 = -1;
          v174 += 24;
          v173 -= 24;
        }

        while (v173);
      }

      v10 = WTF::fastFree(v170, v171);
      if (v270 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v256, v269);
      }

      v270 = -1;
      v11 = v246;
      v175 = v249;
      if (v268 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v256, &v266);
      }

      v176 = LOBYTE(v264[0]);
      if (LOBYTE(v264[0]))
      {
        if (LOBYTE(v264[0]) != 1)
        {
          goto LABEL_536;
        }

        v177 = v261;
        if (*&v261 != 0.0)
        {
          atomic_fetch_add_explicit(v261, 2u, memory_order_relaxed);
        }

        *a3 = v177;
        *(a3 + 24) = 1;
      }

      else
      {
        if (v249 >= *v239)
        {
          __break(0xC471u);
          JUMPOUT(0x22582B36CLL);
        }

        v178 = &v233[24 * v249];
        if (v178[16] == 255)
        {
          if (v263 == 255)
          {
            goto LABEL_424;
          }
        }

        else if (v263 == 255)
        {
          v179 = &v233[24 * v249];
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v179);
          v179[16] = -1;
          v175 = v249;
          goto LABEL_424;
        }

        v266 = &v233[24 * v249];
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v263, &v266, v178, &v261);
      }

LABEL_424:
      if (LOBYTE(v264[0]) == 255)
      {
        goto LABEL_373;
      }

      if (LOBYTE(v264[0]))
      {
        v180 = v261;
        *&v261 = 0.0;
        if (v180 && atomic_fetch_add_explicit(v180, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v180, v41);
        }

LABEL_373:
        if (v176)
        {
          goto LABEL_458;
        }

        goto LABEL_374;
      }

      if (v263 == 255)
      {
        goto LABEL_373;
      }

      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, &v261);
      if (v176)
      {
        goto LABEL_458;
      }

LABEL_374:
      v147 = v175 + 1;
      v146 = v148 + v66;
      if (v147 == v67)
      {
        goto LABEL_432;
      }
    }

    v159 = 0;
    goto LABEL_392;
  }

  LODWORD(v258[0]) = 0;
  v259 = 0;
  v92 = a1;
  if (v6 == 9)
  {
    if (v10 == 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v258);
      v259 = -1;
    }

    else
    {
      v266 = v258;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v10, &v266, v258, v3 + 4);
    }
  }

  else
  {
    if (v6 == 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v258);
      v259 = -1;
    }

    else
    {
      v266 = v258;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v6, &v266, v258, v3 + 1);
    }

    v5 = v11;
  }

  if (*(v92 + 48) != 2)
  {
    goto LABEL_536;
  }

  v204 = *v5;
  v205 = v5[1];
  v206 = (v204 | (v205 << 32));
  v207 = v205 * v204;
  if (!(v205 * v204))
  {
    v208 = 0;
    v225 = 0;
    v266 = (v204 | (v205 << 32));
    goto LABEL_525;
  }

  v245 = (v204 | (v205 << 32));
  v208 = WTF::fastMalloc((24 * v207 + 8));
  *v208 = v207;
  v250 = v208 + 2;
  bzero(v208 + 2, 24 * ((24 * v207 - 24) / 0x18) + 24);
  v209 = 0;
  v210 = *a3;
  do
  {
    v211 = *(v5 + 1);
    if (*v211 <= v209)
    {
      *a3 = v210;
      __break(0xC471u);
      JUMPOUT(0x22582B2E0);
    }

    v212 = &v211[6 * v209];
    LOBYTE(v266) = 0;
    v268 = -1;
    v213 = *(v212 + 24);
    if (v213 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v213, &v261, &v266, v212 + 1);
      v268 = *(v212 + 24);
    }

    LOBYTE(v269[0]) = 0;
    v270 = -1;
    if (v259 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, &v261, v269, v258);
      v270 = v259;
    }

    v214 = WTF::fastMalloc(0x38);
    *v214 = 2;
    *(v214 + 8) = 0;
    *(v214 + 24) = -1;
    if (v268 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v268, &v261, v214 + 1, &v266);
      *(v214 + 24) = v268;
    }

    *(v214 + 32) = 0;
    *(v214 + 48) = -1;
    if (v270 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v270, &v261, v214 + 4, v269);
      *(v214 + 48) = v270;
    }

    v256[0] = v214;
    WGSL::constantMultiply(&v261);
    v216 = *v214;
    if (v216)
    {
      v217 = 24 * v216;
      v218 = v214 + 6;
      do
      {
        v215 = v218 - 16;
        if (*v218 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v253, v215);
        }

        *v218 = -1;
        v218 += 24;
        v217 -= 24;
      }

      while (v217);
    }

    v219 = WTF::fastFree(v214, v215);
    if (v270 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v253, v269);
    }

    v270 = -1;
    if (v268 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v253, &v266);
    }

    v221 = LOBYTE(v264[0]);
    if (LOBYTE(v264[0]))
    {
      if (LOBYTE(v264[0]) != 1)
      {
        *a3 = v210;
        mpark::throw_bad_variant_access(v219);
      }

      v210 = v261;
      if (*&v261 != 0.0)
      {
        atomic_fetch_add_explicit(v261, 2u, memory_order_relaxed);
      }

      *(a3 + 24) = 1;
    }

    else
    {
      if (*v208 <= v209)
      {
        *a3 = v210;
        __break(0xC471u);
        JUMPOUT(0x22582B394);
      }

      v222 = &v250[6 * v209];
      if (*(v222 + 16) == 255)
      {
        if (v263 == 255)
        {
          goto LABEL_509;
        }
      }

      else if (v263 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, &v250[6 * v209]);
        LOBYTE(v250[6 * v209 + 4]) = -1;
        goto LABEL_509;
      }

      v266 = &v250[6 * v209];
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v263, &v266, v222, &v261);
    }

LABEL_509:
    if (LOBYTE(v264[0]) != 255)
    {
      if (LOBYTE(v264[0]))
      {
        v223 = v261;
        *&v261 = 0.0;
        if (v223 && atomic_fetch_add_explicit(v223, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v223, v220);
        }
      }

      else if (v263 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, &v261);
      }
    }

    if (v221)
    {
      *a3 = v210;
      goto LABEL_526;
    }

    v209 = (v209 + 1);
    v224 = *v208;
  }

  while (v224 > v209);
  *a3 = v210;
  v206 = v245;
  v266 = v245;
  v225 = WTF::fastMalloc((24 * v224 + 8));
  *v225 = v224;
  if (v224)
  {
    v226 = 0;
    do
    {
      LOBYTE(v225[v226 + 2]) = 0;
      v227 = &v208[v226];
      LOBYTE(v225[v226 + 6]) = -1;
      v228 = LOBYTE(v208[v226 + 6]);
      if (v228 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v228, &v261, &v225[v226 + 2], v227 + 1);
        LOBYTE(v225[v226 + 6]) = *(v227 + 24);
      }

      v226 += 6;
    }

    while (6 * v224 != v226);
  }

LABEL_525:
  v268 = 9;
  v267 = 0;
  *a3 = v206;
  *(a3 + 8) = v225;
  *(a3 + 16) = 9;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v261, &v266);
  if (v207)
  {
LABEL_526:
    v229 = *v208;
    if (v229)
    {
      v230 = 24 * v229;
      v231 = v208 + 6;
      do
      {
        v220 = (v231 - 16);
        if (*v231 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v266, v220);
        }

        *v231 = -1;
        v231 += 24;
        v230 -= 24;
      }

      while (v230);
    }

    WTF::fastFree(v208, v220);
  }

  if (v259 != 255)
  {
    v137 = &v266;
    v138 = v258;
LABEL_352:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v137, v138);
  }
}

void WGSL::constantDivide(int **a1@<X1>, uint64_t a2@<X8>)
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x22582C00CLL);
  }

  if (v3 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22582C02CLL);
  }

  v4 = (v2 + 2);
  LOBYTE(v64[0]) = 0;
  v65 = -1;
  v5 = *(v2 + 24);
  if (v5 == 255)
  {
    v6 = 255;
  }

  else
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v60, v64, v2 + 1);
    v6 = *(v2 + 24);
    v65 = *(v2 + 24);
  }

  v7 = (v2 + 8);
  LOBYTE(v66[0]) = 0;
  v67 = -1;
  v8 = *(v2 + 48);
  if (v8 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v8, v60, v66, v2 + 4);
    v67 = *(v2 + 48);
    v6 = v65;
  }

  LOBYTE(v60[0]) = 0;
  v61 = -1;
  if (v6 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v68, v60, v64), v61 = v65, v65 == 255))
  {
LABEL_12:
    LOBYTE(v60[0]) = 0;
    v61 = -1;
    v9 = v67;
    if (v67 == 255)
    {
      goto LABEL_100;
    }

    v9 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v67, v68, v60, v66);
    v61 = v67;
    if (v67 != 8)
    {
      if (v67 == 255)
      {
        goto LABEL_100;
      }

      goto LABEL_99;
    }

    goto LABEL_16;
  }

  if (v65 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v68, v60);
    goto LABEL_12;
  }

LABEL_16:
  if (!v60[0])
  {
LABEL_99:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v68, v60);
LABEL_100:
    v30 = *(v2 + 24);
    if (v30 <= 2)
    {
      if (!*(v2 + 24))
      {
        if (!*(v2 + 48))
        {
          v34 = *v4 / *v7;
          *v68 = v34;
          v69 = 0;
          *v60 = v34;
          v61 = 0;
          LOBYTE(v62[0]) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v57, v68);
          v32 = a2;
          *a2 = v34;
          *(a2 + 16) = 0;
          goto LABEL_149;
        }

LABEL_156:
        mpark::throw_bad_variant_access(v9);
      }

      if (v30 == 1)
      {
        if (*(v2 + 48) == 1)
        {
          v31 = *v4 / *v7;
          *v68 = v31;
          v69 = 1;
          *v60 = v31;
          v61 = 1;
          LOBYTE(v62[0]) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v57, v68);
          v32 = a2;
          *a2 = v31;
          *(a2 + 16) = 1;
LABEL_149:
          *(v32 + 24) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v68, v60);
          goto LABEL_150;
        }

        goto LABEL_156;
      }

      if (v30 == 2)
      {
        if (*(v2 + 48) == 2)
        {
          v37 = *v4 / *v7;
          v68[0] = *&v37;
          v69 = 2;
          *v60 = v37;
          v61 = 2;
          LOBYTE(v62[0]) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v57, v68);
          v32 = a2;
          *a2 = v37;
          *(a2 + 16) = 2;
          goto LABEL_149;
        }

        goto LABEL_156;
      }

      goto LABEL_162;
    }

    switch(v30)
    {
      case 5u:
        if (*(v2 + 48) != 5)
        {
          goto LABEL_156;
        }

        v35 = *v7;
        if (!*v7 || (v36 = *(v2 + 1), v36 == 0x8000000000000000) && v35 == -1)
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v50 = v68[0];
LABEL_145:
          *a2 = v50;
          *(a2 + 24) = 1;
          goto LABEL_150;
        }

        v51 = v36 / v35;
        v68[0] = (v36 / v35);
        v52 = 5;
        v69 = 5;
        v60[0] = v36 / v35;
        v61 = 5;
        LOBYTE(v62[0]) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v57, v68);
        v32 = a2;
        *a2 = v51;
        break;
      case 4u:
        if (*(v2 + 48) != 4)
        {
          goto LABEL_156;
        }

        if (*v7)
        {
          v33 = v2[2] / *v7;
          LODWORD(v68[0]) = v33;
          v69 = 4;
          LODWORD(v60[0]) = v33;
          v61 = 4;
          LOBYTE(v62[0]) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v57, v68);
          *a2 = v33;
          *(a2 + 16) = 4;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v68, v60);
          *(a2 + 24) = 0;
          goto LABEL_150;
        }

LABEL_144:
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v50 = v60[0];
        goto LABEL_145;
      case 3u:
        if (*(v2 + 48) != 3)
        {
          goto LABEL_156;
        }

        v38 = *v7;
        if (!*v7)
        {
          goto LABEL_144;
        }

        v39 = v2[2];
        if (v39 == 0x80000000 && v38 == NAN)
        {
          goto LABEL_144;
        }

        v53 = v39 / SLODWORD(v38);
        LODWORD(v68[0]) = v39 / SLODWORD(v38);
        v52 = 3;
        v69 = 3;
        LODWORD(v60[0]) = v39 / SLODWORD(v38);
        v61 = 3;
        LOBYTE(v62[0]) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v57, v68);
        v32 = a2;
        *a2 = v53;
        break;
      default:
LABEL_162:
        __break(0xC471u);
LABEL_163:
        JUMPOUT(0x22582BFECLL);
    }

    *(v32 + 16) = v52;
    goto LABEL_149;
  }

  v10 = *v60[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v68, v60);
  if (!v10)
  {
    goto LABEL_100;
  }

  v11 = WTF::fastMalloc((24 * v10 + 8));
  *v11 = v10;
  v12 = v11 + 2;
  v13 = 24;
  bzero(v11 + 2, 24 * ((24 * v10 - 24) / 0x18uLL) + 24);
  v14 = 0;
  LODWORD(v60[0]) = 0;
  v61 = 0;
  LODWORD(v62[0]) = 0;
  v63 = 0;
  v15 = *a2;
  v54 = *(a2 + 24);
  do
  {
    v16 = v65;
    if (v65 == 8)
    {
      if (v14 >= *v64[0])
      {
        goto LABEL_157;
      }

      v17 = (v64[0] + v13 - 16);
      v16 = *(v64[0] + v13);
      if (v61 == 255)
      {
        if (v16 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v16 == 255)
      {
        goto LABEL_26;
      }

      v68[0] = v60;
    }

    else
    {
      if (v61 == 255)
      {
        if (v65 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v65 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v68, v60);
        v61 = -1;
        goto LABEL_32;
      }

      v68[0] = v60;
      v17 = v64;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v16, v68, v60, v17);
LABEL_32:
    v18 = v67;
    if (v67 == 8)
    {
      if (v14 >= *v66[0])
      {
LABEL_157:
        *a2 = v15;
        *(a2 + 24) = v54;
        __break(0xC471u);
        goto LABEL_163;
      }

      v19 = (v66[0] + v13 - 16);
      v18 = *(v66[0] + v13);
      if (v63 == 255)
      {
        if (v18 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v18 == 255)
      {
        goto LABEL_39;
      }

      v68[0] = v62;
    }

    else
    {
      if (v63 == 255)
      {
        if (v67 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v67 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v68, v62);
        v63 = -1;
        goto LABEL_45;
      }

      v68[0] = v62;
      v19 = v66;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v18, v68, v62, v19);
LABEL_45:
    if (v61 > 2u)
    {
      switch(v61)
      {
        case 3u:
          if (v63 != 3)
          {
            goto LABEL_155;
          }

          if (LODWORD(v62[0]) && (LODWORD(v60[0]) != 0x80000000 || LODWORD(v62[0]) != -1))
          {
            v28 = SLODWORD(v60[0]) / SLODWORD(v62[0]);
            LODWORD(v57[0]) = SLODWORD(v60[0]) / SLODWORD(v62[0]);
            v58 = 3;
            LODWORD(v68[0]) = SLODWORD(v60[0]) / SLODWORD(v62[0]);
            v69 = 3;
            v70 = 0;
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v57);
            LODWORD(v57[0]) = v28;
            v58 = 3;
            goto LABEL_70;
          }

          v18 = WTF::StringImpl::createWithoutCopyingNonEmpty();
          v57[0] = v68[0];
          v59 = 1;
          v24 = 1;
          break;
        case 4u:
          if (v63 != 4)
          {
            goto LABEL_155;
          }

          if (LODWORD(v62[0]))
          {
            v22 = LODWORD(v60[0]) / LODWORD(v62[0]);
            LODWORD(v57[0]) = LODWORD(v60[0]) / LODWORD(v62[0]);
            v58 = 4;
            LODWORD(v68[0]) = LODWORD(v60[0]) / LODWORD(v62[0]);
            v69 = 4;
            v70 = 0;
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v57);
            LODWORD(v57[0]) = v22;
            v58 = 4;
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v68);
            v24 = 0;
            v59 = 0;
            goto LABEL_55;
          }

          v18 = WTF::StringImpl::createWithoutCopyingNonEmpty();
          v57[0] = v68[0];
          v24 = 1;
          v59 = 1;
          break;
        case 5u:
          if (v63 != 5)
          {
LABEL_155:
            *a2 = v15;
            *(a2 + 24) = v54;
            mpark::throw_bad_variant_access(v18);
          }

          if (v62[0] && (v60[0] != 0x8000000000000000 || v62[0] != -1))
          {
            v29 = v60[0] / v62[0];
            v57[0] = (v60[0] / v62[0]);
            v58 = 5;
            v68[0] = (v60[0] / v62[0]);
            v69 = 5;
            v70 = 0;
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v57);
            v57[0] = v29;
            v58 = 5;
            goto LABEL_70;
          }

          v18 = WTF::StringImpl::createWithoutCopyingNonEmpty();
          v59 = 1;
          v24 = 1;
          break;
        default:
LABEL_161:
          *a2 = v15;
          *(a2 + 24) = v54;
          __break(0xC471u);
          JUMPOUT(0x22582C08CLL);
      }

LABEL_83:
      if (v24 != 1)
      {
        goto LABEL_155;
      }

      v15 = v57[0];
      if (v57[0])
      {
        atomic_fetch_add_explicit(v57[0], 2u, memory_order_relaxed);
      }

      v54 = 1;
      goto LABEL_87;
    }

    if (v61)
    {
      if (v61 == 1)
      {
        if (v63 != 1)
        {
          goto LABEL_155;
        }

        v20 = *v60 / *v62;
        *v57 = *v60 / *v62;
        v21 = 1;
        v58 = 1;
        *v68 = *v60 / *v62;
        v69 = 1;
        v70 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v57);
        *v57 = v20;
      }

      else
      {
        if (v61 != 2)
        {
          goto LABEL_161;
        }

        if (v63 != 2)
        {
          goto LABEL_155;
        }

        v26 = *v60 / *v62;
        *v57 = *v60 / *v62;
        v21 = 2;
        v58 = 2;
        *v68 = *v60 / *v62;
        v69 = 2;
        v70 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v57);
        v57[0] = *&v26;
      }

      v58 = v21;
    }

    else
    {
      if (v63)
      {
        goto LABEL_155;
      }

      v25 = *v60 / *v62;
      *v57 = *v60 / *v62;
      v58 = 0;
      *v68 = *v60 / *v62;
      v69 = 0;
      v70 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v57);
      *v57 = v25;
      v58 = 0;
    }

LABEL_70:
    v59 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v68);
    v24 = v59;
    if (v59)
    {
      goto LABEL_83;
    }

LABEL_55:
    if (v14 >= *v11)
    {
      *a2 = v15;
      *(a2 + 24) = v54;
      __break(0xC471u);
      JUMPOUT(0x22582C05CLL);
    }

    if (LOBYTE(v11[v13 / 4]) == 255)
    {
      if (v58 == 255)
      {
        goto LABEL_87;
      }
    }

    else if (v58 == 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v68, v12);
      LOBYTE(v11[v13 / 4]) = -1;
      goto LABEL_87;
    }

    v68[0] = v12;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v58, v68, v12, v57);
LABEL_87:
    if (v59 != 255)
    {
      if (v59)
      {
        v27 = v57[0];
        v57[0] = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v23);
        }
      }

      else if (v58 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v68, v57);
      }
    }

    if (v24)
    {
      *a2 = v15;
      *(a2 + 24) = v54;
      if (v63 != 255)
      {
        goto LABEL_127;
      }

      goto LABEL_128;
    }

    ++v14;
    v12 += 24;
    v13 += 24;
  }

  while (v10 != v14);
  v43 = *v11;
  v44 = 24 * v43;
  v45 = WTF::fastMalloc((24 * v43 + 8));
  v46 = v45;
  *v45 = v43;
  if (v43)
  {
    v47 = (v45 + 6);
    v48 = (v11 + 6);
    do
    {
      *(v47 - 16) = 0;
      *v47 = -1;
      v49 = *v48;
      if (v49 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v49, v68, v47 - 2, v48 - 2);
        *v47 = *v48;
      }

      v47 += 3;
      v48 += 3;
      v44 -= 24;
    }

    while (v44);
  }

  v69 = 8;
  v68[0] = 0;
  *a2 = v46;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v57, v68);
  if (v63 != 255)
  {
LABEL_127:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v68, v62);
  }

LABEL_128:
  v63 = -1;
  if (v61 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v68, v60);
  }

  v40 = *v11;
  if (v40)
  {
    v41 = 24 * v40;
    v42 = v11 + 6;
    do
    {
      v23 = (v42 - 16);
      if (*v42 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v60, v23);
      }

      *v42 = -1;
      v42 += 24;
      v41 -= 24;
    }

    while (v41);
  }

  WTF::fastFree(v11, v23);
LABEL_150:
  if (v67 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v60, v66);
  }

  v67 = -1;
  if (v65 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v60, v64);
  }
}

void WGSL::constantModulo(int **a1@<X1>, uint64_t a2@<X8>)
{
  v85 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  if (!v3)
  {
    __break(0xC471u);
    JUMPOUT(0x22582CCECLL);
  }

  if (v3 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22582CD0CLL);
  }

  v4 = (v2 + 2);
  LOBYTE(v78[0]) = 0;
  v79 = -1;
  v5 = *(v2 + 24);
  if (v5 == 255)
  {
    v6 = 255;
  }

  else
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, __x, v78, v2 + 1);
    v6 = *(v2 + 24);
    v79 = *(v2 + 24);
  }

  v7 = (v2 + 8);
  LOBYTE(v80[0]) = 0;
  v81 = -1;
  v8 = *(v2 + 48);
  if (v8 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v8, __x, v80, v2 + 4);
    v81 = *(v2 + 48);
    v6 = v79;
  }

  LOBYTE(__x[0]) = 0;
  v75 = -1;
  if (v6 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v82, __x, v78), v75 = v79, v79 == 255))
  {
LABEL_12:
    LOBYTE(__x[0]) = 0;
    v75 = -1;
    v9 = v81;
    if (v81 == 255)
    {
      goto LABEL_100;
    }

    v9 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v81, v82, __x, v80);
    v75 = v81;
    if (v81 != 8)
    {
      if (v81 == 255)
      {
        goto LABEL_100;
      }

      goto LABEL_99;
    }

    goto LABEL_16;
  }

  if (v79 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, __x);
    goto LABEL_12;
  }

LABEL_16:
  if (!__x[0])
  {
LABEL_99:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, __x);
LABEL_100:
    v39 = *(v2 + 24);
    if (v39 <= 2)
    {
      if (!*(v2 + 24))
      {
        if (!*(v2 + 48))
        {
          v48 = fmodf(*v4, *v7);
          *v82 = v48;
          v83 = 0;
          *__x = v48;
          v75 = 0;
          LOBYTE(__y[0]) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v71, v82);
          v46 = a2;
          *a2 = v48;
          *(a2 + 16) = 0;
          goto LABEL_149;
        }

LABEL_156:
        mpark::throw_bad_variant_access(v9);
      }

      if (v39 == 1)
      {
        if (*(v2 + 48) == 1)
        {
          _H0 = *v4;
          _H1 = *v7;
          __asm
          {
            FCVT            S0, H0; float
            FCVT            S1, H1; float
          }

          _S0 = fmodf(_S0, _S1);
          __asm { FCVT            H8, S0 }

          LOWORD(v82[0]) = _H8;
          v83 = 1;
          LOWORD(__x[0]) = _H8;
          v75 = 1;
          LOBYTE(__y[0]) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v71, v82);
          v46 = a2;
          *a2 = _H8;
          *(a2 + 16) = 1;
LABEL_149:
          *(v46 + 24) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, __x);
          goto LABEL_150;
        }

        goto LABEL_156;
      }

      if (v39 == 2)
      {
        if (*(v2 + 48) == 2)
        {
          v51 = fmod(*v4, *v7);
          v82[0] = *&v51;
          v83 = 2;
          *__x = v51;
          v75 = 2;
          LOBYTE(__y[0]) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v71, v82);
          v46 = a2;
          *a2 = v51;
          *(a2 + 16) = 2;
          goto LABEL_149;
        }

        goto LABEL_156;
      }

      goto LABEL_162;
    }

    switch(v39)
    {
      case 5u:
        if (*(v2 + 48) != 5)
        {
          goto LABEL_156;
        }

        v49 = *v7;
        if (!*v7 || (v50 = *(v2 + 1), v50 == 0x8000000000000000) && v49 == NAN)
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v64 = v82[0];
LABEL_145:
          *a2 = v64;
          *(a2 + 24) = 1;
          goto LABEL_150;
        }

        v65 = v50 % *&v49;
        v82[0] = (v50 % *&v49);
        v66 = 5;
        v83 = 5;
        __x[0] = v50 % *&v49;
        v75 = 5;
        LOBYTE(__y[0]) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v71, v82);
        v46 = a2;
        *a2 = v65;
        break;
      case 4u:
        if (*(v2 + 48) != 4)
        {
          goto LABEL_156;
        }

        if (*v7)
        {
          v47 = v2[2] % *v7;
          LODWORD(v82[0]) = v47;
          v83 = 4;
          LODWORD(__x[0]) = v47;
          v75 = 4;
          LOBYTE(__y[0]) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v71, v82);
          *a2 = v47;
          *(a2 + 16) = 4;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, __x);
          *(a2 + 24) = 0;
          goto LABEL_150;
        }

LABEL_144:
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v64 = __x[0];
        goto LABEL_145;
      case 3u:
        if (*(v2 + 48) != 3)
        {
          goto LABEL_156;
        }

        v52 = *v7;
        if (!*v7)
        {
          goto LABEL_144;
        }

        v53 = v2[2];
        if (v53 == 0x80000000 && v52 == NAN)
        {
          goto LABEL_144;
        }

        v67 = v53 % SLODWORD(v52);
        LODWORD(v82[0]) = v53 % SLODWORD(v52);
        v66 = 3;
        v83 = 3;
        LODWORD(__x[0]) = v53 % SLODWORD(v52);
        v75 = 3;
        LOBYTE(__y[0]) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v71, v82);
        v46 = a2;
        *a2 = v67;
        break;
      default:
LABEL_162:
        __break(0xC471u);
LABEL_163:
        JUMPOUT(0x22582CCCCLL);
    }

    *(v46 + 16) = v66;
    goto LABEL_149;
  }

  v10 = *__x[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, __x);
  if (!v10)
  {
    goto LABEL_100;
  }

  v11 = WTF::fastMalloc((24 * v10 + 8));
  *v11 = v10;
  v12 = v11 + 2;
  v13 = 24;
  bzero(v11 + 2, 24 * ((24 * v10 - 24) / 0x18uLL) + 24);
  v14 = 0;
  LODWORD(__x[0]) = 0;
  v75 = 0;
  LODWORD(__y[0]) = 0;
  v77 = 0;
  v15 = *a2;
  v68 = *(a2 + 24);
  do
  {
    v16 = v79;
    if (v79 == 8)
    {
      if (v14 >= *v78[0])
      {
        goto LABEL_157;
      }

      v17 = (v78[0] + v13 - 16);
      v16 = *(v78[0] + v13);
      if (v75 == 255)
      {
        if (v16 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v16 == 255)
      {
        goto LABEL_26;
      }

      v82[0] = __x;
    }

    else
    {
      if (v75 == 255)
      {
        if (v79 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v79 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, __x);
        v75 = -1;
        goto LABEL_32;
      }

      v82[0] = __x;
      v17 = v78;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v16, v82, __x, v17);
LABEL_32:
    v18 = v81;
    if (v81 == 8)
    {
      if (v14 >= *v80[0])
      {
LABEL_157:
        *a2 = v15;
        *(a2 + 24) = v68;
        __break(0xC471u);
        goto LABEL_163;
      }

      v19 = (v80[0] + v13 - 16);
      v18 = *(v80[0] + v13);
      if (v77 == 255)
      {
        if (v18 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v18 == 255)
      {
        goto LABEL_39;
      }

      v82[0] = __y;
    }

    else
    {
      if (v77 == 255)
      {
        if (v81 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v81 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, __y);
        v77 = -1;
        goto LABEL_45;
      }

      v82[0] = __y;
      v19 = v80;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v18, v82, __y, v19);
LABEL_45:
    if (v75 > 2u)
    {
      switch(v75)
      {
        case 3u:
          if (v77 != 3)
          {
            goto LABEL_155;
          }

          if (LODWORD(__y[0]) && (LODWORD(__x[0]) != 0x80000000 || LODWORD(__y[0]) != -1))
          {
            v37 = SLODWORD(__x[0]) % SLODWORD(__y[0]);
            LODWORD(v71[0]) = SLODWORD(__x[0]) % SLODWORD(__y[0]);
            v72 = 3;
            LODWORD(v82[0]) = SLODWORD(__x[0]) % SLODWORD(__y[0]);
            v83 = 3;
            v84 = 0;
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v70, v71);
            LODWORD(v71[0]) = v37;
            v72 = 3;
            goto LABEL_70;
          }

          v18 = WTF::StringImpl::createWithoutCopyingNonEmpty();
          v71[0] = v82[0];
          v73 = 1;
          v33 = 1;
          break;
        case 4u:
          if (v77 != 4)
          {
            goto LABEL_155;
          }

          if (LODWORD(__y[0]))
          {
            v31 = LODWORD(__x[0]) % LODWORD(__y[0]);
            LODWORD(v71[0]) = LODWORD(__x[0]) % LODWORD(__y[0]);
            v72 = 4;
            LODWORD(v82[0]) = LODWORD(__x[0]) % LODWORD(__y[0]);
            v83 = 4;
            v84 = 0;
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v70, v71);
            LODWORD(v71[0]) = v31;
            v72 = 4;
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v70, v82);
            v33 = 0;
            v73 = 0;
            goto LABEL_55;
          }

          v18 = WTF::StringImpl::createWithoutCopyingNonEmpty();
          v71[0] = v82[0];
          v33 = 1;
          v73 = 1;
          break;
        case 5u:
          if (v77 != 5)
          {
LABEL_155:
            *a2 = v15;
            *(a2 + 24) = v68;
            mpark::throw_bad_variant_access(v18);
          }

          if (__y[0] && (__x[0] != 0x8000000000000000 || __y[0] != -1))
          {
            v38 = __x[0] % __y[0];
            v71[0] = (__x[0] % __y[0]);
            v72 = 5;
            v82[0] = (__x[0] % __y[0]);
            v83 = 5;
            v84 = 0;
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v70, v71);
            v71[0] = v38;
            v72 = 5;
            goto LABEL_70;
          }

          v18 = WTF::StringImpl::createWithoutCopyingNonEmpty();
          v73 = 1;
          v33 = 1;
          break;
        default:
LABEL_161:
          *a2 = v15;
          *(a2 + 24) = v68;
          __break(0xC471u);
          JUMPOUT(0x22582CD6CLL);
      }

LABEL_83:
      if (v33 != 1)
      {
        goto LABEL_155;
      }

      v15 = v71[0];
      if (v71[0])
      {
        atomic_fetch_add_explicit(v71[0], 2u, memory_order_relaxed);
      }

      v68 = 1;
      goto LABEL_87;
    }

    if (v75)
    {
      if (v75 == 1)
      {
        if (v77 != 1)
        {
          goto LABEL_155;
        }

        _H0 = __x[0];
        _H1 = __y[0];
        __asm
        {
          FCVT            S0, H0; float
          FCVT            S1, H1; float
        }

        _S0 = fmodf(_S0, _S1);
        __asm { FCVT            H8, S0 }

        LOWORD(v71[0]) = _H8;
        v30 = 1;
        v72 = 1;
        LOWORD(v82[0]) = _H8;
        v83 = 1;
        v84 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v70, v71);
        LOWORD(v71[0]) = _H8;
      }

      else
      {
        if (v75 != 2)
        {
          goto LABEL_161;
        }

        if (v77 != 2)
        {
          goto LABEL_155;
        }

        v35 = fmod(*__x, *__y);
        v71[0] = *&v35;
        v30 = 2;
        v72 = 2;
        v82[0] = *&v35;
        v83 = 2;
        v84 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v70, v71);
        v71[0] = *&v35;
      }

      v72 = v30;
    }

    else
    {
      if (v77)
      {
        goto LABEL_155;
      }

      v34 = fmodf(*__x, *__y);
      *v71 = v34;
      v72 = 0;
      *v82 = v34;
      v83 = 0;
      v84 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v70, v71);
      *v71 = v34;
      v72 = 0;
    }

LABEL_70:
    v73 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v70, v82);
    v33 = v73;
    if (v73)
    {
      goto LABEL_83;
    }

LABEL_55:
    if (v14 >= *v11)
    {
      *a2 = v15;
      *(a2 + 24) = v68;
      __break(0xC471u);
      JUMPOUT(0x22582CD3CLL);
    }

    if (LOBYTE(v11[v13 / 4]) == 255)
    {
      if (v72 == 255)
      {
        goto LABEL_87;
      }
    }

    else if (v72 == 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, v12);
      LOBYTE(v11[v13 / 4]) = -1;
      goto LABEL_87;
    }

    v82[0] = v12;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v72, v82, v12, v71);
LABEL_87:
    if (v73 != 255)
    {
      if (v73)
      {
        v36 = v71[0];
        v71[0] = 0;
        if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v32);
        }
      }

      else if (v72 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, v71);
      }
    }

    if (v33)
    {
      *a2 = v15;
      *(a2 + 24) = v68;
      if (v77 != 255)
      {
        goto LABEL_127;
      }

      goto LABEL_128;
    }

    ++v14;
    v12 += 24;
    v13 += 24;
  }

  while (v10 != v14);
  v57 = *v11;
  v58 = 24 * v57;
  v59 = WTF::fastMalloc((24 * v57 + 8));
  v60 = v59;
  *v59 = v57;
  if (v57)
  {
    v61 = (v59 + 6);
    v62 = (v11 + 6);
    do
    {
      *(v61 - 16) = 0;
      *v61 = -1;
      v63 = *v62;
      if (v63 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v63, v82, v61 - 2, v62 - 2);
        *v61 = *v62;
      }

      v61 += 3;
      v62 += 3;
      v58 -= 24;
    }

    while (v58);
  }

  v83 = 8;
  v82[0] = 0;
  *a2 = v60;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v71, v82);
  if (v77 != 255)
  {
LABEL_127:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, __y);
  }

LABEL_128:
  v77 = -1;
  if (v75 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v82, __x);
  }

  v54 = *v11;
  if (v54)
  {
    v55 = 24 * v54;
    v56 = v11 + 6;
    do
    {
      v32 = (v56 - 16);
      if (*v56 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(__x, v32);
      }

      *v56 = -1;
      v56 += 24;
      v55 -= 24;
    }

    while (v55);
  }

  WTF::fastFree(v11, v32);
LABEL_150:
  if (v81 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(__x, v80);
  }

  v81 = -1;
  if (v79 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(__x, v78);
  }
}

void WGSL::constantEqual(int **a1@<X1>, char *a2@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x22582D5FCLL);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22582D61CLL);
  }

  v5 = (v3 + 2);
  LOBYTE(v54[0]) = 0;
  v55 = -1;
  v6 = *(v3 + 24);
  if (v6 == 255)
  {
    v7 = 255;
  }

  else
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v44, v54, v3 + 1);
    v7 = *(v3 + 24);
    v55 = *(v3 + 24);
  }

  v8 = (v3 + 8);
  LOBYTE(v56[0]) = 0;
  v57 = -1;
  v9 = *(v3 + 48);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, v44, v56, v3 + 4);
    v57 = *(v3 + 48);
    v7 = v55;
  }

  LOBYTE(v44[0]) = 0;
  v45 = -1;
  if (v7 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v51, v44, v54), v45 = v55, v55 == 255))
  {
LABEL_12:
    LOBYTE(v44[0]) = 0;
    v45 = -1;
    v10 = v57;
    if (v57 == 255)
    {
      goto LABEL_98;
    }

    v10 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v57, v51, v44, v56);
    v45 = v57;
    if (v57 != 8)
    {
      if (v57 != 255)
      {
        goto LABEL_97;
      }

      goto LABEL_98;
    }

    goto LABEL_16;
  }

  if (v55 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v51, v44);
    goto LABEL_12;
  }

LABEL_16:
  if (!v44[0])
  {
LABEL_97:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v51, v44);
    goto LABEL_98;
  }

  v11 = *v44[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v51, v44);
  if (!v11)
  {
LABEL_98:
    v35 = *(v3 + 24);
    if (v35 <= 2)
    {
      if (!*(v3 + 24))
      {
        if (*(v3 + 48))
        {
          goto LABEL_144;
        }

        v36 = *v5 == *v8;
        goto LABEL_122;
      }

      if (v35 == 1)
      {
        if (*(v3 + 48) != 1)
        {
          goto LABEL_144;
        }

        v36 = *v5 == *v8;
        goto LABEL_122;
      }

      if (v35 == 2)
      {
        if (*(v3 + 48) != 2)
        {
          goto LABEL_144;
        }

        v36 = *v5 == *v8;
        goto LABEL_122;
      }
    }

    else if (*(v3 + 24) > 4u)
    {
      if (v35 == 5)
      {
        if (*(v3 + 48) != 5)
        {
          goto LABEL_144;
        }

        v36 = *v5 == *v8;
        goto LABEL_122;
      }

      if (v35 == 6)
      {
        if (*(v3 + 48) != 6)
        {
          goto LABEL_144;
        }

        LODWORD(v37) = *v5;
        LODWORD(v38) = *v8;
        goto LABEL_121;
      }
    }

    else
    {
      if (v35 == 3)
      {
        if (*(v3 + 48) != 3)
        {
LABEL_144:
          mpark::throw_bad_variant_access(v10);
        }

        goto LABEL_117;
      }

      if (v35 == 4)
      {
        if (*(v3 + 48) != 4)
        {
          goto LABEL_144;
        }

LABEL_117:
        v37 = *v5;
        v38 = *v8;
LABEL_121:
        v36 = LODWORD(v37) == LODWORD(v38);
LABEL_122:
        v39 = v36;
        LOBYTE(v44[0]) = v39;
        v45 = 6;
        *a2 = v39;
        a2[16] = 6;
        a2[24] = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v51, v44);
        if (v57 == 255)
        {
          goto LABEL_127;
        }

LABEL_126:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v56);
        goto LABEL_127;
      }
    }

    __break(0xC471u);
LABEL_151:
    JUMPOUT(0x22582D5DCLL);
  }

  v12 = WTF::fastMalloc((24 * v11 + 8));
  *v12 = v11;
  v13 = v12 + 2;
  v14 = 24;
  bzero(v12 + 2, 24 * ((24 * v11 - 24) / 0x18uLL) + 24);
  v15 = 0;
  v45 = 0;
  LODWORD(v46[0]) = 0;
  v47 = 0;
  v16 = *a2;
  v43 = a2[24];
  LODWORD(v44[0]) = 0;
  do
  {
    v17 = v55;
    if (v55 == 8)
    {
      if (v15 >= *v54[0])
      {
        goto LABEL_145;
      }

      v18 = (v54[0] + v14 - 16);
      v17 = *(v54[0] + v14);
      if (v45 == 255)
      {
        if (v17 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v17 == 255)
      {
        goto LABEL_26;
      }

      v51[0] = v44;
    }

    else
    {
      if (v45 == 255)
      {
        if (v55 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v55 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v51, v44);
        v45 = -1;
        goto LABEL_32;
      }

      v51[0] = v44;
      v18 = v54;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v51, v44, v18);
LABEL_32:
    v19 = v57;
    if (v57 == 8)
    {
      if (v15 >= *v56[0])
      {
LABEL_145:
        *a2 = v16;
        a2[24] = v43;
        __break(0xC471u);
        goto LABEL_151;
      }

      v20 = (v56[0] + v14 - 16);
      v19 = *(v56[0] + v14);
      if (v47 == 255)
      {
        if (v19 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v19 == 255)
      {
        goto LABEL_39;
      }

      v51[0] = v46;
    }

    else
    {
      if (v47 == 255)
      {
        if (v57 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v57 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v51, v46);
        v47 = -1;
        goto LABEL_45;
      }

      v51[0] = v46;
      v20 = v56;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v19, v51, v46, v20);
LABEL_45:
    if (v45 <= 2u)
    {
      if (v45)
      {
        if (v45 == 1)
        {
          if (v47 != 1)
          {
            goto LABEL_143;
          }

          v21 = *v44 == *v46;
        }

        else
        {
          if (v45 != 2)
          {
            goto LABEL_148;
          }

          if (v47 != 2)
          {
            goto LABEL_143;
          }

          v21 = *v44 == *v46;
        }
      }

      else
      {
        if (v47)
        {
          goto LABEL_143;
        }

        v21 = *v44 == *v46;
      }
    }

    else
    {
      if (v45 <= 4u)
      {
        if (v45 == 3)
        {
          if (v47 != 3)
          {
            goto LABEL_143;
          }
        }

        else
        {
          if (v45 != 4)
          {
            goto LABEL_148;
          }

          if (v47 != 4)
          {
            goto LABEL_143;
          }
        }

        v22 = v44[0];
        v23 = v46[0];
LABEL_68:
        v21 = v22 == v23;
        goto LABEL_69;
      }

      if (v45 != 5)
      {
        if (v45 != 6)
        {
LABEL_148:
          *a2 = v16;
          a2[24] = v43;
          __break(0xC471u);
          JUMPOUT(0x22582D648);
        }

        if (v47 != 6)
        {
LABEL_143:
          *a2 = v16;
          a2[24] = v43;
          mpark::throw_bad_variant_access(v19);
        }

        v22 = LOBYTE(v44[0]);
        v23 = LOBYTE(v46[0]);
        goto LABEL_68;
      }

      if (v47 != 5)
      {
        goto LABEL_143;
      }

      v21 = v44[0] == v46[0];
    }

LABEL_69:
    v24 = v21;
    LOBYTE(v48[0]) = v24;
    v49 = 6;
    LOBYTE(v51[0]) = v24;
    v52 = 6;
    v53 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v50, v48);
    v26 = v53;
    if (v53)
    {
      if (v53 != 1)
      {
        goto LABEL_143;
      }

      v16 = v51[0];
      if (v51[0])
      {
        atomic_fetch_add_explicit(v51[0], 2u, memory_order_relaxed);
      }

      v43 = 1;
    }

    else
    {
      if (v15 >= *v12)
      {
        *a2 = v16;
        a2[24] = v43;
        __break(0xC471u);
        JUMPOUT(0x22582D674);
      }

      if (LOBYTE(v12[v14 / 4]) == 255)
      {
        if (v52 == 255)
        {
          goto LABEL_83;
        }
      }

      else if (v52 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v48, v13);
        LOBYTE(v12[v14 / 4]) = -1;
        goto LABEL_83;
      }

      v48[0] = v13;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v52, v48, v13, v51);
    }

LABEL_83:
    if (v53 != 255)
    {
      if (v53)
      {
        v27 = v51[0];
        v51[0] = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v25);
        }
      }

      else if (v52 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v48, v51);
      }
    }

    if (v26)
    {
      *a2 = v16;
      a2[24] = v43;
      if (v47 != 255)
      {
        goto LABEL_131;
      }

      goto LABEL_132;
    }

    ++v15;
    v13 += 24;
    v14 += 24;
  }

  while (v11 != v15);
  v28 = *v12;
  v29 = 24 * v28;
  v30 = WTF::fastMalloc((24 * v28 + 8));
  v31 = v30;
  *v30 = v28;
  if (v28)
  {
    v32 = (v30 + 6);
    v33 = (v12 + 6);
    do
    {
      *(v32 - 16) = 0;
      *v32 = -1;
      v34 = *v33;
      if (v34 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v34, v51, v32 - 2, v33 - 2);
        *v32 = *v33;
      }

      v32 += 3;
      v33 += 3;
      v29 -= 24;
    }

    while (v29);
  }

  v52 = 8;
  v51[0] = 0;
  *a2 = v31;
  a2[16] = 8;
  a2[24] = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v48, v51);
  if (v47 != 255)
  {
LABEL_131:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v51, v46);
  }

LABEL_132:
  v47 = -1;
  if (v45 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v51, v44);
  }

  v40 = *v12;
  if (v40)
  {
    v41 = 24 * v40;
    v42 = v12 + 6;
    do
    {
      v25 = (v42 - 16);
      if (*v42 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v25);
      }

      *v42 = -1;
      v42 += 24;
      v41 -= 24;
    }

    while (v41);
  }

  WTF::fastFree(v12, v25);
  if (v57 != 255)
  {
    goto LABEL_126;
  }

LABEL_127:
  v57 = -1;
  if (v55 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v54);
  }
}