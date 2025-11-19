WTF::StringImpl *WGSL::NameManglerVisitor::visit(WGSL::NameManglerVisitor *this, WGSL::AST::Variable *a2)
{
  WGSL::AST::Visitor::visit(this, a2);

  return WGSL::NameManglerVisitor::introduceVariable(this, a2 + 24, 2);
}

WTF::StringImpl *WGSL::NameManglerVisitor::visit(WGSL::NameManglerVisitor *this, WGSL::AST::VariableStatement *a2)
{
  v3 = *(a2 + 3);
  WGSL::AST::Visitor::visit(this, v3);

  return WGSL::NameManglerVisitor::introduceVariable(this, v3 + 24, 1);
}

uint64_t WGSL::NameManglerVisitor::visit(uint64_t this, WGSL::AST::IdentifierExpression *a2, const WTF::StringImpl *a3)
{
  v4 = this;
  v5 = *(this + 40);
  while (1)
  {
    v6 = v5[1];
    if (v6)
    {
      v7 = *(a2 + 11);
      if (v7 == -1 || !v7)
      {
        __break(0xC471u);
        JUMPOUT(0x225743958);
      }

      v8 = *(v6 - 8);
      v9 = *(v7 + 4);
      v10 = v9 < 0x100 ? WTF::StringImpl::hashSlowCase(v7) : v9 >> 8;
      for (i = 0; ; v10 = i + v12)
      {
        v12 = v10 & v8;
        v13 = v6 + 24 * (v10 & v8);
        this = *v13;
        if (*v13 != -1)
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

      v14 = v5[1];
      if (!v14 || v13 != v14 + 24 * *(v14 - 4))
      {
        break;
      }
    }

LABEL_16:
    v5 = *v5;
    if (!v5)
    {
      return this;
    }
  }

  v15 = *(v4 + 80);
  v16 = *(a2 + 9);
  v17 = *(a2 + 10);
  WGSL::MangledName::toString(&v21, (v13 + 8));
  v22[1] = v16;
  v22[2] = v17;
  v18 = v21;
  v21 = 0;
  v22[0] = off_2838D37C0;
  v23 = v18;
  WGSL::ShaderModule::replace<WGSL::AST::Identifier>(v15, a2 + 64, v22);
  v20 = v23;
  v22[0] = off_2838D37C0;
  v23 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v19);
  }

  this = v21;
  v21 = 0;
  if (this)
  {
    if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(this, v19);
    }
  }

  return this;
}

WTF::StringImpl *WGSL::NameManglerVisitor::visit(WTF::StringImpl *this, WGSL::AST::FieldAccessExpression *a2, const WTF::StringImpl *a3)
{
  v4 = this;
  if ((*(this + 32) & 1) == 0)
  {
    this = (*(*this + 216))(this, *(a2 + 8));
  }

  v5 = *(*(a2 + 8) + 24);
  if (v5)
  {
    v6 = *(v5 + 48);
    if (v6 == 10)
    {
      v5 = v5[1];
      if (!v5)
      {
        return this;
      }

      v6 = *(v5 + 48);
    }

    if (v6 == 11)
    {
      v5 = v5[1];
      if (!v5)
      {
        return this;
      }

      v6 = *(v5 + 48);
    }

    if (v6 == 4)
    {
      v7 = *(v4 + 11);
      if (v7)
      {
        v8 = *v5;
        if (v8 == -1)
        {
          __break(0xC471u);
          JUMPOUT(0x225743C2CLL);
        }

        if (!v8)
        {
          __break(0xC471u);
          JUMPOUT(0x225743C4CLL);
        }

        v9 = *(v7 - 8);
        v10 = (~(v8 << 32) + v8) ^ ((~(v8 << 32) + v8) >> 22);
        v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
        v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
        v13 = v9 & ((v12 >> 31) ^ v12);
        v14 = *(v7 + 16 * v13);
        if (v14 != v8)
        {
          v15 = 1;
          while (v14)
          {
            v13 = (v13 + v15) & v9;
            v14 = *(v7 + 16 * v13);
            ++v15;
            if (v14 == v8)
            {
              goto LABEL_20;
            }
          }

          v13 = *(v7 - 4);
        }

LABEL_20:
        if (v13 != *(v7 - 4))
        {
          v16 = *(a2 + 12);
          if (v16 == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x225743C6CLL);
          }

          if (v16)
          {
            v17 = v7 + 16 * v13;
            v20 = *(v17 + 8);
            v18 = (v17 + 8);
            v19 = v20;
            v21 = *(v20 - 8);
            v22 = *(v16 + 4);
            if (v22 < 0x100)
            {
              v23 = WTF::StringImpl::hashSlowCase(v16);
            }

            else
            {
              v23 = v22 >> 8;
            }

            for (i = 0; ; v23 = i + v25)
            {
              v25 = v23 & v21;
              v26 = v19 + 24 * (v23 & v21);
              v27 = *v26;
              if (*v26 != -1)
              {
                if (!v27)
                {
                  v26 = *v18 + 24 * *(*v18 - 4);
LABEL_33:
                  v28 = *(v4 + 10);
                  v29 = *(a2 + 10);
                  v30 = *(a2 + 11);
                  WGSL::MangledName::toString(&v34, (v26 + 8));
                  v35[1] = v29;
                  v35[2] = v30;
                  v31 = v34;
                  v34 = 0;
                  v35[0] = off_2838D37C0;
                  v36 = v31;
                  WGSL::ShaderModule::replace<WGSL::AST::Identifier>(v28, a2 + 72, v35);
                  v33 = v36;
                  v35[0] = off_2838D37C0;
                  v36 = 0;
                  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v33, v32);
                  }

                  this = v34;
                  v34 = 0;
                  if (this)
                  {
                    if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      return WTF::StringImpl::destroy(this, v32);
                    }
                  }

                  return this;
                }

                if (WTF::equal(v27, *(a2 + 12), a3))
                {
                  goto LABEL_33;
                }
              }

              ++i;
            }
          }
        }
      }

      __break(0xC471u);
      JUMPOUT(0x225743C0CLL);
    }
  }

  return this;
}

void WGSL::NameManglerVisitor::~NameManglerVisitor(WGSL::NameManglerVisitor *this, WTF::StringImpl *a2)
{
  WGSL::NameManglerVisitor::~NameManglerVisitor(this, a2);

  JUMPOUT(0x22AA68560);
}

{
  *this = &unk_2838D50C0;
  v3 = *(this + 11);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = (v3 + 16 * i);
        if (*v6 != -1)
        {
          v7 = v6[1];
          if (v7)
          {
            v8 = *(v7 - 4);
            if (v8)
            {
              v9 = v6[1];
              do
              {
                if (*v9 != -1)
                {
                  v10 = v9[2];
                  v9[2] = 0;
                  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v10, a2);
                  }

                  v11 = *v9;
                  *v9 = 0;
                  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v11, a2);
                  }
                }

                v9 += 3;
                --v8;
              }

              while (v8);
            }

            WTF::fastFree((v7 - 16), a2);
          }
        }
      }
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v12 = *(this + 8);
  *v12 = *(this + 9);
  v13 = *(v12 + 20);
  if (v13)
  {
    v14 = v13 - 1;
    std::unique_ptr<WGSL::ContextProvider<WGSL::MangledName>::Context,std::default_delete<WGSL::ContextProvider<WGSL::MangledName>::Context>>::~unique_ptr[abi:sn200100]((*(v12 + 8) + 8 * (v13 - 1)), a2);
    *(v12 + 20) = v14;
    v16 = *(this + 15);
    if (v16)
    {
      v17 = *(this + 6);
      v18 = 8 * v16;
      do
      {
        v17 = std::unique_ptr<WGSL::ContextProvider<WGSL::MangledName>::Context,std::default_delete<WGSL::ContextProvider<WGSL::MangledName>::Context>>::~unique_ptr[abi:sn200100](v17, v15) + 1;
        v18 -= 8;
      }

      while (v18);
    }

    v19 = *(this + 6);
    if (v19)
    {
      *(this + 6) = 0;
      *(this + 14) = 0;
      WTF::fastFree(v19, v15);
    }

    *this = &unk_2838D37E8;
    if (*(this + 32) == 1)
    {
      v20 = *(this + 1);
      *(this + 1) = 0;
      if (v20)
      {
        if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v15);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void WGSL::NameManglerVisitor::NameManglerVisitor(WGSL::NameManglerVisitor *this, WGSL::ShaderModule *a2)
{
  *this = &unk_2838D37E8;
  *(this + 8) = 0;
  *(this + 32) = 0;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = this + 40;
  *(this + 9) = 0;
  operator new();
}

void *std::unique_ptr<WGSL::ContextProvider<WGSL::MangledName>::Context,std::default_delete<WGSL::ContextProvider<WGSL::MangledName>::Context>>::~unique_ptr[abi:sn200100](void *result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    v3 = result;
    v4 = *(v2 + 8);
    if (v4)
    {
      v5 = *(v4 - 4);
      if (v5)
      {
        v6 = *(v2 + 8);
        do
        {
          if (*v6 != -1)
          {
            v7 = v6[2];
            v6[2] = 0;
            if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v7, a2);
            }

            v8 = *v6;
            *v6 = 0;
            if (v8)
            {
              if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v8, a2);
              }
            }
          }

          v6 += 3;
          --v5;
        }

        while (v5);
      }

      WTF::fastFree((v4 - 16), a2);
    }

    MEMORY[0x22AA68560](v2, 0x60C405C6656D0);
    return v3;
  }

  return result;
}

WTF::StringImpl **WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::MangledName>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::MangledName>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v7 = WTF::fastMalloc((24 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 24 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = 0;
    v13 = v5;
    while (1)
    {
      v14 = v4 + 24 * v11;
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
        {
          v18 = *a1;
          if (*a1)
          {
            v19 = *(v18 - 8);
            v20 = *(v15 + 4);
            if (v20 >= 0x100)
            {
              goto LABEL_21;
            }

LABEL_23:
            v21 = WTF::StringImpl::hashSlowCase(v15);
          }

          else
          {
            v19 = 0;
            v20 = *(v15 + 4);
            if (v20 < 0x100)
            {
              goto LABEL_23;
            }

LABEL_21:
            v21 = v20 >> 8;
          }

          v22 = 0;
          do
          {
            v23 = (v18 + 24 * (v21 & v19));
            v21 = ++v22 + (v21 & v19);
          }

          while (*v23);
          v24 = v23[2];
          v23[2] = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v8);
          }

          v25 = *v23;
          *v23 = 0;
          if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, v8);
          }

          v26 = *v14;
          *v14 = 0;
          *v23 = v26;
          v23[1] = *(v14 + 8);
          v27 = *(v14 + 16);
          *(v14 + 16) = 0;
          v23[2] = v27;
          v28 = *(v14 + 16);
          *(v14 + 16) = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v8);
          }

          v29 = *v14;
          *v14 = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v8);
          }

          if (v14 == a3)
          {
            v12 = v23;
          }

          goto LABEL_10;
        }

        v16 = *(v14 + 16);
        *(v14 + 16) = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v8);
        }

        v17 = *v14;
        *v14 = 0;
        if (v17)
        {
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v8);
          }
        }
      }

LABEL_10:
      if (++v11 == v13)
      {
        goto LABEL_39;
      }
    }
  }

  v12 = 0;
  result = 0;
  if (v4)
  {
LABEL_39:
    WTF::fastFree((v4 - 16), v8);
    return v12;
  }

  return result;
}

void *_ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST10IdentifierEEENS_9enable_ifIXsr3stdE12is_base_of_vINS5_4NodeET_EEvE4typeEPS9_OS9_EUlvE_NS_9allocatorISE_EEFvvEED1Ev(void *result, WTF::StringImpl *a2)
{
  *result = &unk_2838D5300;
  result[2] = off_2838D37C0;
  v2 = result[5];
  result[5] = 0;
  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v3 = result;
      WTF::StringImpl::destroy(v2, a2);
      return v3;
    }
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST10IdentifierEEENS_9enable_ifIXsr3stdE12is_base_of_vINS5_4NodeET_EEvE4typeEPS9_OS9_EUlvE_NS_9allocatorISE_EEFvvEED0Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D5300;
  a1[2] = off_2838D37C0;
  v3 = a1[5];
  a1[5] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  JUMPOUT(0x22AA68560);
}

uint64_t _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST10IdentifierEEENS_9enable_ifIXsr3stdE12is_base_of_vINS5_4NodeET_EEvE4typeEPS9_OS9_EUlvE_NS_9allocatorISE_EEFvvEE7__cloneEPNS0_6__baseISH_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D5300;
  *(a2 + 8) = v2;
  *(a2 + 16) = &unk_2838D3EF8;
  *(a2 + 24) = *(result + 24);
  *(a2 + 16) = off_2838D37C0;
  v3 = *(result + 40);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  }

  *(a2 + 40) = v3;
  return result;
}

WTF::StringImpl *_ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST10IdentifierEEENS_9enable_ifIXsr3stdE12is_base_of_vINS5_4NodeET_EEvE4typeEPS9_OS9_EUlvE_NS_9allocatorISE_EEFvvEE7destroyEv(uint64_t a1, WTF::StringImpl *a2)
{
  *(a1 + 16) = off_2838D37C0;
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, a2);
    }
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST10IdentifierEEENS_9enable_ifIXsr3stdE12is_base_of_vINS5_4NodeET_EEvE4typeEPS9_OS9_EUlvE_NS_9allocatorISE_EEFvvEE18destroy_deallocateEv(void *a1, WTF::StringImpl *a2)
{
  a1[2] = off_2838D37C0;
  v3 = a1[5];
  a1[5] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v4 = a1;
    WTF::StringImpl::destroy(v3, a2);
    a1 = v4;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST10IdentifierEEENS_9enable_ifIXsr3stdE12is_base_of_vINS5_4NodeET_EEvE4typeEPS9_OS9_EUlvE_NS_9allocatorISE_EEFvvEEclEv(uint64_t a1, WTF::StringImpl *a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
  v7 = v3;
  *(v2 + 8) = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  v5 = *(v2 + 24);
  *(v2 + 24) = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  result = v7;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v7, a2);
    }
  }

  return result;
}

void WTF::HashTable<WGSL::AST::Structure *,WTF::KeyValuePair<WGSL::AST::Structure *,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Structure *,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WGSL::AST::Structure *>,WTF::HashMap<WGSL::AST::Structure *,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WGSL::AST::Structure *>,WTF::HashTraits<WGSL::AST::Structure *>,WTF::HashTraits<WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Structure *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
    v5 = *(v3 - 12);
    v6 = 16 * a2;
    v8 = WTF::fastMalloc((v6 + 16));
    v9 = v8 + 4;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = 0;
  v5 = 0;
  v6 = 16 * a2;
  v8 = WTF::fastMalloc((v6 + 16));
  v9 = v8 + 4;
  if (a2)
  {
LABEL_3:
    bzero(v9, v6);
  }

LABEL_4:
  *a1 = v9;
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v5;
  if (v4)
  {
    v10 = 0;
    v11 = v4;
    do
    {
      v12 = (v3 + 16 * v10);
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
        {
          v19 = *a1;
          if (*a1)
          {
            v20 = *(v19 - 8);
          }

          else
          {
            v20 = 0;
          }

          v21 = (~(v13 << 32) + v13) ^ ((~(v13 << 32) + v13) >> 22);
          v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
          v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
          v24 = v20 & ((v23 >> 31) ^ v23);
          v25 = 1;
          do
          {
            v26 = v24;
            v27 = *(v19 + 16 * v24);
            v24 = (v24 + v25++) & v20;
          }

          while (v27);
          v28 = (v19 + 16 * v26);
          v29 = v28[1];
          if (v29)
          {
            v30 = *(v29 - 4);
            if (v30)
            {
              v31 = v28[1];
              do
              {
                if (*v31 != -1)
                {
                  v32 = v31[2];
                  v31[2] = 0;
                  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v32, v7);
                  }

                  v33 = *v31;
                  *v31 = 0;
                  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v33, v7);
                  }
                }

                v31 += 3;
                --v30;
              }

              while (v30);
            }

            WTF::fastFree((v29 - 16), v7);
            v13 = *v12;
          }

          *v28 = v13;
          v28[1] = 0;
          v34 = v12[1];
          v12[1] = 0;
          v28[1] = v34;
          v35 = v12[1];
          if (v35)
          {
            v36 = *(v35 - 4);
            if (v36)
            {
              v37 = v12[1];
              do
              {
                if (*v37 != -1)
                {
                  v38 = v37[2];
                  v37[2] = 0;
                  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v38, v7);
                  }

                  v39 = *v37;
                  *v37 = 0;
                  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v39, v7);
                  }
                }

                v37 += 3;
                --v36;
              }

              while (v36);
            }

            WTF::fastFree((v35 - 16), v7);
          }
        }

        else
        {
          v14 = v12[1];
          if (v14)
          {
            v15 = *(v14 - 1);
            if (v15)
            {
              v16 = v14;
              do
              {
                if (*v16 != -1)
                {
                  v17 = v16[2];
                  v16[2] = 0;
                  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v17, v7);
                  }

                  v18 = *v16;
                  *v16 = 0;
                  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v18, v7);
                  }
                }

                v16 += 3;
                --v15;
              }

              while (v15);
            }

            WTF::fastFree((v14 - 2), v7);
          }
        }
      }

      ++v10;
    }

    while (v10 != v11);
  }

  if (v3)
  {

    WTF::fastFree((v3 - 16), v7);
  }
}

WTF::StringImpl *WGSL::Metal::generateMetalCode@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, WTF::StringImpl **a5@<X8>)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 1;
  WTF::StringBuilder::append();
  v23 = 0;
  v24 = 0;
  v22 = &unk_2838D5B60;
  v25 = &v16;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 1;
  v32 = &v16;
  v33 = a1;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v38 = 0;
  v39 = 0;
  v40 = a2;
  v41 = a3;
  v42 = *a4;
  WGSL::Metal::FunctionDefinitionWriter::write(&v22);
  WGSL::Metal::FunctionDefinitionWriter::~FunctionDefinitionWriter(&v22, v10);
  if (atomic_load_explicit(&qword_28159C978, memory_order_acquire) != -1)
  {
    v21 = &v22;
    v22 = &v20;
    std::__call_once(&qword_28159C978, &v21, std::__call_once_proxy[abi:sn200100]<std::tuple<WGSL::Metal::dumpMetalCodeIfNeeded(WTF::StringBuilder &)::$_0 &&>>);
  }

  if (_MergedGlobals_5 == 1)
  {
    WTF::dataLog<char [22],char [2]>(v11);
    if (!v16)
    {
      WTF::StringBuilder::shrinkToFit(&v16);
      WTF::StringBuilder::reifyString(&v16);
    }

    WTF::dataLog<WTF::String,char [2]>(&v16);
  }

  v13 = v16;
  if (v16 || (WTF::StringBuilder::shrinkToFit(&v16), WTF::StringBuilder::reifyString(&v16), (v13 = v16) != 0))
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  *a5 = v13;
  v14 = v17;
  v17 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  result = v16;
  v16 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

uint64_t WTF::dataLog<char [22],char [2]>(WTF *a1)
{
  v1 = WTF::dataFile(a1);
  (*(*v1 + 32))(v1);
  WTF::printInternal();
  WTF::printInternal();
  v2 = *(*v1 + 40);

  return v2(v1);
}

uint64_t WTF::dataLog<WTF::String,char [2]>(WTF *a1)
{
  v1 = WTF::dataFile(a1);
  (*(*v1 + 32))(v1);
  WTF::printInternal();
  WTF::printInternal();
  v2 = *(*v1 + 40);

  return v2(v1);
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::write(WGSL::Metal::FunctionDefinitionWriter *this)
{
  WGSL::Metal::FunctionDefinitionWriter::emitNecessaryHelpers(this);
  v4 = *(this + 12);
  v5 = *(v4 + 76);
  if (v5)
  {
    v6 = *(v4 + 64);
    v7 = 8 * v5;
    do
    {
      v8 = *v6;
      if ((*(**v6 + 16))(*v6) == 54)
      {
        (*(*this + 72))(this, v8);
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
    v4 = *(this + 12);
    v9 = *(v4 + 76);
    if (v9)
    {
      v10 = *(v4 + 64);
      v11 = &v10[v9];
      v501 = xmmword_2258821C0;
      v502 = 0u;
      v500 = v11;
      while (1)
      {
        v12 = *v10;
        if ((*(**v10 + 16))(*v10) == 54 && *(v12 + 88) == 7 && WGSL::Type::isConstructible(*(v12 + 112)))
        {
          break;
        }

LABEL_8:
        if (++v10 == v11)
        {
          v4 = *(this + 12);
          goto LABEL_618;
        }
      }

      v13 = *(*(v12 + 96) + 48);
      if (v13)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      }

      v503 = v13;
      v14 = *(v12 + 48);
      v15 = *(this + 20);
      if (v14)
      {
        v16 = *(v14 + 4);
        if (v13)
        {
LABEL_16:
          v17 = *(v13 + 4);
          goto LABEL_19;
        }
      }

      else
      {
        v16 = 0;
        if (v13)
        {
          goto LABEL_16;
        }
      }

      v17 = 0;
LABEL_19:
      v18 = (4 * *(this + 26));
      v19 = (v18 | 2) + 11;
      if ((v18 | 2) >= 0xFFFFFFF5)
      {
        v19 = -1;
      }

      v56 = __CFADD__(v17, v19);
      v20 = v17 + v19;
      if (v56)
      {
        v20 = -1;
      }

      v56 = __CFADD__(v20, 8);
      v21 = v20 + 8;
      if (v56)
      {
        v21 = -1;
      }

      v56 = __CFADD__(v16, v21);
      v22 = v16 + v21;
      if (v56)
      {
        v22 = -1;
      }

      v56 = __CFADD__(v22, 38);
      v23 = v22 + 38;
      if (v56)
      {
        v23 = -1;
      }

      v56 = __CFADD__(v18, v23);
      v24 = v18 + v23;
      if (v56)
      {
        v24 = -1;
      }

      v56 = __CFADD__(v15, v24);
      v25 = v15 + v24;
      if (v56)
      {
        v26 = 0xFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      v27 = *(this + 9);
      if ((v27 || (v27 = *(this + 8)) != 0) && (*(v27 + 16) & 4) == 0 || v14 && (*(v14 + 16) & 4) == 0 || v13 && (*(v13 + 16) & 4) == 0)
      {
        v28 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
        if (!v28)
        {
          goto LABEL_125;
        }

        v30 = v28;
        v31 = v29;
        if (v18)
        {
          memset_pattern16(v28, aIneStateTLTAne, 2 * v18);
          v32 = v18;
          v33 = v501;
          v34 = v502;
          if (v31 < v18)
          {
            goto LABEL_662;
          }
        }

        else
        {
          v32 = 0;
          v33 = v501;
          v34 = v502;
        }

        v40 = &v30[2 * v32];
        *v40 = xmmword_225882180;
        *(v40 + 1) = xmmword_225882190;
        *(v40 + 2) = xmmword_2258821A0;
        *(v40 + 3) = xmmword_2258821B0;
        *(v40 + 8) = *&aIneStateTLTAne[8];
        *(v40 + 18) = 2097193;
        v41 = v31 - v32;
        if (v31 - v32 <= 0x25)
        {
          goto LABEL_662;
        }

        v42 = v40 + 76;
        v43 = v41 - 38;
        if (!v14)
        {
          v46 = 0;
          goto LABEL_93;
        }

        v44 = *(v14 + 8);
        v45 = *(v14 + 4);
        if ((*(v14 + 16) & 4) == 0)
        {
          if (v45)
          {
            if (v45 == 1)
            {
              *v42 = v44->i16[0];
            }

            else
            {
              memcpy(v42, v44, 2 * v45);
              v33 = v501;
              v34 = v502;
            }
          }

LABEL_92:
          v46 = *(v14 + 4);
          if (v43 < v46)
          {
            goto LABEL_662;
          }

LABEL_93:
          v70 = &v42[v46];
          *v70 = xmmword_2258821C0;
          v71 = v70 + 1;
          if (v43 - v46 <= 7)
          {
            goto LABEL_662;
          }

          v72 = v43 - v46 - 8;
          v501 = v33;
          v502 = v34;
          if (!v13)
          {
            v75 = 0;
LABEL_119:
            v91 = &v71[v75];
            *v91 = xmmword_2258821D0;
            *(v91 + 4) = 2687076;
            v91[10] = 10;
            v92 = v72 - v75;
            if (v92 <= 0xA)
            {
              goto LABEL_662;
            }

            v93 = v91 + 11;
            if (v18)
            {
              v94 = v92 - 11;
              memset_pattern16(v91 + 11, aIneStateTLTAne, 2 * v18);
              if (v94 < v18)
              {
                goto LABEL_662;
              }
            }

            else
            {
              v18 = 0;
            }

            *&v93[v18] = 655483;
LABEL_125:
            v95 = *(this + 26) + 1;
            *(this + 26) = v95;
            v96 = *(v12 + 48);
            v97 = *(this + 20);
            if (v96)
            {
LABEL_126:
              v98 = *(v96 + 4);
              goto LABEL_175;
            }

LABEL_174:
            v98 = 0;
LABEL_175:
            v129 = (4 * v95);
            v130 = v98 + 9;
            if (v98 >= 0xFFFFFFF7)
            {
              v130 = -1;
            }

            v56 = __CFADD__(v129, v130);
            v131 = v129 + v130;
            if (v56)
            {
              v131 = -1;
            }

            v56 = __CFADD__(v97, v131);
            v132 = v97 + v131;
            if (v56)
            {
              v133 = 0xFFFFFFFFLL;
            }

            else
            {
              v133 = v132;
            }

            v134 = *(this + 9);
            if ((v134 || (v134 = *(this + 8)) != 0) && (*(v134 + 16) & 4) == 0 || v96 && (*(v96 + 16) & 4) == 0)
            {
              v135 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
              v137 = v502;
              if (!v135)
              {
                goto LABEL_248;
              }

              v138 = v135;
              v139 = v136;
              if (v129)
              {
                memset_pattern16(v135, aIneStateTLTAne, 2 * v129);
                v137 = v502;
                if (v139 < v129)
                {
                  goto LABEL_662;
                }

                v140 = &v138[2 * v129];
                if (v96)
                {
LABEL_192:
                  v141 = *(v96 + 8);
                  v142 = *(v96 + 4);
                  if ((*(v96 + 16) & 4) == 0)
                  {
                    if (v142)
                    {
                      if (v142 == 1)
                      {
                        *v140 = v141->i16[0];
                      }

                      else
                      {
                        memcpy(v140, v141, 2 * v142);
                      }
                    }

LABEL_231:
                    v153 = *(v96 + 4);
                    if (v139 - v129 < v153)
                    {
                      goto LABEL_662;
                    }

                    goto LABEL_232;
                  }

                  if (v142 < 0x40)
                  {
                    v154 = v140;
                    v161 = &v140[2 * v142];
                    if (v140 == v161)
                    {
                      goto LABEL_231;
                    }
                  }

                  else
                  {
                    v154 = &v140[2 * (v142 & 0xFFFFFFC0)];
                    v155 = v140;
                    do
                    {
                      v516.val[0] = *v141;
                      v156 = v141[1];
                      v522.val[0] = v141[2];
                      v157 = v141[3];
                      v141 += 4;
                      v528.val[0] = v157;
                      v522.val[1] = v137;
                      v533.val[0] = v156;
                      v516.val[1] = v137;
                      v158 = v155;
                      vst2q_s8(v158, v516);
                      v158 += 32;
                      v528.val[1] = v137;
                      v533.val[1] = v137;
                      vst2q_s8(v158, v533);
                      v159 = v155 + 64;
                      vst2q_s8(v159, v522);
                      v160 = v155 + 96;
                      v155 += 128;
                      vst2q_s8(v160, v528);
                    }

                    while (v155 != v154);
                    v161 = &v140[2 * v142];
                    if (v154 == v161)
                    {
                      goto LABEL_231;
                    }
                  }

                  v163 = &v138[2 * v142 + 2 * v129 - v154 - 2];
                  if (v163 < 0xE || (v154 < v141->u64 + (v163 >> 1) + 1 ? (v164 = v141 >= v154 + (v163 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v164 = 1), !v164))
                  {
                    v167 = v141;
                    v168 = v154;
                    goto LABEL_228;
                  }

                  v165 = (v163 >> 1) + 1;
                  if (v163 >= 0x3E)
                  {
                    v166 = v165 & 0xFFFFFFFFFFFFFFE0;
                    v394 = (v154 + 32);
                    v395 = &v141[1];
                    v396 = v165 & 0xFFFFFFFFFFFFFFE0;
                    do
                    {
                      v397 = *v395[-2].i8;
                      v398 = vmovl_u8(*v395);
                      v399 = vmovl_high_u8(*v395->i8);
                      v394[-2] = vmovl_u8(*v397.i8);
                      v394[-1] = vmovl_high_u8(v397);
                      *v394 = v398;
                      v394[1] = v399;
                      v394 += 4;
                      v395 += 4;
                      v396 -= 32;
                    }

                    while (v396);
                    if (v165 == v166)
                    {
                      goto LABEL_231;
                    }

                    if ((v165 & 0x18) == 0)
                    {
                      v168 = (v154 + 2 * v166);
                      v167 = (v141 + v166);
                      goto LABEL_228;
                    }
                  }

                  else
                  {
                    v166 = 0;
                  }

                  v167 = (v141 + (v165 & 0xFFFFFFFFFFFFFFF8));
                  v168 = (v154 + 2 * (v165 & 0xFFFFFFFFFFFFFFF8));
                  v400 = (v154 + 2 * v166);
                  v401 = &v141->i8[v166];
                  v402 = v166 - (v165 & 0xFFFFFFFFFFFFFFF8);
                  do
                  {
                    v403 = *v401++;
                    *v400++ = vmovl_u8(v403);
                    v402 += 8;
                  }

                  while (v402);
                  if (v165 == (v165 & 0xFFFFFFFFFFFFFFF8))
                  {
                    goto LABEL_231;
                  }

                  do
                  {
LABEL_228:
                    v169 = v167->u8[0];
                    v167 = (v167 + 1);
                    *v168 = v169;
                    v168 += 2;
                  }

                  while (v168 != v161);
                  goto LABEL_231;
                }
              }

              else
              {
                v129 = 0;
                v140 = v135;
                if (v96)
                {
                  goto LABEL_192;
                }
              }

              v153 = 0;
LABEL_232:
              v170 = &v140[2 * v153];
              *v170 = xmmword_2258821E0;
              *(v170 + 8) = 10;
              goto LABEL_248;
            }

            v143 = MEMORY[0x22AA68210](this + 64, v133);
            if (!v143)
            {
              goto LABEL_248;
            }

            v145 = v143;
            v146 = v144;
            if (v129)
            {
              memset(v143, 32, v129);
              if (v146 < v129)
              {
                goto LABEL_662;
              }

              v147 = &v145[v129];
              if (v96)
              {
LABEL_200:
                v148 = *(v96 + 8);
                v149 = *(v96 + 4);
                if ((*(v96 + 16) & 4) != 0)
                {
                  if (v149)
                  {
                    if (v149 == 1)
                    {
                      *v147 = v148->i8[0];
                    }

                    else
                    {
                      memcpy(v147, v148, v149);
                    }
                  }

LABEL_246:
                  v162 = *(v96 + 4);
                  if (v146 - v129 < v162)
                  {
                    goto LABEL_662;
                  }

                  goto LABEL_247;
                }

                if (v149 < 0x10)
                {
                  v150 = v147;
                  v152 = &v147[v149];
                  if (v147 == &v147[v149])
                  {
                    goto LABEL_246;
                  }
                }

                else
                {
                  v150 = v147;
                  do
                  {
                    v151 = vld2q_s8(v148->i8);
                    v148 += 2;
                    *v150++ = v151;
                  }

                  while (v150 != &v147[v149 & 0xFFFFFFF0]);
                  v152 = &v147[v149];
                  if (v150 == &v147[v149])
                  {
                    goto LABEL_246;
                  }
                }

                v171 = &v145[v149 + v129];
                v172 = v171 - v150;
                if (v171 - v150 < 4 || (v150 < (v148 + 2 * v172) ? (v173 = v148 >= v171) : (v173 = 1), !v173))
                {
                  v175 = v150;
                  v176 = v148;
                  goto LABEL_243;
                }

                if (v172 >= 0x20)
                {
                  v174 = v172 & 0xFFFFFFFFFFFFFFE0;
                  v414 = v148 + 2;
                  v415 = (v150 + 1);
                  v416 = v172 & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v418 = v414[-2];
                    v417 = v414[-1];
                    v420 = *v414;
                    v419 = v414[1];
                    v414 += 4;
                    v415[-1] = vuzp1q_s8(v418, v417);
                    *v415 = vuzp1q_s8(v420, v419);
                    v415 += 2;
                    v416 -= 32;
                  }

                  while (v416);
                  if (v172 == v174)
                  {
                    goto LABEL_246;
                  }

                  if ((v172 & 0x1C) == 0)
                  {
                    v176 = (v148 + 2 * v174);
                    v175 = (v150 + v174);
                    goto LABEL_243;
                  }
                }

                else
                {
                  v174 = 0;
                }

                v175 = (v150 + (v172 & 0xFFFFFFFFFFFFFFFCLL));
                v176 = (v148 + 2 * (v172 & 0xFFFFFFFFFFFFFFFCLL));
                v421 = (v148 + 2 * v174);
                v422 = (v150 + v174);
                v423 = v174 - (v172 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v424 = *v421++;
                  *v422++ = vuzp1_s8(v424, v424).u32[0];
                  v423 += 4;
                }

                while (v423);
                if (v172 == (v172 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_246;
                }

                do
                {
LABEL_243:
                  v177 = v176->i8[0];
                  v176 = (v176 + 2);
                  *v175 = v177;
                  v175 = (v175 + 1);
                }

                while (v175 != v152);
                goto LABEL_246;
              }
            }

            else
            {
              v129 = 0;
              v147 = v143;
              if (v96)
              {
                goto LABEL_200;
              }
            }

            v162 = 0;
LABEL_247:
            v178 = &v147[v162];
            *v178 = *" packed;\n";
            v178[8] = 10;
LABEL_248:
            v179 = *(v12 + 84);
            if (v179)
            {
              v180 = *(v12 + 72);
              v181 = 8 * v179;
              do
              {
                v182 = *v180;
                if ((WGSL::Type::packing(*(*(*v180 + 104) + 24)) & 0xC) != 0)
                {
                  v512[0] = *(this + 26);
                  v510 = "packed.";
                  v511 = 7;
                  v506 = *(v182 + 48);
                  v507 = " = __pack(unpacked.";
                  v508 = 19;
                  v509 = v506;
                  v504 = ");\n";
                  v505 = 3;
                }

                else
                {
                  v512[0] = *(this + 26);
                  v510 = "packed.";
                  v511 = 7;
                  v506 = *(v182 + 48);
                  v507 = " = unpacked.";
                  v508 = 12;
                  v509 = v506;
                  v504 = ";\n";
                  v505 = 2;
                }

                WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), v512, &v510, &v509, &v507, &v506, &v504);
                ++v180;
                v181 -= 8;
              }

              while (v181);
            }

            LODWORD(v507) = *(this + 26);
            v510 = "return packed;\n";
            v511 = 15;
            WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v507, &v510);
            v183 = *(this + 26) - 1;
            *(this + 26) = v183;
            v184 = *(v12 + 48);
            v185 = *(this + 20);
            if (v503)
            {
              v186 = *(v503 + 1);
              if (v184)
              {
LABEL_256:
                v187 = *(v184 + 4);
                goto LABEL_259;
              }
            }

            else
            {
              v186 = 0;
              if (v184)
              {
                goto LABEL_256;
              }
            }

            v187 = 0;
LABEL_259:
            v188 = (4 * v183);
            v189 = (v188 | 2) + 9;
            if ((v188 | 2) >= 0xFFFFFFF7)
            {
              v189 = -1;
            }

            v56 = __CFADD__(v187, v189);
            v190 = v187 + v189;
            if (v56)
            {
              v190 = -1;
            }

            v56 = __CFADD__(v190, 10);
            v191 = v190 + 10;
            if (v56)
            {
              v191 = -1;
            }

            v56 = __CFADD__(v186, v191);
            v192 = v186 + v191;
            if (v56)
            {
              v192 = -1;
            }

            v56 = __CFADD__(v192, 7);
            v193 = v192 + 7;
            if (v56)
            {
              v193 = -1;
            }

            v56 = __CFADD__(v188, v193);
            v194 = v188 + v193;
            if (v56)
            {
              v194 = -1;
            }

            v56 = __CFADD__(v194, 3);
            v195 = v194 + 3;
            if (v56)
            {
              v195 = -1;
            }

            v56 = __CFADD__(v188, v195);
            v196 = v188 + v195;
            if (v56)
            {
              v196 = -1;
            }

            v56 = __CFADD__(v185, v196);
            v197 = v185 + v196;
            if (v56)
            {
              v198 = 0xFFFFFFFFLL;
            }

            else
            {
              v198 = v197;
            }

            v199 = *(this + 9);
            if ((v199 || (v199 = *(this + 8)) != 0) && (*(v199 + 16) & 4) == 0 || v503 && (*(v503 + 16) & 4) == 0 || v184 && (*(v184 + 16) & 4) == 0)
            {
              v200 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
              if (!v200)
              {
                goto LABEL_377;
              }

              v202 = v200;
              v203 = v201;
              if (v188)
              {
                memset_pattern16(v200, aIneStateTLTAne, 2 * v188);
                v204 = v203 - v188;
                if (v203 < v188)
                {
                  goto LABEL_662;
                }

                v202 += v188;
                *v202 = 655485;
                v202[2] = 10;
                if (v204 <= 2)
                {
                  goto LABEL_662;
                }

                v205 = v204 - 3;
                memset_pattern16(v202 + 3, aIneStateTLTAne, 2 * v188);
                if (v205 < v188)
                {
                  goto LABEL_662;
                }

                v206 = v188;
              }

              else
              {
                *v200 = 655485;
                v200[2] = 10;
                v205 = v201 - 3;
                if (v201 < 3)
                {
                  goto LABEL_662;
                }

                v206 = 0;
              }

              v215 = &v202[v206];
              *(v215 + 3) = *&aIneStateTLTAne[12];
              *(v215 + 7) = 6488169;
              v215[9] = 32;
              v216 = v502;
              if (v205 - v206 <= 6)
              {
                goto LABEL_662;
              }

              v217 = v215 + 10;
              v218 = v205 - v206 - 7;
              if (!v503)
              {
                v221 = 0;
                goto LABEL_345;
              }

              v219 = *(v503 + 1);
              v220 = *(v503 + 1);
              if ((*(v503 + 16) & 4) == 0)
              {
                if (v220)
                {
                  if (v220 == 1)
                  {
                    *v217 = v219->i16[0];
                  }

                  else
                  {
                    memcpy(v217, v219, 2 * v220);
                    v216 = v502;
                  }
                }

LABEL_344:
                v221 = *(v503 + 1);
                if (v218 < v221)
                {
                  goto LABEL_662;
                }

LABEL_345:
                v244 = &v217[v221];
                *v244 = xmmword_2258821F0;
                *(v244 + 4) = 2621547;
                if (v218 - v221 <= 9)
                {
                  goto LABEL_662;
                }

                v245 = v244 + 10;
                v246 = v218 - v221 - 10;
                if (!v184)
                {
                  v249 = 0;
LABEL_371:
                  v265 = &v245[v249];
                  *v265 = 32;
                  *(v265 + 1) = xmmword_225882200;
                  v266 = v246 - v249;
                  if (v266 <= 8)
                  {
                    goto LABEL_662;
                  }

                  v267 = v265 + 9;
                  if (v188)
                  {
                    v268 = v266 - 9;
                    memset_pattern16(v265 + 9, aIneStateTLTAne, 2 * v188);
                    if (v268 < v188)
                    {
                      goto LABEL_662;
                    }
                  }

                  else
                  {
                    v188 = 0;
                  }

                  *&v267[v188] = 655483;
LABEL_377:
                  v269 = *(this + 26) + 1;
                  *(this + 26) = v269;
                  v270 = v503;
                  v271 = *(this + 20);
                  if (v503)
                  {
LABEL_378:
                    v272 = *(v270 + 1);
                    goto LABEL_427;
                  }

LABEL_426:
                  v272 = 0;
LABEL_427:
                  v299 = (4 * v269);
                  v300 = v272 + 11;
                  if (v272 >= 0xFFFFFFF5)
                  {
                    v300 = -1;
                  }

                  v56 = __CFADD__(v299, v300);
                  v301 = v299 + v300;
                  if (v56)
                  {
                    v301 = -1;
                  }

                  v56 = __CFADD__(v271, v301);
                  v302 = v271 + v301;
                  if (v56)
                  {
                    v303 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v303 = v302;
                  }

                  v304 = *(this + 9);
                  if ((v304 || (v304 = *(this + 8)) != 0) && (*(v304 + 16) & 4) == 0 || v270 && (*(v270 + 16) & 4) == 0)
                  {
                    v305 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
                    if (v305)
                    {
                      v307 = v305;
                      v308 = v306;
                      if (v299)
                      {
                        memset_pattern16(v305, aIneStateTLTAne, 2 * v299);
                        if (v308 < v299)
                        {
                          goto LABEL_662;
                        }

                        v309 = &v307[2 * v299];
                        if (v270)
                        {
LABEL_444:
                          v310 = *(v270 + 1);
                          v311 = *(v270 + 1);
                          if ((*(v270 + 16) & 4) == 0)
                          {
                            if (v311)
                            {
                              if (v311 == 1)
                              {
                                *v309 = v310->i16[0];
                              }

                              else
                              {
                                memcpy(v309, v310, 2 * v311);
                              }
                            }

LABEL_483:
                            v322 = *(v270 + 1);
                            if (v308 - v299 < v322)
                            {
                              goto LABEL_662;
                            }

                            goto LABEL_484;
                          }

                          if (v311 < 0x40)
                          {
                            v323 = v309;
                            v330 = &v309[2 * v311];
                            if (v309 == v330)
                            {
                              goto LABEL_483;
                            }
                          }

                          else
                          {
                            v323 = &v309[2 * (v311 & 0xFFFFFFC0)];
                            v324 = v309;
                            do
                            {
                              v519.val[0] = *v310;
                              v325 = v310[1];
                              v525.val[0] = v310[2];
                              v326 = v310[3];
                              v310 += 4;
                              v531.val[0] = v326;
                              v525.val[1] = v502;
                              v536.val[0] = v325;
                              v519.val[1] = v502;
                              v327 = v324;
                              vst2q_s8(v327, v519);
                              v327 += 32;
                              v531.val[1] = v502;
                              v536.val[1] = v502;
                              vst2q_s8(v327, v536);
                              v328 = v324 + 64;
                              vst2q_s8(v328, v525);
                              v329 = v324 + 96;
                              v324 += 128;
                              vst2q_s8(v329, v531);
                            }

                            while (v324 != v323);
                            v330 = &v309[2 * v311];
                            if (v323 == v330)
                            {
                              goto LABEL_483;
                            }
                          }

                          v332 = &v307[2 * v311 + 2 * v299 - v323 - 2];
                          if (v332 < 0xE || (v323 < v310->u64 + (v332 >> 1) + 1 ? (v333 = v310 >= v323 + (v332 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v333 = 1), !v333))
                          {
                            v336 = v310;
                            v337 = v323;
                            goto LABEL_480;
                          }

                          v334 = (v332 >> 1) + 1;
                          if (v332 >= 0x3E)
                          {
                            v335 = v334 & 0xFFFFFFFFFFFFFFE0;
                            v404 = (v323 + 32);
                            v405 = &v310[1];
                            v406 = v334 & 0xFFFFFFFFFFFFFFE0;
                            do
                            {
                              v407 = *v405[-2].i8;
                              v408 = vmovl_u8(*v405);
                              v409 = vmovl_high_u8(*v405->i8);
                              v404[-2] = vmovl_u8(*v407.i8);
                              v404[-1] = vmovl_high_u8(v407);
                              *v404 = v408;
                              v404[1] = v409;
                              v404 += 4;
                              v405 += 4;
                              v406 -= 32;
                            }

                            while (v406);
                            if (v334 == v335)
                            {
                              goto LABEL_483;
                            }

                            if ((v334 & 0x18) == 0)
                            {
                              v337 = (v323 + 2 * v335);
                              v336 = (v310 + v335);
                              goto LABEL_480;
                            }
                          }

                          else
                          {
                            v335 = 0;
                          }

                          v336 = (v310 + (v334 & 0xFFFFFFFFFFFFFFF8));
                          v337 = (v323 + 2 * (v334 & 0xFFFFFFFFFFFFFFF8));
                          v410 = (v323 + 2 * v335);
                          v411 = &v310->i8[v335];
                          v412 = v335 - (v334 & 0xFFFFFFFFFFFFFFF8);
                          do
                          {
                            v413 = *v411++;
                            *v410++ = vmovl_u8(v413);
                            v412 += 8;
                          }

                          while (v412);
                          if (v334 == (v334 & 0xFFFFFFFFFFFFFFF8))
                          {
                            goto LABEL_483;
                          }

                          do
                          {
LABEL_480:
                            v338 = v336->u8[0];
                            v336 = (v336 + 1);
                            *v337 = v338;
                            v337 += 2;
                          }

                          while (v337 != v330);
                          goto LABEL_483;
                        }
                      }

                      else
                      {
                        v299 = 0;
                        v309 = v305;
                        if (v270)
                        {
                          goto LABEL_444;
                        }
                      }

                      v322 = 0;
LABEL_484:
                      v339 = &v309[2 * v322];
                      *v339 = xmmword_2258821D0;
                      *(v339 + 4) = 3866724;
                      *(v339 + 10) = 10;
                    }

LABEL_500:
                    v348 = *(v12 + 84);
                    v11 = v500;
                    if (v348)
                    {
                      v349 = *(v12 + 72);
                      v350 = 8 * v348;
                      do
                      {
                        v352 = *v349;
                        if ((WGSL::Type::packing(*(*(*v349 + 104) + 24)) & 0xC) != 0)
                        {
                          v512[0] = *(this + 26);
                          v510 = "unpacked.";
                          v511 = 9;
                          v506 = *(v352 + 48);
                          v507 = " = __unpack(packed.";
                          v508 = 19;
                          v509 = v506;
                          v504 = ");\n";
                          v505 = 3;
                        }

                        else
                        {
                          v512[0] = *(this + 26);
                          v510 = "unpacked.";
                          v511 = 9;
                          v351 = *(v352 + 48);
                          v508 = 10;
                          v509 = v351;
                          v506 = v351;
                          v507 = " = packed.";
                          v504 = ";\n";
                          v505 = 2;
                        }

                        WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), v512, &v510, &v509, &v507, &v506, &v504);
                        ++v349;
                        v350 -= 8;
                      }

                      while (v350);
                    }

                    LODWORD(v507) = *(this + 26);
                    v510 = "return unpacked;\n";
                    v511 = 17;
                    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v507, &v510);
                    v353 = *(this + 26) - 1;
                    *(this + 26) = v353;
                    LODWORD(v507) = v353;
                    v510 = "}\n\n";
                    v511 = 3;
                    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v507, &v510);
                    if (v503 && atomic_fetch_add_explicit(v503, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v503, v2);
                    }

                    goto LABEL_8;
                  }

                  v312 = MEMORY[0x22AA68210](this + 64, v303);
                  if (!v312)
                  {
                    goto LABEL_500;
                  }

                  v314 = v312;
                  v315 = v313;
                  if (v299)
                  {
                    memset(v312, 32, v299);
                    if (v315 < v299)
                    {
                      goto LABEL_662;
                    }

                    v316 = &v314[v299];
                    if (v270)
                    {
LABEL_452:
                      v317 = *(v270 + 1);
                      v318 = *(v270 + 1);
                      if ((*(v270 + 16) & 4) != 0)
                      {
                        if (v318)
                        {
                          if (v318 == 1)
                          {
                            *v316 = v317->i8[0];
                          }

                          else
                          {
                            memcpy(v316, v317, v318);
                          }
                        }

LABEL_498:
                        v331 = *(v270 + 1);
                        if (v315 - v299 < v331)
                        {
                          goto LABEL_662;
                        }

                        goto LABEL_499;
                      }

                      if (v318 < 0x10)
                      {
                        v319 = v316;
                        v321 = &v316[v318];
                        if (v316 == &v316[v318])
                        {
                          goto LABEL_498;
                        }
                      }

                      else
                      {
                        v319 = v316;
                        do
                        {
                          v320 = vld2q_s8(v317->i8);
                          v317 += 2;
                          *v319++ = v320;
                        }

                        while (v319 != &v316[v318 & 0xFFFFFFF0]);
                        v321 = &v316[v318];
                        if (v319 == &v316[v318])
                        {
                          goto LABEL_498;
                        }
                      }

                      v340 = &v314[v318 + v299];
                      v341 = v340 - v319;
                      if (v340 - v319 < 4 || (v319 < (v317 + 2 * v341) ? (v342 = v317 >= v340) : (v342 = 1), !v342))
                      {
                        v344 = v319;
                        v345 = v317;
                        goto LABEL_495;
                      }

                      if (v341 >= 0x20)
                      {
                        v343 = v341 & 0xFFFFFFFFFFFFFFE0;
                        v425 = v317 + 2;
                        v426 = (v319 + 1);
                        v427 = v341 & 0xFFFFFFFFFFFFFFE0;
                        do
                        {
                          v429 = v425[-2];
                          v428 = v425[-1];
                          v431 = *v425;
                          v430 = v425[1];
                          v425 += 4;
                          v426[-1] = vuzp1q_s8(v429, v428);
                          *v426 = vuzp1q_s8(v431, v430);
                          v426 += 2;
                          v427 -= 32;
                        }

                        while (v427);
                        if (v341 == v343)
                        {
                          goto LABEL_498;
                        }

                        if ((v341 & 0x1C) == 0)
                        {
                          v345 = (v317 + 2 * v343);
                          v344 = (v319 + v343);
                          goto LABEL_495;
                        }
                      }

                      else
                      {
                        v343 = 0;
                      }

                      v344 = (v319 + (v341 & 0xFFFFFFFFFFFFFFFCLL));
                      v345 = (v317 + 2 * (v341 & 0xFFFFFFFFFFFFFFFCLL));
                      v432 = (v317 + 2 * v343);
                      v433 = (v319 + v343);
                      v434 = v343 - (v341 & 0xFFFFFFFFFFFFFFFCLL);
                      do
                      {
                        v435 = *v432++;
                        *v433++ = vuzp1_s8(v435, v435).u32[0];
                        v434 += 4;
                      }

                      while (v434);
                      if (v341 == (v341 & 0xFFFFFFFFFFFFFFFCLL))
                      {
                        goto LABEL_498;
                      }

                      do
                      {
LABEL_495:
                        v346 = v345->i8[0];
                        v345 = (v345 + 2);
                        *v344 = v346;
                        v344 = (v344 + 1);
                      }

                      while (v344 != v321);
                      goto LABEL_498;
                    }
                  }

                  else
                  {
                    v299 = 0;
                    v316 = v312;
                    if (v270)
                    {
                      goto LABEL_452;
                    }
                  }

                  v331 = 0;
LABEL_499:
                  v347 = &v316[v331];
                  *v347 = *" unpacked;\n";
                  *(v347 + 7) = 171664485;
                  goto LABEL_500;
                }

                v247 = *(v184 + 8);
                v248 = *(v184 + 4);
                if ((*(v184 + 16) & 4) == 0)
                {
                  if (v248)
                  {
                    if (v248 == 1)
                    {
                      *v245 = v247->i16[0];
                    }

                    else
                    {
                      memcpy(v245, v247, 2 * v248);
                    }
                  }

LABEL_370:
                  v249 = *(v184 + 4);
                  if (v246 < v249)
                  {
                    goto LABEL_662;
                  }

                  goto LABEL_371;
                }

                if (v248 < 0x40)
                {
                  v250 = (v244 + 10);
                  v257 = &v245[v248];
                  if (v245 == v257)
                  {
                    goto LABEL_370;
                  }
                }

                else
                {
                  v250 = &v245[v248 & 0xFFFFFFC0];
                  v251 = (v244 + 10);
                  do
                  {
                    v518.val[0] = *v247;
                    v252 = v247[1];
                    v524.val[0] = v247[2];
                    v253 = v247[3];
                    v247 += 4;
                    v530.val[0] = v253;
                    v524.val[1] = v216;
                    v535.val[0] = v252;
                    v518.val[1] = v216;
                    v254 = v251;
                    vst2q_s8(v254, v518);
                    v254 += 32;
                    v530.val[1] = v216;
                    v535.val[1] = v216;
                    vst2q_s8(v254, v535);
                    v255 = v251 + 64;
                    vst2q_s8(v255, v524);
                    v256 = v251 + 96;
                    v251 += 128;
                    vst2q_s8(v256, v530);
                  }

                  while (v251 != v250);
                  v257 = &v245[v248];
                  if (v250 == v257)
                  {
                    goto LABEL_370;
                  }
                }

                v258 = &v202[v221 + 19 + v248 + v206] - v250;
                if (v258 < 0xE || (v250 < v247->u64 + (v258 >> 1) + 1 ? (v259 = v247 >= v250 + (v258 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v259 = 1), !v259))
                {
                  v262 = v247;
                  v263 = v250;
                  goto LABEL_367;
                }

                v260 = (v258 >> 1) + 1;
                if (v258 >= 0x3E)
                {
                  v261 = v260 & 0xFFFFFFFFFFFFFFE0;
                  v384 = (v250 + 32);
                  v385 = &v247[1];
                  v386 = v260 & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v387 = *v385[-2].i8;
                    v388 = vmovl_u8(*v385);
                    v389 = vmovl_high_u8(*v385->i8);
                    v384[-2] = vmovl_u8(*v387.i8);
                    v384[-1] = vmovl_high_u8(v387);
                    *v384 = v388;
                    v384[1] = v389;
                    v384 += 4;
                    v385 += 4;
                    v386 -= 32;
                  }

                  while (v386);
                  if (v260 == v261)
                  {
                    goto LABEL_370;
                  }

                  if ((v260 & 0x18) == 0)
                  {
                    v263 = (v250 + 2 * v261);
                    v262 = (v247 + v261);
                    goto LABEL_367;
                  }
                }

                else
                {
                  v261 = 0;
                }

                v262 = (v247 + (v260 & 0xFFFFFFFFFFFFFFF8));
                v263 = (v250 + 2 * (v260 & 0xFFFFFFFFFFFFFFF8));
                v390 = (v250 + 2 * v261);
                v391 = &v247->i8[v261];
                v392 = v261 - (v260 & 0xFFFFFFFFFFFFFFF8);
                do
                {
                  v393 = *v391++;
                  *v390++ = vmovl_u8(v393);
                  v392 += 8;
                }

                while (v392);
                if (v260 == (v260 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_370;
                }

                do
                {
LABEL_367:
                  v264 = v262->u8[0];
                  v262 = (v262 + 1);
                  *v263++ = v264;
                }

                while (v263 != v257);
                goto LABEL_370;
              }

              if (v220 < 0x40)
              {
                v222 = (v215 + 10);
                v229 = &v217[v220];
                if (v217 == v229)
                {
                  goto LABEL_344;
                }
              }

              else
              {
                v222 = &v217[v220 & 0xFFFFFFC0];
                v223 = (v215 + 10);
                do
                {
                  v517.val[0] = *v219;
                  v224 = v219[1];
                  v523.val[0] = v219[2];
                  v225 = v219[3];
                  v219 += 4;
                  v529.val[0] = v225;
                  v523.val[1] = v502;
                  v534.val[0] = v224;
                  v517.val[1] = v502;
                  v226 = v223;
                  vst2q_s8(v226, v517);
                  v226 += 32;
                  v529.val[1] = v502;
                  v534.val[1] = v502;
                  vst2q_s8(v226, v534);
                  v227 = v223 + 64;
                  vst2q_s8(v227, v523);
                  v228 = v223 + 96;
                  v223 += 128;
                  vst2q_s8(v228, v529);
                }

                while (v223 != v222);
                v229 = &v217[v220];
                if (v222 == v229)
                {
                  goto LABEL_344;
                }
              }

              v230 = &v202[v220 + 9 + v206] - v222;
              if (v230 < 0xE || (v222 < v219->u64 + (v230 >> 1) + 1 ? (v231 = v219 >= v222 + (v230 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v231 = 1), !v231))
              {
                v234 = v219;
                v235 = v222;
                goto LABEL_328;
              }

              v232 = (v230 >> 1) + 1;
              if (v230 >= 0x3E)
              {
                v233 = v232 & 0xFFFFFFFFFFFFFFE0;
                v374 = (v222 + 32);
                v375 = &v219[1];
                v376 = v232 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v377 = *v375[-2].i8;
                  v378 = vmovl_u8(*v375);
                  v379 = vmovl_high_u8(*v375->i8);
                  v374[-2] = vmovl_u8(*v377.i8);
                  v374[-1] = vmovl_high_u8(v377);
                  *v374 = v378;
                  v374[1] = v379;
                  v374 += 4;
                  v375 += 4;
                  v376 -= 32;
                }

                while (v376);
                if (v232 == v233)
                {
                  goto LABEL_344;
                }

                if ((v232 & 0x18) == 0)
                {
                  v235 = (v222 + 2 * v233);
                  v234 = (v219 + v233);
                  goto LABEL_328;
                }
              }

              else
              {
                v233 = 0;
              }

              v234 = (v219 + (v232 & 0xFFFFFFFFFFFFFFF8));
              v235 = (v222 + 2 * (v232 & 0xFFFFFFFFFFFFFFF8));
              v380 = (v222 + 2 * v233);
              v381 = &v219->i8[v233];
              v382 = v233 - (v232 & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v383 = *v381++;
                *v380++ = vmovl_u8(v383);
                v382 += 8;
              }

              while (v382);
              if (v232 == (v232 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_344;
              }

              do
              {
LABEL_328:
                v236 = v234->u8[0];
                v234 = (v234 + 1);
                *v235++ = v236;
              }

              while (v235 != v229);
              goto LABEL_344;
            }

            v207 = MEMORY[0x22AA68210](this + 64, v198);
            if (!v207)
            {
              goto LABEL_377;
            }

            v209 = v207;
            v210 = v208;
            if (v188)
            {
              memset(v207, 32, v188);
              v211 = v210 - v188;
              if (v210 < v188)
              {
                goto LABEL_662;
              }

              v212 = &v209[v188];
              v212[2] = 10;
              *v212 = 2685;
              if (v211 <= 2)
              {
                goto LABEL_662;
              }

              v213 = v211 - 3;
              memset(v212 + 3, 32, v188);
              if (v213 < v188)
              {
                goto LABEL_662;
              }

              v214 = v188;
            }

            else
            {
              v207[2] = 10;
              *v207 = 2685;
              v213 = v208 - 3;
              if (v208 < 3)
              {
                goto LABEL_662;
              }

              v214 = 0;
              v212 = v207;
            }

            *&v212[v214 + 3] = 1952543859;
            *&v212[v214 + 6] = 543385972;
            if (v213 - v214 <= 6)
            {
              goto LABEL_662;
            }

            v237 = v213 - v214 - 7;
            v238 = &v212[v214 + 10];
            if (!v503)
            {
              v243 = 0;
              goto LABEL_394;
            }

            v239 = *(v503 + 1);
            v240 = *(v503 + 1);
            if ((*(v503 + 16) & 4) != 0)
            {
              if (v240)
              {
                if (v240 == 1)
                {
                  *v238 = v239->i8[0];
                }

                else
                {
                  memcpy(v238, v239, v240);
                }
              }
            }

            else
            {
              if (v240 < 0x10)
              {
                v241 = v238;
              }

              else
              {
                v241 = v238;
                do
                {
                  v242 = vld2q_s8(v239->i8);
                  v239 += 2;
                  *v241 = v242;
                  v241 += 16;
                }

                while (v241 != &v238[v240 & 0xFFFFFFF0]);
              }

              if (v241 != &v238[v240])
              {
                v273 = &v209[2 * v214 + v240 - v241 + 10];
                if (v273 < 4 || (v241 < v239[1].u64 + 4 * v214 + 2 * &v209[v240] - 2 * v241 + 4 ? (v274 = v239 >= &v209[2 * v214 + 10 + v240]) : (v274 = 1), !v274))
                {
                  v276 = v241;
                  v277 = v239;
                  goto LABEL_390;
                }

                if (v273 >= 0x20)
                {
                  v275 = v273 & 0xFFFFFFFFFFFFFFE0;
                  v458 = v239 + 2;
                  v459 = (v241 + 16);
                  v460 = v273 & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v462 = v458[-2];
                    v461 = v458[-1];
                    v464 = *v458;
                    v463 = v458[1];
                    v458 += 4;
                    v459[-1] = vuzp1q_s8(v462, v461);
                    *v459 = vuzp1q_s8(v464, v463);
                    v459 += 2;
                    v460 -= 32;
                  }

                  while (v460);
                  if (v273 == v275)
                  {
                    goto LABEL_393;
                  }

                  if ((v273 & 0x1C) == 0)
                  {
                    v277 = (v239 + 2 * v275);
                    v276 = (v241 + v275);
                    do
                    {
LABEL_390:
                      v278 = v277->i8[0];
                      v277 = (v277 + 2);
                      *v276++ = v278;
                    }

                    while (v276 != &v238[v240]);
                    goto LABEL_393;
                  }
                }

                else
                {
                  v275 = 0;
                }

                v276 = (v241 + (v273 & 0xFFFFFFFFFFFFFFFCLL));
                v277 = (v239 + 2 * (v273 & 0xFFFFFFFFFFFFFFFCLL));
                v465 = (v239 + 2 * v275);
                v466 = (v241 + v275);
                v467 = v275 - (v273 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v468 = *v465++;
                  *v466++ = vuzp1_s8(v468, v468).u32[0];
                  v467 += 4;
                }

                while (v467);
                if (v273 != (v273 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_390;
                }
              }
            }

LABEL_393:
            v243 = *(v503 + 1);
            if (v237 < v243)
            {
              goto LABEL_662;
            }

LABEL_394:
            v279 = &v238[v243];
            *v279 = *" __unpack(";
            *(v279 + 4) = 10347;
            if (v237 - v243 <= 9)
            {
              goto LABEL_662;
            }

            v280 = v237 - v243 - 10;
            v281 = v279 + 10;
            if (!v184)
            {
              v286 = 0;
              goto LABEL_420;
            }

            v282 = *(v184 + 8);
            v283 = *(v184 + 4);
            if ((*(v184 + 16) & 4) != 0)
            {
              if (v283)
              {
                if (v283 == 1)
                {
                  *v281 = v282->i8[0];
                }

                else
                {
                  memcpy(v279 + 10, v282, v283);
                }
              }
            }

            else
            {
              if (v283 < 0x10)
              {
                v284 = (v279 + 10);
              }

              else
              {
                v284 = (v279 + 10);
                do
                {
                  v285 = vld2q_s8(v282->i8);
                  v282 += 2;
                  *v284 = v285;
                  v284 += 16;
                }

                while (v284 != &v281[v283 & 0xFFFFFFF0]);
              }

              if (v284 != &v281[v283])
              {
                v287 = &v209[v243];
                v288 = &v209[2 * v214 + v243 + v283 - v284 + 20];
                if (v288 < 4 || ((v289 = &v287[v283], v284 < &v282[2].u64[1] + 4 * v214 + 2 * v289 - 2 * v284) ? (v290 = v282 >= v289 + 2 * v214 + 20) : (v290 = 1), !v290))
                {
                  v292 = v284;
                  v293 = v282;
                  goto LABEL_416;
                }

                if (v288 >= 0x20)
                {
                  v291 = v288 & 0xFFFFFFFFFFFFFFE0;
                  v469 = v282 + 2;
                  v470 = (v284 + 16);
                  v471 = v288 & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v473 = v469[-2];
                    v472 = v469[-1];
                    v475 = *v469;
                    v474 = v469[1];
                    v469 += 4;
                    v470[-1] = vuzp1q_s8(v473, v472);
                    *v470 = vuzp1q_s8(v475, v474);
                    v470 += 2;
                    v471 -= 32;
                  }

                  while (v471);
                  if (v288 == v291)
                  {
                    goto LABEL_419;
                  }

                  if ((v288 & 0x1C) == 0)
                  {
                    v293 = (v282 + 2 * v291);
                    v292 = (v284 + v291);
                    do
                    {
LABEL_416:
                      v294 = v293->i8[0];
                      v293 = (v293 + 2);
                      *v292++ = v294;
                    }

                    while (v292 != &v281[v283]);
                    goto LABEL_419;
                  }
                }

                else
                {
                  v291 = 0;
                }

                v292 = (v284 + (v288 & 0xFFFFFFFFFFFFFFFCLL));
                v293 = (v282 + 2 * (v288 & 0xFFFFFFFFFFFFFFFCLL));
                v476 = (v282 + 2 * v291);
                v477 = (v284 + v291);
                v478 = v291 - (v288 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v479 = *v476++;
                  *v477++ = vuzp1_s8(v479, v479).u32[0];
                  v478 += 4;
                }

                while (v478);
                if (v288 != (v288 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_416;
                }
              }
            }

LABEL_419:
            v286 = *(v184 + 4);
            if (v280 < v286)
            {
              goto LABEL_662;
            }

LABEL_420:
            v295 = v280 - v286;
            v296 = &v281[v286];
            *v296 = *" packed)\n";
            v296[8] = 10;
            if (v295 <= 8)
            {
              goto LABEL_662;
            }

            v297 = v296 + 9;
            if (v188)
            {
              v298 = v295 - 9;
              memset(v296 + 9, 32, v188);
              if (v298 < v188)
              {
                goto LABEL_662;
              }
            }

            else
            {
              v188 = 0;
            }

            *&v297[v188] = 2683;
            v269 = *(this + 26) + 1;
            *(this + 26) = v269;
            v270 = v503;
            v271 = *(this + 20);
            if (v503)
            {
              goto LABEL_378;
            }

            goto LABEL_426;
          }

          v73 = *(v13 + 8);
          v74 = *(v13 + 4);
          if ((*(v13 + 16) & 4) == 0)
          {
            if (v74)
            {
              if (v74 == 1)
              {
                *v71 = v73->i16[0];
              }

              else
              {
                memcpy(v71, v73, 2 * v74);
              }
            }

LABEL_118:
            v75 = *(v13 + 4);
            if (v72 < v75)
            {
              goto LABEL_662;
            }

            goto LABEL_119;
          }

          if (v74 < 0x40)
          {
            v76 = v71;
            v83 = &v71[v74];
            if (v71 == v83)
            {
              goto LABEL_118;
            }
          }

          else
          {
            v76 = &v71[v74 & 0xFFFFFFC0];
            v77 = v71;
            do
            {
              v515.val[0] = *v73;
              v78 = v73[1];
              v521.val[0] = v73[2];
              v79 = v73[3];
              v73 += 4;
              v527.val[0] = v79;
              v521.val[1] = v34;
              v532.val[0] = v78;
              v515.val[1] = v34;
              v80 = v77;
              vst2q_s8(v80, v515);
              v80 += 32;
              v527.val[1] = v34;
              v532.val[1] = v34;
              vst2q_s8(v80, v532);
              v81 = v77 + 64;
              vst2q_s8(v81, v521);
              v82 = v77 + 96;
              v77 += 128;
              vst2q_s8(v82, v527);
            }

            while (v77 != v76);
            v83 = &v71[v74];
            if (v76 == v83)
            {
              goto LABEL_118;
            }
          }

          v84 = &v30[2 * v46 + 2 * v74 + 2 * v32 - v76 + 90];
          if (v84 < 0xE || (v76 < v73->u64 + (v84 >> 1) + 1 ? (v85 = v73 >= v76 + (v84 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v85 = 1), !v85))
          {
            v88 = v73;
            v89 = v76;
            goto LABEL_115;
          }

          v86 = (v84 >> 1) + 1;
          if (v84 >= 0x3E)
          {
            v87 = v86 & 0xFFFFFFFFFFFFFFE0;
            v364 = (v76 + 32);
            v365 = &v73[1];
            v366 = v86 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v367 = *v365[-2].i8;
              v368 = vmovl_u8(*v365);
              v369 = vmovl_high_u8(*v365->i8);
              v364[-2] = vmovl_u8(*v367.i8);
              v364[-1] = vmovl_high_u8(v367);
              *v364 = v368;
              v364[1] = v369;
              v364 += 4;
              v365 += 4;
              v366 -= 32;
            }

            while (v366);
            if (v86 == v87)
            {
              goto LABEL_118;
            }

            if ((v86 & 0x18) == 0)
            {
              v89 = (v76 + 2 * v87);
              v88 = (v73 + v87);
              goto LABEL_115;
            }
          }

          else
          {
            v87 = 0;
          }

          v88 = (v73 + (v86 & 0xFFFFFFFFFFFFFFF8));
          v89 = (v76 + 2 * (v86 & 0xFFFFFFFFFFFFFFF8));
          v370 = (v76 + 2 * v87);
          v371 = &v73->i8[v87];
          v372 = v87 - (v86 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v373 = *v371++;
            *v370++ = vmovl_u8(v373);
            v372 += 8;
          }

          while (v372);
          if (v86 == (v86 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_118;
          }

          do
          {
LABEL_115:
            v90 = v88->u8[0];
            v88 = (v88 + 1);
            *v89++ = v90;
          }

          while (v89 != v83);
          goto LABEL_118;
        }

        if (v45 < 0x40)
        {
          v47 = (v40 + 76);
          v54 = &v42[v45];
          if (v42 == v54)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v47 = &v42[v45 & 0xFFFFFFC0];
          v48 = v40 + 76;
          do
          {
            v514.val[0] = *v44;
            v49 = v44[1];
            v520.val[0] = v44[2];
            v50 = v44[3];
            v44 += 4;
            v33 = v50;
            v520.val[1] = v34;
            v526.val[0] = v49;
            v514.val[1] = v34;
            v51 = v48;
            vst2q_s8(v51, v514);
            v51 += 32;
            v526.val[1] = v34;
            vst2q_s8(v51, v526);
            v52 = v48 + 64;
            vst2q_s8(v52, v520);
            v53 = v48 + 96;
            vst2q_s8(v53, *&v33);
            v48 += 128;
          }

          while (v48 != v47);
          v54 = &v42[v45];
          if (v47 == v54)
          {
            goto LABEL_92;
          }
        }

        v55 = &v30[2 * v45 + 2 * v32 - v47 + 74];
        if (v55 < 0xE || (v47 < v44->u64 + (v55 >> 1) + 1 ? (v56 = v44 >= v47 + (v55 & 0xFFFFFFFFFFFFFFFELL) + 2) : (v56 = 1), !v56))
        {
          v59 = v44;
          v60 = v47;
          goto LABEL_77;
        }

        v57 = (v55 >> 1) + 1;
        if (v55 >= 0x3E)
        {
          v58 = v57 & 0xFFFFFFFFFFFFFFE0;
          v354 = (v47 + 32);
          v355 = &v44[1];
          v356 = v57 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v357 = *v355[-2].i8;
            v358 = vmovl_u8(*v355);
            v359 = vmovl_high_u8(*v355->i8);
            v354[-2] = vmovl_u8(*v357.i8);
            v354[-1] = vmovl_high_u8(v357);
            *v354 = v358;
            v354[1] = v359;
            v354 += 4;
            v355 += 4;
            v356 -= 32;
          }

          while (v356);
          if (v57 == v58)
          {
            goto LABEL_92;
          }

          if ((v57 & 0x18) == 0)
          {
            v60 = (v47 + 2 * v58);
            v59 = (v44 + v58);
            goto LABEL_77;
          }
        }

        else
        {
          v58 = 0;
        }

        v59 = (v44 + (v57 & 0xFFFFFFFFFFFFFFF8));
        v60 = (v47 + 2 * (v57 & 0xFFFFFFFFFFFFFFF8));
        v360 = (v47 + 2 * v58);
        v361 = &v44->i8[v58];
        v362 = v58 - (v57 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v363 = *v361++;
          *v360++ = vmovl_u8(v363);
          v362 += 8;
        }

        while (v362);
        if (v57 == (v57 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_92;
        }

        do
        {
LABEL_77:
          v61 = v59->u8[0];
          v59 = (v59 + 1);
          *v60++ = v61;
        }

        while (v60 != v54);
        goto LABEL_92;
      }

      v35 = MEMORY[0x22AA68210](this + 64, v26);
      if (!v35)
      {
        goto LABEL_125;
      }

      v37 = v35;
      v38 = v36;
      if (v18)
      {
        memset(v35, 32, v18);
        v39 = v18;
        if (v38 < v18)
        {
          goto LABEL_662;
        }
      }

      else
      {
        v39 = 0;
      }

      v62 = &v37[v39];
      qmemcpy(&v37[v39], "static __attribute__((always_inline)) ", 38);
      if (v38 - v39 <= 0x25)
      {
        goto LABEL_662;
      }

      v63 = v38 - v39 - 38;
      v64 = v62 + 38;
      if (!v14)
      {
        v69 = 0;
        goto LABEL_142;
      }

      v65 = *(v14 + 8);
      v66 = *(v14 + 4);
      if ((*(v14 + 16) & 4) != 0)
      {
        if (v66)
        {
          if (v66 == 1)
          {
            *v64 = v65->i8[0];
          }

          else
          {
            memcpy(v62 + 38, v65, v66);
          }
        }
      }

      else
      {
        if (v66 < 0x10)
        {
          v67 = (v62 + 38);
        }

        else
        {
          v67 = (v62 + 38);
          do
          {
            v68 = vld2q_s8(v65->i8);
            v65 += 2;
            *v67++ = v68;
          }

          while (v67 != &v64[v66 & 0xFFFFFFF0]);
        }

        if (v67 != &v64[v66])
        {
          v99 = &v37[v66 + v39];
          v100 = v99 - v67;
          v101 = v99 - v67 + 38;
          if (v101 < 4 || ((v102 = (v99 + 38), v67 < (&v65[4].u64[1] + 2 * v100 + 4)) ? (v103 = v65 >= v102) : (v103 = 1), !v103))
          {
            v105 = v67;
            v106 = v65;
            goto LABEL_138;
          }

          if (v101 >= 0x20)
          {
            v104 = v101 & 0xFFFFFFFFFFFFFFE0;
            v436 = v65 + 2;
            v437 = (v67 + 1);
            v438 = v101 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v440 = v436[-2];
              v439 = v436[-1];
              v442 = *v436;
              v441 = v436[1];
              v436 += 4;
              v437[-1] = vuzp1q_s8(v440, v439);
              *v437 = vuzp1q_s8(v442, v441);
              v437 += 2;
              v438 -= 32;
            }

            while (v438);
            if (v101 == v104)
            {
              goto LABEL_141;
            }

            if ((v101 & 0x1C) == 0)
            {
              v106 = (v65 + 2 * v104);
              v105 = (v67 + v104);
              do
              {
LABEL_138:
                v107 = v106->i8[0];
                v106 = (v106 + 2);
                *v105 = v107;
                v105 = (v105 + 1);
              }

              while (v105 != &v64[v66]);
              goto LABEL_141;
            }
          }

          else
          {
            v104 = 0;
          }

          v105 = (v67 + (v101 & 0xFFFFFFFFFFFFFFFCLL));
          v106 = (v65 + 2 * (v101 & 0xFFFFFFFFFFFFFFFCLL));
          v443 = (v65 + 2 * v104);
          v444 = (v67 + v104);
          v445 = v104 - (v101 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v446 = *v443++;
            *v444++ = vuzp1_s8(v446, v446).u32[0];
            v445 += 4;
          }

          while (v445);
          if (v101 != (v101 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_138;
          }
        }
      }

LABEL_141:
      v69 = *(v14 + 4);
      if (v63 < v69)
      {
        goto LABEL_662;
      }

LABEL_142:
      v108 = &v64[v69];
      *&v64[v69] = 0x286B6361705F5F20;
      if (v63 - v69 <= 7)
      {
        goto LABEL_662;
      }

      v109 = v63 - v69 - 8;
      v110 = v108 + 8;
      if (!v13)
      {
        v115 = 0;
        goto LABEL_168;
      }

      v111 = *(v13 + 8);
      v112 = *(v13 + 4);
      if ((*(v13 + 16) & 4) != 0)
      {
        if (v112)
        {
          if (v112 == 1)
          {
            *v110 = v111->i8[0];
          }

          else
          {
            memcpy(v108 + 8, v111, v112);
          }
        }
      }

      else
      {
        if (v112 < 0x10)
        {
          v113 = (v108 + 8);
        }

        else
        {
          v113 = (v108 + 8);
          do
          {
            v114 = vld2q_s8(v111->i8);
            v111 += 2;
            *v113++ = v114;
          }

          while (v113 != &v110[v112 & 0xFFFFFFF0]);
        }

        if (v113 != &v110[v112])
        {
          v116 = &v37[v69 + v112 + v39];
          v117 = v116 - v113;
          v118 = v116 - v113 + 46;
          if (v118 < 4 || ((v119 = v116 + 46, v113 < (&v111[5].u64[1] + 2 * v117 + 4)) ? (v120 = v111 >= v119) : (v120 = 1), !v120))
          {
            v122 = v113;
            v123 = v111;
            goto LABEL_164;
          }

          if (v118 >= 0x20)
          {
            v121 = v118 & 0xFFFFFFFFFFFFFFE0;
            v447 = v111 + 2;
            v448 = (v113 + 1);
            v449 = v118 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v451 = v447[-2];
              v450 = v447[-1];
              v453 = *v447;
              v452 = v447[1];
              v447 += 4;
              v448[-1] = vuzp1q_s8(v451, v450);
              *v448 = vuzp1q_s8(v453, v452);
              v448 += 2;
              v449 -= 32;
            }

            while (v449);
            if (v118 == v121)
            {
              goto LABEL_167;
            }

            if ((v118 & 0x1C) == 0)
            {
              v123 = (v111 + 2 * v121);
              v122 = (v113 + v121);
              do
              {
LABEL_164:
                v124 = v123->i8[0];
                v123 = (v123 + 2);
                *v122 = v124;
                v122 = (v122 + 1);
              }

              while (v122 != &v110[v112]);
              goto LABEL_167;
            }
          }

          else
          {
            v121 = 0;
          }

          v122 = (v113 + (v118 & 0xFFFFFFFFFFFFFFFCLL));
          v123 = (v111 + 2 * (v118 & 0xFFFFFFFFFFFFFFFCLL));
          v454 = (v111 + 2 * v121);
          v455 = (v113 + v121);
          v456 = v121 - (v118 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v457 = *v454++;
            *v455++ = vuzp1_s8(v457, v457).u32[0];
            v456 += 4;
          }

          while (v456);
          if (v118 != (v118 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_164;
          }
        }
      }

LABEL_167:
      v115 = *(v13 + 4);
      if (v109 < v115)
      {
        goto LABEL_662;
      }

LABEL_168:
      v125 = v109 - v115;
      v126 = &v110[v115];
      *v126 = *" unpacked)\n";
      *(v126 + 7) = 170484837;
      if (v125 <= 0xA)
      {
        goto LABEL_662;
      }

      v127 = v126 + 11;
      if (v18)
      {
        v128 = v125 - 11;
        memset(v126 + 11, 32, v18);
        if (v128 < v18)
        {
          goto LABEL_662;
        }
      }

      else
      {
        v18 = 0;
      }

      *&v127[v18] = 2683;
      v95 = *(this + 26) + 1;
      *(this + 26) = v95;
      v96 = *(v12 + 48);
      v97 = *(this + 20);
      if (v96)
      {
        goto LABEL_126;
      }

      goto LABEL_174;
    }
  }

LABEL_618:
  if ((*(v4 + 352) & 1) == 0)
  {
    goto LABEL_662;
  }

  v480 = *(v4 + 332);
  if (v480 && **(this + 19))
  {
    v481 = *(v4 + 320);
    v482 = v481 + 24 * v480;
    do
    {
      v483 = **(this + 19);
      if (v483)
      {
        v484 = *(v481 + 16);
        if (v484 == -1)
        {
          goto LABEL_665;
        }

        if (!v484)
        {
          __break(0xC471u);
          JUMPOUT(0x22574768CLL);
        }

        v485 = *(v483 - 8);
        v486 = *(v484 + 4);
        if (v486 < 0x100)
        {
          v487 = WTF::StringImpl::hashSlowCase(v484);
        }

        else
        {
          v487 = v486 >> 8;
        }

        for (i = 0; ; v487 = i + v489)
        {
          v489 = v487 & v485;
          v490 = *(v483 + 104 * (v487 & v485));
          if (v490 != -1)
          {
            if (!v490)
            {
              goto LABEL_622;
            }

            if (WTF::equal(v490, *(v481 + 16), v3))
            {
              break;
            }
          }

          ++i;
        }

        (*(*this + 56))(this, *v481);
      }

LABEL_622:
      v481 += 24;
    }

    while (v481 != v482);
  }

  result = *(this + 11);
  if (!*(result + 16) && !*(result + 8))
  {
    v496 = *(this + 8);
    if (v496)
    {
      atomic_fetch_add_explicit(v496, 2u, memory_order_relaxed);
      v497 = *result;
      *result = v496;
      if (v497 && atomic_fetch_add_explicit(v497, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v498 = result;
        WTF::StringImpl::destroy(v497, v2);
        result = v498;
      }

      v499 = *(this + 20);
      if ((v499 & 0x80000000) == 0)
      {
        *(result + 16) = v499;
        return result;
      }

LABEL_665:
      __break(0xC471u);
      JUMPOUT(0x22574766CLL);
    }
  }

  v492 = *(this + 9);
  v493 = v492;
  if ((v492 || (v493 = *(this + 8)) != 0) && (*(v493 + 16) & 4) == 0)
  {
    v494 = *(this + 20);
    if (v494 < 1 || *(this + 8) || *(v492 + 4) >= v494)
    {

      return WTF::StringBuilder::append();
    }

LABEL_662:
    __break(1u);
    goto LABEL_665;
  }

  v495 = *(this + 20);
  if (v495 >= 1 && !*(this + 8) && *(v492 + 4) < v495)
  {
    goto LABEL_662;
  }

  return WTF::StringBuilder::append();
}

void WGSL::Metal::FunctionDefinitionWriter::emitNecessaryHelpers(WGSL::Metal::FunctionDefinitionWriter *this)
{
  v6 = *(this + 20);
  v7 = __CFADD__(v6, 258);
  v8 = v6 + 258;
  if (v7)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(this + 9);
  if ((v10 || (v10 = *(this + 8)) != 0) && (*(v10 + 16) & 4) == 0)
  {
    v11 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
    if (v11)
    {
      *v11 = xmmword_225882210;
      *(v11 + 16) = xmmword_225882220;
      *(v11 + 32) = *&aIneStateTLTAne[16];
      *(v11 + 40) = 10;
      if (v12 <= 0x14)
      {
        goto LABEL_352;
      }

      *(v11 + 42) = xmmword_225882230;
      *(v11 + 58) = xmmword_225882240;
      *(v11 + 74) = xmmword_225882250;
      *(v11 + 90) = *&aIneStateTLTAne[20];
      if (v12 - 21 <= 0x1B)
      {
        goto LABEL_352;
      }

      *(v11 + 98) = xmmword_225882210;
      *(v11 + 114) = xmmword_225882220;
      *(v11 + 130) = *&aIneStateTLTAne[16];
      *(v11 + 138) = 10;
      if (v12 - 49 <= 0x14)
      {
        goto LABEL_352;
      }

      WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v11 + 140, v12 - 70, "struct __PackedTypeImpl;\n\n", 0x1AuLL, "template<typename T>\n", 0x15uLL, "using __UnpackedType = typename __UnpackedTypeImpl<T>::Type;\n\n", 0x3EuLL, "template<typename T>\n", 0x15uLL, "using __PackedType = typename __PackedTypeImpl<T>::Type;\n\n", 0x3AuLL);
    }
  }

  else
  {
    v13 = MEMORY[0x22AA68210](this + 64, v9);
    if (v13)
    {
      qmemcpy(v13, "template<typename T>\n", 21);
      if (v14 <= 0x14)
      {
        goto LABEL_352;
      }

      qmemcpy((v13 + 21), "struct __UnpackedTypeImpl;\n\n", 28);
      if (v14 - 21 <= 0x1B)
      {
        goto LABEL_352;
      }

      qmemcpy((v13 + 49), "template<typename T>\n", 21);
      if (v14 - 49 <= 0x14)
      {
        goto LABEL_352;
      }

      qmemcpy((v13 + 70), "struct __PackedTypeImpl;\n\n", 26);
      if (v14 - 70 <= 0x19)
      {
        goto LABEL_352;
      }

      qmemcpy((v13 + 96), "template<typename T>\n", 21);
      if (v14 - 96 <= 0x14)
      {
        goto LABEL_352;
      }

      qmemcpy((v13 + 117), "using __UnpackedType = typename __UnpackedTypeImpl<T>::Type;\n\n", 62);
      if (v14 - 117 <= 0x3D)
      {
        goto LABEL_352;
      }

      qmemcpy((v13 + 179), "template<typename T>\n", 21);
      if (v14 - 179 <= 0x14)
      {
        goto LABEL_352;
      }

      qmemcpy((v13 + 200), "using __PackedType = typename __PackedTypeImpl<T>::Type;\n\n", 58);
    }
  }

  v15 = *(this + 12);
  if (v15[30] == 1)
  {
    LODWORD(v261) = *(this + 26);
    v268 = "template<typename T>\n";
    v269 = 21;
    v267 = v261;
    v264 = "struct PackedVec3 {\n";
    v265 = 20;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v16 = (*(this + 26) + 1);
    *(this + 26) = v16;
    v17 = *(this + 20);
    v1 = (4 * v16);
    v18 = v1 + 150;
    if (v1 >= 0xFFFFFF6A)
    {
      v18 = -1;
    }

    v7 = __CFADD__(v1, v18);
    v19 = v1 + v18;
    if (v7)
    {
      v19 = -1;
    }

    v7 = __CFADD__(v19, 74);
    v20 = v19 + 74;
    if (v7)
    {
      v20 = -1;
    }

    v7 = __CFADD__(v1, v20);
    v21 = v1 + v20;
    if (v7)
    {
      v21 = -1;
    }

    v7 = __CFADD__(v21, 70);
    v22 = v21 + 70;
    if (v7)
    {
      v22 = -1;
    }

    v7 = __CFADD__(v1, v22);
    v23 = v1 + v22;
    if (v7)
    {
      v23 = -1;
    }

    v7 = __CFADD__(v23, 61);
    v24 = v23 + 61;
    if (v7)
    {
      v24 = -1;
    }

    v7 = __CFADD__(v1, v24);
    v25 = v1 + v24;
    if (v7)
    {
      v25 = -1;
    }

    v7 = __CFADD__(v25, 1);
    v26 = v25 + 1;
    if (v7)
    {
      v26 = -1;
    }

    v7 = __CFADD__(v1, v26);
    v27 = v1 + v26;
    if (v7)
    {
      v27 = -1;
    }

    v7 = __CFADD__(v27, 66);
    v28 = v27 + 66;
    if (v7)
    {
      v28 = -1;
    }

    v7 = __CFADD__(v1, v28);
    v29 = v1 + v28;
    if (v7)
    {
      v29 = -1;
    }

    v7 = __CFADD__(v29, 52);
    v30 = v29 + 52;
    if (v7)
    {
      v30 = -1;
    }

    v7 = __CFADD__(v1, v30);
    v31 = v1 + v30;
    if (v7)
    {
      v31 = -1;
    }

    v7 = __CFADD__(v31, 1);
    v32 = v31 + 1;
    if (v7)
    {
      v32 = -1;
    }

    v7 = __CFADD__(v1, v32);
    v33 = v1 + v32;
    if (v7)
    {
      v33 = -1;
    }

    v7 = __CFADD__(v33, 60);
    v34 = v33 + 60;
    if (v7)
    {
      v34 = -1;
    }

    v7 = __CFADD__(v1, v34);
    v35 = v1 + v34;
    if (v7)
    {
      v35 = -1;
    }

    v7 = __CFADD__(v35, 1);
    v36 = v35 + 1;
    if (v7)
    {
      v36 = -1;
    }

    v7 = __CFADD__(v1, v36);
    v37 = v1 + v36;
    if (v7)
    {
      v37 = -1;
    }

    v7 = __CFADD__(v37, 17);
    v38 = v37 + 17;
    if (v7)
    {
      v38 = -1;
    }

    v7 = __CFADD__(v1, v38);
    v39 = v1 + v38;
    if (v7)
    {
      v39 = -1;
    }

    v7 = __CFADD__(v39, 1);
    v40 = v39 + 1;
    if (v7)
    {
      v40 = -1;
    }

    v7 = __CFADD__(v1, v40);
    v41 = v1 + v40;
    if (v7)
    {
      v41 = -1;
    }

    v7 = __CFADD__(v41, 30);
    v42 = v41 + 30;
    if (v7)
    {
      v42 = -1;
    }

    v7 = __CFADD__(v1, v42);
    v43 = v1 + v42;
    if (v7)
    {
      v43 = -1;
    }

    v7 = __CFADD__(v43, 21);
    v44 = v43 + 21;
    if (v7)
    {
      v44 = -1;
    }

    v7 = __CFADD__(v1, v44);
    v45 = v1 + v44;
    if (v7)
    {
      v45 = -1;
    }

    v7 = __CFADD__(v45, 21);
    v46 = v45 + 21;
    if (v7)
    {
      v46 = -1;
    }

    v7 = __CFADD__(v1, v46);
    v47 = v1 + v46;
    if (v7)
    {
      v47 = -1;
    }

    v7 = __CFADD__(v47, 21);
    v48 = v47 + 21;
    if (v7)
    {
      v48 = -1;
    }

    v7 = __CFADD__(v1, v48);
    v49 = v1 + v48;
    if (v7)
    {
      v49 = -1;
    }

    v7 = __CFADD__(v17, v49);
    v50 = v17 + v49;
    if (v7)
    {
      v51 = 0xFFFFFFFFLL;
    }

    else
    {
      v51 = v50;
    }

    v52 = *(this + 9);
    if ((v52 || (v52 = *(this + 8)) != 0) && (*(v52 + 16) & 4) == 0)
    {
      v53 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
      if (v53)
      {
        v2 = v53;
        v55 = v54;
        if (v1)
        {
          memset_pattern16(v53, aIneStateTLTAne, 2 * (4 * v16));
          v56 = (4 * v16);
          if (v55 < v1)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v56 = 0;
        }

        v87 = v2 + 2 * v56;
        v88 = xmmword_225882260;
        *v87 = xmmword_225882260;
        *(v87 + 16) = xmmword_225882270;
        *(v87 + 32) = *&aIneStateTLTAne[24];
        *(v87 + 40) = 10;
        v89 = v55 - v56;
        if (v89 <= 0x14)
        {
          goto LABEL_352;
        }

        v90 = v87 + 42;
        v2 = v89 - 21;
        if (v1)
        {
          memset_pattern16((v87 + 42), aIneStateTLTAne, 2 * (4 * v16));
          v88 = xmmword_225882260;
          v91 = (4 * v16);
          if (v2 < v1)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v91 = 0;
        }

        v92 = v90 + 2 * v91;
        *v92 = v88;
        *(v92 + 16) = xmmword_225882280;
        *(v92 + 32) = *&aIneStateTLTAne[24];
        *(v92 + 40) = 10;
        v93 = v2 - v91;
        if (v93 <= 0x14)
        {
          goto LABEL_352;
        }

        v94 = v92 + 42;
        v2 = v93 - 21;
        if (v1)
        {
          memset_pattern16((v92 + 42), aIneStateTLTAne, 2 * (4 * v16));
          v88 = xmmword_225882260;
          v95 = (4 * v16);
          if (v2 < v1)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v95 = 0;
        }

        v96 = v94 + 2 * v95;
        *v96 = v88;
        *(v96 + 16) = xmmword_225882290;
        *(v96 + 32) = *&aIneStateTLTAne[24];
        *(v96 + 40) = 10;
        v97 = v2 - v95;
        if (v97 <= 0x14)
        {
          goto LABEL_352;
        }

        v98 = v96 + 42;
        v2 = v97 - 21;
        if (v1)
        {
          memset_pattern16((v96 + 42), aIneStateTLTAne, 2 * (4 * v16));
          v99 = (4 * v16);
          if (v2 < v1)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v99 = 0;
        }

        v100 = v98 + 2 * v99;
        *v100 = 117;
        *(v100 + 2) = xmmword_2258822A0;
        *(v100 + 18) = xmmword_2258822B0;
        *(v100 + 34) = xmmword_2258822C0;
        *(v100 + 50) = *&aIneStateTLTAne[28];
        *(v100 + 58) = 10;
        v101 = v2 - v99;
        if (v101 <= 0x1D)
        {
          goto LABEL_352;
        }

        v102 = (v100 + 60);
        v3 = v101 - 30;
        if (v1)
        {
          v2 = 2 * (4 * v16);
          memset_pattern16((v100 + 60), aIneStateTLTAne, v2);
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v103 = &v102[v1];
          *v103 = 10;
          if (v3 == v1)
          {
            goto LABEL_352;
          }

          v104 = v103 + 1;
          v3 += ~v1;
          memset_pattern16(v103 + 1, aIneStateTLTAne, 2 * (4 * v16));
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v105 = (4 * v16);
        }

        else
        {
          *v102 = 10;
          if (v101 == 30)
          {
            goto LABEL_352;
          }

          v105 = 0;
          v104 = (v100 + 62);
          v3 = v101 - 31;
        }

        v106 = &v104[v105];
        *v106 = xmmword_2258822D0;
        *(v106 + 1) = xmmword_2258822E0;
        v106[16] = 10;
        v107 = v3 - v105;
        if (v107 <= 0x10)
        {
          goto LABEL_352;
        }

        v108 = v106 + 17;
        v3 = v107 - 17;
        if (v1)
        {
          v2 = 2 * (4 * v16);
          memset_pattern16(v106 + 17, aIneStateTLTAne, v2);
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v109 = &v108[v1];
          *v109 = 10;
          if (v3 == v1)
          {
            goto LABEL_352;
          }

          v110 = v109 + 1;
          v3 += ~v1;
          memset_pattern16(v109 + 1, aIneStateTLTAne, 2 * (4 * v16));
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v111 = (4 * v16);
        }

        else
        {
          *v108 = 10;
          if (v107 == 17)
          {
            goto LABEL_352;
          }

          v111 = 0;
          v110 = v106 + 18;
          v3 = v107 - 18;
        }

        v112 = &v110[v111];
        *v112 = xmmword_2258822D0;
        *(v112 + 1) = xmmword_2258822F0;
        *(v112 + 2) = xmmword_225882300;
        *(v112 + 3) = xmmword_225882310;
        *(v112 + 4) = xmmword_225882320;
        *(v112 + 5) = xmmword_225882330;
        *(v112 + 6) = xmmword_225882340;
        v113 = (v3 - v111);
        *(v112 + 14) = *&aIneStateTLTAne[32];
        if (v3 - v111 <= 0x3B)
        {
          goto LABEL_352;
        }

        v114 = v112 + 60;
        v3 = (v113 - 60);
        if (v1)
        {
          v2 = 2 * (4 * v16);
          memset_pattern16(v112 + 60, aIneStateTLTAne, v2);
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v115 = &v114[v1];
          *v115 = 10;
          if (v3 == v1)
          {
            goto LABEL_352;
          }

          v116 = v115 + 1;
          v3 += ~v1;
          memset_pattern16(v115 + 1, aIneStateTLTAne, 2 * (4 * v16));
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v117 = (4 * v16);
        }

        else
        {
          *v114 = 10;
          if (v113 == 60)
          {
            goto LABEL_352;
          }

          v117 = 0;
          v116 = v112 + 61;
          v3 = (v113 - 61);
        }

        v118 = &v116[v117];
        *v118 = xmmword_225882350;
        *(v118 + 1) = xmmword_225882360;
        *(v118 + 2) = xmmword_225882370;
        *(v118 + 3) = xmmword_225882380;
        *(v118 + 4) = xmmword_225882390;
        *(v118 + 5) = xmmword_2258823A0;
        v119 = v3 - v117;
        *(v118 + 12) = *&aIneStateTLTAne[36];
        if (v119 <= 0x33)
        {
          goto LABEL_352;
        }

        v120 = v118 + 52;
        v2 = v119 - 52;
        if (v1)
        {
          memset_pattern16(v118 + 52, aIneStateTLTAne, 2 * (4 * v16));
          v121 = (4 * v16);
          if (v2 < v1)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v121 = 0;
        }

        v270.val[0] = *"operator packed_vec<T, 3>() { return packed_vec<T, 3>(x, y, z); }\n";
        v271.val[0] = *"turn packed_vec<T, 3>(x, y, z); }\n";
        v122 = &v120[v121];
        v272.val[1] = 0uLL;
        v272.val[0] = *"T, 3>(x, y, z); }\n";
        v271.val[1] = 0u;
        v273.val[0] = *"vec<T, 3>() { return packed_vec<T, 3>(x, y, z); }\n";
        v270.val[1] = 0u;
        v123 = v122;
        vst2q_s8(v123, v270);
        v123 += 32;
        v273.val[1] = 0u;
        vst2q_s8(v123, v273);
        v124 = (v122 + 32);
        vst2q_s8(v124, v271);
        v125 = (v122 + 48);
        vst2q_s8(v125, v272);
        v126 = v2 - v121;
        *(v122 + 32) = 655485;
        if (v126 <= 0x41)
        {
          goto LABEL_352;
        }

        v127 = v122 + 66;
        v2 = v126 - 66;
        if (v1)
        {
          memset_pattern16(v122 + 66, aIneStateTLTAne, 2 * (4 * v16));
          if (v2 < v1)
          {
            goto LABEL_352;
          }

          v128 = &v127[v1];
          *v128 = 10;
          if (v2 == v1)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v1 = 0;
          v128 = (v122 + 66);
          *v127 = 10;
          if (!v2)
          {
            goto LABEL_352;
          }
        }

        WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v128 + 2, v2 + ~v1, v16, "T operator[](int i) const { return i ? i == 2 ? z : y : x; }\n", 0x3DuLL, v16, "device T& operator[](int i) device { return i ? i == 2 ? z : y : x; }\n", 0x46uLL, v16, "constant T& operator[](int i) constant { return i ? i == 2 ? z : y : x; }\n", 0x4AuLL, v16, "thread T& operator[](int i) thread { return i ? i == 2 ? z : y : x; }\n", 0x46uLL, v16, "threadgroup T& operator[](int i) threadgroup { return i ? i == 2 ? z : y : x; }\n", 0x50uLL);
      }
    }

    else
    {
      v57 = MEMORY[0x22AA68210](this + 64, v51);
      if (v57)
      {
        v59 = v57;
        v2 = v58;
        if (v1)
        {
          memset(v57, 32, (4 * v16));
          v60 = v2 - v1;
          if (v2 < v1)
          {
            goto LABEL_352;
          }

          v61 = v59 + v1;
          qmemcpy((v59 + v1), "union { T x; T r; };\n", 21);
          if (v60 <= 0x14)
          {
            goto LABEL_352;
          }

          v2 = v60 - 21;
          v62 = v61 + 21;
          memset((v61 + 21), 32, (4 * v16));
          v63 = v2 - v1;
          if (v2 < v1)
          {
            goto LABEL_352;
          }

          v64 = v62 + v1;
          qmemcpy((v62 + v1), "union { T y; T g; };\n", 21);
          if (v63 <= 0x14)
          {
            goto LABEL_352;
          }

          v2 = v63 - 21;
          v65 = v64 + 21;
          memset((v64 + 21), 32, (4 * v16));
          v66 = v2 - v1;
          if (v2 < v1)
          {
            goto LABEL_352;
          }

          v67 = v65 + v1;
          qmemcpy((v65 + v1), "union { T z; T b; };\n", 21);
          if (v66 <= 0x14)
          {
            goto LABEL_352;
          }

          v2 = v66 - 21;
          v68 = v67 + 21;
          memset((v67 + 21), 32, (4 * v16));
          v69 = v2 - v1;
          if (v2 < v1)
          {
            goto LABEL_352;
          }

          v70 = v68 + v1;
          qmemcpy((v68 + v1), "uint8_t __padding[sizeof(T)];\n", 30);
          v3 = v69 - 30;
          if (v69 < 0x1E)
          {
            goto LABEL_352;
          }

          v71 = v70 + 30;
          memset((v70 + 30), 32, (4 * v16));
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v72 = v71 + v1;
          *(v71 + v1) = 10;
          if (v3 == v1)
          {
            goto LABEL_352;
          }

          v2 = ~v1;
          v3 += ~v1;
          v73 = v72 + 1;
          memset((v72 + 1), 32, (4 * v16));
          v74 = v3 - v1;
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v75 = v73 + v1;
          *v75 = *"PackedVec3() { }\n";
          *(v75 + 16) = 10;
          if (v74 <= 0x10)
          {
            goto LABEL_352;
          }

          v3 = v74 - 17;
          v76 = v75 + 17;
          memset((v75 + 17), 32, (4 * v16));
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v77 = v76 + v1;
          *(v76 + v1) = 10;
          if (v3 == v1)
          {
            goto LABEL_352;
          }

          v3 += v2;
          v78 = v77 + 1;
          memset((v77 + 1), 32, (4 * v16));
          v79 = v3 - v1;
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v80 = v78 + v1;
          qmemcpy((v78 + v1), "PackedVec3(packed_vec<T, 3> v) : x(v.x), y(v.y), z(v.z) { }\n", 60);
          v3 = v79 - 60;
          if (v79 < 0x3C)
          {
            goto LABEL_352;
          }

          v81 = v80 + 60;
          memset((v80 + 60), 32, (4 * v16));
          if (v3 < v1)
          {
            goto LABEL_352;
          }

          v82 = v81 + v1;
          *(v81 + v1) = 10;
          if (v3 == v1)
          {
            goto LABEL_352;
          }

          v2 += v3;
          v83 = v82 + 1;
          memset((v82 + 1), 32, (4 * v16));
          v84 = v2 - v1;
          if (v2 < v1)
          {
            goto LABEL_352;
          }

          v85 = v83 + v1;
          qmemcpy((v83 + v1), "operator vec<T, 3>() { return vec<T, 3>(x, y, z); }\n", 52);
          if (v84 <= 0x33)
          {
            goto LABEL_352;
          }

          v2 = v84 - 52;
          v86 = v85 + 52;
          memset((v85 + 52), 32, (4 * v16));
          if (v2 < v1)
          {
            goto LABEL_352;
          }
        }

        else
        {
          qmemcpy(v57, "union { T x; T r; };\n", 21);
          if (v58 < 0x15)
          {
            goto LABEL_352;
          }

          qmemcpy((v57 + 21), "union { T y; T g; };\n", 21);
          if (v58 - 21 < 0x15)
          {
            goto LABEL_352;
          }

          qmemcpy((v57 + 42), "union { T z; T b; };\n", 21);
          if (v58 - 42 < 0x15)
          {
            goto LABEL_352;
          }

          qmemcpy((v57 + 63), "uint8_t __padding[sizeof(T)];\n", 30);
          if (v58 - 63 < 0x1E)
          {
            goto LABEL_352;
          }

          *(v57 + 93) = 10;
          if (v58 == 93)
          {
            goto LABEL_352;
          }

          *(v57 + 110) = 10;
          *(v57 + 94) = *"PackedVec3() { }\n";
          if (v58 - 94 < 0x11)
          {
            goto LABEL_352;
          }

          *(v57 + 111) = 10;
          if (v58 == 111)
          {
            goto LABEL_352;
          }

          qmemcpy((v57 + 112), "PackedVec3(packed_vec<T, 3> v) : x(v.x), y(v.y), z(v.z) { }\n", 60);
          if (v58 - 112 < 0x3C)
          {
            goto LABEL_352;
          }

          *(v57 + 172) = 10;
          if (v58 == 172)
          {
            goto LABEL_352;
          }

          qmemcpy((v57 + 173), "operator vec<T, 3>() { return vec<T, 3>(x, y, z); }\n", 52);
          if (v58 - 173 < 0x34)
          {
            goto LABEL_352;
          }

          v1 = 0;
          v2 = v58 - 225;
          v86 = v57 + 225;
        }

        qmemcpy((v86 + v1), "operator packed_vec<T, 3>() { return packed_vec<T, 3>(x, y, z); }\n", 66);
        if (v2 - v1 <= 0x41)
        {
          goto LABEL_352;
        }

        WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v86 + v1 + 66), v2 - v1 - 66, v16, "\n", 1uLL, v16, "T operator[](int i) const { return i ? i == 2 ? z : y : x; }\n", 0x3DuLL, v16, "device T& operator[](int i) device { return i ? i == 2 ? z : y : x; }\n", 0x46uLL, v16, "constant T& operator[](int i) constant { return i ? i == 2 ? z : y : x; }\n", 0x4AuLL, v16, "thread T& operator[](int i) thread { return i ? i == 2 ? z : y : x; }\n", 0x46uLL, v16, "threadgroup T& operator[](int i) threadgroup { return i ? i == 2 ? z : y : x; }\n", 0x50uLL);
      }
    }

    v129 = *(this + 26) - 1;
    *(this + 26) = v129;
    LODWORD(v264) = v129;
    v268 = "};\n\n";
    v269 = 4;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v15 = *(this + 12);
  }

  if (v15[8] == 1)
  {
    v15[8] = 0;
    WTF::StringBuilder::append();
    v130 = (*(this + 26) + 1);
    *(this + 26) = v130;
    v131 = *(this + 20);
    v2 = (4 * v130);
    v132 = v2 + 148;
    if (v2 >= 0xFFFFFF6C)
    {
      v132 = -1;
    }

    v7 = __CFADD__(v2, v132);
    v133 = v2 + v132;
    if (v7)
    {
      v133 = -1;
    }

    v7 = __CFADD__(v133, 37);
    v134 = v133 + 37;
    if (v7)
    {
      v134 = -1;
    }

    v7 = __CFADD__(v2, v134);
    v135 = v2 + v134;
    if (v7)
    {
      v135 = -1;
    }

    v7 = __CFADD__(v135, 24);
    v136 = v135 + 24;
    if (v7)
    {
      v136 = -1;
    }

    v7 = __CFADD__(v2, v136);
    v137 = v2 + v136;
    if (v7)
    {
      v137 = -1;
    }

    v7 = __CFADD__(v137, 30);
    v138 = v137 + 30;
    if (v7)
    {
      v138 = -1;
    }

    v7 = __CFADD__(v2, v138);
    v139 = v2 + v138;
    if (v7)
    {
      v139 = -1;
    }

    v7 = __CFADD__(v139, 29);
    v140 = v139 + 29;
    if (v7)
    {
      v140 = -1;
    }

    v7 = __CFADD__(v2, v140);
    v141 = v2 + v140;
    if (v7)
    {
      v141 = -1;
    }

    v7 = __CFADD__(v131, v141);
    v142 = v131 + v141;
    if (v7)
    {
      v143 = 0xFFFFFFFFLL;
    }

    else
    {
      v143 = v142;
    }

    v144 = *(this + 9);
    if ((v144 || (v144 = *(this + 8)) != 0) && (*(v144 + 16) & 4) == 0)
    {
      v145 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
      if (v145)
      {
        v147 = v145;
        v1 = v146;
        if (v2)
        {
          memset_pattern16(v145, aIneStateTLTAne, 2 * (4 * v130));
          if (v1 < v2)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v2 = 0;
        }

        v150 = v147 + 2 * v2;
        *v150 = xmmword_2258823B0;
        *(v150 + 16) = xmmword_2258823C0;
        *(v150 + 32) = xmmword_2258823D0;
        *(v150 + 48) = *&aIneStateTLTAne[40];
        *(v150 + 56) = 10;
        if (v1 - v2 <= 0x1C)
        {
          goto LABEL_352;
        }

        WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v150 + 58), v1 - v2 - 29, v130, "texture2d<float> SecondPlane;\n", 0x1EuLL, v130, "float3x2 UVRemapMatrix;\n", 0x18uLL, v130, "float4x3 ColorSpaceConversionMatrix;\n", 0x25uLL, v130, "uint get_width(uint lod = 0) const { return FirstPlane.get_width(lod); }\n", 0x49uLL, v130, "uint get_height(uint lod = 0) const { return FirstPlane.get_height(lod); }\n", 0x4BuLL);
      }
    }

    else
    {
      v148 = MEMORY[0x22AA68210](this + 64, v143);
      if (v148)
      {
        WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v148, v149, v130, "texture2d<float> FirstPlane;\n", 0x1DuLL, v130, "texture2d<float> SecondPlane;\n", 0x1EuLL, v130, "float3x2 UVRemapMatrix;\n", 0x18uLL, v130, "float4x3 ColorSpaceConversionMatrix;\n", 0x25uLL, v130, "uint get_width(uint lod = 0) const { return FirstPlane.get_width(lod); }\n", 0x49uLL, v130, "uint get_height(uint lod = 0) const { return FirstPlane.get_height(lod); }\n", 0x4BuLL);
      }
    }

    --*(this + 26);
    WTF::StringBuilder::append();
    v15 = *(this + 12);
  }

  v3 = "{\n";
  v2 = "}\n\n";
  if (v15[9] == 1)
  {
    v15[9] = 0;
    WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), *(this + 26), "template<typename T, size_t N>\n", 32, *(this + 26), "struct __PackedTypeImpl<array<T, N>> {\n", 40, *(this + 26), "using Type = array<__PackedType<T>, N>;\n", 41, *(this + 26), "};\n\n", 5);
    if (*(*(this + 12) + 30) == 1)
    {
      WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), *(this + 26), "template<typename T, size_t N>\n", 32, *(this + 26), "struct __PackedTypeImpl<array<vec<T, 3>, N>> {", 47, *(this + 26), "using Type = array<PackedVec3<T>, N>;", 38, *(this + 26), "};\n\n", 5);
      v266 = *(this + 26);
      v267 = v266;
      v268 = "template<typename T, size_t N>\n";
      v269 = 31;
      v264 = "static __attribute__((always_inline)) array<PackedVec3<T>, N> __pack(array<vec<T, 3>, N> unpacked)\n";
      v265 = 99;
      v263 = v266;
      v261 = "{\n";
      v262 = 2;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
      v151 = *(this + 26) + 1;
      *(this + 26) = v151;
      LODWORD(v261) = v151;
      v268 = "array<PackedVec3<T>, N> packed;\n";
      v269 = 32;
      v267 = v151;
      v264 = "for (size_t i = 0; i < N; ++i)\n";
      v265 = 31;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
      v152 = *(this + 26) + 1;
      *(this + 26) = v152;
      LODWORD(v264) = v152;
      v268 = "packed[i] = PackedVec3<T>(unpacked[i]);\n";
      v269 = 40;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
      v153 = *(this + 26) - 1;
      *(this + 26) = v153;
      LODWORD(v264) = v153;
      v268 = "return packed;\n";
      v269 = 15;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
      v154 = *(this + 26) - 1;
      *(this + 26) = v154;
      LODWORD(v264) = v154;
      v268 = "}\n\n";
      v269 = 3;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    }

    v266 = *(this + 26);
    v267 = v266;
    v268 = "template<typename T, size_t N>\n";
    v269 = 31;
    v264 = "static __attribute__((always_inline)) array<__PackedType<T>, N> __pack(array<T, N> unpacked)\n";
    v265 = 93;
    v263 = v266;
    v261 = "{\n";
    v262 = 2;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
    v155 = *(this + 26) + 1;
    *(this + 26) = v155;
    LODWORD(v261) = v155;
    v268 = "array<__PackedType<T>, N> packed;\n";
    v269 = 34;
    v267 = v155;
    v264 = "for (size_t i = 0; i < N; ++i)\n";
    v265 = 31;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v156 = *(this + 26) + 1;
    *(this + 26) = v156;
    LODWORD(v264) = v156;
    v268 = "packed[i] = __pack(unpacked[i]);\n";
    v269 = 33;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v157 = *(this + 26) - 1;
    *(this + 26) = v157;
    LODWORD(v264) = v157;
    v268 = "return packed;\n";
    v269 = 15;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v158 = *(this + 26) - 1;
    *(this + 26) = v158;
    LODWORD(v264) = v158;
    v268 = "}\n\n";
    v269 = 3;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v15 = *(this + 12);
    if (v15[10] != 1)
    {
LABEL_265:
      if (v15[11] != 1)
      {
        goto LABEL_266;
      }

      goto LABEL_274;
    }
  }

  else if (v15[10] != 1)
  {
    goto LABEL_265;
  }

  v15[10] = 0;
  WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), *(this + 26), "template<typename T, size_t N>\n", 32, *(this + 26), "struct __UnpackedTypeImpl<array<T, N>> {\n", 42, *(this + 26), "using Type = array<__UnpackedType<T>, N>;\n", 43, *(this + 26), "};\n\n", 5);
  if (*(*(this + 12) + 30) == 1)
  {
    WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), *(this + 26), "template<typename T, size_t N>\n", 32, *(this + 26), "struct __UnpackedTypeImpl<array<PackedVec3<T>, N>> {", 53, *(this + 26), "using Type = array<vec<T, 3>, N>;", 34, *(this + 26), "};\n\n", 5);
    v266 = *(this + 26);
    v267 = v266;
    v268 = "template<typename T, size_t N>\n";
    v269 = 31;
    v264 = "static __attribute__((always_inline)) array<vec<T, 3>, N> __unpack(array<PackedVec3<T>, N> packed)\n";
    v265 = 99;
    v263 = v266;
    v261 = "{\n";
    v262 = 2;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
    v159 = *(this + 26) + 1;
    *(this + 26) = v159;
    LODWORD(v261) = v159;
    v268 = "array<vec<T, 3>, N> unpacked;\n";
    v269 = 30;
    v267 = v159;
    v264 = "for (size_t i = 0; i < N; ++i)\n";
    v265 = 31;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v160 = *(this + 26) + 1;
    *(this + 26) = v160;
    LODWORD(v264) = v160;
    v268 = "unpacked[i] = vec<T, 3>(packed[i]);\n";
    v269 = 36;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v161 = *(this + 26) - 1;
    *(this + 26) = v161;
    LODWORD(v264) = v161;
    v268 = "return unpacked;\n";
    v269 = 17;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v162 = *(this + 26) - 1;
    *(this + 26) = v162;
    LODWORD(v264) = v162;
    v268 = "}\n\n";
    v269 = 3;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  }

  v266 = *(this + 26);
  v267 = v266;
  v268 = "template<typename T, size_t N>\n";
  v269 = 31;
  v264 = "static __attribute__((always_inline)) array<__UnpackedType<T>, N> __unpack(array<T, N> packed)\n";
  v265 = 95;
  v263 = v266;
  v261 = "{\n";
  v262 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v163 = *(this + 26) + 1;
  *(this + 26) = v163;
  LODWORD(v261) = v163;
  v268 = "array<__UnpackedType<T>, N> unpacked;\n";
  v269 = 38;
  v267 = v163;
  v264 = "for (size_t i = 0; i < N; ++i)\n";
  v265 = 31;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v164 = *(this + 26) + 1;
  *(this + 26) = v164;
  LODWORD(v264) = v164;
  v268 = "unpacked[i] = __unpack(packed[i]);\n";
  v269 = 35;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v165 = *(this + 26) - 1;
  *(this + 26) = v165;
  LODWORD(v264) = v165;
  v268 = "return unpacked;\n";
  v269 = 17;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v166 = *(this + 26) - 1;
  *(this + 26) = v166;
  LODWORD(v264) = v166;
  v268 = "}\n\n";
  v269 = 3;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[11] != 1)
  {
LABEL_266:
    if (v15[12] != 1)
    {
      goto LABEL_277;
    }

    goto LABEL_275;
  }

LABEL_274:
  v15[11] = 0;
  LODWORD(v261) = *(this + 26);
  v268 = "template<typename T>\n";
  v269 = 21;
  v267 = v261;
  v264 = "static __attribute__((always_inline)) packed_vec<T, 3> __pack(vec<T, 3> unpacked) { return unpacked; }\n\n";
  v265 = 104;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v15 = *(this + 12);
  if (v15[12] != 1)
  {
    goto LABEL_277;
  }

LABEL_275:
  v15[12] = 0;
  LODWORD(v261) = *(this + 26);
  v268 = "template<typename T>\n";
  v269 = 21;
  v267 = v261;
  v264 = "static __attribute__((always_inline)) vec<T, 3> __unpack(packed_vec<T, 3> packed) { return packed; }\n\n";
  v265 = 102;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v15 = *(this + 12);
  if (v15[30] == 1)
  {
    LODWORD(v261) = *(this + 26);
    v268 = "template<typename T>\n";
    v269 = 21;
    v267 = v261;
    v264 = "static vec<T, 3> __unpack(PackedVec3<T> packed) { return packed; }\n\n";
    v265 = 68;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v15 = *(this + 12);
  }

LABEL_277:
  v4 = "return result;\n";
  if (v15[13] != 1)
  {
    goto LABEL_356;
  }

  v167 = *(this + 172);
  v168 = *(this + 26);
  if (*(this + 172))
  {
    v169 = 19;
  }

  else
  {
    v169 = 0;
  }

  v170 = *(this + 20);
  v171 = (4 * v168);
  v172 = (4 * v168) | 2;
  v173 = v172 + 60;
  if (v172 >= 0xFFFFFFC4)
  {
    v173 = -1;
  }

  v7 = __CFADD__(v169, v173);
  v174 = v169 + v173;
  if (v7)
  {
    v174 = -1;
  }

  v7 = __CFADD__(v171, v174);
  v175 = v171 + v174;
  if (v7)
  {
    v175 = -1;
  }

  v7 = __CFADD__(v175, 21);
  v176 = v175 + 21;
  if (v7)
  {
    v176 = -1;
  }

  v7 = __CFADD__(v171, v176);
  v177 = v171 + v176;
  if (v7)
  {
    v177 = -1;
  }

  v7 = __CFADD__(v170, v177);
  v178 = v170 + v177;
  if (v7)
  {
    v179 = 0xFFFFFFFFLL;
  }

  else
  {
    v179 = v178;
  }

  v180 = *(this + 9);
  if (!v180 && (v180 = *(this + 8)) == 0 || (*(v180 + 16) & 4) != 0)
  {
    v185 = MEMORY[0x22AA68210](this + 64, v179);
    if (!v185)
    {
      goto LABEL_355;
    }

    v1 = v185;
    v187 = v186;
    if (v171)
    {
      memset(v185, 32, v171);
      v188 = v187 - v171;
      if (v187 < v171)
      {
        goto LABEL_352;
      }

      v1 += v171;
      qmemcpy(v1, "template<typename T>\n", 21);
      if (v188 <= 0x14)
      {
        goto LABEL_352;
      }

      v189 = v188 - 21;
      memset((v1 + 21), 32, v171);
      if (v189 < v171)
      {
        goto LABEL_352;
      }

      v190 = v189 - v171;
      v191 = v1 + v171 + 21;
      if (!v167)
      {
        goto LABEL_312;
      }
    }

    else
    {
      qmemcpy(v185, "template<typename T>\n", 21);
      if (v186 < 0x15)
      {
        goto LABEL_352;
      }

      v190 = v186 - 21;
      v191 = v185 + 21;
      if (!v167)
      {
        goto LABEL_312;
      }
    }

    *(v191 + 15) = 542989669;
    *v191 = *"[[clang::optnone]] ";
LABEL_312:
    v7 = v190 >= v169;
    v192 = v190 - v169;
    if (!v7)
    {
      goto LABEL_352;
    }

    v193 = v191 + v169;
    qmemcpy(v193, "static T __workgroup_uniform_load(threadgroup T* const ptr)\n", 60);
    if (v192 <= 0x3B)
    {
      goto LABEL_352;
    }

    v1 = v193 + 60;
    if (v171)
    {
      v194 = v192 - 60;
      memset((v193 + 60), 32, v171);
      if (v194 < v171)
      {
        goto LABEL_352;
      }
    }

    else
    {
      v171 = 0;
    }

    *(v1 + v171) = 2683;
    goto LABEL_355;
  }

  v181 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((this + 64));
  if (v181)
  {
    v1 = v181;
    v183 = v182;
    if (v171)
    {
      memset_pattern16(v181, aIneStateTLTAne, 2 * v171);
      v184 = v171;
      if (v183 < v171)
      {
        goto LABEL_352;
      }
    }

    else
    {
      v184 = 0;
    }

    v195 = v1 + 2 * v184;
    *v195 = xmmword_225882210;
    *(v195 + 16) = xmmword_225882220;
    *(v195 + 32) = *&aIneStateTLTAne[16];
    *(v195 + 40) = 10;
    v196 = v183 - v184;
    if (v196 > 0x14)
    {
      v197 = (v195 + 42);
      v198 = v196 - 21;
      if (v171)
      {
        memset_pattern16((v195 + 42), aIneStateTLTAne, 2 * v171);
        v199 = v171;
        if (v198 < v171)
        {
          goto LABEL_352;
        }

        v200 = v198 - v171;
        v201 = &v197[2 * v171];
        v202 = &v201[2 * v169];
        if (!v167)
        {
          goto LABEL_347;
        }
      }

      else
      {
        v199 = 0;
        v200 = v196 - 21;
        v201 = v197;
        v202 = &v197[2 * v169];
        if (!v167)
        {
          goto LABEL_347;
        }
      }

      v203 = (v169 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      if (v203 < 7)
      {
        v204 = "[[clang::optnone]] ";
        goto LABEL_346;
      }

      v205 = v1 + 4 * v199;
      if (v201 < &aClangOptnone[v203 + 1] && v205 + 2 * (v169 - 1) + 44 > "[[clang::optnone]] ")
      {
        v204 = "[[clang::optnone]] ";
        goto LABEL_346;
      }

      v206 = v203 + 1;
      if (v203 >= 0x1F)
      {
        v207 = v206 & 0xFFFFFFFFFFFFFFE0;
        v208 = (v205 + 74);
        v209 = "]] ";
        v210 = v206 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v211 = *v209[-2].i8;
          v212 = vmovl_u8(*v209);
          v213 = vmovl_high_u8(*v209->i8);
          v208[-2] = vmovl_u8(*v211.i8);
          v208[-1] = vmovl_high_u8(v211);
          *v208 = v212;
          v208[1] = v213;
          v208 += 4;
          v209 += 4;
          v210 -= 32;
        }

        while (v210);
        if (v206 == v207)
        {
          goto LABEL_347;
        }

        if ((v206 & 0x18) == 0)
        {
          v201 += 2 * v207;
          v204 = &aClangOptnone[v207];
          do
          {
LABEL_346:
            v218 = *v204++;
            *v201 = v218;
            v201 += 2;
          }

          while (v201 != v202);
          goto LABEL_347;
        }
      }

      else
      {
        v207 = 0;
      }

      v204 = &aClangOptnone[v206 & 0xFFFFFFFFFFFFFFF8];
      v201 += 2 * (v206 & 0xFFFFFFFFFFFFFFF8);
      v214 = (4 * v199 + 2 * v207 + v1 + 42);
      v215 = &aClangOptnone[v207];
      v216 = v207 - (v206 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v217 = *v215;
        v215 += 8;
        *v214++ = vmovl_u8(v217);
        v216 += 8;
      }

      while (v216);
      if (v206 != (v206 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_346;
      }

LABEL_347:
      v7 = v200 >= v169;
      v219 = v200 - v169;
      if (v7)
      {
        *v202 = xmmword_2258823E0;
        *(v202 + 1) = xmmword_2258823F0;
        *(v202 + 2) = xmmword_225882400;
        *(v202 + 3) = xmmword_225882410;
        *(v202 + 4) = xmmword_225882420;
        *(v202 + 5) = xmmword_225882430;
        *(v202 + 6) = xmmword_225882440;
        *(v202 + 14) = *&aIneStateTLTAne[44];
        if (v219 > 0x3B)
        {
          v1 = (v202 + 120);
          if (!v171)
          {
LABEL_353:
            v171 = 0;
            goto LABEL_354;
          }

          v220 = v219 - 60;
          memset_pattern16(v202 + 120, aIneStateTLTAne, 2 * v171);
          if (v220 >= v171)
          {
LABEL_354:
            *(v1 + 2 * v171) = 655483;
            goto LABEL_355;
          }
        }
      }
    }

LABEL_352:
    __break(1u);
    goto LABEL_353;
  }

LABEL_355:
  v221 = *(this + 26) + 1;
  *(this + 26) = v221;
  WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), v221, "threadgroup_barrier(mem_flags::mem_threadgroup);\n", 50, v221, "auto result = *ptr;\n", 21, v221, "threadgroup_barrier(mem_flags::mem_threadgroup);\n", 50, v221, v4, 16);
  v222 = *(this + 26) - 1;
  *(this + 26) = v222;
  LODWORD(v264) = v222;
  v268 = v2;
  v269 = 3;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
LABEL_356:
  if (v15[14] == 1)
  {
    v266 = *(this + 26);
    v267 = v266;
    v268 = "template<typename T, typename U, typename V = conditional_t<is_scalar_v<U>, T, U>>\n";
    v269 = 83;
    v264 = "static V __wgslDiv(T lhs, U rhs)\n";
    v265 = 33;
    v263 = v266;
    v261 = v3;
    v262 = 2;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
    v223 = *(this + 26) + 1;
    *(this + 26) = v223;
    LODWORD(v261) = v223;
    v268 = "auto predicate = V(rhs) == V(0);\n";
    v269 = 33;
    v267 = v223;
    v264 = "if constexpr (is_signed_v<U>)\n";
    v265 = 30;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v224 = *(this + 26) + 1;
    *(this + 26) = v224;
    LODWORD(v264) = v224;
    v268 = "predicate = predicate || (V(lhs) == V(numeric_limits<T>::lowest()) && V(rhs) == V(-1));\n";
    v269 = 88;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v225 = *(this + 26) - 1;
    *(this + 26) = v225;
    LODWORD(v264) = v225;
    v268 = "return lhs / select(V(rhs), V(1), predicate);\n";
    v269 = 46;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v226 = *(this + 26) - 1;
    *(this + 26) = v226;
    LODWORD(v264) = v226;
    v268 = v2;
    v269 = 3;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v15 = *(this + 12);
  }

  if (v15[15] == 1)
  {
    v266 = *(this + 26);
    v267 = v266;
    v268 = "template<typename T, typename U, typename V = conditional_t<is_scalar_v<U>, T, U>>\n";
    v269 = 83;
    v264 = "static V __wgslMod(T lhs, U rhs)\n";
    v265 = 33;
    v263 = v266;
    v261 = v3;
    v262 = 2;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
    v227 = *(this + 26) + 1;
    *(this + 26) = v227;
    LODWORD(v261) = v227;
    v268 = "auto predicate = V(rhs) == V(0);\n";
    v269 = 33;
    v267 = v227;
    v264 = "if constexpr (is_signed_v<U>)\n";
    v265 = 30;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v228 = *(this + 26) + 1;
    *(this + 26) = v228;
    LODWORD(v264) = v228;
    v268 = "predicate = predicate || (V(lhs) == V(numeric_limits<T>::lowest()) && V(rhs) == V(-1));\n";
    v269 = 88;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v229 = *(this + 26) - 1;
    *(this + 26) = v229;
    LODWORD(v264) = v229;
    v268 = "return select(lhs % V(rhs), V(0), predicate);\n";
    v269 = 46;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v230 = *(this + 26) - 1;
    *(this + 26) = v230;
    LODWORD(v264) = v230;
    v268 = v2;
    v269 = 3;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v15 = *(this + 12);
  }

  if (v15[16] == 1)
  {
    LODWORD(v261) = *(this + 26);
    v268 = "template<typename T, typename U>\n";
    v269 = 33;
    v267 = v261;
    v264 = "struct __frexp_result {\n";
    v265 = 24;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v233 = *(this + 26) + 1;
    *(this + 26) = v233;
    LODWORD(v261) = v233;
    v268 = "T fract;\n";
    v269 = 9;
    v267 = v233;
    v264 = "U exp;\n";
    v265 = 7;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
    v234 = *(this + 26) - 1;
    *(this + 26) = v234;
    WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), v234, "};\n\n", 5, v234, "template<typename T, typename U = conditional_t<is_vector_v<T>, vec<int, vec_elements<T>::value ?: 2>, int>>\n", 110, v234, "static __frexp_result<T, U> __wgslFrexp(T value)\n", 50, v234, v3, 3);
    v235 = *(this + 26) + 1;
    *(this + 26) = v235;
    v266 = v235;
    v267 = v235;
    v268 = "__frexp_result<T, U> result;\n";
    v269 = 29;
    v264 = "result.fract = frexp(value, result.exp);\n";
    v265 = 41;
    v263 = v235;
    v261 = v4;
    v262 = 15;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
    v236 = *(this + 26) - 1;
    *(this + 26) = v236;
    LODWORD(v264) = v236;
    v268 = v2;
    v269 = 3;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v15 = *(this + 12);
    if (v15[17] != 1)
    {
LABEL_362:
      if (v15[18] != 1)
      {
        goto LABEL_363;
      }

      goto LABEL_377;
    }
  }

  else if (v15[17] != 1)
  {
    goto LABEL_362;
  }

  LODWORD(v261) = *(this + 26);
  v268 = "template<typename T, typename U>\n";
  v269 = 33;
  v267 = v261;
  v264 = "struct __modf_result {\n";
  v265 = 23;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v237 = *(this + 26) + 1;
  *(this + 26) = v237;
  LODWORD(v261) = v237;
  v268 = "T fract;\n";
  v269 = 9;
  v267 = v237;
  v264 = "U whole;\n";
  v265 = 9;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v238 = *(this + 26) - 1;
  *(this + 26) = v238;
  WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), v238, "};\n\n", 5, v238, "template<typename T>\n", 22, v238, "static __modf_result<T, T> __wgslModf(T value)\n", 48, v238, v3, 3);
  v239 = *(this + 26) + 1;
  *(this + 26) = v239;
  v266 = v239;
  v267 = v239;
  v268 = "__modf_result<T, T> result;\n";
  v269 = 28;
  v264 = "result.fract = modf(value, result.whole);\n";
  v265 = 42;
  v263 = v239;
  v261 = v4;
  v262 = 15;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v240 = *(this + 26) - 1;
  *(this + 26) = v240;
  LODWORD(v264) = v240;
  v268 = v2;
  v269 = 3;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[18] != 1)
  {
LABEL_363:
    if (v15[20] != 1)
    {
      goto LABEL_364;
    }

    goto LABEL_378;
  }

LABEL_377:
  LODWORD(v261) = *(this + 26);
  v268 = "template<typename T, typename U = BOOL>\n";
  v269 = 40;
  v267 = v261;
  v264 = "struct __atomic_compare_exchange_result {\n";
  v265 = 42;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v241 = *(this + 26) + 1;
  *(this + 26) = v241;
  LODWORD(v261) = v241;
  v268 = "T old_value;\n";
  v269 = 13;
  v267 = v241;
  v264 = "U exchanged;\n";
  v265 = 13;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v242 = *(this + 26) - 1;
  *(this + 26) = v242;
  LODWORD(v261) = v242;
  v268 = "};\n\n";
  v269 = 4;
  v267 = v242;
  v264 = "template<typename T, typename S, typename V> __atomic_compare_exchange_result<S> __wgslAtomicCompareExchangeWeak(T atomic1, S compare, V value) {\n";
  v265 = 146;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v243 = *(this + 26) + 1;
  *(this + 26) = v243;
  WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), v243, "auto innerCompare = compare; \n", 31, v243, "BOOL exchanged = atomic_compare_exchange_weak_explicit(atomic1, &innerCompare, value, memory_order_relaxed, memory_order_relaxed); \n", 133, v243, "return __atomic_compare_exchange_result<decltype(compare)> { innerCompare, exchanged }; \\\n", 91, v243, "}\n", 3);
  --*(this + 26);
  v15 = *(this + 12);
  if (v15[20] != 1)
  {
LABEL_364:
    if (v15[27] != 1)
    {
      goto LABEL_365;
    }

    goto LABEL_379;
  }

LABEL_378:
  v266 = *(this + 26);
  v267 = v266;
  v268 = "template<typename T, unsigned N>\n";
  v269 = 33;
  v264 = "static T __wgslDot(vec<T, N> lhs, vec<T, N> rhs)\n";
  v265 = 49;
  v263 = v266;
  v261 = v3;
  v262 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v244 = *(this + 26) + 1;
  *(this + 26) = v244;
  WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), v244, "auto result = lhs[0] * rhs[0] + lhs[1] * rhs[1];\n", 50, v244, "if constexpr (N > 2) result += lhs[2] * rhs[2];\n", 49, v244, "if constexpr (N > 3) result += lhs[3] * rhs[3];\n", 49, v244, v4, 16);
  v245 = *(this + 26) - 1;
  *(this + 26) = v245;
  LODWORD(v264) = v245;
  v268 = "}\n";
  v269 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[27] != 1)
  {
LABEL_365:
    if (v15[28] != 1)
    {
      goto LABEL_366;
    }

    goto LABEL_380;
  }

LABEL_379:
  LODWORD(v261) = *(this + 26);
  v268 = "static int __wgslDot4I8Packed(uint lhs, uint rhs)\n";
  v269 = 50;
  v267 = v261;
  v264 = v3;
  v265 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v246 = *(this + 26) + 1;
  *(this + 26) = v246;
  v266 = v246;
  v267 = v246;
  v268 = "auto vec1 = as_type<packed_char4>(lhs);";
  v269 = 39;
  v264 = "auto vec2 = as_type<packed_char4>(rhs);";
  v265 = 39;
  v263 = v246;
  v261 = "return vec1[0] * vec2[0] + vec1[1] * vec2[1] + vec1[2] * vec2[2] + vec1[3] * vec2[3];";
  v262 = 85;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v247 = *(this + 26) - 1;
  *(this + 26) = v247;
  LODWORD(v264) = v247;
  v268 = "}\n";
  v269 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[28] != 1)
  {
LABEL_366:
    if (v15[21] != 1)
    {
      goto LABEL_367;
    }

    goto LABEL_381;
  }

LABEL_380:
  LODWORD(v261) = *(this + 26);
  v268 = "static uint __wgslDot4U8Packed(uint lhs, uint rhs)\n";
  v269 = 51;
  v267 = v261;
  v264 = v3;
  v265 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  v248 = *(this + 26) + 1;
  *(this + 26) = v248;
  v266 = v248;
  v267 = v248;
  v268 = "auto vec1 = as_type<packed_uchar4>(lhs);";
  v269 = 40;
  v264 = "auto vec2 = as_type<packed_uchar4>(rhs);";
  v265 = 40;
  v263 = v248;
  v261 = "return vec1[0] * vec2[0] + vec1[1] * vec2[1] + vec1[2] * vec2[2] + vec1[3] * vec2[3];";
  v262 = 85;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v249 = *(this + 26) - 1;
  *(this + 26) = v249;
  LODWORD(v264) = v249;
  v268 = "}\n";
  v269 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[21] != 1)
  {
LABEL_367:
    if (v15[22] != 1)
    {
      goto LABEL_368;
    }

    goto LABEL_382;
  }

LABEL_381:
  v266 = *(this + 26);
  v267 = v266;
  v268 = "template<typename T>\n";
  v269 = 21;
  v264 = "static T __wgslFirstLeadingBit(T e)\n";
  v265 = 36;
  v263 = v266;
  v261 = v3;
  v262 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v250 = *(this + 26) + 1;
  *(this + 26) = v250;
  WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>((this + 64), v250, "if constexpr (is_signed_v<T>)\n", 31, v250, "    return select(T(31 - select(clz(e), clz(~e), e < T(0))), T(-1), e == T(0) || e == T(-1));\n", 95, v250, "else\n", 6, v250, "    return select(T(31 - clz(e)), T(-1), e == T(0));\n", 54);
  v251 = *(this + 26) - 1;
  *(this + 26) = v251;
  LODWORD(v264) = v251;
  v268 = "}\n";
  v269 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[22] != 1)
  {
LABEL_368:
    if (v15[23] != 1)
    {
      goto LABEL_369;
    }

    goto LABEL_383;
  }

LABEL_382:
  v266 = *(this + 26);
  v267 = v266;
  v268 = "template<typename T>\n";
  v269 = 21;
  v264 = "static T __wgslFirstTrailingBit(T e)\n";
  v265 = 37;
  v263 = v266;
  v261 = v3;
  v262 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v252 = *(this + 26) + 1;
  *(this + 26) = v252;
  LODWORD(v264) = v252;
  v268 = "return select(ctz(e), T(-1), e == T(0));\n";
  v269 = 41;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v253 = *(this + 26) - 1;
  *(this + 26) = v253;
  LODWORD(v264) = v253;
  v268 = "}\n";
  v269 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[23] != 1)
  {
LABEL_369:
    if (v15[29] != 1)
    {
      goto LABEL_370;
    }

    goto LABEL_384;
  }

LABEL_383:
  v266 = *(this + 26);
  v267 = v266;
  v268 = "template<typename T>\n";
  v269 = 21;
  v264 = "static T __wgslSign(T e)\n";
  v265 = 25;
  v263 = v266;
  v261 = v3;
  v262 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v254 = *(this + 26) + 1;
  *(this + 26) = v254;
  LODWORD(v264) = v254;
  v268 = "return select(select(T(-1), T(1), e > 0), T(0), e == 0);\n";
  v269 = 57;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v255 = *(this + 26) - 1;
  *(this + 26) = v255;
  LODWORD(v264) = v255;
  v268 = "}\n";
  v269 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[29] != 1)
  {
LABEL_370:
    if (v15[31] != 1)
    {
      goto LABEL_371;
    }

    goto LABEL_385;
  }

LABEL_384:
  v266 = *(this + 26);
  v267 = v266;
  v268 = "template<typename T>\n";
  v269 = 21;
  v264 = "static T __wgslExtractBits(T e, uint offset, uint count)\n";
  v265 = 57;
  v263 = v266;
  v261 = v3;
  v262 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v256 = *(this + 26) + 1;
  *(this + 26) = v256;
  v266 = v256;
  v267 = v256;
  v268 = "auto o = min(offset, 32u);\n";
  v269 = 27;
  v264 = "auto c = min(count, 32u - o);\n";
  v265 = 30;
  v263 = v256;
  v261 = "return select((T)0, extract_bits(e, min(o, 31u), c), c);\n";
  v262 = 57;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
  v257 = *(this + 26) - 1;
  *(this + 26) = v257;
  LODWORD(v264) = v257;
  v268 = "}\n";
  v269 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[31] != 1)
  {
LABEL_371:
    if (v15[32] != 1)
    {
      goto LABEL_372;
    }

LABEL_386:
    v266 = *(this + 26);
    v267 = v266;
    v268 = "template <typename T, typename S>\n";
    v269 = 34;
    v264 = "static T __wgslFtoi(S value)\n";
    v265 = 29;
    v263 = v266;
    v261 = v3;
    v262 = 2;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
    v259 = *(this + 26) + 1;
    *(this + 26) = v259;
    LODWORD(v264) = v259;
    v268 = "if constexpr (is_same_v<make_scalar_t<S>, half>)\n";
    v269 = 49;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    LODWORD(v264) = *(this + 26);
    v268 = "return T(select(clamp(value, max(S(numeric_limits<T>::min()), numeric_limits<S>::lowest()), numeric_limits<S>::max()), S(0), isnan(value)));\n";
    v269 = 141;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    LODWORD(v264) = *(this + 26);
    v268 = "else\n";
    v269 = 5;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    LODWORD(v264) = *(this + 26);
    v268 = "return T(select(clamp(value, S(numeric_limits<T>::min()), S(numeric_limits<T>::max() - ((128 << (!is_signed_v<T>)) - 1))), S(0), isnan(value)));\n";
    v269 = 145;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v260 = *(this + 26) - 1;
    *(this + 26) = v260;
    LODWORD(v264) = v260;
    v268 = v2;
    v269 = 3;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v15 = *(this + 12);
    if (v15[33] != 1)
    {
      goto LABEL_374;
    }

    goto LABEL_373;
  }

LABEL_385:
  LODWORD(v261) = *(this + 26);
  v268 = "static uint __attribute__((always_inline)) __wgslMin(uint a, uint b)\n";
  v269 = 69;
  v267 = v261;
  v264 = v3;
  v265 = 2;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v261, &v268, &v267, &v264);
  ++*(this + 26);
  WTF::StringBuilder::append();
  v258 = *(this + 26) - 1;
  *(this + 26) = v258;
  LODWORD(v264) = v258;
  v268 = v2;
  v269 = 3;
  WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
  v15 = *(this + 12);
  if (v15[32] == 1)
  {
    goto LABEL_386;
  }

LABEL_372:
  if (v15[33] == 1)
  {
LABEL_373:
    v266 = *(this + 26);
    v267 = v266;
    v268 = "template <typename T>\n";
    v269 = 22;
    v264 = "static T __wgslInsertBits(T e, T newBits, unsigned offset, unsigned count)\n";
    v265 = 75;
    v263 = v266;
    v261 = v3;
    v262 = 2;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v267, &v268, &v266, &v264, &v263, &v261);
    v231 = *(this + 26) + 1;
    *(this + 26) = v231;
    LODWORD(v264) = v231;
    v268 = "constexpr unsigned w = 8 * static_cast<unsigned>(sizeof(make_scalar_t<T>));\n";
    v269 = 76;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    LODWORD(v264) = *(this + 26);
    v268 = "const unsigned o = min(offset, w);\n";
    v269 = 35;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    LODWORD(v264) = *(this + 26);
    v268 = "const unsigned c = min(count, w - o);\n";
    v269 = 38;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    LODWORD(v264) = *(this + 26);
    v268 = "return insert_bits(e, newBits, min(o, w - 1), c);\n";
    v269 = 50;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v232 = *(this + 26) - 1;
    *(this + 26) = v232;
    LODWORD(v264) = v232;
    v268 = v2;
    v269 = 3;
    WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v264, &v268);
    v15 = *(this + 12);
  }

LABEL_374:
  v15[30] = 0;
}

void WTF::StringBuilder::append<WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral,WTF::Indentation<4u>,WTF::ASCIILiteral>(WTF::StringBuilder *a1, int a2, unsigned __int8 *a3, uint64_t a4, int a5, _BYTE *a6, uint64_t a7, int a8, _BYTE *a9, uint64_t a10, unsigned int a11, char *a12, uint64_t a13)
{
  if (a4)
  {
    v13 = a4 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 >> 31)
  {
    __break(0xC471u);
    goto LABEL_101;
  }

  if (a7)
  {
    v14 = a7 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x22574A7F8);
  }

  if (a10)
  {
    v15 = a10 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x22574A818);
  }

  if (a13)
  {
    v16 = a13 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 >> 31)
  {
    __break(0xC471u);
    goto LABEL_100;
  }

  v18 = (4 * a2);
  v19 = (4 * a5);
  v20 = (4 * a8);
  v21 = 4 * a11;
  __n = v16;
  v22 = *(a1 + 1);
  if ((v22 || (v22 = *a1) != 0) && (*(v22 + 16) & 4) == 0)
  {
    v26 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert(a1);
    if (!v26)
    {
      return;
    }

    v28 = v26;
    v29 = v27;
    if (!v18)
    {
      v18 = 0;
      v30 = a5;
      v31 = a4;
      v32 = v26;
      v33 = &v26[2 * v13];
      if (v13 < 0x40)
      {
LABEL_24:
        v34 = v29 - v18;
        if (v32 == v33)
        {
          goto LABEL_81;
        }

LABEL_70:
        v57 = &v28[2 * v31 + 2 * v18 - v32];
        if (v31)
        {
          v58 = -2;
        }

        else
        {
          v58 = 0;
        }

        v59 = v57 + v58 - 2;
        if (v59 < 0xE || (v31 ? (v60 = -2) : (v60 = 0), (v61 = v57 + v60 - 2, v32 < &a3[(v61 >> 1) + 1]) && a3 < (v61 & 0xFFFFFFFFFFFFFFFELL) + v32 + 2))
        {
          v62 = a3;
          v63 = v32;
          goto LABEL_80;
        }

        v65 = (v59 >> 1) + 1;
        if (v59 >= 0x3E)
        {
          v66 = v65 & 0xFFFFFFFFFFFFFFE0;
          v67 = (v32 + 32);
          v68 = (a3 + 16);
          v69 = v65 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v70 = *v68[-2].i8;
            v71 = vmovl_u8(*v68);
            v72 = vmovl_high_u8(*v68->i8);
            v67[-2] = vmovl_u8(*v70.i8);
            v67[-1] = vmovl_high_u8(v70);
            *v67 = v71;
            v67[1] = v72;
            v67 += 4;
            v68 += 4;
            v69 -= 32;
          }

          while (v69);
          if (v65 == v66)
          {
            goto LABEL_81;
          }

          if ((v65 & 0x18) == 0)
          {
            v63 = (v32 + 2 * v66);
            v62 = &a3[v66];
            do
            {
LABEL_80:
              v64 = *v62++;
              *v63 = v64;
              v63 += 2;
            }

            while (v63 != v33);
            goto LABEL_81;
          }
        }

        else
        {
          v66 = 0;
        }

        v62 = &a3[v65 & 0xFFFFFFFFFFFFFFF8];
        v63 = (v32 + 2 * (v65 & 0xFFFFFFFFFFFFFFF8));
        v73 = (v32 + 2 * v66);
        v74 = &a3[v66];
        v75 = v66 - (v65 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v76 = *v74++;
          *v73++ = vmovl_u8(v76);
          v75 += 8;
        }

        while (v75);
        if (v65 != (v65 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_80;
        }

LABEL_81:
        if (v34 >= v13)
        {

          WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::Indentation<4u>,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v33, v34 - v13, v30, a6, v14, a8, a9, v15, a11, a12, __n);
          return;
        }

        goto LABEL_100;
      }

LABEL_67:
      v49 = v32 + 2 * (v13 & 0x7FFFFFC0);
      v50 = 0uLL;
      do
      {
        v80.val[0] = *a3;
        v51 = *(a3 + 1);
        v81.val[0] = *(a3 + 2);
        v52 = *(a3 + 3);
        a3 += 64;
        v53 = v52;
        v81.val[1] = 0uLL;
        v82.val[0] = v51;
        v80.val[1] = 0uLL;
        v54 = v32;
        vst2q_s8(v54, v80);
        v54 += 32;
        v82.val[1] = 0uLL;
        vst2q_s8(v54, v82);
        v55 = (v32 + 64);
        vst2q_s8(v55, v81);
        v56 = (v32 + 96);
        vst2q_s8(v56, *(&v50 - 1));
        v32 += 128;
      }

      while (v32 != v49);
      v32 = v49;
      v34 = v29 - v18;
      if (v32 == v33)
      {
        goto LABEL_81;
      }

      goto LABEL_70;
    }

    memset_pattern16(v26, aIneStateTLTAne, 2 * v18);
    v30 = a5;
    v31 = a4;
    if (v29 >= v18)
    {
      v32 = &v28[2 * v18];
      v33 = (v32 + 2 * v13);
      if (v13 < 0x40)
      {
        goto LABEL_24;
      }

      goto LABEL_67;
    }

LABEL_100:
    __break(1u);
LABEL_101:
    JUMPOUT(0x22574A7D8);
  }

  v35 = MEMORY[0x22AA68210]();
  if (!v35)
  {
    return;
  }

  v37 = v35;
  v38 = v36;
  if (!v18)
  {
    if (!v13)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  memset(v35, 32, v18);
  if (v38 < v18)
  {
    goto LABEL_100;
  }

  v38 -= v18;
  v37 += v18;
  if (v13)
  {
LABEL_32:
    if (v13 == 1)
    {
      *v37 = *a3;
    }

    else
    {
      memcpy(v37, a3, v13);
    }
  }

LABEL_35:
  v39 = v38 - v13;
  if (v38 < v13)
  {
    goto LABEL_100;
  }

  v40 = &v37[v13];
  if (!v19)
  {
    v41 = v39;
    v42 = v40;
    if (!v14)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  memset(&v37[v13], 32, v19);
  if (v39 < v19)
  {
    goto LABEL_100;
  }

  v41 = v39 - v19;
  v42 = &v40[v19];
  if (v14)
  {
LABEL_41:
    if (v14 == 1)
    {
      *v42 = *a6;
    }

    else
    {
      memcpy(v42, a6, v14);
    }
  }

LABEL_44:
  v43 = v41 >= v14;
  v44 = v41 - v14;
  if (!v43)
  {
    goto LABEL_100;
  }

  v45 = &v42[v14];
  if (!v20)
  {
    v46 = v44;
    v47 = v45;
    if (!v15)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  memset(&v42[v14], 32, v20);
  if (v44 < v20)
  {
    goto LABEL_100;
  }

  v46 = v44 - v20;
  v47 = &v45[v20];
  if (v15)
  {
LABEL_51:
    if (v15 == 1)
    {
      *v47 = *a9;
    }

    else
    {
      memcpy(v47, a9, v15);
    }
  }

LABEL_54:
  if (v46 < v15)
  {
    goto LABEL_100;
  }

  v48 = &v47[v15];
  if (v21)
  {
    memset(v48, 32, v21);
    if (v46 - v15 < v21)
    {
      goto LABEL_100;
    }

    if (!__n)
    {
      return;
    }
  }

  else
  {
    v21 = 0;
    if (!__n)
    {
      return;
    }
  }

  if (__n == 1)
  {
    v48[v21] = *a12;
  }

  else
  {

    memcpy(&v48[v21], a12, __n);
  }
}

uint64_t WGSL::Metal::FunctionDefinitionWriter::visit(uint64_t this, int8x16_t *a2)
{
  v3 = a2;
  v4 = this;
  v6 = (this + 144);
  v5 = *(this + 144);
  if (!v5)
  {
    this = WTF::HashTable<WGSL::Graph::Node *,WGSL::Graph::Node *,WTF::IdentityExtractor,WTF::DefaultHash<WGSL::Graph::Node *>,WTF::HashTraits<WGSL::Graph::Node *>,WTF::HashTraits<WGSL::Graph::Node *>,WTF::FastMalloc>::rehash((this + 144), 8u);
    v5 = *v6;
  }

  v7 = *(v5 - 8);
  v8 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = (v10 >> 31) ^ v10;
  v12 = v7 & v11;
  v13 = (v5 + 8 * (v7 & v11));
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v3)
      {
        return this;
      }

      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v7;
      v13 = (v5 + 8 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13);
    if (v15)
    {
      *v15 = 0;
      v17 = *v6;
      *v15 = v3;
      v18 = vadd_s32(*(v17 - 16), 0x1FFFFFFFFLL);
      *(v17 - 16) = v18;
      v19 = v18.i32[1];
      v20 = (v18.i32[1] + v18.i32[0]);
      v21 = *(v17 - 4);
      if (v21 > 0x400)
      {
        goto LABEL_11;
      }

LABEL_14:
      if (3 * v21 > 4 * v20)
      {
        goto LABEL_18;
      }

      if (!v21)
      {
        v23 = 8;
        goto LABEL_17;
      }

LABEL_16:
      v23 = v21 << (6 * v19 >= (2 * v21));
LABEL_17:
      WTF::HashTable<WGSL::Graph::Node *,WGSL::Graph::Node *,WTF::IdentityExtractor,WTF::DefaultHash<WGSL::Graph::Node *>,WTF::HashTraits<WGSL::Graph::Node *>,WTF::HashTraits<WGSL::Graph::Node *>,WTF::FastMalloc>::rehash(v6, v23);
      goto LABEL_18;
    }
  }

  *v13 = v3;
  v22 = *(v5 - 16);
  v19 = *(v5 - 12) + 1;
  *(v5 - 12) = v19;
  v15 = v13;
  v20 = (v19 + v22);
  v21 = *(v5 - 4);
  if (v21 <= 0x400)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v21 <= 2 * v20)
  {
    goto LABEL_16;
  }

LABEL_18:
  v24 = *(v4 + 96);
  v25 = *(v24 + 352);
  if ((v25 & 1) == 0)
  {
    goto LABEL_170;
  }

  v26 = *(v24 + 344);
  v27 = *(v26 - 8);
  v28 = v27 & v11;
  v29 = v26 + 24 * (v27 & v11);
  v30 = *v29;
  if (*v29 == v3)
  {
LABEL_23:
    v32 = *(v29 + 20);
    if (!v32)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v31 = 1;
  while (v30)
  {
    v28 = (v28 + v31) & v27;
    v29 = v26 + 24 * v28;
    v30 = *v29;
    ++v31;
    if (*v29 == v3)
    {
      goto LABEL_23;
    }
  }

  v29 = v26 + 24 * *(v26 - 4);
  v32 = *(v29 + 20);
  if (v32)
  {
LABEL_26:
    v6 = *(v29 + 8);
    v33 = 24 * v32;
    do
    {
      v34 = *v6;
      v6 += 3;
      (*(*v4 + 56))(v4, v34, v15);
      v33 -= 24;
    }

    while (v33);
  }

LABEL_28:
  v35 = *(v3 + 21);
  if (v35)
  {
    v6 = *(v3 + 9);
    v36 = 8 * v35;
    v2 = 32;
    do
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        (*(*v4 + 96))(v4, *v6, v15);
      }

      v37 = *(v4 + 72);
      if (!v37 || (v38 = *(v4 + 80), v38 >= *(v37 + 4)) || *(v4 + 64))
      {
        WTF::StringBuilder::append();
      }

      else
      {
        v39 = *(v37 + 16);
        v40 = *(v37 + 8);
        *(v4 + 80) = v38 + 1;
        if ((v39 & 4) != 0)
        {
          *(v40 + v38) = 32;
        }

        else
        {
          *(v40 + 2 * v38) = 32;
        }
      }

      ++v6;
      v36 -= 8;
    }

    while (v36);
  }

  v41 = *(v3 + 13);
  if (v41)
  {
    WGSL::Metal::FunctionDefinitionWriter::visit(v4, *(v41 + 24), 0);
    v11 = *(v3 + 6);
    v43 = *(v4 + 80);
    if (v11)
    {
      goto LABEL_42;
    }

LABEL_51:
    if (v42)
    {
      v49 = -1;
    }

    else
    {
      v49 = 2;
    }

    v42 = __CFADD__(v43, v49);
    v50 = v43 + v49;
    if (v42)
    {
      v47 = 0xFFFFFFFFLL;
    }

    else
    {
      v47 = v50;
    }

    v48 = *(v4 + 72);
    if (!v48)
    {
      goto LABEL_58;
    }

LABEL_59:
    if ((*(v48 + 16) & 4) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  WTF::StringBuilder::append();
  v11 = *(v3 + 6);
  v43 = *(v4 + 80);
  if (!v11)
  {
    goto LABEL_51;
  }

LABEL_42:
  v44 = *(v11 + 4);
  v42 = __CFADD__(v44, 2);
  v45 = v44 + 2;
  if (v42)
  {
    v45 = -1;
  }

  v42 = __CFADD__(v43, v45);
  v46 = v43 + v45;
  if (v42)
  {
    v47 = 0xFFFFFFFFLL;
  }

  else
  {
    v47 = v46;
  }

  v48 = *(v4 + 72);
  if (v48)
  {
    goto LABEL_59;
  }

LABEL_58:
  v48 = *(v4 + 64);
  if (v48)
  {
    goto LABEL_59;
  }

LABEL_60:
  if (!v11 || (*(v11 + 16) & 4) != 0)
  {
    v53 = MEMORY[0x22AA68210](v4 + 64, v47);
    if (!v53)
    {
      goto LABEL_104;
    }

    if (a2)
    {
      *v53 = 32;
      v6 = (v53 + 1);
      v2 = &a2[-1].u64[1] + 7;
      if (!v11)
      {
        v24 = 0;
        goto LABEL_145;
      }

      a2 = *(v11 + 8);
      v54 = *(v11 + 4);
      if ((*(v11 + 16) & 4) != 0)
      {
        if (v54)
        {
          if (v54 == 1)
          {
            *v6 = a2->i8[0];
          }

          else
          {
            memcpy(v53 + 1, a2, v54);
          }
        }
      }

      else
      {
        v24 = v6 + v54;
        if (v54 < 0x10)
        {
          v25 = (v53 + 1);
        }

        else
        {
          v25 = (v53 + 1);
          do
          {
            v55 = vld2q_s8(a2->i8);
            a2 += 2;
            *v25 = v55;
            v25 += 16;
          }

          while (v25 != (v6 + (v54 & 0xFFFFFFF0)));
        }

        if (v25 != v24)
        {
          v78 = &v53[v54 - v25];
          v79 = (v78 + 1);
          if ((v78 + 1) < 4 || (v25 < a2->u64 + 2 * v78 + 2 ? (v80 = a2 >= &v53[v54 + 1]) : (v80 = 1), !v80))
          {
            v81 = v25;
            v82 = a2;
            goto LABEL_141;
          }

          if (v79 >= 0x20)
          {
            v14 = v79 & 0xFFFFFFFFFFFFFFE0;
            v92 = a2 + 2;
            v93 = (v25 + 16);
            v94 = v79 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v96 = v92[-2];
              v95 = v92[-1];
              v98 = *v92;
              v97 = v92[1];
              v92 += 4;
              v93[-1] = vuzp1q_s8(v96, v95);
              *v93 = vuzp1q_s8(v98, v97);
              v93 += 2;
              v94 -= 32;
            }

            while (v94);
            if (v79 == v14)
            {
              goto LABEL_144;
            }

            if ((v79 & 0x1C) == 0)
            {
              goto LABEL_171;
            }
          }

          else
          {
            v14 = 0;
          }

          v81 = (v25 + (v79 & 0xFFFFFFFFFFFFFFFCLL));
          v82 = (a2 + 2 * (v79 & 0xFFFFFFFFFFFFFFFCLL));
          v99 = (a2 + 2 * v14);
          v25 += v14;
          v14 -= v79 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v100 = *v99++;
            *v25 = vuzp1_s8(v100, v100).u32[0];
            v25 += 4;
            v14 += 4;
          }

          while (v14);
          if (v79 != (v79 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_141;
          }
        }
      }

      goto LABEL_144;
    }

    do
    {
      do
      {
LABEL_170:
        __break(1u);
LABEL_171:
        v82 = (a2 + 2 * v14);
        v81 = (v25 + v14);
        do
        {
LABEL_141:
          v83 = *v82;
          v82 = (v82 + 2);
          v25 = v83;
          *v81++ = v83;
        }

        while (v81 != v24);
LABEL_144:
        v24 = *(v11 + 4);
      }

      while (v2 < v24);
LABEL_145:
      ;
    }

    while (v2 == v24);
    *(v6 + v24) = 40;
    v71 = *(v3 + 17);
    if (!v71)
    {
      goto LABEL_147;
    }

    goto LABEL_105;
  }

LABEL_62:
  v51 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((v4 + 64));
  if (!v51)
  {
    goto LABEL_104;
  }

  if (!a2)
  {
    goto LABEL_170;
  }

  *v51 = 32;
  v6 = (v51 + 1);
  v2 = &a2[-1].u64[1] + 7;
  if (!v11)
  {
    v24 = 0;
    goto LABEL_102;
  }

  a2 = *(v11 + 8);
  v52 = *(v11 + 4);
  if ((*(v11 + 16) & 4) != 0)
  {
    v56 = v6 + v52;
    if (v52 < 0x40)
    {
      v25 = (v51 + 1);
    }

    else
    {
      v25 = v6 + 2 * (v52 & 0xFFFFFFC0);
      v57 = 0uLL;
      v58 = (v51 + 1);
      do
      {
        v101.val[0] = *a2;
        v59 = a2[1];
        v102.val[0] = a2[2];
        v60 = a2[3];
        a2 += 4;
        v61 = v60;
        v102.val[1] = 0uLL;
        v103.val[0] = v59;
        v101.val[1] = 0uLL;
        v62 = v58;
        vst2q_s8(v62, v101);
        v62 += 32;
        v103.val[1] = 0uLL;
        vst2q_s8(v62, v103);
        v63 = v58 + 64;
        vst2q_s8(v63, v102);
        v64 = v58 + 96;
        vst2q_s8(v64, *(&v57 - 1));
        v58 += 128;
      }

      while (v58 != v25);
    }

    if (v25 == v56)
    {
      goto LABEL_101;
    }

    v65 = &v51[v52] - v25;
    if (v65 < 0xE || (v25 < a2->u64 + (v65 >> 1) + 1 ? (v66 = a2 >= (v65 & 0xFFFFFFFFFFFFFFFELL) + v25 + 2) : (v66 = 1), !v66))
    {
      v68 = a2;
      v69 = v25;
      goto LABEL_98;
    }

    v67 = (v65 >> 1) + 1;
    if (v65 >= 0x3E)
    {
      v14 = v67 & 0xFFFFFFFFFFFFFFE0;
      v84 = (v25 + 32);
      v85 = &a2[1];
      v86 = v67 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v87 = *v85[-2].i8;
        v88 = vmovl_u8(*v85);
        v89 = vmovl_high_u8(*v85->i8);
        v84[-2] = vmovl_u8(*v87.i8);
        v84[-1] = vmovl_high_u8(v87);
        *v84 = v88;
        v84[1] = v89;
        v84 += 4;
        v85 += 4;
        v86 -= 32;
      }

      while (v86);
      if (v67 == v14)
      {
        goto LABEL_101;
      }

      if ((v67 & 0x18) == 0)
      {
        v69 = (v25 + 2 * v14);
        v68 = &a2->i8[v14];
        goto LABEL_98;
      }
    }

    else
    {
      v14 = 0;
    }

    v68 = &a2->i8[v67 & 0xFFFFFFFFFFFFFFF8];
    v69 = (v25 + 2 * (v67 & 0xFFFFFFFFFFFFFFF8));
    v25 += 2 * v14;
    v90 = &a2->i8[v14];
    v14 -= v67 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v91 = *v90++;
      *v25 = vmovl_u8(v91);
      v25 += 16;
      v14 += 8;
    }

    while (v14);
    if (v67 == (v67 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_101;
    }

    do
    {
LABEL_98:
      v70 = *v68;
      v68 = (v68 + 1);
      v25 = v70;
      *v69++ = v70;
    }

    while (v69 != v56);
    goto LABEL_101;
  }

  if (v52)
  {
    if (v52 == 1)
    {
      *v6 = a2->i16[0];
    }

    else
    {
      memcpy(v51 + 1, a2, 2 * v52);
    }
  }

LABEL_101:
  v24 = *(v11 + 4);
  if (v2 < v24)
  {
    goto LABEL_170;
  }

LABEL_102:
  if (v2 == v24)
  {
    goto LABEL_170;
  }

  *(v6 + v24) = 40;
LABEL_104:
  v71 = *(v3 + 17);
  if (!v71)
  {
    goto LABEL_147;
  }

LABEL_105:
  v72 = *(v3 + 7);
  v73 = *(*v72 + 24);
  if (v73 <= 1)
  {
    if (*(*v72 + 24))
    {
      if (v73 == 1)
      {
        if ((*(v4 + 32) & 1) == 0)
        {
          (*(*v4 + 344))(v4);
        }

        WTF::StringBuilder::append();
      }

      goto LABEL_116;
    }

    goto LABEL_114;
  }

  if (v73 == 3)
  {
LABEL_114:
    if ((*(v4 + 32) & 1) == 0)
    {
      (*(*v4 + 344))(v4);
    }

    goto LABEL_116;
  }

  if (v73 == 2)
  {
    WGSL::Metal::FunctionDefinitionWriter::visitArgumentBufferParameter(v4, *v72);
  }

LABEL_116:
  if (v71 != 1)
  {
    v74 = (v72 + 1);
    for (i = 8 * v71 - 8; i; i -= 8)
    {
      v76 = *v74;
      WTF::StringBuilder::append();
      v77 = v76[24];
      if (v77 > 1)
      {
        if (v77 == 2)
        {
          WGSL::Metal::FunctionDefinitionWriter::visitArgumentBufferParameter(v4, v76);
        }

        else if (v77 == 3)
        {
LABEL_127:
          if ((*(v4 + 32) & 1) == 0)
          {
            (*(*v4 + 344))(v4, v76);
          }
        }
      }

      else
      {
        if (!v76[24])
        {
          goto LABEL_127;
        }

        if (v77 == 1)
        {
          if ((*(v4 + 32) & 1) == 0)
          {
            (*(*v4 + 344))(v4, v76);
          }

          WTF::StringBuilder::append();
        }
      }

      ++v74;
    }
  }

LABEL_147:
  if (*(v4 + 115) == 1)
  {
    *(v4 + 115) = 0;
  }

  *(v4 + 120) = v3;
  WTF::StringBuilder::append();
  if ((*(v4 + 32) & 1) == 0)
  {
    (*(*v4 + 400))(v4, *(v3 + 14));
  }

  this = WTF::StringBuilder::append();
  *(v4 + 120) = 0;
  return this;
}

uint64_t WTF::StringBuilder::append(uint64_t this, __int16 a2)
{
  v2 = *(this + 8);
  if (!v2)
  {
    return WTF::StringBuilder::append();
  }

  v3 = *(this + 16);
  if (v3 >= *(v2 + 4) || *this)
  {
    return WTF::StringBuilder::append();
  }

  v4 = *(v2 + 16);
  v5 = *(v2 + 8);
  *(this + 16) = v3 + 1;
  if ((v4 & 4) != 0)
  {
    *(v5 + v3) = a2;
  }

  else
  {
    *(v5 + 2 * v3) = a2;
  }

  return this;
}

char *WGSL::Metal::FunctionDefinitionWriter::visit(char *this, const WGSL::Type *a2, int a3)
{
  v4 = a2;
  v5 = this;
  v254 = *MEMORY[0x277D85DE8];
  if (this[109] != 1)
  {
    if (this[111] == 1)
    {
      if (this[110] == 1)
      {
        v13 = *(a2 + 48);
        if (v13 == 255)
        {
          v14 = -1;
        }

        else
        {
          v14 = *(a2 + 48);
        }

        v7 = 1;
        v8 = *(a2 + 48);
        switch(v14)
        {
          case 1:
            goto LABEL_381;
          case 2:
            goto LABEL_530;
          case 3:
            goto LABEL_623;
          case 4:
            goto LABEL_617;
          case 5:
            goto LABEL_470;
          case 6:
            goto LABEL_679;
          case 7:
            goto LABEL_482;
          case 8:
            goto LABEL_356;
          case 9:
            goto LABEL_445;
          case 10:
            if (v13 != 10)
            {
              goto LABEL_683;
            }

            v15 = *a2;
            if (v15 > 2)
            {
              goto LABEL_22;
            }

            if (!*a2 || v15 == 2)
            {
              goto LABEL_100;
            }

            break;
          case 11:
            goto LABEL_322;
          case 12:
            goto LABEL_465;
          case 13:
            goto LABEL_682;
          default:
            goto LABEL_8;
        }

        while (1)
        {
          v4 = *(v4 + 1);
          v8 = *(v4 + 48);
          if (v8 == 255)
          {
            v54 = -1;
          }

          else
          {
            v54 = *(v4 + 48);
          }

          if (v54 != 10)
          {
            switch(v54)
            {
              case 1:
                goto LABEL_313;
              case 2:
                goto LABEL_529;
              case 3:
                goto LABEL_622;
              case 4:
                goto LABEL_616;
              case 5:
                goto LABEL_469;
              case 6:
                goto LABEL_679;
              case 7:
                goto LABEL_481;
              case 8:
                goto LABEL_356;
              case 9:
                goto LABEL_445;
              case 10:
                goto LABEL_685;
              case 11:
                goto LABEL_322;
              case 12:
                goto LABEL_465;
              case 13:
                goto LABEL_682;
              default:
                goto LABEL_8;
            }
          }

          if (v8 != 10)
          {
            break;
          }

          v15 = *v4;
          if (v15 > 2)
          {
LABEL_22:
            switch(v15)
            {
              case 3u:
                goto LABEL_165;
              case 4u:
                goto LABEL_167;
              case 5u:
                goto LABEL_87;
            }
          }

          else
          {
            if (*v4)
            {
              v55 = v15 == 2;
            }

            else
            {
              v55 = 1;
            }

            if (v55)
            {
              goto LABEL_100;
            }
          }
        }
      }

      else if (this[113])
      {
        v19 = *(a2 + 48);
        v8 = v19;
        if (v19 == 255)
        {
          v20 = -1;
        }

        else
        {
          v20 = *(a2 + 48);
        }

        if (this[112] == 3)
        {
          v7 = 1;
          switch(v20)
          {
            case 1:
              goto LABEL_381;
            case 2:
              goto LABEL_530;
            case 3:
              goto LABEL_623;
            case 4:
              goto LABEL_617;
            case 5:
              goto LABEL_470;
            case 6:
              goto LABEL_679;
            case 7:
              goto LABEL_482;
            case 8:
              goto LABEL_356;
            case 9:
              goto LABEL_445;
            case 10:
              if (v19 != 10)
              {
                goto LABEL_683;
              }

              v21 = *a2;
              if (v21 > 2)
              {
                goto LABEL_51;
              }

              if (!*a2 || v21 == 2)
              {
                goto LABEL_100;
              }

              break;
            case 11:
              goto LABEL_322;
            case 12:
              goto LABEL_465;
            case 13:
              goto LABEL_682;
            default:
              goto LABEL_8;
          }

          while (1)
          {
            v4 = *(v4 + 1);
            v8 = *(v4 + 48);
            if (v8 == 255)
            {
              v88 = -1;
            }

            else
            {
              v88 = *(v4 + 48);
            }

            if (v88 != 10)
            {
              switch(v88)
              {
                case 1:
                  goto LABEL_313;
                case 2:
                  goto LABEL_529;
                case 3:
                  goto LABEL_622;
                case 4:
                  goto LABEL_616;
                case 5:
                  goto LABEL_469;
                case 6:
                  goto LABEL_679;
                case 7:
                  goto LABEL_481;
                case 8:
                  goto LABEL_356;
                case 9:
                  goto LABEL_445;
                case 10:
                  goto LABEL_685;
                case 11:
                  goto LABEL_322;
                case 12:
                  goto LABEL_465;
                case 13:
                  goto LABEL_682;
                default:
                  goto LABEL_8;
              }
            }

            if (v8 != 10)
            {
              break;
            }

            v21 = *v4;
            if (v21 > 2)
            {
LABEL_51:
              switch(v21)
              {
                case 3u:
                  goto LABEL_165;
                case 4u:
                  goto LABEL_167;
                case 5u:
                  goto LABEL_87;
              }
            }

            else
            {
              if (*v4)
              {
                v89 = v21 == 2;
              }

              else
              {
                v89 = 1;
              }

              if (v89)
              {
                goto LABEL_100;
              }
            }
          }
        }

        else
        {
          v7 = 0;
          switch(v20)
          {
            case 1:
              goto LABEL_381;
            case 2:
              goto LABEL_530;
            case 3:
              goto LABEL_623;
            case 4:
              goto LABEL_617;
            case 5:
              goto LABEL_470;
            case 6:
              goto LABEL_679;
            case 7:
              goto LABEL_482;
            case 8:
              goto LABEL_356;
            case 9:
              goto LABEL_445;
            case 10:
              if (v19 != 10)
              {
                goto LABEL_683;
              }

              v32 = *a2;
              if (v32 > 2)
              {
                goto LABEL_94;
              }

              if (!*a2 || v32 == 2)
              {
                goto LABEL_100;
              }

              break;
            case 11:
              goto LABEL_322;
            case 12:
              goto LABEL_465;
            case 13:
              goto LABEL_682;
            default:
              goto LABEL_8;
          }

          while (1)
          {
            v4 = *(v4 + 1);
            v8 = *(v4 + 48);
            if (v8 == 255)
            {
              v90 = -1;
            }

            else
            {
              v90 = *(v4 + 48);
            }

            if (v90 != 10)
            {
              switch(v90)
              {
                case 1:
                  goto LABEL_316;
                case 2:
                  goto LABEL_317;
                case 3:
                  goto LABEL_319;
                case 4:
                  goto LABEL_318;
                case 5:
                  goto LABEL_315;
                case 6:
                  goto LABEL_679;
                case 7:
                  goto LABEL_320;
                case 8:
                  goto LABEL_356;
                case 9:
                  goto LABEL_445;
                case 10:
                  goto LABEL_685;
                case 11:
                  goto LABEL_322;
                case 12:
                  goto LABEL_465;
                case 13:
                  goto LABEL_682;
                default:
                  goto LABEL_8;
              }
            }

            if (v8 != 10)
            {
              break;
            }

            v32 = *v4;
            if (v32 > 2)
            {
LABEL_94:
              switch(v32)
              {
                case 3u:
                  goto LABEL_165;
                case 4u:
                  goto LABEL_167;
                case 5u:
                  goto LABEL_87;
              }
            }

            else
            {
              if (*v4)
              {
                v91 = v32 == 2;
              }

              else
              {
                v91 = 1;
              }

              if (v91)
              {
                goto LABEL_100;
              }
            }
          }
        }
      }

      else
      {
        v26 = *(a2 + 48);
        if (v26 == 255)
        {
          v27 = -1;
        }

        else
        {
          v27 = *(a2 + 48);
        }

        v7 = 0;
        v8 = *(a2 + 48);
        switch(v27)
        {
          case 1:
            goto LABEL_381;
          case 2:
            goto LABEL_530;
          case 3:
            goto LABEL_623;
          case 4:
            goto LABEL_617;
          case 5:
            goto LABEL_470;
          case 6:
            goto LABEL_679;
          case 7:
            goto LABEL_482;
          case 8:
            goto LABEL_356;
          case 9:
            goto LABEL_445;
          case 10:
            if (v26 != 10)
            {
              goto LABEL_683;
            }

            v28 = *a2;
            if (v28 > 2)
            {
              goto LABEL_78;
            }

            if (!*a2 || v28 == 2)
            {
              goto LABEL_100;
            }

            break;
          case 11:
            goto LABEL_322;
          case 12:
            goto LABEL_465;
          case 13:
            goto LABEL_682;
          default:
            goto LABEL_8;
        }

        while (1)
        {
          v4 = *(v4 + 1);
          v8 = *(v4 + 48);
          if (v8 == 255)
          {
            v75 = -1;
          }

          else
          {
            v75 = *(v4 + 48);
          }

          if (v75 != 10)
          {
            switch(v75)
            {
              case 1:
                goto LABEL_316;
              case 2:
                goto LABEL_317;
              case 3:
                goto LABEL_319;
              case 4:
                goto LABEL_318;
              case 5:
                goto LABEL_315;
              case 6:
                goto LABEL_679;
              case 7:
                goto LABEL_320;
              case 8:
                goto LABEL_356;
              case 9:
                goto LABEL_445;
              case 10:
                goto LABEL_685;
              case 11:
                goto LABEL_322;
              case 12:
                goto LABEL_465;
              case 13:
                goto LABEL_682;
              default:
                goto LABEL_8;
            }
          }

          if (v8 != 10)
          {
            break;
          }

          v28 = *v4;
          if (v28 > 2)
          {
LABEL_78:
            switch(v28)
            {
              case 3u:
                goto LABEL_165;
              case 4u:
                goto LABEL_167;
              case 5u:
                goto LABEL_87;
            }
          }

          else
          {
            if (*v4)
            {
              v76 = v28 == 2;
            }

            else
            {
              v76 = 1;
            }

            if (v76)
            {
              goto LABEL_100;
            }
          }
        }
      }

      goto LABEL_683;
    }

    if (this[113])
    {
      v16 = *(a2 + 48);
      v8 = v16;
      if (v16 == 255)
      {
        v17 = -1;
      }

      else
      {
        v17 = *(a2 + 48);
      }

      if (this[112] == 3)
      {
        v7 = 1;
        switch(v17)
        {
          case 1:
            goto LABEL_381;
          case 2:
            goto LABEL_530;
          case 3:
            goto LABEL_623;
          case 4:
            goto LABEL_617;
          case 5:
            goto LABEL_470;
          case 6:
            goto LABEL_679;
          case 7:
            goto LABEL_482;
          case 8:
            goto LABEL_356;
          case 9:
            goto LABEL_445;
          case 10:
            if (v16 != 10)
            {
              goto LABEL_683;
            }

            v18 = *a2;
            if (v18 > 2)
            {
              goto LABEL_34;
            }

            if (!*a2 || v18 == 2)
            {
              goto LABEL_100;
            }

            break;
          case 11:
            goto LABEL_322;
          case 12:
            goto LABEL_465;
          case 13:
            goto LABEL_682;
          default:
            goto LABEL_8;
        }

        while (1)
        {
          v4 = *(v4 + 1);
          v8 = *(v4 + 48);
          if (v8 == 255)
          {
            v71 = -1;
          }

          else
          {
            v71 = *(v4 + 48);
          }

          if (v71 != 10)
          {
            switch(v71)
            {
              case 1:
LABEL_313:
                a3 = 0;
                v7 = 1;
                goto LABEL_381;
              case 2:
LABEL_529:
                LOBYTE(a3) = 0;
                LOBYTE(v7) = 1;
                goto LABEL_530;
              case 3:
LABEL_622:
                LOBYTE(a3) = 0;
                LOBYTE(v7) = 1;
                goto LABEL_623;
              case 4:
LABEL_616:
                a3 = 0;
                v7 = 1;
                goto LABEL_617;
              case 5:
LABEL_469:
                LOBYTE(a3) = 0;
                LOBYTE(v7) = 1;
                goto LABEL_470;
              case 6:
                goto LABEL_679;
              case 7:
LABEL_481:
                LOBYTE(a3) = 0;
                LOBYTE(v7) = 1;
                goto LABEL_482;
              case 8:
                goto LABEL_356;
              case 9:
                goto LABEL_445;
              case 10:
                goto LABEL_685;
              case 11:
                goto LABEL_322;
              case 12:
                goto LABEL_465;
              case 13:
                goto LABEL_682;
              default:
                goto LABEL_8;
            }
          }

          if (v8 != 10)
          {
            break;
          }

          v18 = *v4;
          if (v18 > 2)
          {
LABEL_34:
            switch(v18)
            {
              case 3u:
                goto LABEL_165;
              case 4u:
                goto LABEL_167;
              case 5u:
                goto LABEL_87;
            }
          }

          else
          {
            if (*v4)
            {
              v72 = v18 == 2;
            }

            else
            {
              v72 = 1;
            }

            if (v72)
            {
              goto LABEL_100;
            }
          }
        }
      }

      else
      {
        v7 = 0;
        switch(v17)
        {
          case 1:
            goto LABEL_381;
          case 2:
            goto LABEL_530;
          case 3:
            goto LABEL_623;
          case 4:
            goto LABEL_617;
          case 5:
            goto LABEL_470;
          case 6:
            goto LABEL_679;
          case 7:
            goto LABEL_482;
          case 8:
            goto LABEL_356;
          case 9:
            goto LABEL_445;
          case 10:
            if (v16 != 10)
            {
              goto LABEL_683;
            }

            v25 = *a2;
            if (v25 > 2)
            {
              goto LABEL_68;
            }

            if (!*a2 || v25 == 2)
            {
              goto LABEL_100;
            }

            break;
          case 11:
            goto LABEL_322;
          case 12:
            goto LABEL_465;
          case 13:
            goto LABEL_682;
          default:
            goto LABEL_8;
        }

        while (1)
        {
          v4 = *(v4 + 1);
          v8 = *(v4 + 48);
          if (v8 == 255)
          {
            v73 = -1;
          }

          else
          {
            v73 = *(v4 + 48);
          }

          if (v73 != 10)
          {
            switch(v73)
            {
              case 1:
                goto LABEL_316;
              case 2:
                goto LABEL_317;
              case 3:
                goto LABEL_319;
              case 4:
                goto LABEL_318;
              case 5:
                goto LABEL_315;
              case 6:
                goto LABEL_679;
              case 7:
                goto LABEL_320;
              case 8:
                goto LABEL_356;
              case 9:
                goto LABEL_445;
              case 10:
                goto LABEL_685;
              case 11:
                goto LABEL_322;
              case 12:
                goto LABEL_465;
              case 13:
                goto LABEL_682;
              default:
                goto LABEL_8;
            }
          }

          if (v8 != 10)
          {
            break;
          }

          v25 = *v4;
          if (v25 > 2)
          {
LABEL_68:
            switch(v25)
            {
              case 3u:
                goto LABEL_165;
              case 4u:
                goto LABEL_167;
              case 5u:
                goto LABEL_87;
            }
          }

          else
          {
            if (*v4)
            {
              v74 = v25 == 2;
            }

            else
            {
              v74 = 1;
            }

            if (v74)
            {
              goto LABEL_100;
            }
          }
        }
      }

LABEL_683:
      mpark::throw_bad_variant_access(this);
    }

    v22 = *(a2 + 48);
    if (v22 == 255)
    {
      v23 = -1;
    }

    else
    {
      v23 = *(a2 + 48);
    }

    v7 = 0;
    v8 = *(a2 + 48);
    switch(v23)
    {
      case 1:
LABEL_381:
        if (v8 != 1)
        {
          goto LABEL_683;
        }

        v110 = v7 | a3;
        if (*(v4 + 8) == 3)
        {
          v111 = v110;
        }

        else
        {
          v111 = 0;
        }

        if (v111 == 1)
        {
          if (*(*v4 + 48))
          {
            goto LABEL_683;
          }

          v112 = **v4;
          if (v112 <= 2)
          {
            if (v112 >= 2)
            {
              v113 = "packed_uint";
              v114 = 11;
            }

            else
            {
              v113 = "packed_int";
              v114 = 10;
            }

            goto LABEL_415;
          }

          if (**v4 > 4u)
          {
            if (v112 != 5)
            {
              if (v112 - 6 < 8)
              {
                __break(0xC471u);
                JUMPOUT(0x22574C52CLL);
              }

              return this;
            }
          }

          else if (v112 != 3)
          {
            v113 = "packed_half";
            v114 = 11;
LABEL_415:
            v252 = v113;
            v253 = v114;
            LOBYTE(v250) = 3;
            return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned char,void>>((this + 64), &v252, &v250);
          }

          v113 = "packed_float";
          v114 = 12;
          goto LABEL_415;
        }

        WTF::StringBuilder::append();
        WGSL::Metal::FunctionDefinitionWriter::visit(v5, *v4, v110);
        v115 = 0;
        v116 = *(v4 + 8);
        v117 = *(v5 + 20);
        v118 = v116;
        do
        {
          ++v115;
          v119 = v118;
          v118 /= 0xAu;
        }

        while (v119 > 9);
        v68 = __CFADD__(v115, 3);
        v120 = v115 + 3;
        if (v68)
        {
          v120 = -1;
        }

        v68 = __CFADD__(v117, v120);
        v121 = v117 + v120;
        if (v68)
        {
          v122 = 0xFFFFFFFFLL;
        }

        else
        {
          v122 = v121;
        }

        v123 = *(v5 + 9);
        if ((v123 || (v123 = *(v5 + 8)) != 0) && (*(v123 + 16) & 4) == 0)
        {
          this = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((v5 + 64));
          if (!this)
          {
            return this;
          }

          *this = 2097196;
          v125 = this + 4;
          if (v124 > 1)
          {
            v126 = v124 - 2;
            BYTE3(v252) = (v116 % 0xAu) | 0x30;
            if (v116 >= 0xA)
            {
              BYTE2(v252) = (v116 / 0xAu - 10 * ((26 * (v116 / 0xAu)) >> 8)) | 0x30;
              if (v116 >= 0x64)
              {
                v127 = 0;
                BYTE1(v252) = ((41 * v116) >> 12) | 0x30;
                v128 = 1;
              }

              else
              {
                v127 = 1;
                v128 = 2;
              }
            }

            else
            {
              v127 = 0;
              v128 = 3;
            }

            if (v124 != 2)
            {
              *v125 = *(&v252 + v128);
              if (v116 >= 0xA)
              {
                if (v124 == 3)
                {
                  goto LABEL_685;
                }

                *(this + 3) = *(&v252 + v128 + 1);
                if ((v127 & 1) == 0)
                {
                  if (v124 == 4)
                  {
                    goto LABEL_685;
                  }

                  *(this + 4) = *(&v252 + v128 + 2);
                }
              }

              LODWORD(v135) = 0;
              do
              {
                v135 = (v135 + 1);
                v136 = v116;
                LOBYTE(v116) = v116 / 0xAu;
              }

              while (v136 > 9);
              goto LABEL_614;
            }
          }
        }

        else
        {
          this = MEMORY[0x22AA68210](v5 + 64, v122);
          if (!this)
          {
            return this;
          }

          *this = 8236;
          if (v129 > 1)
          {
            v130 = (205 * v116) >> 11;
            BYTE3(v252) = (v116 - 10 * v130) | 0x30;
            if (v116 >= 0xA)
            {
              BYTE2(v252) = (v130 - 10 * ((26 * v130) >> 8)) | 0x30;
              if (v116 >= 0x64)
              {
                v131 = 0;
                BYTE1(v252) = ((41 * v116) >> 12) | 0x30;
                v132 = 1;
              }

              else
              {
                v131 = 1;
                v132 = 2;
              }
            }

            else
            {
              v131 = 0;
              v132 = 3;
            }

            if (v129 != 2)
            {
              this[2] = *(&v252 + v132);
              if (v116 >= 0xA)
              {
                if (v129 == 3)
                {
                  goto LABEL_685;
                }

                this[3] = *(&v252 + v132 + 1);
                if ((v131 & 1) == 0)
                {
                  if (v129 == 4)
                  {
                    goto LABEL_685;
                  }

                  this[4] = *(&v252 + v132 + 2);
                }
              }

              LODWORD(v133) = 0;
              do
              {
                v133 = (v133 + 1);
                v134 = v116;
                LOBYTE(v116) = v116 / 0xAu;
              }

              while (v134 > 9);
              if (v129 - 2 > v133)
              {
                this[v133 + 2] = 62;
                return this;
              }
            }
          }
        }

        goto LABEL_685;
      case 2:
LABEL_530:
        if (v8 != 2)
        {
          goto LABEL_683;
        }

        WTF::StringBuilder::append();
        WGSL::Metal::FunctionDefinitionWriter::visit(v5, *v4, v7 | a3);
        v165 = 0;
        v166 = *(v4 + 8);
        v167 = *(v4 + 9);
        v168 = *(v5 + 20);
        v169 = v166;
        do
        {
          ++v165;
          v170 = v169;
          v169 /= 0xAu;
        }

        while (v170 > 9);
        v171 = 0;
        v172 = v167;
        do
        {
          ++v171;
          v173 = v172;
          v172 /= 0xAu;
        }

        while (v173 > 9);
        v68 = __CFADD__(v171, 3);
        v174 = v171 + 3;
        if (v68)
        {
          v174 = -1;
        }

        v68 = __CFADD__(v165, v174);
        v175 = v165 + v174;
        if (v68)
        {
          v175 = -1;
        }

        v68 = __CFADD__(v175, 2);
        v176 = v175 + 2;
        if (v68)
        {
          v176 = -1;
        }

        v68 = __CFADD__(v168, v176);
        v177 = v168 + v176;
        if (v68)
        {
          v178 = 0xFFFFFFFFLL;
        }

        else
        {
          v178 = v177;
        }

        v179 = *(v5 + 9);
        if ((v179 || (v179 = *(v5 + 8)) != 0) && (*(v179 + 16) & 4) == 0)
        {
          this = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((v5 + 64));
          if (!this)
          {
            return this;
          }

          *this = 2097196;
          v181 = this + 4;
          if (v180 > 1)
          {
            v182 = v180 - 2;
            BYTE3(v252) = (v166 % 0xAu) | 0x30;
            if (v166 >= 0xA)
            {
              BYTE2(v252) = (v166 / 0xAu - 10 * ((26 * (v166 / 0xAu)) >> 8)) | 0x30;
              if (v166 >= 0x64)
              {
                v183 = 0;
                BYTE1(v252) = ((41 * v166) >> 12) | 0x30;
                v184 = 1;
              }

              else
              {
                v183 = 1;
                v184 = 2;
              }
            }

            else
            {
              v183 = 0;
              v184 = 3;
            }

            if (v180 != 2)
            {
              *v181 = *(&v252 + v184);
              if (v166 >= 0xA)
              {
                if (v180 == 3)
                {
                  goto LABEL_685;
                }

                *(this + 3) = *(&v252 + v184 + 1);
                if ((v183 & 1) == 0)
                {
                  if (v180 == 4)
                  {
                    goto LABEL_685;
                  }

                  *(this + 4) = *(&v252 + v184 + 2);
                }
              }

              LODWORD(v201) = 0;
              do
              {
                v201 = (v201 + 1);
                v202 = v166;
                LOBYTE(v166) = v166 / 0xAu;
              }

              while (v202 > 9);
              v68 = v182 >= v201;
              v203 = v182 - v201;
              if (v68)
              {
                v204 = &v181[v201];
                *v204 = 2097196;
                v125 = v204 + 2;
                if (v203 > 1)
                {
                  v126 = v203 - 2;
                  BYTE3(v252) = (v167 % 0xAu) | 0x30;
                  if (v167 >= 0xA)
                  {
                    BYTE2(v252) = (v167 / 0xAu - 10 * ((26 * (v167 / 0xAu)) >> 8)) | 0x30;
                    if (v167 >= 0x64)
                    {
                      v205 = 0;
                      BYTE1(v252) = ((41 * v167) >> 12) | 0x30;
                      v206 = 1;
                    }

                    else
                    {
                      v205 = 1;
                      v206 = 2;
                    }
                  }

                  else
                  {
                    v205 = 0;
                    v206 = 3;
                  }

                  if (v126)
                  {
                    *v125 = *(&v252 + v206);
                    if (v167 >= 0xA)
                    {
                      if (v126 == 1)
                      {
                        goto LABEL_685;
                      }

                      v204[3] = *(&v252 + v206 + 1);
                      if ((v205 & 1) == 0)
                      {
                        if (v126 == 2)
                        {
                          goto LABEL_685;
                        }

                        v204[4] = *(&v252 + v206 + 2);
                      }
                    }

                    LODWORD(v135) = 0;
                    do
                    {
                      v135 = (v135 + 1);
                      v207 = v167;
                      LOBYTE(v167) = v167 / 0xAu;
                    }

                    while (v207 > 9);
LABEL_614:
                    if (v126 > v135)
                    {
                      v125[v135] = 62;
                      return this;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          this = MEMORY[0x22AA68210](v5 + 64, v178);
          if (!this)
          {
            return this;
          }

          *this = 8236;
          if (v185 > 1)
          {
            v186 = v185 - 2;
            v187 = (205 * v166) >> 11;
            BYTE3(v252) = (v166 - 10 * v187) | 0x30;
            if (v166 >= 0xA)
            {
              BYTE2(v252) = (v187 - 10 * ((26 * v187) >> 8)) | 0x30;
              if (v166 >= 0x64)
              {
                v188 = 0;
                BYTE1(v252) = ((41 * v166) >> 12) | 0x30;
                v189 = 1;
              }

              else
              {
                v188 = 1;
                v189 = 2;
              }
            }

            else
            {
              v188 = 0;
              v189 = 3;
            }

            if (v185 != 2)
            {
              this[2] = *(&v252 + v189);
              if (v166 >= 0xA)
              {
                if (v185 == 3)
                {
                  goto LABEL_685;
                }

                this[3] = *(&v252 + v189 + 1);
                if ((v188 & 1) == 0)
                {
                  if (v185 == 4)
                  {
                    goto LABEL_685;
                  }

                  this[4] = *(&v252 + v189 + 2);
                }
              }

              LODWORD(v190) = 0;
              do
              {
                v190 = (v190 + 1);
                v191 = v166;
                LOBYTE(v166) = v166 / 0xAu;
              }

              while (v191 > 9);
              v68 = v186 >= v190;
              v192 = v186 - v190;
              if (v68)
              {
                v193 = &this[v190 + 2];
                *v193 = 8236;
                if (v192 > 1)
                {
                  v194 = v192 - 2;
                  v195 = (205 * v167) >> 11;
                  BYTE3(v252) = (v167 - 10 * v195) | 0x30;
                  if (v167 >= 0xA)
                  {
                    BYTE2(v252) = (v195 - 10 * ((26 * v195) >> 8)) | 0x30;
                    if (v167 >= 0x64)
                    {
                      v196 = 0;
                      BYTE1(v252) = ((41 * v167) >> 12) | 0x30;
                      v197 = 1;
                    }

                    else
                    {
                      v196 = 1;
                      v197 = 2;
                    }
                  }

                  else
                  {
                    v196 = 0;
                    v197 = 3;
                  }

                  if (v194)
                  {
                    v198 = v193 + 2;
                    v193[2] = *(&v252 + v197);
                    if (v167 >= 0xA)
                    {
                      if (v194 == 1)
                      {
                        goto LABEL_685;
                      }

                      v193[3] = *(&v252 + v197 + 1);
                      if ((v196 & 1) == 0)
                      {
                        if (v194 == 2)
                        {
                          goto LABEL_685;
                        }

                        v193[4] = *(&v252 + v197 + 2);
                      }
                    }

                    LODWORD(v199) = 0;
                    do
                    {
                      v199 = (v199 + 1);
                      v200 = v167;
                      LOBYTE(v167) = v167 / 0xAu;
                    }

                    while (v200 > 9);
                    if (v194 > v199)
                    {
                      v198[v199] = 62;
                      return this;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_685:
        __break(1u);
        JUMPOUT(0x22574D2ACLL);
      case 3:
LABEL_623:
        if (v8 != 3)
        {
          goto LABEL_683;
        }

        v209 = v7 | a3;
        WTF::StringBuilder::append();
        v210 = *v4;
        if (!*v4 || *(v210 + 48) != 1)
        {
          goto LABEL_630;
        }

        v211 = v209 ^ 1;
        if (*(v210 + 8) != 3)
        {
          v211 = 1;
        }

        if ((v211 & 1) == 0)
        {
          v212 = *v4;
          WTF::StringBuilder::append();
          WGSL::Metal::FunctionDefinitionWriter::visit(v5, *v212, 1);
          WTF::StringBuilder::append();
        }

        else
        {
LABEL_630:
          WGSL::Metal::FunctionDefinitionWriter::visit(v5, v210, v209);
        }

        this = WTF::StringBuilder::append();
        v213 = *(v4 + 16);
        if (v213 == 255)
        {
          v214 = -1;
        }

        else
        {
          v214 = *(v4 + 16);
        }

        if (v214 == 2)
        {
          if (v213 != 2)
          {
            goto LABEL_683;
          }

          this = (*(*v5 + 216))(v5, *(v4 + 1));
        }

        else if (v214 == 1)
        {
          if (v213 != 1)
          {
            goto LABEL_683;
          }

          v215 = 0;
          v216 = *(v4 + 2);
          v217 = *(v5 + 20);
          v218 = -1;
          v219 = v216;
          do
          {
            ++v215;
            --v218;
            v220 = v219 > 9;
            v219 /= 0xAu;
          }

          while (v220);
          if (v217 >= v218)
          {
            v217 = v218;
          }

          v221 = *(v5 + 9);
          if ((v221 || (v221 = *(v5 + 8)) != 0) && (*(v221 + 16) & 4) == 0)
          {
            this = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((v5 + 64));
            if (this)
            {
              this = WTF::writeIntegerToBufferImpl<char16_t,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v216, this, v222);
            }
          }

          else
          {
            this = MEMORY[0x22AA68210](v5 + 64, v217 + v215);
            if (this)
            {
              this = WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v216, this, v223);
            }
          }
        }

        else
        {
          if (*(v4 + 16))
          {
            goto LABEL_683;
          }

          LODWORD(v252) = 1;
          this = WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<int,void>>((v5 + 64), &v252);
        }

LABEL_652:
        LOBYTE(v252) = 62;
        v224 = *(v5 + 9);
        if (!v224)
        {
          return WTF::StringBuilder::append();
        }

        v225 = *(v5 + 20);
        if (v225 >= *(v224 + 4) || *(v5 + 8))
        {
          return WTF::StringBuilder::append();
        }

        v226 = *(v224 + 16);
        v227 = *(v224 + 8);
        *(v5 + 20) = v225 + 1;
        if ((v226 & 4) != 0)
        {
          *(v227 + v225) = 62;
        }

        else
        {
          *(v227 + 2 * v225) = 62;
        }

        return this;
      case 4:
LABEL_617:
        if (v8 != 4)
        {
          goto LABEL_683;
        }

        v208 = *v4;
        if ((v7 | a3) == 1 && *(v208 + 88) == 6)
        {
          v252 = "__PackedType<";
          v253 = 13;
          v249 = *(v208 + 6);
          v250 = ">";
          v251 = 1;
          return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::AST::Identifier,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v252, &v249, &v250);
        }

        else
        {
          v252 = *(v208 + 6);
          return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WGSL::AST::Identifier,void>>((this + 64), &v252);
        }

      case 5:
LABEL_470:
        if (v8 != 5)
        {
          goto LABEL_683;
        }

        v252 = *v4;
        LOBYTE(v250) = 60;
        this = WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>((this + 64), &v252, &v250);
        v141 = *(v4 + 2);
        if (v141)
        {
          v142 = (v141 + 2);
        }

        else
        {
          v142 = 0;
        }

        if (v141)
        {
          v143 = &v141[2 * *v141 + 2];
          if (v142 == v143)
          {
            goto LABEL_652;
          }
        }

        else
        {
          v143 = 0;
          if (!v142)
          {
            goto LABEL_652;
          }
        }

        v145 = *v142;
        v144 = v142 + 1;
        for (this = WGSL::Metal::FunctionDefinitionWriter::visit(v5, v145, v7 | a3); v144 != v143; this = WGSL::Metal::FunctionDefinitionWriter::visit(v5, v146, v7 | a3))
        {
          WTF::StringBuilder::append();
          v146 = *v144++;
        }

        goto LABEL_652;
      case 6:
LABEL_679:
        if (v8 == 6)
        {
          __break(0xC471u);
          JUMPOUT(0x22574D278);
        }

        goto LABEL_683;
      case 7:
LABEL_482:
        if (v8 != 7)
        {
          goto LABEL_683;
        }

        v147 = *(v4 + 8);
        v148 = "sample";
        v149 = 6;
        if (v147 <= 3)
        {
          v155 = "texture2d";
          v156 = "texture2d_array";
          if (v147 == 3)
          {
            v157 = 16;
          }

          else
          {
            v157 = 0;
          }

          if (v147 != 3)
          {
            v156 = 0;
          }

          if (v147 == 2)
          {
            v158 = 10;
          }

          else
          {
            v158 = v157;
          }

          if (v147 != 2)
          {
            v155 = v156;
          }

          v159 = v147 == 1;
          v160 = "sample";
          v161 = 6;
          if (v147 == 1)
          {
            v162 = 10;
          }

          else
          {
            v162 = v158;
          }

          if (v159)
          {
            v163 = "texture1d";
          }

          else
          {
            v163 = v155;
          }
        }

        else
        {
          if (*(v4 + 8) > 5u)
          {
            v150 = "texturecube_array";
            v151 = 18;
            v152 = "texture2d_ms";
            if (v147 == 7)
            {
              v148 = "read";
              v149 = 4;
              v153 = 13;
            }

            else
            {
              v153 = 0;
            }

            if (v147 != 7)
            {
              v152 = 0;
            }

            v154 = v147 == 6;
          }

          else
          {
            v150 = "texture3d";
            v151 = 10;
            v152 = "texturecube";
            if (v147 == 5)
            {
              v148 = "sample";
              v149 = 6;
              v153 = 12;
            }

            else
            {
              v153 = 0;
            }

            if (v147 != 5)
            {
              v152 = 0;
            }

            v154 = v147 == 4;
          }

          if (v154)
          {
            v160 = "sample";
          }

          else
          {
            v160 = v148;
          }

          if (v154)
          {
            v161 = 6;
          }

          else
          {
            v161 = v149;
          }

          if (v154)
          {
            v162 = v151;
          }

          else
          {
            v162 = v153;
          }

          if (v154)
          {
            v163 = v150;
          }

          else
          {
            v163 = v152;
          }
        }

        v68 = v162 != 0;
        v164 = v162 - 1;
        if (!v68)
        {
          v164 = 0;
        }

        v252 = v163;
        v253 = v164;
        LOBYTE(v250) = 60;
        WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), &v252, &v250);
        WGSL::Metal::FunctionDefinitionWriter::visit(v5, *v4, v7 | a3);
        v252 = ", access::";
        v253 = 10;
        v250 = v160;
        v251 = v161;
        goto LABEL_528;
      case 8:
LABEL_356:
        if (v8 != 8)
        {
          goto LABEL_683;
        }

        v102 = *v4;
        if (v102 > 2)
        {
          if (v102 == 3)
          {
            v103 = "texture2d_array";
            v104 = 16;
            goto LABEL_368;
          }

          if (v102 != 4)
          {
            v104 = 0;
            v103 = 0;
            goto LABEL_368;
          }

          v103 = "texture3d";
        }

        else
        {
          if (v102 != 1)
          {
            v53 = v102 == 2;
            v103 = "texture2d";
            v104 = 10;
            if (!v53)
            {
              v104 = 0;
              v103 = 0;
            }

LABEL_368:
            v105 = *(v4 + 2);
            if (v105 == 2)
            {
              v106 = "write";
              v107 = 6;
            }

            else if (v105 == 1)
            {
              v106 = "read_write";
              v107 = 11;
            }

            else if (*(v4 + 2))
            {
              v107 = 0;
              v106 = 0;
            }

            else
            {
              v106 = "read";
              v107 = 5;
            }

            v68 = v104 != 0;
            v108 = v104 - 1;
            if (!v68)
            {
              v108 = 0;
            }

            v252 = v103;
            v253 = v108;
            LOBYTE(v250) = 60;
            WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((this + 64), &v252, &v250);
            WGSL::Metal::FunctionDefinitionWriter::visit(v5, *(*(v5 + 12) + qword_225882618[*(v4 + 1)]), 0);
            v252 = ", access::";
            v253 = 10;
            v109 = v107 - 1;
            if (!v107)
            {
              v109 = 0;
            }

            v250 = v106;
            v251 = v109;
LABEL_528:
            LOBYTE(v249) = 62;
            return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((v5 + 64), &v252, &v250, &v249);
          }

          v103 = "texture1d";
        }

        v104 = 10;
        goto LABEL_368;
      case 9:
LABEL_445:
        if (v8 != 9)
        {
          goto LABEL_683;
        }

        v137 = 0;
        v138 = *v4;
        if (v138 <= 2)
        {
          if (v138 == 1)
          {
            v139 = "depth2d";
            v137 = 8;
          }

          else
          {
            v139 = 0;
            if (v138 == 2)
            {
              v139 = "depth2d_array";
              v137 = 14;
            }
          }
        }

        else if (v138 == 3)
        {
          v139 = "depthcube";
          v137 = 10;
        }

        else if (v138 == 4)
        {
          v139 = "depthcube_array";
          v137 = 16;
        }

        else
        {
          v139 = 0;
          if (v138 == 5)
          {
            v139 = "depth2d_ms";
            v137 = 11;
          }
        }

        v68 = v137 != 0;
        v140 = v137 - 1;
        if (!v68)
        {
          v140 = 0;
        }

        v252 = v139;
        v253 = v140;
        v250 = "<float>";
        v251 = 7;
        return WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((this + 64), &v252, &v250);
      case 10:
        if (v22 != 10)
        {
          goto LABEL_683;
        }

        v24 = *a2;
        if (v24 > 2)
        {
          goto LABEL_61;
        }

        if (!*a2 || v24 == 2)
        {
          goto LABEL_100;
        }

        while (1)
        {
LABEL_185:
          v4 = *(v4 + 1);
          v8 = *(v4 + 48);
          if (v8 == 255)
          {
            v56 = -1;
          }

          else
          {
            v56 = *(v4 + 48);
          }

          if (v56 != 10)
          {
            switch(v56)
            {
              case 1:
LABEL_316:
                v7 = 0;
                a3 = 0;
                goto LABEL_381;
              case 2:
LABEL_317:
                LOBYTE(v7) = 0;
                LOBYTE(a3) = 0;
                goto LABEL_530;
              case 3:
LABEL_319:
                LOBYTE(v7) = 0;
                LOBYTE(a3) = 0;
                goto LABEL_623;
              case 4:
LABEL_318:
                v7 = 0;
                a3 = 0;
                goto LABEL_617;
              case 5:
LABEL_315:
                LOBYTE(v7) = 0;
                LOBYTE(a3) = 0;
                goto LABEL_470;
              case 6:
                goto LABEL_679;
              case 7:
LABEL_320:
                LOBYTE(v7) = 0;
                LOBYTE(a3) = 0;
                goto LABEL_482;
              case 8:
                goto LABEL_356;
              case 9:
                goto LABEL_445;
              case 10:
                goto LABEL_685;
              case 11:
                goto LABEL_322;
              case 12:
                goto LABEL_465;
              case 13:
                goto LABEL_682;
              default:
                goto LABEL_8;
            }
          }

          if (v8 != 10)
          {
            goto LABEL_683;
          }

          v24 = *v4;
          if (v24 > 2)
          {
            break;
          }

          if (*v4)
          {
            v57 = v24 == 2;
          }

          else
          {
            v57 = 1;
          }

          if (v57)
          {
LABEL_100:
            v30 = "thread";
            v31 = 6;
            if (*(v4 + 1))
            {
              goto LABEL_102;
            }

            goto LABEL_101;
          }
        }

LABEL_61:
        if (v24 != 3)
        {
          if (v24 == 4)
          {
            goto LABEL_167;
          }

          if (v24 == 5)
          {
LABEL_87:
            v30 = "threadgroup";
            v31 = 11;
            if (*(v4 + 1))
            {
              goto LABEL_102;
            }

            goto LABEL_101;
          }

          goto LABEL_185;
        }

LABEL_165:
        v30 = "device";
        v31 = 6;
        if (*(v4 + 1))
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 11:
LABEL_322:
        if (v8 != 11)
        {
          goto LABEL_683;
        }

        v92 = *v4;
        v93 = 1;
        if (v92 <= 2)
        {
          if (*v4)
          {
            v96 = v92 == 2;
          }

          else
          {
            v96 = 1;
          }

          v93 = !v96;
          if (v96)
          {
            v94 = "thread";
          }

          else
          {
            v94 = 0;
          }

          if (v96)
          {
            v95 = 7;
          }

          else
          {
            v95 = 0;
          }
        }

        else
        {
          switch(v92)
          {
            case 3u:
              v93 = 0;
              v94 = "device";
              v95 = 7;
              break;
            case 4u:
              v93 = 0;
              v94 = "constant";
              v95 = 9;
              break;
            case 5u:
              v93 = 0;
              v94 = "threadgroup";
              v95 = 12;
              break;
            default:
              v94 = 0;
              v95 = 0;
              break;
          }
        }

        if (!*(v4 + 1))
        {
          WTF::StringBuilder::append();
        }

        if ((v93 & 1) == 0)
        {
          v97 = v95 - 1;
          if (!v95)
          {
            v97 = 0;
          }

          v252 = v94;
          v253 = v97;
          LOBYTE(v250) = 32;
          WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((v5 + 64), &v252, &v250);
        }

        this = WGSL::Metal::FunctionDefinitionWriter::visit(v5, *(v4 + 1), *v4 - 3 < 2);
        LOBYTE(v252) = 42;
        v98 = *(v5 + 9);
        if (!v98)
        {
          return WTF::StringBuilder::append();
        }

        v99 = *(v5 + 20);
        if (v99 >= *(v98 + 4) || *(v5 + 8))
        {
          return WTF::StringBuilder::append();
        }

        v100 = *(v98 + 16);
        v101 = *(v98 + 8);
        *(v5 + 20) = v99 + 1;
        if ((v100 & 4) != 0)
        {
          *(v101 + v99) = 42;
        }

        else
        {
          *(v101 + 2 * v99) = 42;
        }

        return this;
      case 12:
LABEL_465:
        if (v8 == 12)
        {
          goto LABEL_466;
        }

        goto LABEL_683;
      case 13:
LABEL_682:
        if (v8 != 13)
        {
          goto LABEL_683;
        }

        __break(0xC471u);
        goto LABEL_685;
      default:
LABEL_8:
        if (v8)
        {
          goto LABEL_683;
        }

        v10 = *v4;
        if (v10 <= 4)
        {
          if (*v4 >= 4u && v10 != 4)
          {
            return this;
          }
        }

        else if (*v4 > 8u)
        {
          if (v10 != 9 && v10 != 10)
          {
            if (v10 - 11 < 3)
            {
              __break(0xC471u);
              JUMPOUT(0x22574BCC4);
            }

            return this;
          }
        }

        else
        {
          if (v10 - 6 < 3)
          {
            WTF::StringPrintStream::StringPrintStream(&v252);
            WGSL::Type::dump(v4, &v252);
            WTF::StringPrintStream::toString(&v250, &v252);
            WTF::StringPrintStream::~StringPrintStream(&v252);
            v11 = *(v5 + 20);
            if (v250)
            {
              v12 = *(v250 + 1);
            }

            else
            {
              v12 = 0;
            }

            v68 = __CFADD__(v11, v12);
            v37 = v11 + v12;
            if (v68)
            {
              v38 = 0xFFFFFFFFLL;
            }

            else
            {
              v38 = v37;
            }

            v39 = *(v5 + 9);
            if ((v39 || (v39 = *(v5 + 8)) != 0) && (*(v39 + 16) & 4) == 0 || v250 && (*(v250 + 16) & 4) == 0)
            {
              v40 = WTF::StringBuilder::extendBufferForAppendingWithUpconvert((v5 + 64));
              if (v40)
              {
                v42 = v40;
                this = v250;
                if (!v250)
                {
                  return this;
                }

                atomic_fetch_add_explicit(v250, 2u, memory_order_relaxed);
                v41 = *(this + 1);
                v43 = *(this + 1);
                if ((this[16] & 4) == 0)
                {
                  if (!v43)
                  {
                    goto LABEL_276;
                  }

                  if (v43 == 1)
                  {
                    v42->i16[0] = v41->i16[0];
                    goto LABEL_276;
                  }

                  v45 = 2 * v43;
LABEL_263:
                  v80 = this;
                  memcpy(v42, v41, v45);
                  this = v80;
                  goto LABEL_276;
                }

                v58 = (v42 + 2 * v43);
                if (v43 >= 0x40)
                {
                  v59 = v42;
                  v42 = (v42 + 2 * (v43 & 0xFFFFFFC0));
                  v60 = 0uLL;
                  do
                  {
                    v256.val[0] = *v41;
                    v61 = v41[1];
                    v257.val[0] = v41[2];
                    v62 = v41[3];
                    v41 += 4;
                    v63 = v62;
                    v257.val[1] = 0uLL;
                    v258.val[0] = v61;
                    v256.val[1] = 0uLL;
                    v64 = v59;
                    vst2q_s8(v64, v256);
                    v64 += 32;
                    v258.val[1] = 0uLL;
                    vst2q_s8(v64, v258);
                    v65 = v59 + 64;
                    vst2q_s8(v65, v257);
                    v66 = v59 + 96;
                    vst2q_s8(v66, *(&v60 - 1));
                    v59 += 128;
                  }

                  while (v59 != v42);
                }

                if (v42 == v58)
                {
                  goto LABEL_276;
                }

                v67 = v58 - v42 - 2;
                if (v67 < 0xE || (v42 < &v41->i8[(v67 >> 1) + 1] ? (v68 = v41 >= (&v42->i16[1] + (v67 & 0xFFFFFFFFFFFFFFFELL))) : (v68 = 1), !v68))
                {
                  v77 = v41;
                  v78 = v42;
                  goto LABEL_258;
                }

                v69 = (v67 >> 1) + 1;
                if (v67 >= 0x3E)
                {
                  v70 = v69 & 0xFFFFFFFFFFFFFFE0;
                  v228 = v42 + 2;
                  v229 = &v41[1];
                  v230 = v69 & 0xFFFFFFFFFFFFFFE0;
                  do
                  {
                    v231 = *v229[-2].i8;
                    v232 = vmovl_u8(*v229);
                    v233 = vmovl_high_u8(*v229->i8);
                    v228[-2] = vmovl_u8(*v231.i8);
                    v228[-1] = vmovl_high_u8(v231);
                    *v228 = v232;
                    v228[1] = v233;
                    v228 += 4;
                    v229 += 4;
                    v230 -= 32;
                  }

                  while (v230);
                  if (v69 == v70)
                  {
                    goto LABEL_276;
                  }

                  if ((v69 & 0x18) == 0)
                  {
                    v78 = (v42 + 2 * v70);
                    v77 = (v41 + v70);
                    do
                    {
LABEL_258:
                      v79 = v77->u8[0];
                      v77 = (v77 + 1);
                      v78->i16[0] = v79;
                      v78 = (v78 + 2);
                    }

                    while (v78 != v58);
                    goto LABEL_276;
                  }
                }

                else
                {
                  v70 = 0;
                }

                v77 = (v41 + (v69 & 0xFFFFFFFFFFFFFFF8));
                v78 = (v42 + 2 * (v69 & 0xFFFFFFFFFFFFFFF8));
                v234 = (v42 + 2 * v70);
                v235 = &v41->i8[v70];
                v236 = v70 - (v69 & 0xFFFFFFFFFFFFFFF8);
                do
                {
                  v237 = *v235++;
                  *v234++ = vmovl_u8(v237);
                  v236 += 8;
                }

                while (v236);
                if (v69 != (v69 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_258;
                }

LABEL_276:
                if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(this, v41);
                }
              }

LABEL_278:
              this = v250;
              v250 = 0;
              if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                return WTF::StringImpl::destroy(this, v41);
              }

              return this;
            }

            v44 = MEMORY[0x22AA68210](v5 + 64, v38);
            if (!v44)
            {
              goto LABEL_278;
            }

            v42 = v44;
            this = v250;
            if (!v250)
            {
              return this;
            }

            atomic_fetch_add_explicit(v250, 2u, memory_order_relaxed);
            v41 = *(this + 1);
            v45 = *(this + 1);
            if ((this[16] & 4) != 0)
            {
              if (!v45)
              {
                goto LABEL_276;
              }

              if (v45 == 1)
              {
                v42->i8[0] = v41->i8[0];
                goto LABEL_276;
              }

              goto LABEL_263;
            }

            v46 = &v42->i8[v45];
            if (v45 < 0x10)
            {
              v47 = v42;
            }

            else
            {
              v47 = v42;
              do
              {
                v48 = vld2q_s8(v41->i8);
                v41 += 2;
                *v47++ = v48;
              }

              while (v47 != &v42->i8[v45 & 0xFFFFFFF0]);
            }

            if (v47 == v46)
            {
              goto LABEL_276;
            }

            v81 = &v42->i8[v45];
            v82 = &v42->i8[v45] - v47;
            if (v82 < 4 || (v47 < (v41 + 2 * v82) ? (v83 = v41 >= v81) : (v83 = 1), !v83))
            {
              v85 = v47;
              v86 = v41;
              goto LABEL_275;
            }

            if (v82 >= 0x20)
            {
              v84 = v82 & 0xFFFFFFFFFFFFFFE0;
              v238 = v41 + 2;
              v239 = (v47 + 1);
              v240 = v82 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v242 = v238[-2];
                v241 = v238[-1];
                v244 = *v238;
                v243 = v238[1];
                v238 += 4;
                v239[-1] = vuzp1q_s8(v242, v241);
                *v239 = vuzp1q_s8(v244, v243);
                v239 += 2;
                v240 -= 32;
              }

              while (v240);
              if (v82 == v84)
              {
                goto LABEL_276;
              }

              if ((v82 & 0x1C) == 0)
              {
                v86 = (v41 + 2 * v84);
                v85 = (v47 + v84);
                goto LABEL_275;
              }
            }

            else
            {
              v84 = 0;
            }

            v85 = (v47 + (v82 & 0xFFFFFFFFFFFFFFFCLL));
            v86 = (v41 + 2 * (v82 & 0xFFFFFFFFFFFFFFFCLL));
            v245 = (v41 + 2 * v84);
            v246 = (v47 + v84);
            v247 = v84 - (v82 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v248 = *v245++;
              *v246++ = vuzp1_s8(v248, v248).u32[0];
              v247 += 4;
            }

            while (v247);
            if (v82 == (v82 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_276;
            }

            do
            {
LABEL_275:
              v87 = v86->i8[0];
              v86 = (v86 + 2);
              *v85 = v87;
              v85 = (v85 + 1);
            }

            while (v85 != v46);
            goto LABEL_276;
          }

          if (v10 != 5)
          {
            return this;
          }
        }

LABEL_466:

        return WTF::StringBuilder::append();
    }
  }

  v6 = this[108];
  v7 = (v6 | 2) == 7 || this[111] == 1 && this[110] == 1 || this[113] == 1 && this[112] == 3;
  v8 = *(a2 + 48);
  if (v8 == 255)
  {
    v9 = -1;
  }

  else
  {
    v9 = *(a2 + 48);
  }

  switch(v9)
  {
    case 1:
      goto LABEL_381;
    case 2:
      goto LABEL_530;
    case 3:
      goto LABEL_623;
    case 4:
      goto LABEL_617;
    case 5:
      goto LABEL_470;
    case 6:
      goto LABEL_679;
    case 7:
      goto LABEL_482;
    case 8:
      goto LABEL_356;
    case 9:
      goto LABEL_445;
    case 10:
      if (v8 != 10)
      {
        goto LABEL_683;
      }

      v29 = *a2;
      if (v29 <= 2)
      {
        if (!*a2 || v29 == 2)
        {
          goto LABEL_100;
        }

        goto LABEL_137;
      }

      if (v29 == 3)
      {
        goto LABEL_165;
      }

      if (v29 != 4)
      {
        if (v29 == 5)
        {
          goto LABEL_87;
        }

LABEL_137:
        v49 = v6 | 2;
        while (1)
        {
          while (1)
          {
            if (v49 == 7 || this[111] == 1 && this[110] == 1 || this[113] == 1 && this[112] == 3)
            {
              v7 = 1;
              v4 = *(v4 + 1);
              v50 = *(v4 + 48);
              if (v50 == 255)
              {
                v51 = -1;
              }

              else
              {
                v51 = *(v4 + 48);
              }

              if (v51 != 10)
              {
LABEL_163:
                switch(v51)
                {
                  case 1:
                    a3 = 0;
                    v8 = v50;
                    goto LABEL_381;
                  case 2:
                    LOBYTE(a3) = 0;
                    v8 = v50;
                    goto LABEL_530;
                  case 3:
                    LOBYTE(a3) = 0;
                    v8 = v50;
                    goto LABEL_623;
                  case 4:
                    a3 = 0;
                    v8 = v50;
                    goto LABEL_617;
                  case 5:
                    LOBYTE(a3) = 0;
                    v8 = v50;
                    goto LABEL_470;
                  case 6:
                    v8 = v50;
                    goto LABEL_679;
                  case 7:
                    LOBYTE(a3) = 0;
                    v8 = v50;
                    goto LABEL_482;
                  case 8:
                    v8 = v50;
                    goto LABEL_356;
                  case 9:
                    v8 = v50;
                    goto LABEL_445;
                  case 10:
                    goto LABEL_685;
                  case 11:
                    v8 = v50;
                    goto LABEL_322;
                  case 12:
                    v8 = v50;
                    goto LABEL_465;
                  case 13:
                    v8 = v50;
                    goto LABEL_682;
                  default:
                    v8 = v50;
                    goto LABEL_8;
                }
              }
            }

            else
            {
              v7 = 0;
              v4 = *(v4 + 1);
              v50 = *(v4 + 48);
              if (v50 == 255)
              {
                v51 = -1;
              }

              else
              {
                v51 = *(v4 + 48);
              }

              if (v51 != 10)
              {
                goto LABEL_163;
              }
            }

            if (v50 != 10)
            {
              goto LABEL_683;
            }

            v52 = *v4;
            if (v52 > 2)
            {
              break;
            }

            if (*v4)
            {
              v53 = v52 == 2;
            }

            else
            {
              v53 = 1;
            }

            if (v53)
            {
              goto LABEL_100;
            }
          }

          if (v52 == 3)
          {
            goto LABEL_165;
          }

          if (v52 == 4)
          {
            break;
          }

          if (v52 == 5)
          {
            goto LABEL_87;
          }
        }
      }

LABEL_167:
      v30 = "constant";
      v31 = 8;
      if (!*(v4 + 1))
      {
LABEL_101:
        WTF::StringBuilder::append();
      }

LABEL_102:
      v252 = v30;
      v253 = v31;
      LOBYTE(v250) = 32;
      WTF::StringBuilder::appendFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<char,void>>((v5 + 64), &v252, &v250);
      this = WGSL::Metal::FunctionDefinitionWriter::visit(v5, *(v4 + 1), 0);
      LOBYTE(v252) = 38;
      v33 = *(v5 + 9);
      if (!v33)
      {
        return WTF::StringBuilder::append();
      }

      v34 = *(v5 + 20);
      if (v34 >= *(v33 + 4) || *(v5 + 8))
      {
        return WTF::StringBuilder::append();
      }

      v35 = *(v33 + 16);
      v36 = *(v33 + 8);
      *(v5 + 20) = v34 + 1;
      if ((v35 & 4) != 0)
      {
        *(v36 + v34) = 38;
      }

      else
      {
        *(v36 + 2 * v34) = 38;
      }

      break;
    case 11:
      goto LABEL_322;
    case 12:
      goto LABEL_465;
    case 13:
      goto LABEL_682;
    default:
      goto LABEL_8;
  }

  return this;
}