unsigned int *WTF::StringTypeAdapter<unsigned int,void>::writeTo<unsigned char>(unsigned int *result, _BYTE *a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *result;
  v4 = *result / 0xA;
  v7[12] = (*result % 0xA) | 0x30;
  if (v3 >= 0xA)
  {
    v7[11] = (v4 - 10 * ((429496730 * v4) >> 32)) | 0x30;
    if (v3 >= 0x64)
    {
      v5 = 10;
      v7[10] = (v3 / 0x64 - 10 * ((429496730 * (v3 / 0x64)) >> 32)) | 0x30;
      if (v3 >= 0x3E8)
      {
        v7[9] = (v3 / 0x3E8 - 10 * ((429496730 * (v3 / 0x3E8)) >> 32)) | 0x30;
        if (v3 >> 4 >= 0x271)
        {
          v7[8] = (v3 / 0x2710 - 10 * ((429496730 * (v3 / 0x2710)) >> 32)) | 0x30;
          if (v3 >> 5 >= 0xC35)
          {
            v7[7] = (v3 / 0x186A0 - 10 * ((52429 * (v3 / 0x186A0)) >> 19)) | 0x30;
            if (v3 >= 0xF4240)
            {
              v7[6] = (v3 / 0xF4240 - 10 * ((6554 * (v3 / 0xF4240)) >> 16)) | 0x30;
              if (v3 >= 0x989680)
              {
                v7[5] = (v3 / 0x989680 - 10 * ((6554 * (v3 / 0x989680)) >> 16)) | 0x30;
                if (v3 >= 0x5F5E100)
                {
                  v7[4] = (v3 / 0x5F5E100 - 10 * ((26 * (v3 / 0x5F5E100)) >> 8)) | 0x30;
                  if (v3 >= 0x3B9ACA00)
                  {
                    v7[3] = (v3 / 0x3B9ACA00) | 0x30;
                    v5 = 3;
                    v6 = 10;
                  }

                  else
                  {
                    v5 = 4;
                    v6 = 9;
                  }
                }

                else
                {
                  v5 = 5;
                  v6 = 8;
                }
              }

              else
              {
                v5 = 6;
                v6 = 7;
              }
            }

            else
            {
              v5 = 7;
              v6 = 6;
            }
          }

          else
          {
            v5 = 8;
            v6 = 5;
          }
        }

        else
        {
          v5 = 9;
          v6 = 4;
        }
      }

      else
      {
        v6 = 3;
      }
    }

    else
    {
      v5 = 11;
      v6 = 2;
    }
  }

  else
  {
    v5 = 12;
    v6 = 1;
  }

  do
  {
    if (v5 == 13 || !a3)
    {
      __break(1u);
    }

    *a2++ = v7[v5];
    --a3;
    ++v5;
    --v6;
  }

  while (v6);
  return result;
}

unsigned int *WTF::StringTypeAdapter<unsigned int,void>::writeTo<char16_t>(unsigned int *result, _WORD *a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *result;
  v4 = *result / 0xA;
  v7[12] = (*result % 0xA) | 0x30;
  if (v3 >= 0xA)
  {
    v7[11] = (v4 - 10 * ((429496730 * v4) >> 32)) | 0x30;
    if (v3 >= 0x64)
    {
      v5 = 10;
      v7[10] = (v3 / 0x64 - 10 * ((429496730 * (v3 / 0x64)) >> 32)) | 0x30;
      if (v3 >= 0x3E8)
      {
        v7[9] = (v3 / 0x3E8 - 10 * ((429496730 * (v3 / 0x3E8)) >> 32)) | 0x30;
        if (v3 >> 4 >= 0x271)
        {
          v7[8] = (v3 / 0x2710 - 10 * ((429496730 * (v3 / 0x2710)) >> 32)) | 0x30;
          if (v3 >> 5 >= 0xC35)
          {
            v7[7] = (v3 / 0x186A0 - 10 * ((52429 * (v3 / 0x186A0)) >> 19)) | 0x30;
            if (v3 >= 0xF4240)
            {
              v7[6] = (v3 / 0xF4240 - 10 * ((6554 * (v3 / 0xF4240)) >> 16)) | 0x30;
              if (v3 >= 0x989680)
              {
                v7[5] = (v3 / 0x989680 - 10 * ((6554 * (v3 / 0x989680)) >> 16)) | 0x30;
                if (v3 >= 0x5F5E100)
                {
                  v7[4] = (v3 / 0x5F5E100 - 10 * ((26 * (v3 / 0x5F5E100)) >> 8)) | 0x30;
                  if (v3 >= 0x3B9ACA00)
                  {
                    v7[3] = (v3 / 0x3B9ACA00) | 0x30;
                    v5 = 3;
                    v6 = 10;
                  }

                  else
                  {
                    v5 = 4;
                    v6 = 9;
                  }
                }

                else
                {
                  v5 = 5;
                  v6 = 8;
                }
              }

              else
              {
                v5 = 6;
                v6 = 7;
              }
            }

            else
            {
              v5 = 7;
              v6 = 6;
            }
          }

          else
          {
            v5 = 8;
            v6 = 5;
          }
        }

        else
        {
          v5 = 9;
          v6 = 4;
        }
      }

      else
      {
        v6 = 3;
      }
    }

    else
    {
      v5 = 11;
      v6 = 2;
    }
  }

  else
  {
    v5 = 12;
    v6 = 1;
  }

  do
  {
    if (v5 == 13 || !a3)
    {
      __break(1u);
    }

    *a2++ = v7[v5];
    --a3;
    ++v5;
    --v6;
  }

  while (v6);
  return result;
}

char *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>(char *result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, char a6)
{
  v6 = &result[2 * a4];
  if (a4 < 0x40)
  {
    v7 = result;
    if (result == v6)
    {
      goto LABEL_12;
    }

LABEL_7:
    v16 = &v6[-v7 - 2];
    if (v16 < 0xE || v7 < a3 + (v16 >> 1) + 1 && a3 < (v16 & 0xFFFFFFFFFFFFFFFELL) + v7 + 2)
    {
      v17 = a3;
      v18 = v7;
      goto LABEL_11;
    }

    v44 = (v16 >> 1) + 1;
    if (v16 >= 0x3E)
    {
      v45 = v44 & 0xFFFFFFFFFFFFFFE0;
      v46 = (v7 + 32);
      v47 = (a3 + 16);
      v48 = v44 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v49 = *v47[-2].i8;
        v50 = vmovl_u8(*v47);
        v51 = vmovl_high_u8(*v47->i8);
        v46[-2] = vmovl_u8(*v49.i8);
        v46[-1] = vmovl_high_u8(v49);
        *v46 = v50;
        v46[1] = v51;
        v46 += 4;
        v47 += 4;
        v48 -= 32;
      }

      while (v48);
      if (v44 == v45)
      {
        goto LABEL_12;
      }

      if ((v44 & 0x18) == 0)
      {
        v18 = (v7 + 2 * v45);
        v17 = (a3 + v45);
        goto LABEL_11;
      }
    }

    else
    {
      v45 = 0;
    }

    v17 = (a3 + (v44 & 0xFFFFFFFFFFFFFFF8));
    v18 = (v7 + 2 * (v44 & 0xFFFFFFFFFFFFFFF8));
    v52 = (v7 + 2 * v45);
    v53 = (a3 + v45);
    v54 = v45 - (v44 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v55 = *v53++;
      *v52++ = vmovl_u8(v55);
      v54 += 8;
    }

    while (v54);
    if (v44 == (v44 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_12;
    }

    do
    {
LABEL_11:
      v19 = *v17++;
      *v18 = v19;
      v18 += 2;
    }

    while (v18 != v6);
    goto LABEL_12;
  }

  v7 = &result[2 * (a4 & 0x7FFFFFFFFFFFFFC0)];
  v8 = 0uLL;
  v9 = result;
  do
  {
    v67.val[0] = *a3;
    v10 = *(a3 + 16);
    v69.val[0] = *(a3 + 32);
    v11 = *(a3 + 48);
    a3 += 64;
    v12 = v11;
    v69.val[1] = 0uLL;
    v71.val[0] = v10;
    v67.val[1] = 0uLL;
    v13 = v9;
    vst2q_s8(v13, v67);
    v13 += 32;
    v71.val[1] = 0uLL;
    vst2q_s8(v13, v71);
    v14 = v9 + 64;
    vst2q_s8(v14, v69);
    v15 = v9 + 96;
    vst2q_s8(v15, *(&v8 - 1));
    v9 += 128;
  }

  while (v9 != v7);
  if (v7 != v6)
  {
    goto LABEL_7;
  }

LABEL_12:
  v20 = a2 - a4;
  if (a2 < a4)
  {
    goto LABEL_64;
  }

  v21 = &result[2 * a4];
  v22 = *a5;
  if (!*a5)
  {
    if (a2 != a4)
    {
      *v21 = a6;
      return result;
    }

LABEL_64:
    __break(1u);
    return result;
  }

  atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
  v23 = *(v22 + 8);
  v24 = *(v22 + 4);
  if ((*(v22 + 16) & 4) != 0)
  {
    v25 = &v21[2 * v24];
    if (v24 < 0x40)
    {
      v26 = &result[2 * a4];
      if (v21 == v25)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v26 = &v21[2 * (v24 & 0xFFFFFFC0)];
      v27 = 0uLL;
      v28 = &result[2 * a4];
      do
      {
        v68.val[0] = *v23;
        v29 = v23[1];
        v70.val[0] = v23[2];
        v30 = v23[3];
        v23 += 4;
        v31 = v30;
        v70.val[1] = 0uLL;
        v72.val[0] = v29;
        v68.val[1] = 0uLL;
        v32 = v28;
        vst2q_s8(v32, v68);
        v32 += 32;
        v72.val[1] = 0uLL;
        vst2q_s8(v32, v72);
        v33 = v28 + 64;
        vst2q_s8(v33, v70);
        v34 = v28 + 96;
        vst2q_s8(v34, *(&v27 - 1));
        v28 += 128;
      }

      while (v28 != v26);
      if (v26 == v25)
      {
        goto LABEL_36;
      }
    }

    v35 = &result[2 * v24 + 2 * a4 - v26 - 2];
    if (v35 < 0xE || (v26 < v23->u64 + (v35 >> 1) + 1 ? (v36 = v23 >= (v35 & 0xFFFFFFFFFFFFFFFELL) + v26 + 2) : (v36 = 1), !v36))
    {
      v39 = v23;
      v40 = v26;
      goto LABEL_33;
    }

    v37 = (v35 >> 1) + 1;
    if (v35 >= 0x3E)
    {
      v38 = v37 & 0xFFFFFFFFFFFFFFE0;
      v56 = (v26 + 32);
      v57 = &v23[1];
      v58 = v37 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v59 = *v57[-2].i8;
        v60 = vmovl_u8(*v57);
        v61 = vmovl_high_u8(*v57->i8);
        v56[-2] = vmovl_u8(*v59.i8);
        v56[-1] = vmovl_high_u8(v59);
        *v56 = v60;
        v56[1] = v61;
        v56 += 4;
        v57 += 4;
        v58 -= 32;
      }

      while (v58);
      if (v37 == v38)
      {
        goto LABEL_36;
      }

      if ((v37 & 0x18) == 0)
      {
        v40 = (v26 + 2 * v38);
        v39 = (v23 + v38);
        goto LABEL_33;
      }
    }

    else
    {
      v38 = 0;
    }

    v39 = (v23 + (v37 & 0xFFFFFFFFFFFFFFF8));
    v40 = (v26 + 2 * (v37 & 0xFFFFFFFFFFFFFFF8));
    v62 = (v26 + 2 * v38);
    v63 = &v23->i8[v38];
    v64 = v38 - (v37 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v65 = *v63++;
      *v62++ = vmovl_u8(v65);
      v64 += 8;
    }

    while (v64);
    if (v37 == (v37 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_36;
    }

    do
    {
LABEL_33:
      v41 = v39->u8[0];
      v39 = (v39 + 1);
      *v40 = v41;
      v40 += 2;
    }

    while (v40 != v25);
    goto LABEL_36;
  }

  if (v24)
  {
    if (v24 == 1)
    {
      *v21 = v23->i16[0];
    }

    else
    {
      v42 = a6;
      result = memcpy(&result[2 * a4], v23, 2 * v24);
      a6 = v42;
    }
  }

LABEL_36:
  v43 = *(v22 + 4);
  if (v20 <= v43)
  {
    goto LABEL_64;
  }

  *&v21[2 * v43] = a6;
  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(v22, v23);
  }

  return result;
}

uint64_t *_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(uint64_t *result, uint64_t a2, uint64_t a3, const void **a4)
{
  switch(result)
  {
    case 1uLL:
    case 2uLL:
    case 7uLL:
    case 0xBuLL:
      *a3 = *a4;
      return result;
    case 3uLL:
    case 0xAuLL:
      v4 = *a4;
      *(a3 + 16) = a4[2];
      *a3 = v4;
      return result;
    case 4uLL:
      *a3 = *a4;

      return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Type const*>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Type const*>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Type const*,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Type const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable((a3 + 8), a4 + 1);
    case 5uLL:
      v6 = *a4;
      if (*a4)
      {
        atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      }

      *a3 = v6;
      *(a3 + 8) = *(a4 + 8);
      v7 = a4[2];
      if (!v7)
      {
        *(a3 + 16) = 0;
        return result;
      }

      v8 = a3;
      v9 = *v7;
      v10 = 8 * v9;
      result = WTF::fastMalloc((8 * v9 + 8));
      *result = v9;
      if (!v9)
      {
        *(v8 + 16) = result;
        return result;
      }

      if ((v10 - 8) < 0x18)
      {
        v11 = result;
        v12 = v7;
        v13 = v8;
LABEL_34:
        v27 = v11 + 1;
        do
        {
          v28 = *(v12 + 1);
          v12 += 2;
          *v27++ = v28;
        }

        while (v12 != &v7[v10 / 4]);
        goto LABEL_36;
      }

      v11 = result;
      v12 = v7;
      v13 = v8;
      if ((result - v7) < 0x20)
      {
        goto LABEL_34;
      }

      v14 = ((v10 - 8) >> 3) + 1;
      v15 = 2 * (v14 & 0x3FFFFFFFFFFFFFFCLL);
      v11 = &result[v15 / 2];
      v12 = &v7[v15];
      v16 = (v7 + 6);
      v17 = result + 3;
      v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v19 = *v16;
        *(v17 - 1) = *(v16 - 1);
        *v17 = v19;
        v16 += 2;
        v17 += 2;
        v18 -= 4;
      }

      while (v18);
      if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_34;
      }

LABEL_36:
      *(v13 + 16) = result;
      return result;
    case 6uLL:
      v21 = *(a4 + 3);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 12) = v21;
      if (v21)
      {
        if (v21 >> 29)
        {
          __break(0xC471u);
          JUMPOUT(0x225707920);
        }

        v22 = a4;
        v23 = a3;
        v24 = WTF::fastMalloc((8 * v21));
        *(v23 + 8) = v21;
        *v23 = v24;
        result = memcpy(v24, *v22, 8 * *(v22 + 3));
        a4 = v22;
        a3 = v23;
      }

      v25 = a4[2];
      *(a3 + 24) = *(a4 + 24);
      *(a3 + 16) = v25;
      return result;
    case 8uLL:
      v5 = *a4;
      *(a3 + 2) = *(a4 + 2);
      *a3 = v5;
      return result;
    case 0xCuLL:
      *a3 = *a4;
      return result;
    case 0xDuLL:
      *a3 = *a4;
      result = a4[5];
      if (result)
      {
        if (result == (a4 + 2))
        {
          *(a3 + 40) = a3 + 16;
          v26 = *(*a4[5] + 24);

          return v26();
        }

        else
        {
          v20 = a3;
          result = (*(*result + 16))(result);
          *(v20 + 40) = result;
        }
      }

      else
      {
        *(a3 + 40) = 0;
      }

      return result;
    default:
      *a3 = *a4;
      return result;
  }
}

void mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (v2 == 255)
  {
    v2 = -1;
  }

  if (v2 > 5)
  {
    if ((v2 - 7) < 6)
    {
      return;
    }

    if (v2 != 6)
    {
      v11 = *(a2 + 40);
      if (v11 == a2 + 16)
      {
        v12 = *(*v11 + 32);
      }

      else
      {
        if (!v11)
        {
          return;
        }

        v12 = *(*v11 + 40);
      }

      v12();
      return;
    }

    v7 = *a2;
    if (*a2)
    {
      *a2 = 0;
      *(a2 + 8) = 0;

      goto LABEL_20;
    }
  }

  else if (v2 >= 4)
  {
    if (v2 == 4)
    {
      v3 = *(a2 + 8);
      if (v3)
      {
        v4 = *(v3 - 4);
        if (v4)
        {
          v5 = *(a2 + 8);
          do
          {
            v6 = *v5;
            if (*v5 != -1)
            {
              *v5 = 0;
              if (v6)
              {
                if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v6, a2);
                }
              }
            }

            v5 += 2;
            --v4;
          }

          while (v4);
        }

        v7 = (v3 - 16);

LABEL_20:
        WTF::fastFree(v7, a2);
      }
    }

    else
    {
      v8 = *(a2 + 16);
      *(a2 + 16) = 0;
      if (v8)
      {
        v9 = a2;
        WTF::fastFree(v8, a2);
        a2 = v9;
      }

      v10 = *a2;
      *a2 = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        WTF::StringImpl::destroy(v10, a2);
      }
    }
  }
}

uint64_t *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::Type const*>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::Type const*>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::Type const*,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::Type const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(uint64_t *result, WTF::StringImpl ***a2)
{
  v2 = result;
  *result = 0;
  if (!*a2)
  {
    return v2;
  }

  v3 = *a2;
  v4 = *(*a2 - 3);
  if (!v4)
  {
    return v2;
  }

  v6 = *(v3 - 3);
  v7 = *(v3 - 3);
  if (v4 == 1)
  {
    goto LABEL_6;
  }

  v8 = __clz(v4 - 1);
  if (v8)
  {
    v6 = (1 << -v8);
    v7 = 1 << -v8;
    if (v4 > 0x400)
    {
      if (v6 > 2 * v4)
      {
LABEL_8:
        v9 = v4;
        v10 = v7;
        if (v7 > 0x400)
        {
          if (v10 * 0.416666667 > v9)
          {
            goto LABEL_13;
          }
        }

        else if (v10 * 0.604166667 > v9)
        {
LABEL_13:
          if (v7 <= 8)
          {
            v11 = 8;
          }

          else
          {
            v11 = v7;
          }

          v12 = WTF::fastZeroedMalloc((16 * v11 + 16));
          *v2 = (v12 + 4);
          v12[2] = v11 - 1;
          v12[3] = v11;
          *v12 = 0;
          v12[1] = v4;
          v14 = *a2;
          if (*a2)
          {
            v15 = *(v14 - 1);
            v16 = &v14[2 * v15];
            if (*(v14 - 3))
            {
              if (!v15)
              {
                v19 = 0;
                v18 = v14;
LABEL_32:
                v20 = &v14[2 * v19];
                if (v18 != v20)
                {
                  while (1)
                  {
LABEL_35:
                    v21 = *v2;
                    if (*v2)
                    {
                      v22 = *(v21 - 8);
                      v23 = *v18;
                      v24 = *(*v18 + 4);
                      if (v24 >= 0x100)
                      {
                        goto LABEL_37;
                      }
                    }

                    else
                    {
                      v22 = 0;
                      v23 = *v18;
                      v24 = *(*v18 + 4);
                      if (v24 >= 0x100)
                      {
LABEL_37:
                        v25 = v24 >> 8;
                        goto LABEL_40;
                      }
                    }

                    v25 = WTF::StringImpl::hashSlowCase(v23);
LABEL_40:
                    v26 = 0;
                    do
                    {
                      v27 = v25 & v22;
                      v25 = ++v26 + v27;
                    }

                    while (*(v21 + 16 * v27));
                    v28 = v21 + 16 * v27;
                    v29 = *v18;
                    if (*v18)
                    {
                      atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
                      v30 = *v28;
                      v31 = v18[1];
                      *v28 = v29;
                      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v30, v13);
                      }
                    }

                    else
                    {
                      v31 = v18[1];
                      *v28 = 0;
                    }

                    *(v28 + 8) = v31;
                    do
                    {
                      v18 += 2;
                    }

                    while (v18 != v16 && *v18 + 1 <= 1);
                    if (v18 == v20)
                    {
                      return v2;
                    }
                  }
                }

                return v2;
              }

              v17 = 16 * v15;
              v18 = v14;
              while (*v18 + 1 <= 1)
              {
                v18 += 2;
                v17 -= 16;
                if (!v17)
                {
                  v18 = v16;
                  break;
                }
              }

              if (v14)
              {
LABEL_24:
                v19 = *(v14 - 1);
                goto LABEL_32;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v16 = 0;
            v15 = 0;
          }

          v18 = v16;
          v16 = &v14[2 * v15];
          if (v14)
          {
            goto LABEL_24;
          }

LABEL_27:
          v20 = 0;
          if (v18)
          {
            goto LABEL_35;
          }

          return v2;
        }

        v7 *= 2;
        goto LABEL_13;
      }

LABEL_7:
      v7 *= 2;
      goto LABEL_8;
    }

LABEL_6:
    if (3 * v6 > 4 * v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t WTF::tryMakeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v8 = *(result + 8);
  v9 = v8 != 0;
  v10 = v8 - 1;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 >> 31)
  {
    goto LABEL_36;
  }

  v12 = *(a2 + 8);
  v9 = v12 != 0;
  v13 = v12 - 1;
  if (!v9)
  {
    v13 = 0;
  }

  if (v13 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x225707EECLL);
  }

  v14 = *(a3 + 8);
  v9 = v14 != 0;
  v15 = v14 - 1;
  if (v9)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x225707F0CLL);
  }

  v17 = *(a4 + 8);
  v9 = v17 != 0;
  v18 = v17 - 1;
  if (v9)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x225707F2CLL);
  }

  v20 = *(a5 + 8);
  v9 = v20 != 0;
  v21 = v20 - 1;
  if (v9)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x225707F4CLL);
  }

  v23 = *(a6 + 8);
  v9 = v23 != 0;
  v24 = v23 - 1;
  v25 = v9 ? v24 : 0;
  if (v25 >> 31)
  {
LABEL_36:
    __break(0xC471u);
    JUMPOUT(0x225707ECCLL);
  }

  v26 = v22 + v25;
  if (!__OFADD__(v22, v25))
  {
    v27 = __OFADD__(v19, v26);
    v28 = v19 + v26;
    if (!v27)
    {
      v27 = __OFADD__(v16, v28);
      v29 = v16 + v28;
      if (!v27)
      {
        v27 = __OFADD__(v13, v29);
        v30 = v13 + v29;
        if (!v27)
        {
          v27 = __OFADD__(v11, v30);
          v31 = (v11 + v30);
          if (!v27)
          {
            return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v31, 1, *result, v11, *a2, v13, *a3, v16, a7, *a4, v19, *a5, v22, *a6, v25);
          }
        }
      }
    }
  }

  *a7 = 0;
  return result;
}

unint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(unint64_t result@<X0>, int a2@<W1>, _BYTE *a3@<X2>, size_t a4@<X3>, _BYTE *a5@<X4>, unint64_t a6@<X5>, _BYTE *a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, _BYTE *a10, unint64_t a11, _BYTE *a12, unint64_t a13, _BYTE *a14, unint64_t a15)
{
  v16 = result;
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

    v27 = result;
    result = WTF::tryFastCompactMalloc((2 * result + 20));
    v23 = v78;
    if (!v78)
    {
      goto LABEL_60;
    }

    v34 = v78 + 20;
    *v78 = 2;
    *(v78 + 4) = v27;
    *(v78 + 8) = v78 + 20;
    *(v78 + 16) = 0;
    v35 = v78 + 20 + 2 * a4;
    if (a4 < 0x40)
    {
      v36 = v78 + 20;
      v39 = a8;
      v40 = a7;
      v41 = a6;
      v42 = a5;
      v43 = a3;
    }

    else
    {
      v36 = v34 + 2 * (a4 & 0x7FFFFFFFFFFFFFC0);
      v37 = 0uLL;
      v38 = (v78 + 20);
      v39 = a8;
      v40 = a7;
      v41 = a6;
      v42 = a5;
      v43 = a3;
      do
      {
        v79.val[0] = *v43;
        v44 = *(v43 + 16);
        v80.val[0] = *(v43 + 32);
        v45 = *(v43 + 48);
        v43 += 64;
        v46 = v45;
        v80.val[1] = 0uLL;
        v81.val[0] = v44;
        v79.val[1] = 0uLL;
        v47 = v38;
        vst2q_s8(v47, v79);
        v47 += 32;
        v81.val[1] = 0uLL;
        vst2q_s8(v47, v81);
        v48 = v38 + 64;
        vst2q_s8(v48, v80);
        v49 = v38 + 96;
        vst2q_s8(v49, *(&v37 - 1));
        v38 += 128;
      }

      while (v38 != v36);
    }

    if (v36 == v35)
    {
LABEL_29:
      if (v16 < a4)
      {
        goto LABEL_70;
      }

      result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v34 + 2 * a4, v16 - a4, v42, v41, v40, v39, a10, a11, a12, a13, a14, a15);
LABEL_60:
      *a9 = v23;
      return result;
    }

    v50 = v78 + 2 * a4 - v36 + 18;
    if (v50 < 0xE || (v36 < v43 + (v50 >> 1) + 1 ? (v51 = v43 >= (v50 & 0xFFFFFFFFFFFFFFFELL) + v36 + 2) : (v51 = 1), !v51))
    {
      v54 = v43;
      v55 = v36;
      goto LABEL_28;
    }

    v52 = (v50 >> 1) + 1;
    if (v50 >= 0x3E)
    {
      v53 = v52 & 0xFFFFFFFFFFFFFFE0;
      v67 = (v36 + 32);
      v68 = (v43 + 16);
      v69 = v52 & 0xFFFFFFFFFFFFFFE0;
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
      if (v52 == v53)
      {
        goto LABEL_29;
      }

      if ((v52 & 0x18) == 0)
      {
        v55 = (v36 + 2 * v53);
        v54 = (v43 + v53);
        do
        {
LABEL_28:
          v56 = *v54++;
          *v55++ = v56;
        }

        while (v55 != v35);
        goto LABEL_29;
      }
    }

    else
    {
      v53 = 0;
    }

    v54 = (v43 + (v52 & 0xFFFFFFFFFFFFFFF8));
    v55 = (v36 + 2 * (v52 & 0xFFFFFFFFFFFFFFF8));
    v73 = (v36 + 2 * v53);
    v74 = (v43 + v53);
    v75 = v53 - (v52 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v76 = *v74++;
      *v73++ = vmovl_u8(v76);
      v75 += 8;
    }

    while (v75);
    if (v52 == (v52 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (!result)
  {
LABEL_11:
    v23 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_60;
  }

  if ((result & 0x80000000) != 0)
  {
LABEL_10:
    v23 = 0;
    goto LABEL_60;
  }

  v17 = result;
  result = WTF::tryFastCompactMalloc((result + 20));
  v23 = v78;
  if (!v78)
  {
    goto LABEL_60;
  }

  v24 = (v78 + 20);
  *v78 = 2;
  *(v78 + 4) = v17;
  *(v78 + 8) = v78 + 20;
  *(v78 + 16) = 4;
  v25 = a6;
  v26 = a4;
  if (a4)
  {
    if (a4 == 1)
    {
      *v24 = *a3;
    }

    else
    {
      result = memcpy((v78 + 20), a3, a4);
      v26 = a4;
      v25 = a6;
    }
  }

  v51 = v16 >= v26;
  v57 = v16 - v26;
  if (v51)
  {
    v58 = &v24[v26];
    v59 = a8;
    v60 = a7;
    if (v25)
    {
      if (v25 == 1)
      {
        *v58 = *a5;
      }

      else
      {
        result = memcpy(v58, a5, v25);
        LODWORD(v25) = a6;
        v60 = a7;
        v59 = a8;
      }
    }

    v61 = v57 - v25;
    if (v57 >= v25)
    {
      v62 = &v58[v25];
      if (v59)
      {
        if (v59 == 1)
        {
          *v62 = *v60;
        }

        else
        {
          result = memcpy(v62, v60, v59);
          LODWORD(v59) = a8;
        }
      }

      v51 = v61 >= v59;
      v63 = v61 - v59;
      if (v51)
      {
        v64 = &v62[v59];
        if (a11)
        {
          if (a11 == 1)
          {
            *v64 = *a10;
          }

          else
          {
            result = memcpy(v64, a10, a11);
          }
        }

        v51 = v63 >= a11;
        v65 = v63 - a11;
        if (v51)
        {
          v66 = &v64[a11];
          if (a13)
          {
            if (a13 == 1)
            {
              *v66 = *a12;
            }

            else
            {
              result = memcpy(&v64[a11], a12, a13);
            }
          }

          if (v65 >= a13)
          {
            if (a15)
            {
              if (a15 == 1)
              {
                v66[a13] = *a14;
              }

              else
              {
                result = memcpy(&v66[a13], a14, a15);
              }
            }

            goto LABEL_60;
          }
        }
      }
    }
  }

LABEL_70:
  __break(1u);
  return result;
}

unint64_t WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12)
{
  v12 = (result + 2 * a4);
  if (a4 < 0x40)
  {
    v13 = result;
    if (result == v12)
    {
      goto LABEL_12;
    }

LABEL_7:
    v22 = v12 - v13 - 2;
    if (v22 < 0xE || v13 < a3 + (v22 >> 1) + 1 && a3 < (v22 & 0xFFFFFFFFFFFFFFFELL) + v13 + 2)
    {
      v23 = a3;
      v24 = v13;
      goto LABEL_11;
    }

    v103 = (v22 >> 1) + 1;
    if (v22 >= 0x3E)
    {
      v104 = v103 & 0xFFFFFFFFFFFFFFE0;
      v105 = (v13 + 32);
      v106 = (a3 + 16);
      v107 = v103 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v108 = *v106[-2].i8;
        v109 = vmovl_u8(*v106);
        v110 = vmovl_high_u8(*v106->i8);
        v105[-2] = vmovl_u8(*v108.i8);
        v105[-1] = vmovl_high_u8(v108);
        *v105 = v109;
        v105[1] = v110;
        v105 += 4;
        v106 += 4;
        v107 -= 32;
      }

      while (v107);
      if (v103 == v104)
      {
        goto LABEL_12;
      }

      if ((v103 & 0x18) == 0)
      {
        v24 = (v13 + 2 * v104);
        v23 = (a3 + v104);
        goto LABEL_11;
      }
    }

    else
    {
      v104 = 0;
    }

    v23 = (a3 + (v103 & 0xFFFFFFFFFFFFFFF8));
    v24 = (v13 + 2 * (v103 & 0xFFFFFFFFFFFFFFF8));
    v111 = (v13 + 2 * v104);
    v112 = (a3 + v104);
    v113 = v104 - (v103 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v114 = *v112++;
      *v111++ = vmovl_u8(v114);
      v113 += 8;
    }

    while (v113);
    if (v103 == (v103 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_12;
    }

    do
    {
LABEL_11:
      v25 = *v23++;
      *v24++ = v25;
    }

    while (v24 != v12);
    goto LABEL_12;
  }

  v13 = result + 2 * (a4 & 0x7FFFFFFFFFFFFFC0);
  v14 = 0uLL;
  v15 = result;
  do
  {
    v155.val[0] = *a3;
    v16 = *(a3 + 16);
    v160.val[0] = *(a3 + 32);
    v17 = *(a3 + 48);
    a3 += 64;
    v18 = v17;
    v160.val[1] = 0uLL;
    v165.val[0] = v16;
    v155.val[1] = 0uLL;
    v19 = v15;
    vst2q_s8(v19, v155);
    v19 += 32;
    v165.val[1] = 0uLL;
    vst2q_s8(v19, v165);
    v20 = v15 + 64;
    vst2q_s8(v20, v160);
    v21 = v15 + 96;
    vst2q_s8(v21, *(&v14 - 1));
    v15 += 128;
  }

  while (v15 != v13);
  if (v13 != v12)
  {
    goto LABEL_7;
  }

LABEL_12:
  v26 = a4;
  v27 = a2 - a4;
  if (a2 < a4)
  {
LABEL_128:
    __break(1u);
    return result;
  }

  v28 = (result + 2 * a4);
  v29 = &v28[a6];
  if (a6 < 0x40)
  {
    v30 = result + 2 * a4;
    if (v28 == v29)
    {
      goto LABEL_29;
    }

LABEL_19:
    v39 = result + 2 * a6 + 2 * a4 - v30 - 2;
    if (v39 < 0xE || (v30 < a5 + (v39 >> 1) + 1 ? (v40 = a5 >= (v39 & 0xFFFFFFFFFFFFFFFELL) + v30 + 2) : (v40 = 1), !v40))
    {
      v43 = a5;
      v44 = v30;
      goto LABEL_28;
    }

    v41 = (v39 >> 1) + 1;
    if (v39 >= 0x3E)
    {
      v42 = v41 & 0xFFFFFFFFFFFFFFE0;
      v115 = (v30 + 32);
      v116 = (a5 + 16);
      v117 = v41 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v118 = *v116[-2].i8;
        v119 = vmovl_u8(*v116);
        v120 = vmovl_high_u8(*v116->i8);
        v115[-2] = vmovl_u8(*v118.i8);
        v115[-1] = vmovl_high_u8(v118);
        *v115 = v119;
        v115[1] = v120;
        v115 += 4;
        v116 += 4;
        v117 -= 32;
      }

      while (v117);
      if (v41 == v42)
      {
        goto LABEL_29;
      }

      if ((v41 & 0x18) == 0)
      {
        v44 = (v30 + 2 * v42);
        v43 = (a5 + v42);
        goto LABEL_28;
      }
    }

    else
    {
      v42 = 0;
    }

    v43 = (a5 + (v41 & 0xFFFFFFFFFFFFFFF8));
    v44 = (v30 + 2 * (v41 & 0xFFFFFFFFFFFFFFF8));
    v121 = (v30 + 2 * v42);
    v122 = (a5 + v42);
    v123 = v42 - (v41 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v124 = *v122++;
      *v121++ = vmovl_u8(v124);
      v123 += 8;
    }

    while (v123);
    if (v41 == (v41 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_29;
    }

    do
    {
LABEL_28:
      v45 = *v43++;
      *v44++ = v45;
    }

    while (v44 != v29);
    goto LABEL_29;
  }

  v30 = &v28[a6 & 0x7FFFFFFFFFFFFFC0];
  v31 = 0uLL;
  v32 = (result + 2 * a4);
  do
  {
    v156.val[0] = *a5;
    v33 = *(a5 + 16);
    v161.val[0] = *(a5 + 32);
    v34 = *(a5 + 48);
    a5 += 64;
    v35 = v34;
    v161.val[1] = 0uLL;
    v166.val[0] = v33;
    v156.val[1] = 0uLL;
    v36 = v32;
    vst2q_s8(v36, v156);
    v36 += 32;
    v166.val[1] = 0uLL;
    vst2q_s8(v36, v166);
    v37 = v32 + 64;
    vst2q_s8(v37, v161);
    v38 = v32 + 96;
    vst2q_s8(v38, *(&v31 - 1));
    v32 += 128;
  }

  while (v32 != v30);
  if (v30 != v29)
  {
    goto LABEL_19;
  }

LABEL_29:
  v46 = v27 - a6;
  if (v27 < a6)
  {
    goto LABEL_128;
  }

  v47 = &v28[a6];
  v48 = (v47 + 2 * a8);
  if (a8 < 0x40)
  {
    v49 = v47;
    if (v47 == v48)
    {
      goto LABEL_46;
    }

LABEL_36:
    v58 = result + 2 * a8 + 2 * a4 + 2 * a6 - v49 - 2;
    if (v58 < 0xE || (v49 < a7 + (v58 >> 1) + 1 ? (v59 = a7 >= (v58 & 0xFFFFFFFFFFFFFFFELL) + v49 + 2) : (v59 = 1), !v59))
    {
      v62 = a7;
      v63 = v49;
      goto LABEL_45;
    }

    v60 = (v58 >> 1) + 1;
    if (v58 >= 0x3E)
    {
      v61 = v60 & 0xFFFFFFFFFFFFFFE0;
      v125 = (v49 + 32);
      v126 = (a7 + 16);
      v127 = v60 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v128 = *v126[-2].i8;
        v129 = vmovl_u8(*v126);
        v130 = vmovl_high_u8(*v126->i8);
        v125[-2] = vmovl_u8(*v128.i8);
        v125[-1] = vmovl_high_u8(v128);
        *v125 = v129;
        v125[1] = v130;
        v125 += 4;
        v126 += 4;
        v127 -= 32;
      }

      while (v127);
      if (v60 == v61)
      {
        goto LABEL_46;
      }

      if ((v60 & 0x18) == 0)
      {
        v63 = (v49 + 2 * v61);
        v62 = (a7 + v61);
        goto LABEL_45;
      }
    }

    else
    {
      v61 = 0;
    }

    v62 = (a7 + (v60 & 0xFFFFFFFFFFFFFFF8));
    v63 = (v49 + 2 * (v60 & 0xFFFFFFFFFFFFFFF8));
    v131 = (v49 + 2 * v61);
    v132 = (a7 + v61);
    v133 = v61 - (v60 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v134 = *v132++;
      *v131++ = vmovl_u8(v134);
      v133 += 8;
    }

    while (v133);
    if (v60 == (v60 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_46;
    }

    do
    {
LABEL_45:
      v64 = *v62++;
      *v63++ = v64;
    }

    while (v63 != v48);
    goto LABEL_46;
  }

  v49 = v47 + 2 * (a8 & 0x7FFFFFFFFFFFFFC0);
  v50 = 0uLL;
  v51 = v47;
  do
  {
    v157.val[0] = *a7;
    v52 = *(a7 + 16);
    v162.val[0] = *(a7 + 32);
    v53 = *(a7 + 48);
    a7 += 64;
    v54 = v53;
    v162.val[1] = 0uLL;
    v167.val[0] = v52;
    v157.val[1] = 0uLL;
    v55 = v51;
    vst2q_s8(v55, v157);
    v55 += 32;
    v167.val[1] = 0uLL;
    vst2q_s8(v55, v167);
    v56 = v51 + 64;
    vst2q_s8(v56, v162);
    v57 = v51 + 96;
    vst2q_s8(v57, *(&v50 - 1));
    v51 += 128;
  }

  while (v51 != v49);
  if (v49 != v48)
  {
    goto LABEL_36;
  }

LABEL_46:
  v40 = v46 >= a8;
  v65 = v46 - a8;
  if (!v40)
  {
    goto LABEL_128;
  }

  v67 = v47 + 2 * a8;
  v68 = (v67 + 2 * a10);
  if (a10 < 0x40)
  {
    v69 = v67;
    if (v67 == v68)
    {
      goto LABEL_64;
    }

LABEL_54:
    v78 = result + 2 * a10 + 2 * a4 + 2 * a6 + 2 * a8 - v69 - 2;
    if (v78 < 0xE || (v69 < a9 + (v78 >> 1) + 1 ? (v79 = a9 >= (v78 & 0xFFFFFFFFFFFFFFFELL) + v69 + 2) : (v79 = 1), !v79))
    {
      v82 = a9;
      v83 = v69;
      goto LABEL_63;
    }

    v80 = (v78 >> 1) + 1;
    if (v78 >= 0x3E)
    {
      v81 = v80 & 0xFFFFFFFFFFFFFFE0;
      v135 = (v69 + 32);
      v136 = (a9 + 16);
      v137 = v80 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v138 = *v136[-2].i8;
        v139 = vmovl_u8(*v136);
        v140 = vmovl_high_u8(*v136->i8);
        v135[-2] = vmovl_u8(*v138.i8);
        v135[-1] = vmovl_high_u8(v138);
        *v135 = v139;
        v135[1] = v140;
        v135 += 4;
        v136 += 4;
        v137 -= 32;
      }

      while (v137);
      if (v80 == v81)
      {
        goto LABEL_64;
      }

      if ((v80 & 0x18) == 0)
      {
        v83 = (v69 + 2 * v81);
        v82 = (a9 + v81);
        goto LABEL_63;
      }
    }

    else
    {
      v81 = 0;
    }

    v82 = (a9 + (v80 & 0xFFFFFFFFFFFFFFF8));
    v83 = (v69 + 2 * (v80 & 0xFFFFFFFFFFFFFFF8));
    v141 = (v69 + 2 * v81);
    v142 = (a9 + v81);
    v143 = v81 - (v80 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v144 = *v142++;
      *v141++ = vmovl_u8(v144);
      v143 += 8;
    }

    while (v143);
    if (v80 == (v80 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_64;
    }

    do
    {
LABEL_63:
      v84 = *v82++;
      *v83++ = v84;
    }

    while (v83 != v68);
    goto LABEL_64;
  }

  v69 = v67 + 2 * (a10 & 0x7FFFFFFFFFFFFFC0);
  v70 = 0uLL;
  v71 = v67;
  do
  {
    v158.val[0] = *a9;
    v72 = *(a9 + 16);
    v163.val[0] = *(a9 + 32);
    v73 = *(a9 + 48);
    a9 += 64;
    v74 = v73;
    v163.val[1] = 0uLL;
    v168.val[0] = v72;
    v158.val[1] = 0uLL;
    v75 = v71;
    vst2q_s8(v75, v158);
    v75 += 32;
    v168.val[1] = 0uLL;
    vst2q_s8(v75, v168);
    v76 = v71 + 64;
    vst2q_s8(v76, v163);
    v77 = v71 + 96;
    vst2q_s8(v77, *(&v70 - 1));
    v71 += 128;
  }

  while (v71 != v69);
  if (v69 != v68)
  {
    goto LABEL_54;
  }

LABEL_64:
  if (v65 < a10)
  {
    goto LABEL_128;
  }

  v86 = v67 + 2 * a10;
  v87 = (v86 + 2 * a12);
  if (a12 >= 0x40)
  {
    v88 = v86 + 2 * (a12 & 0x7FFFFFFFFFFFFFC0);
    v89 = 0uLL;
    do
    {
      v159.val[0] = *a11;
      v90 = *(a11 + 16);
      v164.val[0] = *(a11 + 32);
      v91 = *(a11 + 48);
      a11 += 64;
      v92 = v91;
      v164.val[1] = 0uLL;
      v169.val[0] = v90;
      v159.val[1] = 0uLL;
      v93 = v86;
      vst2q_s8(v93, v159);
      v93 += 32;
      v169.val[1] = 0uLL;
      vst2q_s8(v93, v169);
      v94 = (v86 + 64);
      vst2q_s8(v94, v164);
      v95 = (v86 + 96);
      vst2q_s8(v95, *(&v89 - 1));
      v86 += 128;
    }

    while (v86 != v88);
    v86 = v88;
  }

  if (v86 != v87)
  {
    v96 = result + 2 * a12 + 2 * v26 + 2 * a6 + 2 * a8 + 2 * a10 - v86 - 2;
    if (v96 < 0xE || (v86 < a11 + (v96 >> 1) + 1 ? (v97 = a11 >= (v96 & 0xFFFFFFFFFFFFFFFELL) + v86 + 2) : (v97 = 1), !v97))
    {
      v100 = a11;
      v101 = v86;
      goto LABEL_79;
    }

    v98 = (v96 >> 1) + 1;
    if (v96 >= 0x3E)
    {
      v99 = v98 & 0xFFFFFFFFFFFFFFE0;
      v145 = (v86 + 32);
      v146 = (a11 + 16);
      v147 = v98 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v148 = *v146[-2].i8;
        v149 = vmovl_u8(*v146);
        v150 = vmovl_high_u8(*v146->i8);
        v145[-2] = vmovl_u8(*v148.i8);
        v145[-1] = vmovl_high_u8(v148);
        *v145 = v149;
        v145[1] = v150;
        v145 += 4;
        v146 += 4;
        v147 -= 32;
      }

      while (v147);
      if (v98 == v99)
      {
        return result;
      }

      if ((v98 & 0x18) == 0)
      {
        v101 = (v86 + 2 * v99);
        v100 = (a11 + v99);
        do
        {
LABEL_79:
          v102 = *v100++;
          *v101++ = v102;
        }

        while (v101 != v87);
        return result;
      }
    }

    else
    {
      v99 = 0;
    }

    v100 = (a11 + (v98 & 0xFFFFFFFFFFFFFFF8));
    v101 = (v86 + 2 * (v98 & 0xFFFFFFFFFFFFFFF8));
    v151 = (v86 + 2 * v99);
    v152 = (a11 + v99);
    v153 = v99 - (v98 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v154 = *v152++;
      *v151++ = vmovl_u8(v154);
      v153 += 8;
    }

    while (v153);
    if (v98 != (v98 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_79;
    }
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *(a2 + 8);
  v5 = *(a3 + 8);
  v6 = 0;
  if (((v5 | v4) & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  v7 = *(result + 8);
  v8 = v4 + v5;
  v9 = __OFADD__(v4, v5);
  if ((v7 & 0x80000000) != 0 || v9)
  {
    goto LABEL_29;
  }

  v10 = (v7 + v8);
  if (__OFADD__(v7, v8))
  {
    goto LABEL_9;
  }

  if (!v10)
  {
    v6 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_29;
  }

  if ((v10 & 0x80000000) != 0)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_29;
  }

  v11 = a4;
  v12 = *result;
  v13 = *a2;
  v14 = *a3;
  result = WTF::tryFastCompactMalloc((v10 + 20));
  v6 = v18;
  if (!v18)
  {
    goto LABEL_28;
  }

  v15 = (v18 + 20);
  *v18 = 2;
  *(v18 + 4) = v10;
  *(v18 + 8) = v18 + 20;
  *(v18 + 16) = 4;
  if (v7)
  {
    if (v7 == 1)
    {
      *v15 = *v12;
    }

    else
    {
      result = memcpy((v18 + 20), v12, v7);
    }
  }

  v16 = v10 - (v7 & 0x7FFFFFFF);
  if (v10 >= (v7 & 0x7FFFFFFF))
  {
    v17 = &v15[v7 & 0x7FFFFFFF];
    a4 = v11;
    if (v4)
    {
      if (v4 == 1)
      {
        *v17 = *v13;
      }

      else
      {
        result = memcpy(v17, v13, v4);
        a4 = v11;
      }
    }

    if (v16 >= v4)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          v17[v4] = *v14;
          goto LABEL_29;
        }

        result = memcpy(&v17[v4], v14, v5);
LABEL_28:
        a4 = v11;
      }

LABEL_29:
      *a4 = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, _BYTE *a3@<X2>, unint64_t a4@<X3>, atomic_uint **a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  v7 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        v19 = result;
        v13 = a7;
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v14 = v54;
        if (!v54)
        {
          goto LABEL_51;
        }

        v24 = (v54 + 5);
        *v54 = 2;
        v14[1] = v19;
        *(v14 + 1) = v14 + 5;
        v14[4] = 0;
        v25 = *a5;
        if (*a5)
        {
          atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
        }

        v53 = v25;
        WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>(v24, v7, a3, a4, &v53, a6);
        result = v53;
        v53 = 0;
        if (!result || atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_51;
        }

LABEL_50:
        result = WTF::StringImpl::destroy(result, v26);
        goto LABEL_51;
      }

      goto LABEL_12;
    }

LABEL_13:
    v14 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_52;
  }

  if (!result)
  {
    goto LABEL_13;
  }

  if ((result & 0x80000000) != 0)
  {
LABEL_12:
    v14 = 0;
LABEL_52:
    *a7 = v14;
    return result;
  }

  v8 = result;
  v13 = a7;
  result = WTF::tryFastCompactMalloc((result + 20));
  v14 = v54;
  if (!v54)
  {
LABEL_51:
    a7 = v13;
    goto LABEL_52;
  }

  v15 = v54 + 5;
  *v54 = 2;
  v14[1] = v8;
  *(v14 + 1) = v14 + 5;
  v14[4] = 4;
  v16 = *a5;
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  }

  v17 = a6;
  v18 = a4;
  if (a4)
  {
    if (a4 == 1)
    {
      *v15 = *a3;
    }

    else
    {
      result = memcpy(v14 + 5, a3, a4);
      v18 = a4;
      v17 = a6;
    }
  }

  v27 = v18;
  v28 = v7 - v18;
  if (v7 < v18)
  {
    goto LABEL_64;
  }

  v29 = &v15[v18];
  if (!v16)
  {
    if (v7 != v18)
    {
      *v29 = v17;
      goto LABEL_51;
    }

    goto LABEL_64;
  }

  atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  v26 = *(v16 + 1);
  v30 = v16[1];
  if ((v16[4] & 4) != 0)
  {
    if (v30)
    {
      if (v30 == 1)
      {
        *v29 = *v26;
      }

      else
      {
        result = memcpy(v29, v26, v30);
        v17 = a6;
      }
    }
  }

  else
  {
    v31 = &v29[v30];
    if (v30 < 0x10)
    {
      v32 = v29;
    }

    else
    {
      v32 = v29;
      do
      {
        v33 = vld2q_s8(v26);
        v26 = (v26 + 32);
        *v32 = v33;
        v32 += 16;
      }

      while (v32 != &v29[v30 & 0xFFFFFFF0]);
    }

    if (v32 != v31)
    {
      v34 = v14 + v30 + v27;
      v35 = v34 - v32 + 20;
      if (v35 < 4 || (v32 < v26 + 2 * v34 + -2 * v32 + 40 ? (v36 = v26 >= v34 + 20) : (v36 = 1), !v36))
      {
        v38 = v32;
        v39 = v26;
        goto LABEL_42;
      }

      if (v35 >= 0x20)
      {
        v37 = v35 & 0xFFFFFFFFFFFFFFE0;
        v42 = (v26 + 32);
        v43 = (v32 + 16);
        v44 = v35 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v46 = v42[-2];
          v45 = v42[-1];
          v48 = *v42;
          v47 = v42[1];
          v42 += 4;
          v43[-1] = vuzp1q_s8(v46, v45);
          *v43 = vuzp1q_s8(v48, v47);
          v43 += 2;
          v44 -= 32;
        }

        while (v44);
        if (v35 == v37)
        {
          goto LABEL_45;
        }

        if ((v35 & 0x1C) == 0)
        {
          v39 = (v26 + 2 * v37);
          v38 = (v32 + v37);
          do
          {
LABEL_42:
            v40 = *v39;
            v39 = (v39 + 2);
            *v38++ = v40;
          }

          while (v38 != v31);
          goto LABEL_45;
        }
      }

      else
      {
        v37 = 0;
      }

      v38 = (v32 + (v35 & 0xFFFFFFFFFFFFFFFCLL));
      v39 = (v26 + 2 * (v35 & 0xFFFFFFFFFFFFFFFCLL));
      v49 = (v26 + 2 * v37);
      v50 = (v32 + v37);
      v51 = v37 - (v35 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v52 = *v49++;
        *v50++ = vuzp1_s8(v52, v52).u32[0];
        v51 += 4;
      }

      while (v51);
      if (v35 != (v35 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_42;
      }
    }
  }

LABEL_45:
  v41 = v16[1];
  if (v28 > v41)
  {
    v29[v41] = v17;
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v16, v26);
    }

    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_51;
    }

    result = v16;
    goto LABEL_50;
  }

LABEL_64:
  __break(1u);
  return result;
}

mpark *WGSL::BoundsCheckVisitor::visit(mpark *this, WGSL::AST::IndexAccessExpression *a2)
{
  if ((*(a2 + 56) & 1) == 0)
  {
    v3 = this;
    if ((*(this + 32) & 1) == 0)
    {
      this = (*(*this + 216))(this, *(a2 + 8));
      if ((*(v3 + 32) & 1) == 0)
      {
        this = (*(*v3 + 216))(v3, *(a2 + 9));
      }
    }

    v9[0] = a2;
    v9[1] = v3;
    v4 = *(*(a2 + 8) + 24);
    if (v4)
    {
      v5 = *(v4 + 48);
      if (v5 == 10)
      {
        v4 = *(v4 + 8);
        if (!v4)
        {
          goto LABEL_15;
        }

        v5 = *(v4 + 48);
      }

      if (v5 == 11)
      {
        v4 = *(v4 + 8);
        if (!v4)
        {
          goto LABEL_15;
        }

        v5 = *(v4 + 48);
      }

      if (v5 == 2 || v5 == 1)
      {
        v6 = *(v4 + 8);
        goto LABEL_23;
      }
    }

LABEL_15:
    if (*(v4 + 48) == 3)
    {
      v7 = *(v4 + 16);
      if (v7 == 255)
      {
        v8 = -1;
      }

      else
      {
        v8 = *(v4 + 16);
      }

      if (v8 == 2)
      {
        if (v7 == 2)
        {
          WGSL::BoundsCheckVisitor::visit(WGSL::AST::IndexAccessExpression &)::$_4::operator()(v9);
        }
      }

      else if (v8 == 1)
      {
        if (v7 == 1)
        {
          v6 = *(v4 + 8);
LABEL_23:
          LODWORD(v13) = v6;
          v10 = 0;
          v11 = 0;
          WGSL::AST::Builder::construct<WGSL::AST::Unsigned32Literal,WGSL::SourceSpan,int,void>();
        }
      }

      else if (!*(v4 + 16))
      {
        v13 = 0;
        v14 = 0;
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v11 = 0;
        v12 = 0;
        v10 = off_2838D37C0;
        WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
      }
    }

    mpark::throw_bad_variant_access(this);
  }

  return this;
}

void WGSL::BoundsCheckVisitor::visit(WGSL::AST::IndexAccessExpression &)::$_4::operator()(void *a1)
{
  if (*(*(*a1 + 72) + 24) != *(*(a1[1] + 40) + 160))
  {
    v1 = 0;
    v2 = 0;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v4 = 0;
    v5[0] = 0;
    v3 = off_2838D37C0;
    WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
  }

  v1 = 0;
  v2 = 0;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v4 = 0;
  v5[0] = 0;
  v3 = off_2838D37C0;
  WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
}

WTF::StringImpl *WGSL::insertBoundsChecks@<X0>(WTF::StringImpl *this@<X0>, WGSL::ShaderModule *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = this;
  LOBYTE(v14) = 0;
  v15 = 0;
  v13 = &unk_2838D3C68;
  v16 = this;
  v5 = *(this + 23);
  if (!v5)
  {
    v10 = *(this + 19);
    if (!v10)
    {
      *a3 = 0;
      a3[32] = 0;
      return this;
    }

    v11 = *(this + 8);
    v12 = &v11[v10];
    goto LABEL_14;
  }

  v6 = *(this + 10);
  v7 = 8 * v5;
  do
  {
    if ((v15 & 1) == 0)
    {
      this = v13[3](&v13, *v6);
    }

    ++v6;
    v7 -= 8;
  }

  while (v7);
  v8 = v15;
  v9 = *(v3 + 19);
  if (!v9)
  {
LABEL_17:
    *a3 = 0;
    a3[32] = 0;
    v13 = &unk_2838D37E8;
    if ((v8 & 1) == 0)
    {
      return this;
    }

    goto LABEL_18;
  }

  if ((v15 & 1) == 0)
  {
    v11 = *(v3 + 8);
    v12 = &v11[v9];
    do
    {
LABEL_14:
      if ((v15 & 1) == 0)
      {
        this = v13[6](&v13, *v11);
      }

      ++v11;
    }

    while (v11 != v12);
    v8 = v15;
    goto LABEL_17;
  }

  *a3 = 0;
  a3[32] = 0;
  v13 = &unk_2838D37E8;
LABEL_18:
  this = v14;
  v14 = 0;
  if (this)
  {
    if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(this, a2);
    }
  }

  return this;
}

void WGSL::BoundsCheckVisitor::~BoundsCheckVisitor(WGSL::BoundsCheckVisitor *this, WTF::StringImpl *a2)
{
  *this = &unk_2838D37E8;
  if (*(this + 32) == 1)
  {
    v2 = *(this + 1);
    *(this + 1) = 0;
    if (v2)
    {
      if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v2, a2);
      }
    }
  }
}

{
  *this = &unk_2838D37E8;
  if (*(this + 32) == 1)
  {
    v3 = *(this + 1);
    *(this + 1) = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  JUMPOUT(0x22AA68560);
}

void WGSL::AST::IdentifierExpression::~IdentifierExpression(WGSL::AST::IdentifierExpression *this, WTF::StringImpl *a2)
{
  *(this + 8) = off_2838D37C0;
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, this + 32);
    }

    *(this + 48) = -1;
  }
}

{
  *(this + 8) = off_2838D37C0;
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, this + 32);
    }

    *(this + 48) = -1;
  }

  MEMORY[0x22AA68560](this, 0x10E3C40E9A702EBLL);
}

void WGSL::AST::Expression::~Expression(WGSL::AST::Expression *this)
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

void WGSL::AST::CallExpression::~CallExpression(WGSL::AST::CallExpression *this, void *a2)
{
  v3 = *(this + 9);
  if (v3)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v3, a2);
  }

  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, this + 32);
    }

    *(this + 48) = -1;
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

  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v4, this + 32);
    }

    *(this + 48) = -1;
  }

  MEMORY[0x22AA68560](this, 0x10E3C409E34A82FLL);
}

void WGSL::AST::Unsigned32Literal::~Unsigned32Literal(WGSL::AST::Unsigned32Literal *this)
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

void _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(uint64_t a1, _BYTE **a2, uint64_t *a3, unsigned int **a4)
{
  v4 = *a2;
  v5 = (*a2)[16];
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        if (v5 != 255)
        {
          if (v5 == 5)
          {
            *a3 = *a4;
            return;
          }

          v36 = a4;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v47, *a2);
          a4 = v36;
        }

        *v4 = *a4;
        v7 = 5;
        goto LABEL_92;
      }

      if (a1 == 6)
      {
        if (v5 != 255)
        {
          if (v5 == 6)
          {
            *a3 = *a4;
            return;
          }

          v40 = a4;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v48, *a2);
          a4 = v40;
        }

        *v4 = *a4;
        v7 = 6;
        goto LABEL_92;
      }

      if (v5 == 7)
      {
        goto LABEL_43;
      }

      v27 = *a4;
      if (*a4)
      {
        v28 = *v27;
        v29 = 24 * v28;
        v30 = WTF::fastMalloc((24 * v28 + 8));
        v31 = v30;
        *v30 = v28;
        if (v28)
        {
          v32 = (v30 + 6);
          v33 = (v27 + 6);
          do
          {
            *(v32 - 16) = 0;
            *v32 = -1;
            v34 = *v33;
            if (v34 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v34, &v49, v32 - 2, v33 - 2);
              *v32 = *v33;
            }

            v32 += 3;
            v33 += 3;
            v29 -= 24;
          }

          while (v29);
        }

        v5 = *(v4 + 16);
      }

      else
      {
        v31 = 0;
      }

      if (v5 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v50, v4);
      }

      *v4 = v31;
      v7 = 7;
      goto LABEL_92;
    }

    if (a1 == 8)
    {
      if (v5 == 8)
      {
LABEL_43:
        v10 = a3;
        v9 = a4;
        goto LABEL_44;
      }

      v11 = *a4;
      if (*a4)
      {
        v12 = *v11;
        v13 = 24 * v12;
        v14 = WTF::fastMalloc((24 * v12 + 8));
        v15 = v14;
        *v14 = v12;
        if (v12)
        {
          v16 = (v14 + 6);
          v17 = (v11 + 6);
          do
          {
            *(v16 - 16) = 0;
            *v16 = -1;
            v18 = *v17;
            if (v18 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v18, &v51, v16 - 2, v17 - 2);
              *v16 = *v17;
            }

            v16 += 3;
            v17 += 3;
            v13 -= 24;
          }

          while (v13);
        }

        v5 = *(v4 + 16);
      }

      else
      {
        v15 = 0;
      }

      if (v5 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v52, v4);
      }

      *v4 = v15;
      v7 = 8;
LABEL_92:
      *(v4 + 16) = v7;
      return;
    }

    if (a1 == 9)
    {
      v8 = *a4;
      if (v5 == 9)
      {
        *a3 = v8;
        v9 = a4 + 1;
        v10 = (a3 + 1);
LABEL_44:

        WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::operator=(v10, v9);
        return;
      }

      v19 = a4[1];
      if (v19)
      {
        v20 = *v19;
        v21 = 24 * v20;
        v22 = WTF::fastMalloc((24 * v20 + 8));
        v23 = v22;
        *v22 = v20;
        if (v20)
        {
          v24 = (v22 + 6);
          v25 = (v19 + 6);
          do
          {
            *(v24 - 16) = 0;
            *v24 = -1;
            v26 = *v25;
            if (v26 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v26, &v53, v24 - 2, v25 - 2);
              *v24 = *v25;
            }

            v24 += 3;
            v25 += 3;
            v21 -= 24;
          }

          while (v21);
        }
      }

      else
      {
        v23 = 0;
      }

      if (*(v4 + 16) != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v54, v4);
      }

      *v4 = v8;
      *(v4 + 8) = v23;
      v7 = 9;
      goto LABEL_92;
    }

    if (v5 != 255)
    {
      if (v5 == 10)
      {

        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::operator=(a3, a4);
        return;
      }

      v41 = a4;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v55, *a2);
      a4 = v41;
    }

    *(v4 + 16) = -1;
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(v4, a4);
    v7 = 10;
    goto LABEL_92;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (v5 != 255)
      {
        if (v5 == 2)
        {
          *a3 = *a4;
          return;
        }

        v35 = a4;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v44, *a2);
        a4 = v35;
      }

      *v4 = *a4;
      v7 = 2;
      goto LABEL_92;
    }

    if (a1 == 3)
    {
      if (v5 == 255)
      {
LABEL_14:
        *v4 = *a4;
        v7 = 3;
        goto LABEL_92;
      }

      if (v5 != 3)
      {
        v6 = a4;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v45, *a2);
        a4 = v6;
        goto LABEL_14;
      }

LABEL_38:
      *a3 = *a4;
      return;
    }

    if (v5 != 255)
    {
      if (v5 == 4)
      {
        goto LABEL_38;
      }

      v37 = a4;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, *a2);
      a4 = v37;
    }

    *v4 = *a4;
    v7 = 4;
    goto LABEL_92;
  }

  if (a1)
  {
    if (v5 != 255)
    {
      if (v5 == 1)
      {
        *a3 = *a4;
        return;
      }

      v39 = a4;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v43, *a2);
      a4 = v39;
    }

    *v4 = *a4;
    v7 = 1;
    goto LABEL_92;
  }

  if (v5 != 255)
  {
    if (!(*a2)[16])
    {
      *a3 = *a4;
      return;
    }

    v38 = a4;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v42, *a2);
    a4 = v38;
  }

  *v4 = *a4;
  *(v4 + 16) = 0;
}

WTF **WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::operator=(WTF **a1, _BYTE *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *v3;
    v5 = 24 * v4;
    v6 = WTF::fastMalloc((24 * v4 + 8));
    v7 = v6;
    *v6 = v4;
    if (v4)
    {
      v8 = v6 + 3;
      v9 = (v3 + 6);
      do
      {
        *(v8 - 16) = 0;
        *v8 = -1;
        v10 = *v9;
        if (v10 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v10, &v16, v8 - 2, v9 - 2);
          *v8 = *v9;
        }

        v8 += 3;
        v9 += 3;
        v5 -= 24;
      }

      while (v5);
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = *a1;
  *a1 = v7;
  if (v11)
  {
    v12 = *v11;
    if (v12)
    {
      v13 = 24 * v12;
      v14 = v11 + 24;
      do
      {
        a2 = v14 - 16;
        if (*v14 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v17, a2);
        }

        *v14 = -1;
        v14 += 24;
        v13 -= 24;
      }

      while (v13);
    }

    WTF::fastFree(v11, a2);
  }

  return a1;
}

uint64_t *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::operator=(uint64_t *a1, unsigned __int8 **a2)
{
  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::ConstantValue>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::HashTable(&v9, a2);
  v4 = *a1;
  *a1 = v9;
  v9 = v4;
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = v4;
      do
      {
        v7 = *v6;
        if (*v6 != -1)
        {
          if (*(v6 + 24) != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v10, (v6 + 8));
            v7 = *v6;
          }

          *(v6 + 24) = -1;
          *v6 = 0;
          if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, v3);
          }
        }

        v6 += 32;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), v3);
  }

  return a1;
}

void WGSL::AST::BinaryExpression::~BinaryExpression(WGSL::AST::BinaryExpression *this)
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

void WGSL::AST::IndexAccessExpression::~IndexAccessExpression(WGSL::AST::IndexAccessExpression *this)
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

uint64_t mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(uint64_t result, uint64_t *a2)
{
  *result = 0;
  *(result + 16) = -1;
  LODWORD(v2) = *(a2 + 16);
  if (v2 > 5)
  {
    if (*(a2 + 16) > 8u)
    {
      if (v2 == 9)
      {
        *result = *a2;
        v2 = a2[1];
        a2[1] = 0;
        *(result + 8) = v2;
        LOBYTE(v2) = *(a2 + 16);
      }

      else
      {
        if (v2 != 10)
        {
          return result;
        }

        *result = 0;
        v2 = *a2;
        *a2 = 0;
        *result = v2;
        LOBYTE(v2) = 10;
      }
    }

    else if (v2 == 6)
    {
      *result = *a2;
      LOBYTE(v2) = 6;
    }

    else if (v2 == 7)
    {
      v2 = *a2;
      *a2 = 0;
      *result = v2;
      LOBYTE(v2) = 7;
    }

    else
    {
      v2 = *a2;
      *a2 = 0;
      *result = v2;
      LOBYTE(v2) = 8;
    }
  }

  else if (*(a2 + 16) > 2u)
  {
    if (v2 == 3)
    {
      *result = *a2;
      LOBYTE(v2) = 3;
    }

    else if (v2 == 4)
    {
      *result = *a2;
      LOBYTE(v2) = 4;
    }

    else
    {
      *result = *a2;
      LOBYTE(v2) = 5;
    }
  }

  else if (*(a2 + 16))
  {
    if (v2 == 1)
    {
      *result = *a2;
    }

    else
    {
      *result = *a2;
      LOBYTE(v2) = 2;
    }
  }

  else
  {
    *result = *a2;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21IndexAccessExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEED1Ev(uint64_t result)
{
  *result = &unk_2838D3FC0;
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21IndexAccessExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEED0Ev(uint64_t a1)
{
  *a1 = &unk_2838D3FC0;
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

__n128 _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21IndexAccessExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE7__cloneEPNS0_6__baseISI_EE(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2838D3FC0;
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

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21IndexAccessExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE7destroyEv(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21IndexAccessExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEE18destroy_deallocateEv(uint64_t a1)
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

__n128 _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceINS2_3AST21IndexAccessExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vIS9_NS5_10ExpressionEEEvE4typeERS8_RS9_EUlvE_NS_9allocatorISF_EEFvvEEclEv(uint64_t a1)
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

uint64_t WTF::Vector<std::function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
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

    v7 = *(result + 12);
    v8 = WTF::fastMalloc((32 * v6));
    *(v4 + 8) = v6;
    *v4 = v8;
    if (v7)
    {
      v10 = v8;
      v11 = 32 * v7;
      v12 = v5;
      v13 = v5;
      while (1)
      {
        v14 = *(v13 + 3);
        if (!v14)
        {
          break;
        }

        if (v13 == v14)
        {
          *(v10 + 24) = v10;
          (*(**(v13 + 3) + 24))(*(v13 + 3), v10);
          v15 = *(v13 + 3);
          if (v13 != v15)
          {
            goto LABEL_19;
          }

LABEL_17:
          (*(*v15 + 32))(v15);
          goto LABEL_13;
        }

        *(v10 + 24) = v14;
        *(v13 + 3) = 0;
LABEL_13:
        v10 += 32;
        v13 = (v13 + 32);
        v12 = (v12 + 32);
        v11 -= 32;
        if (!v11)
        {
          goto LABEL_21;
        }
      }

      *(v10 + 24) = 0;
      v15 = *(v13 + 3);
      if (v13 != v15)
      {
LABEL_19:
        if (v15)
        {
          (*(*v15 + 40))(v15);
        }

        goto LABEL_13;
      }

      goto LABEL_17;
    }

LABEL_21:
    if (v5)
    {
      if (*v4 == v5)
      {
        *v4 = 0;
        *(v4 + 8) = 0;
      }

      WTF::fastFree(v5, v9);
    }

    return 1;
  }

  return result;
}

void WGSL::AST::UnaryExpression::~UnaryExpression(WGSL::AST::UnaryExpression *this)
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

uint64_t WGSL::CallGraphBuilder::visit(uint64_t this, Function *a2)
{
  v3 = this;
  v5 = (this + 72);
  v4 = *(this + 72);
  if (!v4)
  {
    this = WTF::HashTable<WGSL::AST::Function *,WTF::KeyValuePair<WGSL::AST::Function *,WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Function *,WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashMap<WGSL::AST::Function *,WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Function *>,WTF::FastMalloc>::rehash((this + 72), 8u, 0);
    v4 = *v5;
  }

  v6 = *(v4 - 8);
  v7 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = v4 + 24 * v10;
  v12 = *v11;
  if (!*v11)
  {
LABEL_11:
    *v11 = a2;
    v16 = (v11 + 8);
    v15 = *(v11 + 8);
    v17 = *(v11 + 20);
    if (v17)
    {
      v18 = 24 * v17;
      v19 = v15 + 8;
      do
      {
        v20 = *v19;
        if (*v19)
        {
          *v19 = 0;
          *(v19 + 2) = 0;
          WTF::fastFree(v20, a2);
        }

        v19 += 24;
        v18 -= 24;
      }

      while (v18);
      v15 = *v16;
    }

    if (v15)
    {
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      WTF::fastFree(v15, a2);
    }

    *v16 = 0;
    *(v11 + 16) = 0;
    v21 = *v5;
    if (*v5)
    {
      v22 = *(v21 - 16);
      v23 = *(v21 - 12) + 1;
      *(v21 - 12) = v23;
      v24 = (v22 + v23);
      v25 = *(v21 - 4);
      if (v25 <= 0x400)
      {
        goto LABEL_21;
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
LABEL_21:
        if (3 * v25 <= 4 * v24)
        {
          if (!v25)
          {
            v26 = 8;
LABEL_27:
            v11 = WTF::HashTable<WGSL::AST::Function *,WTF::KeyValuePair<WGSL::AST::Function *,WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Function *,WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashMap<WGSL::AST::Function *,WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Function *>,WTF::FastMalloc>::rehash(v5, v26, v11);
            goto LABEL_28;
          }

LABEL_26:
          v26 = v25 << (6 * v23 >= (2 * v25));
          goto LABEL_27;
        }

LABEL_28:
        *(v3 + 88) = v11 + 8;
        *(v3 + 96) = a2;
        this = WGSL::AST::Visitor::visit(v3, a2);
        v28 = *(v3 + 80);
        if (v28)
        {
          *(v3 + 80) = 0;
          this = WTF::fastFree((v28 - 16), v27);
        }

        *(v3 + 88) = 0;
        *(v3 + 96) = 0;
        return this;
      }
    }

    if (v25 <= 2 * v24)
    {
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  v13 = 0;
  v14 = 1;
  while (v12 != a2)
  {
    if (v12 == -1)
    {
      v13 = v11;
    }

    v10 = (v10 + v14) & v6;
    v11 = v4 + 24 * v10;
    v12 = *v11;
    ++v14;
    if (!*v11)
    {
      if (v13)
      {
        *v13 = 0;
        v13[1] = 0;
        v13[2] = 0;
        --*(*v5 - 16);
        v11 = v13;
      }

      goto LABEL_11;
    }
  }

  return this;
}

uint64_t WGSL::CallGraphBuilder::visit(WGSL::CallGraphBuilder *this, WGSL::AST::CallExpression *a2)
{
  v4 = *(a2 + 21);
  if (v4)
  {
    v5 = *(a2 + 9);
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      WGSL::AST::Visitor::visit(this, v7);
      v6 -= 8;
    }

    while (v6);
  }

  v8 = *(a2 + 8);
  result = (*(*v8 + 2))(v8);
  if (result != 21)
  {
    return result;
  }

  v11 = *(this + 8);
  if (!v11)
  {
    return result;
  }

  v12 = v8[11];
  if (v12 == -1)
  {
LABEL_67:
    __break(0xC471u);
    JUMPOUT(0x22570C4E8);
  }

  if (!v12)
  {
    __break(0xC471u);
    JUMPOUT(0x22570C508);
  }

  v13 = *(v11 - 8);
  v14 = *(v12 + 4);
  if (v14 < 0x100)
  {
    v15 = WTF::StringImpl::hashSlowCase(v12);
  }

  else
  {
    v15 = v14 >> 8;
  }

  for (i = 0; ; v15 = i + v17)
  {
    v17 = v15 & v13;
    result = *(v11 + 16 * v17);
    if (result != -1)
    {
      if (!result)
      {
        return result;
      }

      result = WTF::equal(result, v8[11], v10);
      if (result)
      {
        break;
      }
    }

    ++i;
  }

  v18 = v11 + 16 * v17;
  v19 = *(this + 8);
  if (!v19 || v18 != v19 + 16 * *(v19 - 4))
  {
    v21 = *(this + 13);
    v20 = *(this + 14);
    result = this + 104;
    if (v21)
    {
      if (v20 + 1 != v21)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = *(this + 32);
      if (v20)
      {
        if (v20 != v22 - 1)
        {
LABEL_29:
          v23 = *(this + 32);
          if (v20 >= v23)
          {
            __break(1u);
            goto LABEL_67;
          }

          v24 = *(v18 + 8);
          *(*(this + 15) + 8 * v20) = v24;
          if (v20 == v23 - 1)
          {
            v25 = 0;
          }

          else
          {
            v25 = v20 + 1;
          }

          *(this + 14) = v25;
          if (v24 == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x22570C528);
          }

          if (!v24)
          {
            __break(0xC471u);
            JUMPOUT(0x22570C548);
          }

          v26 = *(this + 10);
          v27 = *(*(this + 11) + 12);
          if (!v26)
          {
            result = WTF::HashTable<WGSL::AST::Function *,WTF::KeyValuePair<WGSL::AST::Function *,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Function *,unsigned int>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashMap<WGSL::AST::Function *,unsigned int,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Function *>,WTF::FastMalloc>::rehash(this + 10, 8u);
            v26 = *(this + 10);
            v24 = *(v18 + 8);
          }

          v28 = *(v26 - 8);
          v29 = (v24 + ~(v24 << 32)) ^ ((v24 + ~(v24 << 32)) >> 22);
          v30 = 9 * ((v29 + ~(v29 << 13)) ^ ((v29 + ~(v29 << 13)) >> 8));
          v31 = (v30 ^ (v30 >> 15)) + ~((v30 ^ (v30 >> 15)) << 27);
          v32 = v28 & ((v31 >> 31) ^ v31);
          v33 = (v26 + 16 * v32);
          v34 = *v33;
          if (*v33)
          {
            v35 = 0;
            v36 = 1;
            while (v34 != v24)
            {
              if (v34 == -1)
              {
                v35 = v33;
              }

              v32 = (v32 + v36) & v28;
              v33 = (v26 + 16 * v32);
              v34 = *v33;
              ++v36;
              if (!*v33)
              {
                if (v35)
                {
                  *v35 = 0;
                  v35[1] = 0;
                  v26 = *(this + 10);
                  --*(v26 - 16);
                  v24 = *(v18 + 8);
                  v33 = v35;
                }

                goto LABEL_45;
              }
            }

            v52 = *(this + 11);
            v53 = *(v33 + 2);
            if (*(v52 + 12) > v53)
            {
              v54 = *v52 + 24 * v53;
              v58[0] = *(this + 12);
              v58[1] = a2;
              v55 = *(v54 + 20);
              if (v55 == *(v54 + 16))
              {
                result = WTF::Vector<std::tuple<WGSL::AST::Function *,WGSL::AST::CallExpression *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v54 + 8, v55 + 1, v58);
                v55 = *(v54 + 20);
                v56 = *(v54 + 8);
                v57 = *result;
              }

              else
              {
                v56 = *(v54 + 8);
                v57 = *v58;
              }

              *(v56 + 16 * v55) = v57;
              ++*(v54 + 20);
              return result;
            }

            goto LABEL_67;
          }

LABEL_45:
          *v33 = v24;
          *(v33 + 2) = v27;
          v37 = *(v26 - 16);
          v38 = *(v26 - 12) + 1;
          *(v26 - 12) = v38;
          v39 = (v37 + v38);
          v40 = *(v26 - 4);
          if (v40 > 0x400)
          {
            if (v40 > 2 * v39)
            {
              goto LABEL_52;
            }
          }

          else
          {
            if (3 * v40 > 4 * v39)
            {
              goto LABEL_52;
            }

            if (!v40)
            {
              v41 = 8;
LABEL_51:
              WTF::HashTable<WGSL::AST::Function *,WTF::KeyValuePair<WGSL::AST::Function *,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Function *,unsigned int>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashMap<WGSL::AST::Function *,unsigned int,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Function *>,WTF::FastMalloc>::rehash(this + 10, v41);
LABEL_52:
              v42 = *(v18 + 8);
              v58[0] = v42;
              v44 = *(this + 11);
              v43 = *(this + 12);
              result = WTF::fastMalloc(0x10);
              v59 = 1;
              v58[1] = result;
              *result = v43;
              *(result + 8) = a2;
              v60 = 1;
              v45 = v44[3];
              if (v45 == v44[2])
              {
                v46 = WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v44, v45 + 1, v58);
                v48 = *v44 + 24 * v44[3];
                v49 = *v46;
                *(v48 + 8) = 0;
                *(v48 + 16) = 0;
                *v48 = v49;
                v50 = *(v46 + 8);
                *(v46 + 8) = 0;
                *(v48 + 8) = v50;
                LODWORD(v50) = *(v46 + 16);
                *(v46 + 16) = 0;
                *(v48 + 16) = v50;
                LODWORD(v50) = *(v46 + 20);
                *(v46 + 20) = 0;
                *(v48 + 20) = v50;
                result = v58[1];
                ++v44[3];
                if (result)
                {
                  v58[1] = 0;
                  v59 = 0;
                  return WTF::fastFree(result, v47);
                }
              }

              else
              {
                v51 = (*v44 + 24 * v45);
                *v51 = v42;
                v51[1] = result;
                v51[2] = 0x100000001;
                v44[3] = v45 + 1;
              }

              return result;
            }
          }

          v41 = v40 << (6 * v38 >= (2 * v40));
          goto LABEL_51;
        }
      }

      else if (v22)
      {
        v20 = 0;
        goto LABEL_29;
      }
    }

    result = WTF::Deque<WGSL::AST::Function *,0ul>::expandCapacity(result);
    v20 = *(this + 14);
    goto LABEL_29;
  }

  return result;
}

void WGSL::buildCallGraph(WGSL *this, WGSL::ShaderModule *a2)
{
  LOBYTE(v77) = 0;
  v78 = 0;
  v76 = &unk_2838D4030;
  v79 = this;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  *v84 = 0u;
  v85 = 0;
  v2 = *(this + 19);
  if (!v2)
  {
    goto LABEL_82;
  }

  v3 = *(this + 8);
  v4 = &v3[v2];
  while (2)
  {
    v8 = *v3;
    if ((*(**v3 + 16))(*v3, a2) != 26)
    {
      goto LABEL_10;
    }

    v10 = *(v8 + 48);
    if (v10 == -1)
    {
      goto LABEL_133;
    }

    if (!v10)
    {
      __break(0xC471u);
      JUMPOUT(0x22570CCFCLL);
    }

    v11 = v81;
    if (!v81)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::AST::Function *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::AST::Function *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::AST::Function *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(&v81, 8u);
      v11 = v81;
      if (!v81)
      {
        v12 = 0;
        v13 = *(v8 + 48);
        v14 = *(v13 + 4);
        if (v14 >= 0x100)
        {
          goto LABEL_17;
        }

LABEL_19:
        v15 = WTF::StringImpl::hashSlowCase(v13);
        goto LABEL_20;
      }
    }

    v12 = *(v11 - 8);
    v13 = *(v8 + 48);
    v14 = *(v13 + 4);
    if (v14 < 0x100)
    {
      goto LABEL_19;
    }

LABEL_17:
    v15 = v14 >> 8;
LABEL_20:
    v16 = 0;
    for (i = 1; ; ++i)
    {
      v18 = v15 & v12;
      v19 = (v11 + 16 * (v15 & v12));
      v20 = *v19;
      if (*v19 == -1)
      {
        v16 = (v11 + 16 * v18);
        goto LABEL_22;
      }

      if (!v20)
      {
        break;
      }

      if (WTF::equal(v20, *(v8 + 48), v9))
      {
        goto LABEL_43;
      }

LABEL_22:
      v15 = i + v18;
    }

    if (v16)
    {
      v20 = 0;
      *v16 = 0;
      v16[1] = 0;
      --*(v81 - 16);
      v19 = v16;
    }

    v21 = *(v8 + 48);
    if (v21)
    {
      atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
      v20 = *v19;
    }

    *v19 = v21;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, a2);
    }

    v19[1] = v8;
    v22 = v81;
    if (v81)
    {
      v23 = *(v81 - 16);
      v24 = *(v81 - 12) + 1;
      *(v81 - 12) = v24;
      v25 = (v23 + v24);
      v26 = *(v22 - 4);
      if (v26 <= 0x400)
      {
        goto LABEL_36;
      }

LABEL_40:
      if (v26 <= 2 * v25)
      {
LABEL_41:
        v27 = v26 << (6 * v24 >= (2 * v26));
        goto LABEL_42;
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
        goto LABEL_40;
      }

LABEL_36:
      if (3 * v26 <= 4 * v25)
      {
        if (v26)
        {
          goto LABEL_41;
        }

        v27 = 8;
LABEL_42:
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::AST::Function *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::AST::Function *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::AST::Function *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(&v81, v27);
      }
    }

LABEL_43:
    v28 = *(v8 + 121);
    if ((v28 & 0x100) != 0)
    {
      v86 = v8;
      v87 = v28;
      v29 = *(v8 + 48);
      if (v29)
      {
        atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
      }

      v88 = v29;
      if (HIDWORD(v80) == DWORD2(v80))
      {
        v30 = WTF::Vector<WGSL::CallGraph::EntryPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v80, HIDWORD(v80) + 1, &v86);
        v31 = v80 + 24 * HIDWORD(v80);
        v32 = *v30;
        *(v31 + 8) = *(v30 + 8);
        *v31 = v32;
        v33 = (v30 + 16);
      }

      else
      {
        v31 = v80 + 24 * HIDWORD(v80);
        v34 = v86;
        *(v31 + 8) = v87;
        *v31 = v34;
        v33 = &v88;
      }

      v35 = *v33;
      *v33 = 0;
      *(v31 + 16) = v35;
      ++HIDWORD(v80);
      v36 = v88;
      v88 = 0;
      if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, a2);
      }

      v5 = v84[0];
      if (*(&v83 + 1))
      {
        v37 = v85;
        v6 = v85;
        if ((v84[0] + 1) == *(&v83 + 1))
        {
          goto LABEL_59;
        }

LABEL_5:
        if (v5 < v6)
        {
          *(v84[1] + v5) = v8;
          if (v5 == (v6 - 1))
          {
            v7 = 0;
          }

          else
          {
            v7 = (v5 + 1);
          }

          v84[0] = v7;
          goto LABEL_10;
        }

LABEL_132:
        __break(1u);
LABEL_133:
        __break(0xC471u);
LABEL_136:
        JUMPOUT(0x22570CCDCLL);
      }

      v6 = v85;
      if (!v84[0])
      {
        v37 = 0;
        if (!v85)
        {
          goto LABEL_59;
        }

        goto LABEL_5;
      }

      v37 = v85;
      if (v84[0] != (v85 - 1))
      {
        goto LABEL_5;
      }

LABEL_59:
      v38 = v37 + (v37 >> 2);
      if (v38 >= 0x1FFFFFFF)
      {
        __break(0xC471u);
        goto LABEL_136;
      }

      v39 = v84[1];
      if (v38 <= 0xF)
      {
        v38 = 15;
      }

      v40 = v38 + 1;
      v41 = WTF::fastMalloc((8 * (v38 + 1)));
      LODWORD(v85) = v40;
      v84[1] = v41;
      v42 = v84[0] - *(&v83 + 1);
      if (v84[0] >= *(&v83 + 1))
      {
        if (v37 < *(&v83 + 1))
        {
          goto LABEL_132;
        }

        if (v42 == -1)
        {
          v42 = v37 - *(&v83 + 1);
        }

        else if (v37 - *(&v83 + 1) < v42)
        {
          goto LABEL_132;
        }

        memcpy(v41 + 8 * *(&v83 + 1), v39 + 8 * *(&v83 + 1), 8 * v42);
        if (!v39)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v84[0] > v37)
        {
          goto LABEL_132;
        }

        memcpy(v41, v39, 8 * v84[0]);
        v43 = v37 - *(&v83 + 1);
        if (v37 < *(&v83 + 1) || v85 < v43)
        {
          goto LABEL_132;
        }

        v44 = v85 - (v37 - *(&v83 + 1));
        memcpy(v84[1] + 8 * v44, v39 + 8 * *(&v83 + 1), 8 * v43);
        *(&v83 + 1) = v44;
        if (!v39)
        {
LABEL_4:
          v5 = v84[0];
          v6 = v85;
          goto LABEL_5;
        }
      }

      if (v84[1] == v39)
      {
        v84[1] = 0;
        LODWORD(v85) = 0;
      }

      WTF::fastFree(v39, a2);
      goto LABEL_4;
    }

LABEL_10:
    if (++v3 != v4)
    {
      continue;
    }

    break;
  }

  v45 = *(&v83 + 1);
  if (*(&v83 + 1) != v84[0])
  {
    while (v45 < v85)
    {
      v46 = *(v84[1] + v45);
      if (v45 == v85 - 1)
      {
        v47 = 0;
      }

      else
      {
        v47 = v45 + 1;
      }

      *(&v83 + 1) = v47;
      v76[7](&v76, v46);
      v45 = *(&v83 + 1);
      if (*(&v83 + 1) == v84[0])
      {
        goto LABEL_82;
      }
    }

    goto LABEL_132;
  }

LABEL_82:
  v48 = v79;
  if (*(v79 + 352) == 1)
  {
    v49 = *(v79 + 83);
    v50 = *(v79 + 40);
    if (v49)
    {
      v51 = 24 * v49;
      v52 = (v50 + 16);
      do
      {
        v53 = *v52;
        *v52 = 0;
        if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v53, a2);
        }

        v52 += 3;
        v51 -= 24;
      }

      while (v51);
      v50 = *(v48 + 40);
    }

    if (v50)
    {
      *(v48 + 40) = 0;
      *(v48 + 82) = 0;
      WTF::fastFree(v50, a2);
    }

    *(v48 + 40) = v80;
    v56 = *(&v80 + 1);
    v80 = 0uLL;
    *(v48 + 41) = v56;
    v57 = v81;
    *&v81 = 0;
    v58 = *(v48 + 42);
    *(v48 + 42) = v57;
    if (v58)
    {
      v59 = *(v58 - 1);
      if (v59)
      {
        v60 = v58;
        do
        {
          v61 = *v60;
          if (*v60 != -1)
          {
            *v60 = 0;
            if (v61)
            {
              if (atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v61, a2);
              }
            }
          }

          v60 += 2;
          --v59;
        }

        while (v59);
      }

      WTF::fastFree((v58 - 2), a2);
    }

    v62 = *(&v81 + 1);
    *(&v81 + 1) = 0;
    v63 = *(v48 + 43);
    *(v48 + 43) = v62;
    if (v63)
    {
      v64 = *(v63 - 4);
      if (v64)
      {
        for (j = 0; j != v64; ++j)
        {
          v66 = v63 + 24 * j;
          if (*v66 != -1)
          {
            v67 = *(v66 + 20);
            v68 = *(v66 + 8);
            if (v67)
            {
              v69 = 24 * v67;
              v70 = v68 + 8;
              do
              {
                v71 = *v70;
                if (*v70)
                {
                  *v70 = 0;
                  *(v70 + 2) = 0;
                  WTF::fastFree(v71, a2);
                }

                v70 += 24;
                v69 -= 24;
              }

              while (v69);
              v68 = *(v66 + 8);
            }

            if (v68)
            {
              *(v66 + 8) = 0;
              *(v66 + 16) = 0;
              WTF::fastFree(v68, a2);
            }
          }
        }
      }

      WTF::fastFree((v63 - 16), a2);
    }
  }

  else
  {
    *(v79 + 40) = v80;
    v54 = *(&v80 + 1);
    v80 = 0uLL;
    *(v48 + 41) = v54;
    v55 = v81;
    v81 = 0uLL;
    *(v48 + 21) = v55;
    *(v48 + 352) = 1;
  }

  v76 = &unk_2838D4030;
  v72 = v84[0] - *(&v83 + 1);
  if (v84[0] >= *(&v83 + 1))
  {
    if (v85 < *(&v83 + 1) || v72 != -1 && v85 - *(&v83 + 1) < v72)
    {
      goto LABEL_132;
    }
  }

  else if (v84[0] > v85 || v85 < *(&v83 + 1))
  {
    goto LABEL_132;
  }

  v73 = v84[1];
  if (v84[1])
  {
    v84[1] = 0;
    LODWORD(v85) = 0;
    WTF::fastFree(v73, a2);
  }

  if (v82)
  {
    WTF::fastFree((v82 - 16), a2);
  }

  WGSL::CallGraph::~CallGraph(&v80, a2);
  v76 = &unk_2838D37E8;
  if (v78 == 1)
  {
    v75 = v77;
    v77 = 0;
    if (v75)
    {
      if (atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v75, v74);
      }
    }
  }
}

void WGSL::CallGraphBuilder::~CallGraphBuilder(WGSL::CallGraphBuilder *this, void *a2)
{
  *this = &unk_2838D4030;
  v3 = *(this + 32);
  v4 = *(this + 13);
  v5 = *(this + 14);
  v6 = v5 - v4;
  if (v5 >= v4)
  {
    v8 = v3 >= v4;
    v7 = v3 - v4;
    if (!v8)
    {
      goto LABEL_21;
    }

    v8 = v6 == -1 || v7 >= v6;
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  else if (v5 > v3 || v3 < v4)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v9 = *(this + 15);
  if (v9)
  {
    *(this + 15) = 0;
    *(this + 32) = 0;
    WTF::fastFree(v9, a2);
  }

  v10 = *(this + 10);
  if (v10)
  {
    WTF::fastFree((v10 - 16), a2);
  }

  WGSL::CallGraph::~CallGraph((this + 48), a2);
  *this = &unk_2838D37E8;
  if (*(this + 32) == 1)
  {
    v12 = *(this + 1);
    *(this + 1) = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }
    }
  }
}

{
  *this = &unk_2838D4030;
  v3 = *(this + 32);
  v4 = *(this + 13);
  v5 = *(this + 14);
  v6 = v5 - v4;
  if (v5 >= v4)
  {
    v8 = v3 >= v4;
    v7 = v3 - v4;
    if (!v8)
    {
      goto LABEL_23;
    }

    v8 = v6 == -1 || v7 >= v6;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  else if (v5 > v3 || v3 < v4)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = *(this + 15);
  if (v9)
  {
    *(this + 15) = 0;
    *(this + 32) = 0;
    WTF::fastFree(v9, a2);
  }

  v10 = *(this + 10);
  if (v10)
  {
    WTF::fastFree((v10 - 16), a2);
  }

  WGSL::CallGraph::~CallGraph((this + 48), a2);
  *this = &unk_2838D37E8;
  if (*(this + 32) == 1)
  {
    v12 = *(this + 1);
    *(this + 1) = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }
    }
  }

LABEL_24:
  JUMPOUT(0x22AA68560);
}

void WGSL::CallGraph::~CallGraph(WGSL::CallGraph *this, void *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = v3 + 24 * i;
        if (*v6 != -1)
        {
          v7 = *(v6 + 20);
          v8 = *(v6 + 8);
          if (v7)
          {
            v9 = 24 * v7;
            v10 = v8 + 8;
            do
            {
              v11 = *v10;
              if (*v10)
              {
                *v10 = 0;
                *(v10 + 2) = 0;
                WTF::fastFree(v11, a2);
              }

              v10 += 24;
              v9 -= 24;
            }

            while (v9);
            v8 = *(v6 + 8);
          }

          if (v8)
          {
            *(v6 + 8) = 0;
            *(v6 + 16) = 0;
            WTF::fastFree(v8, a2);
          }
        }
      }
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v12 = *(this + 2);
  if (v12)
  {
    v13 = *(v12 - 4);
    if (v13)
    {
      v14 = *(this + 2);
      do
      {
        v15 = *v14;
        if (*v14 != -1)
        {
          *v14 = 0;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, a2);
            }
          }
        }

        v14 += 2;
        --v13;
      }

      while (v13);
    }

    WTF::fastFree((v12 - 16), a2);
  }

  v16 = *(this + 3);
  v17 = *this;
  if (v16)
  {
    v18 = 24 * v16;
    v19 = (v17 + 16);
    do
    {
      v20 = *v19;
      *v19 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, a2);
      }

      v19 += 3;
      v18 -= 24;
    }

    while (v18);
    v17 = *this;
  }

  if (v17)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v17, a2);
  }
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WGSL::AST::Function *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WGSL::AST::Function *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WGSL::AST::Function *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
    v9 = 0;
    while (1)
    {
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
            v14 = *(v11 + 4);
            if (v14 >= 0x100)
            {
              goto LABEL_12;
            }

LABEL_14:
            v15 = WTF::StringImpl::hashSlowCase(v11);
          }

          else
          {
            v13 = 0;
            v14 = *(v11 + 4);
            if (v14 < 0x100)
            {
              goto LABEL_14;
            }

LABEL_12:
            v15 = v14 >> 8;
          }

          v16 = 0;
          do
          {
            v17 = v15 & v13;
            v15 = ++v16 + v17;
          }

          while (*(v12 + 16 * v17));
          v18 = *v10;
          *v10 = 0;
          *(v12 + 16 * v17) = v18;
          v19 = *v10;
          *v10 = 0;
          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v8);
          }

          goto LABEL_6;
        }

        *v10 = 0;
      }

LABEL_6:
      if (++v9 == v5)
      {
        goto LABEL_21;
      }
    }
  }

  if (v4)
  {
LABEL_21:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

unint64_t WTF::Vector<WGSL::CallGraph::EntryPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 24 * a1[3] <= a3)
  {
    WTF::Vector<WGSL::CallGraph::EntryPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    WTF::Vector<WGSL::CallGraph::EntryPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return *a1 + v5;
  }
}

unsigned int *WTF::Vector<WGSL::CallGraph::EntryPoint,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
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

  if (v3 >= 0xAAAAAAB)
  {
    __break(0xC471u);
  }

  else
  {
    v4 = result;
    v5 = *result;
    v6 = result[3];
    if (v3 <= 0x10)
    {
      v3 = 16;
    }

    v7 = 24 * v3;
    result = WTF::fastMalloc((24 * v3));
    v4[2] = v7 / 0x18;
    *v4 = result;
    if (v6)
    {
      v9 = result;
      v10 = v5;
      do
      {
        v11 = *v10;
        *(v9 + 8) = *(v10 + 8);
        *v9 = v11;
        v12 = *(v10 + 2);
        *(v10 + 2) = 0;
        *(v9 + 2) = v12;
        result = *(v10 + 2);
        *(v10 + 2) = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v8);
        }

        v9 += 6;
        v10 = (v10 + 24);
      }

      while (v10 != (v5 + 24 * v6));
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

unint64_t *WTF::Deque<WGSL::AST::Function *,0ul>::expandCapacity(unint64_t *result)
{
  v1 = *(result + 6);
  v2 = v1 + (v1 >> 2);
  if (v2 >= 0x1FFFFFFF)
  {
    __break(0xC471u);
    return result;
  }

  v3 = result;
  v4 = result[2];
  if (v2 <= 0xF)
  {
    v2 = 15;
  }

  v5 = v2 + 1;
  v6 = WTF::fastMalloc((8 * (v2 + 1)));
  *(v3 + 6) = v5;
  v3[2] = v6;
  v7 = *v3;
  v8 = v3[1];
  v9 = v8 - *v3;
  if (v8 >= *v3)
  {
    v8 = v1 - v7;
    if (v1 >= v7)
    {
      if (v9 == -1)
      {
LABEL_14:
        v9 = v8;
LABEL_15:
        result = memcpy(&v6[8 * v7], &v4[8 * v7], 8 * v9);
        if (!v4)
        {
          return result;
        }

        goto LABEL_16;
      }

      if (v8 >= v9)
      {
        goto LABEL_15;
      }
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 > v1)
  {
    goto LABEL_13;
  }

  v6 = memcpy(v6, v4, 8 * v8);
  v7 = *v3;
  v8 = v1 - *v3;
  if (v1 < *v3)
  {
    goto LABEL_13;
  }

  v10 = *(v3 + 6);
  if (v10 < v8)
  {
    goto LABEL_13;
  }

  v11 = v10 - v8;
  result = memcpy((v3[2] + 8 * (v10 - v8)), &v4[8 * v7], 8 * v8);
  *v3 = v11;
  if (!v4)
  {
    return result;
  }

LABEL_16:
  if (v3[2] == v4)
  {
    v3[2] = 0;
    *(v3 + 6) = 0;
    v13 = v4;
  }

  else
  {
    v13 = v4;
  }

  return WTF::fastFree(v13, v12);
}

uint64_t WTF::HashTable<WGSL::AST::Function *,WTF::KeyValuePair<WGSL::AST::Function *,WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Function *,WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashMap<WGSL::AST::Function *,WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Function *>,WTF::FastMalloc>::rehash(void *a1, unsigned int a2, uint64_t *a3)
{
  v4 = a1;
  v5 = *a1;
  if (*a1)
  {
    v6 = *(v5 - 4);
    v7 = *(v5 - 12);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = WTF::fastZeroedMalloc((24 * a2 + 16));
  *v4 = v8 + 4;
  v8[2] = a2 - 1;
  v8[3] = a2;
  *v8 = 0;
  v8[1] = v7;
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = v6;
    v45 = v5;
    do
    {
      v13 = (v5 + 24 * v10);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v20 = *v4;
          if (*v4)
          {
            v21 = *(v20 - 8);
          }

          else
          {
            v21 = 0;
          }

          v22 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
          v23 = 9 * ((v22 + ~(v22 << 13)) ^ ((v22 + ~(v22 << 13)) >> 8));
          v24 = (v23 ^ (v23 >> 15)) + ~((v23 ^ (v23 >> 15)) << 27);
          v25 = v21 & ((v24 >> 31) ^ v24);
          v26 = 1;
          do
          {
            v27 = v20 + 24 * v25;
            v25 = (v25 + v26++) & v21;
          }

          while (*v27);
          v29 = (v27 + 8);
          v28 = *(v27 + 8);
          v30 = *(v27 + 20);
          if (v30)
          {
            v31 = v12;
            v32 = v11;
            v33 = v4;
            v34 = 24 * v30;
            v35 = v28 + 8;
            do
            {
              v36 = *v35;
              if (*v35)
              {
                *v35 = 0;
                *(v35 + 2) = 0;
                WTF::fastFree(v36, v9);
              }

              v35 += 24;
              v34 -= 24;
            }

            while (v34);
            v28 = *v29;
            v4 = v33;
            v11 = v32;
            v12 = v31;
            v5 = v45;
          }

          if (v28)
          {
            *(v27 + 8) = 0;
            *(v27 + 16) = 0;
            WTF::fastFree(v28, v9);
          }

          v37 = *v13;
          *v29 = 0;
          *(v27 + 16) = 0;
          v38 = v13[1];
          v13[1] = 0;
          *v27 = v37;
          *(v27 + 8) = v38;
          LODWORD(v37) = *(v13 + 4);
          *(v13 + 4) = 0;
          *(v27 + 16) = v37;
          LODWORD(v37) = *(v13 + 5);
          *(v13 + 5) = 0;
          *(v27 + 20) = v37;
          v39 = *(v13 + 5);
          v40 = v13[1];
          if (v39)
          {
            v41 = 24 * v39;
            v42 = v40 + 8;
            do
            {
              v43 = *v42;
              if (*v42)
              {
                *v42 = 0;
                *(v42 + 2) = 0;
                WTF::fastFree(v43, v9);
              }

              v42 += 24;
              v41 -= 24;
            }

            while (v41);
            v40 = v13[1];
          }

          if (v40)
          {
            v13[1] = 0;
            *(v13 + 4) = 0;
            WTF::fastFree(v40, v9);
          }

          if (v13 == a3)
          {
            v11 = v27;
          }
        }

        else
        {
          v15 = *(v13 + 5);
          v16 = v13[1];
          if (v15)
          {
            v17 = 24 * v15;
            v18 = v16 + 8;
            do
            {
              v19 = *v18;
              if (*v18)
              {
                *v18 = 0;
                *(v18 + 2) = 0;
                WTF::fastFree(v19, v9);
              }

              v18 += 24;
              v17 -= 24;
            }

            while (v17);
            v16 = v13[1];
          }

          if (v16)
          {
            v13[1] = 0;
            *(v13 + 4) = 0;
            WTF::fastFree(v16, v9);
          }
        }
      }

      ++v10;
    }

    while (v10 != v12);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v11;
}

_DWORD *WTF::HashTable<WGSL::AST::Function *,WTF::KeyValuePair<WGSL::AST::Function *,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WGSL::AST::Function *,unsigned int>>,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashMap<WGSL::AST::Function *,unsigned int,WTF::DefaultHash<WGSL::AST::Function *>,WTF::HashTraits<WGSL::AST::Function *>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WGSL::AST::Function *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
      if ((*v10 + 1) >= 2)
      {
        v11 = *a1;
        if (*a1)
        {
          v12 = *(v11 - 8);
        }

        else
        {
          v12 = 0;
        }

        v13 = (~(*v10 << 32) + *v10) ^ ((~(*v10 << 32) + *v10) >> 22);
        v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
        v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
        v16 = v12 & ((v15 >> 31) ^ v15);
        v17 = 1;
        do
        {
          v18 = v16;
          v19 = *(v11 + 16 * v16);
          v16 = (v16 + v17++) & v12;
        }

        while (v19);
        *(v11 + 16 * v18) = *v10;
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

unint64_t WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
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

    WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
    return *a1 + v5;
  }
}

unsigned int *WTF::Vector<WGSL::CallGraph::Callee,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
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
        v9 = (v3 + 16);
        do
        {
          v10 = *(v9 - 2);
          *(v7 + 1) = 0;
          *(v7 + 2) = 0;
          *v7 = v10;
          v11 = *(v9 - 1);
          *(v9 - 1) = 0;
          *(v7 + 1) = v11;
          LODWORD(v11) = *v9;
          *v9 = 0;
          v7[4] = v11;
          LODWORD(v11) = v9[1];
          v9[1] = 0;
          v7[5] = v11;
          result = *(v9 - 1);
          if (result)
          {
            *(v9 - 1) = 0;
            *v9 = 0;
            result = WTF::fastFree(result, v6);
          }

          v7 += 6;
          v9 += 6;
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

unint64_t WTF::Vector<std::tuple<WGSL::AST::Function *,WGSL::AST::CallExpression *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 12);
  if (*a1 > a3 || *a1 + 16 * v6 <= a3)
  {
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
      v9 = a2;
    }

    if (!(v9 >> 28))
    {
      if (v9 <= 0x10)
      {
        v10 = 16;
      }

      else
      {
        v10 = v9;
      }

      v11 = WTF::fastMalloc((16 * v10));
      *(a1 + 8) = v10;
      *a1 = v11;
      if (v6)
      {
        v13 = 16 * v6;
        v14 = v5;
        do
        {
          v15 = *v14;
          v14 = (v14 + 16);
          *v11++ = v15;
          v13 -= 16;
        }

        while (v13);
      }

      if (v5)
      {
        if (*a1 == v5)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
        }

        WTF::fastFree(v5, v12);
      }

      return a3;
    }

LABEL_38:
    __break(0xC471u);
    JUMPOUT(0x22570DC88);
  }

  v17 = *(a1 + 8);
  if (v17 + (v17 >> 1) <= v17 + 1)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = v17 + (v17 >> 1);
  }

  if (v18 <= a2)
  {
    v18 = a2;
  }

  if (v18 >> 28)
  {
    goto LABEL_38;
  }

  v19 = a3 - v5;
  if (v18 <= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = v18;
  }

  v21 = WTF::fastMalloc((16 * v20));
  v23 = 0;
  *(a1 + 8) = v20;
  *a1 = v21;
  do
  {
    *(v21 + v23) = *(v5 + v23);
    v23 += 16;
  }

  while (16 * v6 != v23);
  if (v5)
  {
    if (*a1 == v5)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    WTF::fastFree(v5, v22);
  }

  return *a1 + v19;
}

void WGSL::CompilationScope::~CompilationScope(WGSL::CompilationScope *this)
{
  if ((*this & 1) == 0)
  {
    v2 = *(this + 1);
    v3 = *(this + 3);
    v4 = *(v2 + 372);
    if (v3 != v4)
    {
      v5 = v4 - 1;
      if (v4 - 1 >= v3)
      {
        v6 = 32 * v4 - 8;
        while (v5 < *(v2 + 372))
        {
          v7 = *(*(v2 + 360) + v6);
          if (!v7)
          {
            goto LABEL_18;
          }

          (*(*v7 + 48))(v7);
          --v5;
          v6 -= 32;
          if (v5 < v3)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_19;
      }

LABEL_8:
      WTF::Vector<std::function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity((v2 + 360), v3);
      v2 = *(this + 1);
    }

    v8 = *(this + 4);
    v9 = *(v2 + 316);
    if (v9 < v8)
    {
      __break(1u);
LABEL_18:
      std::__throw_bad_function_call[abi:sn200100]();
LABEL_19:
      __break(0xC471u);
      return;
    }

    if (v9 != v8)
    {
      v10 = (*(v2 + 304) + 8 * v8);
      v11 = 8 * v9 - 8 * v8;
      do
      {
        v12 = *v10;
        *v10 = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        ++v10;
        v11 -= 8;
      }

      while (v11);
    }

    *(v2 + 316) = v8;
  }
}

unsigned int *WTF::Vector<std::function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t a2)
{
  if (result[2] > a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = *result;
    v6 = (32 * a2);
    if (v4 > a2)
    {
      v7 = v6 + v5;
      v8 = 32 * v4 - v6;
      v9 = v7;
      do
      {
        result = *(v9 + 3);
        if (v9 == result)
        {
          result = (*(*result + 32))(result);
        }

        else if (result)
        {
          result = (*(*result + 40))(result);
        }

        v9 += 8;
        v7 += 32;
        v8 -= 32;
      }

      while (v8);
      v3[3] = a2;
      v5 = *v3;
      LODWORD(v4) = a2;
    }

    if (a2)
    {
      if (a2 >> 27)
      {
        __break(0xC471u);
        return result;
      }

      result = WTF::fastMalloc(v6);
      v3[2] = a2;
      *v3 = result;
      if (v4)
      {
        v10 = result;
        if (result != v5)
        {
          v11 = 32 * v4;
          v12 = v5;
          v13 = v5;
          while (1)
          {
            v14 = *(v13 + 3);
            if (!v14)
            {
              break;
            }

            if (v13 == v14)
            {
              *(v10 + 3) = v10;
              (*(**(v13 + 3) + 24))(*(v13 + 3), v10);
              result = *(v13 + 3);
              if (v13 != result)
              {
                goto LABEL_22;
              }

LABEL_20:
              result = (*(*result + 32))(result);
              goto LABEL_16;
            }

            *(v10 + 3) = v14;
            *(v13 + 3) = 0;
LABEL_16:
            v10 += 8;
            v13 = (v13 + 32);
            v12 = (v12 + 32);
            v11 -= 32;
            if (!v11)
            {
              goto LABEL_24;
            }
          }

          *(v10 + 3) = 0;
          result = *(v13 + 3);
          if (v13 != result)
          {
LABEL_22:
            if (result)
            {
              result = (*(*result + 40))(result);
            }

            goto LABEL_16;
          }

          goto LABEL_20;
        }
      }
    }

LABEL_24:
    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        v3[2] = 0;
      }

      return WTF::fastFree(v5, a2);
    }
  }

  return result;
}

void WGSL::ConstantMatrix::operator[](uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v7 = WTF::fastMalloc((24 * v4 + 8));
    *v7 = v4;
    bzero(v7 + 2, 24 * ((24 * v4 - 24) / 0x18uLL) + 24);
    LODWORD(v8) = *(a1 + 4);
    *a3 = v7;
    if (v8)
    {
      v9 = 0;
      v10 = (v7 + 6);
      do
      {
        while (1)
        {
          v11 = v9 + v8 * a2;
          v12 = *(a1 + 8);
          if (*v12 <= v11 || v9 >= *v7)
          {
            __break(0xC471u);
            JUMPOUT(0x22570E190);
          }

          v13 = &v12[6 * v11];
          v14 = *(v13 + 24);
          if (*v10 != 255)
          {
            break;
          }

          if (v14 != 255)
          {
            goto LABEL_5;
          }

LABEL_6:
          ++v9;
          v8 = *(a1 + 4);
          v10 += 3;
          if (v9 >= v8)
          {
            return;
          }
        }

        if (v14 != 255)
        {
LABEL_5:
          v15 = v10 - 2;
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v14, &v15, v10 - 2, v13 + 1);
          goto LABEL_6;
        }

        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v16, v10 - 16);
        *v10 = -1;
        v10 += 3;
        ++v9;
        v8 = *(a1 + 4);
      }

      while (v9 < v8);
    }
  }

  else
  {
    *a3 = 0;
  }
}

WTF::StringImpl *WGSL::ConstantValue::dump(mpark *a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 == 255)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if (v4 > 4)
  {
    if (v4 <= 7)
    {
      if (v4 != 5)
      {
        if (v4 == 6)
        {
          if (v3 == 6)
          {
            (*(*a2 + 32))(a2);
LABEL_101:
            WTF::printInternal();
            v48 = *(*a2 + 40);

            return v48(a2);
          }

LABEL_104:
          mpark::throw_bad_variant_access(a1);
        }

        if (v3 != 7)
        {
          goto LABEL_104;
        }

        (*(*a2 + 32))(a2);
        WTF::printInternal();
        (*(*a2 + 40))(a2);
        v22 = *a1;
        v23 = *a1 + 8;
        if (*a1)
        {
          v24 = *a1 + 8;
        }

        else
        {
          v24 = 0;
        }

        if (v22)
        {
          v25 = v23 + 24 * *v22;
          if (v24 == v25)
          {
            goto LABEL_100;
          }
        }

        else
        {
          v25 = 0;
          if (!v24)
          {
            goto LABEL_100;
          }
        }

        v41 = (*(*a2 + 32))(a2);
        WGSL::ConstantValue::dump(v24, v41);
        (*(*a2 + 40))(a2);
        for (i = v24 + 24; i != v25; i += 24)
        {
          (*(*a2 + 32))(a2);
          WTF::printInternal();
          (*(*a2 + 40))(a2);
          v43 = (*(*a2 + 32))(a2);
          WGSL::ConstantValue::dump(i, v43);
          (*(*a2 + 40))(a2);
        }

        goto LABEL_100;
      }

      if (v3 != 5)
      {
        goto LABEL_104;
      }

      WTF::String::number(*a1);
      goto LABEL_35;
    }

    if (v4 == 8)
    {
      if (v3 != 8)
      {
        goto LABEL_104;
      }

      (*(*a2 + 32))(a2);
      WTF::printInternal();
      WTF::printInternal();
      WTF::printInternal();
      (*(*a2 + 40))(a2);
      v32 = *a1;
      if (*a1)
      {
        v33 = *a1 + 8;
      }

      else
      {
        v33 = 0;
      }

      if (v32)
      {
        v34 = *a1 + 8 + 24 * *v32;
        if (v33 == v34)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v34 = 0;
        if (!v33)
        {
          goto LABEL_100;
        }
      }

      v35 = (*(*a2 + 32))(a2);
      WGSL::ConstantValue::dump(v33, v35);
      (*(*a2 + 40))(a2);
      for (j = v33 + 24; j != v34; j += 24)
      {
        (*(*a2 + 32))(a2);
        WTF::printInternal();
        (*(*a2 + 40))(a2);
        v37 = (*(*a2 + 32))(a2);
        WGSL::ConstantValue::dump(j, v37);
        (*(*a2 + 40))(a2);
      }

      goto LABEL_100;
    }

    if (v4 == 9)
    {
      if (v3 != 9)
      {
        goto LABEL_104;
      }

      (*(*a2 + 32))(a2);
      WTF::printInternal();
      WTF::printInternal();
      WTF::printInternal();
      WTF::printInternal();
      WTF::printInternal();
      (*(*a2 + 40))(a2);
      v6 = *(a1 + 1);
      if (v6)
      {
        v7 = v6 + 2;
      }

      else
      {
        v7 = 0;
      }

      if (v6)
      {
        v8 = &v6[6 * *v6 + 2];
        if (v7 == v8)
        {
LABEL_100:
          (*(*a2 + 32))(a2);
          goto LABEL_101;
        }
      }

      else
      {
        v8 = 0;
        if (!v7)
        {
          goto LABEL_100;
        }
      }

      v38 = (*(*a2 + 32))(a2);
      WGSL::ConstantValue::dump(v7, v38);
      (*(*a2 + 40))(a2);
      for (k = v7 + 6; k != v8; k += 6)
      {
        (*(*a2 + 32))(a2);
        WTF::printInternal();
        (*(*a2 + 40))(a2);
        v40 = (*(*a2 + 32))(a2);
        WGSL::ConstantValue::dump(k, v40);
        (*(*a2 + 40))(a2);
      }

      goto LABEL_100;
    }

    if (v3 != 10)
    {
      goto LABEL_104;
    }

    (*(*a2 + 32))(a2);
    WTF::printInternal();
    (*(*a2 + 40))(a2);
    v27 = *a1;
    if (*a1)
    {
      v28 = *(v27 - 1);
      v29 = (v27 + 32 * v28);
      if (*(v27 - 3))
      {
        if (!v28)
        {
          v44 = 0;
          v31 = *a1;
          goto LABEL_90;
        }

        v30 = 32 * v28;
        v31 = *a1;
        while ((*v31 + 1) <= 1)
        {
          v31 = (v31 + 32);
          v30 -= 32;
          if (!v30)
          {
            v31 = v29;
            break;
          }
        }

LABEL_86:
        if (!v27)
        {
          v45 = 0;
          goto LABEL_91;
        }

        v44 = *(v27 - 1);
LABEL_90:
        v45 = (v27 + 32 * v44);
LABEL_91:
        if (v31 != v45)
        {
          v46 = 1;
          do
          {
            if ((v46 & 1) == 0)
            {
              (*(*a2 + 32))(a2);
              WTF::printInternal();
              (*(*a2 + 40))(a2);
            }

            v47 = (*(*a2 + 32))(a2);
            WTF::printInternal();
            WTF::printInternal();
            WGSL::ConstantValue::dump(v31 + 8, v47);
            (*(*a2 + 40))(a2);
            do
            {
              v31 = (v31 + 32);
            }

            while (v31 != v29 && (*v31 + 1) <= 1);
            v46 = 0;
          }

          while (v31 != v45);
        }

        goto LABEL_100;
      }
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    v31 = v29;
    v29 = (v27 + 32 * v28);
    goto LABEL_86;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if (v3 != 3)
        {
          goto LABEL_104;
        }

        WTF::String::number(*a1);
        (*(*a2 + 32))(a2);
        WTF::printInternal();
      }

      else
      {
        if (v3 != 4)
        {
          goto LABEL_104;
        }

        WTF::String::number(*a1);
        (*(*a2 + 32))(a2);
        WTF::printInternal();
      }

      WTF::printInternal();
      goto LABEL_41;
    }

    if (v3 != 2)
    {
      goto LABEL_104;
    }

    WTF::String::number(&v49, a1, *a1);
LABEL_35:
    (*(*a2 + 32))(a2);
    WTF::printInternal();
LABEL_41:
    (*(*a2 + 40))(a2);
    result = v49;
    v49 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }

    return result;
  }

  if (v4)
  {
    if (v3 != 1)
    {
      goto LABEL_104;
    }

    _H8 = *a1;
    __asm { FCVT            S0, H8; float }

    WTF::String::number(&v49, a1, _S0);
    (*(*a2 + 32))(a2);
    WTF::printInternal();
    (*(*a2 + 40))(a2);
    result = v49;
    v49 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v20);
    }

    if ((_H8 & 0x7FFFu) <= 0x7BFF)
    {
LABEL_49:
      (*(*a2 + 32))(a2);
      WTF::printInternal();
      return (*(*a2 + 40))(a2);
    }
  }

  else
  {
    if (*(a1 + 16))
    {
      goto LABEL_104;
    }

    v9 = *a1;
    WTF::String::number(&v49, a1, *a1);
    (*(*a2 + 32))(a2);
    WTF::printInternal();
    (*(*a2 + 40))(a2);
    result = v49;
    v49 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v10);
    }

    if ((v9 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      goto LABEL_49;
    }
  }

  return result;
}

uint64_t WGSL::satisfies(uint64_t result, unsigned int a2)
{
  if (!a2)
  {
    return 1;
  }

  if (result)
  {
    while (*(result + 48) == 10)
    {
      result = *(result + 8);
      if (!result)
      {
        return result;
      }
    }

    if (*(result + 48))
    {
      return 0;
    }

    else
    {
      v2 = *result;
      v3 = (a2 >> 5) & 1;
      v4 = a2 & 1;
      if (v2 != 7)
      {
        v4 = 0;
      }

      if (v2 != 5)
      {
        v3 = v4;
      }

      v5 = (a2 & 0x70) != 0;
      v6 = (a2 >> 6) & 1;
      if (v2 != 4)
      {
        v6 = 0;
      }

      if (v2 != 3)
      {
        v5 = v6;
      }

      if (*result <= 4u)
      {
        v3 = v5;
      }

      v7 = a2 != 1;
      v8 = (a2 >> 2) & 1;
      v9 = (a2 >> 3) & 1;
      if (v2 != 2)
      {
        v9 = 0;
      }

      if (v2 != 1)
      {
        v8 = v9;
      }

      if (*result)
      {
        v7 = v8;
      }

      if (*result <= 2u)
      {
        return v7;
      }

      else
      {
        return v3;
      }
    }
  }

  return result;
}

unsigned __int8 *WGSL::satisfyOrPromote(unsigned __int8 *result, unsigned int a2, void *a3)
{
  if (!a2 || !result)
  {
    return result;
  }

  while (result[48] == 10)
  {
    result = *(result + 1);
    if (!result)
    {
      return result;
    }
  }

  if (result[48])
  {
    return 0;
  }

  v3 = *result;
  if (v3 <= 2)
  {
    if (!*result)
    {
      if (a2 == 1)
      {
        return 0;
      }

      if ((a2 & 2) != 0)
      {
        return result;
      }

      if ((a2 & 4) != 0)
      {
        return a3[7];
      }

      if ((a2 & 8) != 0)
      {
        return a3[8];
      }

      if ((a2 & 0x10) != 0)
      {
        return a3[4];
      }

      if ((a2 & 0x20) == 0)
      {
        if ((a2 & 0x40) != 0)
        {
          return a3[10];
        }

        goto LABEL_57;
      }

      return a3[9];
    }

    if ((a2 & 4) != 0)
    {
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    if ((a2 & 8) != 0)
    {
      v6 = result;
    }

    else
    {
      v6 = 0;
    }

    if (v3 != 2)
    {
      v6 = 0;
    }

    if (v3 == 1)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    if (*result <= 4u)
    {
      if (v3 != 3)
      {
        if ((a2 & 0x40) != 0)
        {
          v4 = result;
        }

        else
        {
          v4 = 0;
        }

        if (v3 == 4)
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }

      if (a2 < 0x10)
      {
        return 0;
      }

      if ((a2 & 0x10) != 0)
      {
        return result;
      }

      if ((a2 & 0x20) == 0)
      {
        if ((a2 & 0x40) != 0)
        {
          return a3[10];
        }

LABEL_57:
        __break(0xC471u);
        JUMPOUT(0x22570F04CLL);
      }

      return a3[9];
    }

    if ((a2 & 0x20) != 0)
    {
      v7 = result;
    }

    else
    {
      v7 = 0;
    }

    if (a2)
    {
      v8 = result;
    }

    else
    {
      v8 = 0;
    }

    if (v3 != 7)
    {
      v8 = 0;
    }

    if (v3 == 5)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }
}

const WGSL::Type *WGSL::concretize(const WGSL::Type *this, const WGSL::Type *a2, WGSL::TypeStore *a3)
{
  v3 = *(this + 48);
  if (v3 == 255)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(this + 48);
  }

  switch(v4)
  {
    case 1:
      if (v3 != 1)
      {
        goto LABEL_55;
      }

      v14 = this;
      this = WGSL::concretize(*this, a2, a3);
      if (this)
      {
        v16 = *(v14 + 8);

        return WGSL::TypeStore::vectorType(a2, v16, this);
      }

      return this;
    case 2:
      if (v3 != 2)
      {
        goto LABEL_55;
      }

      v6 = this;
      this = WGSL::concretize(*this, a2, a3);
      if (this)
      {
        v8 = *(v6 + 8);
        v9 = *(v6 + 9);

        return WGSL::TypeStore::matrixType(a2, v8, v9, this);
      }

      return this;
    case 3:
      if (v3 != 3)
      {
        goto LABEL_55;
      }

      v10 = this;
      this = WGSL::concretize(*this, a2, a3);
      if (this)
      {
        v12 = *(v10 + 8);
        v13 = *(v10 + 16);

        return WGSL::TypeStore::arrayType(a2, this, v12, v13);
      }

      return this;
    case 4:
      if (v3 != 4)
      {
        goto LABEL_55;
      }

      return this;
    case 5:
      if (v3 != 5)
      {
        goto LABEL_55;
      }

      if (*(this + 8) == 1)
      {
        v27 = *(this + 2);
        if (!*v27)
        {
          __break(0xC471u);
          JUMPOUT(0x22570F440);
        }

        v28 = this;
        v30 = WGSL::concretize(*(v27 + 8), a2, a3);
        v32 = *(v28 + 16);
        if (*v32 <= 1u)
        {
          __break(0xC471u);
          JUMPOUT(0x22570F460);
        }

        v33 = v30;
        v34 = WGSL::concretize(*(v32 + 16), a2, v31);
        if (v33)
        {
          v35 = v34 == 0;
        }

        else
        {
          v35 = 1;
        }

        if (!v35)
        {

          return WGSL::TypeStore::modfResultType(a2, v33, v34);
        }
      }

      else
      {
        if (*(this + 8))
        {
          return this;
        }

        v17 = *(this + 2);
        if (!*v17)
        {
          __break(0xC471u);
          JUMPOUT(0x22570F400);
        }

        v18 = this;
        v20 = WGSL::concretize(*(v17 + 8), a2, a3);
        v22 = *(v18 + 16);
        if (*v22 <= 1u)
        {
          __break(0xC471u);
          JUMPOUT(0x22570F420);
        }

        v23 = v20;
        v24 = WGSL::concretize(*(v22 + 16), a2, v21);
        if (v23)
        {
          v25 = v24 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {

          return WGSL::TypeStore::frexpResultType(a2, v23, v24);
        }
      }

      return 0;
    case 6:
      if (v3 != 6)
      {
        goto LABEL_55;
      }

      return 0;
    case 7:
      if (v3 != 7)
      {
        goto LABEL_55;
      }

      return 0;
    case 8:
      if (v3 != 8)
      {
        goto LABEL_55;
      }

      return 0;
    case 9:
      if (v3 != 9)
      {
        goto LABEL_55;
      }

      return 0;
    case 10:
      if (v3 != 10)
      {
        goto LABEL_55;
      }

      return 0;
    case 11:
      if (v3 != 11)
      {
        goto LABEL_55;
      }

      return this;
    case 12:
      if (v3 != 12)
      {
        goto LABEL_55;
      }

      return this;
    case 13:
      if (v3 != 13)
      {
        goto LABEL_55;
      }

      return 0;
    default:
      if (*(this + 48))
      {
LABEL_55:
        mpark::throw_bad_variant_access(this);
      }

      v5 = this;
      break;
  }

  while (*(v5 + 48) == 10)
  {
    this = 0;
    v5 = *(v5 + 1);
    if (!v5)
    {
      return this;
    }
  }

  if (*(v5 + 48))
  {
    return 0;
  }

  v26 = *v5;
  if (v26 <= 2)
  {
    if (*v5)
    {
      if (v26 == 2)
      {
        v36 = v5;
      }

      else
      {
        v36 = 0;
      }

      if (v26 == 1)
      {
        return v5;
      }

      else
      {
        return v36;
      }
    }

    else
    {
      return *(a2 + 7);
    }
  }

  else if (*v5 > 4u)
  {
    if (v26 == 7)
    {
      v37 = v5;
    }

    else
    {
      v37 = 0;
    }

    if (v26 == 5)
    {
      return v5;
    }

    else
    {
      return v37;
    }
  }

  else if (v26 == 3)
  {
    return *(a2 + 9);
  }

  else if (v26 == 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void WGSL::EntryPointRewriter::rewrite(WGSL::EntryPointRewriter *this)
{
  v2 = *(*(this + 2) + 48);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    v51 = v2;
    v3 = *(v2 + 4);
    if (v3 < 0)
    {
      goto LABEL_72;
    }

    v4 = __OFADD__(v3, 4);
    v5 = v3 + 4;
    if (v4)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v51 = 0;
    v5 = 4;
  }

  if (!__OFADD__(v5, 2))
  {
    v6 = !v2 || (*(v2 + 16) & 4) != 0;
    WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v5 + 2), v6, "__", 2uLL, v2, "_inT", 4uLL, &v52);
    v8 = v52;
    if (v52)
    {
      v52 = 0;
      v9 = *(this + 10);
      *(this + 10) = v8;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v7);
        }

        v10 = v52;
        v52 = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v7);
        }
      }

      if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, v7);
      }

      v11 = *(*(this + 2) + 48);
      if (v11)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        v50 = v11;
        v12 = *(v11 + 4);
        if (v12 < 0)
        {
          goto LABEL_75;
        }

        v4 = __OFADD__(v12, 3);
        v13 = v12 + 3;
        if (v4)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v50 = 0;
        v13 = 3;
      }

      if (!__OFADD__(v13, 2))
      {
        v14 = !v11 || (*(v11 + 16) & 4) != 0;
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>((v13 + 2), v14, "__", 2uLL, v11, "_in", 3uLL, &v52);
        v16 = v52;
        if (v52)
        {
          v52 = 0;
          v17 = *(this + 11);
          *(this + 11) = v16;
          if (v17)
          {
            if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v15);
            }

            v18 = v52;
            v52 = 0;
            if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v18, v15);
            }
          }

          if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v50, v15);
          }

          v19 = *(this + 2);
          v20 = *(v19 + 56);
          v21 = *(v19 + 68);
          if (!v21)
          {
LABEL_68:
            v48 = *(this + 1);
            *(v19 + 56) = 0;
            *(v19 + 64) = 0;
            v49 = *(v48 + 372);
            if (v49 == *(v48 + 368))
            {
              WTF::Vector<std::function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v48 + 360, v49 + 1);
              v49 = *(v48 + 372);
            }

            *(*(v48 + 360) + 32 * v49 + 24) = 0;
            operator new();
          }

          v22 = &v20[v21];
          while (1)
          {
            v23 = *v20;
            v59 = 0;
            v60 = 0;
            v53 = *(v23 + 40);
            v52 = off_2838D37C0;
            v24 = *(v23 + 56);
            if (v24)
            {
              atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
            }

            v25 = *(v23 + 64);
            v54 = v24;
            v55 = v25;
            v26 = *(v23 + 84);
            v56 = 0;
            v57 = 0;
            v58 = v26;
            if (!v26)
            {
              goto LABEL_54;
            }

            if (v26 >> 29)
            {
              __break(0xC471u);
              JUMPOUT(0x225710950);
            }

            v27 = WTF::fastMalloc((8 * v26));
            v57 = v26;
            v56 = v27;
            v28 = *(v23 + 84);
            if (!v28)
            {
              goto LABEL_54;
            }

            v29 = *(v23 + 72);
            v30 = (v28 - 1) & 0x1FFFFFFFFFFFFFFFLL;
            if (v30 < 3)
            {
              v31 = *(v23 + 72);
            }

            else
            {
              v31 = *(v23 + 72);
              if (v27 - v29 >= 0x20)
              {
                v32 = v30 + 1;
                v33 = 8 * (v32 & 0x3FFFFFFFFFFFFFFCLL);
                v34 = (v27 + v33);
                v31 = (v29 + v33);
                v35 = (v29 + 16);
                v36 = (v27 + 16);
                v37 = v32 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v38 = *v35;
                  *(v36 - 1) = *(v35 - 1);
                  *v36 = v38;
                  v35 += 2;
                  v36 += 2;
                  v37 -= 4;
                }

                while (v37);
                v27 = v34;
                if (v32 == (v32 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_54;
                }
              }
            }

            v39 = (v29 + 8 * v28);
            do
            {
              v40 = *v31++;
              *v27 = v40;
              v27 = (v27 + 8);
            }

            while (v31 != v39);
LABEL_54:
            WGSL::EntryPointRewriter::visit(this, &v59, &v52);
            v42 = v56;
            if (v56)
            {
              v56 = 0;
              v57 = 0;
              WTF::fastFree(v42, v41);
            }

            v43 = v54;
            v52 = off_2838D37C0;
            v54 = 0;
            if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v43, v41);
            }

            v44 = v59;
            if (HIDWORD(v60))
            {
              v45 = 8 * HIDWORD(v60);
              v46 = v59;
              do
              {
                v47 = *v46;
                *v46 = 0;
                if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v47, v41);
                }

                v46 = (v46 + 8);
                v45 -= 8;
              }

              while (v45);
            }

            if (v44)
            {
              WTF::fastFree(v44, v41);
            }

            if (++v20 == v22)
            {
              v19 = *(this + 2);
              goto LABEL_68;
            }
          }
        }

LABEL_76:
        __break(0xC471u);
        JUMPOUT(0x22571091CLL);
      }

LABEL_75:
      v52 = 0;
      goto LABEL_76;
    }

LABEL_73:
    __break(0xC471u);
    JUMPOUT(0x225710900);
  }

LABEL_72:
  v52 = 0;
  goto LABEL_73;
}

uint64_t WGSL::ShaderModule::append<WGSL::AST::Parameter &,std::reference_wrapper<WGSL::AST::Parameter>,0ul>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a2 + 12);
  if (v6 == *(a2 + 8))
  {
    v7 = v6 + (v6 >> 1);
    if (v7 <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    if (v7 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v8 = *a2;
    if (v7 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v7;
    }

    v10 = WTF::fastMalloc((8 * v9));
    *(a2 + 8) = v9;
    *a2 = v10;
    result = memcpy(v10, v8, 8 * v6);
    if (v8)
    {
      if (*a2 == v8)
      {
        *a2 = 0;
        *(a2 + 8) = 0;
      }

      result = WTF::fastFree(v8, v11);
    }

    v6 = *(a2 + 12);
    v12 = (*a2 + 8 * v6);
  }

  else
  {
    v12 = (*a2 + 8 * v6);
  }

  *v12 = a3;
  *(a2 + 12) = v6 + 1;
  v13 = *(v5 + 372);
  if (v13 == *(v5 + 368))
  {
    result = WTF::Vector<std::function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v5 + 360, v13 + 1);
    v13 = *(v5 + 372);
  }

  v14 = (*(v5 + 360) + 32 * v13);
  *v14 = &unk_2838D4298;
  v14[1] = a2;
  v14[3] = v14;
  *(v5 + 372) = v13 + 1;
  return result;
}

WTF::StringImpl *WGSL::EntryPointRewriter::visit(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 32) + 24);
  if (v6 && *(v6 + 48) == 4)
  {
    v55[0] = 0;
    v55[1] = 0;
    v7 = *(a3 + 24);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    v47 = off_2838D37C0;
    v48 = 0uLL;
    v49[0] = v7;
    operator new();
  }

  v8 = *(a3 + 52);
  if (!v8)
  {
LABEL_10:
    WGSL::EntryPointRewriter::materialize(a1, a2, a3, 0, 0);
  }

  v9 = *(a3 + 40);
  v10 = 8 * v8;
  while (1)
  {
    v11 = *v9;
    if ((*(**v9 + 16))(*v9) == 3)
    {
      break;
    }

    ++v9;
    v10 -= 8;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  v13 = *(v11 + 24);
  if (*(a2 + 12))
  {
    v14 = a1[24];
    a1[24] = v14 + 1;
    WTF::String::number(v14);
    if (v54)
    {
      v15 = *(v54 + 1);
      if (v15 < 0 || (v16 = (v15 + 9), __OFADD__(v15, 9)))
      {
        v55[0] = 0;
        goto LABEL_46;
      }

      v17 = (*(v54 + 16) >> 2) & 1;
    }

    else
    {
      v17 = 1;
      v16 = 9;
    }

    WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v16, v17, "__builtin", 9uLL, v54, v55);
    if (v55[0])
    {
      v34 = v54;
      v54 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v33);
      }

      WGSL::EntryPointRewriter::materialize(a1, a2, a3, 1, v55);
    }

LABEL_46:
    __break(0xC471u);
    JUMPOUT(0x225711928);
  }

  v48 = *(a3 + 8);
  v47 = off_2838D37C0;
  v18 = *(a3 + 24);
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  v19 = *(a3 + 32);
  v49[0] = v18;
  v49[1] = v19;
  v20 = *(a3 + 52);
  v50 = 0;
  v51 = 0;
  v52 = v20;
  if (v20)
  {
    if (v20 >> 29)
    {
      __break(0xC471u);
      JUMPOUT(0x22571190CLL);
    }

    v21 = WTF::fastMalloc((8 * v20));
    v51 = v20;
    v50 = v21;
    v22 = *(a3 + 52);
    if (v22)
    {
      v23 = *(a3 + 40);
      v24 = (v22 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v24 < 3)
      {
        v25 = *(a3 + 40);
      }

      else
      {
        v25 = *(a3 + 40);
        if (v21 - v23 >= 0x20)
        {
          v26 = v24 + 1;
          v27 = 8 * (v26 & 0x3FFFFFFFFFFFFFFCLL);
          v28 = (v21 + v27);
          v25 = (v23 + v27);
          v29 = (v23 + 16);
          v30 = (v21 + 16);
          v31 = v26 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v32 = *v29;
            *(v30 - 1) = *(v29 - 1);
            *v30 = v32;
            v29 += 2;
            v30 += 2;
            v31 -= 4;
          }

          while (v31);
          v21 = v28;
          if (v26 == (v26 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_36;
          }
        }
      }

      v35 = (v23 + 8 * v22);
      do
      {
        v36 = *v25++;
        *v21 = v36;
        v21 = (v21 + 8);
      }

      while (v25 != v35);
    }
  }

LABEL_36:
  v53 = v13;
  v37 = a1[9];
  if (v37 == a1[8])
  {
    v38 = WTF::Vector<WGSL::EntryPointRewriter::BuiltinMemberOrParameter,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 6, v37 + 1, &v47);
    v39 = *(a1 + 3) + (a1[9] << 6);
    *v39 = &unk_2838D3EF8;
    *(v39 + 8) = *(v38 + 8);
    *v39 = off_2838D37C0;
    v40 = *(v38 + 24);
    *(v38 + 24) = 0;
    *(v39 + 24) = v40;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    v41 = *(v38 + 40);
    *(v38 + 40) = 0;
    *(v39 + 40) = v41;
    LODWORD(v41) = *(v38 + 48);
    *(v38 + 48) = 0;
    *(v39 + 48) = v41;
    LODWORD(v41) = *(v38 + 52);
    *(v38 + 52) = 0;
    *(v39 + 52) = v41;
    v42 = (v38 + 56);
  }

  else
  {
    v42 = &v53;
    v39 = *(a1 + 3) + (v37 << 6);
    *v39 = &unk_2838D3EF8;
    *(v39 + 8) = v48;
    *v39 = off_2838D37C0;
    v43 = *v49;
    v49[0] = 0;
    *(v39 + 24) = v43;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    v44 = v50;
    v50 = 0;
    *(v39 + 40) = v44;
    LODWORD(v44) = v51;
    v51 = 0;
    *(v39 + 48) = v44;
    LODWORD(v44) = v52;
    v52 = 0;
    *(v39 + 52) = v44;
  }

  *(v39 + 56) = *v42;
  ++a1[9];
  v45 = v50;
  if (v50)
  {
    v50 = 0;
    v51 = 0;
    WTF::fastFree(v45, v12);
  }

  result = v49[0];
  v47 = off_2838D37C0;
  v49[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(result, v12);
  }

  return result;
}

void WGSL::EntryPointRewriter::checkReturnType(void)::$_0::operator()(uint64_t ***a1, int8x16_t *a2, int8x16_t *a3, uint64_t a4)
{
  v6 = *(***a1 + 48);
  if (!v6)
  {
    goto LABEL_132;
  }

  atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  v117 = v6;
  if (a4)
  {
    v7 = a4 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 >> 31)
  {
    goto LABEL_138;
  }

  LODWORD(v8) = *(v6 + 4);
  while (1)
  {
    v9 = v7 + 1;
    v10 = __OFADD__(v7, 1);
    if ((v8 & 0x80000000) != 0 || v10 || (v11 = __OFADD__(v8, v9), v12 = v8 + v9, v11) || (v13 = (v12 + 2), __OFADD__(v12, 2)))
    {
LABEL_137:
      __break(0xC471u);
      JUMPOUT(0x22571225CLL);
    }

    if (!v6 || (*(v6 + 16) & 4) != 0)
    {
      if (v12 == -2)
      {
LABEL_33:
        v14 = MEMORY[0x277CD4668];
        atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
        goto LABEL_86;
      }

      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_137;
      }

      WTF::tryFastCompactMalloc((v13 + 20));
      v14 = v116;
      if (!v116)
      {
        goto LABEL_137;
      }

      *(v116 + 20) = 24415;
      *v116 = 2;
      *(v116 + 4) = v13;
      *(v116 + 8) = v116 + 20;
      *(v116 + 16) = 4;
      v18 = v13 - 2;
      v19 = (v116 + 22);
      if (v6)
      {
        a2 = *(v6 + 8);
        v20 = *(v6 + 4);
        if ((*(v6 + 16) & 4) != 0)
        {
          if (v20)
          {
            if (v20 == 1)
            {
              *v19 = a2->i8[0];
            }

            else
            {
              memcpy((v116 + 22), a2, v20);
            }
          }

          goto LABEL_68;
        }

        v21 = &v19[v20];
        if (v20 < 0x10)
        {
          v22 = v116 + 22;
          if (v19 != v21)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v22 = v116 + 22;
          do
          {
            v23 = vld2q_s8(a2->i8);
            a2 += 2;
            *v22 = v23;
            v22 += 16;
          }

          while (v22 != &v19[v20 & 0xFFFFFFF0]);
          if (v22 == v21)
          {
            goto LABEL_68;
          }

LABEL_43:
          v35 = v116 + v20;
          v36 = v116 + v20 - v22 + 22;
          if (v36 < 4 || (v22 < &a2[2].u64[1] + 2 * v35 + -2 * v22 + 4 ? (v37 = a2 >= v35 + 22) : (v37 = 1), !v37))
          {
            v39 = v22;
            v40 = a2;
            goto LABEL_52;
          }

          if (v36 >= 0x20)
          {
            v38 = v36 & 0xFFFFFFFFFFFFFFE0;
            v95 = a2 + 2;
            v96 = (v22 + 16);
            v97 = v36 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v99 = v95[-2];
              v98 = v95[-1];
              v101 = *v95;
              v100 = v95[1];
              v95 += 4;
              v96[-1] = vuzp1q_s8(v99, v98);
              *v96 = vuzp1q_s8(v101, v100);
              v96 += 2;
              v97 -= 32;
            }

            while (v97);
            if (v36 != v38)
            {
              if ((v36 & 0x1C) == 0)
              {
                v40 = (a2 + 2 * v38);
                v39 = (v22 + v38);
                goto LABEL_52;
              }

              goto LABEL_116;
            }
          }

          else
          {
            v38 = 0;
LABEL_116:
            v39 = (v22 + (v36 & 0xFFFFFFFFFFFFFFFCLL));
            v40 = (a2 + 2 * (v36 & 0xFFFFFFFFFFFFFFFCLL));
            v102 = (a2 + 2 * v38);
            v103 = (v22 + v38);
            v104 = v38 - (v36 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v105 = *v102++;
              *v103++ = vuzp1_s8(v105, v105).u32[0];
              v104 += 4;
            }

            while (v104);
            if (v36 != (v36 & 0xFFFFFFFFFFFFFFFCLL))
            {
              do
              {
LABEL_52:
                v41 = v40->i8[0];
                v40 = (v40 + 2);
                *v39++ = v41;
              }

              while (v39 != v21);
            }
          }
        }

LABEL_68:
        v24 = *(v6 + 4);
        if (v18 < v24)
        {
          goto LABEL_131;
        }
      }

      else
      {
        v24 = 0;
      }

      if (v18 != v24)
      {
        v19[v24] = 95;
        v49 = &v19[v24 + 1];
        if (v7)
        {
          if (v7 == 1)
          {
            *v49 = a3->i8[0];
          }

          else
          {
            memcpy(v49, a3, v7);
          }
        }

        goto LABEL_86;
      }

      goto LABEL_131;
    }

    if (v12 == -2)
    {
      goto LABEL_33;
    }

    if (v13 > 0x7FFFFFEF)
    {
      goto LABEL_137;
    }

    WTF::tryFastCompactMalloc((2 * v13 + 20));
    v14 = v116;
    if (!v116)
    {
      goto LABEL_137;
    }

    *v116 = 2;
    *(v116 + 4) = v13;
    *(v116 + 8) = v116 + 20;
    *(v116 + 16) = 0x5F005F00000000;
    v15 = v13 - 2;
    v16 = (v116 + 24);
    a2 = *(v6 + 8);
    v17 = *(v6 + 4);
    if ((*(v6 + 16) & 4) != 0)
    {
      v25 = &v16[v17];
      if (v17 < 0x40)
      {
        v26 = v116 + 24;
      }

      else
      {
        v26 = &v16[v17 & 0xFFFFFFC0];
        v27 = 0uLL;
        v28 = (v116 + 24);
        do
        {
          v118.val[0] = *a2;
          v29 = a2[1];
          v120.val[0] = a2[2];
          v30 = a2[3];
          a2 += 4;
          v31 = v30;
          v120.val[1] = 0uLL;
          v122.val[0] = v29;
          v118.val[1] = 0uLL;
          v32 = v28;
          vst2q_s8(v32, v118);
          v32 += 32;
          v122.val[1] = 0uLL;
          vst2q_s8(v32, v122);
          v33 = v28 + 64;
          vst2q_s8(v33, v120);
          v34 = v28 + 96;
          vst2q_s8(v34, *(&v27 - 1));
          v28 += 128;
        }

        while (v28 != v26);
      }

      if (v26 != v25)
      {
        v42 = v116 + 2 * v17 - v26 + 22;
        if (v42 < 0xE || (v26 < a2->u64 + (v42 >> 1) + 1 ? (v43 = a2 >= (v42 & 0xFFFFFFFFFFFFFFFELL) + v26 + 2) : (v43 = 1), !v43))
        {
          v46 = a2;
          v47 = v26;
          goto LABEL_65;
        }

        v44 = (v42 >> 1) + 1;
        if (v42 >= 0x3E)
        {
          v45 = v44 & 0xFFFFFFFFFFFFFFE0;
          v106 = (v26 + 32);
          v107 = &a2[1];
          v108 = v44 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v109 = *v107[-2].i8;
            v110 = vmovl_u8(*v107);
            v111 = vmovl_high_u8(*v107->i8);
            v106[-2] = vmovl_u8(*v109.i8);
            v106[-1] = vmovl_high_u8(v109);
            *v106 = v110;
            v106[1] = v111;
            v106 += 4;
            v107 += 4;
            v108 -= 32;
          }

          while (v108);
          if (v44 == v45)
          {
            goto LABEL_75;
          }

          if ((v44 & 0x18) == 0)
          {
            v47 = (v26 + 2 * v45);
            v46 = (a2 + v45);
            do
            {
LABEL_65:
              v48 = v46->u8[0];
              v46 = (v46 + 1);
              *v47++ = v48;
            }

            while (v47 != v25);
            goto LABEL_75;
          }
        }

        else
        {
          v45 = 0;
        }

        v46 = (a2 + (v44 & 0xFFFFFFFFFFFFFFF8));
        v47 = (v26 + 2 * (v44 & 0xFFFFFFFFFFFFFFF8));
        v112 = (v26 + 2 * v45);
        v113 = &a2->i8[v45];
        v114 = v45 - (v44 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v115 = *v113++;
          *v112++ = vmovl_u8(v115);
          v114 += 8;
        }

        while (v114);
        if (v44 != (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_65;
        }
      }
    }

    else if (v17)
    {
      if (v17 == 1)
      {
        *v16 = a2->i16[0];
      }

      else
      {
        memcpy((v116 + 24), a2, 2 * v17);
      }
    }

LABEL_75:
    v50 = *(v6 + 4);
    if (v15 > v50)
    {
      v51 = &v16[v50];
      *v51 = 95;
      v52 = (v51 + 1);
      v53 = (v52 + 2 * v7);
      if (v7 >= 0x40)
      {
        v54 = v52 + 2 * (v7 & 0x7FFFFFC0);
        v55 = 0uLL;
        do
        {
          v119.val[0] = *a3;
          v56 = a3[1];
          v121.val[0] = a3[2];
          v57 = a3[3];
          a3 += 4;
          v58 = v57;
          v121.val[1] = 0uLL;
          v123.val[0] = v56;
          v119.val[1] = 0uLL;
          v59 = v52;
          vst2q_s8(v59, v119);
          v59 += 32;
          v123.val[1] = 0uLL;
          vst2q_s8(v59, v123);
          v60 = (v52 + 64);
          vst2q_s8(v60, v121);
          v61 = (v52 + 96);
          vst2q_s8(v61, *(&v55 - 1));
          v52 += 128;
        }

        while (v52 != v54);
        v52 = v54;
      }

      if (v52 != v53)
      {
        v62 = v116 + 2 * (v7 + v50) - v52 + 24;
        if (v62 < 0xE || v52 < a3->u64 + (v62 >> 1) + 1 && a3 < (v62 & 0xFFFFFFFFFFFFFFFELL) + v52 + 2)
        {
          v63 = a3;
          v64 = v52;
          goto LABEL_85;
        }

        v83 = (v62 >> 1) + 1;
        if (v62 >= 0x3E)
        {
          v84 = v83 & 0xFFFFFFFFFFFFFFE0;
          v85 = (v52 + 32);
          v86 = &a3[1];
          v87 = v83 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v88 = *v86[-2].i8;
            v89 = vmovl_u8(*v86);
            v90 = vmovl_high_u8(*v86->i8);
            v85[-2] = vmovl_u8(*v88.i8);
            v85[-1] = vmovl_high_u8(v88);
            *v85 = v89;
            v85[1] = v90;
            v85 += 4;
            v86 += 4;
            v87 -= 32;
          }

          while (v87);
          if (v83 != v84)
          {
            if ((v83 & 0x18) == 0)
            {
              v64 = (v52 + 2 * v84);
              v63 = (a3 + v84);
              goto LABEL_85;
            }

            goto LABEL_108;
          }
        }

        else
        {
          v84 = 0;
LABEL_108:
          v63 = (a3 + (v83 & 0xFFFFFFFFFFFFFFF8));
          v64 = (v52 + 2 * (v83 & 0xFFFFFFFFFFFFFFF8));
          v91 = (v52 + 2 * v84);
          v92 = &a3->i8[v84];
          v93 = v84 - (v83 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v94 = *v92++;
            *v91++ = vmovl_u8(v94);
            v93 += 8;
          }

          while (v93);
          if (v83 != (v83 & 0xFFFFFFFFFFFFFFF8))
          {
            do
            {
LABEL_85:
              v65 = v63->u8[0];
              v63 = (v63 + 1);
              *v64++ = v65;
            }

            while (v64 != v53);
          }
        }
      }

LABEL_86:
      if (v117 && atomic_fetch_add_explicit(v117, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v117, a2);
      }

      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      v66 = **a1;
      v67 = *v66;
      v68 = *(*v66 + 84);
      if (!v68)
      {
LABEL_101:
        WGSL::AST::Builder::construct<WGSL::AST::Structure,WGSL::SourceSpan,WGSL::AST::Identifier,WTF::ReferenceWrapperVector<WGSL::AST::StructureMember,0ul>,WTF::ReferenceWrapperVector<WGSL::AST::Attribute,0ul>,WGSL::AST::StructureRole,void>();
      }

      if (!(v68 >> 29))
      {
        v69 = WTF::fastMalloc((8 * v68));
        v70 = *(v67 + 84);
        if (!v70)
        {
          goto LABEL_101;
        }

        v71 = *(v67 + 72);
        v72 = (v70 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v72 < 3)
        {
          v73 = *(v67 + 72);
        }

        else
        {
          v73 = *(v67 + 72);
          if (v69 - v71 >= 0x20)
          {
            v74 = v72 + 1;
            v75 = v74 & 0x3FFFFFFFFFFFFFFCLL;
            v76 = &v69[v75];
            v73 = (v71 + v75 * 8);
            v77 = (v71 + 16);
            v78 = v69 + 2;
            v79 = v74 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v80 = *v77;
              *(v78 - 1) = *(v77 - 1);
              *v78 = v80;
              v77 += 2;
              v78 += 2;
              v79 -= 4;
            }

            while (v79);
            v69 = v76;
            if (v74 == (v74 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_101;
            }
          }
        }

        v81 = (v71 + 8 * v70);
        do
        {
          v82 = *v73++;
          *v69++ = v82;
        }

        while (v73 != v81);
        goto LABEL_101;
      }

LABEL_138:
      __break(0xC471u);
      JUMPOUT(0x225712254);
    }

LABEL_131:
    __break(1u);
LABEL_132:
    v117 = 0;
    if (a4)
    {
      v7 = a4 - 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 >> 31;
    if (v7 >> 31)
    {
      goto LABEL_138;
    }
  }
}

uint64_t WGSL::ShaderModule::append<WGSL::AST::Structure &,std::reference_wrapper<WGSL::AST::Declaration>,0ul>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a2 + 12);
  if (v6 == *(a2 + 8))
  {
    v7 = v6 + (v6 >> 1);
    if (v7 <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    if (v7 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v8 = *a2;
    if (v7 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v7;
    }

    v10 = WTF::fastMalloc((8 * v9));
    *(a2 + 8) = v9;
    *a2 = v10;
    result = memcpy(v10, v8, 8 * v6);
    if (v8)
    {
      if (*a2 == v8)
      {
        *a2 = 0;
        *(a2 + 8) = 0;
      }

      result = WTF::fastFree(v8, v11);
    }

    v6 = *(a2 + 12);
    v12 = (*a2 + 8 * v6);
  }

  else
  {
    v12 = (*a2 + 8 * v6);
  }

  *v12 = a3;
  *(a2 + 12) = v6 + 1;
  v13 = *(v5 + 372);
  if (v13 == *(v5 + 368))
  {
    result = WTF::Vector<std::function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v5 + 360, v13 + 1);
    v13 = *(v5 + 372);
  }

  v14 = (*(v5 + 360) + 32 * v13);
  *v14 = &unk_2838D43A0;
  v14[1] = a2;
  v14[3] = v14;
  *(v5 + 372) = v13 + 1;
  return result;
}

void WGSL::ShaderModule::replace<WGSL::AST::IdentifierExpression const,WGSL::AST::IdentifierExpression>(uint64_t a1, uint64_t a2)
{
  v16 = *(a2 + 8);
  v17 = *(a2 + 24);
  LOBYTE(v18) = 0;
  v21 = 0;
  if (*(a2 + 56) == 1)
  {
    v20 = -1;
    v4 = *(a2 + 48);
    if (v4 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v4, &v25, &v18, (a2 + 32));
      v20 = *(a2 + 48);
    }

    v21 = 1;
  }

  v23 = *(a2 + 72);
  v22 = off_2838D37C0;
  v5 = *(a2 + 88);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v24 = v5;
  v6 = *(a1 + 372);
  if (v6 == *(a1 + 368))
  {
    WTF::Vector<std::function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 360, v6 + 1);
    v7 = *(a1 + 372);
    v8 = *(a1 + 360);
    v25 = a2;
    v27 = v16;
    v28 = v17;
    LOBYTE(v29) = 0;
    v32 = 0;
    if (v21 != 1)
    {
      goto LABEL_50;
    }

    v31 = -1;
    if (v20 > 5u)
    {
      if (v20 > 8u)
      {
        if (v20 == 9)
        {
          v12 = v19;
          v19 = 0;
          v29 = v18;
          v30 = v12;
          goto LABEL_48;
        }

        if (v20 != 10)
        {
LABEL_49:
          v32 = 1;
LABEL_50:
          v26 = off_2838D3EA8;
          v34 = v23;
          v14 = v24;
          v24 = 0;
          v33 = off_2838D37C0;
          v35 = v14;
          *(v8 + 32 * v7 + 24) = 0;
          operator new();
        }
      }

      else if (v20 == 6)
      {
        LOBYTE(v29) = v18;
        goto LABEL_48;
      }

      v10 = v18;
      v18 = 0;
    }

    else
    {
      if (v20 <= 2u)
      {
        if (v20)
        {
          if (v20 == 1)
          {
            LOWORD(v29) = v18;
          }

          else
          {
            v29 = v18;
          }
        }

        else
        {
          LODWORD(v29) = v18;
        }

        goto LABEL_48;
      }

      if (v20 == 3 || v20 == 4)
      {
        LODWORD(v29) = v18;
LABEL_48:
        v31 = v20;
        goto LABEL_49;
      }

      v10 = v18;
    }

    v29 = v10;
    goto LABEL_48;
  }

  v9 = *(a1 + 360);
  v25 = a2;
  v27 = v16;
  v28 = v17;
  LOBYTE(v29) = 0;
  v32 = 0;
  if (v21 != 1)
  {
LABEL_55:
    v26 = off_2838D3EA8;
    v34 = v23;
    v24 = 0;
    v33 = off_2838D37C0;
    v35 = v5;
    *(v9 + 32 * v6 + 24) = 0;
    operator new();
  }

  v31 = -1;
  if (v20 > 5u)
  {
    if (v20 > 8u)
    {
      if (v20 == 9)
      {
        v13 = v19;
        v19 = 0;
        v29 = v18;
        v30 = v13;
        goto LABEL_53;
      }

      if (v20 != 10)
      {
LABEL_54:
        v32 = 1;
        goto LABEL_55;
      }
    }

    else if (v20 == 6)
    {
      LOBYTE(v29) = v18;
      goto LABEL_53;
    }

    v11 = v18;
    v18 = 0;
  }

  else
  {
    if (v20 <= 2u)
    {
      if (v20)
      {
        if (v20 == 1)
        {
          LOWORD(v29) = v18;
        }

        else
        {
          v29 = v18;
        }
      }

      else
      {
        LODWORD(v29) = v18;
      }

      goto LABEL_53;
    }

    if (v20 == 3 || v20 == 4)
    {
      LODWORD(v29) = v18;
LABEL_53:
      v31 = v20;
      goto LABEL_54;
    }

    v11 = v18;
  }

  v29 = v11;
  goto LABEL_53;
}

void WGSL::EntryPointRewriter::materialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4, atomic_uint *volatile *a5)
{
  if (a4 == 1)
  {
    if (*a5)
    {
      atomic_fetch_add_explicit(*a5, 2u, memory_order_relaxed);
    }

    WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
}

void WGSL::rewriteEntryPoints(uint64_t a1, uint64_t *a2, const WTF::StringImpl *a3)
{
  if ((*(a1 + 352) & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *(a1 + 332);
  if (!v4)
  {
    return;
  }

  v6 = *a2;
  if (!*a2)
  {
    return;
  }

  v7 = *(a1 + 320);
  v8 = &v7[3 * v4];
LABEL_5:
  v9 = v7[2];
  if (v9 == -1 || !v9)
  {
LABEL_21:
    __break(0xC471u);
    JUMPOUT(0x225713C10);
  }

  v10 = *(v6 - 8);
  v11 = *(v9 + 4);
  if (v11 < 0x100)
  {
    v12 = WTF::StringImpl::hashSlowCase(v9);
  }

  else
  {
    v12 = v11 >> 8;
  }

  for (i = 0; ; v12 = i + v14)
  {
    v14 = v12 & v10;
    v15 = *(v6 + 16 * (v12 & v10));
    if (v15 != -1)
    {
      if (!v15)
      {
        goto LABEL_16;
      }

      if (WTF::equal(v15, v7[2], a3))
      {
        break;
      }
    }

    ++i;
  }

  v16 = *v7;
  v18[0] = *(v7 + 8);
  v19 = a1;
  v20 = v16;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  WGSL::EntryPointRewriter::rewrite(v18);
  WGSL::EntryPointRewriter::~EntryPointRewriter(v18, v17);
LABEL_16:
  while (1)
  {
    v7 += 3;
    if (v7 == v8)
    {
      break;
    }

    v6 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }
  }
}

void WGSL::EntryPointRewriter::~EntryPointRewriter(WGSL::EntryPointRewriter *this, WTF::StringImpl *a2)
{
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v5, a2);
  }

  v6 = *(this + 13);
  v7 = *(this + 5);
  if (v6)
  {
    v8 = 56 * v6;
    v9 = v7 + 24;
    do
    {
      v10 = *(v9 + 2);
      if (v10)
      {
        *(v9 + 2) = 0;
        *(v9 + 6) = 0;
        WTF::fastFree(v10, a2);
      }

      *(v9 - 3) = off_2838D37C0;
      v11 = *v9;
      *v9 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }

      v9 += 56;
      v7 = (v7 + 56);
      v8 -= 56;
    }

    while (v8);
    v7 = *(this + 5);
  }

  if (v7)
  {
    *(this + 5) = 0;
    *(this + 12) = 0;
    WTF::fastFree(v7, a2);
  }

  v12 = *(this + 9);
  v13 = *(this + 3);
  if (v12)
  {
    v14 = v12 << 6;
    v15 = v13 + 24;
    do
    {
      v16 = *(v15 + 2);
      if (v16)
      {
        *(v15 + 2) = 0;
        *(v15 + 6) = 0;
        WTF::fastFree(v16, a2);
      }

      *(v15 - 3) = off_2838D37C0;
      v17 = *v15;
      *v15 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, a2);
      }

      v15 += 64;
      v13 = (v13 + 64);
      v14 -= 64;
    }

    while (v14);
    v13 = *(this + 3);
  }

  if (v13)
  {
    *(this + 3) = 0;
    *(this + 8) = 0;
    WTF::fastFree(v13, a2);
  }
}

void WGSL::AST::Parameter::~Parameter(WGSL::AST::Parameter *this, void *a2)
{
  v3 = *(this + 9);
  if (v3)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v3, a2);
  }

  *(this + 4) = off_2838D37C0;
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
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

  *(this + 4) = off_2838D37C0;
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  JUMPOUT(0x22AA68560);
}

uint64_t std::__function::__func<void WGSL::ShaderModule::append<WGSL::AST::Parameter &,std::reference_wrapper<WGSL::AST::Parameter>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Parameter>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WGSL::AST::Parameter &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D4298;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void WGSL::ShaderModule::append<WGSL::AST::Parameter &,std::reference_wrapper<WGSL::AST::Parameter>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Parameter>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WGSL::AST::Parameter &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::operator()(uint64_t result)
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

__n128 std::__function::__func<void WGSL::ShaderModule::insertVector<std::reference_wrapper<WGSL::AST::Statement>,0ul,std::reference_wrapper<WGSL::AST::Statement>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Statement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,unsigned long,WTF::Vector<std::reference_wrapper<WGSL::AST::Statement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1},std::allocator<void WGSL::ShaderModule::insertVector<std::reference_wrapper<WGSL::AST::Statement>,0ul,std::reference_wrapper<WGSL::AST::Statement>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Statement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,unsigned long,WTF::Vector<std::reference_wrapper<WGSL::AST::Statement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2838D42E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<void WGSL::ShaderModule::insertVector<std::reference_wrapper<WGSL::AST::Statement>,0ul,std::reference_wrapper<WGSL::AST::Statement>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Statement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,unsigned long,WTF::Vector<std::reference_wrapper<WGSL::AST::Statement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1},std::allocator<void WGSL::ShaderModule::insertVector<std::reference_wrapper<WGSL::AST::Statement>,0ul,std::reference_wrapper<WGSL::AST::Statement>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Statement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,unsigned long,WTF::Vector<std::reference_wrapper<WGSL::AST::Statement>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1}>,void ()(void)>::operator()(void *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *(v2 + 12);
  if (v3 < v1 || (v4 = result[3], v3 - v1 < v4))
  {
    __break(1u);
  }

  else
  {
    result = memmove((*v2 + 8 * v1), (*v2 + 8 * v1 + 8 * v4), *v2 + 8 * v3 - (*v2 + 8 * v1 + 8 * v4));
    *(v2 + 12) -= v4;
  }

  return result;
}

uint64_t std::__function::__func<void WGSL::ShaderModule::clear<std::reference_wrapper<WGSL::AST::Parameter>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Parameter>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1},std::allocator<void WGSL::ShaderModule::clear<std::reference_wrapper<WGSL::AST::Parameter>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Parameter>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1}>,void ()(void)>::~__func(uint64_t result, void *a2)
{
  *result = &unk_2838D4328;
  v2 = *(result + 16);
  if (v2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    v3 = result;
    WTF::fastFree(v2, a2);
    return v3;
  }

  return result;
}

void std::__function::__func<void WGSL::ShaderModule::clear<std::reference_wrapper<WGSL::AST::Parameter>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Parameter>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1},std::allocator<void WGSL::ShaderModule::clear<std::reference_wrapper<WGSL::AST::Parameter>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Parameter>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1}>,void ()(void)>::~__func(uint64_t a1, void *a2)
{
  *a1 = &unk_2838D4328;
  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::fastFree(v3, a2);
    v2 = vars8;
  }

  JUMPOUT(0x22AA68560);
}

uint64_t std::__function::__func<void WGSL::ShaderModule::clear<std::reference_wrapper<WGSL::AST::Parameter>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Parameter>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1},std::allocator<void WGSL::ShaderModule::clear<std::reference_wrapper<WGSL::AST::Parameter>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Parameter>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D4328;
  *(a2 + 8) = v2;
  v3 = *(result + 28);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = v3;
  if (v3)
  {
    if (v3 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v5 = result;
    result = WTF::fastMalloc((8 * v3));
    *(a2 + 24) = v3;
    *(a2 + 16) = result;
    v6 = *(v5 + 28);
    if (v6)
    {
      v7 = *(v5 + 16);
      v8 = (v6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v8 < 3)
      {
        v9 = *(v5 + 16);
      }

      else
      {
        v9 = *(v5 + 16);
        if ((result - v7) >= 0x20)
        {
          v10 = v8 + 1;
          v11 = 8 * (v10 & 0x3FFFFFFFFFFFFFFCLL);
          v12 = result + v11;
          v9 = (v7 + v11);
          v13 = (v7 + 16);
          v14 = (result + 16);
          v15 = v10 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v16 = *v13;
            *(v14 - 1) = *(v13 - 1);
            *v14 = v16;
            v13 += 2;
            v14 += 2;
            v15 -= 4;
          }

          while (v15);
          result = v12;
          if (v10 == (v10 & 0x3FFFFFFFFFFFFFFCLL))
          {
            return result;
          }
        }
      }

      v17 = (v7 + 8 * v6);
      do
      {
        v18 = *v9++;
        *result = v18;
        result += 8;
      }

      while (v9 != v17);
    }
  }

  return result;
}

WTF *std::__function::__func<void WGSL::ShaderModule::clear<std::reference_wrapper<WGSL::AST::Parameter>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Parameter>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1},std::allocator<void WGSL::ShaderModule::clear<std::reference_wrapper<WGSL::AST::Parameter>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Parameter>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  if (result)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    return WTF::fastFree(result, a2);
  }

  return result;
}

void std::__function::__func<void WGSL::ShaderModule::clear<std::reference_wrapper<WGSL::AST::Parameter>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Parameter>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1},std::allocator<void WGSL::ShaderModule::clear<std::reference_wrapper<WGSL::AST::Parameter>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Parameter>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v4 = a1;
    WTF::fastFree(v3, a2);
    a1 = v4;
    v2 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<void WGSL::ShaderModule::clear<std::reference_wrapper<WGSL::AST::Parameter>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Parameter>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1},std::allocator<void WGSL::ShaderModule::clear<std::reference_wrapper<WGSL::AST::Parameter>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Parameter>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t result, void *a2)
{
  v2 = (result + 16);
  v3 = *(result + 8);
  if (result + 16 != v3)
  {
    v4 = result;
    v5 = *(v3 + 12);
    v6 = *(result + 28);
    if (v5 <= v6)
    {
      v9 = *(v3 + 8);
      if (v6 > v9)
      {
        if (v9)
        {
          if (v5)
          {
            *(v3 + 12) = 0;
          }

          result = *v3;
          if (*v3)
          {
            *v3 = 0;
            *(v3 + 8) = 0;
            result = WTF::fastFree(result, a2);
            v9 = *(v3 + 8);
          }
        }

        v10 = *(v4 + 28);
        if (v9 < v10)
        {
          if (v10 >> 29)
          {
            __break(0xC471u);
            return result;
          }

          v11 = *v3;
          v12 = *(v3 + 12);
          v13 = WTF::fastMalloc((8 * v10));
          *(v3 + 8) = v10;
          *v3 = v13;
          memcpy(v13, v11, 8 * v12);
          if (v11)
          {
            if (*v3 == v11)
            {
              *v3 = 0;
              *(v3 + 8) = 0;
            }

            WTF::fastFree(v11, v14);
          }
        }
      }

      v6 = *(v3 + 12);
      result = *v3;
      if (v6)
      {
LABEL_4:
        memmove(result, *v2, 8 * v6);
        v7 = *(v3 + 12);
        result = *v3;
        v8 = *(v4 + 28);
        if (v7 == v8)
        {
          goto LABEL_28;
        }

        goto LABEL_20;
      }
    }

    else
    {
      *(v3 + 12) = v6;
      result = *v3;
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v7 = 0;
    v8 = *(v4 + 28);
    if (!v8)
    {
LABEL_28:
      *(v3 + 12) = v7;
      return result;
    }

LABEL_20:
    v15 = *(v4 + 16);
    v16 = 8 * v7;
    v17 = (result + v16);
    v18 = (v15 + v16);
    v19 = 8 * v8 - v16 - 8;
    if (v19 < 0x18)
    {
      goto LABEL_25;
    }

    if ((result - v15) < 0x20)
    {
      goto LABEL_25;
    }

    v20 = (v19 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v17 = (v17 + v21);
    v18 = (v18 + v21);
    v22 = v16 + 16;
    v23 = (v15 + v16 + 16);
    v24 = (result + v22);
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_25:
      v27 = (v15 + 8 * v8);
      do
      {
        v28 = *v18++;
        *v17++ = v28;
      }

      while (v18 != v27);
    }

    v7 = *(v4 + 28);
    goto LABEL_28;
  }

  return result;
}

void WGSL::AST::Structure::~Structure(WGSL::AST::Structure *this, void *a2)
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

  *(this + 3) = off_2838D37C0;
  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
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

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 7) = 0;
    *(this + 16) = 0;
    WTF::fastFree(v4, a2);
  }

  *(this + 3) = off_2838D37C0;
  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  JUMPOUT(0x22AA68560);
}

uint64_t std::__function::__func<void WGSL::ShaderModule::append<WGSL::AST::Structure &,std::reference_wrapper<WGSL::AST::Declaration>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Declaration>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WGSL::AST::Structure &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D43A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void WGSL::ShaderModule::append<WGSL::AST::Structure &,std::reference_wrapper<WGSL::AST::Declaration>,0ul>(WTF::Vector<std::reference_wrapper<WGSL::AST::Declaration>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WGSL::AST::Structure &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::operator()(uint64_t result)
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceIKNS2_3AST20IdentifierExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED1Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D43E8;
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

uint64_t _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceIKNS2_3AST20IdentifierExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEED0Ev(uint64_t a1, WTF::StringImpl *a2)
{
  *a1 = &unk_2838D43E8;
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

  return MEMORY[0x22AA68560](a1, 0x10E3C406360EF2ALL);
}

uint64_t _ZNKSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceIKNS2_3AST20IdentifierExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2838D43E8;
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

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceIKNS2_3AST20IdentifierExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE7destroyEv(uint64_t a1, WTF::StringImpl *a2)
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

void _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceIKNS2_3AST20IdentifierExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEE18destroy_deallocateEv(void *__p, WTF::StringImpl *a2)
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

__n128 _ZNSt3__110__function6__funcIZN4WGSL12ShaderModule7replaceIKNS2_3AST20IdentifierExpressionES6_EENS_9enable_ifIXaagestT_stT0_ntsr3stdE9is_same_vISA_NS5_10ExpressionEEEvE4typeERS9_RSA_EUlvE_NS_9allocatorISG_EEFvvEEclEv(uint64_t a1, WTF::StringImpl *a2)
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

void WGSL::AST::StructureMember::~StructureMember(WGSL::AST::StructureMember *this, void *a2)
{
  v3 = *(this + 11);
  if (v3)
  {
    *(this + 11) = 0;
    *(this + 24) = 0;
    WTF::fastFree(v3, a2);
  }

  *(this + 7) = off_2838D37C0;
  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  *(this + 3) = off_2838D37C0;
  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
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

  *(this + 7) = off_2838D37C0;
  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  *(this + 3) = off_2838D37C0;
  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  JUMPOUT(0x22AA68560);
}

void WGSL::AST::FieldAccessExpression::~FieldAccessExpression(WGSL::AST::FieldAccessExpression *this, WTF::StringImpl *a2)
{
  *(this + 13) = off_2838D37C0;
  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  *(this + 9) = off_2838D37C0;
  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v5, this + 32);
    }

    *(this + 48) = -1;
  }
}

{
  *(this + 13) = off_2838D37C0;
  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  *(this + 9) = off_2838D37C0;
  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  *this = &unk_2838D3ED0;
  if (*(this + 56) == 1)
  {
    if (*(this + 48) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v5, this + 32);
    }

    *(this + 48) = -1;
  }

  MEMORY[0x22AA68560](this, 0x10E3C401F7B6882);
}

void WGSL::AST::Variable::~Variable(WGSL::AST::Variable *this, void *a2)
{
  v3 = *(this + 11);
  if (v3)
  {
    *(this + 11) = 0;
    *(this + 24) = 0;
    WTF::fastFree(v3, a2);
  }

  *(this + 7) = off_2838D37C0;
  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  *(this + 3) = off_2838D37C0;
  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
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

  *(this + 7) = off_2838D37C0;
  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  *(this + 3) = off_2838D37C0;
  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  JUMPOUT(0x22AA68560);
}

unint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(unint64_t result@<X0>, int a2@<W1>, _BYTE *a3@<X2>, size_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = result;
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

    v16 = result;
    v20 = a6;
    result = WTF::tryFastCompactMalloc((2 * result + 20));
    v12 = v100;
    if (!v100)
    {
LABEL_72:
      a6 = v20;
      goto LABEL_12;
    }

    v21 = v100 + 20;
    *v100 = 2;
    *(v100 + 4) = v16;
    *(v100 + 8) = v100 + 20;
    *(v100 + 16) = 0;
    v22 = v100 + 20 + 2 * a4;
    a6 = v20;
    if (a4 < 0x40)
    {
      v23 = v100 + 20;
      v26 = a5;
      v27 = a3;
    }

    else
    {
      v23 = v21 + 2 * (a4 & 0x7FFFFFFFFFFFFFC0);
      v24 = 0uLL;
      v25 = (v100 + 20);
      v26 = a5;
      v27 = a3;
      do
      {
        v101.val[0] = *v27;
        v28 = *(v27 + 16);
        v103.val[0] = *(v27 + 32);
        v29 = *(v27 + 48);
        v27 += 64;
        v30 = v29;
        v103.val[1] = 0uLL;
        v105.val[0] = v28;
        v101.val[1] = 0uLL;
        v31 = v25;
        vst2q_s8(v31, v101);
        v31 += 32;
        v105.val[1] = 0uLL;
        vst2q_s8(v31, v105);
        v32 = v25 + 64;
        vst2q_s8(v32, v103);
        v33 = v25 + 96;
        vst2q_s8(v33, *(&v24 - 1));
        v25 += 128;
      }

      while (v25 != v23);
    }

    if (v23 != v22)
    {
      v34 = v100 + 2 * a4 - v23 + 18;
      if (v34 < 0xE || (v23 < v27 + (v34 >> 1) + 1 ? (v35 = v27 >= (v34 & 0xFFFFFFFFFFFFFFFELL) + v23 + 2) : (v35 = 1), !v35))
      {
        v37 = v27;
        v38 = v23;
        goto LABEL_30;
      }

      v36 = (v34 >> 1) + 1;
      if (v34 >= 0x3E)
      {
        result = v36 & 0xFFFFFFFFFFFFFFE0;
        v68 = (v23 + 32);
        v69 = (v27 + 16);
        v70 = v36 & 0xFFFFFFFFFFFFFFE0;
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
        if (v36 == result)
        {
          goto LABEL_31;
        }

        if ((v36 & 0x18) == 0)
        {
          v38 = (v23 + 2 * result);
          v37 = (v27 + result);
          do
          {
LABEL_30:
            v39 = *v37++;
            *v38++ = v39;
          }

          while (v38 != v22);
          goto LABEL_31;
        }
      }

      else
      {
        result = 0;
      }

      v37 = (v27 + (v36 & 0xFFFFFFFFFFFFFFF8));
      v38 = (v23 + 2 * (v36 & 0xFFFFFFFFFFFFFFF8));
      v74 = (v23 + 2 * result);
      v75 = (v27 + result);
      result -= v36 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v76 = *v75++;
        *v74++ = vmovl_u8(v76);
        result += 8;
      }

      while (result);
      if (v36 != (v36 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_30;
      }
    }

LABEL_31:
    if (a4 > v6)
    {
      goto LABEL_102;
    }

    if (!v26)
    {
      goto LABEL_12;
    }

    result = v21 + 2 * a4;
    v40 = *(v26 + 8);
    v41 = *(v26 + 4);
    if ((*(v26 + 16) & 4) == 0)
    {
      if (!v41)
      {
        goto LABEL_12;
      }

      if (v41 == 1)
      {
        *result = v40->i16[0];
        goto LABEL_12;
      }

      result = memcpy(result, v40, 2 * v41);
      goto LABEL_72;
    }

    v52 = (result + 2 * v41);
    if (v41 >= 0x40)
    {
      v53 = result + 2 * (v41 & 0xFFFFFFC0);
      v54 = 0uLL;
      do
      {
        v102.val[0] = *v40;
        v55 = v40[1];
        v104.val[0] = v40[2];
        v56 = v40[3];
        v40 += 4;
        v57 = v56;
        v104.val[1] = 0uLL;
        v106.val[0] = v55;
        v102.val[1] = 0uLL;
        v58 = result;
        vst2q_s8(v58, v102);
        v58 += 32;
        v106.val[1] = 0uLL;
        vst2q_s8(v58, v106);
        v59 = (result + 64);
        vst2q_s8(v59, v104);
        v60 = (result + 96);
        vst2q_s8(v60, *(&v54 - 1));
        result += 128;
      }

      while (result != v53);
      result = v53;
    }

    if (result == v52)
    {
      goto LABEL_12;
    }

    v61 = v100 + 2 * (a4 + v41) - result + 18;
    if (v61 < 0xE || result < v40->u64 + (v61 >> 1) + 1 && v40 < (v61 & 0xFFFFFFFFFFFFFFFELL) + result + 2)
    {
      v62 = v40;
      v63 = result;
      goto LABEL_65;
    }

    v77 = (v61 >> 1) + 1;
    if (v61 >= 0x3E)
    {
      v78 = v77 & 0xFFFFFFFFFFFFFFE0;
      v90 = (result + 32);
      v91 = &v40[1];
      v92 = v77 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v93 = *v91[-2].i8;
        v94 = vmovl_u8(*v91);
        v95 = vmovl_high_u8(*v91->i8);
        v90[-2] = vmovl_u8(*v93.i8);
        v90[-1] = vmovl_high_u8(v93);
        *v90 = v94;
        v90[1] = v95;
        v90 += 4;
        v91 += 4;
        v92 -= 32;
      }

      while (v92);
      if (v77 == v78)
      {
        goto LABEL_12;
      }

      if ((v77 & 0x18) == 0)
      {
        v63 = (result + 2 * v78);
        v62 = (v40 + v78);
        do
        {
LABEL_65:
          v64 = v62->u8[0];
          v62 = (v62 + 1);
          *v63++ = v64;
        }

        while (v63 != v52);
        goto LABEL_12;
      }
    }

    else
    {
      v78 = 0;
    }

    v62 = (v40 + (v77 & 0xFFFFFFFFFFFFFFF8));
    v63 = (result + 2 * (v77 & 0xFFFFFFFFFFFFFFF8));
    v96 = (result + 2 * v78);
    v97 = &v40->i8[v78];
    v98 = v78 - (v77 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v99 = *v97++;
      *v96++ = vmovl_u8(v99);
      v98 += 8;
    }

    while (v98);
    if (v77 == (v77 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_12;
    }

    goto LABEL_65;
  }

  if (!result)
  {
LABEL_11:
    v12 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_12;
  }

  if ((result & 0x80000000) != 0)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_12;
  }

  v7 = result;
  v11 = a6;
  result = WTF::tryFastCompactMalloc((result + 20));
  v12 = v100;
  if (!v100)
  {
    a6 = v11;
    goto LABEL_12;
  }

  v13 = (v100 + 20);
  *v100 = 2;
  *(v100 + 4) = v7;
  *(v100 + 8) = v100 + 20;
  *(v100 + 16) = 4;
  v14 = a5;
  v15 = a4;
  if (a4)
  {
    if (a4 == 1)
    {
      *v13 = *a3;
    }

    else
    {
      result = memcpy((v100 + 20), a3, a4);
      v15 = a4;
      v14 = a5;
    }
  }

  v42 = v15;
  if (v15 <= v6)
  {
    a6 = v11;
    if (v14)
    {
      result = &v13[v15];
      v43 = *(v14 + 8);
      v44 = *(v14 + 4);
      if ((*(v14 + 16) & 4) != 0)
      {
        if (v44)
        {
          if (v44 == 1)
          {
            *result = v43->i8[0];
          }

          else
          {
            result = memcpy(result, v43, v44);
            a6 = v11;
          }
        }

        goto LABEL_12;
      }

      v45 = (result + v44);
      if (v44 >= 0x10)
      {
        v46 = result + (v44 & 0xFFFFFFF0);
        do
        {
          v47 = vld2q_s8(v43->i8);
          v43 += 2;
          *result = v47;
          result += 16;
        }

        while (result != v46);
      }

      if (result != v45)
      {
        v48 = v100 + v44 + v42;
        v49 = v48 - result + 20;
        if (v49 < 4 || (result < &v43[2].u64[1] + 2 * v48 + -2 * result ? (v50 = v43 >= v48 + 20) : (v50 = 1), !v50))
        {
          v65 = result;
          v66 = v43;
          goto LABEL_68;
        }

        if (v49 >= 0x20)
        {
          v51 = v49 & 0xFFFFFFFFFFFFFFE0;
          v79 = v43 + 2;
          v80 = (result + 16);
          v81 = v49 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v83 = v79[-2];
            v82 = v79[-1];
            v85 = *v79;
            v84 = v79[1];
            v79 += 4;
            v80[-1] = vuzp1q_s8(v83, v82);
            *v80 = vuzp1q_s8(v85, v84);
            v80 += 2;
            v81 -= 32;
          }

          while (v81);
          if (v49 == v51)
          {
            goto LABEL_12;
          }

          if ((v49 & 0x1C) == 0)
          {
            v66 = (v43 + 2 * v51);
            v65 = (result + v51);
            do
            {
LABEL_68:
              v67 = v66->i8[0];
              v66 = (v66 + 2);
              *v65++ = v67;
            }

            while (v65 != v45);
            goto LABEL_12;
          }
        }

        else
        {
          v51 = 0;
        }

        v65 = (result + (v49 & 0xFFFFFFFFFFFFFFFCLL));
        v66 = (v43 + 2 * (v49 & 0xFFFFFFFFFFFFFFFCLL));
        v86 = (v43 + 2 * v51);
        v87 = (result + v51);
        v88 = v51 - (v49 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v89 = *v86++;
          *v87++ = vuzp1_s8(v89, v89).u32[0];
          v88 += 4;
        }

        while (v88);
        if (v49 == (v49 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_12;
        }

        goto LABEL_68;
      }
    }

LABEL_12:
    *a6 = v12;
    return result;
  }

LABEL_102:
  __break(1u);
  return result;
}