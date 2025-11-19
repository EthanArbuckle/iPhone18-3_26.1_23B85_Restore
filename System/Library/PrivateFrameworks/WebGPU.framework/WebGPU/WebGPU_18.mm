void *WTF::tryMakeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(void *result, _BYTE *a2, uint64_t a3, _BYTE *a4, uint64_t a5, _BYTE *a6, uint64_t a7, _BYTE *a8, uint64_t a9)
{
  if (a3)
  {
    v9 = a3 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 >> 31)
  {
    __break(0xC471u);
    goto LABEL_52;
  }

  if (a5)
  {
    v10 = a5 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x225738C84);
  }

  if (a7)
  {
    v11 = a7 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x225738CA4);
  }

  if (a9)
  {
    v12 = a9 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 >> 31)
  {
    __break(0xC471u);
LABEL_51:
    __break(1u);
LABEL_52:
    JUMPOUT(0x225738C64);
  }

  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    goto LABEL_21;
  }

  v14 = __OFADD__(v10, v13);
  v15 = v10 + v13;
  if (v14)
  {
    goto LABEL_21;
  }

  v16 = (v9 + v15);
  if (__OFADD__(v9, v15))
  {
    goto LABEL_21;
  }

  if (!v16)
  {
    v17 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_22;
  }

  if ((v16 & 0x80000000) != 0)
  {
LABEL_21:
    v17 = 0;
    goto LABEL_22;
  }

  v30 = result;
  WTF::tryFastCompactMalloc((v16 + 20));
  v17 = v31;
  if (!v31)
  {
    goto LABEL_46;
  }

  v21 = (v31 + 20);
  *v31 = 2;
  *(v31 + 4) = v16;
  *(v31 + 8) = v31 + 20;
  *(v31 + 16) = 4;
  v22 = a8;
  v23 = a6;
  v24 = a4;
  if (v9)
  {
    if (v9 == 1)
    {
      *v21 = *a2;
    }

    else
    {
      memcpy((v31 + 20), a2, v9);
      v24 = a4;
      v23 = a6;
      v22 = a8;
    }
  }

  v25 = v16 - v9;
  if (v16 < v9)
  {
    goto LABEL_51;
  }

  v26 = &v21[v9];
  result = v30;
  if (v10)
  {
    if (v10 == 1)
    {
      *v26 = *v24;
    }

    else
    {
      memcpy(v26, v24, v10);
      v23 = a6;
      v22 = a8;
      result = v30;
    }
  }

  v27 = v25 - v10;
  if (v25 < v10)
  {
    goto LABEL_51;
  }

  v28 = &v26[v10];
  if (v11)
  {
    if (v11 == 1)
    {
      *v28 = *v23;
    }

    else
    {
      memcpy(v28, v23, v11);
      v22 = a8;
      result = v30;
    }
  }

  if (v27 < v11)
  {
    goto LABEL_51;
  }

  if (v12)
  {
    if (v12 == 1)
    {
      v28[v11] = *v22;
      goto LABEL_22;
    }

    memcpy(&v28[v11], v22, v12);
LABEL_46:
    result = v30;
  }

LABEL_22:
  *result = v17;
  return result;
}

void *WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(void *result, unsigned int a2, _BYTE *a3, size_t a4, _BYTE *a5, size_t a6, _BYTE *a7, size_t a8, _BYTE *__src, size_t __n, _BYTE *a11, size_t a12, _BYTE *a13, size_t a14, _BYTE *a15, size_t a16, _BYTE *a17, size_t a18)
{
  v18 = result;
  if (!a2)
  {
    v27 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_48;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v27 = 0;
    goto LABEL_48;
  }

  v26 = a2;
  result = WTF::tryFastCompactMalloc((a2 + 20));
  v27 = v46;
  if (!v46)
  {
LABEL_48:
    *v18 = v27;
    return result;
  }

  v45 = v18;
  v28 = (v46 + 20);
  *v46 = 2;
  *(v46 + 4) = a2;
  *(v46 + 8) = v46 + 20;
  *(v46 + 16) = 4;
  if (a4)
  {
    if (a4 == 1)
    {
      *v28 = *a3;
    }

    else
    {
      result = memcpy((v46 + 20), a3, a4);
    }
  }

  v29 = a4;
  v30 = v26 >= a4;
  v31 = v26 - a4;
  if (v30)
  {
    v32 = &v28[a4];
    if (a6)
    {
      if (a6 == 1)
      {
        *v32 = *a5;
      }

      else
      {
        result = memcpy(&v28[v29], a5, a6);
      }
    }

    v33 = a6;
    v34 = v31 - a6;
    if (v31 >= a6)
    {
      v35 = &v32[a6];
      if (a8)
      {
        if (a8 == 1)
        {
          *v35 = *a7;
        }

        else
        {
          result = memcpy(&v32[v33], a7, a8);
        }
      }

      v36 = a8;
      v37 = v34 - a8;
      if (v34 >= a8)
      {
        v38 = &v35[a8];
        v18 = v45;
        if (__n)
        {
          if (__n == 1)
          {
            *v38 = *__src;
          }

          else
          {
            result = memcpy(&v35[v36], __src, __n);
          }
        }

        v39 = v37 - __n;
        if (v37 >= __n)
        {
          v40 = &v38[__n];
          if (a12)
          {
            if (a12 == 1)
            {
              *v40 = *a11;
            }

            else
            {
              result = memcpy(v40, a11, a12);
            }
          }

          v30 = v39 >= a12;
          v41 = v39 - a12;
          if (v30)
          {
            v42 = &v40[a12];
            if (a14)
            {
              if (a14 == 1)
              {
                *v42 = *a13;
              }

              else
              {
                result = memcpy(v42, a13, a14);
              }
            }

            v30 = v41 >= a14;
            v43 = v41 - a14;
            if (v30)
            {
              v44 = &v42[a14];
              if (a16)
              {
                if (a16 == 1)
                {
                  *v44 = *a15;
                }

                else
                {
                  result = memcpy(v44, a15, a16);
                }
              }

              if (v43 >= a16)
              {
                if (a18)
                {
                  if (a18 == 1)
                  {
                    v44[a16] = *a17;
                  }

                  else
                  {
                    result = memcpy(&v44[a16], a17, a18);
                  }
                }

                goto LABEL_48;
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t WTF::HashTable<WGSL::AST::Function *,WTF::KeyValuePair<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashMap<WGSL::AST::Function *,WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Function *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v7 = WTF::fastMalloc(((32 * a2) | 0x10));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 32 * a2);
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
    do
    {
      v14 = (v4 + 32 * v11);
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
        {
          v20 = *a1;
          if (*a1)
          {
            v21 = *(v20 - 8);
          }

          else
          {
            v21 = 0;
          }

          v22 = (~(v15 << 32) + v15) ^ ((~(v15 << 32) + v15) >> 22);
          v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
          v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
          v25 = v21 & ((v24 >> 31) ^ v24);
          v26 = 1;
          do
          {
            v27 = v25;
            v28 = *(v20 + 32 * v25);
            v25 = (v25 + v26++) & v21;
          }

          while (v28);
          v29 = v20 + 32 * v27;
          v30 = *(v29 + 16);
          while (v30)
          {
            v37 = v30;
            v30 = *(v30 + 2);
            v38 = *v37;
            *v37 = 0;
            if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v38, v8);
            }

            WTF::fastFree(v37, v8);
          }

          v31 = *(v29 + 8);
          if (v31)
          {
            WTF::fastFree((v31 - 16), v8);
          }

          *(v29 + 8) = 0;
          v32 = *v14;
          v14[1] = 0;
          *v29 = v32;
          v33 = v14[2];
          v14[2] = 0;
          *(v29 + 16) = v33;
          v35 = v14[2];
          v34 = v14[3];
          v14[3] = 0;
          *(v29 + 24) = v34;
          while (v35)
          {
            v39 = v35;
            v35 = *(v35 + 2);
            v40 = *v39;
            *v39 = 0;
            if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v40, v8);
            }

            WTF::fastFree(v39, v8);
          }

          v36 = v14[1];
          if (v36)
          {
            WTF::fastFree((v36 - 16), v8);
          }

          if (v14 == a3)
          {
            v12 = v29;
          }
        }

        else
        {
          v16 = v14[2];
          while (v16)
          {
            v18 = v16;
            v16 = *(v16 + 2);
            v19 = *v18;
            *v18 = 0;
            if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v8);
            }

            WTF::fastFree(v18, v8);
          }

          v17 = v14[1];
          if (v17)
          {
            WTF::fastFree((v17 - 16), v8);
          }
        }
      }

      ++v11;
    }

    while (v11 != v13);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v8);
  return v12;
}

__n128 std::__function::__func<void WGSL::ShaderModule::insert<std::reference_wrapper<WGSL::AST::Statement>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Statement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,unsigned long,std::reference_wrapper<WGSL::AST::Statement>&&)::{lambda(void)#1},std::allocator<std::reference_wrapper<WGSL::AST::Statement>&&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2838D4C78;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<void WGSL::ShaderModule::insert<std::reference_wrapper<WGSL::AST::Statement>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Statement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,unsigned long,std::reference_wrapper<WGSL::AST::Statement>&&)::{lambda(void)#1},std::allocator<std::reference_wrapper<WGSL::AST::Statement>&&>,void ()(void)>::operator()(void *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *(v2 + 12);
  if (v1 >= v3)
  {
    __break(1u);
  }

  else
  {
    result = memmove((*v2 + 8 * v1), (*v2 + 8 * v1 + 8), *v2 + 8 * v3 - (*v2 + 8 * v1 + 8));
    --*(v2 + 12);
  }

  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21FieldAccessExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEED1Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D4CC0;
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21FieldAccessExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEED0Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D4CC0;
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

uint64_t _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21FieldAccessExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE7__cloneEPNS0_6__baseISI_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D4CC0;
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

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21FieldAccessExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE7destroyEv(uint64_t a1, WTF::StringImpl *a2)
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

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21FieldAccessExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE18destroy_deallocateEv(void *__p, WTF::StringImpl *a2)
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

__n128 _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21FieldAccessExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEEclEv(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 8);
  *(v3 + 104) = off_2838D37C0;
  v4 = *(v3 + 128);
  *(v3 + 128) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  *(v3 + 72) = off_2838D37C0;
  v5 = *(v3 + 96);
  *(v3 + 96) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  *v3 = &unk_2838D3ED0;
  if (*(v3 + 56) == 1)
  {
    if (*(v3 + 48) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v10, (v3 + 32));
    }

    *(v3 + 48) = -1;
  }

  v6 = *(a1 + 8);
  *v6 = &unk_2838D3EF8;
  *(v6 + 8) = *(a1 + 24);
  *v6 = &unk_2838D3ED0;
  *(v6 + 24) = *(a1 + 40);
  *(v6 + 32) = 0;
  *(v6 + 56) = 0;
  if (*(a1 + 72) == 1)
  {
    mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v6 + 32, (a1 + 48));
    *(v6 + 56) = 1;
  }

  *v6 = &unk_2838D4458;
  *(v6 + 64) = *(a1 + 80);
  *(v6 + 72) = &unk_2838D3EF8;
  *(v6 + 80) = *(a1 + 96);
  *(v6 + 72) = off_2838D37C0;
  v7 = *(a1 + 112);
  *(a1 + 112) = 0;
  *(v6 + 96) = v7;
  *(v6 + 104) = &unk_2838D3EF8;
  result = *(a1 + 128);
  *(v6 + 112) = result;
  *(v6 + 104) = off_2838D37C0;
  v9 = *(a1 + 144);
  *(a1 + 144) = 0;
  *(v6 + 128) = v9;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST14CallExpressionENS5_16BinaryExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED1Ev(uint64_t a1, void *a2)
{
  *a1 = &unk_2838D4D08;
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST14CallExpressionENS5_16BinaryExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED0Ev(uint64_t a1, void *a2)
{
  *a1 = &unk_2838D4D08;
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

uint64_t _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST14CallExpressionENS5_16BinaryExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7__cloneEPNS0_6__baseISJ_EE(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2838D4D08;
  a2[1] = v2;
  return WGSL::AST::CallExpression::CallExpression((a2 + 2), (a1 + 16));
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST14CallExpressionENS5_16BinaryExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7destroyEv(uint64_t a1, void *a2)
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

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST14CallExpressionENS5_16BinaryExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE18destroy_deallocateEv(void *__p, void *a2)
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST14CallExpressionENS5_16BinaryExpressionEEENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEEclEv(uint64_t a1)
{
  (***(a1 + 8))(*(a1 + 8));
  v2 = *(a1 + 8);
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

  *v2 = &unk_2838D3F20;
  v4 = *(a1 + 80);
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = v4;
  v5 = *(a1 + 88);
  *(a1 + 88) = 0;
  *(v2 + 72) = v5;
  LODWORD(v5) = *(a1 + 96);
  *(a1 + 96) = 0;
  *(v2 + 80) = v5;
  LODWORD(v5) = *(a1 + 100);
  *(a1 + 100) = 0;
  *(v2 + 84) = v5;
  *(v2 + 88) = *(a1 + 104);
  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::RewriteGlobalVariables::Global>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::RewriteGlobalVariables::Global>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::RewriteGlobalVariables::Global,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v9 = WTF::fastMalloc(((32 * a2) | 0x10));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 32 * a2);
  }

  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = v6 + 32 * v13;
      v16 = *v15;
      if (*v15 != -1)
      {
        if (v16)
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
            v19 = *(v16 + 4);
            if (v19 >= 0x100)
            {
              goto LABEL_16;
            }

LABEL_18:
            v20 = WTF::StringImpl::hashSlowCase(v16);
          }

          else
          {
            v18 = 0;
            v19 = *(v16 + 4);
            if (v19 < 0x100)
            {
              goto LABEL_18;
            }

LABEL_16:
            v20 = v19 >> 8;
          }

          v21 = 0;
          do
          {
            v22 = v20 & v18;
            v20 = ++v21 + v22;
          }

          while (*(v17 + 32 * v22));
          v23 = v17 + 32 * v22;
          v24 = *v15;
          *v15 = 0;
          *v23 = v24;
          v25 = *(v15 + 8);
          *(v23 + 24) = *(v15 + 24);
          *(v23 + 8) = v25;
          v26 = *v15;
          *v15 = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v10);
          }

          if (v15 == a3)
          {
            v14 = v23;
          }

          goto LABEL_10;
        }

        *v15 = 0;
      }

LABEL_10:
      if (++v13 == v7)
      {
        goto LABEL_25;
      }
    }
  }

  v14 = 0;
  result = 0;
  if (v6)
  {
LABEL_25:
    WTF::fastFree((v6 - 16), v10);
    return v14;
  }

  return result;
}

_DWORD *WTF::HashTable<std::tuple<unsigned int,unsigned int>,WTF::KeyValuePair<std::tuple<unsigned int,unsigned int>,WGSL::AST::Variable *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<unsigned int,unsigned int>,WGSL::AST::Variable *>>,WTF::DefaultHash<std::tuple<unsigned int,unsigned int>>,WTF::HashMap<std::tuple<unsigned int,unsigned int>,WGSL::AST::Variable *,WTF::DefaultHash<std::tuple<unsigned int,unsigned int>>,WTF::HashTraits<std::tuple<unsigned int,unsigned int>>,WTF::HashTraits<WGSL::AST::Variable *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<unsigned int,unsigned int>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = (v4 + 16 * i);
      v11 = *v10;
      if (*v10 != -1)
      {
        v12 = v10[1];
        if (v11 | v12)
        {
          v13 = *a1;
          if (*a1)
          {
            v14 = *(v13 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = vadd_s32(__PAIR64__(v11, v12), vmvn_s8(vshl_n_s32(__PAIR64__(v11, v12), 0xFuLL)));
          v16 = vmul_s32(veor_s8(vshr_n_u32(v15, 0xAuLL), v15), 0x900000009);
          v17 = veor_s8(vshr_n_u32(v16, 6uLL), v16);
          v18 = vadd_s32(v17, vmvn_s8(vshl_n_s32(v17, 0xBuLL)));
          v19 = vmul_s32(veor_s8(vshr_n_u32(v18, 0x10uLL), v18), 0x109132F905AC73FELL);
          v20 = v14 & ((0xD7862706ELL * vadd_s32(v19, vdup_lane_s32(v19, 1)).u32[0]) >> 4);
          v21 = 1;
          do
          {
            v22 = v13 + 16 * v20;
            v8 = *(v22 + 4);
            v20 = (v20 + v21++) & v14;
          }

          while (*v22);
          *v22 = *v10;
        }
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

uint64_t WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::Vector<std::pair<unsigned int,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::Vector<std::pair<unsigned int,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::IntHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::Vector<std::pair<unsigned int,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::Vector<std::pair<unsigned int,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(void *a1, unsigned int a2, uint64_t *a3)
{
  v4 = a1;
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 12);
    v8 = WTF::fastMalloc((24 * a2 + 16));
    v10 = v8 + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = WTF::fastMalloc((24 * a2 + 16));
    v10 = v8 + 4;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v11 = a2;
  v12 = v8 + 6;
  do
  {
    *v12 = 0;
    v12[1] = 0;
    *(v12 - 1) = -1;
    v12 += 3;
    --v11;
  }

  while (v11);
LABEL_7:
  *v4 = v10;
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    v15 = v6;
    v49 = v6;
    do
    {
      v16 = (v5 + 24 * v13);
      v17 = *v16;
      if (*v16 != -2)
      {
        if (v17 == -1)
        {
          v18 = *(v16 + 5);
          v19 = v16[1];
          if (v18)
          {
            v20 = 16 * v18;
            v21 = (v19 + 8);
            do
            {
              v22 = *v21;
              *v21 = 0;
              if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v22, v9);
              }

              v21 += 2;
              v20 -= 16;
            }

            while (v20);
            v19 = v16[1];
          }

          if (v19)
          {
            v16[1] = 0;
            *(v16 + 4) = 0;
            WTF::fastFree(v19, v9);
          }
        }

        else
        {
          v23 = *v4;
          if (*v4)
          {
            v24 = *(v23 - 8);
          }

          else
          {
            v24 = 0;
          }

          v25 = (v17 + ~(v17 << 32)) ^ ((v17 + ~(v17 << 32)) >> 22);
          v26 = 9 * ((v25 + ~(v25 << 13)) ^ ((v25 + ~(v25 << 13)) >> 8));
          v27 = (v26 ^ (v26 >> 15)) + ~((v26 ^ (v26 >> 15)) << 27);
          v28 = v24 & ((v27 >> 31) ^ v27);
          v29 = 1;
          do
          {
            v30 = v23 + 24 * v28;
            v28 = (v28 + v29++) & v24;
          }

          while (*v30 != -1);
          v32 = (v30 + 8);
          v31 = *(v30 + 8);
          v33 = *(v30 + 20);
          if (v33)
          {
            v48 = v14;
            v34 = v5;
            v35 = v4;
            v36 = 16 * v33;
            v37 = (v31 + 8);
            do
            {
              v38 = *v37;
              *v37 = 0;
              if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v38, v9);
              }

              v37 += 2;
              v36 -= 16;
            }

            while (v36);
            v31 = *v32;
            v4 = v35;
            v5 = v34;
            v14 = v48;
            v15 = v49;
          }

          if (v31)
          {
            *(v30 + 8) = 0;
            *(v30 + 16) = 0;
            WTF::fastFree(v31, v9);
          }

          v39 = *v16;
          *v32 = 0;
          *(v30 + 16) = 0;
          v40 = v16[1];
          v16[1] = 0;
          *v30 = v39;
          *(v30 + 8) = v40;
          LODWORD(v39) = *(v16 + 4);
          *(v16 + 4) = 0;
          *(v30 + 16) = v39;
          LODWORD(v39) = *(v16 + 5);
          *(v16 + 5) = 0;
          *(v30 + 20) = v39;
          v41 = *(v16 + 5);
          v42 = v16[1];
          if (v41)
          {
            v43 = 16 * v41;
            v44 = (v42 + 8);
            do
            {
              v45 = *v44;
              *v44 = 0;
              if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v45, v9);
              }

              v44 += 2;
              v43 -= 16;
            }

            while (v43);
            v42 = v16[1];
            v15 = v49;
          }

          if (v42)
          {
            v16[1] = 0;
            *(v16 + 4) = 0;
            WTF::fastFree(v42, v9);
          }

          if (v16 == a3)
          {
            v14 = v30;
          }
        }
      }

      ++v13;
    }

    while (v13 != v15);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v14;
}

unint64_t WTF::Vector<std::pair<unsigned int,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3)
  {
    v6 = *(a1 + 12);
    if (v5 + 16 * v6 > a3)
    {
      v7 = *(a1 + 8);
      if (v7 + (v7 >> 1) <= v7 + 1)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = v7 + (v7 >> 1);
      }

      if (v8 <= a2)
      {
        v8 = a2;
      }

      if (!(v8 >> 28))
      {
        v9 = a3 - v5;
        if (v8 <= 0x10)
        {
          v10 = 16;
        }

        else
        {
          v10 = v8;
        }

        v11 = WTF::fastMalloc((16 * v10));
        *(a1 + 8) = v10;
        *a1 = v11;
        memcpy(v11, v5, 16 * v6);
        if (v5)
        {
          if (*a1 == v5)
          {
            *a1 = 0;
            *(a1 + 8) = 0;
          }

          WTF::fastFree(v5, v12);
        }

        return *a1 + v9;
      }

LABEL_31:
      __break(0xC471u);
      JUMPOUT(0x22573ABF0);
    }
  }

  v14 = *(a1 + 8);
  if (v14 + (v14 >> 1) <= v14 + 1)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = v14 + (v14 >> 1);
  }

  if (v15 <= a2)
  {
    v15 = a2;
  }

  if (v15 >> 28)
  {
    goto LABEL_31;
  }

  if (v15 <= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a1 + 12);
  v18 = WTF::fastMalloc((16 * v16));
  *(a1 + 8) = v16;
  *a1 = v18;
  memcpy(v18, v5, 16 * v17);
  if (!v5)
  {
    return v3;
  }

  if (*a1 == v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  WTF::fastFree(v5, v19);
  return v3;
}

void WGSL::AST::ReferenceTypeExpression::~ReferenceTypeExpression(WGSL::AST::ReferenceTypeExpression *this)
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEED1Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D4D78;
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEED0Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D4D78;
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

uint64_t _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE7__cloneEPNS0_6__baseISI_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D4D78;
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

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE7destroyEv(uint64_t a1, WTF::StringImpl *a2)
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

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE18destroy_deallocateEv(void *__p, WTF::StringImpl *a2)
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

__n128 _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST20IdentifierExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEEclEv(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 8);
  *(v3 + 64) = off_2838D37C0;
  v4 = *(v3 + 88);
  *(v3 + 88) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
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

__n128 _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST12VariableRoleEEENS_9enable_ifIXoosr3stdE16is_fundamental_vIT_Esr3stdE9is_enum_vIS8_EEvE4typeEPS8_OS8_EUlvE_NS_9allocatorISD_EEFvvEE7__cloneEPNS0_6__baseISG_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2838D4DC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void WGSL::AST::ArrayTypeExpression::~ArrayTypeExpression(WGSL::AST::ArrayTypeExpression *this)
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST19ArrayTypeExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEED1Ev(uint64_t result)
{
  *result = &unk_2838D4E30;
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST19ArrayTypeExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_2838D4E30;
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

__n128 _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST19ArrayTypeExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE7__cloneEPNS0_6__baseISI_EE(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2838D4E30;
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

  *(a2 + 16) = &unk_2838D4E08;
  result = *(a1 + 80);
  *(a2 + 80) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST19ArrayTypeExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE7destroyEv(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST19ArrayTypeExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE18destroy_deallocateEv(uint64_t a1)
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

__n128 _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST19ArrayTypeExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEEclEv(uint64_t a1)
{
  (***(a1 + 8))(*(a1 + 8));
  v2 = *(a1 + 8);
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

  *v2 = &unk_2838D4E08;
  result = *(a1 + 80);
  *(v2 + 64) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST23ReferenceTypeExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEED1Ev(uint64_t result)
{
  *result = &unk_2838D4E78;
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST23ReferenceTypeExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_2838D4E78;
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

uint64_t _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST23ReferenceTypeExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE7__cloneEPNS0_6__baseISI_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D4E78;
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

  *(a2 + 16) = off_2838D4D50;
  *(a2 + 80) = *(result + 80);
  return result;
}

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST23ReferenceTypeExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE7destroyEv(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST23ReferenceTypeExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE18destroy_deallocateEv(uint64_t a1)
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST23ReferenceTypeExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEEclEv(uint64_t a1)
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

  *v2 = off_2838D4D50;
  *(v2 + 64) = *(a1 + 80);
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST13StructureRoleEEENS_9enable_ifIXoosr3stdE16is_fundamental_vIT_Esr3stdE9is_enum_vIS8_EEvE4typeEPS8_OS8_EUlvE_NS_9allocatorISD_EEFvvEE7__cloneEPNS0_6__baseISG_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2838D4EC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void WGSL::AST::AbstractIntegerLiteral::~AbstractIntegerLiteral(WGSL::AST::AbstractIntegerLiteral *this)
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

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Reflection::EntryPointInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Reflection::EntryPointInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Reflection::EntryPointInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Reflection::EntryPointInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v7 = WTF::fastMalloc((104 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 104 * a2);
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
      v14 = v4 + 104 * v11;
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
        {
          v17 = *a1;
          if (*a1)
          {
            v18 = *(v17 - 8);
            v19 = *(v15 + 4);
            if (v19 >= 0x100)
            {
              goto LABEL_18;
            }

LABEL_20:
            v20 = WTF::StringImpl::hashSlowCase(v15);
          }

          else
          {
            v18 = 0;
            v19 = *(v15 + 4);
            if (v19 < 0x100)
            {
              goto LABEL_20;
            }

LABEL_18:
            v20 = v19 >> 8;
          }

          v21 = 0;
          do
          {
            v22 = v17 + 104 * (v20 & v18);
            v20 = ++v21 + (v20 & v18);
          }

          while (*v22);
          WGSL::Reflection::EntryPointInformation::~EntryPointInformation((v22 + 8), v8);
          v24 = *v22;
          *v22 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v23);
          }

          v25 = *v14;
          *v14 = 0;
          *v22 = v25;
          v26 = *(v14 + 8);
          *(v14 + 8) = 0;
          *(v22 + 8) = v26;
          v27 = *(v14 + 16);
          *(v14 + 16) = 0;
          *(v22 + 24) = 0;
          *(v22 + 16) = v27;
          *(v22 + 40) = 0;
          if (*(v14 + 40) == 1)
          {
            *(v22 + 24) = 0;
            *(v22 + 32) = 0;
            v28 = *(v14 + 24);
            *(v14 + 24) = 0;
            *(v22 + 24) = v28;
            LODWORD(v28) = *(v14 + 32);
            *(v14 + 32) = 0;
            *(v22 + 32) = v28;
            LODWORD(v28) = *(v14 + 36);
            *(v14 + 36) = 0;
            *(v22 + 36) = v28;
            *(v22 + 40) = 1;
          }

          *(v22 + 48) = 0;
          v29 = *(v14 + 48);
          *(v14 + 48) = 0;
          *(v22 + 48) = v29;
          v30 = *(v14 + 56);
          v31 = *(v14 + 72);
          *(v22 + 88) = *(v14 + 88);
          *(v22 + 72) = v31;
          *(v22 + 56) = v30;
          WGSL::Reflection::EntryPointInformation::~EntryPointInformation((v14 + 8), v23);
          v32 = *v14;
          *v14 = 0;
          if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v32, v8);
          }

          if (v14 == a3)
          {
            v12 = v22;
          }

          goto LABEL_10;
        }

        WGSL::Reflection::EntryPointInformation::~EntryPointInformation((v14 + 8), v8);
        v16 = *v14;
        *v14 = 0;
        if (v16)
        {
          if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v8);
          }
        }
      }

LABEL_10:
      if (++v11 == v13)
      {
        goto LABEL_32;
      }
    }
  }

  v12 = 0;
  result = 0;
  if (v4)
  {
LABEL_32:
    WTF::fastFree((v4 - 16), v8);
    return v12;
  }

  return result;
}

unint64_t WTF::Vector<WGSL::Type const*,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 12);
  if (*a1 <= a3 && *a1 + 8 * v6 > a3)
  {
    v15 = *(a1 + 8);
    if (v15 + (v15 >> 1) <= v15 + 1)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = v15 + (v15 >> 1);
    }

    if (v16 <= a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = v16;
    }

    if (v17 <= 0x10)
    {
      v18 = 16;
    }

    else
    {
      v18 = v17;
    }

    if (v17 < 0x11)
    {
      v19 = (a1 + 16);
      *a1 = a1 + 16;
      *(a1 + 8) = 16;
    }

    else
    {
      if (v17 >> 29)
      {
        goto LABEL_42;
      }

      v19 = WTF::fastMalloc((8 * v18));
      *(a1 + 8) = v18;
      *a1 = v19;
    }

    v20 = a3 - v5;
    memcpy(v19, v5, 8 * v6);
    if ((a1 + 16) != v5 && v5)
    {
      if (*a1 == v5)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v5, v21);
    }

    return *a1 + v20;
  }

  v8 = *(a1 + 8);
  if (v8 + (v8 >> 1) <= v8 + 1)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8 + (v8 >> 1);
  }

  if (v9 <= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = v9;
  }

  if (v10 <= 0x10)
  {
    v11 = 16;
  }

  else
  {
    v11 = v10;
  }

  if (v10 >= 0x11)
  {
    if (!(v10 >> 29))
    {
      v12 = WTF::fastMalloc((8 * v11));
      *(a1 + 8) = v11;
      *a1 = v12;
      memcpy(v12, v5, 8 * v6);
      if ((a1 + 16) == v5)
      {
        return a3;
      }

      goto LABEL_31;
    }

LABEL_42:
    __break(0xC471u);
    JUMPOUT(0x22573C6F4);
  }

  *a1 = a1 + 16;
  *(a1 + 8) = 16;
  memcpy((a1 + 16), v5, 8 * v6);
  if ((a1 + 16) == v5)
  {
    return a3;
  }

LABEL_31:
  if (!v5)
  {
    return a3;
  }

  if (*a1 == v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  WTF::fastFree(v5, v13);
  return a3;
}

void *WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::HashMap<unsigned long long,WGSL::RewriteGlobalVariables::Global *,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::HashMap<unsigned long long,WGSL::RewriteGlobalVariables::Global *,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::IntHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::HashMap<unsigned long long,WGSL::RewriteGlobalVariables::Global *,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WTF::HashMap<unsigned long long,WGSL::RewriteGlobalVariables::Global *,WTF::IntHash<unsigned long long>,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::HashTraits<WGSL::RewriteGlobalVariables::Global *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::UnsignedWithZeroKeyHashTraits<unsigned long long>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  if (a2 < 4)
  {
    v12 = 0;
LABEL_10:
    v15 = a2 - v12;
    v16 = &v9[4 * v12 + 6];
    do
    {
      *(v16 - 1) = -1;
      *v16 = 0;
      v16 += 2;
      --v15;
    }

    while (v15);
    goto LABEL_12;
  }

  v12 = a2 & 0xFFFFFFFC;
  v13 = v9 + 12;
  v14 = v12;
  do
  {
    *(v13 - 2) = xmmword_225881D00;
    *(v13 - 1) = xmmword_225881D00;
    *v13 = xmmword_225881D00;
    v13[1] = xmmword_225881D00;
    v13 += 4;
    v14 -= 4;
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
    do
    {
      v19 = (v6 + 16 * v17);
      v20 = *v19;
      if (*v19 != -2)
      {
        if (v20 == -1)
        {
          v21 = v19[1];
          if (v21)
          {
            WTF::fastFree((v21 - 16), v10);
          }
        }

        else
        {
          v22 = *a1;
          if (*a1)
          {
            v23 = *(v22 - 8);
          }

          else
          {
            v23 = 0;
          }

          v24 = (v20 + ~(v20 << 32)) ^ ((v20 + ~(v20 << 32)) >> 22);
          v25 = 9 * ((v24 + ~(v24 << 13)) ^ ((v24 + ~(v24 << 13)) >> 8));
          v26 = (v25 ^ (v25 >> 15)) + ~((v25 ^ (v25 >> 15)) << 27);
          v27 = v23 & ((v26 >> 31) ^ v26);
          v28 = 1;
          do
          {
            v29 = v27;
            v30 = *(v22 + 16 * v27);
            v27 = (v27 + v28++) & v23;
          }

          while (v30 != -1);
          v31 = (v22 + 16 * v29);
          v32 = v31[1];
          if (v32)
          {
            WTF::fastFree((v32 - 16), v10);
            v20 = *v19;
          }

          *v31 = v20;
          v31[1] = 0;
          v33 = v19[1];
          v19[1] = 0;
          v31[1] = v33;
          v34 = v19[1];
          if (v34)
          {
            WTF::fastFree((v34 - 16), v10);
          }

          if (v19 == a3)
          {
            v18 = v31;
          }
        }
      }

      ++v17;
    }

    while (v17 != v7);
  }

  else
  {
    v18 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v18;
}

uint64_t WTF::Detail::CallableWrapper<WGSL::RewriteGlobalVariables::determineUsedGlobals(WGSL::AST::Function const&)::$_0,std::optional<WGSL::CompilationMessage>>::~CallableWrapper(uint64_t result, void *a2)
{
  *result = &unk_2838D4F58;
  v2 = *(result + 24);
  if ((result + 40) != v2 && v2 != 0)
  {
    *(result + 24) = 0;
    *(result + 32) = 0;
    v4 = result;
    WTF::fastFree(v2, a2);
    return v4;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WGSL::RewriteGlobalVariables::determineUsedGlobals(WGSL::AST::Function const&)::$_0,std::optional<WGSL::CompilationMessage>>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_2838D4F58;
  v3 = *(a1 + 24);
  if ((a1 + 40) != v3 && v3 != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v5 = a1;
    WTF::fastFree(v3, a2);
    a1 = v5;
  }

  return WTF::fastFree(a1, a2);
}

unint64_t WTF::Detail::CallableWrapper<WGSL::RewriteGlobalVariables::determineUsedGlobals(WGSL::AST::Function const&)::$_0,std::optional<WGSL::CompilationMessage>>::call@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 36);
  if (v3)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(result + 24);
    v8 = 8 * v3;
    while (1)
    {
      result = WGSL::Type::maybeSize(*v7);
      if ((result & 0x100000000) == 0)
      {
        break;
      }

      if (__CFADD__(v5, result))
      {
        v6 = 1;
      }

      if (!__CFADD__(v5, result))
      {
        v5 += result;
      }

      ++v7;
      v8 -= 8;
      if (!v8)
      {
        result = *(v4 + 168);
        if (v6)
        {
          v9 = 1;
        }

        else
        {
          v9 = v5 > result;
        }

        if (!v9)
        {
          goto LABEL_14;
        }

LABEL_17:
        WTF::String::number(result);
        WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("The combined byte size of all variables in the workgroup address space exceeds ", 80, &v11, " bytes", 7, &v12);
        result = v11;
        *a2 = v12;
        *(a2 + 8) = *(v4 + 8);
        *(a2 + 24) = 1;
        v11 = 0;
        v12 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v10);
          }
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_14:
  *a2 = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WGSL::RewriteGlobalVariables::determineUsedGlobals(WGSL::AST::Function const&)::$_1,std::optional<WGSL::CompilationMessage>>::~CallableWrapper(uint64_t result, void *a2)
{
  *result = &unk_2838D4F80;
  v2 = *(result + 24);
  if ((result + 40) != v2 && v2 != 0)
  {
    *(result + 24) = 0;
    *(result + 32) = 0;
    v4 = result;
    WTF::fastFree(v2, a2);
    return v4;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WGSL::RewriteGlobalVariables::determineUsedGlobals(WGSL::AST::Function const&)::$_1,std::optional<WGSL::CompilationMessage>>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_2838D4F80;
  v3 = *(a1 + 24);
  if ((a1 + 40) != v3 && v3 != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v5 = a1;
    WTF::fastFree(v3, a2);
    a1 = v5;
  }

  return WTF::fastFree(a1, a2);
}

unint64_t WTF::Detail::CallableWrapper<WGSL::RewriteGlobalVariables::determineUsedGlobals(WGSL::AST::Function const&)::$_1,std::optional<WGSL::CompilationMessage>>::call@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 36);
  if (v3)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(result + 24);
    v8 = 8 * v3;
    do
    {
      result = WGSL::Type::maybeSize(*v7);
      if ((result & 0x100000000) == 0)
      {
        __break(1u);
        goto LABEL_15;
      }

      if (__CFADD__(v5, result))
      {
        v6 = 1;
      }

      if (!__CFADD__(v5, result))
      {
        v5 += result;
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
    if (!v6 && v5 <= 0x2000)
    {
      goto LABEL_12;
    }

LABEL_15:
    WTF::String::number(0x2000);
    WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral>("The combined byte size of all variables in the private address space exceeds ", 78, &v10, " bytes", 7, &v11);
    result = v10;
    *a2 = v11;
    *(a2 + 8) = *(v4 + 8);
    *(a2 + 24) = 1;
    v10 = 0;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  else
  {
LABEL_12:
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

void WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Reflection::SpecializationConstant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Reflection::SpecializationConstant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Reflection::SpecializationConstant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Reflection::SpecializationConstant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  v7 = WTF::fastMalloc(((32 * a2) | 0x10));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 32 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    while (1)
    {
      v12 = v4 + 32 * v11;
      v13 = *v12;
      if (*v12 != -1)
      {
        break;
      }

LABEL_8:
      if (++v11 == v5)
      {
        goto LABEL_37;
      }
    }

    if (!v13)
    {
      v14 = *(v12 + 8);
      *(v12 + 8) = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v8);
      }

      v15 = *v12;
      *v12 = 0;
      if (!v15 || atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    v16 = *a1;
    if (*a1)
    {
      v17 = *(v16 - 8);
      v18 = v13[4];
      if (v18 >= 0x100)
      {
LABEL_19:
        v19 = v18 >> 8;
LABEL_22:
        v20 = 0;
        do
        {
          v21 = v19 & v17;
          v19 = ++v20 + v21;
        }

        while (*(v16 + 32 * v21));
        v22 = v16 + 32 * v21;
        v23 = *(v22 + 8);
        *(v22 + 8) = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v8);
        }

        v24 = *v22;
        *v22 = 0;
        if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v24, v8);
        }

        v25 = *v12;
        *v12 = 0;
        *v22 = v25;
        v26 = *(v12 + 8);
        *(v12 + 8) = 0;
        *(v22 + 8) = v26;
        *(v22 + 16) = *(v12 + 16);
        v27 = *(v12 + 8);
        *(v12 + 8) = 0;
        if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v27, v8);
        }

        v15 = *v12;
        *v12 = 0;
        if (!v15 || atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_8;
        }

LABEL_16:
        WTF::StringImpl::destroy(v15, v8);
        goto LABEL_8;
      }
    }

    else
    {
      v17 = 0;
      v18 = v13[4];
      if (v18 >= 0x100)
      {
        goto LABEL_19;
      }
    }

    v19 = WTF::StringImpl::hashSlowCase(v13);
    goto LABEL_22;
  }

  if (v4)
  {
LABEL_37:

    WTF::fastFree((v4 - 16), v8);
  }
}

void WGSL::AST::CompoundStatement::~CompoundStatement(WGSL::AST::CompoundStatement *this, void *a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 3) = 0;
    *(this + 8) = 0;
    WTF::fastFree(v4, a2);
  }
}

{
  v3 = *(this + 5);
  if (v3)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 3) = 0;
    *(this + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  JUMPOUT(0x22AA68560);
}

void WGSL::AST::IfStatement::~IfStatement(WGSL::AST::IfStatement *this, void *a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v2, a2);
  }
}

{
  v3 = *(this + 6);
  if (v3)
  {
    *(this + 6) = 0;
    *(this + 14) = 0;
    WTF::fastFree(v3, a2);
    v2 = vars8;
  }

  JUMPOUT(0x22AA68560);
}

_OWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::AST::Variable *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::AST::Variable *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::AST::Variable *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Variable *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl **a3)
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

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = (v6 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
            v17 = *(v14 + 4);
            if (v17 >= 0x100)
            {
              goto LABEL_14;
            }

LABEL_16:
            v18 = WTF::StringImpl::hashSlowCase(v14);
          }

          else
          {
            v16 = 0;
            v17 = *(v14 + 4);
            if (v17 < 0x100)
            {
              goto LABEL_16;
            }

LABEL_14:
            v18 = v17 >> 8;
          }

          v19 = 0;
          do
          {
            v20 = v18 & v16;
            v18 = ++v19 + v20;
          }

          while (*(v15 + 16 * v20));
          v21 = (v15 + 16 * v20);
          v22 = *v13;
          *v13 = 0;
          *v21 = v22;
          v23 = *v13;
          *v13 = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, v10);
          }

          if (v13 == a3)
          {
            v12 = v21;
          }

          goto LABEL_8;
        }

        *v13 = 0;
      }

LABEL_8:
      if (++v11 == v7)
      {
        goto LABEL_23;
      }
    }
  }

  v12 = 0;
  result = 0;
  if (v6)
  {
LABEL_23:
    WTF::fastFree((v6 - 16), v10);
    return v12;
  }

  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = result;
  if (!a2)
  {
    v9 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_12;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v8 = a2;
  result = WTF::tryFastCompactMalloc((a2 + 20));
  v9 = *v15;
  if (!*v15)
  {
LABEL_12:
    *v4 = v9;
    return result;
  }

  **v15 = 2;
  v9[1] = a2;
  *(v9 + 1) = v9 + 5;
  v9[4] = 4;
  *(v9 + 18) = 24404;
  *(v9 + 5) = *"__ArgumentBufferT_";
  if (a2 > 0x11)
  {
    v10 = v8 - 18;
    v11 = v9 + 38;
    v16 = a3;
    result = WTF::StringTypeAdapter<unsigned int,void>::writeTo<unsigned char>(&v16, v9 + 38, v10);
    LODWORD(v12) = 0;
    v13 = v16;
    do
    {
      v12 = (v12 + 1);
      v14 = v13 > 9;
      v13 /= 0xAu;
    }

    while (v14);
    if (v10 >= v12)
    {
      v11[v12] = 95;
      if (v10 != v12)
      {
        v15[0] = a4;
        result = WTF::StringTypeAdapter<unsigned int,void>::writeTo<unsigned char>(v15, &v11[v12 + 1], v10 + ~v12);
        goto LABEL_12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t WGSL::Lexer<unsigned char>::lex@<X0>(uint64_t result@<X0>, char *a2@<X1>, unsigned int *a3@<X8>)
{
  v3 = result;
  v5 = &v284;
  *a3 = 0;
  *(a3 + 1) = 0;
  v6 = &v288[16];
  while (2)
  {
    v7 = *(v3 + 16);
    if (!v7)
    {
      *(v3 + 36) = *(v3 + 24);
      *(v3 + 44) = *(v3 + 32);
      v12 = *(v3 + 32);
      goto LABEL_332;
    }

    v8 = *v3;
    while (v8 - 9 < 5 || v8 == 32)
    {
      *v3 = 0;
      v9 = vadd_s32(*(v3 + 28), 0x100000001);
      *(v3 + 28) = v9;
      --v7;
      v10 = (*(v3 + 8) + 1);
      *(v3 + 8) = v10;
      *(v3 + 16) = v7;
      if (v7)
      {
        LOBYTE(v11) = *v10;
        *v3 = *v10;
        v12 = v9.i32[1];
        if (v8 != 10)
        {
          goto LABEL_6;
        }

LABEL_5:
        *(v3 + 24) = (*(v3 + 24) + 1);
        goto LABEL_6;
      }

      LOBYTE(v11) = 0;
      v12 = v9.i32[1];
      if (v8 == 10)
      {
        goto LABEL_5;
      }

LABEL_6:
      v8 = v11;
      if (!v7)
      {
        goto LABEL_331;
      }
    }

    v13 = *(v3 + 8);
    v14 = v7 - 1;
    if (v7 != 1 && *v13 == 47)
    {
      v15 = v13[1];
      if (v15 != 42)
      {
        if (v15 == 47)
        {
          v16 = *(v3 + 28);
          v17 = v13 + 1;
          v18 = v13 + 1;
          while (1)
          {
            *v3 = 0;
            *(v3 + 8) = v17;
            *(v3 + 16) = v14;
            v16 = vadd_s32(v16, 0x100000001);
            *(v3 + 28) = v16;
            if (!v14)
            {
              break;
            }

            v19 = *v18++;
            *v3 = v19;
            --v14;
            ++v17;
            if (v19 == 10)
            {
              v12 = v16.i32[1];
              v7 = v14 + 1;
              LOBYTE(v11) = 10;
              goto LABEL_6;
            }
          }

          v12 = v16.i32[1];
LABEL_331:
          *(v3 + 36) = *(v3 + 24);
          *(v3 + 44) = *(v3 + 32);
LABEL_332:
          v68 = *(v3 + 36);
          v69 = *(v3 + 44);
          v70 = v12 - v69;
          v71 = HIDWORD(v68);
          v283 = 1;
LABEL_333:
          v284 = __PAIR64__(v71, v68);
          v285 = v69;
          v286 = v70;
          goto LABEL_486;
        }

        goto LABEL_49;
      }

      *v3 = 0;
      v20 = vadd_s32(*(v3 + 28), 0x200000002);
      *(v3 + 28) = v20;
      v21 = v20.i32[1];
      v22 = v7 - 2;
      v23 = v13 + 2;
      *(v3 + 8) = v13 + 2;
      *(v3 + 16) = v7 - 2;
      if (v7 == 2)
      {
        v12 = v20.i32[1];
LABEL_485:
        v243 = *(v3 + 36);
        v244 = *(v3 + 44);
        v283 = 0;
        v284 = v243;
        v285 = v244;
        v286 = v12 - v244;
        goto LABEL_486;
      }

      LOBYTE(result) = *v23;
      v24 = v20.i32[0];
      v25 = 1;
      while (1)
      {
        *v3 = 0;
        v12 = v21 + 1;
        v26 = v24 + 1;
        *(v3 + 28) = v24 + 1;
        *(v3 + 32) = v21 + 1;
        v27 = v22 - 1;
        v28 = v23 + 1;
        *(v3 + 8) = v23 + 1;
        *(v3 + 16) = v22 - 1;
        if (v22 == 1)
        {
          v11 = 0;
          result = result;
          if (result <= 0x29u)
          {
LABEL_22:
            if (result == 10)
            {
              v26 = 0;
              *(v3 + 24) = (*(v3 + 24) + 1);
            }

            else if (!result)
            {
              goto LABEL_485;
            }

            goto LABEL_24;
          }
        }

        else
        {
          v11 = *v28;
          *v3 = v11;
          result = result;
          if (result <= 0x29u)
          {
            goto LABEL_22;
          }
        }

        if (result == 42)
        {
          if (v22 == 1)
          {
            goto LABEL_485;
          }

          result = *v28;
          if (result == 47)
          {
            *v3 = 0;
            v7 = v22 - 2;
            v28 = v23 + 2;
            *(v3 + 8) = v23 + 2;
            *(v3 + 16) = v22 - 2;
            v12 = v21 + 2;
            v26 = v24 + 2;
            *(v3 + 28) = v24 + 2;
            *(v3 + 32) = v21 + 2;
            if (v22 == 2)
            {
              v11 = 0;
              if (!--v25)
              {
                goto LABEL_6;
              }
            }

            else
            {
              v11 = *v28;
              *v3 = v11;
              if (!--v25)
              {
                goto LABEL_6;
              }
            }

            v27 = v22 - 2;
          }
        }

        else if (result == 47)
        {
          if (v22 == 1)
          {
            goto LABEL_485;
          }

          if (*v28 == 42)
          {
            *v3 = 0;
            v29 = v22 - 2;
            v28 = v23 + 2;
            *(v3 + 8) = v23 + 2;
            *(v3 + 16) = v29;
            v12 = v21 + 2;
            v26 = v24 + 2;
            *(v3 + 28) = v24 + 2;
            *(v3 + 32) = v21 + 2;
            if (v27 == 1)
            {
              v11 = 0;
            }

            else
            {
              v11 = *v28;
              *v3 = v11;
            }

            ++v25;
            v27 = v29;
          }
        }

LABEL_24:
        v23 = v28;
        v24 = v26;
        v21 = v12;
        result = v11;
        v22 = v27;
        if (!v27)
        {
          goto LABEL_485;
        }
      }
    }

LABEL_49:
    *(v3 + 36) = *(v3 + 24);
    *(v3 + 44) = *(v3 + 32);
    switch(v8)
    {
      case '!':
        *v3 = 0;
        v31 = *(v3 + 28);
        v30 = *(v3 + 32);
        v32 = v30 + 1;
        *(v3 + 28) = v31 + 1;
        *(v3 + 32) = v30 + 1;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 == 1 || (v33 = v13[1], *v3 = v33, v33 != 61))
        {
          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = v32 - v47;
          v49 = HIDWORD(v46);
          v50 = 41;
          goto LABEL_336;
        }

        *v3 = 0;
        *(v3 + 8) = v13 + 2;
        *(v3 + 16) = v7 - 2;
        v34 = v30 + 2;
        *(v3 + 28) = v31 + 2;
        *(v3 + 32) = v34;
        if (v7 != 2)
        {
          *v3 = v13[2];
        }

        v35 = *(v3 + 36);
        v36 = *(v3 + 44);
        v37 = v34 - v36;
        v38 = HIDWORD(v35);
        v39 = 42;
        goto LABEL_131;
      case '%':
        *v3 = 0;
        v82 = *(v3 + 28);
        v81 = *(v3 + 32);
        v83 = v81 + 1;
        *(v3 + 28) = v82 + 1;
        *(v3 + 32) = v81 + 1;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 == 1 || (v84 = v13[1], *v3 = v84, v84 != 61))
        {
          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = v83 - v47;
          v49 = HIDWORD(v46);
          v50 = 62;
          goto LABEL_336;
        }

        *v3 = 0;
        *(v3 + 8) = v13 + 2;
        *(v3 + 16) = v7 - 2;
        v85 = v81 + 2;
        *(v3 + 28) = v82 + 2;
        *(v3 + 32) = v85;
        if (v7 != 2)
        {
          *v3 = v13[2];
        }

        v35 = *(v3 + 36);
        v36 = *(v3 + 44);
        v37 = v85 - v36;
        v38 = HIDWORD(v35);
        v39 = 63;
        goto LABEL_131;
      case '&':
        *v3 = 0;
        v57 = *(v3 + 28);
        v58 = *(v3 + 32);
        *(v3 + 28) = v57 + 1;
        *(v3 + 32) = v58 + 1;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 == 1)
        {
          goto LABEL_281;
        }

        v59 = v13[1];
        *v3 = v59;
        if (v59 == 61)
        {
          *v3 = 0;
          *(v3 + 8) = v13 + 2;
          *(v3 + 16) = v7 - 2;
          v132 = v58 + 2;
          *(v3 + 28) = v57 + 2;
          *(v3 + 32) = v132;
          if (v7 != 2)
          {
            *v3 = v13[2];
          }

          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = v132 - v47;
          v49 = HIDWORD(v46);
          v50 = 38;
        }

        else if (v59 == 38)
        {
          *v3 = 0;
          *(v3 + 8) = v13 + 2;
          *(v3 + 16) = v7 - 2;
          v60 = v58 + 2;
          *(v3 + 28) = v57 + 2;
          *(v3 + 32) = v60;
          if (v7 != 2)
          {
            *v3 = v13[2];
          }

          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = v60 - v47;
          v49 = HIDWORD(v46);
          v50 = 37;
        }

        else
        {
LABEL_281:
          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = v58 + 1 - v47;
          v49 = HIDWORD(v46);
          v50 = 36;
        }

        goto LABEL_336;
      case '(':
        *v3 = 0;
        v80 = vadd_s32(*(v3 + 28), 0x100000001);
        *(v3 + 28) = v80;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 != 1)
        {
          *v3 = v13[1];
        }

        v46 = *(v3 + 36);
        v47 = *(v3 + 44);
        v48 = v80.i32[1] - v47;
        v49 = HIDWORD(v46);
        v50 = 67;
        goto LABEL_336;
      case ')':
        *v3 = 0;
        v61 = vadd_s32(*(v3 + 28), 0x100000001);
        *(v3 + 28) = v61;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 != 1)
        {
          *v3 = v13[1];
        }

        v46 = *(v3 + 36);
        v47 = *(v3 + 44);
        v48 = v61.i32[1] - v47;
        v49 = HIDWORD(v46);
        v50 = 68;
        goto LABEL_336;
      case '*':
        *v3 = 0;
        v75 = *(v3 + 28);
        v74 = *(v3 + 32);
        v76 = v74 + 1;
        *(v3 + 28) = v75 + 1;
        *(v3 + 32) = v74 + 1;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 == 1 || (v77 = v13[1], *v3 = v77, v77 != 61))
        {
          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = v76 - v47;
          v49 = HIDWORD(v46);
          v50 = 76;
          goto LABEL_336;
        }

        *v3 = 0;
        *(v3 + 8) = v13 + 2;
        *(v3 + 16) = v7 - 2;
        v78 = v74 + 2;
        *(v3 + 28) = v75 + 2;
        *(v3 + 32) = v78;
        if (v7 != 2)
        {
          *v3 = v13[2];
        }

        v35 = *(v3 + 36);
        v36 = *(v3 + 44);
        v37 = v78 - v36;
        v38 = HIDWORD(v35);
        v39 = 77;
        goto LABEL_131;
      case '+':
        *v3 = 0;
        v86 = *(v3 + 28);
        v87 = *(v3 + 32);
        *(v3 + 28) = v86 + 1;
        *(v3 + 32) = v87 + 1;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 == 1)
        {
          goto LABEL_283;
        }

        v88 = v13[1];
        *v3 = v88;
        if (v88 == 61)
        {
          *v3 = 0;
          *(v3 + 8) = v13 + 2;
          *(v3 + 16) = v7 - 2;
          v136 = v87 + 2;
          *(v3 + 28) = v86 + 2;
          *(v3 + 32) = v136;
          if (v7 != 2)
          {
            *v3 = v13[2];
          }

          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = v136 - v47;
          v49 = HIDWORD(v46);
          v50 = 72;
        }

        else if (v88 == 43)
        {
          *v3 = 0;
          *(v3 + 8) = v13 + 2;
          *(v3 + 16) = v7 - 2;
          v89 = v87 + 2;
          *(v3 + 28) = v86 + 2;
          *(v3 + 32) = v89;
          if (v7 != 2)
          {
            *v3 = v13[2];
          }

          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = v89 - v47;
          v49 = HIDWORD(v46);
          v50 = 71;
        }

        else
        {
LABEL_283:
          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = v87 + 1 - v47;
          v49 = HIDWORD(v46);
          v50 = 70;
        }

        goto LABEL_336;
      case ',':
        *v3 = 0;
        v90 = vadd_s32(*(v3 + 28), 0x100000001);
        *(v3 + 28) = v90;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 != 1)
        {
          *v3 = v13[1];
        }

        v46 = *(v3 + 36);
        v47 = *(v3 + 44);
        v48 = v90.i32[1] - v47;
        v49 = HIDWORD(v46);
        v50 = 48;
        goto LABEL_336;
      case '-':
        *v3 = 0;
        v102 = *(v3 + 28);
        v103 = *(v3 + 32);
        *(v3 + 28) = v102 + 1;
        *(v3 + 32) = v103 + 1;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 == 1)
        {
          goto LABEL_306;
        }

        v104 = v13[1];
        *v3 = v104;
        switch(v104)
        {
          case '-':
            *v3 = 0;
            *(v3 + 8) = v13 + 2;
            *(v3 + 16) = v7 - 2;
            v147 = v103 + 2;
            *(v3 + 28) = v102 + 2;
            *(v3 + 32) = v147;
            if (v7 != 2)
            {
              *v3 = v13[2];
            }

            v46 = *(v3 + 36);
            v47 = *(v3 + 44);
            v48 = v147 - v47;
            v49 = HIDWORD(v46);
            v50 = 60;
            break;
          case '=':
            *v3 = 0;
            *(v3 + 8) = v13 + 2;
            *(v3 + 16) = v7 - 2;
            v146 = v103 + 2;
            *(v3 + 28) = v102 + 2;
            *(v3 + 32) = v146;
            if (v7 != 2)
            {
              *v3 = v13[2];
            }

            v46 = *(v3 + 36);
            v47 = *(v3 + 44);
            v48 = v146 - v47;
            v49 = HIDWORD(v46);
            v50 = 61;
            break;
          case '>':
            *v3 = 0;
            *(v3 + 8) = v13 + 2;
            *(v3 + 16) = v7 - 2;
            v105 = v103 + 2;
            *(v3 + 28) = v102 + 2;
            *(v3 + 32) = v105;
            if (v7 != 2)
            {
              *v3 = v13[2];
            }

            v46 = *(v3 + 36);
            v47 = *(v3 + 44);
            v48 = v105 - v47;
            v49 = HIDWORD(v46);
            v50 = 39;
            break;
          default:
LABEL_306:
            v46 = *(v3 + 36);
            v47 = *(v3 + 44);
            v48 = v103 + 1 - v47;
            v49 = HIDWORD(v46);
            v50 = 59;
            break;
        }

        goto LABEL_336;
      case '/':
        *v3 = 0;
        v98 = *(v3 + 28);
        v97 = *(v3 + 32);
        v99 = v97 + 1;
        *(v3 + 28) = v98 + 1;
        *(v3 + 32) = v97 + 1;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 == 1 || (v100 = v13[1], *v3 = v100, v100 != 61))
        {
          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = v99 - v47;
          v49 = HIDWORD(v46);
          v50 = 74;
          goto LABEL_336;
        }

        *v3 = 0;
        *(v3 + 8) = v13 + 2;
        *(v3 + 16) = v7 - 2;
        v101 = v97 + 2;
        *(v3 + 28) = v98 + 2;
        *(v3 + 32) = v101;
        if (v7 != 2)
        {
          *v3 = v13[2];
        }

        v35 = *(v3 + 36);
        v36 = *(v3 + 44);
        v37 = v101 - v36;
        v38 = HIDWORD(v35);
        v39 = 75;
        goto LABEL_131;
      case ':':
        *v3 = 0;
        v56 = vadd_s32(*(v3 + 28), 0x100000001);
        *(v3 + 28) = v56;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 != 1)
        {
          *v3 = v13[1];
        }

        v46 = *(v3 + 36);
        v47 = *(v3 + 44);
        v48 = v56.i32[1] - v47;
        v49 = HIDWORD(v46);
        v50 = 47;
        goto LABEL_336;
      case ';':
        *v3 = 0;
        v79 = vadd_s32(*(v3 + 28), 0x100000001);
        *(v3 + 28) = v79;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 != 1)
        {
          *v3 = v13[1];
        }

        v46 = *(v3 + 36);
        v47 = *(v3 + 44);
        v48 = v79.i32[1] - v47;
        v49 = HIDWORD(v46);
        v50 = 73;
        goto LABEL_336;
      case '<':
        *v3 = 0;
        v63 = *(v3 + 28);
        v64 = *(v3 + 32);
        v65 = v64 + 1;
        *(v3 + 28) = v63 + 1;
        *(v3 + 32) = v64 + 1;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 == 1)
        {
          goto LABEL_282;
        }

        v66 = v13[1];
        *v3 = v66;
        if (v66 == 60)
        {
          *v3 = 0;
          *(v3 + 8) = v13 + 2;
          *(v3 + 16) = v7 - 2;
          v133 = v64 + 2;
          *(v3 + 28) = v63 + 2;
          *(v3 + 32) = v64 + 2;
          if (v7 == 2 || (v134 = v13[2], *v3 = v134, v134 != 61))
          {
            v46 = *(v3 + 36);
            v47 = *(v3 + 44);
            v48 = v133 - v47;
            v49 = HIDWORD(v46);
            v50 = 57;
            goto LABEL_336;
          }

          *v3 = 0;
          *(v3 + 8) = v13 + 3;
          *(v3 + 16) = v7 - 3;
          v135 = v64 + 3;
          *(v3 + 28) = v63 + 3;
          *(v3 + 32) = v135;
          if (v7 != 3)
          {
            *v3 = v13[3];
          }

          v68 = *(v3 + 36);
          v69 = *(v3 + 44);
          v70 = v135 - v69;
          v71 = HIDWORD(v68);
          v72 = 58;
        }

        else
        {
          if (v66 != 61)
          {
LABEL_282:
            v46 = *(v3 + 36);
            v47 = *(v3 + 44);
            v48 = v65 - v47;
            v49 = HIDWORD(v46);
            v50 = 55;
            goto LABEL_336;
          }

          *v3 = 0;
          *(v3 + 8) = v13 + 2;
          *(v3 + 16) = v7 - 2;
          v67 = v64 + 2;
          *(v3 + 28) = v63 + 2;
          *(v3 + 32) = v67;
          if (v7 != 2)
          {
            *v3 = v13[2];
          }

          v68 = *(v3 + 36);
          v69 = *(v3 + 44);
          v70 = v67 - v69;
          v71 = HIDWORD(v68);
          v72 = 56;
        }

        goto LABEL_302;
      case '=':
        *v3 = 0;
        v52 = *(v3 + 28);
        v51 = *(v3 + 32);
        v53 = v51 + 1;
        *(v3 + 28) = v52 + 1;
        *(v3 + 32) = v51 + 1;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 == 1 || (v54 = v13[1], *v3 = v54, v54 != 61))
        {
          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = v53 - v47;
          v49 = HIDWORD(v46);
          v50 = 49;
          goto LABEL_336;
        }

        *v3 = 0;
        *(v3 + 8) = v13 + 2;
        *(v3 + 16) = v7 - 2;
        v55 = v51 + 2;
        *(v3 + 28) = v52 + 2;
        *(v3 + 32) = v55;
        if (v7 != 2)
        {
          *v3 = v13[2];
        }

        v35 = *(v3 + 36);
        v36 = *(v3 + 44);
        v37 = v55 - v36;
        v38 = HIDWORD(v35);
        v39 = 50;
        goto LABEL_131;
      case '>':
        *v3 = 0;
        v91 = *(v3 + 28);
        v92 = *(v3 + 32);
        v93 = v92 + 1;
        *(v3 + 28) = v91 + 1;
        *(v3 + 32) = v92 + 1;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 == 1)
        {
          goto LABEL_284;
        }

        v94 = v13[1];
        *v3 = v94;
        if (v94 == 62)
        {
          *v3 = 0;
          *(v3 + 8) = v13 + 2;
          *(v3 + 16) = v7 - 2;
          v137 = v92 + 2;
          *(v3 + 28) = v91 + 2;
          *(v3 + 32) = v92 + 2;
          if (v7 == 2 || (v138 = v13[2], *v3 = v138, v138 != 61))
          {
            v46 = *(v3 + 36);
            v47 = *(v3 + 44);
            v48 = v137 - v47;
            v49 = HIDWORD(v46);
            v50 = 53;
            goto LABEL_336;
          }

          *v3 = 0;
          *(v3 + 8) = v13 + 3;
          *(v3 + 16) = v7 - 3;
          v139 = v92 + 3;
          *(v3 + 28) = v91 + 3;
          *(v3 + 32) = v139;
          if (v7 != 3)
          {
            *v3 = v13[3];
          }

          v68 = *(v3 + 36);
          v69 = *(v3 + 44);
          v70 = v139 - v69;
          v71 = HIDWORD(v68);
          v72 = 54;
        }

        else
        {
          if (v94 != 61)
          {
LABEL_284:
            v46 = *(v3 + 36);
            v47 = *(v3 + 44);
            v48 = v93 - v47;
            v49 = HIDWORD(v46);
            v50 = 51;
            goto LABEL_336;
          }

          *v3 = 0;
          *(v3 + 8) = v13 + 2;
          *(v3 + 16) = v7 - 2;
          v95 = v92 + 2;
          *(v3 + 28) = v91 + 2;
          *(v3 + 32) = v95;
          if (v7 != 2)
          {
            *v3 = v13[2];
          }

          v68 = *(v3 + 36);
          v69 = *(v3 + 44);
          v70 = v95 - v69;
          v71 = HIDWORD(v68);
          v72 = 52;
        }

LABEL_302:
        v283 = v72;
        goto LABEL_333;
      case '@':
        *v3 = 0;
        v96 = vadd_s32(*(v3 + 28), 0x100000001);
        *(v3 + 28) = v96;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 != 1)
        {
          *v3 = v13[1];
        }

        v46 = *(v3 + 36);
        v47 = *(v3 + 44);
        v48 = v96.i32[1] - v47;
        v49 = HIDWORD(v46);
        v50 = 40;
        goto LABEL_336;
      case '[':
        *v3 = 0;
        v107 = vadd_s32(*(v3 + 28), 0x100000001);
        *(v3 + 28) = v107;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 != 1)
        {
          *v3 = v13[1];
        }

        v46 = *(v3 + 36);
        v47 = *(v3 + 44);
        v48 = v107.i32[1] - v47;
        v49 = HIDWORD(v46);
        v50 = 45;
        goto LABEL_336;
      case ']':
        *v3 = 0;
        v106 = vadd_s32(*(v3 + 28), 0x100000001);
        *(v3 + 28) = v106;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 != 1)
        {
          *v3 = v13[1];
        }

        v46 = *(v3 + 36);
        v47 = *(v3 + 44);
        v48 = v106.i32[1] - v47;
        v49 = HIDWORD(v46);
        v50 = 46;
        goto LABEL_336;
      case '^':
        *v3 = 0;
        v41 = *(v3 + 28);
        v40 = *(v3 + 32);
        v42 = v40 + 1;
        *(v3 + 28) = v41 + 1;
        *(v3 + 32) = v40 + 1;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 == 1 || (v43 = v13[1], *v3 = v43, v43 != 61))
        {
          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = v42 - v47;
          v49 = HIDWORD(v46);
          v50 = 80;
          goto LABEL_336;
        }

        *v3 = 0;
        *(v3 + 8) = v13 + 2;
        *(v3 + 16) = v7 - 2;
        v44 = v40 + 2;
        *(v3 + 28) = v41 + 2;
        *(v3 + 32) = v44;
        if (v7 != 2)
        {
          *v3 = v13[2];
        }

        v35 = *(v3 + 36);
        v36 = *(v3 + 44);
        v37 = v44 - v36;
        v38 = HIDWORD(v35);
        v39 = 81;
LABEL_131:
        v283 = v39;
        v284 = __PAIR64__(v38, v35);
        v285 = v36;
        v286 = v37;
        goto LABEL_486;
      case '{':
        *v3 = 0;
        v73 = vadd_s32(*(v3 + 28), 0x100000001);
        *(v3 + 28) = v73;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 != 1)
        {
          *v3 = v13[1];
        }

        v46 = *(v3 + 36);
        v47 = *(v3 + 44);
        v48 = v73.i32[1] - v47;
        v49 = HIDWORD(v46);
        v50 = 43;
        goto LABEL_336;
      case '|':
        *v3 = 0;
        v108 = *(v3 + 28);
        v109 = *(v3 + 32);
        *(v3 + 28) = v108 + 1;
        *(v3 + 32) = v109 + 1;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 == 1)
        {
          goto LABEL_285;
        }

        v110 = v13[1];
        *v3 = v110;
        if (v110 == 61)
        {
          *v3 = 0;
          *(v3 + 8) = v13 + 2;
          *(v3 + 16) = v7 - 2;
          v140 = v109 + 2;
          *(v3 + 28) = v108 + 2;
          *(v3 + 32) = v140;
          if (v7 != 2)
          {
            *v3 = v13[2];
          }

          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = v140 - v47;
          v49 = HIDWORD(v46);
          v50 = 66;
        }

        else if (v110 == 124)
        {
          *v3 = 0;
          *(v3 + 8) = v13 + 2;
          *(v3 + 16) = v7 - 2;
          v111 = v109 + 2;
          *(v3 + 28) = v108 + 2;
          *(v3 + 32) = v111;
          if (v7 != 2)
          {
            *v3 = v13[2];
          }

          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = v111 - v47;
          v49 = HIDWORD(v46);
          v50 = 65;
        }

        else
        {
LABEL_285:
          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = v109 + 1 - v47;
          v49 = HIDWORD(v46);
          v50 = 64;
        }

        goto LABEL_336;
      case '}':
        *v3 = 0;
        v45 = vadd_s32(*(v3 + 28), 0x100000001);
        *(v3 + 28) = v45;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 != 1)
        {
          *v3 = v13[1];
        }

        v46 = *(v3 + 36);
        v47 = *(v3 + 44);
        v48 = v45.i32[1] - v47;
        v49 = HIDWORD(v46);
        v50 = 44;
        goto LABEL_336;
      case '~':
        *v3 = 0;
        v62 = vadd_s32(*(v3 + 28), 0x100000001);
        *(v3 + 28) = v62;
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 != 1)
        {
          *v3 = v13[1];
        }

        v46 = *(v3 + 36);
        v47 = *(v3 + 44);
        v48 = v62.i32[1] - v47;
        v49 = HIDWORD(v46);
        v50 = 78;
        goto LABEL_336;
      default:
        if (v8 == 46 || (v8 - 48) <= 9u)
        {
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v115 = 0;
          v116 = 0;
          v117 = 0;
          v118 = 0;
          v119 = 0;
          v120 = v13;
          v121 = v7;
          result = v13;
          a2 = v7;
          while (1)
          {
            switch(v119)
            {
              case 1:
                if (v8 - 69 > 0x33)
                {
                  goto LABEL_265;
                }

                if (((1 << (v8 - 69)) & 0x1001A00000000) != 0)
                {
                  goto LABEL_250;
                }

                if (((1 << (v8 - 69)) & 0x100000001) != 0)
                {
                  goto LABEL_240;
                }

                if (((1 << (v8 - 69)) & 0x8000000080000) != 0)
                {
                  v125 = 0;
                  v119 = 9;
                }

                else
                {
LABEL_265:
                  if (v8 == 46)
                  {
LABEL_266:
                    v125 = 0;
                    v119 = 5;
                  }

                  else
                  {
                    if ((v8 - 48) >= 0xAu)
                    {
                      goto LABEL_276;
                    }

LABEL_269:
                    v125 = 0;
                    v119 = 3;
                  }
                }

                goto LABEL_270;
              case 2:
                if (v8 - 69 > 0x30)
                {
                  goto LABEL_192;
                }

                if (((1 << (v8 - 69)) & 0x1001A00000000) != 0)
                {
                  goto LABEL_250;
                }

                if (((1 << (v8 - 69)) & 0x100000001) != 0)
                {
LABEL_240:
                  v125 = 0;
                  v119 = 6;
                }

                else
                {
LABEL_192:
                  if (v8 == 46)
                  {
                    goto LABEL_266;
                  }

                  if ((v8 - 48) >= 0xAu)
                  {
                    goto LABEL_276;
                  }

                  v125 = 0;
                  v119 = 2;
                }

                goto LABEL_270;
              case 3:
                if (v8 == 46)
                {
                  goto LABEL_266;
                }

                if (v8 == 101 || v8 == 69)
                {
                  goto LABEL_240;
                }

                if ((v8 - 48) >= 0xAu)
                {
                  goto LABEL_143;
                }

                goto LABEL_269;
              case 4:
                if ((v8 - 48) >= 0xAu)
                {
                  v46 = *(v3 + 36);
                  v47 = *(v3 + 44);
                  v48 = *(v3 + 32) - v47;
                  v49 = HIDWORD(v46);
                  v50 = 69;
LABEL_336:
                  v283 = v50;
LABEL_337:
                  v284 = __PAIR64__(v49, v46);
                  v285 = v47;
                  v286 = v48;
                  goto LABEL_486;
                }

                v125 = 0;
                v119 = 5;
                v116 = &v13[v112];
LABEL_270:
                *v3 = 0;
                if (v7 == v112)
                {
                  goto LABEL_581;
                }

                --v121;
                *(v3 + 8) = &v13[v112 + 1];
                *(v3 + 16) = v121;
                *(v3 + 28) = vadd_s32(*(v3 + 28), 0x100000001);
                if (v14 == v112)
                {
                  v8 = 0;
                  ++v120;
                  ++v112;
                  if (v125)
                  {
LABEL_275:
                    v120 = &v13[v112];
LABEL_276:
                    if (v116 | v115)
                    {
                      if (v117)
                      {
                        v281 = v113;
                        v127 = v120 - v13;
                        v128 = v114 != 0;
                        v129 = (v127 - v128);
                        *v288 = v6;
                        v130 = v127 - v128 + 1;
                        *&v288[8] = 256;
                        *&v288[12] = v127 - v128 + 1;
                        if (v130 < 0x101)
                        {
                          v195 = v6;
                          if (v129)
                          {
                            goto LABEL_399;
                          }
                        }

                        else
                        {
                          if (HIDWORD(v130))
                          {
                            goto LABEL_582;
                          }

                          v131 = WTF::fastMalloc(v130);
                          *&v288[8] = v130;
                          *v288 = v131;
LABEL_399:
                          v196 = 0;
                          if (v129 <= 1)
                          {
                            v197 = 1;
                          }

                          else
                          {
                            v197 = v129;
                          }

                          do
                          {
                            if (v7 == v196)
                            {
                              goto LABEL_581;
                            }

                            if (v196 >= *&v288[12])
                            {
                              __break(0xC471u);
                              JUMPOUT(0x22573F828);
                            }

                            *(*v288 + v196) = v13[v196];
                            ++v196;
                          }

                          while (v197 != v196);
                          if (v129 >= *&v288[12])
                          {
                            __break(0xC471u);
                            JUMPOUT(0x22573F830);
                          }

                          v195 = *v288;
                        }

                        v129[v195] = 0;
                        if (!*&v288[12])
                        {
                          goto LABEL_581;
                        }

                        v198 = *v288;
                        if (*(*v288 + *&v288[12] - 1))
                        {
                          __break(0xC471u);
                          JUMPOUT(0x22573F850);
                        }

                        v290 = 0;
                        v199 = strtod(*v288, &v290);
                        if (*__error() == 34 || &v290[-v198] != v129)
                        {
                          v200 = *(v3 + 36);
                          v201 = *(v3 + 44);
                          v202 = *(v3 + 32) - v201;
                          v283 = 0;
                          v284 = v200;
                          v285 = v201;
                          v286 = v202;
                        }

                        else
                        {
                          WGSL::Lexer<unsigned char>::lexNumber(void)::{lambda(unsigned char)#1}::operator()<double>(&v283, v281, v3, v199);
                        }

                        result = *v288;
                        if (v6 != *v288 && *v288)
                        {
                          *v288 = 0;
                          *&v288[8] = 0;
                          result = WTF::fastFree(result, a2);
                        }

                        goto LABEL_486;
                      }

                      *v288 = 0;
                      result = WTF::parseDouble();
                      if (v113 > 0x68u)
                      {
                        if (v113 == 105 || v113 == 117)
                        {
                          goto LABEL_451;
                        }

                        goto LABEL_418;
                      }

                      if (v113 != 102)
                      {
                        if (v113 == 104)
                        {
                          WGSL::convertFloat<half,double>(double)::max = 31743;
                          WGSL::convertFloat<half,double>(double)::lowest = -1025;
                          __asm { FCVT            H0, D0 }

                          v183 = LODWORD(_D0) | 0x10000;
                          if (_VF)
                          {
                            v183 = 0;
                          }

                          if (v183 >= 0x10000)
                          {
                            _H0 = v183;
                            __asm { FCVT            D0, H0 }

                            v185 = *(v3 + 36);
                            v186 = *(v3 + 44);
                            v187 = *(v3 + 32) - v186;
                            v188 = HIDWORD(v185);
                            v189 = 7;
LABEL_571:
                            v283 = v189;
                            v284 = __PAIR64__(v188, v185);
                            v285 = v186;
                            v286 = v187;
                            v287 = *&_D0;
                            goto LABEL_486;
                          }

                          goto LABEL_451;
                        }

LABEL_418:
                        WGSL::convertFloat<double,double>(double)::max = 0x7FEFFFFFFFFFFFFFLL;
                        WGSL::convertFloat<double,double>(double)::lowest = 0xFFEFFFFFFFFFFFFFLL;
                        if (fabs(_D0) <= 1.79769313e308)
                        {
                          v185 = *(v3 + 36);
                          v186 = *(v3 + 44);
                          v187 = *(v3 + 32) - v186;
                          v188 = HIDWORD(v185);
                          v189 = 2;
                          goto LABEL_571;
                        }

LABEL_451:
                        v218 = *(v3 + 36);
                        v219 = *(v3 + 44);
                        v220 = *(v3 + 32) - v219;
                        v283 = 0;
                        v284 = v218;
                        v285 = v219;
                        v286 = v220;
                        goto LABEL_486;
                      }

                      WGSL::convertFloat<float,double>(double)::max = 2139095039;
                      WGSL::convertFloat<float,double>(double)::lowest = -8388609;
                      _VF = fabs(_D0) > 3.40282347e38;
                      *&v216 = _D0;
                      v217 = v216 | 0x100000000;
                      if (_VF)
                      {
                        v217 = 0;
                      }

                      if (!HIDWORD(v217))
                      {
                        goto LABEL_451;
                      }

                      v242 = *&v217;
LABEL_570:
                      _D0 = v242;
                      v185 = *(v3 + 36);
                      v186 = *(v3 + 44);
                      v187 = *(v3 + 32) - v186;
                      v188 = HIDWORD(v185);
                      v189 = 6;
                      goto LABEL_571;
                    }

                    if (v117)
                    {
                      v148 = 16;
                    }

                    else
                    {
                      v148 = 10;
                    }

                    if (!result)
                    {
                      goto LABEL_451;
                    }

                    v149 = 0;
                    if (a2)
                    {
                      while (1)
                      {
                        v150 = v149[result];
                        if ((v150 - 9) >= 5 && v150 != 32)
                        {
                          break;
                        }

                        if (a2 == ++v149)
                        {
                          v149 = a2;
                          goto LABEL_392;
                        }
                      }

                      if (a2 < v149)
                      {
                        goto LABEL_581;
                      }
                    }

LABEL_392:
                    v190 = (a2 - v149);
                    if (a2 == v149)
                    {
                      goto LABEL_451;
                    }

                    v191 = &v149[result];
                    v192 = v149[result];
                    if (v192 == 45 || v192 == 43)
                    {
                      if (!--v190)
                      {
                        goto LABEL_451;
                      }

                      v194 = *++v191;
                      v193 = v194;
                    }

                    else
                    {
                      v193 = v192;
                    }

                    if ((v193 - 48) > 9)
                    {
                      if ((v193 | 0x20u) < 0x61)
                      {
                        goto LABEL_451;
                      }

                      v203 = v148 + 87;
                      if (v148 + 87 <= (v193 | 0x20u))
                      {
                        goto LABEL_451;
                      }
                    }

                    else
                    {
                      if (v193 - 48 >= v148)
                      {
                        goto LABEL_451;
                      }

                      v203 = v148 + 87;
                    }

                    if (v192 == 45)
                    {
                      v204 = 0;
                      v205 = 0;
                      v206 = v190 - 1;
                      for (i = (v191 + 1); ; ++i)
                      {
                        v208 = (v193 - 48);
                        v209 = v193 - 48;
                        v210 = (v193 | 0x20u) - 87;
                        if (v208 < 0xA)
                        {
                          v210 = v209;
                        }

                        v211 = (v204 * v148) >> 64;
                        _ZF = v211 == (v204 * v148) >> 63;
                        v212 = v211 != (v204 * v148) >> 63;
                        if (_ZF)
                        {
                          v204 *= v148;
                        }

                        _VF = __OFSUB__(v204, v210);
                        v214 = (v204 - v210);
                        v215 = _VF;
                        if (!_VF)
                        {
                          v204 = v214;
                        }

                        if ((v215 | v212))
                        {
                          v205 = 1;
                        }

                        if (!v206)
                        {
                          break;
                        }

                        v193 = *i;
                        if ((v193 - 48) < 0xA)
                        {
                          if (v193 - 48 >= v148)
                          {
                            break;
                          }
                        }

                        else if ((v193 | 0x20u) < 0x61 || v203 <= (v193 | 0x20u))
                        {
                          break;
                        }

                        --v206;
                      }
                    }

                    else
                    {
                      v204 = 0;
                      v205 = 0;
                      while (1)
                      {
                        --v190;
                        ++v191;
                        v221 = (v193 - 48);
                        v222 = v193 - 48;
                        v223 = (v193 | 0x20u) - 87;
                        if (v221 < 0xA)
                        {
                          v223 = v222;
                        }

                        v224 = (v204 * v148) >> 64;
                        _ZF = v224 == (v204 * v148) >> 63;
                        v225 = v224 != (v204 * v148) >> 63;
                        if (_ZF)
                        {
                          v204 *= v148;
                        }

                        v226 = __OFADD__(v204, v223);
                        v227 = (v204 + v223);
                        v228 = v226;
                        if (!v226)
                        {
                          v204 = v227;
                        }

                        if ((v228 | v225))
                        {
                          v205 = 1;
                        }

                        if (!v190)
                        {
                          break;
                        }

                        v193 = *v191;
                        if ((v193 - 48) <= 9)
                        {
                          if (v193 - 48 >= v148)
                          {
                            break;
                          }
                        }

                        else if ((v193 | 0x20u) < 0x61 || v203 <= (v193 | 0x20u))
                        {
                          break;
                        }
                      }
                    }

                    if (v205)
                    {
                      goto LABEL_451;
                    }

                    if (v113 <= 0x68u)
                    {
                      if (v113 == 102)
                      {
                        v242 = v204;
                        goto LABEL_570;
                      }

                      if (v113 == 104)
                      {
                        v229 = v204 + 65504;
                        _S0 = v204;
                        __asm { FCVT            H0, S0 }

                        v231 = LODWORD(_S0) | 0x10000;
                        if (v229 >= 0x1FFC1)
                        {
                          v231 = 0;
                        }

                        v232 = *(v3 + 32);
                        if (v231 >= 0x10000)
                        {
                          _H0 = v231;
                          __asm { FCVT            D0, H0 }

                          v235 = *(v3 + 36);
                          v236 = *(v3 + 44);
                          v283 = 7;
                          v284 = v235;
                          v285 = v236;
                          v286 = v232 - v236;
                          v287 = _D0;
                          goto LABEL_486;
                        }

                        goto LABEL_575;
                      }

LABEL_568:
                      v272 = *(v3 + 36);
                      v273 = *(v3 + 44);
                      v274 = *(v3 + 32) - v273;
                      v283 = 3;
                      v284 = v272;
                      v285 = v273;
                      v286 = v274;
                      v287 = v204;
                      goto LABEL_486;
                    }

                    if (v113 == 117)
                    {
                      v232 = *(v3 + 32);
                      if (!HIDWORD(v204))
                      {
                        v237 = *(v3 + 36);
                        v238 = *(v3 + 44);
                        v239 = v232 - v238;
                        v240 = HIDWORD(v237);
                        v241 = 5;
                        goto LABEL_574;
                      }
                    }

                    else
                    {
                      if (v113 != 105)
                      {
                        goto LABEL_568;
                      }

                      v232 = *(v3 + 32);
                      if (v204 == v204)
                      {
                        v237 = *(v3 + 36);
                        v238 = *(v3 + 44);
                        v239 = v232 - v238;
                        v240 = HIDWORD(v237);
                        v241 = 4;
LABEL_574:
                        v283 = v241;
                        v284 = __PAIR64__(v240, v237);
                        v285 = v238;
                        v286 = v239;
                        v287 = v204;
                        goto LABEL_486;
                      }
                    }

LABEL_575:
                    v275 = *(v3 + 36);
                    v276 = *(v3 + 44);
                    v283 = 0;
                    v284 = v275;
                    v285 = v276;
                    v286 = v232 - v276;
                    goto LABEL_486;
                  }
                }

                else
                {
                  v8 = v13[v112 + 1];
                  *v3 = v8;
                  ++v120;
                  ++v112;
                  if (v125)
                  {
                    goto LABEL_275;
                  }
                }

                break;
              case 5:
                if (!v116)
                {
                  v116 = &v13[v112];
                }

                if (v8 > 0x65u)
                {
                  if (v8 == 104 || v8 == 102)
                  {
                    goto LABEL_250;
                  }
                }

                else
                {
                  v125 = 0;
                  v119 = 6;
                  if (v8 == 69 || v8 == 101)
                  {
                    goto LABEL_270;
                  }
                }

                if ((v8 - 48) >= 0xAu)
                {
                  goto LABEL_276;
                }

                goto LABEL_266;
              case 6:
                v125 = 0;
                v119 = 7;
                if (v8 == 43 || v8 == 45)
                {
                  goto LABEL_253;
                }

                if ((v8 - 48) >= 0xAu)
                {
                  goto LABEL_143;
                }

                v125 = 0;
                v119 = 8;
                v115 = &v13[v112];
                goto LABEL_270;
              case 7:
                if (v118 == 43)
                {
                  v115 = &v13[v112];
                }

                if ((v8 - 48) >= 0xAu)
                {
                  goto LABEL_143;
                }

                goto LABEL_239;
              case 8:
                v119 = 19;
                v125 = 1;
                if (v8 == 102 || v8 == 104)
                {
                  goto LABEL_251;
                }

                if ((v8 - 48) >= 0xAu)
                {
                  goto LABEL_276;
                }

LABEL_239:
                v125 = 0;
                v119 = 8;
                goto LABEL_270;
              case 9:
                if (v8 == 46)
                {
                  v125 = 0;
                  v119 = 11;
                  v117 = 1;
LABEL_247:
                  result = &v13[v112];
                  a2 = v121;
                  goto LABEL_270;
                }

                v125 = 0;
                v119 = 10;
                v117 = 1;
                if ((v8 - 48) < 0xAu)
                {
                  goto LABEL_247;
                }

                result = &v13[v112];
                a2 = v121;
                if (((v8 | 0x20) - 97) >= 6u)
                {
                  goto LABEL_143;
                }

                goto LABEL_270;
              case 10:
                v125 = 0;
                v119 = 16;
                if (v8 <= 0x68u)
                {
                  if (v8 == 46)
                  {
                    v125 = 0;
                    v119 = 12;
                    goto LABEL_270;
                  }

                  if (v8 == 80)
                  {
                    goto LABEL_270;
                  }
                }

                else
                {
                  switch(v8)
                  {
                    case 'u':
                      goto LABEL_250;
                    case 'p':
                      goto LABEL_270;
                    case 'i':
LABEL_250:
                      v119 = 19;
                      v125 = 1;
LABEL_251:
                      v113 = v8;
                      v114 = v8;
                      goto LABEL_270;
                  }
                }

                v125 = 0;
                v119 = 10;
                if ((v8 - 48) >= 0xAu && ((v8 | 0x20) - 97) >= 6u)
                {
                  goto LABEL_276;
                }

                goto LABEL_270;
              case 11:
                v125 = 0;
                v119 = 12;
                if ((v8 - 48) < 0xAu)
                {
                  v116 = &v13[v112];
                }

                else
                {
                  v116 = &v13[v112];
                  if (((v8 | 0x20) - 97) >= 6u)
                  {
                    goto LABEL_143;
                  }
                }

                goto LABEL_270;
              case 12:
                v125 = 0;
                if (!v116)
                {
                  v116 = &v13[v112];
                }

                v119 = 12;
                if ((v8 - 48) < 0xAu || ((v8 | 0x20) - 97) < 6u)
                {
                  goto LABEL_270;
                }

                if ((v8 | 0x20) != 0x70)
                {
                  goto LABEL_276;
                }

                v125 = 0;
                v119 = 13;
                goto LABEL_270;
              case 13:
                if ((v8 - 48) < 0xAu)
                {
                  v125 = 0;
                  v119 = 15;
                  v115 = &v13[v112];
                  goto LABEL_270;
                }

                v125 = 0;
                v126 = v8;
                v119 = 14;
                if (v8 == 43)
                {
                  goto LABEL_253;
                }

                goto LABEL_242;
              case 14:
                if (v118 == 43)
                {
                  v115 = &v13[v112];
                }

                if ((v8 - 48) >= 0xAu)
                {
                  goto LABEL_143;
                }

                goto LABEL_230;
              case 15:
                if ((v8 - 48) < 0xAu)
                {
                  goto LABEL_230;
                }

                v119 = 19;
                v125 = 1;
                if (v8 != 102 && v8 != 104)
                {
                  goto LABEL_275;
                }

                goto LABEL_251;
              case 16:
                if ((v8 - 48) >= 0xAu)
                {
                  v125 = 0;
                  v126 = v8;
                  v119 = 17;
                  if (v8 == 43)
                  {
LABEL_253:
                    v115 = &v13[v112];
                    v118 = v8;
                  }

                  else
                  {
LABEL_242:
                    v115 = &v13[v112];
                    v118 = v8;
                    if (v126 != 45)
                    {
                      goto LABEL_143;
                    }
                  }
                }

                else
                {
                  v125 = 0;
                  v119 = 18;
                  v115 = &v13[v112];
                }

                goto LABEL_270;
              case 17:
                if (v118 == 43)
                {
                  v115 = &v13[v112];
                }

                if ((v8 - 48) >= 0xAu)
                {
                  goto LABEL_143;
                }

                v125 = 0;
                v119 = 18;
                goto LABEL_270;
              case 18:
                if ((v8 - 48) < 0xAu)
                {
LABEL_230:
                  v125 = 0;
                  v119 = 15;
                  goto LABEL_270;
                }

                v119 = 19;
                v125 = 1;
                if (v8 == 102)
                {
                  goto LABEL_251;
                }

                v113 = v8;
                v114 = v8;
                if (v8 != 104)
                {
                  goto LABEL_143;
                }

                goto LABEL_270;
              default:
                v122 = v8;
                if (v8 == 46)
                {
                  v123 = 4;
                }

                else
                {
                  v123 = 2;
                }

                _ZF = v122 == 48;
                v125 = 0;
                if (_ZF)
                {
                  v119 = 1;
                }

                else
                {
                  v119 = v123;
                }

                goto LABEL_270;
            }
          }
        }

        if (v8 != 95 && ((v8 | 0x20) - 97) > 0x19u)
        {
LABEL_143:
          v46 = *(v3 + 36);
          v47 = *(v3 + 44);
          v48 = *(v3 + 32) - v47;
          v49 = HIDWORD(v46);
          v283 = 0;
          goto LABEL_337;
        }

        *v3 = 0;
        v141 = vadd_s32(*(v3 + 28), 0x100000001);
        *(v3 + 28) = v141;
        v142 = v141.i32[1];
        *(v3 + 8) = v13 + 1;
        *(v3 + 16) = v7 - 1;
        if (v7 == 1 || (v143 = v13[1], *v3 = v143, v143 != 95) && (v143 - 48) >= 0xA && (v143 | 0x20u) - 97 > 0x19)
        {
          v144 = 0;
          v145 = *(v3 + 44);
          if (v7 >= (v141.i32[1] - v145))
          {
            goto LABEL_349;
          }

          goto LABEL_581;
        }

        v151 = v13 + 2;
        v152 = v141.i32[0] + 1;
        v153 = v141.i32[1] + 1;
        v154 = v7 - 2;
        v155 = 1;
        v156 = v13 + 2;
        while (1)
        {
          v142 = v153;
          *v3 = 0;
          *(v3 + 8) = v151;
          *(v3 + 16) = v154;
          *(v3 + 28) = v152;
          *(v3 + 32) = v153;
          if (!v154)
          {
            break;
          }

          v157 = *v156++;
          ++v155;
          *v3 = v157;
          v158 = v157 - 48;
          v159 = (v157 | 0x20) - 97;
          ++v151;
          ++v152;
          ++v153;
          --v154;
          if (v157 != 95 && v158 >= 0xA && v159 >= 0x1A)
          {
            v144 = v155 > 1;
            v145 = *(v3 + 44);
            if (v7 >= (v142 - v145))
            {
              goto LABEL_349;
            }

LABEL_581:
            __break(1u);
LABEL_582:
            __break(0xC471u);
            JUMPOUT(0x22573F820);
          }
        }

        v144 = v7 > 1;
        v145 = *(v3 + 44);
        if (v7 < (v153 - v145))
        {
          goto LABEL_581;
        }

LABEL_349:
        v279 = v5;
        v278 = v6;
        v277 = v144;
        if (v142 == v145)
        {
          v162 = MEMORY[0x277CD4668];
          atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
LABEL_352:
          v280 = 0;
          v163 = *(v162 + 8);
          v282 = v162;
          v164 = *(v162 + 4) | (((*(v162 + 16) >> 2) & 1) << 32);
          goto LABEL_353;
        }

        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v162 = *v288;
        if (*v288)
        {
          goto LABEL_352;
        }

        v282 = 0;
        v163 = 0;
        v164 = 0x100000000;
        v280 = 1;
LABEL_353:
        v165 = &WGSL::Lexer<unsigned char>::nextToken(void)::keywordMappings;
        v166 = 27;
        do
        {
          v167 = &v165[3 * (v166 >> 1)];
          v168 = WTF::codePointCompare();
          if (v168 >= 0)
          {
            v166 >>= 1;
          }

          else
          {
            v166 += ~(v166 >> 1);
          }

          if (v168 < 0)
          {
            v165 = v167 + 3;
          }
        }

        while (v166);
        if (v165 == &WGSL::Lexer<unsigned char>::nextToken(void)::reservedWords || !WTF::operator==(v163, v164, *v165, v165[1]) || (v169 = *(v165 + 4)) == 0)
        {
          if (v280)
          {
            v173 = 0;
            v174 = 0x100000000;
          }

          else
          {
            v173 = *(v282 + 1);
            v174 = *(v282 + 1) | (((*(v282 + 4) >> 2) & 1) << 32);
          }

          v175 = &WGSL::Lexer<unsigned char>::nextToken(void)::reservedWords;
          v176 = 145;
          do
          {
            v177 = &v175[2 * (v176 >> 1)];
            result = WTF::codePointCompare();
            if ((result & 0x80u) == 0)
            {
              v176 >>= 1;
            }

            else
            {
              v176 += ~(v176 >> 1);
            }

            if ((result & 0x80u) != 0)
            {
              v175 = v177 + 2;
            }
          }

          while (v176);
          if (v175 != &WGSL::Lexer<char16_t>::nextToken(void)::keywordMappings && (result = WTF::operator==(v173, v174, *v175, v175[1]), (result & 1) != 0))
          {
            v169 = 9;
          }

          else
          {
            v5 = v279;
            v6 = v278;
            if (!v277 || *v13 != 95)
            {
              goto LABEL_382;
            }

            if (v7 == 1)
            {
              goto LABEL_581;
            }

            if (v13[1] != 95)
            {
LABEL_382:
              v178 = *(v3 + 36);
              v179 = *(v3 + 44);
              v180 = *(v3 + 32) - v179;
              v283 = 8;
              v284 = v178;
              v285 = v179;
              v286 = v180;
              v287 = v282;
              goto LABEL_486;
            }

            v169 = 0;
          }
        }

        v170 = *(v3 + 36);
        v171 = *(v3 + 44);
        v172 = *(v3 + 32) - v171;
        v283 = v169;
        v284 = v170;
        v285 = v171;
        v286 = v172;
        v5 = v279;
        v6 = v278;
        result = v282;
        if ((v280 & 1) == 0 && atomic_fetch_add_explicit(v282, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(v282, a2);
        }

LABEL_486:
        v245 = a3[3];
        if (v245 == a3[2])
        {
          result = WTF::Vector<WGSL::Token,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a3, v245 + 1, &v283);
          v245 = a3[3];
          v246 = *a3;
          v247 = *a3 + 32 * v245;
          *v247 = *result;
          *(v247 + 4) = *(result + 4);
          v248 = *result;
          if (*result > 8u)
          {
            goto LABEL_499;
          }

          if (((1 << v248) & 0x38) != 0)
          {
            v251 = *(result + 24);
            goto LABEL_498;
          }

          if (((1 << v248) & 0xC4) != 0)
          {
            v249 = *(result + 24);
LABEL_495:
            *(v247 + 24) = v249;
            goto LABEL_499;
          }

          if (v248 != 8)
          {
            goto LABEL_499;
          }

          *(v247 + 24) = 0;
          v260 = *(result + 24);
          if (!v260)
          {
            goto LABEL_499;
          }

LABEL_518:
          atomic_fetch_add_explicit(v260, 2u, memory_order_relaxed);
          result = *(v247 + 24);
          *(v247 + 24) = v260;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }

          goto LABEL_499;
        }

        v246 = *a3;
        v247 = *a3 + 32 * v245;
        *v247 = v283;
        *(v247 + 4) = *v5;
        v250 = v283;
        if (v283 > 8)
        {
          goto LABEL_500;
        }

        if (((1 << v283) & 0x38) != 0)
        {
          v251 = v287;
LABEL_498:
          *(v247 + 24) = v251;
LABEL_499:
          v250 = v283;
          goto LABEL_500;
        }

        if (((1 << v283) & 0xC4) != 0)
        {
          v249 = v287;
          goto LABEL_495;
        }

        if (v283 == 8)
        {
          *(v247 + 24) = 0;
          v260 = v287;
          if (!v287)
          {
            goto LABEL_499;
          }

          goto LABEL_518;
        }

LABEL_500:
        v252 = (v245 + 1);
        a3[3] = v252;
        if (v250 - 52 < 2 || v250 == 60)
        {
          goto LABEL_529;
        }

        if (v250 != 54)
        {
          goto LABEL_548;
        }

        v253 = *(v3 + 36);
        v254 = *(v3 + 44);
        v255 = *(v3 + 32) - v254;
        *v288 = 82;
        *&v288[4] = v253;
        *&v288[12] = v254;
        *&v288[16] = v255;
        if (v252 == a3[2])
        {
          result = WTF::Vector<WGSL::Token,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a3, v252 + 1, v288);
          v256 = *a3 + 32 * a3[3];
          *v256 = *result;
          *(v256 + 4) = *(result + 4);
          v257 = *result;
          if (*result > 8u)
          {
            goto LABEL_524;
          }

          if (((1 << v257) & 0x38) != 0)
          {
            v261 = *(result + 24);
            goto LABEL_523;
          }

          if (((1 << v257) & 0xC4) != 0)
          {
            v258 = *(result + 24);
LABEL_512:
            *(v256 + 24) = v258;
            goto LABEL_524;
          }

          if (v257 != 8)
          {
            goto LABEL_524;
          }

          *(v256 + 24) = 0;
          v271 = *(result + 24);
          if (!v271)
          {
            goto LABEL_524;
          }

LABEL_565:
          atomic_fetch_add_explicit(v271, 2u, memory_order_relaxed);
          result = *(v256 + 24);
          *(v256 + 24) = v271;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }

          goto LABEL_524;
        }

        v256 = v246 + 32 * v252;
        *v256 = 82;
        *(v256 + 4) = *&v288[4];
        v259 = *v288;
        if (*v288 > 8u)
        {
          goto LABEL_525;
        }

        if (((1 << v288[0]) & 0x38) != 0)
        {
          v261 = v289;
LABEL_523:
          *(v256 + 24) = v261;
LABEL_524:
          v259 = *v288;
          goto LABEL_525;
        }

        if (((1 << v288[0]) & 0xC4) != 0)
        {
          v258 = v289;
          goto LABEL_512;
        }

        if (*v288 == 8)
        {
          *(v256 + 24) = 0;
          v271 = v289;
          if (!v289)
          {
            goto LABEL_524;
          }

          goto LABEL_565;
        }

LABEL_525:
        LODWORD(v252) = a3[3] + 1;
        a3[3] = v252;
        if (v259 == 8)
        {
          result = v289;
          v289 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }

LABEL_529:
        v262 = *(v3 + 36);
        v263 = *(v3 + 44);
        v264 = *(v3 + 32) - v263;
        *v288 = 82;
        *&v288[4] = v262;
        *&v288[12] = v263;
        *&v288[16] = v264;
        if (v252 == a3[2])
        {
          result = WTF::Vector<WGSL::Token,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a3, v252 + 1, v288);
          v252 = a3[3];
          v265 = *a3 + 32 * v252;
          *v265 = *result;
          *(v265 + 4) = *(result + 4);
          v266 = *result;
          if (*result > 8u)
          {
            goto LABEL_542;
          }

          if (((1 << v266) & 0x38) != 0)
          {
            v269 = *(result + 24);
            goto LABEL_541;
          }

          if (((1 << v266) & 0xC4) != 0)
          {
            v267 = *(result + 24);
LABEL_538:
            *(v265 + 24) = v267;
            goto LABEL_542;
          }

          if (v266 != 8)
          {
            goto LABEL_542;
          }

          *(v265 + 24) = 0;
          v270 = *(result + 24);
          if (!v270)
          {
            goto LABEL_542;
          }

LABEL_557:
          atomic_fetch_add_explicit(v270, 2u, memory_order_relaxed);
          result = *(v265 + 24);
          *(v265 + 24) = v270;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, a2);
          }

          goto LABEL_542;
        }

        v265 = *a3 + 32 * v252;
        *v265 = 82;
        *(v265 + 4) = *&v288[4];
        v268 = *v288;
        if (*v288 > 8u)
        {
          goto LABEL_543;
        }

        if (((1 << v288[0]) & 0x38) != 0)
        {
          v269 = v289;
LABEL_541:
          *(v265 + 24) = v269;
LABEL_542:
          v268 = *v288;
          goto LABEL_543;
        }

        if (((1 << v288[0]) & 0xC4) != 0)
        {
          v267 = v289;
          goto LABEL_538;
        }

        if (*v288 == 8)
        {
          *(v265 + 24) = 0;
          v270 = v289;
          if (!v289)
          {
            goto LABEL_542;
          }

          goto LABEL_557;
        }

LABEL_543:
        a3[3] = v252 + 1;
        if (v268 == 8)
        {
          result = v289;
          v289 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }

        v250 = v283;
LABEL_548:
        if (v250 == 8)
        {
          result = v287;
          v287 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }

        if (v250 > 1)
        {
          continue;
        }

        return result;
    }
  }
}

double WGSL::Lexer<unsigned char>::lexNumber(void)::{lambda(unsigned char)#1}::operator()<double>(uint64_t a1, unsigned __int8 a2, uint64_t a3, double result)
{
  if (a2 > 0x68u)
  {
    if (a2 != 105 && a2 != 117)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (a2 != 102)
  {
    if (a2 == 104)
    {
      WGSL::convertFloat<half,double>(double)::max = 31743;
      WGSL::convertFloat<half,double>(double)::lowest = -1025;
      __asm { FCVT            H0, D0 }

      v8 = LODWORD(result) | 0x10000;
      if (_VF)
      {
        v8 = 0;
      }

      if (v8 >= 0x10000)
      {
        _H0 = v8;
        __asm { FCVT            D0, H0 }

        v10 = *(a3 + 36);
        v11 = *(a3 + 44);
        v12 = *(a3 + 32) - v11;
        *a1 = 7;
        *(a1 + 4) = v10;
        *(a1 + 12) = v11;
        *(a1 + 16) = v12;
        *(a1 + 24) = result;
        return result;
      }

      goto LABEL_17;
    }

LABEL_11:
    WGSL::convertFloat<double,double>(double)::max = 0x7FEFFFFFFFFFFFFFLL;
    WGSL::convertFloat<double,double>(double)::lowest = 0xFFEFFFFFFFFFFFFFLL;
    if (fabs(result) <= 1.79769313e308)
    {
      v13 = *(a3 + 36);
      v14 = *(a3 + 44);
      v15 = *(a3 + 32) - v14;
      *a1 = 2;
      *(a1 + 4) = v13;
      *(a1 + 12) = v14;
      *(a1 + 16) = v15;
      *(a1 + 24) = result;
      return result;
    }

    goto LABEL_17;
  }

  WGSL::convertFloat<float,double>(double)::max = 2139095039;
  WGSL::convertFloat<float,double>(double)::lowest = -8388609;
  _VF = fabs(result) > 3.40282347e38;
  *&result = result;
  v16 = LODWORD(result) | 0x100000000;
  if (_VF)
  {
    v16 = 0;
  }

  if (!HIDWORD(v16))
  {
LABEL_17:
    v17 = *(a3 + 36);
    v18 = *(a3 + 44);
    v19 = *(a3 + 32) - v18;
    *a1 = 0;
    *(a1 + 4) = v17;
    *(a1 + 12) = v18;
    *(a1 + 16) = v19;
    return result;
  }

  result = *&v16;
  v20 = *(a3 + 36);
  v21 = *(a3 + 44);
  v22 = *(a3 + 32) - v21;
  *a1 = 6;
  *(a1 + 4) = v20;
  *(a1 + 12) = v21;
  *(a1 + 16) = v22;
  *(a1 + 24) = result;
  return result;
}

uint64_t WGSL::Lexer<char16_t>::lex@<X0>(uint64_t result@<X0>, WTF::StringImpl *a2@<X1>, unsigned int *a3@<X8>)
{
  v3 = result;
  v5 = &v279;
  *a3 = 0;
  *(a3 + 1) = 0;
  v6 = &v283[4];
  v7 = &v285;
LABEL_3:
  v8 = *(v3 + 16);
  if (!v8)
  {
    *(v3 + 36) = *(v3 + 24);
    *(v3 + 44) = *(v3 + 32);
    v10 = *(v3 + 32);
    goto LABEL_347;
  }

  v9 = *v3;
  while (1)
  {
    if (v9 - 9 < 5 || v9 == 32)
    {
      *v3 = 0;
      v11 = vadd_s32(*(v3 + 28), 0x100000001);
      *(v3 + 28) = v11;
      v12 = v8 - 1;
      v13 = (*(v3 + 8) + 2);
      *(v3 + 8) = v13;
      *(v3 + 16) = v8 - 1;
      if (v8 == 1)
      {
        LOWORD(v14) = 0;
        v10 = v11.i32[1];
        if (v9 != 10)
        {
          goto LABEL_9;
        }
      }

      else
      {
        LOWORD(v14) = *v13;
        *v3 = *v13;
        v10 = v11.i32[1];
        if (v9 != 10)
        {
          goto LABEL_9;
        }
      }

      v15 = 0;
      ++*(v3 + 24);
      goto LABEL_8;
    }

    v16 = *(v3 + 8);
    if (v8 == 1 || *v16 != 47)
    {
      break;
    }

    v17 = *(v16 + 2);
    if (v17 == 42)
    {
      *v3 = 0;
      v23 = vadd_s32(*(v3 + 28), 0x200000002);
      *(v3 + 28) = v23;
      v10 = v23.i32[1];
      v24 = v8 - 2;
      v25 = (v16 + 4);
      *(v3 + 8) = v16 + 4;
      *(v3 + 16) = v8 - 2;
      if (v8 == 2)
      {
        goto LABEL_60;
      }

      LOWORD(result) = *v25;
      v15 = v23.i32[0];
      v26 = 1;
      while (1)
      {
        *v3 = 0;
        v27 = v25 + 1;
        v12 = v24 - 1;
        if (v24 == 1)
        {
          v14 = 0;
          v28 = v10 + 1;
          v29 = v15 + 1;
          result = result;
          if (result <= 0x29u)
          {
LABEL_43:
            if (result != 10)
            {
              v15 = v29;
              v10 = v28;
              if (!result)
              {
                goto LABEL_59;
              }

              goto LABEL_27;
            }

            v15 = 0;
            ++*(v3 + 24);
            goto LABEL_26;
          }
        }

        else
        {
          v14 = *v27;
          *v3 = v14;
          v28 = v10 + 1;
          v29 = v15 + 1;
          result = result;
          if (result <= 0x29u)
          {
            goto LABEL_43;
          }
        }

        if (result == 42)
        {
          if (v24 == 1)
          {
            goto LABEL_59;
          }

          result = *v27;
          if (result == 47)
          {
            *v3 = 0;
            v27 = v25 + 2;
            if (v24 == 2)
            {
              v14 = 0;
              v12 = 0;
              v10 += 2;
              v15 += 2;
              if (!--v26)
              {
LABEL_6:
                *(v3 + 8) = v27;
                *(v3 + 16) = v12;
                goto LABEL_7;
              }
            }

            else
            {
              v14 = *v27;
              *v3 = v14;
              v12 = v24 - 2;
              v10 += 2;
              v15 += 2;
              if (!--v26)
              {
                goto LABEL_6;
              }
            }

            goto LABEL_27;
          }
        }

        else if (result == 47)
        {
          if (v24 == 1)
          {
            goto LABEL_59;
          }

          if (*v27 == 42)
          {
            *v3 = 0;
            v27 = v25 + 2;
            if (v24 == 2)
            {
              v14 = 0;
            }

            else
            {
              v14 = *v27;
              *v3 = v14;
            }

            v12 = v24 - 2;
            v10 += 2;
            v15 += 2;
            ++v26;
            goto LABEL_27;
          }
        }

        v15 = v29;
LABEL_26:
        v10 = v28;
LABEL_27:
        v25 = v27;
        result = v14;
        v24 = v12;
        if (!v12)
        {
          v28 = v10;
          v29 = v15;
LABEL_59:
          *(v3 + 8) = v27;
          *(v3 + 16) = v12;
          v10 = v28;
          *(v3 + 28) = v29;
          *(v3 + 32) = v28;
LABEL_60:
          v40 = *(v3 + 36);
          v41 = *(v3 + 44);
          v278 = 0;
          v279 = v40;
          v280 = v41;
          v281 = v10 - v41;
          goto LABEL_353;
        }
      }
    }

    if (v17 != 47)
    {
      break;
    }

    v18 = (v16 + 2);
    v19 = *(v3 + 28);
    v20 = *(v3 + 32);
    v21 = *(v3 + 8);
    v15 = v19;
    v10 = v20;
    v12 = v8;
    do
    {
      *v3 = 0;
      if (!--v12)
      {
        v10 = v20 + v8;
        *(v3 + 8) = v16 + 2 * v8;
        *(v3 + 16) = 0;
        *(v3 + 28) = v19 + v8;
        *(v3 + 32) = v20 + v8;
LABEL_346:
        *(v3 + 36) = *(v3 + 24);
        *(v3 + 44) = *(v3 + 32);
LABEL_347:
        v35 = *(v3 + 36);
        v36 = *(v3 + 44);
        v37 = v10 - v36;
        v38 = HIDWORD(v35);
        v278 = 1;
LABEL_348:
        v279 = __PAIR64__(v38, v35);
        v280 = v36;
        v281 = v37;
        goto LABEL_353;
      }

      ++v15;
      ++v10;
      v22 = *v18++;
      *v3 = v22;
      v21 += 2;
    }

    while (v22 != 10);
    *(v3 + 8) = v21;
    *(v3 + 16) = v12;
    LOWORD(v14) = 10;
LABEL_7:
    *(v3 + 32) = v10;
LABEL_8:
    *(v3 + 28) = v15;
LABEL_9:
    v9 = v14;
    v8 = v12;
    if (!v12)
    {
      goto LABEL_346;
    }
  }

  *(v3 + 36) = *(v3 + 24);
  *(v3 + 44) = *(v3 + 32);
  switch(v9)
  {
    case '!':
      *v3 = 0;
      v31 = *(v3 + 28);
      v30 = *(v3 + 32);
      v32 = v30 + 1;
      *(v3 + 28) = v31 + 1;
      *(v3 + 32) = v30 + 1;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 == 1 || (v33 = *(v16 + 2), *v3 = v33, v33 != 61))
      {
        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = v32 - v49;
        v51 = HIDWORD(v48);
        v52 = 41;
        goto LABEL_351;
      }

      *v3 = 0;
      *(v3 + 8) = v16 + 4;
      *(v3 + 16) = v8 - 2;
      v34 = v30 + 2;
      *(v3 + 28) = v31 + 2;
      *(v3 + 32) = v34;
      if (v8 != 2)
      {
        *v3 = *(v16 + 4);
      }

      v35 = *(v3 + 36);
      v36 = *(v3 + 44);
      v37 = v34 - v36;
      v38 = HIDWORD(v35);
      v39 = 42;
      goto LABEL_137;
    case '%':
      *v3 = 0;
      v84 = *(v3 + 28);
      v83 = *(v3 + 32);
      v85 = v83 + 1;
      *(v3 + 28) = v84 + 1;
      *(v3 + 32) = v83 + 1;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 == 1 || (v86 = *(v16 + 2), *v3 = v86, v86 != 61))
      {
        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = v85 - v49;
        v51 = HIDWORD(v48);
        v52 = 62;
        goto LABEL_351;
      }

      *v3 = 0;
      *(v3 + 8) = v16 + 4;
      *(v3 + 16) = v8 - 2;
      v87 = v83 + 2;
      *(v3 + 28) = v84 + 2;
      *(v3 + 32) = v87;
      if (v8 != 2)
      {
        *v3 = *(v16 + 4);
      }

      v35 = *(v3 + 36);
      v36 = *(v3 + 44);
      v37 = v87 - v36;
      v38 = HIDWORD(v35);
      v39 = 63;
      goto LABEL_137;
    case '&':
      *v3 = 0;
      v59 = *(v3 + 28);
      v60 = *(v3 + 32);
      *(v3 + 28) = v59 + 1;
      *(v3 + 32) = v60 + 1;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 == 1)
      {
        goto LABEL_296;
      }

      v61 = *(v16 + 2);
      *v3 = v61;
      if (v61 == 61)
      {
        *v3 = 0;
        *(v3 + 8) = v16 + 4;
        *(v3 + 16) = v8 - 2;
        v139 = v60 + 2;
        *(v3 + 28) = v59 + 2;
        *(v3 + 32) = v139;
        if (v8 != 2)
        {
          *v3 = *(v16 + 4);
        }

        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = v139 - v49;
        v51 = HIDWORD(v48);
        v52 = 38;
      }

      else if (v61 == 38)
      {
        *v3 = 0;
        *(v3 + 8) = v16 + 4;
        *(v3 + 16) = v8 - 2;
        v62 = v60 + 2;
        *(v3 + 28) = v59 + 2;
        *(v3 + 32) = v62;
        if (v8 != 2)
        {
          *v3 = *(v16 + 4);
        }

        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = v62 - v49;
        v51 = HIDWORD(v48);
        v52 = 37;
      }

      else
      {
LABEL_296:
        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = v60 + 1 - v49;
        v51 = HIDWORD(v48);
        v52 = 36;
      }

      goto LABEL_351;
    case '(':
      *v3 = 0;
      v82 = vadd_s32(*(v3 + 28), 0x100000001);
      *(v3 + 28) = v82;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 != 1)
      {
        *v3 = *(v16 + 2);
      }

      v48 = *(v3 + 36);
      v49 = *(v3 + 44);
      v50 = v82.i32[1] - v49;
      v51 = HIDWORD(v48);
      v52 = 67;
      goto LABEL_351;
    case ')':
      *v3 = 0;
      v63 = vadd_s32(*(v3 + 28), 0x100000001);
      *(v3 + 28) = v63;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 != 1)
      {
        *v3 = *(v16 + 2);
      }

      v48 = *(v3 + 36);
      v49 = *(v3 + 44);
      v50 = v63.i32[1] - v49;
      v51 = HIDWORD(v48);
      v52 = 68;
      goto LABEL_351;
    case '*':
      *v3 = 0;
      v77 = *(v3 + 28);
      v76 = *(v3 + 32);
      v78 = v76 + 1;
      *(v3 + 28) = v77 + 1;
      *(v3 + 32) = v76 + 1;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 == 1 || (v79 = *(v16 + 2), *v3 = v79, v79 != 61))
      {
        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = v78 - v49;
        v51 = HIDWORD(v48);
        v52 = 76;
        goto LABEL_351;
      }

      *v3 = 0;
      *(v3 + 8) = v16 + 4;
      *(v3 + 16) = v8 - 2;
      v80 = v76 + 2;
      *(v3 + 28) = v77 + 2;
      *(v3 + 32) = v80;
      if (v8 != 2)
      {
        *v3 = *(v16 + 4);
      }

      v35 = *(v3 + 36);
      v36 = *(v3 + 44);
      v37 = v80 - v36;
      v38 = HIDWORD(v35);
      v39 = 77;
      goto LABEL_137;
    case '+':
      *v3 = 0;
      v88 = *(v3 + 28);
      v89 = *(v3 + 32);
      *(v3 + 28) = v88 + 1;
      *(v3 + 32) = v89 + 1;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 == 1)
      {
        goto LABEL_298;
      }

      v90 = *(v16 + 2);
      *v3 = v90;
      if (v90 == 61)
      {
        *v3 = 0;
        *(v3 + 8) = v16 + 4;
        *(v3 + 16) = v8 - 2;
        v143 = v89 + 2;
        *(v3 + 28) = v88 + 2;
        *(v3 + 32) = v143;
        if (v8 != 2)
        {
          *v3 = *(v16 + 4);
        }

        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = v143 - v49;
        v51 = HIDWORD(v48);
        v52 = 72;
      }

      else if (v90 == 43)
      {
        *v3 = 0;
        *(v3 + 8) = v16 + 4;
        *(v3 + 16) = v8 - 2;
        v91 = v89 + 2;
        *(v3 + 28) = v88 + 2;
        *(v3 + 32) = v91;
        if (v8 != 2)
        {
          *v3 = *(v16 + 4);
        }

        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = v91 - v49;
        v51 = HIDWORD(v48);
        v52 = 71;
      }

      else
      {
LABEL_298:
        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = v89 + 1 - v49;
        v51 = HIDWORD(v48);
        v52 = 70;
      }

      goto LABEL_351;
    case ',':
      *v3 = 0;
      v92 = vadd_s32(*(v3 + 28), 0x100000001);
      *(v3 + 28) = v92;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 != 1)
      {
        *v3 = *(v16 + 2);
      }

      v48 = *(v3 + 36);
      v49 = *(v3 + 44);
      v50 = v92.i32[1] - v49;
      v51 = HIDWORD(v48);
      v52 = 48;
      goto LABEL_351;
    case '-':
      *v3 = 0;
      v104 = *(v3 + 28);
      v105 = *(v3 + 32);
      *(v3 + 28) = v104 + 1;
      *(v3 + 32) = v105 + 1;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 == 1)
      {
        goto LABEL_321;
      }

      v106 = *(v16 + 2);
      *v3 = v106;
      switch(v106)
      {
        case '-':
          *v3 = 0;
          *(v3 + 8) = v16 + 4;
          *(v3 + 16) = v8 - 2;
          v151 = v105 + 2;
          *(v3 + 28) = v104 + 2;
          *(v3 + 32) = v151;
          if (v8 != 2)
          {
            *v3 = *(v16 + 4);
          }

          v48 = *(v3 + 36);
          v49 = *(v3 + 44);
          v50 = v151 - v49;
          v51 = HIDWORD(v48);
          v52 = 60;
          break;
        case '=':
          *v3 = 0;
          *(v3 + 8) = v16 + 4;
          *(v3 + 16) = v8 - 2;
          v150 = v105 + 2;
          *(v3 + 28) = v104 + 2;
          *(v3 + 32) = v150;
          if (v8 != 2)
          {
            *v3 = *(v16 + 4);
          }

          v48 = *(v3 + 36);
          v49 = *(v3 + 44);
          v50 = v150 - v49;
          v51 = HIDWORD(v48);
          v52 = 61;
          break;
        case '>':
          *v3 = 0;
          *(v3 + 8) = v16 + 4;
          *(v3 + 16) = v8 - 2;
          v107 = v105 + 2;
          *(v3 + 28) = v104 + 2;
          *(v3 + 32) = v107;
          if (v8 != 2)
          {
            *v3 = *(v16 + 4);
          }

          v48 = *(v3 + 36);
          v49 = *(v3 + 44);
          v50 = v107 - v49;
          v51 = HIDWORD(v48);
          v52 = 39;
          break;
        default:
LABEL_321:
          v48 = *(v3 + 36);
          v49 = *(v3 + 44);
          v50 = v105 + 1 - v49;
          v51 = HIDWORD(v48);
          v52 = 59;
          break;
      }

      goto LABEL_351;
    case '/':
      *v3 = 0;
      v100 = *(v3 + 28);
      v99 = *(v3 + 32);
      v101 = v99 + 1;
      *(v3 + 28) = v100 + 1;
      *(v3 + 32) = v99 + 1;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 == 1 || (v102 = *(v16 + 2), *v3 = v102, v102 != 61))
      {
        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = v101 - v49;
        v51 = HIDWORD(v48);
        v52 = 74;
        goto LABEL_351;
      }

      *v3 = 0;
      *(v3 + 8) = v16 + 4;
      *(v3 + 16) = v8 - 2;
      v103 = v99 + 2;
      *(v3 + 28) = v100 + 2;
      *(v3 + 32) = v103;
      if (v8 != 2)
      {
        *v3 = *(v16 + 4);
      }

      v35 = *(v3 + 36);
      v36 = *(v3 + 44);
      v37 = v103 - v36;
      v38 = HIDWORD(v35);
      v39 = 75;
      goto LABEL_137;
    case ':':
      *v3 = 0;
      v58 = vadd_s32(*(v3 + 28), 0x100000001);
      *(v3 + 28) = v58;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 != 1)
      {
        *v3 = *(v16 + 2);
      }

      v48 = *(v3 + 36);
      v49 = *(v3 + 44);
      v50 = v58.i32[1] - v49;
      v51 = HIDWORD(v48);
      v52 = 47;
      goto LABEL_351;
    case ';':
      *v3 = 0;
      v81 = vadd_s32(*(v3 + 28), 0x100000001);
      *(v3 + 28) = v81;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 != 1)
      {
        *v3 = *(v16 + 2);
      }

      v48 = *(v3 + 36);
      v49 = *(v3 + 44);
      v50 = v81.i32[1] - v49;
      v51 = HIDWORD(v48);
      v52 = 73;
      goto LABEL_351;
    case '<':
      *v3 = 0;
      v65 = *(v3 + 28);
      v66 = *(v3 + 32);
      v67 = v66 + 1;
      *(v3 + 28) = v65 + 1;
      *(v3 + 32) = v66 + 1;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 == 1)
      {
        goto LABEL_297;
      }

      v68 = *(v16 + 2);
      *v3 = v68;
      if (v68 == 60)
      {
        *v3 = 0;
        *(v3 + 8) = v16 + 4;
        *(v3 + 16) = v8 - 2;
        v140 = v66 + 2;
        *(v3 + 28) = v65 + 2;
        *(v3 + 32) = v66 + 2;
        if (v8 == 2 || (v141 = *(v16 + 4), *v3 = v141, v141 != 61))
        {
          v48 = *(v3 + 36);
          v49 = *(v3 + 44);
          v50 = v140 - v49;
          v51 = HIDWORD(v48);
          v52 = 57;
          goto LABEL_351;
        }

        *v3 = 0;
        *(v3 + 8) = v16 + 6;
        *(v3 + 16) = v8 - 3;
        v142 = v66 + 3;
        *(v3 + 28) = v65 + 3;
        *(v3 + 32) = v142;
        if (v8 != 3)
        {
          *v3 = *(v16 + 6);
        }

        v70 = *(v3 + 36);
        v71 = *(v3 + 44);
        v72 = v142 - v71;
        v73 = HIDWORD(v70);
        v74 = 58;
      }

      else
      {
        if (v68 != 61)
        {
LABEL_297:
          v48 = *(v3 + 36);
          v49 = *(v3 + 44);
          v50 = v67 - v49;
          v51 = HIDWORD(v48);
          v52 = 55;
          goto LABEL_351;
        }

        *v3 = 0;
        *(v3 + 8) = v16 + 4;
        *(v3 + 16) = v8 - 2;
        v69 = v66 + 2;
        *(v3 + 28) = v65 + 2;
        *(v3 + 32) = v69;
        if (v8 != 2)
        {
          *v3 = *(v16 + 4);
        }

        v70 = *(v3 + 36);
        v71 = *(v3 + 44);
        v72 = v69 - v71;
        v73 = HIDWORD(v70);
        v74 = 56;
      }

      goto LABEL_317;
    case '=':
      *v3 = 0;
      v54 = *(v3 + 28);
      v53 = *(v3 + 32);
      v55 = v53 + 1;
      *(v3 + 28) = v54 + 1;
      *(v3 + 32) = v53 + 1;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 == 1 || (v56 = *(v16 + 2), *v3 = v56, v56 != 61))
      {
        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = v55 - v49;
        v51 = HIDWORD(v48);
        v52 = 49;
        goto LABEL_351;
      }

      *v3 = 0;
      *(v3 + 8) = v16 + 4;
      *(v3 + 16) = v8 - 2;
      v57 = v53 + 2;
      *(v3 + 28) = v54 + 2;
      *(v3 + 32) = v57;
      if (v8 != 2)
      {
        *v3 = *(v16 + 4);
      }

      v35 = *(v3 + 36);
      v36 = *(v3 + 44);
      v37 = v57 - v36;
      v38 = HIDWORD(v35);
      v39 = 50;
      goto LABEL_137;
    case '>':
      *v3 = 0;
      v93 = *(v3 + 28);
      v94 = *(v3 + 32);
      v95 = v94 + 1;
      *(v3 + 28) = v93 + 1;
      *(v3 + 32) = v94 + 1;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 == 1)
      {
        goto LABEL_299;
      }

      v96 = *(v16 + 2);
      *v3 = v96;
      if (v96 != 62)
      {
        if (v96 != 61)
        {
LABEL_299:
          v48 = *(v3 + 36);
          v49 = *(v3 + 44);
          v50 = v95 - v49;
          v51 = HIDWORD(v48);
          v52 = 51;
          goto LABEL_351;
        }

        *v3 = 0;
        *(v3 + 8) = v16 + 4;
        *(v3 + 16) = v8 - 2;
        v97 = v94 + 2;
        *(v3 + 28) = v93 + 2;
        *(v3 + 32) = v97;
        if (v8 != 2)
        {
          *v3 = *(v16 + 4);
        }

        v70 = *(v3 + 36);
        v71 = *(v3 + 44);
        v72 = v97 - v71;
        v73 = HIDWORD(v70);
        v74 = 52;
        goto LABEL_317;
      }

      *v3 = 0;
      *(v3 + 8) = v16 + 4;
      *(v3 + 16) = v8 - 2;
      v144 = v94 + 2;
      *(v3 + 28) = v93 + 2;
      *(v3 + 32) = v94 + 2;
      if (v8 != 2)
      {
        v145 = *(v16 + 4);
        *v3 = v145;
        if (v145 == 61)
        {
          *v3 = 0;
          *(v3 + 8) = v16 + 6;
          *(v3 + 16) = v8 - 3;
          v146 = v94 + 3;
          *(v3 + 28) = v93 + 3;
          *(v3 + 32) = v146;
          if (v8 != 3)
          {
            *v3 = *(v16 + 6);
          }

          v70 = *(v3 + 36);
          v71 = *(v3 + 44);
          v72 = v146 - v71;
          v73 = HIDWORD(v70);
          v74 = 54;
LABEL_317:
          v278 = v74;
          v279 = __PAIR64__(v73, v70);
          v280 = v71;
          v281 = v72;
          goto LABEL_353;
        }
      }

      v48 = *(v3 + 36);
      v49 = *(v3 + 44);
      v50 = v144 - v49;
      v51 = HIDWORD(v48);
      v52 = 53;
      goto LABEL_351;
    case '@':
      *v3 = 0;
      v98 = vadd_s32(*(v3 + 28), 0x100000001);
      *(v3 + 28) = v98;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 != 1)
      {
        *v3 = *(v16 + 2);
      }

      v48 = *(v3 + 36);
      v49 = *(v3 + 44);
      v50 = v98.i32[1] - v49;
      v51 = HIDWORD(v48);
      v52 = 40;
      goto LABEL_351;
    case '[':
      *v3 = 0;
      v113 = vadd_s32(*(v3 + 28), 0x100000001);
      *(v3 + 28) = v113;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 != 1)
      {
        *v3 = *(v16 + 2);
      }

      v48 = *(v3 + 36);
      v49 = *(v3 + 44);
      v50 = v113.i32[1] - v49;
      v51 = HIDWORD(v48);
      v52 = 45;
      goto LABEL_351;
    case ']':
      *v3 = 0;
      v112 = vadd_s32(*(v3 + 28), 0x100000001);
      *(v3 + 28) = v112;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 != 1)
      {
        *v3 = *(v16 + 2);
      }

      v48 = *(v3 + 36);
      v49 = *(v3 + 44);
      v50 = v112.i32[1] - v49;
      v51 = HIDWORD(v48);
      v52 = 46;
      goto LABEL_351;
    case '^':
      *v3 = 0;
      v43 = *(v3 + 28);
      v42 = *(v3 + 32);
      v44 = v42 + 1;
      *(v3 + 28) = v43 + 1;
      *(v3 + 32) = v42 + 1;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 == 1 || (v45 = *(v16 + 2), *v3 = v45, v45 != 61))
      {
        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = v44 - v49;
        v51 = HIDWORD(v48);
        v52 = 80;
        goto LABEL_351;
      }

      *v3 = 0;
      *(v3 + 8) = v16 + 4;
      *(v3 + 16) = v8 - 2;
      v46 = v42 + 2;
      *(v3 + 28) = v43 + 2;
      *(v3 + 32) = v46;
      if (v8 != 2)
      {
        *v3 = *(v16 + 4);
      }

      v35 = *(v3 + 36);
      v36 = *(v3 + 44);
      v37 = v46 - v36;
      v38 = HIDWORD(v35);
      v39 = 81;
LABEL_137:
      v278 = v39;
      goto LABEL_348;
    case '{':
      *v3 = 0;
      v75 = vadd_s32(*(v3 + 28), 0x100000001);
      *(v3 + 28) = v75;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 != 1)
      {
        *v3 = *(v16 + 2);
      }

      v48 = *(v3 + 36);
      v49 = *(v3 + 44);
      v50 = v75.i32[1] - v49;
      v51 = HIDWORD(v48);
      v52 = 43;
      goto LABEL_351;
    case '|':
      *v3 = 0;
      v114 = *(v3 + 28);
      v115 = *(v3 + 32);
      *(v3 + 28) = v114 + 1;
      *(v3 + 32) = v115 + 1;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 == 1)
      {
        goto LABEL_300;
      }

      v116 = *(v16 + 2);
      *v3 = v116;
      if (v116 == 61)
      {
        *v3 = 0;
        *(v3 + 8) = v16 + 4;
        *(v3 + 16) = v8 - 2;
        v147 = v115 + 2;
        *(v3 + 28) = v114 + 2;
        *(v3 + 32) = v147;
        if (v8 != 2)
        {
          *v3 = *(v16 + 4);
        }

        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = v147 - v49;
        v51 = HIDWORD(v48);
        v52 = 66;
      }

      else if (v116 == 124)
      {
        *v3 = 0;
        *(v3 + 8) = v16 + 4;
        *(v3 + 16) = v8 - 2;
        v117 = v115 + 2;
        *(v3 + 28) = v114 + 2;
        *(v3 + 32) = v117;
        if (v8 != 2)
        {
          *v3 = *(v16 + 4);
        }

        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = v117 - v49;
        v51 = HIDWORD(v48);
        v52 = 65;
      }

      else
      {
LABEL_300:
        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = v115 + 1 - v49;
        v51 = HIDWORD(v48);
        v52 = 64;
      }

      goto LABEL_351;
    case '}':
      *v3 = 0;
      v47 = vadd_s32(*(v3 + 28), 0x100000001);
      *(v3 + 28) = v47;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 != 1)
      {
        *v3 = *(v16 + 2);
      }

      v48 = *(v3 + 36);
      v49 = *(v3 + 44);
      v50 = v47.i32[1] - v49;
      v51 = HIDWORD(v48);
      v52 = 44;
      goto LABEL_351;
    case '~':
      *v3 = 0;
      v64 = vadd_s32(*(v3 + 28), 0x100000001);
      *(v3 + 28) = v64;
      *(v3 + 8) = v16 + 2;
      *(v3 + 16) = v8 - 1;
      if (v8 != 1)
      {
        *v3 = *(v16 + 2);
      }

      v48 = *(v3 + 36);
      v49 = *(v3 + 44);
      v50 = v64.i32[1] - v49;
      v51 = HIDWORD(v48);
      v52 = 78;
      goto LABEL_351;
    default:
      if (v9 != 46 && (v9 - 48) > 9u)
      {
        if (v9 == 95)
        {
          v108 = 1;
          *v3 = 0;
          v109 = 1;
          v111 = v8 - 1;
          _ZF = v8 == 1;
          if (!v8)
          {
            goto LABEL_598;
          }

LABEL_437:
          v275 = v7;
          v182 = (v16 + 2 * v109);
          *(v3 + 8) = v182;
          *(v3 + 16) = v111;
          v183 = *(v3 + 32) + v108;
          *(v3 + 28) += v108;
          *(v3 + 32) = v183;
          if (!_ZF)
          {
            v184 = *v182;
            *v3 = v184;
            v276 = v6;
            if (v111)
            {
              goto LABEL_439;
            }

LABEL_482:
            v209 = *(v3 + 44);
            if (v8 < (v183 - v209))
            {
              goto LABEL_598;
            }

            v273 = v5;
            v272 = v108;
            if (v183 == v209)
            {
              v210 = MEMORY[0x277CD4668];
              atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
            }

            else
            {
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v210 = *v283;
              if (!*v283)
              {
                v277 = 0;
                v211 = 0;
                v212 = 0x100000000;
                v274 = 1;
                goto LABEL_487;
              }
            }

            v274 = 0;
            v211 = *(v210 + 8);
            v277 = v210;
            v212 = *(v210 + 4) | (((*(v210 + 16) >> 2) & 1) << 32);
LABEL_487:
            v213 = &WGSL::Lexer<char16_t>::nextToken(void)::keywordMappings;
            v214 = 27;
            do
            {
              v215 = &v213[3 * (v214 >> 1)];
              v216 = WTF::codePointCompare();
              if (v216 >= 0)
              {
                v214 >>= 1;
              }

              else
              {
                v214 += ~(v214 >> 1);
              }

              if (v216 < 0)
              {
                v213 = v215 + 3;
              }
            }

            while (v214);
            if (v213 != &WGSL::Lexer<char16_t>::nextToken(void)::reservedWords)
            {
              if (WTF::operator==(v211, v212, *v213, v213[1]))
              {
                v217 = *(v213 + 4);
                if (v217)
                {
                  goto LABEL_497;
                }
              }
            }

            if (v274)
            {
              v221 = 0;
              v222 = 0x100000000;
            }

            else
            {
              v221 = *(v277 + 1);
              v222 = *(v277 + 1) | (((*(v277 + 4) >> 2) & 1) << 32);
            }

            v223 = &WGSL::Lexer<char16_t>::nextToken(void)::reservedWords;
            v224 = 145;
            do
            {
              v225 = &v223[2 * (v224 >> 1)];
              result = WTF::codePointCompare();
              if ((result & 0x80u) == 0)
              {
                v224 >>= 1;
              }

              else
              {
                v224 += ~(v224 >> 1);
              }

              if ((result & 0x80u) != 0)
              {
                v223 = v225 + 2;
              }
            }

            while (v224);
            if (v223 != &WGSL::MangledName::toString(void)const::prefixes)
            {
              result = WTF::operator==(v221, v222, *v223, v223[1]);
              if (result)
              {
                v217 = 9;
                goto LABEL_497;
              }
            }

            v5 = v273;
            v7 = v275;
            v6 = v276;
            if (v272 < 2)
            {
              goto LABEL_517;
            }

            if (!v8)
            {
              goto LABEL_598;
            }

            if (*v16 != 95)
            {
LABEL_517:
              v226 = *(v3 + 36);
              v227 = *(v3 + 44);
              v228 = *(v3 + 32) - v227;
              v278 = 8;
              v279 = v226;
              v280 = v227;
              v281 = v228;
              v282 = v277;
              goto LABEL_353;
            }

            if (v8 != 1)
            {
              if (*(v16 + 2) != 95)
              {
                goto LABEL_517;
              }

              v217 = 0;
LABEL_497:
              v218 = *(v3 + 36);
              v219 = *(v3 + 44);
              v220 = *(v3 + 32) - v219;
              v278 = v217;
              v279 = v218;
              v280 = v219;
              v281 = v220;
              v5 = v273;
              v7 = v275;
              v6 = v276;
              result = v277;
              if ((v274 & 1) == 0 && atomic_fetch_add_explicit(v277, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(v277, a2);
              }

              goto LABEL_353;
            }

LABEL_598:
            __break(1u);
            goto LABEL_599;
          }

          v184 = 0;
          v276 = v6;
          if (!v111)
          {
            goto LABEL_482;
          }

          while (1)
          {
LABEL_439:
            v185 = v5;
            if (v184 == 95)
            {
              v186 = 1;
              goto LABEL_451;
            }

            v187 = v108;
            if (v111 < 2)
            {
              v186 = 1;
              HasBinaryProperty = u_stringHasBinaryProperty(v182, 1, UCHAR_XID_START);
              v108 = v187;
              if (HasBinaryProperty)
              {
                goto LABEL_451;
              }
            }

            else
            {
              if (u_charType(v184) == 18)
              {
                v186 = 2;
              }

              else
              {
                v186 = 1;
              }

              v188 = u_stringHasBinaryProperty(v182, v186, UCHAR_XID_START);
              v108 = v187;
              if (v188)
              {
                goto LABEL_451;
              }

              if (u_charType(v184) == 18)
              {
                v186 = 2;
              }

              else
              {
                v186 = 1;
              }
            }

            v190 = u_stringHasBinaryProperty(v182, v186, UCHAR_XID_CONTINUE);
            v108 = v187;
            if (!v190)
            {
              v183 = *(v3 + 32);
              v5 = v185;
              goto LABEL_482;
            }

LABEL_451:
            *v3 = 0;
            v191 = *(v3 + 16);
            _CF = v191 >= v186;
            v111 = v191 - v186;
            if (!_CF)
            {
              goto LABEL_598;
            }

            v182 = (*(v3 + 8) + 2 * v186);
            *(v3 + 8) = v182;
            *(v3 + 16) = v111;
            v183 = *(v3 + 32) + v186;
            *(v3 + 28) += v186;
            *(v3 + 32) = v183;
            if (!v111)
            {
              v5 = v185;
              v108 += v186;
              goto LABEL_482;
            }

            v184 = *v182;
            *v3 = v184;
            v5 = v185;
            v108 += v186;
          }
        }

        if (v8 >= 2)
        {
          if (u_charType(v9) == 18)
          {
            v148 = 2;
          }

          else
          {
            v148 = 1;
          }

          v149 = v148;
          result = u_stringHasBinaryProperty(v16, v148, UCHAR_XID_START);
          if (!result)
          {
            goto LABEL_552;
          }

LABEL_436:
          v16 = *(v3 + 8);
          v8 = *(v3 + 16);
          v108 = v149;
          *v3 = 0;
          v109 = v149;
          v111 = v8 - v149;
          _ZF = v8 == v149;
          if (v8 < v149)
          {
            goto LABEL_598;
          }

          goto LABEL_437;
        }

        v149 = 1;
        result = u_stringHasBinaryProperty(v16, 1, UCHAR_XID_START);
        if (result)
        {
          goto LABEL_436;
        }

LABEL_552:
        v245 = *(v3 + 36);
        v246 = *(v3 + 44);
        v247 = *(v3 + 32) - v246;
        v278 = 0;
        v279 = v245;
        v280 = v246;
        v281 = v247;
        goto LABEL_353;
      }

      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v122 = 0;
      v123 = 0;
      v124 = 0;
      v125 = 0;
      v126 = v16;
      v127 = v16;
      result = v16;
      a2 = v8;
      break;
  }

  while (2)
  {
    switch(v125)
    {
      case 1:
        if (v9 - 69 > 0x33)
        {
          goto LABEL_275;
        }

        if (((1 << (v9 - 69)) & 0x1001A00000000) != 0)
        {
          goto LABEL_262;
        }

        if (((1 << (v9 - 69)) & 0x100000001) != 0)
        {
          goto LABEL_245;
        }

        if (((1 << (v9 - 69)) & 0x8000000080000) != 0)
        {
          v130 = 0;
          v125 = 9;
        }

        else
        {
LABEL_275:
          if (v9 == 46)
          {
LABEL_276:
            v130 = 0;
            v125 = 5;
          }

          else
          {
            if ((v9 - 48) >= 0xAu)
            {
              goto LABEL_281;
            }

LABEL_279:
            v130 = 0;
            v125 = 3;
          }
        }

        goto LABEL_263;
      case 2:
        if (v9 - 69 > 0x30)
        {
          goto LABEL_198;
        }

        if (((1 << (v9 - 69)) & 0x1001A00000000) != 0)
        {
          goto LABEL_262;
        }

        if (((1 << (v9 - 69)) & 0x100000001) != 0)
        {
LABEL_245:
          v130 = 0;
          v125 = 6;
        }

        else
        {
LABEL_198:
          if (v9 == 46)
          {
            goto LABEL_276;
          }

          if ((v9 - 48) >= 0xAu)
          {
            goto LABEL_281;
          }

          v130 = 0;
          v125 = 2;
        }

        goto LABEL_263;
      case 3:
        if (v9 == 46)
        {
          goto LABEL_276;
        }

        if (v9 == 101 || v9 == 69)
        {
          goto LABEL_245;
        }

        if ((v9 - 48) >= 0xAu)
        {
          goto LABEL_456;
        }

        goto LABEL_279;
      case 4:
        if ((v9 - 48) >= 0xAu)
        {
          v48 = *(v3 + 36);
          v49 = *(v3 + 44);
          v50 = *(v3 + 32) - v49;
          v51 = HIDWORD(v48);
          v52 = 69;
LABEL_351:
          v278 = v52;
          goto LABEL_352;
        }

        v130 = 0;
        v125 = 5;
        v122 = v127;
        goto LABEL_263;
      case 5:
        if (!v122)
        {
          v122 = v127;
        }

        if (v9 > 0x65u)
        {
          if (v9 == 104 || v9 == 102)
          {
            goto LABEL_262;
          }
        }

        else
        {
          v130 = 0;
          v125 = 6;
          if (v9 == 69 || v9 == 101)
          {
            goto LABEL_263;
          }
        }

        if ((v9 - 48) >= 0xAu)
        {
          goto LABEL_281;
        }

        goto LABEL_276;
      case 6:
        if (v9 == 45 || v9 == 43)
        {
          v130 = 0;
          v124 = v9;
          v125 = 7;
          v121 = v127;
        }

        else
        {
          if ((v9 - 48) >= 0xAu)
          {
            goto LABEL_456;
          }

          v130 = 0;
          v125 = 8;
          v121 = v127;
        }

        goto LABEL_263;
      case 7:
        if (v124 == 43)
        {
          v121 = v127;
        }

        if ((v9 - 48) >= 0xAu)
        {
          goto LABEL_456;
        }

        goto LABEL_244;
      case 8:
        if (v9 == 104 || v9 == 102)
        {
          goto LABEL_262;
        }

        if ((v9 - 48) >= 0xAu)
        {
          goto LABEL_281;
        }

LABEL_244:
        v130 = 0;
        v125 = 8;
        goto LABEL_263;
      case 9:
        if (v9 == 46)
        {
          v130 = 0;
          v125 = 11;
          v123 = 1;
LABEL_252:
          result = v126;
          a2 = (v8 + v118);
          goto LABEL_263;
        }

        v130 = 0;
        v125 = 10;
        v123 = 1;
        if ((v9 - 48) < 0xAu)
        {
          goto LABEL_252;
        }

        result = v126;
        a2 = (v8 + v118);
        if (((v9 | 0x20) - 97) >= 6u)
        {
          goto LABEL_456;
        }

        goto LABEL_263;
      case 10:
        v130 = 0;
        v125 = 16;
        if (v9 <= 0x68u)
        {
          if (v9 == 46)
          {
            v130 = 0;
            v125 = 12;
            goto LABEL_263;
          }

          if (v9 == 80)
          {
            goto LABEL_263;
          }

          goto LABEL_270;
        }

        if (v9 == 117)
        {
          goto LABEL_262;
        }

        if (v9 != 112)
        {
          if (v9 == 105)
          {
            goto LABEL_262;
          }

LABEL_270:
          v130 = 0;
          v125 = 10;
          if ((v9 - 48) >= 0xAu && ((v9 | 0x20) - 97) >= 6u)
          {
LABEL_281:
            if (v122 | v121)
            {
              if (v123)
              {
                v131 = (v127 - v16) >> 1;
                v132 = v120 != 0;
                v133 = (v131 - v132);
                *v283 = v7;
                v134 = v131 - v132 + 1;
                *&v283[8] = 256;
                v284 = v131 - v132 + 1;
                if (v134 >= 0x101)
                {
                  if (HIDWORD(v134))
                  {
LABEL_599:
                    __break(0xC471u);
                    JUMPOUT(0x22574209CLL);
                  }

                  v135 = WTF::fastMalloc(v134);
                  *&v283[8] = v134;
                  *v283 = v135;
                }

                if (v133)
                {
                  v136 = 0;
                  while (v8 != v136)
                  {
                    if (v136 >= v284)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x2257420A4);
                    }

                    *(*v283 + v136) = *(v16 + 2 * v136);
                    if (v133 == ++v136)
                    {
                      goto LABEL_291;
                    }
                  }
                }

                else
                {
LABEL_291:
                  if (v133 >= v284)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x2257420ACLL);
                  }

                  v133[*v283] = 0;
                  if (v284)
                  {
                    v137 = *v283;
                    if (*(*v283 + v284 - 1))
                    {
                      __break(0xC471u);
                      JUMPOUT(0x2257420CCLL);
                    }

                    v287 = 0;
                    v138 = strtod(*v283, &v287);
                    if (*__error() == 34 || &v287[-v137] != v133)
                    {
                      v206 = *(v3 + 36);
                      v207 = *(v3 + 44);
                      v208 = *(v3 + 32) - v207;
                      v278 = 0;
                      v279 = v206;
                      v280 = v207;
                      v281 = v208;
                    }

                    else
                    {
                      WGSL::Lexer<unsigned char>::lexNumber(void)::{lambda(unsigned char)#1}::operator()<double>(&v278, v119, v3, v138);
                    }

                    result = *v283;
                    if (v7 != *v283 && *v283)
                    {
                      memset(v283, 0, sizeof(v283));
                      result = WTF::fastFree(result, a2);
                    }

                    goto LABEL_353;
                  }
                }

                goto LABEL_598;
              }

              *v283 = 0;
              result = WTF::parseDouble();
              if (v119 > 0x68u)
              {
                if (v119 == 105 || v119 == 117)
                {
                  goto LABEL_552;
                }

                goto LABEL_473;
              }

              if (v119 != 102)
              {
                if (v119 == 104)
                {
                  WGSL::convertFloat<half,double>(double)::max = 31743;
                  WGSL::convertFloat<half,double>(double)::lowest = -1025;
                  __asm { FCVT            H0, D0 }

                  v194 = LODWORD(_D0) | 0x10000;
                  if (_VF)
                  {
                    v194 = 0;
                  }

                  if (v194 < 0x10000)
                  {
                    goto LABEL_552;
                  }

                  _H0 = v194;
                  __asm { FCVT            D0, H0 }

                  v196 = *(v3 + 36);
                  v197 = *(v3 + 44);
                  v198 = *(v3 + 32) - v197;
                  v199 = HIDWORD(v196);
                  v200 = 7;
                  goto LABEL_589;
                }

LABEL_473:
                WGSL::convertFloat<double,double>(double)::max = 0x7FEFFFFFFFFFFFFFLL;
                WGSL::convertFloat<double,double>(double)::lowest = 0xFFEFFFFFFFFFFFFFLL;
                if (fabs(_D0) > 1.79769313e308)
                {
                  goto LABEL_552;
                }

                v196 = *(v3 + 36);
                v197 = *(v3 + 44);
                v198 = *(v3 + 32) - v197;
                v199 = HIDWORD(v196);
                v200 = 2;
LABEL_589:
                v278 = v200;
                v279 = __PAIR64__(v199, v196);
                v280 = v197;
                v281 = v198;
                v282 = *&_D0;
                goto LABEL_353;
              }

              WGSL::convertFloat<float,double>(double)::max = 2139095039;
              WGSL::convertFloat<float,double>(double)::lowest = -8388609;
              _VF = fabs(_D0) > 3.40282347e38;
              *&v243 = _D0;
              v244 = v243 | 0x100000000;
              if (_VF)
              {
                v244 = 0;
              }

              if (!HIDWORD(v244))
              {
                goto LABEL_552;
              }

              v268 = *&v244;
LABEL_588:
              _D0 = v268;
              v196 = *(v3 + 36);
              v197 = *(v3 + 44);
              v198 = *(v3 + 32) - v197;
              v199 = HIDWORD(v196);
              v200 = 6;
              goto LABEL_589;
            }

            if (v123)
            {
              v152 = 16;
            }

            else
            {
              v152 = 10;
            }

            if (!result)
            {
              goto LABEL_552;
            }

            v153 = 0;
            if (a2)
            {
              while (1)
              {
                v154 = *(result + 2 * v153);
                if ((v154 - 9) >= 5 && v154 != 32)
                {
                  break;
                }

                v153 = (v153 + 1);
                if (a2 == v153)
                {
                  v153 = a2;
                  goto LABEL_466;
                }
              }

              if (a2 >= v153)
              {
                goto LABEL_466;
              }

              goto LABEL_598;
            }

LABEL_466:
            v201 = (a2 - v153);
            if (a2 == v153)
            {
              goto LABEL_552;
            }

            v202 = (result + 2 * v153);
            v203 = *v202;
            if (v203 == 45 || v203 == 43)
            {
              if (!--v201)
              {
                goto LABEL_552;
              }

              v205 = v202[1];
              ++v202;
              v204 = v205;
            }

            else
            {
              v204 = *v202;
            }

            if ((v204 - 48) > 9)
            {
              v229 = v152 + 87;
              _CF = (v204 | 0x20u) < 0x61 || (v204 | 0x20u) >= v229;
              if (_CF)
              {
                goto LABEL_552;
              }
            }

            else
            {
              if (v204 - 48 >= v152)
              {
                goto LABEL_552;
              }

              v229 = v152 + 87;
            }

            if (v203 == 45)
            {
              v231 = 0;
              v232 = 0;
              v233 = v201 - 1;
              for (i = v202 + 1; ; ++i)
              {
                v235 = (v204 - 48);
                v236 = v204 - 48;
                v237 = (v204 | 0x20u) - 87;
                if (v235 < 0xA)
                {
                  v237 = v236;
                }

                v238 = (v231 * v152) >> 64;
                _ZF = v238 == (v231 * v152) >> 63;
                v239 = v238 != (v231 * v152) >> 63;
                if (_ZF)
                {
                  v231 *= v152;
                }

                _VF = __OFSUB__(v231, v237);
                v241 = (v231 - v237);
                v242 = _VF;
                if (!_VF)
                {
                  v231 = v241;
                }

                if ((v242 | v239))
                {
                  v232 = 1;
                }

                if (!v233)
                {
                  break;
                }

                v204 = *i;
                if ((v204 - 48) < 0xA)
                {
                  if (v204 - 48 >= v152)
                  {
                    break;
                  }
                }

                else if ((v204 | 0x20u) < 0x61 || (v204 | 0x20u) >= v229)
                {
                  break;
                }

                --v233;
              }
            }

            else
            {
              v231 = 0;
              v232 = 0;
              while (1)
              {
                --v201;
                ++v202;
                v248 = (v204 - 48);
                v249 = v204 - 48;
                v250 = (v204 | 0x20u) - 87;
                if (v248 < 0xA)
                {
                  v250 = v249;
                }

                v251 = (v231 * v152) >> 64;
                _ZF = v251 == (v231 * v152) >> 63;
                v252 = v251 != (v231 * v152) >> 63;
                if (_ZF)
                {
                  v231 *= v152;
                }

                v253 = __OFADD__(v231, v250);
                v254 = (v231 + v250);
                v255 = v253;
                if (!v253)
                {
                  v231 = v254;
                }

                if ((v255 | v252))
                {
                  v232 = 1;
                }

                if (!v201)
                {
                  break;
                }

                v204 = *v202;
                if ((v204 - 48) <= 9)
                {
                  if (v204 - 48 >= v152)
                  {
                    break;
                  }
                }

                else if ((v204 | 0x20u) < 0x61 || (v204 | 0x20u) >= v229)
                {
                  break;
                }
              }
            }

            if (v232)
            {
              goto LABEL_552;
            }

            if (v119 <= 0x68u)
            {
              if (v119 == 102)
              {
                v268 = v231;
                goto LABEL_588;
              }

              if (v119 == 104)
              {
                v256 = v231 + 65504;
                _S0 = v231;
                __asm { FCVT            H0, S0 }

                v258 = LODWORD(_S0) | 0x10000;
                if (v256 >= 0x1FFC1)
                {
                  v258 = 0;
                }

                v10 = *(v3 + 32);
                if (v258 >= 0x10000)
                {
                  _H0 = v258;
                  __asm { FCVT            D0, H0 }

                  v261 = *(v3 + 36);
                  v262 = *(v3 + 44);
                  v278 = 7;
                  v279 = v261;
                  v280 = v262;
                  v281 = v10 - v262;
                  v282 = _D0;
                  goto LABEL_353;
                }

                goto LABEL_60;
              }

LABEL_586:
              v269 = *(v3 + 36);
              v270 = *(v3 + 44);
              v271 = *(v3 + 32) - v270;
              v278 = 3;
              v279 = v269;
              v280 = v270;
              v281 = v271;
              v282 = v231;
              goto LABEL_353;
            }

            if (v119 == 117)
            {
              v10 = *(v3 + 32);
              if (HIDWORD(v231))
              {
                goto LABEL_60;
              }

              v263 = *(v3 + 36);
              v264 = *(v3 + 44);
              v265 = v10 - v264;
              v266 = HIDWORD(v263);
              v267 = 5;
            }

            else
            {
              if (v119 != 105)
              {
                goto LABEL_586;
              }

              v10 = *(v3 + 32);
              if (v231 != v231)
              {
                goto LABEL_60;
              }

              v263 = *(v3 + 36);
              v264 = *(v3 + 44);
              v265 = v10 - v264;
              v266 = HIDWORD(v263);
              v267 = 4;
            }

            v278 = v267;
            v279 = __PAIR64__(v266, v263);
            v280 = v264;
            v281 = v265;
            v282 = v231;
            goto LABEL_353;
          }

          goto LABEL_263;
        }

        goto LABEL_263;
      case 11:
        v130 = 0;
        v125 = 12;
        if ((v9 - 48) < 0xAu)
        {
          v122 = v127;
        }

        else
        {
          v122 = v127;
          if (((v9 | 0x20) - 97) >= 6u)
          {
            goto LABEL_456;
          }
        }

        goto LABEL_263;
      case 12:
        v130 = 0;
        if (!v122)
        {
          v122 = v127;
        }

        v125 = 12;
        if ((v9 - 48) < 0xAu || ((v9 | 0x20) - 97) < 6u)
        {
          goto LABEL_263;
        }

        if ((v9 | 0x20) != 0x70)
        {
          goto LABEL_281;
        }

        v130 = 0;
        v125 = 13;
        goto LABEL_263;
      case 13:
        if ((v9 - 48) >= 0xAu)
        {
          if (v9 != 45 && v9 != 43)
          {
            goto LABEL_456;
          }

          v130 = 0;
          v124 = v9;
          v125 = 14;
          v121 = v127;
        }

        else
        {
          v130 = 0;
          v125 = 15;
          v121 = v127;
        }

        goto LABEL_263;
      case 14:
        if (v124 == 43)
        {
          v121 = v127;
        }

        if ((v9 - 48) >= 0xAu)
        {
          goto LABEL_456;
        }

        goto LABEL_235;
      case 15:
        if ((v9 - 48) < 0xAu)
        {
          goto LABEL_235;
        }

        if (v9 != 104 && v9 != 102)
        {
          goto LABEL_281;
        }

        goto LABEL_262;
      case 16:
        if ((v9 - 48) >= 0xAu)
        {
          if (v9 != 45 && v9 != 43)
          {
            goto LABEL_456;
          }

          v130 = 0;
          v124 = v9;
          v125 = 17;
          v121 = v127;
        }

        else
        {
          v130 = 0;
          v125 = 18;
          v121 = v127;
        }

        goto LABEL_263;
      case 17:
        if (v124 == 43)
        {
          v121 = v127;
        }

        if ((v9 - 48) >= 0xAu)
        {
          goto LABEL_456;
        }

        v130 = 0;
        v125 = 18;
        goto LABEL_263;
      case 18:
        if ((v9 - 48) < 0xAu)
        {
LABEL_235:
          v130 = 0;
          v125 = 15;
LABEL_263:
          *v3 = 0;
          if (!(v8 + v118))
          {
            goto LABEL_598;
          }

          ++v127;
          v126 += 2;
          *(v3 + 8) = v126;
          *(v3 + 16) = v8 + v118 - 1;
          *(v3 + 28) = vadd_s32(*(v3 + 28), 0x100000001);
          if (v8 + v118 == 1)
          {
            v9 = 0;
            --v118;
            if (v130)
            {
              goto LABEL_281;
            }
          }

          else
          {
            v9 = *v127;
            *v3 = *v127;
            --v118;
            if (v130)
            {
              goto LABEL_281;
            }
          }

          continue;
        }

        if (v9 == 104 || v9 == 102)
        {
LABEL_262:
          v125 = 19;
          v130 = 1;
          v119 = v9;
          v120 = v9;
          goto LABEL_263;
        }

LABEL_456:
        v48 = *(v3 + 36);
        v49 = *(v3 + 44);
        v50 = *(v3 + 32) - v49;
        v51 = HIDWORD(v48);
        v278 = 0;
LABEL_352:
        v279 = __PAIR64__(v51, v48);
        v280 = v49;
        v281 = v50;
LABEL_353:
        v155 = a3[3];
        if (v155 == a3[2])
        {
          result = WTF::Vector<WGSL::Token,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a3, v155 + 1, &v278);
          v155 = a3[3];
          v156 = *a3;
          v157 = *a3 + 32 * v155;
          *v157 = *result;
          *(v157 + 4) = *(result + 4);
          v158 = *result;
          if (*result > 8u)
          {
            goto LABEL_366;
          }

          if (((1 << v158) & 0x38) == 0)
          {
            if (((1 << v158) & 0xC4) != 0)
            {
              v159 = *(result + 24);
              goto LABEL_362;
            }

            if (v158 != 8 || (*(v157 + 24) = 0, (v170 = *(result + 24)) == 0))
            {
LABEL_366:
              v160 = v278;
              goto LABEL_367;
            }

LABEL_385:
            atomic_fetch_add_explicit(v170, 2u, memory_order_relaxed);
            result = *(v157 + 24);
            *(v157 + 24) = v170;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }

            goto LABEL_366;
          }

          v161 = *(result + 24);
LABEL_365:
          *(v157 + 24) = v161;
          goto LABEL_366;
        }

        v156 = *a3;
        v157 = *a3 + 32 * v155;
        *v157 = v278;
        *(v157 + 4) = *v5;
        v160 = v278;
        if (v278 <= 8)
        {
          if (((1 << v278) & 0x38) != 0)
          {
            v161 = v282;
            goto LABEL_365;
          }

          if (((1 << v278) & 0xC4) != 0)
          {
            v159 = v282;
LABEL_362:
            *(v157 + 24) = v159;
            goto LABEL_366;
          }

          if (v278 == 8)
          {
            *(v157 + 24) = 0;
            v170 = v282;
            if (!v282)
            {
              goto LABEL_366;
            }

            goto LABEL_385;
          }
        }

LABEL_367:
        v162 = (v155 + 1);
        a3[3] = v162;
        if (v160 - 52 < 2 || v160 == 60)
        {
          goto LABEL_396;
        }

        if (v160 == 54)
        {
          v163 = *(v3 + 36);
          v164 = *(v3 + 44);
          v165 = *(v3 + 32) - v164;
          *v283 = 82;
          *&v283[4] = v163;
          v284 = v164;
          v285 = v165;
          if (v162 == a3[2])
          {
            result = WTF::Vector<WGSL::Token,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a3, v162 + 1, v283);
            v166 = *a3 + 32 * a3[3];
            *v166 = *result;
            *(v166 + 4) = *(result + 4);
            v167 = *result;
            if (*result > 8u)
            {
              goto LABEL_391;
            }

            if (((1 << v167) & 0x38) == 0)
            {
              if (((1 << v167) & 0xC4) != 0)
              {
                v168 = *(result + 24);
                goto LABEL_379;
              }

              if (v167 != 8 || (*(v166 + 24) = 0, (v181 = *(result + 24)) == 0))
              {
LABEL_391:
                v169 = *v283;
                goto LABEL_392;
              }

LABEL_432:
              atomic_fetch_add_explicit(v181, 2u, memory_order_relaxed);
              result = *(v166 + 24);
              *(v166 + 24) = v181;
              if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, a2);
              }

              goto LABEL_391;
            }

            v171 = *(result + 24);
LABEL_390:
            *(v166 + 24) = v171;
            goto LABEL_391;
          }

          v166 = v156 + 32 * v162;
          *v166 = 82;
          *(v166 + 4) = *v6;
          v169 = *v283;
          if (*v283 > 8u)
          {
            goto LABEL_392;
          }

          if (((1 << v283[0]) & 0x38) != 0)
          {
            v171 = v286;
            goto LABEL_390;
          }

          if (((1 << v283[0]) & 0xC4) != 0)
          {
            v168 = v286;
LABEL_379:
            *(v166 + 24) = v168;
            goto LABEL_391;
          }

          if (*v283 == 8)
          {
            *(v166 + 24) = 0;
            v181 = v286;
            if (!v286)
            {
              goto LABEL_391;
            }

            goto LABEL_432;
          }

LABEL_392:
          LODWORD(v162) = a3[3] + 1;
          a3[3] = v162;
          if (v169 == 8)
          {
            result = v286;
            v286 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, a2);
              }
            }
          }

LABEL_396:
          v172 = *(v3 + 36);
          v173 = *(v3 + 44);
          v174 = *(v3 + 32) - v173;
          *v283 = 82;
          *&v283[4] = v172;
          v284 = v173;
          v285 = v174;
          if (v162 == a3[2])
          {
            result = WTF::Vector<WGSL::Token,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a3, v162 + 1, v283);
            v162 = a3[3];
            v175 = *a3 + 32 * v162;
            *v175 = *result;
            *(v175 + 4) = *(result + 4);
            v176 = *result;
            if (*result > 8u)
            {
              goto LABEL_409;
            }

            if (((1 << v176) & 0x38) == 0)
            {
              if (((1 << v176) & 0xC4) != 0)
              {
                v177 = *(result + 24);
                goto LABEL_405;
              }

              if (v176 != 8 || (*(v175 + 24) = 0, (v180 = *(result + 24)) == 0))
              {
LABEL_409:
                v178 = *v283;
                goto LABEL_410;
              }

LABEL_424:
              atomic_fetch_add_explicit(v180, 2u, memory_order_relaxed);
              result = *(v175 + 24);
              *(v175 + 24) = v180;
              if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, a2);
              }

              goto LABEL_409;
            }

            v179 = *(result + 24);
LABEL_408:
            *(v175 + 24) = v179;
            goto LABEL_409;
          }

          v175 = *a3 + 32 * v162;
          *v175 = 82;
          *(v175 + 4) = *v6;
          v178 = *v283;
          if (*v283 <= 8u)
          {
            if (((1 << v283[0]) & 0x38) != 0)
            {
              v179 = v286;
              goto LABEL_408;
            }

            if (((1 << v283[0]) & 0xC4) != 0)
            {
              v177 = v286;
LABEL_405:
              *(v175 + 24) = v177;
              goto LABEL_409;
            }

            if (*v283 == 8)
            {
              *(v175 + 24) = 0;
              v180 = v286;
              if (!v286)
              {
                goto LABEL_409;
              }

              goto LABEL_424;
            }
          }

LABEL_410:
          a3[3] = v162 + 1;
          if (v178 == 8)
          {
            result = v286;
            v286 = 0;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, a2);
              }
            }
          }

          v160 = v278;
        }

        if (v160 == 8)
        {
          result = v282;
          v282 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, a2);
            }
          }
        }

        if (v160 > 1)
        {
          goto LABEL_3;
        }

        return result;
      default:
        v128 = v9;
        if (v9 == 46)
        {
          v129 = 4;
        }

        else
        {
          v129 = 2;
        }

        _ZF = v128 == 48;
        v130 = 0;
        if (_ZF)
        {
          v125 = 1;
        }

        else
        {
          v125 = v129;
        }

        goto LABEL_263;
    }
  }
}

unint64_t WTF::Vector<WGSL::Token,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 32 * a1[3] <= a3)
  {
    WTF::Vector<WGSL::Token,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    WTF::Vector<WGSL::Token,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return *a1 + v5;
  }
}

unsigned int *WTF::Vector<WGSL::Token,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
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

  if (v3 >> 27)
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
    result = WTF::fastMalloc((32 * v6));
    v4[2] = v6;
    *v4 = result;
    if (v7)
    {
      v9 = (result + 6);
      v10 = 32 * v7;
      v11 = (v5 + 24);
      while (1)
      {
        *(v9 - 6) = *(v11 - 6);
        *(v9 - 20) = *(v11 - 20);
        v12 = *(v11 - 6);
        if (v12 > 8)
        {
          goto LABEL_19;
        }

        if (((1 << v12) & 0x38) != 0)
        {
          break;
        }

        if (((1 << v12) & 0xC4) != 0)
        {
          *v9 = *v11;
LABEL_18:
          v12 = *(v11 - 6);
          goto LABEL_19;
        }

        if (v12 == 8)
        {
          *v9 = 0;
          v13 = *v11;
          if (*v11)
          {
            atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
            result = *v9;
            *v9 = v13;
            if (result)
            {
              if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v8);
              }
            }
          }

          goto LABEL_18;
        }

LABEL_19:
        if (v12 == 8)
        {
          result = *v11;
          *v11 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v8);
            }
          }
        }

        v9 += 4;
        v11 += 4;
        v10 -= 32;
        if (!v10)
        {
          goto LABEL_28;
        }
      }

      *v9 = *v11;
      goto LABEL_18;
    }

LABEL_28:
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

uint64_t WTF::operator==(uint64_t result, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4 - 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = a2 == v4 && result == a3;
  if (result == a3 || a2 != v4)
  {
    return v5;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = v4;
  if ((a2 & 0x100000000) != 0)
  {
    if (!v4)
    {
      goto LABEL_71;
    }

    if (*result != *a3)
    {
      return 0;
    }

    v14 = v4 - 1;
    if (v4 == 1)
    {
      return 1;
    }

    v15 = (result + 1);
    v16 = (a3 + 1);
    if (v14 == 1)
    {
      if (v14)
      {
        return v15->u8[0] == v16->u8[0];
      }

      goto LABEL_71;
    }

    v22 = __clz(v14 - 1);
    if (v22 <= 28)
    {
      if (v22 == 27)
      {
        v26 = vandq_s8(vceqq_s8(*(result + v6 - 16), *&a3[v6 - 16]), vceqq_s8(*(result + 1), *(a3 + 1)));
        v26.i8[0] = vminvq_u8(v26);
        return v26.i32[0] != 0;
      }

      if (v22 == 28)
      {
        if (v15->i64[0] == v16->i64[0])
        {
          return *(result + v6 - 8) == *&a3[v6 - 8];
        }

        return 0;
      }
    }

    else
    {
      switch(v22)
      {
        case 29:
          if (v15->i32[0] == v16->i32[0])
          {
            return *(result + v6 - 4) == *&a3[v6 - 4];
          }

          return 0;
        case 30:
          if (v15->u16[0] == v16->u16[0])
          {
            return *(result + v6 - 2) == *&a3[v6 - 2];
          }

          return 0;
        case 31:
          return v15->u16[0] == v16->u16[0];
      }
    }

    v27 = vceqq_s8(*v15, *v16);
    v27.i8[0] = vminvq_u8(v27);
    if (!v27.i32[0])
    {
      return 0;
    }

    if (v6 < 0x11)
    {
      return 1;
    }

    v28 = v14 & 0xF;
    do
    {
      v29 = vceqq_s8(*(v15 + v28), *(v16 + v28));
      v29.i8[0] = vminvq_u8(v29);
      v5 = v29.i32[0] != 0;
      v28 += 16;
      if (v29.i32[0])
      {
        v30 = v28 >= v14;
      }

      else
      {
        v30 = 1;
      }
    }

    while (!v30);
    return v5;
  }

  if (!v4)
  {
LABEL_71:
    __break(1u);
    return result;
  }

  if (*result != *a3)
  {
    return 0;
  }

  v7 = (result + 2);
  v8 = v6 - 1;
  v9 = (a3 + 1);
  if (v6 - 1 >= 8)
  {
    v10 = vceqq_s16(*v7, vmovl_u8(*v9));
    v10.i16[0] = vminvq_u16(v10);
    v5 = v10.u32[0];
    if (v10.i32[0])
    {
      v11 = v8 & 7;
      do
      {
        v12 = vceqq_s16(*(v7 + 2 * v11), vmovl_u8(*(v9 + v11)));
        v12.i16[0] = vminvq_u16(v12);
        v5 = v12.i32[0] != 0;
        v11 += 8;
        if (v12.i32[0])
        {
          v13 = v11 >= v8;
        }

        else
        {
          v13 = 1;
        }
      }

      while (!v13);
    }

    return v5;
  }

  if (v8 >= 4)
  {
    v17 = (v9->u32[0] | (v9->u32[0] << 16)) & 0xFFFF0000FFFFLL;
    v18 = (*(v9->u32 + (v8 & 3)) | (*(v9->u32 + (v8 & 3)) << 16)) & 0xFFFF0000FFFFLL;
    v19 = (v18 | (v18 << 8)) & 0xFF00FF00FF00FFLL;
    return ((v17 | (v17 << 8)) & 0xFF00FF00FF00FFLL) == v7->i64[0] && v19 == *(v7->i64 + 2 * (v8 & 3));
  }

  if (v8 < 2)
  {
    if (v6 == 2)
    {
      return v7->u16[0] == v9->u8[0];
    }

    return 1;
  }

  v20 = ((v9->u16[0] | (v9->u16[0] << 8)) & 0xFF00FF) == v7->i32[0];
  v23 = (*(v9->u16 + (v8 & 1)) | (*(v9->u16 + (v8 & 1)) << 8)) & 0xFF00FF;
  return v20 && v23 == *(v7->i32 + 2 * (v8 & 1));
}

void WGSL::NameManglerVisitor::visit(WGSL::NameManglerVisitor *this, WGSL::AST::Function *a2)
{
  v2 = *(a2 + 6);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    WGSL::NameManglerVisitor::introduceVariable(this, a2 + 24, 4);
    WGSL::AST::ScopedVisitor<WGSL::MangledName>::visit();
  }

  WGSL::NameManglerVisitor::introduceVariable(this, a2 + 24, 4);

  WGSL::AST::ScopedVisitor<WGSL::MangledName>::visit();
}

WTF::StringImpl *WGSL::NameManglerVisitor::introduceVariable(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = a1 + 4 * a3;
  v4 = *(v3 + 96);
  *(v3 + 96) = v4 + 1;
  v5 = *(a2 + 24);
  if (!v5 || (atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed), v7 = *(a2 + 24), v7 == -1) || !v7)
  {
    __break(0xC471u);
    JUMPOUT(0x225742BB4);
  }

  v8 = a3;
  v9 = *(a1 + 40);
  v10 = *(v9 + 8);
  if (!v10)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::MangledName>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::MangledName>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash((v9 + 8), 8u, 0);
    v10 = *(v9 + 8);
    if (!v10)
    {
      v11 = 0;
      v12 = *(a2 + 24);
      v13 = *(v12 + 4);
      if (v13 >= 0x100)
      {
        goto LABEL_7;
      }

LABEL_9:
      v14 = WTF::StringImpl::hashSlowCase(v12);
      goto LABEL_10;
    }
  }

  v11 = *(v10 - 8);
  v12 = *(a2 + 24);
  v13 = *(v12 + 4);
  if (v13 < 0x100)
  {
    goto LABEL_9;
  }

LABEL_7:
  v14 = v13 >> 8;
LABEL_10:
  v15 = 0;
  v16 = 1;
  v37 = (v8 | (v4 << 32));
  while (1)
  {
    v17 = v14 & v11;
    v18 = (v10 + 24 * (v14 & v11));
    v19 = *v18;
    if (*v18 == -1)
    {
      v15 = (v10 + 24 * v17);
      goto LABEL_12;
    }

    if (!v19)
    {
      break;
    }

    if (WTF::equal(v19, *(a2 + 24), a3))
    {
      v20 = 0;
      v21 = a1;
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

LABEL_12:
    v14 = v16 + v17;
    ++v16;
  }

  if (v15)
  {
    v19 = 0;
    *v15 = 0;
    v15[1] = 0;
    v15[2] = 0;
    --*(*(v9 + 8) - 16);
    v18 = v15;
  }

  v22 = *(a2 + 24);
  if (v22)
  {
    atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
    v19 = *v18;
  }

  *v18 = v22;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, a2);
  }

  atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  v23 = v18[2];
  v18[1] = v37;
  v18[2] = v5;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, a2);
  }

  v24 = *(v9 + 8);
  if (v24)
  {
    v25 = *(v24 - 16);
    v26 = *(v24 - 12) + 1;
    *(v24 - 12) = v26;
    v27 = (v25 + v26);
    v28 = *(v24 - 4);
    if (v28 <= 0x400)
    {
      goto LABEL_30;
    }

LABEL_34:
    if (v28 <= 2 * v27)
    {
LABEL_35:
      v29 = v28 << (6 * v26 >= (2 * v28));
      goto LABEL_36;
    }
  }

  else
  {
    v26 = 1;
    MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
    v27 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
    v28 = MEMORY[0xFFFFFFFFFFFFFFFC];
    if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
    {
      goto LABEL_34;
    }

LABEL_30:
    if (3 * v28 <= 4 * v27)
    {
      if (v28)
      {
        goto LABEL_35;
      }

      v29 = 8;
LABEL_36:
      v18 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::MangledName>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::MangledName>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash((v9 + 8), v29, v18);
    }
  }

  v20 = (v18 + 1);
  v21 = a1;
  if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    goto LABEL_39;
  }

LABEL_38:
  WTF::StringImpl::destroy(v5, a2);
LABEL_39:
  v30 = *(v21 + 80);
  v31 = *(a2 + 8);
  v32 = *(a2 + 16);
  WGSL::MangledName::toString(&v39, v20);
  v40[1] = v31;
  v40[2] = v32;
  v33 = v39;
  v39 = 0;
  v40[0] = off_2838D37C0;
  v41 = v33;
  WGSL::ShaderModule::replace<WGSL::AST::Identifier>(v30, a2, v40);
  v35 = v41;
  v40[0] = off_2838D37C0;
  v41 = 0;
  if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v35, v34);
  }

  result = v39;
  v39 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v34);
    }
  }

  return result;
}

void WGSL::AST::ScopedVisitor<WGSL::MangledName>::visit()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

WTF::StringImpl *WGSL::NameManglerVisitor::visit(WGSL::NameManglerVisitor *this, WGSL::AST::Parameter *a2)
{
  WGSL::AST::Visitor::visit(this, *(a2 + 8));

  return WGSL::NameManglerVisitor::introduceVariable(this, a2 + 32, 3);
}

void WGSL::NameManglerVisitor::visit(WGSL::NameManglerVisitor *this, uint64_t **a2)
{
  WGSL::NameManglerVisitor::introduceVariable(this, (a2 + 3), 0);
  v75 = 0;
  v68 = a2;
  v5 = *(a2 + 21);
  if (v5)
  {
    v6 = a2[9];
    v69 = &v6[v5];
    do
    {
      v7 = *v6;
      WGSL::AST::Visitor::visit(this, *(*v6 + 104));
      LOBYTE(v73) = 5;
      v10 = *(this + 29);
      *(this + 29) = v10 + 1;
      HIDWORD(v73) = v10;
      v11 = *(v7 + 48);
      if (!v11 || (atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed), v12 = *(v7 + 48), v74 = v11, v12 == -1) || !v12)
      {
        __break(0xC471u);
        JUMPOUT(0x225743264);
      }

      v13 = v75;
      if (v75 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::MangledName>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::MangledName>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(&v75, 8u, 0), (v13 = v75) != 0))
      {
        v14 = *(v13 - 8);
        v15 = *(v7 + 48);
        v16 = *(v15 + 4);
        if (v16 < 0x100)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v14 = 0;
        v15 = *(v7 + 48);
        v16 = *(v15 + 4);
        if (v16 < 0x100)
        {
LABEL_12:
          v17 = WTF::StringImpl::hashSlowCase(v15);
          goto LABEL_13;
        }
      }

      v17 = v16 >> 8;
LABEL_13:
      v18 = 0;
      for (i = 1; ; ++i)
      {
        v20 = v17 & v14;
        v21 = (v13 + 24 * (v17 & v14));
        v22 = *v21;
        if (*v21 == -1)
        {
          v18 = (v13 + 24 * v20);
          goto LABEL_15;
        }

        if (!v22)
        {
          break;
        }

        if (WTF::equal(v22, *(v7 + 48), v9))
        {
          goto LABEL_41;
        }

LABEL_15:
        v17 = i + v20;
      }

      if (v18)
      {
        v22 = 0;
        *v18 = 0;
        v18[1] = 0;
        v18[2] = 0;
        --*(v13 - 16);
        v21 = v18;
      }

      v23 = *(v7 + 48);
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
        v22 = *v21;
      }

      *v21 = v23;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v8);
      }

      v25 = v73;
      v24 = v74;
      if (v74)
      {
        atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
      }

      v26 = v21[2];
      v21[1] = v25;
      v21[2] = v24;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v8);
      }

      v27 = v75;
      if (v75)
      {
        v28 = *(v75 - 16);
        v29 = *(v75 - 12) + 1;
        *(v75 - 12) = v29;
        v30 = (v28 + v29);
        v31 = *(v27 - 4);
        if (v31 <= 0x400)
        {
          goto LABEL_34;
        }

LABEL_38:
        if (v31 <= 2 * v30)
        {
LABEL_39:
          v32 = v31 << (6 * v29 >= (2 * v31));
          goto LABEL_40;
        }
      }

      else
      {
        v29 = 1;
        MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
        v30 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
        v31 = MEMORY[0xFFFFFFFFFFFFFFFC];
        if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
        {
          goto LABEL_38;
        }

LABEL_34:
        if (3 * v31 <= 4 * v30)
        {
          if (v31)
          {
            goto LABEL_39;
          }

          v32 = 8;
LABEL_40:
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::MangledName>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::MangledName>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(&v75, v32, v21);
        }
      }

LABEL_41:
      v33 = *(this + 10);
      v34 = *(v7 + 32);
      v35 = *(v7 + 40);
      WGSL::MangledName::toString(&v70, &v73);
      v71[1] = v34;
      v71[2] = v35;
      v36 = v70;
      v70 = 0;
      v71[0] = off_2838D37C0;
      v72 = v36;
      WGSL::ShaderModule::replace<WGSL::AST::Identifier>(v33, v7 + 24, v71);
      v37 = v72;
      v71[0] = off_2838D37C0;
      v72 = 0;
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v4);
      }

      v38 = v70;
      v70 = 0;
      if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v4);
      }

      v39 = v74;
      if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v4);
      }

      ++v6;
    }

    while (v6 != v69);
  }

  v42 = *(this + 11);
  v41 = (this + 88);
  v40 = v42;
  if (!v42)
  {
    WTF::HashTable<WGSL::AST::Structure *,WTF::KeyValuePair<WGSL::AST::Structure *,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Structure *,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WGSL::AST::Structure *>,WTF::HashMap<WGSL::AST::Structure *,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WGSL::AST::Structure *>,WTF::HashTraits<WGSL::AST::Structure *>,WTF::HashTraits<WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Structure *>,WTF::FastMalloc>::rehash(v41, 8u);
    v40 = *v41;
  }

  v43 = *(v40 - 8);
  v44 = (v68 + ~(v68 << 32)) ^ ((v68 + ~(v68 << 32)) >> 22);
  v45 = 9 * ((v44 + ~(v44 << 13)) ^ ((v44 + ~(v44 << 13)) >> 8));
  v46 = (v45 ^ (v45 >> 15)) + ~((v45 ^ (v45 >> 15)) << 27);
  v47 = v43 & ((v46 >> 31) ^ v46);
  v48 = (v40 + 16 * v47);
  v49 = *v48;
  if (!*v48)
  {
LABEL_60:
    v52 = v75;
    v75 = 0;
    v53 = v48[1];
    *v48 = v68;
    v48[1] = v52;
    if (v53)
    {
      v54 = *(v53 - 1);
      if (v54)
      {
        v55 = v53;
        do
        {
          if (*v55 != -1)
          {
            v56 = v55[2];
            v55[2] = 0;
            if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v56, v4);
            }

            v57 = *v55;
            *v55 = 0;
            if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v57, v4);
            }
          }

          v55 += 3;
          --v54;
        }

        while (v54);
      }

      WTF::fastFree((v53 - 2), v4);
      v40 = *v41;
    }

    v58 = *(v40 - 16);
    v59 = *(v40 - 12) + 1;
    *(v40 - 12) = v59;
    v60 = (v58 + v59);
    v61 = *(v40 - 4);
    if (v61 > 0x400)
    {
      if (v61 > 2 * v60)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (3 * v61 > 4 * v60)
      {
        goto LABEL_79;
      }

      if (!v61)
      {
        v62 = 8;
LABEL_78:
        WTF::HashTable<WGSL::AST::Structure *,WTF::KeyValuePair<WGSL::AST::Structure *,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Structure *,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WGSL::AST::Structure *>,WTF::HashMap<WGSL::AST::Structure *,WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WGSL::AST::Structure *>,WTF::HashTraits<WGSL::AST::Structure *>,WTF::HashTraits<WTF::HashMap<WTF::String,WGSL::MangledName,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::MangledName>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Structure *>,WTF::FastMalloc>::rehash(v41, v62);
        goto LABEL_79;
      }
    }

    v62 = v61 << (6 * v59 >= (2 * v61));
    goto LABEL_78;
  }

  v50 = 0;
  v51 = 1;
  while (v49 != v68)
  {
    if (v49 == -1)
    {
      v50 = v48;
    }

    v47 = (v47 + v51) & v43;
    v48 = (v40 + 16 * v47);
    v49 = *v48;
    ++v51;
    if (!*v48)
    {
      if (v50)
      {
        *v50 = 0;
        v50[1] = 0;
        v40 = *v41;
        --*(*v41 - 16);
        v48 = v50;
      }

      goto LABEL_60;
    }
  }

LABEL_79:
  v63 = v75;
  if (v75)
  {
    v64 = *(v75 - 4);
    if (v64)
    {
      v65 = v75;
      do
      {
        if (*v65 != -1)
        {
          v66 = *(v65 + 16);
          *(v65 + 16) = 0;
          if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v66, v4);
          }

          v67 = *v65;
          *v65 = 0;
          if (v67)
          {
            if (atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v67, v4);
            }
          }
        }

        v65 += 24;
        --v64;
      }

      while (v64);
    }

    WTF::fastFree((v63 - 16), v4);
  }
}

uint64_t WGSL::ShaderModule::replace<WGSL::AST::Identifier>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a2 + 16))(a2);
  if (v6 == (*(*a3 + 16))(a3))
  {
    v14 = *(a2 + 8);
    v8 = *(a2 + 24);
    *(a2 + 24) = 0;
    v15 = v8;
    *(a2 + 8) = *(a3 + 8);
    v9 = *(a3 + 24);
    *(a3 + 24) = 0;
    v10 = *(a2 + 24);
    *(a2 + 24) = v9;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v7);
    }

    *(a3 + 8) = v14;
    v11 = *(a3 + 24);
    *(a3 + 24) = v15;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v7);
    }

    *(a3 + 24) = 0;
    v12 = *(a1 + 372);
    if (v12 == *(a1 + 368))
    {
      WTF::Vector<std::function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 360, v12 + 1);
      *(*(a1 + 360) + 32 * *(a1 + 372) + 24) = 0;
      operator new();
    }

    *(*(a1 + 360) + 32 * v12 + 24) = 0;
    operator new();
  }

  result = 157;
  __break(0xC471u);
  return result;
}

WTF::StringImpl *WGSL::MangledName::toString(WGSL::MangledName *this, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 >= 6)
  {
    __break(1u);
    goto LABEL_20;
  }

  v2 = this;
  v4 = &(&WGSL::MangledName::toString(void)const::prefixes)[2 * v3];
  v5 = *v4;
  v6 = v4[1];
  WTF::String::number(*(a2 + 1));
  if (v6)
  {
    v7 = (v6 - 1);
  }

  else
  {
    v7 = 0;
  }

  if (v7 >> 31)
  {
    goto LABEL_21;
  }

  if (v12)
  {
    v8 = *(v12 + 1);
    if (((v8 | v7) & 0x80000000) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = 0;
    if ((v7 & 0x80000000) != 0)
    {
LABEL_20:
      *v2 = 0;
      goto LABEL_21;
    }
  }

  v9 = (v7 + v8);
  if (__OFADD__(v7, v8))
  {
    goto LABEL_20;
  }

  if (!v12)
  {
    WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v9, 1, v5, v7, 0, v2);
    if (*v2)
    {
      goto LABEL_15;
    }

LABEL_21:
    __break(0xC471u);
    JUMPOUT(0x2257436F0);
  }

  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v9, (*(v12 + 16) >> 2) & 1, v5, v7, v12, v2);
  if (!*v2)
  {
    goto LABEL_21;
  }

LABEL_15:
  result = v12;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v12, v10);
  }

  return result;
}