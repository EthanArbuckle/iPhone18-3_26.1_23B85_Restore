void WGSL::constantFract(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (!**a2)
  {
    __break(0xC471u);
    return;
  }

  LOBYTE(v28[0]) = 0;
  v29 = -1;
  v6 = *(v4 + 24);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, &v32, v28, v4 + 1);
    v29 = *(v4 + 24);
  }

  v7 = WTF::fastMalloc(0x20);
  *v7 = 1;
  *(v7 + 8) = 0;
  *(v7 + 24) = -1;
  if (v29 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v29, &v32, v7 + 1, v28);
    *(v7 + 24) = v29;
  }

  v25[0] = v7;
  WGSL::constantFloor(v25, &v32);
  v9 = *v7;
  if (v9)
  {
    v10 = 24 * v9;
    v11 = v7 + 6;
    do
    {
      v8 = v11 - 16;
      if (*v11 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v24, v8);
      }

      *v11 = -1;
      v11 += 24;
      v10 -= 24;
    }

    while (v10);
  }

  v12 = WTF::fastFree(v7, v8);
  if (v29 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v24, v28);
  }

  if (v35)
  {
    if (v35 != 1)
    {
      mpark::throw_bad_variant_access(v12);
    }

    v14 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
      *a3 = v14;
      *(a3 + 24) = 1;
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 24) = 1;
    }

    return;
  }

  LOBYTE(v25[0]) = 0;
  v26 = -1;
  v15 = v34;
  if (v34 <= 5u)
  {
    if (v34 <= 2u)
    {
      if (v34)
      {
        if (v34 == 1)
        {
          LOWORD(v25[0]) = v32;
        }

        else
        {
          v25[0] = v32;
        }
      }

      else
      {
        LODWORD(v25[0]) = v32;
      }

      goto LABEL_38;
    }

    if (v34 == 3 || v34 == 4)
    {
      LODWORD(v25[0]) = v32;
LABEL_38:
      v26 = v34;
      goto LABEL_39;
    }

    v16 = v32;
LABEL_37:
    v25[0] = v16;
    goto LABEL_38;
  }

  if (v34 <= 8u)
  {
    if (v34 == 6)
    {
      LOBYTE(v25[0]) = v32;
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (v34 == 9)
  {
    v17 = v33;
    v33 = 0;
    v25[0] = v32;
    v25[1] = v17;
    goto LABEL_38;
  }

  if (v34 == 10)
  {
LABEL_31:
    v16 = v32;
    v32 = 0;
    goto LABEL_37;
  }

LABEL_39:
  LOBYTE(v28[0]) = 0;
  v29 = -1;
  v18 = *(v4 + 24);
  if (v18 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v18, &v24, v28, v4 + 1);
    v29 = *(v4 + 24);
  }

  LOBYTE(v30[0]) = 0;
  v31 = -1;
  if (v15 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v15, &v24, v30, v25);
    v31 = v26;
  }

  v19 = WTF::fastMalloc(0x38);
  *v19 = 2;
  *(v19 + 8) = 0;
  *(v19 + 24) = -1;
  if (v29 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v29, &v24, v19 + 1, v28);
    *(v19 + 24) = v29;
  }

  *(v19 + 32) = 0;
  *(v19 + 48) = -1;
  if (v31 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v31, &v24, v19 + 4, v30);
    *(v19 + 48) = v31;
  }

  v24 = v19;
  WGSL::constantMinus(a1, &v24, a3);
  v21 = *v19;
  if (v21)
  {
    v22 = 24 * v21;
    v23 = v19 + 6;
    do
    {
      v20 = v23 - 16;
      if (*v23 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v27, v20);
      }

      *v23 = -1;
      v23 += 24;
      v22 -= 24;
    }

    while (v22);
  }

  WTF::fastFree(v19, v20);
  if (v31 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v27, v30);
  }

  v31 = -1;
  if (v29 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v27, v28);
  }

  if (v26 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v28, v25);
  }

  if (v15 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v28, &v32);
  }
}

void WGSL::constantFrexp(void *a1@<X1>, uint64_t a2@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
LABEL_78:
    JUMPOUT(0x225842E64);
  }

  v4 = *(v3 + 24);
  if (v4 == 8)
  {
    v5 = *(v3 + 1);
    if (!v5 || (v6 = *v5, !v6))
    {
      v37 = 0;
      _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN4WGSL13ConstantValueES4_EEC2B8sn200100IJLm0ELm1EEJS4_S4_EJEJEJRNS3_14ConstantVectorES8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_(v31, 0, &v37);
      goto LABEL_44;
    }

    v7 = 24 * v6;
    v8 = WTF::fastMalloc((24 * v6 + 8));
    *v8 = v6;
    bzero(v8 + 2, 24 * ((24 * v6 - 24) / 0x18uLL) + 24);
    v9 = WTF::fastMalloc((24 * v6 + 8));
    *v9 = v6;
    bzero(v9 + 2, 24 * ((24 * v6 - 24) / 0x18uLL) + 24);
    v10 = 0;
    v11 = 0;
    v37 = v9;
    while (1)
    {
      v12 = *(v3 + 1);
      if (v11 >= *v12)
      {
        __break(0xC471u);
        goto LABEL_78;
      }

      v13 = &v12[v10 / 4];
      LOBYTE(v35[0]) = 0;
      v36 = -1;
      v14 = LOBYTE(v12[v10 / 4 + 6]);
      if (v14 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v14, v31, v35, v13 + 1);
        v36 = *(v13 + 24);
      }

      WGSL::constantFrexp(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()<WGSL::ConstantValue>(&v39, v35);
      if (v36 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, v35);
      }

      v36 = -1;
      if (v11 >= *v8)
      {
        __break(0xC471u);
        JUMPOUT(0x225842E84);
      }

      if (LOBYTE(v8[v10 / 4 + 6]) == 255)
      {
        if (v41 == 255)
        {
          goto LABEL_18;
        }
      }

      else if (v41 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, &v8[v10 / 4 + 2]);
        LOBYTE(v8[v10 / 4 + 6]) = -1;
        goto LABEL_18;
      }

      v31[0] = &v8[v10 / 4 + 2];
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v41, v31, v31[0], &v39);
LABEL_18:
      if (v11 >= *v9)
      {
        __break(0xC471u);
        JUMPOUT(0x225842EA4);
      }

      if (LOBYTE(v9[v10 / 4 + 6]) == 255)
      {
        if (LOBYTE(v44[0]) == 255)
        {
          goto LABEL_26;
        }
      }

      else if (LOBYTE(v44[0]) == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, &v9[v10 / 4 + 2]);
        LOBYTE(v9[v10 / 4 + 6]) = -1;
        if (LOBYTE(v44[0]) == 255)
        {
          goto LABEL_26;
        }

LABEL_25:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, &v42);
        goto LABEL_26;
      }

      v31[0] = &v9[v10 / 4 + 2];
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(LOBYTE(v44[0]), v31, v31[0], &v42);
      if (LOBYTE(v44[0]) != 255)
      {
        goto LABEL_25;
      }

LABEL_26:
      LOBYTE(v44[0]) = -1;
      if (v41 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, &v39);
      }

      ++v11;
      v10 += 24;
      if (v7 == v10)
      {
        _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN4WGSL13ConstantValueES4_EEC2B8sn200100IJLm0ELm1EEJS4_S4_EJEJEJRNS3_14ConstantVectorES8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_(v31, v8, &v37);
        v16 = *v9;
        if (v16)
        {
          v17 = 24 * v16;
          v18 = v9 + 6;
          do
          {
            v15 = v18 - 16;
            if (*v18 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v39, v15);
            }

            *v18 = -1;
            v18 += 24;
            v17 -= 24;
          }

          while (v17);
        }

        WTF::fastFree(v9, v15);
        v20 = *v8;
        if (v20)
        {
          v21 = 24 * v20;
          v22 = v8 + 6;
          do
          {
            v19 = v22 - 16;
            if (*v22 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v39, v19);
            }

            *v22 = -1;
            v22 += 24;
            v21 -= 24;
          }

          while (v21);
        }

        WTF::fastFree(v8, v19);
        goto LABEL_44;
      }
    }
  }

  LOBYTE(v39) = 0;
  LOBYTE(v41) = -1;
  if (v4 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v4, v31, &v39, v3 + 1);
    LOBYTE(v41) = *(v3 + 24);
  }

  WGSL::constantFrexp(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()<WGSL::ConstantValue>(v31, &v39);
  if (v41 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v35, &v39);
  }

LABEL_44:
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  LOBYTE(v40) = 0;
  LOBYTE(v42) = -1;
  if (v32 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v32, v35, &v40, v31);
    LOBYTE(v42) = v32;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v43 = v35[0];
  LOBYTE(v44[0]) = 0;
  v45 = -1;
  if (v34 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v34, v35, v44, v33);
    v45 = v34;
  }

  WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::HashMap(&v37, &v39, 2);
  v23 = v37;
  v37 = 0;
  v36 = 10;
  v35[0] = 0;
  *a2 = v23;
  *(a2 + 16) = 10;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, v35);
  v36 = -1;
  v25 = v37;
  if (v37)
  {
    v26 = *(v37 - 1);
    if (v26)
    {
      v27 = v37;
      do
      {
        v28 = *v27;
        if (*v27 != -1)
        {
          if (*(v27 + 24) != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, v27 + 8);
            v28 = *v27;
          }

          *(v27 + 24) = -1;
          *v27 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v24);
          }
        }

        v27 += 8;
        --v26;
      }

      while (v26);
    }

    WTF::fastFree((v25 - 4), v24);
  }

  if (v45 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, v44);
  }

  v45 = -1;
  v29 = v43;
  v43 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v24);
  }

  if (v42 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, &v40);
  }

  LOBYTE(v42) = -1;
  v30 = v39;
  v39 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v24);
  }

  if (v34 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v39, v33);
  }

  v34 = -1;
  if (v32 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v39, v31);
  }
}

void WGSL::constantInsertBits(unsigned int **a1@<X1>, uint64_t a2@<X8>)
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x225843CC4);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x225843CE4);
  }

  if (v4 <= 2)
  {
    __break(0xC471u);
    JUMPOUT(0x225843D04);
  }

  if (v4 == 3)
  {
    __break(0xC471u);
LABEL_223:
    JUMPOUT(0x225843C74);
  }

  LOBYTE(v79[0]) = 0;
  v5 = -1;
  v80 = -1;
  v6 = *(v3 + 24);
  if (v6 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, &v58, v79, v3 + 1);
    v80 = *(v3 + 24);
  }

  LOBYTE(v81[0]) = 0;
  v82 = -1;
  v7 = *(v3 + 48);
  if (v7 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, &v58, v81, v3 + 4);
    v82 = *(v3 + 48);
  }

  LOBYTE(v83[0]) = 0;
  v84 = -1;
  v8 = *(v3 + 72);
  if (v8 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v8, &v58, v83, v3 + 7);
    v84 = *(v3 + 72);
  }

  LOBYTE(v85[0]) = 0;
  v86 = -1;
  v9 = *(v3 + 96);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, &v58, v85, v3 + 10);
    v86 = *(v3 + 96);
  }

  LOBYTE(v58) = 0;
  v60 = -1;
  if (v80 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v80, v76, &v58, v79);
    v60 = v80;
    if (v80 != 255)
    {
      if (v80 == 8)
      {
        goto LABEL_29;
      }

      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v76, &v58);
    }
  }

  LOBYTE(v58) = 0;
  v60 = -1;
  if (v82 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v82, v76, &v58, v81);
    v60 = v82;
    if (v82 == 8)
    {
      goto LABEL_29;
    }

    if (v82 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v76, &v58);
    }
  }

  LOBYTE(v58) = 0;
  v60 = -1;
  if (v84 == 255)
  {
    goto LABEL_25;
  }

  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v84, v76, &v58, v83);
  v60 = v84;
  if (v84 != 8)
  {
    if (v84 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v76, &v58);
    }

LABEL_25:
    LOBYTE(v58) = 0;
    v60 = -1;
    if (v86 == 255)
    {
      goto LABEL_158;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v86, v76, &v58, v85);
    v60 = v86;
    if (v86 != 8)
    {
      if (v86 == 255)
      {
        goto LABEL_158;
      }

      goto LABEL_157;
    }
  }

LABEL_29:
  if (!v58)
  {
LABEL_157:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v76, &v58);
LABEL_158:
    LOBYTE(v76[0]) = 0;
    v77 = -1;
    v38 = *(v3 + 24);
    if (v38 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v38, &v58, v76, v3 + 1);
      v77 = *(v3 + 24);
    }

    LOBYTE(v73[0]) = 0;
    v74 = -1;
    v39 = *(v3 + 48);
    if (v39 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v39, &v58, v73, v3 + 4);
      v74 = *(v3 + 48);
    }

    LOBYTE(v71[0]) = 0;
    v72 = -1;
    v40 = *(v3 + 72);
    if (v40 == 255)
    {
      v41 = -1;
      LOBYTE(v69[0]) = 0;
      v70 = -1;
      v42 = *(v3 + 96);
      if (v42 == 255)
      {
LABEL_165:
        WGSL::constantInsertBits(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()<WGSL::ConstantValue,WGSL::ConstantValue,WGSL::ConstantValue,WGSL::ConstantValue>(&v58, v76, v73, v71[0], v41, v69[0], v5);
        *a2 = 0;
        *(a2 + 16) = -1;
        v43 = v60;
        if (v60 > 5u)
        {
          if (v60 > 8u)
          {
            if (v60 == 9)
            {
              v52 = v59;
              v59 = 0;
              *a2 = v58;
              *(a2 + 8) = v52;
              goto LABEL_196;
            }

            if (v60 != 10)
            {
              *(a2 + 24) = 0;
              v60 = -1;
              if (v70 == 255)
              {
LABEL_198:
                v70 = -1;
                if (v72 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v67, v71);
                }

                v72 = -1;
                if (v74 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v67, v73);
                }

                v74 = -1;
                if (v77 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v67, v76);
                }

                v77 = -1;
                if (v86 == 255)
                {
                  goto LABEL_206;
                }

LABEL_205:
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v58, v85);
                goto LABEL_206;
              }

LABEL_197:
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v67, v69);
              goto LABEL_198;
            }
          }

          else if (v60 == 6)
          {
            *a2 = v58;
            goto LABEL_196;
          }

          v44 = v58;
          v58 = 0;
        }

        else
        {
          if (v60 <= 2u)
          {
            if (v60)
            {
              if (v60 == 1)
              {
                *a2 = v58;
              }

              else
              {
                *a2 = v58;
              }
            }

            else
            {
              *a2 = v58;
            }

LABEL_196:
            *(a2 + 16) = v43;
            *(a2 + 24) = 0;
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v67, &v58);
            v60 = -1;
            if (v70 == 255)
            {
              goto LABEL_198;
            }

            goto LABEL_197;
          }

          if (v60 == 3 || v60 == 4)
          {
            *a2 = v58;
            goto LABEL_196;
          }

          v44 = v58;
        }

        *a2 = v44;
        goto LABEL_196;
      }
    }

    else
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v40, &v58, v71, v3 + 7);
      v41 = *(v3 + 72);
      v72 = v41;
      LOBYTE(v69[0]) = 0;
      v70 = -1;
      v42 = *(v3 + 96);
      if (v42 == 255)
      {
        goto LABEL_165;
      }
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v42, &v58, v69, v3 + 10);
    v5 = *(v3 + 96);
    v70 = v5;
    v41 = v72;
    goto LABEL_165;
  }

  v10 = *v58;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v76, &v58);
  if (!v10)
  {
    goto LABEL_158;
  }

  v11 = WTF::fastMalloc((24 * v10 + 8));
  *v11 = v10;
  bzero(v11 + 1, 24 * ((24 * v10 - 24) / 0x18uLL) + 24);
  v12 = 0;
  v13 = 0;
  LODWORD(v58) = 0;
  v60 = 0;
  LODWORD(v61[0]) = 0;
  v62 = 0;
  LODWORD(v63[0]) = 0;
  v64 = 0;
  LODWORD(v65[0]) = 0;
  v66 = 0;
  v14 = a2;
  v15 = *a2;
  v53 = v14;
  v54 = *(v14 + 24);
  while (1)
  {
    v16 = v80;
    if (v80 == 8)
    {
      if (v13 >= *v79[0])
      {
        goto LABEL_217;
      }

      v16 = *(v79[0] + v12 + 24);
      if (v60 == 255)
      {
        if (v16 == 255)
        {
          goto LABEL_47;
        }
      }

      else if (v16 == 255)
      {
        goto LABEL_41;
      }

      v76[0] = &v58;
      v17 = (v79[0] + v12 + 8);
    }

    else
    {
      if (v60 == 255)
      {
        if (v80 == 255)
        {
          goto LABEL_47;
        }
      }

      else if (v80 == 255)
      {
LABEL_41:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v76, &v58);
        v60 = -1;
        goto LABEL_47;
      }

      v76[0] = &v58;
      v17 = v79;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v16, v76, &v58, v17);
LABEL_47:
    v18 = v82;
    if (v82 == 8)
    {
      if (v13 >= *v81[0])
      {
        goto LABEL_217;
      }

      v18 = *(v81[0] + v12 + 24);
      if (v62 == 255)
      {
        if (v18 == 255)
        {
          goto LABEL_60;
        }
      }

      else if (v18 == 255)
      {
        goto LABEL_54;
      }

      v76[0] = v61;
      v19 = (v81[0] + v12 + 8);
    }

    else
    {
      if (v62 == 255)
      {
        if (v82 == 255)
        {
          goto LABEL_60;
        }
      }

      else if (v82 == 255)
      {
LABEL_54:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v76, v61);
        v62 = -1;
        goto LABEL_60;
      }

      v76[0] = v61;
      v19 = v81;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v18, v76, v61, v19);
LABEL_60:
    v20 = v84;
    if (v84 == 8)
    {
      if (v13 >= *v83[0])
      {
        goto LABEL_217;
      }

      v20 = *(v83[0] + v12 + 24);
      if (v64 == 255)
      {
        if (v20 == 255)
        {
          goto LABEL_73;
        }
      }

      else if (v20 == 255)
      {
        goto LABEL_67;
      }

      v76[0] = v63;
      v21 = (v83[0] + v12 + 8);
    }

    else
    {
      if (v64 == 255)
      {
        if (v84 == 255)
        {
          goto LABEL_73;
        }
      }

      else if (v84 == 255)
      {
LABEL_67:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v76, v63);
        v64 = -1;
        goto LABEL_73;
      }

      v76[0] = v63;
      v21 = v83;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v20, v76, v63, v21);
LABEL_73:
    v22 = v86;
    if (v86 != 8)
    {
      if (v66 == 255)
      {
        if (v86 == 255)
        {
          goto LABEL_86;
        }
      }

      else if (v86 == 255)
      {
LABEL_80:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v76, v65);
        v66 = -1;
        goto LABEL_86;
      }

      v76[0] = v65;
      v23 = v85;
      goto LABEL_85;
    }

    if (v13 >= *v85[0])
    {
LABEL_217:
      *v53 = v15;
      *(v53 + 24) = v54;
      __break(0xC471u);
      goto LABEL_223;
    }

    v22 = *(v85[0] + v12 + 24);
    if (v66 == 255)
    {
      if (v22 == 255)
      {
        goto LABEL_86;
      }
    }

    else if (v22 == 255)
    {
      goto LABEL_80;
    }

    v76[0] = v65;
    v23 = (v85[0] + v12 + 8);
LABEL_85:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v22, v76, v65, v23);
LABEL_86:
    LOBYTE(v73[0]) = 0;
    v74 = -1;
    if (v60 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v60, v71, v73, &v58);
      v74 = v60;
    }

    LOBYTE(v71[0]) = 0;
    v72 = -1;
    if (v62 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v62, v69, v71, v61);
      v72 = v62;
    }

    LOBYTE(v69[0]) = 0;
    v24 = -1;
    v70 = -1;
    if (v64 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v64, v67, v69, v63);
      v25 = v64;
      v70 = v64;
      LOBYTE(v67[0]) = 0;
      v68 = -1;
      v26 = v66;
      if (v66 == 255)
      {
        goto LABEL_93;
      }

LABEL_92:
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v26, &v75, v67, v65);
      v24 = v66;
      v68 = v66;
      v25 = v70;
      goto LABEL_93;
    }

    v25 = -1;
    LOBYTE(v67[0]) = 0;
    v68 = -1;
    v26 = v66;
    if (v66 != 255)
    {
      goto LABEL_92;
    }

LABEL_93:
    WGSL::constantInsertBits(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()<WGSL::ConstantValue,WGSL::ConstantValue,WGSL::ConstantValue,WGSL::ConstantValue>(&v55, v73, v71, v69[0], v25, v67[0], v24);
    if (v68 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v75, v67);
    }

    v68 = -1;
    if (v70 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v75, v69);
    }

    v70 = -1;
    if (v72 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v75, v71);
    }

    v72 = -1;
    if (v74 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v75, v73);
    }

    LOBYTE(v76[0]) = 0;
    v77 = -1;
    if (v57 <= 5u)
    {
      break;
    }

    if (v57 <= 8u)
    {
      if (v57 == 6)
      {
        LOBYTE(v76[0]) = v55;
        goto LABEL_123;
      }

LABEL_116:
      v28 = v55;
      v55 = 0;
      goto LABEL_122;
    }

    if (v57 == 9)
    {
      v29 = v56;
      v56 = 0;
      v76[0] = v55;
      v76[1] = v29;
      goto LABEL_123;
    }

    if (v57 == 10)
    {
      goto LABEL_116;
    }

    v78 = 0;
LABEL_129:
    if (v13 >= *v11)
    {
      *v53 = v15;
      *(v53 + 24) = v54;
      __break(0xC471u);
      JUMPOUT(0x225843CA4);
    }

    if (LOBYTE(v11[v12 / 8 + 3]) == 255)
    {
      if (v77 == 255)
      {
        goto LABEL_135;
      }
    }

    else if (v77 == 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v73, &v11[v12 / 8 + 1]);
      LOBYTE(v11[v12 / 8 + 3]) = -1;
      goto LABEL_135;
    }

    v73[0] = &v11[v12 / 8 + 1];
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v77, v73, v73[0], v76);
LABEL_135:
    v31 = 1;
    v32 = v78;
    if (v78 == 255)
    {
      goto LABEL_32;
    }

LABEL_136:
    if (v32)
    {
      v33 = v76[0];
      v76[0] = 0;
      if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v27);
        if ((v31 & 1) == 0)
        {
LABEL_143:
          v34 = v54;
          goto LABEL_144;
        }

        goto LABEL_33;
      }
    }

    else if (v77 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v73, v76);
      if ((v31 & 1) == 0)
      {
        goto LABEL_143;
      }

      goto LABEL_33;
    }

LABEL_32:
    if ((v31 & 1) == 0)
    {
      goto LABEL_143;
    }

LABEL_33:
    ++v13;
    v12 += 24;
    if (24 * v10 == v12)
    {
      v45 = *v11;
      v46 = 24 * v45;
      v47 = WTF::fastMalloc((24 * v45 + 8));
      v48 = v47;
      *v47 = v45;
      if (v45)
      {
        v49 = (v47 + 6);
        v50 = v11 + 3;
        do
        {
          *(v49 - 16) = 0;
          *v49 = -1;
          v51 = *v50;
          if (v51 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v51, v76, v49 - 2, v50 - 2);
            *v49 = *v50;
          }

          v49 += 3;
          v50 += 3;
          v46 -= 24;
        }

        while (v46);
      }

      v77 = 8;
      v76[0] = 0;
      *v53 = v48;
      *(v53 + 16) = 8;
      *(v53 + 24) = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v73, v76);
      if (v66 != 255)
      {
        goto LABEL_145;
      }

      goto LABEL_146;
    }
  }

  if (v57 > 2u)
  {
    if (v57 == 3 || v57 == 4)
    {
      LODWORD(v76[0]) = v55;
      goto LABEL_123;
    }

    v28 = v55;
LABEL_122:
    v76[0] = v28;
    goto LABEL_123;
  }

  if (v57)
  {
    if (v57 == 1)
    {
      LOWORD(v76[0]) = v55;
    }

    else
    {
      v76[0] = v55;
    }
  }

  else
  {
    LODWORD(v76[0]) = v55;
  }

LABEL_123:
  v77 = v57;
  v78 = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v73, &v55);
  if (!v78)
  {
    goto LABEL_129;
  }

  if (v78 != 1)
  {
    *v53 = v15;
    *(v53 + 24) = v54;
    mpark::throw_bad_variant_access(v30);
  }

  v15 = v76[0];
  if (v76[0])
  {
    v31 = 0;
    atomic_fetch_add_explicit(v76[0], 2u, memory_order_relaxed);
    v54 = 1;
    v32 = v78;
    if (v78 == 255)
    {
      goto LABEL_32;
    }

    goto LABEL_136;
  }

  v34 = 1;
LABEL_144:
  *v53 = v15;
  *(v53 + 24) = v34;
  if (v66 != 255)
  {
LABEL_145:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v76, v65);
  }

LABEL_146:
  v66 = -1;
  if (v64 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v76, v63);
  }

  v64 = -1;
  if (v62 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v76, v61);
  }

  v62 = -1;
  if (v60 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v76, &v58);
  }

  v35 = *v11;
  if (v35)
  {
    v36 = 24 * v35;
    v37 = v11 + 3;
    do
    {
      v27 = (v37 - 16);
      if (*v37 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v58, v27);
      }

      *v37 = -1;
      v37 += 24;
      v36 -= 24;
    }

    while (v36);
  }

  WTF::fastFree(v11, v27);
  if (v86 != 255)
  {
    goto LABEL_205;
  }

LABEL_206:
  v86 = -1;
  if (v84 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v58, v83);
  }

  v84 = -1;
  if (v82 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v58, v81);
  }

  v82 = -1;
  if (v80 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v58, v79);
  }
}

void WGSL::constantInverseSqrt(void *a1@<X1>, uint64_t a2@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_88;
  }

  v4 = (v3 + 2);
  LOBYTE(v49[0]) = 0;
  v50 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v46, v49, v3 + 1), v50 = *(v3 + 24), LOBYTE(v46[0]) = 0, v47 = -1, v50 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v50, v43, v46, v49), v47 = v50, v50 == 255))
  {
LABEL_53:
    v27 = *(v3 + 24);
    if (v27 == 2)
    {
      *v46 = 1.0 / sqrt(*v4);
      v47 = 2;
      *a2 = v46[0];
    }

    else
    {
      if (v27 != 1)
      {
        if (*(v3 + 24))
        {
          __break(0xC471u);
          JUMPOUT(0x225844370);
        }

        *v46 = 1.0 / sqrtf(*v4);
        v47 = 0;
        *a2 = v46[0];
        *(a2 + 16) = 0;
LABEL_60:
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v46);
        if (v50 == 255)
        {
          return;
        }

        goto LABEL_61;
      }

      _H0 = *v4;
      __asm { FCVT            S0, H0 }

      _D0 = 1.0 / sqrtf(_S0);
      __asm { FCVT            H0, D0 }

      LOWORD(v46[0]) = LOWORD(_D0);
      v47 = 1;
      *a2 = LOWORD(_D0);
    }

    *(a2 + 16) = v27;
    goto LABEL_60;
  }

  if (v50 != 8 || !v46[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v46);
    goto LABEL_53;
  }

  v6 = *v46[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v46);
  if (!v6)
  {
    goto LABEL_53;
  }

  v7 = WTF::fastMalloc((24 * v6 + 8));
  *v7 = v6;
  v8 = v7 + 2;
  v9 = 6;
  bzero(v7 + 2, 24 * ((24 * v6 - 24) / 0x18uLL) + 24);
  v10 = 0;
  LODWORD(v41[0]) = 0;
  v42 = 0;
  v11 = *(a2 + 24);
  v12 = *a2;
  do
  {
    v13 = v50;
    if (v50 != 8)
    {
      if (v42 == 255)
      {
        if (v50 == 255)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          goto LABEL_87;
        }
      }

      else if (v50 == 255)
      {
LABEL_81:
        *a2 = v12;
        *(a2 + 24) = v11;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
        v42 = -1;
LABEL_87:
        __break(0xC471u);
LABEL_88:
        JUMPOUT(0x225844304);
      }

      v46[0] = v41;
      v14 = v49;
      goto LABEL_21;
    }

    if (v10 >= *v49[0])
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      __break(0xC471u);
      JUMPOUT(0x225844350);
    }

    v14 = (v49[0] + v9 * 4 - 16);
    v13 = *(v49[0] + v9 * 4);
    if (v42 == 255)
    {
      if (v13 == 255)
      {
        goto LABEL_22;
      }
    }

    else if (v13 == 255)
    {
      goto LABEL_81;
    }

    v46[0] = v41;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v13, v46, v41, v14);
LABEL_22:
    if (v42)
    {
      if (v42 == 1)
      {
        _H0 = v41[0];
        __asm { FCVT            S0, H0 }

        _D0 = 1.0 / sqrtf(_S0);
        __asm { FCVT            H0, D0 }

        LOWORD(v43[0]) = LOWORD(_D0);
        v44 = 1;
        LOWORD(v46[0]) = LOWORD(_D0);
        v47 = 1;
        v48 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v45, v43);
        v24 = v48;
        if (!v48)
        {
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      if (v42 == 2)
      {
        *v43 = 1.0 / sqrt(*v41);
        v44 = 2;
        v46[0] = v43[0];
        v47 = 2;
        v48 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v45, v43);
        v24 = v48;
        if (v48)
        {
          goto LABEL_27;
        }

LABEL_33:
        if (v10 >= *v7)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          __break(0xC471u);
          JUMPOUT(0x225844398);
        }

        if (LOBYTE(v7[v9]) == 255)
        {
          if (v47 == 255)
          {
            goto LABEL_40;
          }
        }

        else if (v47 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v8);
          LOBYTE(v7[v9]) = -1;
          v25 = v48;
          if (v48 == 255)
          {
            goto LABEL_47;
          }

          goto LABEL_41;
        }

        v43[0] = v8;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v47, v43, v8, v46);
LABEL_40:
        v25 = v48;
        if (v48 == 255)
        {
          goto LABEL_47;
        }

        goto LABEL_41;
      }

      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_87;
    }

    *v43 = 1.0 / sqrtf(*v41);
    v44 = 0;
    LODWORD(v46[0]) = v43[0];
    v47 = 0;
    v48 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v45, v43);
    v24 = v48;
    if (!v48)
    {
      goto LABEL_33;
    }

LABEL_27:
    if (v24 != 1)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      mpark::throw_bad_variant_access(v22);
    }

    v12 = v46[0];
    if (v46[0])
    {
      atomic_fetch_add_explicit(v46[0], 2u, memory_order_relaxed);
      v11 = 1;
      v25 = v48;
      if (v48 == 255)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v11 = 1;
      v25 = v48;
      if (v48 == 255)
      {
        goto LABEL_47;
      }
    }

LABEL_41:
    if (v25)
    {
      v26 = v46[0];
      v46[0] = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v23);
      }
    }

    else if (v47 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v46);
    }

LABEL_47:
    if (v24)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_70;
    }

    ++v10;
    v8 += 24;
    v9 += 6;
  }

  while (v6 != v10);
  v31 = *v7;
  v32 = 24 * v31;
  v33 = WTF::fastMalloc((24 * v31 + 8));
  v34 = v33;
  *v33 = v31;
  if (v31)
  {
    v35 = (v33 + 6);
    v36 = (v7 + 6);
    do
    {
      *(v35 - 16) = 0;
      *v35 = -1;
      v37 = *v36;
      if (v37 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v37, v46, v35 - 2, v36 - 2);
        *v35 = *v36;
      }

      v35 += 3;
      v36 += 3;
      v32 -= 24;
    }

    while (v32);
  }

  v47 = 8;
  v46[0] = 0;
  *a2 = v34;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v46);
LABEL_70:
  if (v42 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
  }

  v38 = *v7;
  if (v38)
  {
    v39 = 24 * v38;
    v40 = v7 + 6;
    do
    {
      v23 = (v40 - 16);
      if (*v40 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v23);
      }

      *v40 = -1;
      v40 += 24;
      v39 -= 24;
    }

    while (v39);
  }

  WTF::fastFree(v7, v23);
  if (v50 != 255)
  {
LABEL_61:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v49);
  }
}

void WGSL::constantLdexp(int **a1@<X1>, uint64_t a2@<X8>)
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x225844E14);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x225844E34);
  }

  v5 = (v3 + 2);
  LOBYTE(v66[0]) = 0;
  v67 = -1;
  v6 = *(v3 + 24);
  if (v6 == 255)
  {
    v7 = 255;
    LOBYTE(v68[0]) = 0;
    v69 = -1;
    v8 = *(v3 + 48);
    if (v8 == 255)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, __x, v66, v3 + 1);
  v7 = *(v3 + 24);
  v67 = *(v3 + 24);
  LOBYTE(v68[0]) = 0;
  v69 = -1;
  v8 = *(v3 + 48);
  if (v8 != 255)
  {
LABEL_5:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v8, __x, v68, v3 + 4);
    v69 = *(v3 + 48);
    v7 = v67;
  }

LABEL_6:
  LOBYTE(__x[0]) = 0;
  v57 = -1;
  if (v7 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v63, __x, v66), v57 = v67, v67 == 255))
  {
LABEL_10:
    LOBYTE(__x[0]) = 0;
    v57 = -1;
    v9 = v69;
    if (v69 == 255)
    {
      goto LABEL_101;
    }

    v9 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v69, v63, __x, v68);
    v57 = v69;
    if (v69 != 8)
    {
      if (v69 == 255)
      {
        goto LABEL_101;
      }

      goto LABEL_100;
    }

    goto LABEL_16;
  }

  if (v67 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v63, __x);
    goto LABEL_10;
  }

LABEL_16:
  if (!__x[0])
  {
LABEL_100:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v63, __x);
LABEL_101:
    v38 = *(v3 + 24);
    v39 = *(v3 + 48);
    if (v38 == 2)
    {
      if (v39 == 5)
      {
        v40 = *(v3 + 4);
        if (v40 <= -1023)
        {
          __x[0] = 0;
          v41 = 2;
          v57 = 2;
          *a2 = 0;
LABEL_134:
          *(a2 + 16) = v41;
          goto LABEL_135;
        }

        if (v40 < 1025)
        {
          __x[0] = ldexp(*v5, v40);
          v41 = 2;
          v57 = 2;
          *a2 = __x[0];
          goto LABEL_134;
        }

        WTF::tryFastCompactMalloc(0x39);
        v44 = __x[0];
        if (!__x[0])
        {
          __break(0xC471u);
          JUMPOUT(0x225844EF0);
        }

        *__x[0] = 0x2500000002;
        qmemcpy((v44 + 20), "e2 must be less than or equal to 1024", 37);
        *(v44 + 8) = v44 + 20;
        *(v44 + 16) = 4;
        goto LABEL_123;
      }

LABEL_144:
      mpark::throw_bad_variant_access(v9);
    }

    if (v39 != 3)
    {
      goto LABEL_144;
    }

    v42 = v3[8];
    if (v38 == 1)
    {
      if (v42 <= -15)
      {
        _H0 = 0;
LABEL_133:
        LOWORD(__x[0]) = _H0;
        v41 = 1;
        v57 = 1;
        *a2 = _H0;
        goto LABEL_134;
      }

      if (v42 < 17)
      {
        _H0 = *v5;
        __asm { FCVT            S0, H0; float }

        _S0 = ldexpf(_S0, v42);
        __asm { FCVT            H0, S0 }

        goto LABEL_133;
      }

      WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<int,void>>(__x, "e2 must be less than or equal to ", 0x21uLL, 0x10);
      v44 = __x[0];
      if (!__x[0])
      {
LABEL_154:
        __break(0xC471u);
        JUMPOUT(0x225844BC4);
      }
    }

    else
    {
      if (*(v3 + 24))
      {
        __break(0xC471u);
        JUMPOUT(0x225844EC0);
      }

      if (v42 <= -127)
      {
        LODWORD(__x[0]) = 0;
        v57 = 0;
        *a2 = 0;
        *(a2 + 16) = 0;
        goto LABEL_135;
      }

      if (v42 < 129)
      {
        LODWORD(__x[0]) = ldexpf(*v5, v42);
        v57 = 0;
        *a2 = __x[0];
        *(a2 + 16) = 0;
LABEL_135:
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v63, __x);
        if (v69 == 255)
        {
          goto LABEL_137;
        }

        goto LABEL_136;
      }

      WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<int,void>>(__x, "e2 must be less than or equal to ", 0x21uLL, 0x80);
      v44 = __x[0];
      if (!__x[0])
      {
        goto LABEL_154;
      }
    }

LABEL_123:
    *a2 = v44;
    *(a2 + 24) = 1;
    if (v69 == 255)
    {
      goto LABEL_137;
    }

LABEL_136:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(__x, v68);
    goto LABEL_137;
  }

  v10 = *__x[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v63, __x);
  if (!v10)
  {
    goto LABEL_101;
  }

  v11 = WTF::fastMalloc((24 * v10 + 8));
  *v11 = v10;
  v12 = v11 + 2;
  v13 = 24;
  bzero(v11 + 2, 24 * ((24 * v10 - 24) / 0x18uLL) + 24);
  v14 = 0;
  v57 = 0;
  __e[0] = 0;
  v59 = 0;
  v15 = *a2;
  v55 = *(a2 + 24);
  LODWORD(__x[0]) = 0;
  do
  {
    v16 = v67;
    if (v67 == 8)
    {
      if (v14 >= *v66[0])
      {
        goto LABEL_145;
      }

      v17 = (v66[0] + v13 - 16);
      v16 = *(v66[0] + v13);
      if (v57 == 255)
      {
        if (v16 == 255)
        {
          goto LABEL_34;
        }
      }

      else if (v16 == 255)
      {
        goto LABEL_28;
      }

      v63[0] = __x;
    }

    else
    {
      if (v57 == 255)
      {
        if (v67 == 255)
        {
          goto LABEL_34;
        }
      }

      else if (v67 == 255)
      {
LABEL_28:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v63, __x);
        v57 = -1;
        goto LABEL_34;
      }

      v63[0] = __x;
      v17 = v66;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v16, v63, __x, v17);
LABEL_34:
    v18 = v69;
    if (v69 == 8)
    {
      if (v14 >= *v68[0])
      {
LABEL_145:
        *a2 = v15;
        *(a2 + 24) = v55;
        __break(0xC471u);
        JUMPOUT(0x225844DF4);
      }

      v19 = (v68[0] + v13 - 16);
      v18 = *(v68[0] + v13);
      if (v59 == 255)
      {
        if (v18 == 255)
        {
          goto LABEL_47;
        }
      }

      else if (v18 == 255)
      {
        goto LABEL_41;
      }

      v63[0] = __e;
    }

    else
    {
      if (v59 == 255)
      {
        if (v69 == 255)
        {
          goto LABEL_47;
        }
      }

      else if (v69 == 255)
      {
LABEL_41:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v63, __e);
        v59 = -1;
        goto LABEL_47;
      }

      v63[0] = __e;
      v19 = v68;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v18, v63, __e, v19);
LABEL_47:
    if (v57 == 2)
    {
      if (v59 != 5)
      {
        goto LABEL_143;
      }

      if (*__e <= -1023)
      {
        v60[0] = 0;
        v20 = 2;
        v61 = 2;
        v63[0] = 0;
        goto LABEL_65;
      }

      if (*__e >= 1025)
      {
        WTF::tryFastCompactMalloc(0x39);
        v22 = v60[0];
        if (!v60[0])
        {
          *a2 = v15;
          *(a2 + 24) = v55;
          __break(0xC471u);
          JUMPOUT(0x225844EA0);
        }

        *v60[0] = 0x2500000002;
        *(v22 + 1) = v22 + 20;
        *(v22 + 4) = 4;
        qmemcpy(v22 + 20, "e2 must be less than or equal to 1024", 37);
        v63[0] = v22;
        v15 = v22;
        v65 = 1;
        goto LABEL_72;
      }

      v60[0] = COERCE__BYTE_(ldexp(*__x, __e[0]));
      v20 = 2;
      v61 = 2;
      v63[0] = v60[0];
    }

    else
    {
      if (v59 != 3)
      {
        goto LABEL_143;
      }

      if (v57 != 1)
      {
        if (v57)
        {
          *a2 = v15;
          *(a2 + 24) = v55;
          __break(0xC471u);
          JUMPOUT(0x225844E8CLL);
        }

        if (__e[0] > -127)
        {
          if (__e[0] >= 129)
          {
            WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<int,void>>(v60, "e2 must be less than or equal to ", 0x21uLL, 0x80);
            v23 = v60[0];
            if (!v60[0])
            {
              *a2 = v15;
              *(a2 + 24) = v55;
              __break(0xC471u);
              JUMPOUT(0x225844EE8);
            }

            goto LABEL_71;
          }

          LODWORD(v60[0]) = ldexpf(*__x, __e[0]);
          v61 = 0;
          LODWORD(v63[0]) = v60[0];
        }

        else
        {
          LODWORD(v60[0]) = 0;
          v61 = 0;
          LODWORD(v63[0]) = 0;
        }

        v64 = 0;
        v65 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v62, v60);
        v24 = v65;
        if (!v65)
        {
          goto LABEL_77;
        }

LABEL_66:
        if (v24 != 1)
        {
LABEL_143:
          *a2 = v15;
          *(a2 + 24) = v55;
          mpark::throw_bad_variant_access(v18);
        }

        v15 = v63[0];
        if (!v63[0])
        {
          *a2 = v63[0];
          *(a2 + 24) = 1;
          if (v59 == 255)
          {
            goto LABEL_93;
          }

LABEL_92:
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v63, __e);
          goto LABEL_93;
        }

LABEL_72:
        v25 = 0;
        atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
        v55 = 1;
        v26 = v65;
        if (v65 == 255)
        {
          goto LABEL_19;
        }

        goto LABEL_84;
      }

      if (__e[0] <= -15)
      {
        LOWORD(v60[0]) = 0;
        v20 = 1;
        v61 = 1;
        LOWORD(v63[0]) = 0;
        goto LABEL_65;
      }

      if (__e[0] >= 17)
      {
        WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<int,void>>(v60, "e2 must be less than or equal to ", 0x21uLL, 0x10);
        v23 = v60[0];
        if (!v60[0])
        {
          *a2 = v15;
          *(a2 + 24) = v55;
          __break(0xC471u);
          JUMPOUT(0x225844ED4);
        }

LABEL_71:
        v63[0] = v23;
        v65 = 1;
        v15 = v23;
        goto LABEL_72;
      }

      _H0 = __x[0];
      __asm { FCVT            S0, H0; float }

      _S0 = ldexpf(_S0, __e[0]);
      __asm { FCVT            H0, S0 }

      LOWORD(v60[0]) = LOWORD(_S0);
      v20 = 1;
      v61 = 1;
      LOWORD(v63[0]) = LOWORD(_S0);
    }

LABEL_65:
    v64 = v20;
    v65 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v62, v60);
    v24 = v65;
    if (v65)
    {
      goto LABEL_66;
    }

LABEL_77:
    if (v14 >= *v11)
    {
      *a2 = v15;
      *(a2 + 24) = v55;
      __break(0xC471u);
      JUMPOUT(0x225844E60);
    }

    if (LOBYTE(v11[v13 / 4]) == 255)
    {
      if (v64 == 255)
      {
        goto LABEL_83;
      }
    }

    else if (v64 == 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v60, v12);
      LOBYTE(v11[v13 / 4]) = -1;
      goto LABEL_83;
    }

    v60[0] = v12;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v64, v60, v12, v63);
LABEL_83:
    v25 = 1;
    v26 = v65;
    if (v65 == 255)
    {
      goto LABEL_19;
    }

LABEL_84:
    if (v26)
    {
      v34 = v63[0];
      v63[0] = 0;
      if (!v34 || atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
LABEL_19:
        if ((v25 & 1) == 0)
        {
          goto LABEL_91;
        }

        goto LABEL_20;
      }

      WTF::StringImpl::destroy(v34, v21);
      if ((v25 & 1) == 0)
      {
LABEL_91:
        *a2 = v15;
        *(a2 + 24) = v55;
        if (v59 == 255)
        {
          goto LABEL_93;
        }

        goto LABEL_92;
      }
    }

    else
    {
      if (v64 == 255)
      {
        goto LABEL_19;
      }

      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v60, v63);
      if ((v25 & 1) == 0)
      {
        goto LABEL_91;
      }
    }

LABEL_20:
    ++v14;
    v12 += 24;
    v13 += 24;
  }

  while (v10 != v14);
  v45 = *v11;
  v46 = 24 * v45;
  v47 = WTF::fastMalloc((24 * v45 + 8));
  v48 = v47;
  *v47 = v45;
  if (v45)
  {
    v49 = (v47 + 6);
    v50 = (v11 + 6);
    do
    {
      *(v49 - 16) = 0;
      *v49 = -1;
      v51 = *v50;
      if (v51 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v51, v63, v49 - 2, v50 - 2);
        *v49 = *v50;
      }

      v49 += 3;
      v50 += 3;
      v46 -= 24;
    }

    while (v46);
  }

  v64 = 8;
  v63[0] = 0;
  *a2 = v48;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v60, v63);
  if (v59 != 255)
  {
    goto LABEL_92;
  }

LABEL_93:
  v59 = -1;
  if (v57 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v63, __x);
  }

  v35 = *v11;
  if (v35)
  {
    v36 = 24 * v35;
    v37 = v11 + 6;
    do
    {
      v21 = (v37 - 16);
      if (*v37 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(__x, v21);
      }

      *v37 = -1;
      v37 += 24;
      v36 -= 24;
    }

    while (v36);
  }

  WTF::fastFree(v11, v21);
  if (v69 != 255)
  {
    goto LABEL_136;
  }

LABEL_137:
  v69 = -1;
  if (v67 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(__x, v66);
  }
}

void WGSL::constantLength(const WGSL::Type **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a3;
  v62 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (**a2)
  {
    if (*(v4 + 24) == 8)
    {
      WGSL::zeroValue(v48, a1);
      if (*(v4 + 24) != 8)
      {
        mpark::throw_bad_variant_access(v6);
      }

      v7 = *(v4 + 1);
      if (v7)
      {
        v8 = v7 + 2;
      }

      else
      {
        v8 = 0;
      }

      if (v7)
      {
        v9 = &v7[6 * *v7 + 2];
        if (v8 != v9)
        {
LABEL_9:
          v10 = *v3;
          v43 = v3;
          v44 = *(v3 + 24);
          while (1)
          {
            LOBYTE(v54[0]) = 0;
            v55 = -1;
            v11 = *(v8 + 16);
            if (v11 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v11, v51, v54, v8);
              v55 = *(v8 + 16);
            }

            LOBYTE(v56[0]) = 0;
            v57 = -1;
            v12 = *(v8 + 16);
            if (v12 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v12, v51, v56, v8);
              v57 = *(v8 + 16);
            }

            v13 = WTF::fastMalloc(0x38);
            *v13 = 2;
            *(v13 + 8) = 0;
            *(v13 + 24) = -1;
            if (v55 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v55, v51, v13 + 1, v54);
              *(v13 + 24) = v55;
            }

            *(v13 + 32) = 0;
            *(v13 + 48) = -1;
            if (v57 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v57, v51, v13 + 4, v56);
              *(v13 + 48) = v57;
            }

            v51[0] = v13;
            WGSL::constantMultiply(a1, v51, &v58);
            v15 = *v13;
            if (v15)
            {
              v16 = 24 * v15;
              v17 = v13 + 6;
              do
              {
                v14 = v17 - 16;
                if (*v17 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v14);
                }

                *v17 = -1;
                v17 += 24;
                v16 -= 24;
              }

              while (v16);
            }

            v18 = WTF::fastFree(v13, v14);
            if (v57 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v56);
            }

            v57 = -1;
            if (v55 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v54);
            }

            if (v61)
            {
              if (v61 != 1)
              {
LABEL_126:
                *v43 = v10;
                *(v43 + 24) = v44;
                mpark::throw_bad_variant_access(v18);
              }

              v40 = v58;
              if (!v58)
              {
                *v43 = 0;
                *(v43 + 24) = 1;
                goto LABEL_119;
              }

              atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed);
              v41 = v61;
              *v43 = v40;
              *(v43 + 24) = 1;
              if (v41 == 255)
              {
                goto LABEL_119;
              }

              if (v41)
              {
                v42 = v58;
                v58 = 0;
                if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v42, v19);
                }

                goto LABEL_119;
              }

              if (v60 == 255)
              {
                goto LABEL_119;
              }

              v38 = v54;
              v39 = &v58;
LABEL_111:
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v38, v39);
              goto LABEL_119;
            }

            LOBYTE(v46[0]) = 0;
            v47 = -1;
            v20 = v60;
            if (v60 > 5u)
            {
              if (v60 > 8u)
              {
                if (v60 != 9)
                {
                  if (v60 != 10)
                  {
                    goto LABEL_49;
                  }

LABEL_41:
                  v21 = v58;
                  v58 = 0;
LABEL_47:
                  v46[0] = v21;
                  goto LABEL_48;
                }

                v22 = v59;
                v59 = 0;
                v46[0] = v58;
                v46[1] = v22;
              }

              else
              {
                if (v60 != 6)
                {
                  goto LABEL_41;
                }

                LOBYTE(v46[0]) = v58;
              }
            }

            else
            {
              if (v60 <= 2u)
              {
                if (v60)
                {
                  if (v60 == 1)
                  {
                    LOWORD(v46[0]) = v58;
                  }

                  else
                  {
                    v46[0] = v58;
                  }
                }

                else
                {
                  LODWORD(v46[0]) = v58;
                }

                goto LABEL_48;
              }

              if (v60 != 3 && v60 != 4)
              {
                v21 = v58;
                goto LABEL_47;
              }

              LODWORD(v46[0]) = v58;
            }

LABEL_48:
            v47 = v60;
LABEL_49:
            LOBYTE(v54[0]) = 0;
            v55 = -1;
            if (v49 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v49, v51, v54, v48);
              v55 = v49;
              v20 = v47;
            }

            LOBYTE(v56[0]) = 0;
            v57 = -1;
            if (v20 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v20, v51, v56, v46);
              v57 = v47;
            }

            v23 = WTF::fastMalloc(0x38);
            *v23 = 2;
            *(v23 + 8) = 0;
            *(v23 + 24) = -1;
            if (v55 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v55, v51, v23 + 1, v54);
              *(v23 + 24) = v55;
            }

            *(v23 + 32) = 0;
            *(v23 + 48) = -1;
            if (v57 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v57, v51, v23 + 4, v56);
              *(v23 + 48) = v57;
            }

            v45 = v23;
            WGSL::constantAdd(a1, &v45, v51);
            v25 = *v23;
            if (v25)
            {
              v26 = 24 * v25;
              v27 = v23 + 6;
              do
              {
                v24 = v27 - 16;
                if (*v27 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v50, v24);
                }

                *v27 = -1;
                v27 += 24;
                v26 -= 24;
              }

              while (v26);
            }

            v18 = WTF::fastFree(v23, v24);
            if (v57 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v50, v56);
            }

            v57 = -1;
            if (v55 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v50, v54);
            }

            v29 = v53;
            if (v53)
            {
              if (v53 != 1)
              {
                goto LABEL_126;
              }

              v10 = v51[0];
              if (v51[0])
              {
                atomic_fetch_add_explicit(v51[0], 2u, memory_order_relaxed);
              }

              v44 = 1;
              goto LABEL_76;
            }

            if (v49 == 255)
            {
              if (v52 != 255)
              {
LABEL_75:
                v54[0] = v48;
                _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v52, v54, v48, v51);
              }
            }

            else
            {
              if (v52 != 255)
              {
                goto LABEL_75;
              }

              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v54, v48);
              v49 = -1;
            }

LABEL_76:
            if (v53 != 255)
            {
              if (v53)
              {
                v30 = v51[0];
                v51[0] = 0;
                if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v30, v28);
                }
              }

              else if (v52 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v54, v51);
              }
            }

            if (v47 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v54, v46);
            }

            if (v61 != 255)
            {
              if (v61)
              {
                v31 = v58;
                v58 = 0;
                if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v31, v28);
                }
              }

              else if (v60 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v54, &v58);
              }
            }

            if (v29)
            {
              *v43 = v10;
              *(v43 + 24) = v44;
              goto LABEL_119;
            }

            v8 += 6;
            if (v8 == v9)
            {
              v3 = v43;
              *v43 = v10;
              *(v43 + 24) = v44;
              LOBYTE(v54[0]) = 0;
              v55 = -1;
              v32 = v49;
              if (v49 != 255)
              {
                goto LABEL_101;
              }

              goto LABEL_102;
            }
          }
        }
      }

      else
      {
        v9 = 0;
        if (v8)
        {
          goto LABEL_9;
        }
      }

      LOBYTE(v54[0]) = 0;
      v55 = -1;
      v32 = v49;
      if (v49 != 255)
      {
LABEL_101:
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v32, &v58, v54, v48);
        v55 = v49;
      }

LABEL_102:
      v33 = WTF::fastMalloc(0x20);
      *v33 = 1;
      *(v33 + 8) = 0;
      *(v33 + 24) = -1;
      if (v55 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v55, &v58, v33 + 1, v54);
        *(v33 + 24) = v55;
      }

      v58 = v33;
      WGSL::constantSqrt(&v58, v3);
      v35 = *v33;
      if (v35)
      {
        v36 = 24 * v35;
        v37 = v33 + 6;
        do
        {
          v34 = v37 - 16;
          if (*v37 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v51, v34);
          }

          *v37 = -1;
          v37 += 24;
          v36 -= 24;
        }

        while (v36);
      }

      WTF::fastFree(v33, v34);
      if (v55 != 255)
      {
        v38 = v51;
        v39 = v54;
        goto LABEL_111;
      }

LABEL_119:
      if (v49 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v54, v48);
      }
    }

    else
    {

      WGSL::constantAbs(a2, a3);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void WGSL::constantLog(void *a1@<X1>, uint64_t a2@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_88;
  }

  v4 = (v3 + 2);
  LOBYTE(v50[0]) = 0;
  v51 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v47, v50, v3 + 1), v51 = *(v3 + 24), LOBYTE(v47[0]) = 0, v48 = -1, v51 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v51, v44, v47, v50), v48 = v51, v51 == 255))
  {
LABEL_53:
    v27 = *(v3 + 24);
    if (v27 == 2)
    {
      v47[0] = COERCE_WTF_STRINGIMPL_(log(*v4));
      v31 = 2;
      v48 = 2;
      *a2 = v47[0];
    }

    else
    {
      if (v27 != 1)
      {
        if (*(v3 + 24))
        {
          __break(0xC471u);
          JUMPOUT(0x225845CF4);
        }

        LODWORD(v47[0]) = logf(*v4);
        v48 = 0;
        *a2 = v47[0];
        *(a2 + 16) = 0;
LABEL_60:
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
        if (v51 == 255)
        {
          return;
        }

        goto LABEL_61;
      }

      _H0 = *v4;
      __asm { FCVT            S0, H0; float }

      _S0 = logf(_S0);
      __asm { FCVT            H0, S0 }

      LOWORD(v47[0]) = LOWORD(_S0);
      v31 = 1;
      v48 = 1;
      *a2 = LOWORD(_S0);
    }

    *(a2 + 16) = v31;
    goto LABEL_60;
  }

  if (v51 != 8 || !v47[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
    goto LABEL_53;
  }

  v6 = *v47[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
  if (!v6)
  {
    goto LABEL_53;
  }

  v7 = WTF::fastMalloc((24 * v6 + 8));
  *v7 = v6;
  v8 = v7 + 2;
  v9 = 6;
  bzero(v7 + 2, 24 * ((24 * v6 - 24) / 0x18uLL) + 24);
  v10 = 0;
  LODWORD(__x[0]) = 0;
  v11 = *(a2 + 24);
  v43 = 0;
  v12 = *a2;
  do
  {
    v13 = v51;
    if (v51 != 8)
    {
      if (v43 == 255)
      {
        if (v51 == 255)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          goto LABEL_87;
        }
      }

      else if (v51 == 255)
      {
LABEL_81:
        *a2 = v12;
        *(a2 + 24) = v11;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, __x);
        v43 = -1;
LABEL_87:
        __break(0xC471u);
LABEL_88:
        JUMPOUT(0x225845C88);
      }

      v47[0] = __x;
      v14 = v50;
      goto LABEL_21;
    }

    if (v10 >= *v50[0])
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      __break(0xC471u);
      JUMPOUT(0x225845CD4);
    }

    v14 = (v50[0] + v9 * 4 - 16);
    v13 = *(v50[0] + v9 * 4);
    if (v43 == 255)
    {
      if (v13 == 255)
      {
        goto LABEL_22;
      }
    }

    else if (v13 == 255)
    {
      goto LABEL_81;
    }

    v47[0] = __x;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v13, v47, __x, v14);
LABEL_22:
    if (v43)
    {
      if (v43 == 1)
      {
        _H0 = __x[0];
        __asm { FCVT            S0, H0; float }

        _S0 = logf(_S0);
        __asm { FCVT            H0, S0 }

        LOWORD(v44[0]) = LOWORD(_S0);
        v45 = 1;
        LOWORD(v47[0]) = LOWORD(_S0);
        v48 = 1;
        v49 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v44);
        v24 = v49;
        if (!v49)
        {
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      if (v43 == 2)
      {
        v44[0] = COERCE__BYTE_(log(*__x));
        v45 = 2;
        v47[0] = v44[0];
        v48 = 2;
        v49 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v44);
        v24 = v49;
        if (v49)
        {
          goto LABEL_27;
        }

LABEL_33:
        if (v10 >= *v7)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          __break(0xC471u);
          JUMPOUT(0x225845D1CLL);
        }

        if (LOBYTE(v7[v9]) == 255)
        {
          if (v48 == 255)
          {
            goto LABEL_40;
          }
        }

        else if (v48 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v8);
          LOBYTE(v7[v9]) = -1;
          v25 = v49;
          if (v49 == 255)
          {
            goto LABEL_47;
          }

          goto LABEL_41;
        }

        v44[0] = v8;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v48, v44, v8, v47);
LABEL_40:
        v25 = v49;
        if (v49 == 255)
        {
          goto LABEL_47;
        }

        goto LABEL_41;
      }

      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_87;
    }

    LODWORD(v44[0]) = logf(*__x);
    v45 = 0;
    LODWORD(v47[0]) = v44[0];
    v48 = 0;
    v49 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v44);
    v24 = v49;
    if (!v49)
    {
      goto LABEL_33;
    }

LABEL_27:
    if (v24 != 1)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      mpark::throw_bad_variant_access(v22);
    }

    v12 = v47[0];
    if (v47[0])
    {
      atomic_fetch_add_explicit(v47[0], 2u, memory_order_relaxed);
      v11 = 1;
      v25 = v49;
      if (v49 == 255)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v11 = 1;
      v25 = v49;
      if (v49 == 255)
      {
        goto LABEL_47;
      }
    }

LABEL_41:
    if (v25)
    {
      v26 = v47[0];
      v47[0] = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v23);
      }
    }

    else if (v48 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
    }

LABEL_47:
    if (v24)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_70;
    }

    ++v10;
    v8 += 24;
    v9 += 6;
  }

  while (v6 != v10);
  v32 = *v7;
  v33 = 24 * v32;
  v34 = WTF::fastMalloc((24 * v32 + 8));
  v35 = v34;
  *v34 = v32;
  if (v32)
  {
    v36 = (v34 + 6);
    v37 = (v7 + 6);
    do
    {
      *(v36 - 16) = 0;
      *v36 = -1;
      v38 = *v37;
      if (v38 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v38, v47, v36 - 2, v37 - 2);
        *v36 = *v37;
      }

      v36 += 3;
      v37 += 3;
      v33 -= 24;
    }

    while (v33);
  }

  v48 = 8;
  v47[0] = 0;
  *a2 = v35;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
LABEL_70:
  if (v43 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, __x);
  }

  v39 = *v7;
  if (v39)
  {
    v40 = 24 * v39;
    v41 = v7 + 6;
    do
    {
      v23 = (v41 - 16);
      if (*v41 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v23);
      }

      *v41 = -1;
      v41 += 24;
      v40 -= 24;
    }

    while (v40);
  }

  WTF::fastFree(v7, v23);
  if (v51 != 255)
  {
LABEL_61:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v50);
  }
}

void WGSL::constantLog2(void *a1@<X1>, uint64_t a2@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_88;
  }

  v4 = (v3 + 2);
  LOBYTE(v50[0]) = 0;
  v51 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v47, v50, v3 + 1), v51 = *(v3 + 24), LOBYTE(v47[0]) = 0, v48 = -1, v51 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v51, v44, v47, v50), v48 = v51, v51 == 255))
  {
LABEL_53:
    v27 = *(v3 + 24);
    if (v27 == 2)
    {
      v47[0] = COERCE_WTF_STRINGIMPL_(log2(*v4));
      v31 = 2;
      v48 = 2;
      *a2 = v47[0];
    }

    else
    {
      if (v27 != 1)
      {
        if (*(v3 + 24))
        {
          __break(0xC471u);
          JUMPOUT(0x225846370);
        }

        LODWORD(v47[0]) = log2f(*v4);
        v48 = 0;
        *a2 = v47[0];
        *(a2 + 16) = 0;
LABEL_60:
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
        if (v51 == 255)
        {
          return;
        }

        goto LABEL_61;
      }

      _H0 = *v4;
      __asm { FCVT            S0, H0; float }

      _S0 = log2f(_S0);
      __asm { FCVT            H0, S0 }

      LOWORD(v47[0]) = LOWORD(_S0);
      v31 = 1;
      v48 = 1;
      *a2 = LOWORD(_S0);
    }

    *(a2 + 16) = v31;
    goto LABEL_60;
  }

  if (v51 != 8 || !v47[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
    goto LABEL_53;
  }

  v6 = *v47[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
  if (!v6)
  {
    goto LABEL_53;
  }

  v7 = WTF::fastMalloc((24 * v6 + 8));
  *v7 = v6;
  v8 = v7 + 2;
  v9 = 6;
  bzero(v7 + 2, 24 * ((24 * v6 - 24) / 0x18uLL) + 24);
  v10 = 0;
  LODWORD(__x[0]) = 0;
  v11 = *(a2 + 24);
  v43 = 0;
  v12 = *a2;
  do
  {
    v13 = v51;
    if (v51 != 8)
    {
      if (v43 == 255)
      {
        if (v51 == 255)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          goto LABEL_87;
        }
      }

      else if (v51 == 255)
      {
LABEL_81:
        *a2 = v12;
        *(a2 + 24) = v11;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, __x);
        v43 = -1;
LABEL_87:
        __break(0xC471u);
LABEL_88:
        JUMPOUT(0x225846304);
      }

      v47[0] = __x;
      v14 = v50;
      goto LABEL_21;
    }

    if (v10 >= *v50[0])
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      __break(0xC471u);
      JUMPOUT(0x225846350);
    }

    v14 = (v50[0] + v9 * 4 - 16);
    v13 = *(v50[0] + v9 * 4);
    if (v43 == 255)
    {
      if (v13 == 255)
      {
        goto LABEL_22;
      }
    }

    else if (v13 == 255)
    {
      goto LABEL_81;
    }

    v47[0] = __x;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v13, v47, __x, v14);
LABEL_22:
    if (v43)
    {
      if (v43 == 1)
      {
        _H0 = __x[0];
        __asm { FCVT            S0, H0; float }

        _S0 = log2f(_S0);
        __asm { FCVT            H0, S0 }

        LOWORD(v44[0]) = LOWORD(_S0);
        v45 = 1;
        LOWORD(v47[0]) = LOWORD(_S0);
        v48 = 1;
        v49 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v44);
        v24 = v49;
        if (!v49)
        {
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      if (v43 == 2)
      {
        v44[0] = COERCE__BYTE_(log2(*__x));
        v45 = 2;
        v47[0] = v44[0];
        v48 = 2;
        v49 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v44);
        v24 = v49;
        if (v49)
        {
          goto LABEL_27;
        }

LABEL_33:
        if (v10 >= *v7)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          __break(0xC471u);
          JUMPOUT(0x225846398);
        }

        if (LOBYTE(v7[v9]) == 255)
        {
          if (v48 == 255)
          {
            goto LABEL_40;
          }
        }

        else if (v48 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v8);
          LOBYTE(v7[v9]) = -1;
          v25 = v49;
          if (v49 == 255)
          {
            goto LABEL_47;
          }

          goto LABEL_41;
        }

        v44[0] = v8;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v48, v44, v8, v47);
LABEL_40:
        v25 = v49;
        if (v49 == 255)
        {
          goto LABEL_47;
        }

        goto LABEL_41;
      }

      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_87;
    }

    LODWORD(v44[0]) = log2f(*__x);
    v45 = 0;
    LODWORD(v47[0]) = v44[0];
    v48 = 0;
    v49 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v44);
    v24 = v49;
    if (!v49)
    {
      goto LABEL_33;
    }

LABEL_27:
    if (v24 != 1)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      mpark::throw_bad_variant_access(v22);
    }

    v12 = v47[0];
    if (v47[0])
    {
      atomic_fetch_add_explicit(v47[0], 2u, memory_order_relaxed);
      v11 = 1;
      v25 = v49;
      if (v49 == 255)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v11 = 1;
      v25 = v49;
      if (v49 == 255)
      {
        goto LABEL_47;
      }
    }

LABEL_41:
    if (v25)
    {
      v26 = v47[0];
      v47[0] = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v23);
      }
    }

    else if (v48 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
    }

LABEL_47:
    if (v24)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_70;
    }

    ++v10;
    v8 += 24;
    v9 += 6;
  }

  while (v6 != v10);
  v32 = *v7;
  v33 = 24 * v32;
  v34 = WTF::fastMalloc((24 * v32 + 8));
  v35 = v34;
  *v34 = v32;
  if (v32)
  {
    v36 = (v34 + 6);
    v37 = (v7 + 6);
    do
    {
      *(v36 - 16) = 0;
      *v36 = -1;
      v38 = *v37;
      if (v38 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v38, v47, v36 - 2, v37 - 2);
        *v36 = *v37;
      }

      v36 += 3;
      v37 += 3;
      v33 -= 24;
    }

    while (v33);
  }

  v48 = 8;
  v47[0] = 0;
  *a2 = v35;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
LABEL_70:
  if (v43 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, __x);
  }

  v39 = *v7;
  if (v39)
  {
    v40 = 24 * v39;
    v41 = v7 + 6;
    do
    {
      v23 = (v41 - 16);
      if (*v41 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v23);
      }

      *v41 = -1;
      v41 += 24;
      v40 -= 24;
    }

    while (v40);
  }

  WTF::fastFree(v7, v23);
  if (v51 != 255)
  {
LABEL_61:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v50);
  }
}

void WGSL::constantMax(int **a1@<X1>, uint64_t a2@<X8>)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x225846CECLL);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x225846D0CLL);
  }

  v5 = (v3 + 2);
  LOBYTE(v59[0]) = 0;
  v60 = -1;
  v6 = *(v3 + 24);
  if (v6 == 255)
  {
    v7 = 255;
  }

  else
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v49, v59, v3 + 1);
    v7 = *(v3 + 24);
    v60 = *(v3 + 24);
  }

  v8 = (v3 + 8);
  LOBYTE(v61[0]) = 0;
  v62 = -1;
  v9 = *(v3 + 48);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, v49, v61, v3 + 4);
    v62 = *(v3 + 48);
    v7 = v60;
  }

  LOBYTE(v49[0]) = 0;
  v50 = -1;
  if (v7 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v56, v49, v59), v50 = v60, v60 == 255))
  {
LABEL_12:
    LOBYTE(v49[0]) = 0;
    v50 = -1;
    v10 = v62;
    if (v62 == 255)
    {
      goto LABEL_105;
    }

    v10 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v62, v56, v49, v61);
    v50 = v62;
    if (v62 != 8)
    {
      if (v62 == 255)
      {
        goto LABEL_105;
      }

      goto LABEL_104;
    }

    goto LABEL_16;
  }

  if (v60 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v49);
    goto LABEL_12;
  }

LABEL_16:
  if (!v49[0])
  {
LABEL_104:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v49);
LABEL_105:
    v38 = *(v3 + 24);
    if (v38 <= 2)
    {
      if (!*(v3 + 24))
      {
        if (*(v3 + 48))
        {
          goto LABEL_157;
        }

        v42 = *v5;
        if (*v8 > *v5)
        {
          v42 = *v8;
        }

        *v49 = v42;
        v50 = 0;
        *a2 = v42;
        *(a2 + 16) = 0;
        goto LABEL_138;
      }

      if (v38 == 1)
      {
        if (*(v3 + 48) == 1)
        {
          v39 = *v5;
          if (*v8 > *v5)
          {
            v39 = *v8;
          }

          LOWORD(v49[0]) = v39;
          v50 = 1;
          *a2 = v39;
          *(a2 + 16) = 1;
          goto LABEL_138;
        }

LABEL_157:
        mpark::throw_bad_variant_access(v10);
      }

      if (v38 == 2)
      {
        if (*(v3 + 48) != 2)
        {
          goto LABEL_157;
        }

        v44 = *v5;
        if (*v8 > *v5)
        {
          v44 = *v8;
        }

        v49[0] = v44;
        v50 = 2;
        *a2 = v44;
        *(a2 + 16) = 2;
LABEL_138:
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v49);
        if (v62 == 255)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      }

      goto LABEL_163;
    }

    if (v38 == 5)
    {
      if (*(v3 + 48) != 5)
      {
        goto LABEL_157;
      }

      v43 = *v5;
      if (*v8 > *v5)
      {
        v43 = *v8;
      }

      v49[0] = v43;
      v41 = 5;
      v50 = 5;
      *a2 = v43;
    }

    else
    {
      if (v38 == 4)
      {
        if (*(v3 + 48) != 4)
        {
          goto LABEL_157;
        }

        v40 = *v5;
        if (*v8 > *v5)
        {
          v40 = *v8;
        }

        *v49 = v40;
        v41 = 4;
      }

      else
      {
        if (v38 != 3)
        {
LABEL_163:
          __break(0xC471u);
LABEL_164:
          JUMPOUT(0x225846CCCLL);
        }

        if (*(v3 + 48) != 3)
        {
          goto LABEL_157;
        }

        v40 = *v5;
        if (*v8 > *v5)
        {
          v40 = *v8;
        }

        *v49 = v40;
        v41 = 3;
      }

      v50 = v41;
      *a2 = v40;
    }

    *(a2 + 16) = v41;
    goto LABEL_138;
  }

  v11 = *v49[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v49);
  if (!v11)
  {
    goto LABEL_105;
  }

  v12 = WTF::fastMalloc((24 * v11 + 8));
  *v12 = v11;
  v13 = (v12 + 2);
  v14 = 24;
  bzero(v12 + 2, 24 * ((24 * v11 - 24) / 0x18uLL) + 24);
  v15 = 0;
  v50 = 0;
  LODWORD(v51[0]) = 0;
  v52 = 0;
  v16 = *a2;
  v48 = *(a2 + 24);
  LODWORD(v49[0]) = 0;
  do
  {
    v17 = v60;
    if (v60 == 8)
    {
      if (v15 >= *v59[0])
      {
        goto LABEL_158;
      }

      v18 = (v59[0] + v14 - 16);
      v17 = *(v59[0] + v14);
      if (v50 == 255)
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

      v56[0] = v49;
    }

    else
    {
      if (v50 == 255)
      {
        if (v60 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v60 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v49);
        v50 = -1;
        goto LABEL_32;
      }

      v56[0] = v49;
      v18 = v59;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v56, v49, v18);
LABEL_32:
    v19 = v62;
    if (v62 == 8)
    {
      if (v15 >= *v61[0])
      {
LABEL_158:
        *a2 = v16;
        *(a2 + 24) = v48;
        __break(0xC471u);
        goto LABEL_164;
      }

      v20 = (v61[0] + v14 - 16);
      v19 = *(v61[0] + v14);
      if (v52 == 255)
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

      v56[0] = v51;
    }

    else
    {
      if (v52 == 255)
      {
        if (v62 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v62 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v51);
        v52 = -1;
        goto LABEL_45;
      }

      v56[0] = v51;
      v20 = v61;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v19, v56, v51, v20);
LABEL_45:
    if (v50 > 2u)
    {
      switch(v50)
      {
        case 3u:
          if (v52 != 3)
          {
            goto LABEL_156;
          }

          v23 = *v49;
          if (SLODWORD(v51[0]) > SLODWORD(v49[0]))
          {
            v23 = *v51;
          }

          v53[0] = v23;
          v24 = 3;
          break;
        case 4u:
          if (v52 != 4)
          {
            goto LABEL_156;
          }

          v23 = *v49;
          if (LODWORD(v51[0]) > LODWORD(v49[0]))
          {
            v23 = *v51;
          }

          v53[0] = v23;
          v24 = 4;
          break;
        case 5u:
          if (v52 != 5)
          {
LABEL_156:
            *a2 = v16;
            *(a2 + 24) = v48;
            mpark::throw_bad_variant_access(v19);
          }

          v29 = v49[0];
          if (v51[0] > v49[0])
          {
            v29 = v51[0];
          }

          *v53 = v29;
          v24 = 5;
          v54 = 5;
          v56[0] = v29;
LABEL_83:
          v57 = v24;
          v58 = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v55, v53);
          v27 = v58;
          if (v58)
          {
            goto LABEL_84;
          }

          goto LABEL_74;
        default:
LABEL_162:
          *a2 = v16;
          *(a2 + 24) = v48;
          __break(0xC471u);
          JUMPOUT(0x225846D64);
      }

      v54 = v24;
      *v56 = v23;
      goto LABEL_83;
    }

    if (v50)
    {
      if (v50 == 1)
      {
        v21 = v52;
        if (v52 != 1)
        {
          goto LABEL_156;
        }

        v22 = *v49;
        if (*v51 > *v49)
        {
          v22 = *v51;
        }

        *v53 = v22;
        v54 = v52;
        *v56 = v22;
      }

      else
      {
        if (v50 != 2)
        {
          goto LABEL_162;
        }

        v21 = v52;
        if (v52 != 2)
        {
          goto LABEL_156;
        }

        v28 = v49[0];
        if (*v51 > *v49)
        {
          v28 = v51[0];
        }

        *v53 = v28;
        v54 = v52;
        v56[0] = v28;
      }

      v57 = v21;
      v58 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v55, v53);
      v27 = v58;
      if (v58)
      {
LABEL_84:
        if (v27 != 1)
        {
          goto LABEL_156;
        }

        v16 = v56[0];
        if (v56[0])
        {
          atomic_fetch_add_explicit(v56[0], 2u, memory_order_relaxed);
        }

        v48 = 1;
        goto LABEL_90;
      }
    }

    else
    {
      if (v52)
      {
        goto LABEL_156;
      }

      v25 = *v49;
      if (*v51 > *v49)
      {
        v25 = *v51;
      }

      v53[0] = v25;
      v54 = 0;
      *v56 = v25;
      v57 = 0;
      v58 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v55, v53);
      v27 = v58;
      if (v58)
      {
        goto LABEL_84;
      }
    }

LABEL_74:
    if (v15 >= *v12)
    {
      *a2 = v16;
      *(a2 + 24) = v48;
      __break(0xC471u);
      JUMPOUT(0x225846D38);
    }

    if (LOBYTE(v12[v14 / 4]) == 255)
    {
      if (v57 == 255)
      {
        goto LABEL_90;
      }
    }

    else if (v57 == 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v53, v13);
      LOBYTE(v12[v14 / 4]) = -1;
      goto LABEL_90;
    }

    *v53 = v13;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v57, v53, v13, v56);
LABEL_90:
    if (v58 != 255)
    {
      if (v58)
      {
        v30 = v56[0];
        v56[0] = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v26);
        }
      }

      else if (v57 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v53, v56);
      }
    }

    if (v27)
    {
      *a2 = v16;
      *(a2 + 24) = v48;
      if (v52 != 255)
      {
        goto LABEL_144;
      }

      goto LABEL_145;
    }

    ++v15;
    v13 += 3;
    v14 += 24;
  }

  while (v11 != v15);
  v31 = *v12;
  v32 = 24 * v31;
  v33 = WTF::fastMalloc((24 * v31 + 8));
  v34 = v33;
  *v33 = v31;
  if (v31)
  {
    v35 = (v33 + 6);
    v36 = (v12 + 6);
    do
    {
      *(v35 - 16) = 0;
      *v35 = -1;
      v37 = *v36;
      if (v37 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v37, v56, v35 - 2, v36 - 2);
        *v35 = *v36;
      }

      v35 += 3;
      v36 += 3;
      v32 -= 24;
    }

    while (v32);
  }

  v57 = 8;
  v56[0] = 0;
  *a2 = v34;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v53, v56);
  if (v52 != 255)
  {
LABEL_144:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v51);
  }

LABEL_145:
  v52 = -1;
  if (v50 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v49);
  }

  v45 = *v12;
  if (v45)
  {
    v46 = 24 * v45;
    v47 = v12 + 6;
    do
    {
      v26 = (v47 - 16);
      if (*v47 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v49, v26);
      }

      *v47 = -1;
      v47 += 24;
      v46 -= 24;
    }

    while (v46);
  }

  WTF::fastFree(v12, v26);
  if (v62 != 255)
  {
LABEL_139:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v49, v61);
  }

LABEL_140:
  v62 = -1;
  if (v60 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v49, v59);
  }
}

void WGSL::constantMin(int **a1@<X1>, uint64_t a2@<X8>)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x2258476A0);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x2258476C0);
  }

  v5 = (v3 + 2);
  LOBYTE(v59[0]) = 0;
  v60 = -1;
  v6 = *(v3 + 24);
  if (v6 == 255)
  {
    v7 = 255;
  }

  else
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v49, v59, v3 + 1);
    v7 = *(v3 + 24);
    v60 = *(v3 + 24);
  }

  v8 = (v3 + 8);
  LOBYTE(v61[0]) = 0;
  v62 = -1;
  v9 = *(v3 + 48);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, v49, v61, v3 + 4);
    v62 = *(v3 + 48);
    v7 = v60;
  }

  LOBYTE(v49[0]) = 0;
  v50 = -1;
  if (v7 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v56, v49, v59), v50 = v60, v60 == 255))
  {
LABEL_12:
    LOBYTE(v49[0]) = 0;
    v50 = -1;
    v10 = v62;
    if (v62 == 255)
    {
      goto LABEL_105;
    }

    v10 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v62, v56, v49, v61);
    v50 = v62;
    if (v62 != 8)
    {
      if (v62 == 255)
      {
        goto LABEL_105;
      }

      goto LABEL_104;
    }

    goto LABEL_16;
  }

  if (v60 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v49);
    goto LABEL_12;
  }

LABEL_16:
  if (!v49[0])
  {
LABEL_104:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v49);
LABEL_105:
    v38 = *(v3 + 24);
    if (v38 <= 2)
    {
      if (!*(v3 + 24))
      {
        if (*(v3 + 48))
        {
          goto LABEL_157;
        }

        v42 = *v5;
        if (*v8 < *v5)
        {
          v42 = *v8;
        }

        *v49 = v42;
        v50 = 0;
        *a2 = v42;
        *(a2 + 16) = 0;
        goto LABEL_138;
      }

      if (v38 == 1)
      {
        if (*(v3 + 48) == 1)
        {
          v39 = *v5;
          if (*v8 < *v5)
          {
            v39 = *v8;
          }

          LOWORD(v49[0]) = v39;
          v50 = 1;
          *a2 = v39;
          *(a2 + 16) = 1;
          goto LABEL_138;
        }

LABEL_157:
        mpark::throw_bad_variant_access(v10);
      }

      if (v38 == 2)
      {
        if (*(v3 + 48) != 2)
        {
          goto LABEL_157;
        }

        v44 = *v5;
        if (*v8 < *v5)
        {
          v44 = *v8;
        }

        v49[0] = v44;
        v50 = 2;
        *a2 = v44;
        *(a2 + 16) = 2;
LABEL_138:
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v49);
        if (v62 == 255)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      }

      goto LABEL_163;
    }

    if (v38 == 5)
    {
      if (*(v3 + 48) != 5)
      {
        goto LABEL_157;
      }

      v43 = *v5;
      if (*v8 < *v5)
      {
        v43 = *v8;
      }

      v49[0] = v43;
      v41 = 5;
      v50 = 5;
      *a2 = v43;
    }

    else
    {
      if (v38 == 4)
      {
        if (*(v3 + 48) != 4)
        {
          goto LABEL_157;
        }

        v40 = *v5;
        if (*v8 < *v5)
        {
          v40 = *v8;
        }

        *v49 = v40;
        v41 = 4;
      }

      else
      {
        if (v38 != 3)
        {
LABEL_163:
          __break(0xC471u);
LABEL_164:
          JUMPOUT(0x225847680);
        }

        if (*(v3 + 48) != 3)
        {
          goto LABEL_157;
        }

        v40 = *v5;
        if (*v8 < *v5)
        {
          v40 = *v8;
        }

        *v49 = v40;
        v41 = 3;
      }

      v50 = v41;
      *a2 = v40;
    }

    *(a2 + 16) = v41;
    goto LABEL_138;
  }

  v11 = *v49[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v49);
  if (!v11)
  {
    goto LABEL_105;
  }

  v12 = WTF::fastMalloc((24 * v11 + 8));
  *v12 = v11;
  v13 = (v12 + 2);
  v14 = 24;
  bzero(v12 + 2, 24 * ((24 * v11 - 24) / 0x18uLL) + 24);
  v15 = 0;
  v50 = 0;
  LODWORD(v51[0]) = 0;
  v52 = 0;
  v16 = *a2;
  v48 = *(a2 + 24);
  LODWORD(v49[0]) = 0;
  do
  {
    v17 = v60;
    if (v60 == 8)
    {
      if (v15 >= *v59[0])
      {
        goto LABEL_158;
      }

      v18 = (v59[0] + v14 - 16);
      v17 = *(v59[0] + v14);
      if (v50 == 255)
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

      v56[0] = v49;
    }

    else
    {
      if (v50 == 255)
      {
        if (v60 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v60 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v49);
        v50 = -1;
        goto LABEL_32;
      }

      v56[0] = v49;
      v18 = v59;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v56, v49, v18);
LABEL_32:
    v19 = v62;
    if (v62 == 8)
    {
      if (v15 >= *v61[0])
      {
LABEL_158:
        *a2 = v16;
        *(a2 + 24) = v48;
        __break(0xC471u);
        goto LABEL_164;
      }

      v20 = (v61[0] + v14 - 16);
      v19 = *(v61[0] + v14);
      if (v52 == 255)
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

      v56[0] = v51;
    }

    else
    {
      if (v52 == 255)
      {
        if (v62 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v62 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v51);
        v52 = -1;
        goto LABEL_45;
      }

      v56[0] = v51;
      v20 = v61;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v19, v56, v51, v20);
LABEL_45:
    if (v50 > 2u)
    {
      switch(v50)
      {
        case 3u:
          if (v52 != 3)
          {
            goto LABEL_156;
          }

          v23 = *v49;
          if (SLODWORD(v51[0]) < SLODWORD(v49[0]))
          {
            v23 = *v51;
          }

          v53[0] = v23;
          v24 = 3;
          break;
        case 4u:
          if (v52 != 4)
          {
            goto LABEL_156;
          }

          v23 = *v49;
          if (LODWORD(v51[0]) < LODWORD(v49[0]))
          {
            v23 = *v51;
          }

          v53[0] = v23;
          v24 = 4;
          break;
        case 5u:
          if (v52 != 5)
          {
LABEL_156:
            *a2 = v16;
            *(a2 + 24) = v48;
            mpark::throw_bad_variant_access(v19);
          }

          v29 = v49[0];
          if (v51[0] < v49[0])
          {
            v29 = v51[0];
          }

          *v53 = v29;
          v24 = 5;
          v54 = 5;
          v56[0] = v29;
LABEL_83:
          v57 = v24;
          v58 = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v55, v53);
          v27 = v58;
          if (v58)
          {
            goto LABEL_84;
          }

          goto LABEL_74;
        default:
LABEL_162:
          *a2 = v16;
          *(a2 + 24) = v48;
          __break(0xC471u);
          JUMPOUT(0x225847718);
      }

      v54 = v24;
      *v56 = v23;
      goto LABEL_83;
    }

    if (v50)
    {
      if (v50 == 1)
      {
        v21 = v52;
        if (v52 != 1)
        {
          goto LABEL_156;
        }

        v22 = *v49;
        if (*v51 < *v49)
        {
          v22 = *v51;
        }

        *v53 = v22;
        v54 = v52;
        *v56 = v22;
      }

      else
      {
        if (v50 != 2)
        {
          goto LABEL_162;
        }

        v21 = v52;
        if (v52 != 2)
        {
          goto LABEL_156;
        }

        v28 = v49[0];
        if (*v51 < *v49)
        {
          v28 = v51[0];
        }

        *v53 = v28;
        v54 = v52;
        v56[0] = v28;
      }

      v57 = v21;
      v58 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v55, v53);
      v27 = v58;
      if (v58)
      {
LABEL_84:
        if (v27 != 1)
        {
          goto LABEL_156;
        }

        v16 = v56[0];
        if (v56[0])
        {
          atomic_fetch_add_explicit(v56[0], 2u, memory_order_relaxed);
        }

        v48 = 1;
        goto LABEL_90;
      }
    }

    else
    {
      if (v52)
      {
        goto LABEL_156;
      }

      v25 = *v49;
      if (*v51 < *v49)
      {
        v25 = *v51;
      }

      v53[0] = v25;
      v54 = 0;
      *v56 = v25;
      v57 = 0;
      v58 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v55, v53);
      v27 = v58;
      if (v58)
      {
        goto LABEL_84;
      }
    }

LABEL_74:
    if (v15 >= *v12)
    {
      *a2 = v16;
      *(a2 + 24) = v48;
      __break(0xC471u);
      JUMPOUT(0x2258476ECLL);
    }

    if (LOBYTE(v12[v14 / 4]) == 255)
    {
      if (v57 == 255)
      {
        goto LABEL_90;
      }
    }

    else if (v57 == 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v53, v13);
      LOBYTE(v12[v14 / 4]) = -1;
      goto LABEL_90;
    }

    *v53 = v13;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v57, v53, v13, v56);
LABEL_90:
    if (v58 != 255)
    {
      if (v58)
      {
        v30 = v56[0];
        v56[0] = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v26);
        }
      }

      else if (v57 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v53, v56);
      }
    }

    if (v27)
    {
      *a2 = v16;
      *(a2 + 24) = v48;
      if (v52 != 255)
      {
        goto LABEL_144;
      }

      goto LABEL_145;
    }

    ++v15;
    v13 += 3;
    v14 += 24;
  }

  while (v11 != v15);
  v31 = *v12;
  v32 = 24 * v31;
  v33 = WTF::fastMalloc((24 * v31 + 8));
  v34 = v33;
  *v33 = v31;
  if (v31)
  {
    v35 = (v33 + 6);
    v36 = (v12 + 6);
    do
    {
      *(v35 - 16) = 0;
      *v35 = -1;
      v37 = *v36;
      if (v37 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v37, v56, v35 - 2, v36 - 2);
        *v35 = *v36;
      }

      v35 += 3;
      v36 += 3;
      v32 -= 24;
    }

    while (v32);
  }

  v57 = 8;
  v56[0] = 0;
  *a2 = v34;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v53, v56);
  if (v52 != 255)
  {
LABEL_144:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v51);
  }

LABEL_145:
  v52 = -1;
  if (v50 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v49);
  }

  v45 = *v12;
  if (v45)
  {
    v46 = 24 * v45;
    v47 = v12 + 6;
    do
    {
      v26 = (v47 - 16);
      if (*v47 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v49, v26);
      }

      *v47 = -1;
      v47 += 24;
      v46 -= 24;
    }

    while (v46);
  }

  WTF::fastFree(v12, v26);
  if (v62 != 255)
  {
LABEL_139:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v49, v61);
  }

LABEL_140:
  v62 = -1;
  if (v60 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v49, v59);
  }
}

void WGSL::constantMix(unsigned int **a1@<X1>, uint64_t a2@<X8>)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x2258482FCLL);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22584831CLL);
  }

  if (v4 <= 2)
  {
    __break(0xC471u);
    JUMPOUT(0x22584833CLL);
  }

  LOBYTE(v72[0]) = 0;
  v73 = -1;
  v5 = *(v3 + 24);
  if (v5 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v60, v72, v3 + 1);
    v73 = *(v3 + 24);
  }

  v6 = (v3 + 8);
  LOBYTE(v74[0]) = 0;
  v75 = -1;
  v7 = *(v3 + 48);
  if (v7 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v60, v74, v3 + 4);
    v75 = *(v3 + 48);
  }

  v8 = (v3 + 14);
  LOBYTE(v76[0]) = 0;
  v77 = -1;
  v9 = *(v3 + 72);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, v60, v76, v3 + 7);
    v77 = *(v3 + 72);
  }

  LOBYTE(v60[0]) = 0;
  v61 = -1;
  if (v73 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v73, v69, v60, v72);
    v61 = v73;
    if (v73 != 255)
    {
      if (v73 == 8)
      {
        goto LABEL_22;
      }

      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v69, v60);
    }
  }

  LOBYTE(v60[0]) = 0;
  v61 = -1;
  if (v75 == 255)
  {
    goto LABEL_18;
  }

  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v75, v69, v60, v74);
  v61 = v75;
  if (v75 != 8)
  {
    if (v75 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v69, v60);
    }

LABEL_18:
    LOBYTE(v60[0]) = 0;
    v61 = -1;
    v10 = v77;
    if (v77 == 255)
    {
      goto LABEL_118;
    }

    v10 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v77, v69, v60, v76);
    v61 = v77;
    if (v77 != 8)
    {
      if (v77 == 255)
      {
        goto LABEL_118;
      }

      goto LABEL_117;
    }
  }

LABEL_22:
  if (!v60[0])
  {
LABEL_117:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v69, v60);
LABEL_118:
    v46 = *(v3 + 24);
    if (v46 <= 2)
    {
      if (!*(v3 + 24))
      {
        if (*(v3 + 48) || *(v3 + 72))
        {
          goto LABEL_168;
        }

        *v60 = (*v6 * *v8) + (*(v3 + 2) * (1.0 - *v8));
        v61 = 0;
        *a2 = v60[0];
        *(a2 + 16) = 0;
LABEL_145:
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v69, v60);
        if (v77 == 255)
        {
          goto LABEL_147;
        }

        goto LABEL_146;
      }

      if (v46 == 1)
      {
        if (*(v3 + 48) == 1 && *(v3 + 72) == 1)
        {
          _H0 = *(v3 + 4);
          _H1 = *v6;
          _H2 = *v8;
          __asm
          {
            FCVT            S0, H0
            FCVT            S2, H2
            FCVT            S1, H1
          }

          _S0 = (_S1 * _S2) + (_S0 * (1.0 - _S2));
          __asm { FCVT            H0, S0 }

          LOWORD(v60[0]) = LOWORD(_S0);
          v61 = 1;
          *a2 = LOWORD(_S0);
          *(a2 + 16) = 1;
          goto LABEL_145;
        }

LABEL_168:
        mpark::throw_bad_variant_access(v10);
      }

      if (v46 == 2)
      {
        if (*(v3 + 48) != 2 || *(v3 + 72) != 2)
        {
          goto LABEL_168;
        }

        *v60 = *v6 * *v8 + *(v3 + 1) * (1.0 - *v8);
        v61 = 2;
        *a2 = v60[0];
        *(a2 + 16) = 2;
        goto LABEL_145;
      }

      goto LABEL_175;
    }

    if (v46 == 5)
    {
      if (*(v3 + 48) != 5 || *(v3 + 72) != 5)
      {
        goto LABEL_168;
      }

      v60[0] = *(v3 + 1) - *(v3 + 1) * *v8 + *v8 * *v6;
      v55 = 5;
      v61 = 5;
      *a2 = v60[0];
    }

    else
    {
      if (v46 == 4)
      {
        if (*(v3 + 48) != 4 || *(v3 + 72) != 4)
        {
          goto LABEL_168;
        }

        v54 = v3[2] - v3[2] * *v8 + *v8 * *v6;
        LODWORD(v60[0]) = v54;
        v55 = 4;
      }

      else
      {
        if (v46 != 3)
        {
LABEL_175:
          __break(0xC471u);
LABEL_176:
          JUMPOUT(0x2258482ACLL);
        }

        if (*(v3 + 48) != 3 || *(v3 + 72) != 3)
        {
          goto LABEL_168;
        }

        v54 = v3[2] - v3[2] * *v8 + *v8 * *v6;
        LODWORD(v60[0]) = v54;
        v55 = 3;
      }

      v61 = v55;
      *a2 = v54;
    }

    *(a2 + 16) = v55;
    goto LABEL_145;
  }

  v11 = *v60[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v69, v60);
  if (!v11)
  {
    goto LABEL_118;
  }

  v12 = WTF::fastMalloc((24 * v11 + 8));
  *v12 = v11;
  v13 = v12 + 2;
  v14 = 24;
  bzero(v12 + 2, 24 * ((24 * v11 - 24) / 0x18uLL) + 24);
  v15 = 0;
  v61 = 0;
  LODWORD(v62[0]) = 0;
  v63 = 0;
  LODWORD(v64[0]) = 0;
  v65 = 0;
  v16 = *a2;
  v59 = *(a2 + 24);
  LODWORD(v60[0]) = 0;
  do
  {
    v17 = v73;
    if (v73 == 8)
    {
      if (v15 >= *v72[0])
      {
        goto LABEL_169;
      }

      v18 = (v72[0] + v14 - 16);
      v17 = *(v72[0] + v14);
      if (v61 == 255)
      {
        if (v17 == 255)
        {
          goto LABEL_38;
        }
      }

      else if (v17 == 255)
      {
        goto LABEL_32;
      }

      v69[0] = v60;
    }

    else
    {
      if (v61 == 255)
      {
        if (v73 == 255)
        {
          goto LABEL_38;
        }
      }

      else if (v73 == 255)
      {
LABEL_32:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v69, v60);
        v61 = -1;
        goto LABEL_38;
      }

      v69[0] = v60;
      v18 = v72;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v69, v60, v18);
LABEL_38:
    v19 = v75;
    if (v75 == 8)
    {
      if (v15 >= *v74[0])
      {
        goto LABEL_169;
      }

      v20 = (v74[0] + v14 - 16);
      v19 = *(v74[0] + v14);
      if (v63 == 255)
      {
        if (v19 == 255)
        {
          goto LABEL_51;
        }
      }

      else if (v19 == 255)
      {
        goto LABEL_45;
      }

      v69[0] = v62;
    }

    else
    {
      if (v63 == 255)
      {
        if (v75 == 255)
        {
          goto LABEL_51;
        }
      }

      else if (v75 == 255)
      {
LABEL_45:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v69, v62);
        v63 = -1;
        goto LABEL_51;
      }

      v69[0] = v62;
      v20 = v74;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v19, v69, v62, v20);
LABEL_51:
    v10 = v77;
    if (v77 == 8)
    {
      if (v15 >= *v76[0])
      {
LABEL_169:
        *a2 = v16;
        *(a2 + 24) = v59;
        __break(0xC471u);
        goto LABEL_176;
      }

      v21 = (v76[0] + v14 - 16);
      v10 = *(v76[0] + v14);
      if (v65 == 255)
      {
        if (v10 == 255)
        {
          goto LABEL_64;
        }
      }

      else if (v10 == 255)
      {
        goto LABEL_58;
      }

      v69[0] = v64;
    }

    else
    {
      if (v65 == 255)
      {
        if (v77 == 255)
        {
          goto LABEL_64;
        }
      }

      else if (v77 == 255)
      {
LABEL_58:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v69, v64);
        v65 = -1;
        goto LABEL_64;
      }

      v69[0] = v64;
      v21 = v76;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v10, v69, v64, v21);
LABEL_64:
    if (v61 > 2u)
    {
      switch(v61)
      {
        case 3u:
          if (v63 != 3 || v65 != 3)
          {
            goto LABEL_167;
          }

          v34 = LODWORD(v60[0]) - LODWORD(v60[0]) * LODWORD(v64[0]) + LODWORD(v64[0]) * LODWORD(v62[0]);
          LODWORD(v66[0]) = v34;
          v35 = 3;
          break;
        case 4u:
          if (v63 != 4 || v65 != 4)
          {
            goto LABEL_167;
          }

          v34 = LODWORD(v60[0]) - LODWORD(v60[0]) * LODWORD(v64[0]) + LODWORD(v64[0]) * LODWORD(v62[0]);
          LODWORD(v66[0]) = v34;
          v35 = 4;
          break;
        case 5u:
          if (v63 != 5 || v65 != 5)
          {
LABEL_167:
            *a2 = v16;
            *(a2 + 24) = v59;
            goto LABEL_168;
          }

          v66[0] = (v60[0] - v60[0] * v64[0] + v64[0] * v62[0]);
          v35 = 5;
          v67 = 5;
          v69[0] = v66[0];
LABEL_96:
          v70 = v35;
          v71 = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v68, v66);
          v37 = v71;
          if (v71)
          {
            goto LABEL_97;
          }

          goto LABEL_88;
        default:
LABEL_174:
          *a2 = v16;
          *(a2 + 24) = v59;
          __break(0xC471u);
          JUMPOUT(0x22584836CLL);
      }

      v67 = v35;
      LODWORD(v69[0]) = v34;
      goto LABEL_96;
    }

    if (v61)
    {
      if (v61 == 1)
      {
        if (v63 != 1)
        {
          goto LABEL_167;
        }

        v22 = v65;
        if (v65 != 1)
        {
          goto LABEL_167;
        }

        _H0 = v60[0];
        _H1 = v62[0];
        _H2 = v64[0];
        __asm
        {
          FCVT            S0, H0
          FCVT            S2, H2
          FCVT            S1, H1
        }

        _S0 = (_S1 * _S2) + (_S0 * (1.0 - _S2));
        __asm { FCVT            H0, S0 }

        LOWORD(v66[0]) = LOWORD(_S0);
        v67 = v65;
        LOWORD(v69[0]) = LOWORD(_S0);
      }

      else
      {
        if (v61 != 2)
        {
          goto LABEL_174;
        }

        if (v63 != 2)
        {
          goto LABEL_167;
        }

        v22 = v65;
        if (v65 != 2)
        {
          goto LABEL_167;
        }

        *v66 = *v62 * *v64 + *v60 * (1.0 - *v64);
        v67 = v65;
        v69[0] = v66[0];
      }

      v70 = v22;
      v71 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v68, v66);
      v37 = v71;
      if (v71)
      {
LABEL_97:
        if (v37 != 1)
        {
          goto LABEL_167;
        }

        v16 = v69[0];
        if (v69[0])
        {
          atomic_fetch_add_explicit(v69[0], 2u, memory_order_relaxed);
        }

        v59 = 1;
        goto LABEL_103;
      }
    }

    else
    {
      if (v63 || v65)
      {
        goto LABEL_167;
      }

      *v66 = (*v62 * *v64) + (*v60 * (1.0 - *v64));
      v67 = 0;
      *v69 = *v66;
      v70 = 0;
      v71 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v68, v66);
      v37 = v71;
      if (v71)
      {
        goto LABEL_97;
      }
    }

LABEL_88:
    if (v15 >= *v12)
    {
      *a2 = v16;
      *(a2 + 24) = v59;
      __break(0xC471u);
      JUMPOUT(0x2258482DCLL);
    }

    if (LOBYTE(v12[v14 / 4]) == 255)
    {
      if (v70 == 255)
      {
        goto LABEL_103;
      }
    }

    else if (v70 == 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v66, v13);
      LOBYTE(v12[v14 / 4]) = -1;
      goto LABEL_103;
    }

    v66[0] = v13;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v70, v66, v13, v69);
LABEL_103:
    if (v71 != 255)
    {
      if (v71)
      {
        v38 = v69[0];
        v69[0] = 0;
        if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v36);
        }
      }

      else if (v70 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v66, v69);
      }
    }

    if (v37)
    {
      *a2 = v16;
      *(a2 + 24) = v59;
      if (v65 != 255)
      {
        goto LABEL_153;
      }

      goto LABEL_154;
    }

    ++v15;
    v13 += 24;
    v14 += 24;
  }

  while (v11 != v15);
  v39 = *v12;
  v40 = 24 * v39;
  v41 = WTF::fastMalloc((24 * v39 + 8));
  v42 = v41;
  *v41 = v39;
  if (v39)
  {
    v43 = (v41 + 6);
    v44 = (v12 + 6);
    do
    {
      *(v43 - 16) = 0;
      *v43 = -1;
      v45 = *v44;
      if (v45 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v45, v69, v43 - 2, v44 - 2);
        *v43 = *v44;
      }

      v43 += 3;
      v44 += 3;
      v40 -= 24;
    }

    while (v40);
  }

  v70 = 8;
  v69[0] = 0;
  *a2 = v42;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v66, v69);
  if (v65 != 255)
  {
LABEL_153:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v69, v64);
  }

LABEL_154:
  v65 = -1;
  if (v63 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v69, v62);
  }

  v63 = -1;
  if (v61 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v69, v60);
  }

  v56 = *v12;
  if (v56)
  {
    v57 = 24 * v56;
    v58 = v12 + 6;
    do
    {
      v36 = (v58 - 16);
      if (*v58 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v60, v36);
      }

      *v58 = -1;
      v58 += 24;
      v57 -= 24;
    }

    while (v57);
  }

  WTF::fastFree(v12, v36);
  if (v77 != 255)
  {
LABEL_146:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v60, v76);
  }

LABEL_147:
  v77 = -1;
  if (v75 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v60, v74);
  }

  v75 = -1;
  if (v73 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v60, v72);
  }
}

void WGSL::constantModf(void *a1@<X1>, uint64_t a2@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
LABEL_78:
    JUMPOUT(0x22584895CLL);
  }

  v4 = *(v3 + 24);
  if (v4 == 8)
  {
    v5 = *(v3 + 1);
    if (!v5 || (v6 = *v5, !v6))
    {
      v37 = 0;
      _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN4WGSL13ConstantValueES4_EEC2B8sn200100IJLm0ELm1EEJS4_S4_EJEJEJRNS3_14ConstantVectorES8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_(v31, 0, &v37);
      goto LABEL_44;
    }

    v7 = 24 * v6;
    v8 = WTF::fastMalloc((24 * v6 + 8));
    *v8 = v6;
    bzero(v8 + 2, 24 * ((24 * v6 - 24) / 0x18uLL) + 24);
    v9 = WTF::fastMalloc((24 * v6 + 8));
    *v9 = v6;
    bzero(v9 + 2, 24 * ((24 * v6 - 24) / 0x18uLL) + 24);
    v10 = 0;
    v11 = 0;
    v37 = v9;
    while (1)
    {
      v12 = *(v3 + 1);
      if (v11 >= *v12)
      {
        __break(0xC471u);
        goto LABEL_78;
      }

      v13 = &v12[v10 / 4];
      LOBYTE(v35[0]) = 0;
      v36 = -1;
      v14 = LOBYTE(v12[v10 / 4 + 6]);
      if (v14 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v14, v31, v35, v13 + 1);
        v36 = *(v13 + 24);
      }

      WGSL::constantModf(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()<WGSL::ConstantValue>(&v39, v35);
      if (v36 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, v35);
      }

      v36 = -1;
      if (v11 >= *v8)
      {
        __break(0xC471u);
        JUMPOUT(0x22584897CLL);
      }

      if (LOBYTE(v8[v10 / 4 + 6]) == 255)
      {
        if (v41 == 255)
        {
          goto LABEL_18;
        }
      }

      else if (v41 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, &v8[v10 / 4 + 2]);
        LOBYTE(v8[v10 / 4 + 6]) = -1;
        goto LABEL_18;
      }

      v31[0] = &v8[v10 / 4 + 2];
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v41, v31, v31[0], &v39);
LABEL_18:
      if (v11 >= *v9)
      {
        __break(0xC471u);
        JUMPOUT(0x22584899CLL);
      }

      if (LOBYTE(v9[v10 / 4 + 6]) == 255)
      {
        if (LOBYTE(v44[0]) == 255)
        {
          goto LABEL_26;
        }
      }

      else if (LOBYTE(v44[0]) == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, &v9[v10 / 4 + 2]);
        LOBYTE(v9[v10 / 4 + 6]) = -1;
        if (LOBYTE(v44[0]) == 255)
        {
          goto LABEL_26;
        }

LABEL_25:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, &v42);
        goto LABEL_26;
      }

      v31[0] = &v9[v10 / 4 + 2];
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(LOBYTE(v44[0]), v31, v31[0], &v42);
      if (LOBYTE(v44[0]) != 255)
      {
        goto LABEL_25;
      }

LABEL_26:
      LOBYTE(v44[0]) = -1;
      if (v41 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v31, &v39);
      }

      ++v11;
      v10 += 24;
      if (v7 == v10)
      {
        _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN4WGSL13ConstantValueES4_EEC2B8sn200100IJLm0ELm1EEJS4_S4_EJEJEJRNS3_14ConstantVectorES8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_(v31, v8, &v37);
        v16 = *v9;
        if (v16)
        {
          v17 = 24 * v16;
          v18 = v9 + 6;
          do
          {
            v15 = v18 - 16;
            if (*v18 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v39, v15);
            }

            *v18 = -1;
            v18 += 24;
            v17 -= 24;
          }

          while (v17);
        }

        WTF::fastFree(v9, v15);
        v20 = *v8;
        if (v20)
        {
          v21 = 24 * v20;
          v22 = v8 + 6;
          do
          {
            v19 = v22 - 16;
            if (*v22 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v39, v19);
            }

            *v22 = -1;
            v22 += 24;
            v21 -= 24;
          }

          while (v21);
        }

        WTF::fastFree(v8, v19);
        goto LABEL_44;
      }
    }
  }

  LOBYTE(v39) = 0;
  LOBYTE(v41) = -1;
  if (v4 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v4, v31, &v39, v3 + 1);
    LOBYTE(v41) = *(v3 + 24);
  }

  WGSL::constantModf(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()<WGSL::ConstantValue>(v31, &v39);
  if (v41 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v35, &v39);
  }

LABEL_44:
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  LOBYTE(v40) = 0;
  LOBYTE(v42) = -1;
  if (v32 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v32, v35, &v40, v31);
    LOBYTE(v42) = v32;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v43 = v35[0];
  LOBYTE(v44[0]) = 0;
  v45 = -1;
  if (v34 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v34, v35, v44, v33);
    v45 = v34;
  }

  WTF::HashMap<WTF::String,WGSL::ConstantValue,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WGSL::ConstantValue>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::HashMap(&v37, &v39, 2);
  v23 = v37;
  v37 = 0;
  v36 = 10;
  v35[0] = 0;
  *a2 = v23;
  *(a2 + 16) = 10;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, v35);
  v36 = -1;
  v25 = v37;
  if (v37)
  {
    v26 = *(v37 - 1);
    if (v26)
    {
      v27 = v37;
      do
      {
        v28 = *v27;
        if (*v27 != -1)
        {
          if (*(v27 + 24) != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, v27 + 8);
            v28 = *v27;
          }

          *(v27 + 24) = -1;
          *v27 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v24);
          }
        }

        v27 += 8;
        --v26;
      }

      while (v26);
    }

    WTF::fastFree((v25 - 4), v24);
  }

  if (v45 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, v44);
  }

  v45 = -1;
  v29 = v43;
  v43 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v24);
  }

  if (v42 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, &v40);
  }

  LOBYTE(v42) = -1;
  v30 = v39;
  v39 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v24);
  }

  if (v34 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v39, v33);
  }

  v34 = -1;
  if (v32 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v39, v31);
  }
}

void WGSL::constantNormalize(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 1)
  {
    goto LABEL_54;
  }

  v4 = *a2;
  if (!**a2)
  {
    __break(0xC471u);
    return;
  }

  WGSL::constantLength(*a1, a2, &v24);
  if (v27)
  {
    if (v27 == 1)
    {
      v6 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
        *a3 = v6;
        *(a3 + 24) = 1;
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {

          WTF::StringImpl::destroy(v6, v5);
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 24) = 1;
      }

      return;
    }

LABEL_54:
    mpark::throw_bad_variant_access(a1);
  }

  LOBYTE(v17[0]) = 0;
  v18 = -1;
  v7 = v26;
  if (v26 <= 5u)
  {
    if (v26 <= 2u)
    {
      if (v26)
      {
        if (v26 == 1)
        {
          LOWORD(v17[0]) = v24;
        }

        else
        {
          v17[0] = v24;
        }
      }

      else
      {
        LODWORD(v17[0]) = v24;
      }

      goto LABEL_30;
    }

    if (v26 == 3 || v26 == 4)
    {
      LODWORD(v17[0]) = v24;
LABEL_30:
      v18 = v26;
      goto LABEL_31;
    }

    v8 = v24;
LABEL_29:
    v17[0] = v8;
    goto LABEL_30;
  }

  if (v26 <= 8u)
  {
    if (v26 == 6)
    {
      LOBYTE(v17[0]) = v24;
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  if (v26 == 9)
  {
    v9 = v25;
    v25 = 0;
    v17[0] = v24;
    v17[1] = v9;
    goto LABEL_30;
  }

  if (v26 == 10)
  {
LABEL_23:
    v8 = v24;
    v24 = 0;
    goto LABEL_29;
  }

LABEL_31:
  LOBYTE(v20[0]) = 0;
  v21 = -1;
  v10 = *(v4 + 24);
  if (v10 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v10, &v16, v20, v4 + 1);
    v21 = *(v4 + 24);
  }

  LOBYTE(v22[0]) = 0;
  v23 = -1;
  if (v7 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, &v16, v22, v17);
    v23 = v18;
  }

  v11 = WTF::fastMalloc(0x38);
  *v11 = 2;
  *(v11 + 8) = 0;
  *(v11 + 24) = -1;
  if (v21 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v21, &v16, v11 + 1, v20);
    *(v11 + 24) = v21;
  }

  *(v11 + 32) = 0;
  *(v11 + 48) = -1;
  if (v23 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v23, &v16, v11 + 4, v22);
    *(v11 + 48) = v23;
  }

  v16 = v11;
  WGSL::constantDivide(&v16, a3);
  v13 = *v11;
  if (v13)
  {
    v14 = 24 * v13;
    v15 = v11 + 6;
    do
    {
      v12 = v15 - 16;
      if (*v15 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v19, v12);
      }

      *v15 = -1;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
  }

  WTF::fastFree(v11, v12);
  if (v23 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v19, v22);
  }

  v23 = -1;
  if (v21 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v19, v20);
  }

  if (v18 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v20, v17);
  }

  if (v7 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v20, &v24);
  }
}

void WGSL::constantPow(int **a1@<X1>, uint64_t a2@<X8>)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x225849514);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x225849534);
  }

  v5 = (v3 + 2);
  LOBYTE(v62[0]) = 0;
  v63 = -1;
  v6 = *(v3 + 24);
  if (v6 == 255)
  {
    v7 = 255;
  }

  else
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, __x, v62, v3 + 1);
    v7 = *(v3 + 24);
    v63 = *(v3 + 24);
  }

  v8 = (v3 + 8);
  LOBYTE(v64[0]) = 0;
  v65 = -1;
  v9 = *(v3 + 48);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, __x, v64, v3 + 4);
    v65 = *(v3 + 48);
    v7 = v63;
  }

  LOBYTE(__x[0]) = 0;
  v53 = -1;
  if (v7 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v59, __x, v62), v53 = v63, v63 == 255))
  {
LABEL_12:
    LOBYTE(__x[0]) = 0;
    v53 = -1;
    v10 = v65;
    if (v65 == 255)
    {
      goto LABEL_80;
    }

    v10 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v65, v59, __x, v64);
    v53 = v65;
    if (v65 != 8)
    {
      if (v65 != 255)
      {
        goto LABEL_79;
      }

      goto LABEL_80;
    }

    goto LABEL_16;
  }

  if (v63 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __x);
    goto LABEL_12;
  }

LABEL_16:
  if (!__x[0])
  {
LABEL_79:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __x);
    goto LABEL_80;
  }

  v11 = *__x[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __x);
  if (!v11)
  {
LABEL_80:
    v41 = *(v3 + 24);
    if (v41 == 2)
    {
      if (*(v3 + 48) == 2)
      {
        __x[0] = pow(*v5, *v8);
        v47 = 2;
        v53 = 2;
        *a2 = __x[0];
        goto LABEL_86;
      }

LABEL_109:
      mpark::throw_bad_variant_access(v10);
    }

    if (v41 == 1)
    {
      if (*(v3 + 48) == 1)
      {
        _H0 = *v5;
        _H1 = *v8;
        __asm
        {
          FCVT            S0, H0; float
          FCVT            S1, H1; float
        }

        _S0 = powf(_S0, _S1);
        __asm { FCVT            H0, S0 }

        LOWORD(__x[0]) = LOWORD(_S0);
        v47 = 1;
        v53 = 1;
        *a2 = LOWORD(_S0);
LABEL_86:
        *(a2 + 16) = v47;
        goto LABEL_90;
      }

      goto LABEL_109;
    }

    if (!*(v3 + 24))
    {
      if (!*(v3 + 48))
      {
        LODWORD(__x[0]) = powf(*v5, *v8);
        v53 = 0;
        *a2 = __x[0];
        *(a2 + 16) = 0;
LABEL_90:
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __x);
        if (v65 == 255)
        {
          goto LABEL_92;
        }

        goto LABEL_91;
      }

      goto LABEL_109;
    }

    __break(0xC471u);
LABEL_116:
    JUMPOUT(0x2258494F4);
  }

  v12 = WTF::fastMalloc((24 * v11 + 8));
  *v12 = v11;
  v13 = v12 + 2;
  v14 = 24;
  bzero(v12 + 2, 24 * ((24 * v11 - 24) / 0x18uLL) + 24);
  v15 = 0;
  v53 = 0;
  LODWORD(__y[0]) = 0;
  v55 = 0;
  v16 = *a2;
  v51 = *(a2 + 24);
  LODWORD(__x[0]) = 0;
  do
  {
    v17 = v63;
    if (v63 == 8)
    {
      if (v15 >= *v62[0])
      {
        goto LABEL_110;
      }

      v18 = (v62[0] + v14 - 16);
      v17 = *(v62[0] + v14);
      if (v53 == 255)
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

      v59[0] = __x;
    }

    else
    {
      if (v53 == 255)
      {
        if (v63 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v63 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __x);
        v53 = -1;
        goto LABEL_32;
      }

      v59[0] = __x;
      v18 = v62;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v59, __x, v18);
LABEL_32:
    v19 = v65;
    if (v65 == 8)
    {
      if (v15 >= *v64[0])
      {
LABEL_110:
        *a2 = v16;
        *(a2 + 24) = v51;
        __break(0xC471u);
        goto LABEL_116;
      }

      v20 = (v64[0] + v14 - 16);
      v19 = *(v64[0] + v14);
      if (v55 == 255)
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

      v59[0] = __y;
    }

    else
    {
      if (v55 == 255)
      {
        if (v65 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v65 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __y);
        v55 = -1;
        goto LABEL_45;
      }

      v59[0] = __y;
      v20 = v64;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v19, v59, __y, v20);
LABEL_45:
    if (v53)
    {
      if (v53 == 1)
      {
        if (v55 != 1)
        {
          goto LABEL_108;
        }

        _H0 = __x[0];
        _H1 = __y[0];
        __asm
        {
          FCVT            S0, H0; float
          FCVT            S1, H1; float
        }

        _S0 = powf(_S0, _S1);
        __asm { FCVT            H0, S0 }

        LOWORD(v56[0]) = LOWORD(_S0);
        v30 = 1;
        v57 = 1;
        LOWORD(v59[0]) = LOWORD(_S0);
      }

      else
      {
        if (v53 != 2)
        {
          *a2 = v16;
          *(a2 + 24) = v51;
          __break(0xC471u);
          JUMPOUT(0x22584958CLL);
        }

        if (v55 != 2)
        {
LABEL_108:
          *a2 = v16;
          *(a2 + 24) = v51;
          mpark::throw_bad_variant_access(v19);
        }

        v56[0] = COERCE__BYTE_(pow(*__x, *__y));
        v30 = 2;
        v57 = 2;
        v59[0] = v56[0];
      }

      v60 = v30;
      v61 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v58, v56);
      v32 = v61;
      if (v61)
      {
LABEL_59:
        if (v32 != 1)
        {
          goto LABEL_108;
        }

        v16 = v59[0];
        if (v59[0])
        {
          atomic_fetch_add_explicit(v59[0], 2u, memory_order_relaxed);
        }

        v51 = 1;
        goto LABEL_65;
      }
    }

    else
    {
      if (v55)
      {
        goto LABEL_108;
      }

      LODWORD(v56[0]) = powf(*__x, *__y);
      v57 = 0;
      LODWORD(v59[0]) = v56[0];
      v60 = 0;
      v61 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v58, v56);
      v32 = v61;
      if (v61)
      {
        goto LABEL_59;
      }
    }

    if (v15 >= *v12)
    {
      *a2 = v16;
      *(a2 + 24) = v51;
      __break(0xC471u);
      JUMPOUT(0x225849560);
    }

    if (LOBYTE(v12[v14 / 4]) == 255)
    {
      if (v60 == 255)
      {
        goto LABEL_65;
      }
    }

    else if (v60 == 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v13);
      LOBYTE(v12[v14 / 4]) = -1;
      goto LABEL_65;
    }

    v56[0] = v13;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v60, v56, v13, v59);
LABEL_65:
    if (v61 != 255)
    {
      if (v61)
      {
        v33 = v59[0];
        v59[0] = 0;
        if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v31);
        }
      }

      else if (v60 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v59);
      }
    }

    if (v32)
    {
      *a2 = v16;
      *(a2 + 24) = v51;
      if (v55 != 255)
      {
        goto LABEL_96;
      }

      goto LABEL_97;
    }

    ++v15;
    v13 += 24;
    v14 += 24;
  }

  while (v11 != v15);
  v34 = *v12;
  v35 = 24 * v34;
  v36 = WTF::fastMalloc((24 * v34 + 8));
  v37 = v36;
  *v36 = v34;
  if (v34)
  {
    v38 = (v36 + 6);
    v39 = (v12 + 6);
    do
    {
      *(v38 - 16) = 0;
      *v38 = -1;
      v40 = *v39;
      if (v40 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v40, v59, v38 - 2, v39 - 2);
        *v38 = *v39;
      }

      v38 += 3;
      v39 += 3;
      v35 -= 24;
    }

    while (v35);
  }

  v60 = 8;
  v59[0] = 0;
  *a2 = v37;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v59);
  if (v55 != 255)
  {
LABEL_96:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __y);
  }

LABEL_97:
  v55 = -1;
  if (v53 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __x);
  }

  v48 = *v12;
  if (v48)
  {
    v49 = 24 * v48;
    v50 = v12 + 6;
    do
    {
      v31 = (v50 - 16);
      if (*v50 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(__x, v31);
      }

      *v50 = -1;
      v50 += 24;
      v49 -= 24;
    }

    while (v49);
  }

  WTF::fastFree(v12, v31);
  if (v65 != 255)
  {
LABEL_91:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(__x, v64);
  }

LABEL_92:
  v65 = -1;
  if (v63 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(__x, v62);
  }
}

void WGSL::constantQuantizeToF16(void *a1@<X1>, uint64_t a2@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_123;
  }

  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v4 = *(v3 + 24);
  if (v4 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v4, &v44, v42, v3 + 1), v43 = *(v3 + 24), LOBYTE(v44) = 0, v46 = -1, v43 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v43, v39, &v44, v42), v46 = v43, v43 == 255))
  {
LABEL_70:
    if (*(v3 + 24))
    {
      __break(0xC471u);
      JUMPOUT(0x225849C68);
    }

    WGSL::constantQuantizeToF16(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()(&v44, *(v3 + 2));
    *a2 = 0;
    *(a2 + 24) = -1;
    v22 = v47;
    if (v47 == 255)
    {
      goto LABEL_95;
    }

    if (v47)
    {
      *a2 = v44;
      *(a2 + 24) = v22;
      goto LABEL_95;
    }

    *(a2 + 16) = -1;
    v23 = v46;
    if (v46 > 5u)
    {
      if (v46 > 8u)
      {
        if (v46 == 9)
        {
          v25 = v45;
          v45 = 0;
          *a2 = v44;
          *(a2 + 8) = v25;
          goto LABEL_94;
        }

        if (v46 != 10)
        {
          *(a2 + 24) = 0;
          goto LABEL_95;
        }
      }

      else if (v46 == 6)
      {
        *a2 = v44;
        goto LABEL_94;
      }

      v24 = v44;
      v44 = 0;
    }

    else
    {
      if (v46 <= 2u)
      {
        if (v46)
        {
          if (v46 == 1)
          {
            *a2 = v44;
          }

          else
          {
            *a2 = v44;
          }
        }

        else
        {
          *a2 = v44;
        }

        goto LABEL_94;
      }

      if (v46 == 3 || v46 == 4)
      {
        *a2 = v44;
LABEL_94:
        *(a2 + 16) = v23;
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, &v44);
        goto LABEL_95;
      }

      v24 = v44;
    }

    *a2 = v24;
    goto LABEL_94;
  }

  if (v43 != 8 || !v44)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, &v44);
    goto LABEL_70;
  }

  v5 = *v44;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, &v44);
  if (!v5)
  {
    goto LABEL_70;
  }

  v6 = WTF::fastMalloc((24 * v5 + 8));
  *v6 = v5;
  v7 = (v6 + 1);
  v8 = 3;
  bzero(v6 + 1, 24 * ((24 * v5 - 24) / 0x18uLL) + 24);
  v9 = 0;
  LODWORD(v36[0]) = 0;
  v37 = 0;
  v10 = *(a2 + 24);
  v11 = *a2;
  do
  {
    v12 = v43;
    if (v43 == 8)
    {
      if (v9 >= *v42[0])
      {
        *a2 = v11;
        *(a2 + 24) = v10;
        __break(0xC471u);
        JUMPOUT(0x225849CC0);
      }

      v13 = (v42[0] + v8 * 8 - 16);
      v12 = *(v42[0] + v8 * 8);
      if (v37 == 255)
      {
        if (v12 == 255)
        {
          goto LABEL_22;
        }
      }

      else if (v12 == 255)
      {
        goto LABEL_118;
      }

      v44 = v36;
    }

    else
    {
      if (v37 == 255)
      {
        if (v43 == 255)
        {
          *a2 = v11;
          *(a2 + 24) = v10;
          goto LABEL_121;
        }
      }

      else if (v43 == 255)
      {
LABEL_118:
        *a2 = v11;
        *(a2 + 24) = v10;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v44, v36);
        v37 = -1;
        goto LABEL_121;
      }

      v44 = v36;
      v13 = v42;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v12, &v44, v36, v13);
LABEL_22:
    if (v37)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
LABEL_121:
      __break(0xC471u);
      JUMPOUT(0x225849CECLL);
    }

    WGSL::constantQuantizeToF16(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()(&v44, *v36);
    LOBYTE(v39[0]) = 0;
    v41 = -1;
    v16 = v47;
    if (v47 == 255)
    {
      goto LABEL_47;
    }

    if (v47)
    {
      v39[0] = v44;
      v41 = v47;
      goto LABEL_47;
    }

    v40 = -1;
    if (v46 > 5u)
    {
      if (v46 > 8u)
      {
        if (v46 == 9)
        {
          v18 = v45;
          v45 = 0;
          v39[0] = v44;
          v39[1] = v18;
          goto LABEL_46;
        }

        if (v46 != 10)
        {
          v41 = 0;
LABEL_57:
          if (v9 < *v6)
          {
            if (LOBYTE(v6[v8]) == 255)
            {
              if (v40 != 255)
              {
                goto LABEL_62;
              }
            }

            else
            {
              if (v40 == 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v44, v7);
                LOBYTE(v6[v8]) = -1;
                goto LABEL_63;
              }

LABEL_62:
              v44 = v7;
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v40, &v44, v7, v39);
            }

LABEL_63:
            v19 = 1;
            v20 = v41;
            if (v41 == 255)
            {
              goto LABEL_64;
            }

            goto LABEL_50;
          }

          *a2 = v11;
          *(a2 + 24) = v10;
          __break(0xC471u);
LABEL_123:
          JUMPOUT(0x225849C48);
        }
      }

      else if (v46 == 6)
      {
        LOBYTE(v39[0]) = v44;
        goto LABEL_46;
      }

      v17 = v44;
      v44 = 0;
      goto LABEL_45;
    }

    if (v46 > 2u)
    {
      if (v46 == 3 || v46 == 4)
      {
        LODWORD(v39[0]) = v44;
        goto LABEL_46;
      }

      v17 = v44;
LABEL_45:
      v39[0] = v17;
      goto LABEL_46;
    }

    if (v46)
    {
      if (v46 == 1)
      {
        LOWORD(v39[0]) = v44;
      }

      else
      {
        v39[0] = v44;
      }
    }

    else
    {
      LODWORD(v39[0]) = v44;
    }

LABEL_46:
    v40 = v46;
    v41 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, &v44);
    v16 = v41;
    if (!v41)
    {
      goto LABEL_57;
    }

LABEL_47:
    if (v16 != 1)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      mpark::throw_bad_variant_access(v14);
    }

    v11 = v39[0];
    if (v39[0])
    {
      v19 = 0;
      atomic_fetch_add_explicit(v39[0], 2u, memory_order_relaxed);
      v10 = 1;
      v20 = v41;
      if (v41 == 255)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v19 = 0;
      v10 = 1;
      v20 = v41;
      if (v41 == 255)
      {
        goto LABEL_64;
      }
    }

LABEL_50:
    if (v20)
    {
      v21 = v39[0];
      v39[0] = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v15);
      }
    }

    else if (v40 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v44, v39);
    }

LABEL_64:
    if ((v19 & 1) == 0)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      goto LABEL_106;
    }

    ++v9;
    v7 = (v7 + 24);
    v8 += 3;
  }

  while (v5 != v9);
  v26 = *v6;
  v27 = 24 * v26;
  v28 = WTF::fastMalloc((24 * v26 + 8));
  v29 = v28;
  *v28 = v26;
  if (v26)
  {
    v30 = (v28 + 6);
    v31 = v6 + 3;
    do
    {
      *(v30 - 16) = 0;
      *v30 = -1;
      v32 = *v31;
      if (v32 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v32, &v44, v30 - 2, v31 - 2);
        *v30 = *v31;
      }

      v30 += 3;
      v31 += 3;
      v27 -= 24;
    }

    while (v27);
  }

  v46 = 8;
  v44 = 0;
  *a2 = v29;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, &v44);
LABEL_106:
  if (v37 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v44, v36);
  }

  v33 = *v6;
  if (v33)
  {
    v34 = 24 * v33;
    v35 = v6 + 3;
    do
    {
      v15 = (v35 - 16);
      if (*v35 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v44, v15);
      }

      *v35 = -1;
      v35 += 24;
      v34 -= 24;
    }

    while (v34);
  }

  WTF::fastFree(v6, v15);
LABEL_95:
  if (v43 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v44, v42);
  }
}

void WGSL::constantRadians(void *a1@<X1>, uint64_t a2@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_88;
  }

  v4 = (v3 + 2);
  LOBYTE(v52[0]) = 0;
  v53 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v49, v52, v3 + 1), v53 = *(v3 + 24), LOBYTE(v49[0]) = 0, v50 = -1, v53 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v53, v46, v49, v52), v50 = v53, v53 == 255))
  {
LABEL_53:
    v28 = *(v3 + 24);
    if (v28 == 2)
    {
      *v49 = *v4 * 0.0174532925;
      v32 = 2;
      v50 = 2;
      *a2 = v49[0];
    }

    else
    {
      if (v28 != 1)
      {
        if (*(v3 + 24))
        {
          __break(0xC471u);
          JUMPOUT(0x22584A364);
        }

        v33 = *v4 * 0.0174532925;
        *v49 = v33;
        v50 = 0;
        *a2 = v33;
        *(a2 + 16) = 0;
LABEL_60:
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v49);
        if (v53 == 255)
        {
          return;
        }

        goto LABEL_61;
      }

      _H0 = *v4;
      __asm { FCVT            D0, H0 }

      _D0 = _D0 * 0.0174532925;
      __asm { FCVT            H0, D0 }

      LOWORD(v49[0]) = LOWORD(_D0);
      v32 = 1;
      v50 = 1;
      *a2 = LOWORD(_D0);
    }

    *(a2 + 16) = v32;
    goto LABEL_60;
  }

  if (v53 != 8 || !v49[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v49);
    goto LABEL_53;
  }

  v6 = *v49[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v49);
  if (!v6)
  {
    goto LABEL_53;
  }

  v7 = WTF::fastMalloc((24 * v6 + 8));
  *v7 = v6;
  v8 = v7 + 2;
  v9 = 6;
  bzero(v7 + 2, 24 * ((24 * v6 - 24) / 0x18uLL) + 24);
  v10 = 0;
  LODWORD(v44[0]) = 0;
  v45 = 0;
  v11 = *(a2 + 24);
  v12 = *a2;
  do
  {
    v13 = v53;
    if (v53 != 8)
    {
      if (v45 == 255)
      {
        if (v53 == 255)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          goto LABEL_87;
        }
      }

      else if (v53 == 255)
      {
LABEL_81:
        *a2 = v12;
        *(a2 + 24) = v11;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v49, v44);
        v45 = -1;
LABEL_87:
        __break(0xC471u);
LABEL_88:
        JUMPOUT(0x22584A2F8);
      }

      v49[0] = v44;
      v14 = v52;
      goto LABEL_21;
    }

    if (v10 >= *v52[0])
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      __break(0xC471u);
      JUMPOUT(0x22584A344);
    }

    v14 = (v52[0] + v9 * 4 - 16);
    v13 = *(v52[0] + v9 * 4);
    if (v45 == 255)
    {
      if (v13 == 255)
      {
        goto LABEL_22;
      }
    }

    else if (v13 == 255)
    {
      goto LABEL_81;
    }

    v49[0] = v44;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v13, v49, v44, v14);
LABEL_22:
    if (v45)
    {
      if (v45 == 1)
      {
        _H0 = v44[0];
        __asm { FCVT            D0, H0 }

        _D0 = _D0 * 0.0174532925;
        __asm { FCVT            H0, D0 }

        LOWORD(v46[0]) = LOWORD(_D0);
        v47 = 1;
        LOWORD(v49[0]) = LOWORD(_D0);
        v50 = 1;
        v51 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v48, v46);
        v24 = v51;
        if (!v51)
        {
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      if (v45 == 2)
      {
        *v46 = *v44 * 0.0174532925;
        v47 = 2;
        *v49 = *v44 * 0.0174532925;
        v50 = 2;
        v51 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v48, v46);
        v24 = v51;
        if (v51)
        {
          goto LABEL_27;
        }

LABEL_33:
        if (v10 >= *v7)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          __break(0xC471u);
          JUMPOUT(0x22584A38CLL);
        }

        if (LOBYTE(v7[v9]) == 255)
        {
          if (v50 == 255)
          {
            goto LABEL_40;
          }
        }

        else if (v50 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v8);
          LOBYTE(v7[v9]) = -1;
          v26 = v51;
          if (v51 == 255)
          {
            goto LABEL_47;
          }

          goto LABEL_41;
        }

        v46[0] = v8;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v50, v46, v8, v49);
LABEL_40:
        v26 = v51;
        if (v51 == 255)
        {
          goto LABEL_47;
        }

        goto LABEL_41;
      }

      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_87;
    }

    v25 = *v44 * 0.0174532925;
    *v46 = v25;
    v47 = 0;
    *v49 = v25;
    v50 = 0;
    v51 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v48, v46);
    v24 = v51;
    if (!v51)
    {
      goto LABEL_33;
    }

LABEL_27:
    if (v24 != 1)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      mpark::throw_bad_variant_access(v22);
    }

    v12 = v49[0];
    if (v49[0])
    {
      atomic_fetch_add_explicit(v49[0], 2u, memory_order_relaxed);
      v11 = 1;
      v26 = v51;
      if (v51 == 255)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v11 = 1;
      v26 = v51;
      if (v51 == 255)
      {
        goto LABEL_47;
      }
    }

LABEL_41:
    if (v26)
    {
      v27 = v49[0];
      v49[0] = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v23);
      }
    }

    else if (v50 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v49);
    }

LABEL_47:
    if (v24)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_70;
    }

    ++v10;
    v8 += 24;
    v9 += 6;
  }

  while (v6 != v10);
  v34 = *v7;
  v35 = 24 * v34;
  v36 = WTF::fastMalloc((24 * v34 + 8));
  v37 = v36;
  *v36 = v34;
  if (v34)
  {
    v38 = (v36 + 6);
    v39 = (v7 + 6);
    do
    {
      *(v38 - 16) = 0;
      *v38 = -1;
      v40 = *v39;
      if (v40 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v40, v49, v38 - 2, v39 - 2);
        *v38 = *v39;
      }

      v38 += 3;
      v39 += 3;
      v35 -= 24;
    }

    while (v35);
  }

  v50 = 8;
  v49[0] = 0;
  *a2 = v37;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v49);
LABEL_70:
  if (v45 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v49, v44);
  }

  v41 = *v7;
  if (v41)
  {
    v42 = 24 * v41;
    v43 = v7 + 6;
    do
    {
      v23 = (v43 - 16);
      if (*v43 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v49, v23);
      }

      *v43 = -1;
      v43 += 24;
      v42 -= 24;
    }

    while (v42);
  }

  WTF::fastFree(v7, v23);
  if (v53 != 255)
  {
LABEL_61:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v49, v52);
  }
}

void WGSL::constantReflect(mpark *a1@<X0>, int **a2@<X1>, uint64_t a3@<X8>)
{
  v141 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = **a2;
  if (!v5)
  {
    goto LABEL_433;
  }

  if (v5 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22584BE14);
  }

  v6 = a1;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_430;
  }

  v7 = *a1;
  if (*(*a1 + 48))
  {
    goto LABEL_430;
  }

  v8 = *v7;
  if (v8 == 3)
  {
    LOBYTE(v133[0]) = 0;
    v134 = -1;
    v18 = *(v4 + 48);
    if (v18 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v18, &v137, v133, v4 + 4);
      v134 = *(v4 + 48);
    }

    LOBYTE(v135[0]) = 0;
    v136 = -1;
    v19 = *(v4 + 24);
    if (v19 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v19, &v137, v135, v4 + 1);
      v136 = *(v4 + 24);
    }

    v20 = WTF::fastMalloc(0x38);
    *v20 = 2;
    *(v20 + 8) = 0;
    *(v20 + 24) = -1;
    if (v134 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v134, &v137, v20 + 1, v133);
      *(v20 + 24) = v134;
    }

    *(v20 + 32) = 0;
    *(v20 + 48) = -1;
    if (v136 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v136, &v137, v20 + 4, v135);
      *(v20 + 48) = v136;
    }

    v129 = v20;
    WGSL::constantDot(v7, &v137);
    v22 = *v20;
    if (v22)
    {
      v23 = 24 * v22;
      v24 = v20 + 6;
      do
      {
        v21 = v24 - 16;
        if (*v24 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v125, v21);
        }

        *v24 = -1;
        v24 += 24;
        v23 -= 24;
      }

      while (v23);
    }

    a1 = WTF::fastFree(v20, v21);
    if (v136 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v125, v135);
    }

    v136 = -1;
    if (v134 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v125, v133);
    }

    v17 = v140;
    if (v140)
    {
      goto LABEL_72;
    }

    LOBYTE(v121) = 0;
    v123 = -1;
    if (v139 > 5u)
    {
      if (v139 > 8u)
      {
        if (v139 == 9)
        {
          v37 = v138;
          v138 = 0;
          v121 = v137;
          v122 = v37;
          goto LABEL_150;
        }

        if (v139 != 10)
        {
          v133[0] = 0x4000000000000000;
          v134 = 2;
          LOBYTE(v135[0]) = 0;
          v47 = -1;
LABEL_151:
          v136 = v47;
          v48 = WTF::fastMalloc(0x38);
          *v48 = 2;
          *(v48 + 8) = 0;
          *(v48 + 24) = -1;
          if (v134 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v134, &v118, v48 + 1, v133);
            *(v48 + 24) = v134;
          }

          *(v48 + 32) = 0;
          *(v48 + 48) = -1;
          if (v136 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v136, &v118, v48 + 4, v135);
            *(v48 + 48) = v136;
          }

          v125 = v48;
          WGSL::constantMultiply(v6, &v125, &v129);
          v50 = *v48;
          if (v50)
          {
            v51 = 24 * v50;
            v52 = v48 + 6;
            do
            {
              v49 = v52 - 16;
              if (*v52 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v118, v49);
              }

              *v52 = -1;
              v52 += 24;
              v51 -= 24;
            }

            while (v51);
          }

          a1 = WTF::fastFree(v48, v49);
          if (v136 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v118, v135);
          }

          v136 = -1;
          if (v134 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v118, v133);
          }

          v44 = v132;
          if (v132)
          {
            goto LABEL_201;
          }

          LOBYTE(v118) = 0;
          v53 = -1;
          v120 = -1;
          if (v131 > 5u)
          {
            if (v131 > 8u)
            {
              if (v131 == 9)
              {
                v66 = v130;
                v130 = 0;
                v118 = v129;
                v119 = v66;
                goto LABEL_264;
              }

              if (v131 != 10)
              {
                LOBYTE(v133[0]) = 0;
LABEL_265:
                v134 = v53;
                LOBYTE(v135[0]) = 0;
                v136 = -1;
                v76 = *(v4 + 48);
                if (v76 != 255)
                {
                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v76, &v114, v135, v4 + 4);
                  v136 = *(v4 + 48);
                }

                v77 = WTF::fastMalloc(0x38);
                *v77 = 2;
                *(v77 + 8) = 0;
                *(v77 + 24) = -1;
                if (v134 != 255)
                {
                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v134, &v114, v77 + 1, v133);
                  *(v77 + 24) = v134;
                }

                *(v77 + 32) = 0;
                *(v77 + 48) = -1;
                if (v136 != 255)
                {
                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v136, &v114, v77 + 4, v135);
                  *(v77 + 48) = v136;
                }

                v115 = v77;
                WGSL::constantMultiply(v6, &v115, &v125);
                v79 = *v77;
                if (v79)
                {
                  v80 = 24 * v79;
                  v81 = v77 + 6;
                  do
                  {
                    v78 = v81 - 16;
                    if (*v81 != 255)
                    {
                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v114, v78);
                    }

                    *v81 = -1;
                    v81 += 24;
                    v80 -= 24;
                  }

                  while (v80);
                }

                a1 = WTF::fastFree(v77, v78);
                if (v136 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v114, v135);
                }

                v136 = -1;
                if (v134 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v114, v133);
                }

                v73 = v128;
                if (v128)
                {
LABEL_319:
                  if (v73 == 1)
                  {
                    v91 = v125;
                    if (v125)
                    {
                      atomic_fetch_add_explicit(v125, 2u, memory_order_relaxed);
                    }

                    *a3 = v91;
                    *(a3 + 24) = 1;
                    goto LABEL_404;
                  }

LABEL_430:
                  mpark::throw_bad_variant_access(a1);
                }

                LOBYTE(v115) = 0;
                v117 = -1;
                v82 = v127;
                if (v127 > 5u)
                {
                  if (v127 > 8u)
                  {
                    if (v127 == 9)
                    {
                      v95 = v126;
                      v126 = 0;
                      v115 = v125;
                      v116 = v95;
                      goto LABEL_364;
                    }

                    if (v127 != 10)
                    {
LABEL_365:
                      LOBYTE(v133[0]) = 0;
                      v134 = -1;
                      v102 = *(v4 + 24);
                      if (v102 != 255)
                      {
                        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v102, &v114, v133, v4 + 1);
                        v134 = *(v4 + 24);
                        v82 = v117;
                      }

                      LOBYTE(v135[0]) = 0;
                      v136 = -1;
                      if (v82 != 255)
                      {
                        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v82, &v114, v135, &v115);
                        v136 = v117;
                      }

                      v97 = WTF::fastMalloc(0x38);
                      *v97 = 2;
                      *(v97 + 8) = 0;
                      *(v97 + 24) = -1;
                      if (v134 != 255)
                      {
                        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v134, &v114, v97 + 1, v133);
                        *(v97 + 24) = v134;
                      }

                      *(v97 + 32) = 0;
                      *(v97 + 48) = -1;
                      if (v136 != 255)
                      {
                        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v136, &v114, v97 + 4, v135);
                        *(v97 + 48) = v136;
                      }

                      v114 = v97;
                      WGSL::constantMinus(v6, &v114, a3);
                      v103 = *v97;
                      if (v103)
                      {
                        v104 = 24 * v103;
                        v105 = v97 + 6;
                        do
                        {
                          v98 = v105 - 16;
                          if (*v105 != 255)
                          {
                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v124, v98);
                          }

                          *v105 = -1;
                          v105 += 24;
                          v104 -= 24;
                        }

                        while (v104);
                      }

                      goto LABEL_398;
                    }
                  }

                  else if (v127 == 6)
                  {
                    LOBYTE(v115) = v125;
                    goto LABEL_364;
                  }

                  v83 = v125;
                  v125 = 0;
                }

                else
                {
                  if (v127 <= 2u)
                  {
                    if (v127)
                    {
                      if (v127 == 1)
                      {
                        LOWORD(v115) = v125;
                      }

                      else
                      {
                        v115 = v125;
                      }
                    }

                    else
                    {
                      LODWORD(v115) = v125;
                    }

                    goto LABEL_364;
                  }

                  if (v127 == 3 || v127 == 4)
                  {
                    LODWORD(v115) = v125;
LABEL_364:
                    v117 = v127;
                    goto LABEL_365;
                  }

                  v83 = v125;
                }

                v115 = v83;
                goto LABEL_364;
              }
            }

            else if (v131 == 6)
            {
              LOBYTE(v118) = v129;
              goto LABEL_264;
            }

            v54 = v129;
            v129 = 0;
          }

          else
          {
            if (v131 <= 2u)
            {
              if (v131)
              {
                if (v131 == 1)
                {
                  LOWORD(v118) = v129;
                }

                else
                {
                  v118 = v129;
                }
              }

              else
              {
                LODWORD(v118) = v129;
              }

              goto LABEL_264;
            }

            if (v131 == 3 || v131 == 4)
            {
              LODWORD(v118) = v129;
LABEL_264:
              v120 = v131;
              LOBYTE(v133[0]) = 0;
              v134 = -1;
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v131, &v114, v133, &v118);
              v53 = v120;
              goto LABEL_265;
            }

            v54 = v129;
          }

          v118 = v54;
          goto LABEL_264;
        }
      }

      else if (v139 == 6)
      {
        LOBYTE(v121) = v137;
        goto LABEL_150;
      }

      v34 = v137;
      v137 = 0;
    }

    else
    {
      if (v139 <= 2u)
      {
        if (v139)
        {
          if (v139 == 1)
          {
            LOWORD(v121) = v137;
          }

          else
          {
            v121 = v137;
          }
        }

        else
        {
          LODWORD(v121) = v137;
        }

        goto LABEL_150;
      }

      if (v139 == 3 || v139 == 4)
      {
        LODWORD(v121) = v137;
LABEL_150:
        v123 = v139;
        v133[0] = 0x4000000000000000;
        v134 = 2;
        LOBYTE(v135[0]) = 0;
        v136 = -1;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v139, &v118, v135, &v121);
        v47 = v123;
        goto LABEL_151;
      }

      v34 = v137;
    }

    v121 = v34;
    goto LABEL_150;
  }

  if (v8 != 4)
  {
    if (v8 == 5)
    {
      LOBYTE(v133[0]) = 0;
      v134 = -1;
      v25 = *(v4 + 48);
      if (v25 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v25, &v137, v133, v4 + 4);
        v134 = *(v4 + 48);
      }

      LOBYTE(v135[0]) = 0;
      v136 = -1;
      v26 = *(v4 + 24);
      if (v26 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v26, &v137, v135, v4 + 1);
        v136 = *(v4 + 24);
      }

      v27 = WTF::fastMalloc(0x38);
      *v27 = 2;
      *(v27 + 8) = 0;
      *(v27 + 24) = -1;
      if (v134 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v134, &v137, v27 + 1, v133);
        *(v27 + 24) = v134;
      }

      *(v27 + 32) = 0;
      *(v27 + 48) = -1;
      if (v136 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v136, &v137, v27 + 4, v135);
        *(v27 + 48) = v136;
      }

      v129 = v27;
      WGSL::constantDot(v7, &v137);
      v29 = *v27;
      if (v29)
      {
        v30 = 24 * v29;
        v31 = v27 + 6;
        do
        {
          v28 = v31 - 16;
          if (*v31 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v125, v28);
          }

          *v31 = -1;
          v31 += 24;
          v30 -= 24;
        }

        while (v30);
      }

      a1 = WTF::fastFree(v27, v28);
      if (v136 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v125, v135);
      }

      v136 = -1;
      if (v134 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v125, v133);
      }

      v17 = v140;
      if (v140)
      {
        goto LABEL_72;
      }

      LOBYTE(v121) = 0;
      v123 = -1;
      if (v139 > 5u)
      {
        if (v139 > 8u)
        {
          if (v139 == 9)
          {
            v55 = v138;
            v138 = 0;
            v121 = v137;
            v122 = v55;
            goto LABEL_186;
          }

          if (v139 != 10)
          {
            LODWORD(v133[0]) = 0x40000000;
            v134 = 0;
            LOBYTE(v135[0]) = 0;
            v56 = -1;
LABEL_187:
            v136 = v56;
            v57 = WTF::fastMalloc(0x38);
            *v57 = 2;
            *(v57 + 8) = 0;
            *(v57 + 24) = -1;
            if (v134 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v134, &v118, v57 + 1, v133);
              *(v57 + 24) = v134;
            }

            *(v57 + 32) = 0;
            *(v57 + 48) = -1;
            if (v136 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v136, &v118, v57 + 4, v135);
              *(v57 + 48) = v136;
            }

            v125 = v57;
            WGSL::constantMultiply(v6, &v125, &v129);
            v59 = *v57;
            if (v59)
            {
              v60 = 24 * v59;
              v61 = v57 + 6;
              do
              {
                v58 = v61 - 16;
                if (*v61 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v118, v58);
                }

                *v61 = -1;
                v61 += 24;
                v60 -= 24;
              }

              while (v60);
            }

            a1 = WTF::fastFree(v57, v58);
            if (v136 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v118, v135);
            }

            v136 = -1;
            if (v134 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v118, v133);
            }

            v44 = v132;
            if (v132)
            {
              goto LABEL_201;
            }

            LOBYTE(v118) = 0;
            v63 = -1;
            v120 = -1;
            if (v131 > 5u)
            {
              if (v131 > 8u)
              {
                if (v131 == 9)
                {
                  v84 = v130;
                  v130 = 0;
                  v118 = v129;
                  v119 = v84;
                  goto LABEL_302;
                }

                if (v131 != 10)
                {
                  LOBYTE(v133[0]) = 0;
LABEL_303:
                  v134 = v63;
                  LOBYTE(v135[0]) = 0;
                  v136 = -1;
                  v85 = *(v4 + 48);
                  if (v85 != 255)
                  {
                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v85, &v114, v135, v4 + 4);
                    v136 = *(v4 + 48);
                  }

                  v86 = WTF::fastMalloc(0x38);
                  *v86 = 2;
                  *(v86 + 8) = 0;
                  *(v86 + 24) = -1;
                  if (v134 != 255)
                  {
                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v134, &v114, v86 + 1, v133);
                    *(v86 + 24) = v134;
                  }

                  *(v86 + 32) = 0;
                  *(v86 + 48) = -1;
                  if (v136 != 255)
                  {
                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v136, &v114, v86 + 4, v135);
                    *(v86 + 48) = v136;
                  }

                  v115 = v86;
                  WGSL::constantMultiply(v6, &v115, &v125);
                  v88 = *v86;
                  if (v88)
                  {
                    v89 = 24 * v88;
                    v90 = v86 + 6;
                    do
                    {
                      v87 = v90 - 16;
                      if (*v90 != 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v114, v87);
                      }

                      *v90 = -1;
                      v90 += 24;
                      v89 -= 24;
                    }

                    while (v89);
                  }

                  a1 = WTF::fastFree(v86, v87);
                  if (v136 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v114, v135);
                  }

                  v136 = -1;
                  if (v134 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v114, v133);
                  }

                  v73 = v128;
                  if (v128)
                  {
                    goto LABEL_319;
                  }

                  LOBYTE(v115) = 0;
                  v117 = -1;
                  v92 = v127;
                  if (v127 > 5u)
                  {
                    if (v127 > 8u)
                    {
                      if (v127 == 9)
                      {
                        v106 = v126;
                        v126 = 0;
                        v115 = v125;
                        v116 = v106;
                        goto LABEL_384;
                      }

                      if (v127 != 10)
                      {
LABEL_385:
                        LOBYTE(v133[0]) = 0;
                        v134 = -1;
                        v107 = *(v4 + 24);
                        if (v107 != 255)
                        {
                          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v107, &v114, v133, v4 + 1);
                          v134 = *(v4 + 24);
                          v92 = v117;
                        }

                        LOBYTE(v135[0]) = 0;
                        v136 = -1;
                        if (v92 != 255)
                        {
                          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v92, &v114, v135, &v115);
                          v136 = v117;
                        }

                        v97 = WTF::fastMalloc(0x38);
                        *v97 = 2;
                        *(v97 + 8) = 0;
                        *(v97 + 24) = -1;
                        if (v134 != 255)
                        {
                          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v134, &v114, v97 + 1, v133);
                          *(v97 + 24) = v134;
                        }

                        *(v97 + 32) = 0;
                        *(v97 + 48) = -1;
                        if (v136 != 255)
                        {
                          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v136, &v114, v97 + 4, v135);
                          *(v97 + 48) = v136;
                        }

                        v114 = v97;
                        WGSL::constantMinus(v6, &v114, a3);
                        v108 = *v97;
                        if (v108)
                        {
                          v109 = 24 * v108;
                          v110 = v97 + 6;
                          do
                          {
                            v98 = v110 - 16;
                            if (*v110 != 255)
                            {
                              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v124, v98);
                            }

                            *v110 = -1;
                            v110 += 24;
                            v109 -= 24;
                          }

                          while (v109);
                        }

                        goto LABEL_398;
                      }
                    }

                    else if (v127 == 6)
                    {
                      LOBYTE(v115) = v125;
                      goto LABEL_384;
                    }

                    v93 = v125;
                    v125 = 0;
                  }

                  else
                  {
                    if (v127 <= 2u)
                    {
                      if (v127)
                      {
                        if (v127 == 1)
                        {
                          LOWORD(v115) = v125;
                        }

                        else
                        {
                          v115 = v125;
                        }
                      }

                      else
                      {
                        LODWORD(v115) = v125;
                      }

                      goto LABEL_384;
                    }

                    if (v127 == 3 || v127 == 4)
                    {
                      LODWORD(v115) = v125;
LABEL_384:
                      v117 = v127;
                      goto LABEL_385;
                    }

                    v93 = v125;
                  }

                  v115 = v93;
                  goto LABEL_384;
                }
              }

              else if (v131 == 6)
              {
                LOBYTE(v118) = v129;
                goto LABEL_302;
              }

              v64 = v129;
              v129 = 0;
            }

            else
            {
              if (v131 <= 2u)
              {
                if (v131)
                {
                  if (v131 == 1)
                  {
                    LOWORD(v118) = v129;
                  }

                  else
                  {
                    v118 = v129;
                  }
                }

                else
                {
                  LODWORD(v118) = v129;
                }

                goto LABEL_302;
              }

              if (v131 == 3 || v131 == 4)
              {
                LODWORD(v118) = v129;
LABEL_302:
                v120 = v131;
                LOBYTE(v133[0]) = 0;
                v134 = -1;
                _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v131, &v114, v133, &v118);
                v63 = v120;
                goto LABEL_303;
              }

              v64 = v129;
            }

            v118 = v64;
            goto LABEL_302;
          }
        }

        else if (v139 == 6)
        {
          LOBYTE(v121) = v137;
          goto LABEL_186;
        }

        v35 = v137;
        v137 = 0;
      }

      else
      {
        if (v139 <= 2u)
        {
          if (v139)
          {
            if (v139 == 1)
            {
              LOWORD(v121) = v137;
            }

            else
            {
              v121 = v137;
            }
          }

          else
          {
            LODWORD(v121) = v137;
          }

          goto LABEL_186;
        }

        if (v139 == 3 || v139 == 4)
        {
          LODWORD(v121) = v137;
LABEL_186:
          v123 = v139;
          LODWORD(v133[0]) = 0x40000000;
          v134 = 0;
          LOBYTE(v135[0]) = 0;
          v136 = -1;
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v139, &v118, v135, &v121);
          v56 = v123;
          goto LABEL_187;
        }

        v35 = v137;
      }

      v121 = v35;
      goto LABEL_186;
    }

LABEL_433:
    __break(0xC471u);
    JUMPOUT(0x22584BDF4);
  }

  LOBYTE(v133[0]) = 0;
  v134 = -1;
  v9 = *(v4 + 48);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, &v137, v133, v4 + 4);
    v134 = *(v4 + 48);
  }

  LOBYTE(v135[0]) = 0;
  v136 = -1;
  v10 = *(v4 + 24);
  if (v10 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v10, &v137, v135, v4 + 1);
    v136 = *(v4 + 24);
  }

  v11 = WTF::fastMalloc(0x38);
  *v11 = 2;
  *(v11 + 8) = 0;
  *(v11 + 24) = -1;
  if (v134 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v134, &v137, v11 + 1, v133);
    *(v11 + 24) = v134;
  }

  *(v11 + 32) = 0;
  *(v11 + 48) = -1;
  if (v136 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v136, &v137, v11 + 4, v135);
    *(v11 + 48) = v136;
  }

  v129 = v11;
  WGSL::constantDot(v7, &v137);
  v13 = *v11;
  if (v13)
  {
    v14 = 24 * v13;
    v15 = v11 + 6;
    do
    {
      v12 = v15 - 16;
      if (*v15 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v125, v12);
      }

      *v15 = -1;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
  }

  a1 = WTF::fastFree(v11, v12);
  if (v136 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v125, v135);
  }

  v136 = -1;
  if (v134 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v125, v133);
  }

  v17 = v140;
  if (!v140)
  {
    LOBYTE(v121) = 0;
    v123 = -1;
    if (v139 > 5u)
    {
      if (v139 > 8u)
      {
        if (v139 == 9)
        {
          v36 = v138;
          v138 = 0;
          v121 = v137;
          v122 = v36;
          goto LABEL_117;
        }

        if (v139 != 10)
        {
          LOWORD(v133[0]) = COERCE_UNSIGNED_INT(2.0);
          v134 = 1;
          LOBYTE(v135[0]) = 0;
          v38 = -1;
LABEL_118:
          v136 = v38;
          v39 = WTF::fastMalloc(0x38);
          *v39 = 2;
          *(v39 + 8) = 0;
          *(v39 + 24) = -1;
          if (v134 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v134, &v118, v39 + 1, v133);
            *(v39 + 24) = v134;
          }

          *(v39 + 32) = 0;
          *(v39 + 48) = -1;
          if (v136 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v136, &v118, v39 + 4, v135);
            *(v39 + 48) = v136;
          }

          v125 = v39;
          WGSL::constantMultiply(v6, &v125, &v129);
          v41 = *v39;
          if (v41)
          {
            v42 = 24 * v41;
            v43 = v39 + 6;
            do
            {
              v40 = v43 - 16;
              if (*v43 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v118, v40);
              }

              *v43 = -1;
              v43 += 24;
              v42 -= 24;
            }

            while (v42);
          }

          a1 = WTF::fastFree(v39, v40);
          if (v136 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v118, v135);
          }

          v136 = -1;
          if (v134 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v118, v133);
          }

          v44 = v132;
          if (!v132)
          {
            LOBYTE(v118) = 0;
            v45 = -1;
            v120 = -1;
            if (v131 > 5u)
            {
              if (v131 > 8u)
              {
                if (v131 == 9)
                {
                  v65 = v130;
                  v130 = 0;
                  v118 = v129;
                  v119 = v65;
                  goto LABEL_229;
                }

                if (v131 != 10)
                {
                  LOBYTE(v133[0]) = 0;
LABEL_230:
                  v134 = v45;
                  LOBYTE(v135[0]) = 0;
                  v136 = -1;
                  v67 = *(v4 + 48);
                  if (v67 != 255)
                  {
                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v67, &v114, v135, v4 + 4);
                    v136 = *(v4 + 48);
                  }

                  v68 = WTF::fastMalloc(0x38);
                  *v68 = 2;
                  *(v68 + 8) = 0;
                  *(v68 + 24) = -1;
                  if (v134 != 255)
                  {
                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v134, &v114, v68 + 1, v133);
                    *(v68 + 24) = v134;
                  }

                  *(v68 + 32) = 0;
                  *(v68 + 48) = -1;
                  if (v136 != 255)
                  {
                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v136, &v114, v68 + 4, v135);
                    *(v68 + 48) = v136;
                  }

                  v115 = v68;
                  WGSL::constantMultiply(v6, &v115, &v125);
                  v70 = *v68;
                  if (v70)
                  {
                    v71 = 24 * v70;
                    v72 = v68 + 6;
                    do
                    {
                      v69 = v72 - 16;
                      if (*v72 != 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v114, v69);
                      }

                      *v72 = -1;
                      v72 += 24;
                      v71 -= 24;
                    }

                    while (v71);
                  }

                  a1 = WTF::fastFree(v68, v69);
                  if (v136 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v114, v135);
                  }

                  v136 = -1;
                  if (v134 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v114, v133);
                  }

                  v73 = v128;
                  if (!v128)
                  {
                    LOBYTE(v115) = 0;
                    v117 = -1;
                    v74 = v127;
                    if (v127 > 5u)
                    {
                      if (v127 > 8u)
                      {
                        if (v127 == 9)
                        {
                          v94 = v126;
                          v126 = 0;
                          v115 = v125;
                          v116 = v94;
                          goto LABEL_347;
                        }

                        if (v127 != 10)
                        {
LABEL_348:
                          LOBYTE(v133[0]) = 0;
                          v134 = -1;
                          v96 = *(v4 + 24);
                          if (v96 != 255)
                          {
                            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v96, &v114, v133, v4 + 1);
                            v134 = *(v4 + 24);
                            v74 = v117;
                          }

                          LOBYTE(v135[0]) = 0;
                          v136 = -1;
                          if (v74 != 255)
                          {
                            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v74, &v114, v135, &v115);
                            v136 = v117;
                          }

                          v97 = WTF::fastMalloc(0x38);
                          *v97 = 2;
                          *(v97 + 8) = 0;
                          *(v97 + 24) = -1;
                          if (v134 != 255)
                          {
                            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v134, &v114, v97 + 1, v133);
                            *(v97 + 24) = v134;
                          }

                          *(v97 + 32) = 0;
                          *(v97 + 48) = -1;
                          if (v136 != 255)
                          {
                            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v136, &v114, v97 + 4, v135);
                            *(v97 + 48) = v136;
                          }

                          v114 = v97;
                          WGSL::constantMinus(v6, &v114, a3);
                          v99 = *v97;
                          if (v99)
                          {
                            v100 = 24 * v99;
                            v101 = v97 + 6;
                            do
                            {
                              v98 = v101 - 16;
                              if (*v101 != 255)
                              {
                                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v124, v98);
                              }

                              *v101 = -1;
                              v101 += 24;
                              v100 -= 24;
                            }

                            while (v100);
                          }

LABEL_398:
                          WTF::fastFree(v97, v98);
                          if (v136 != 255)
                          {
                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v124, v135);
                          }

                          v136 = -1;
                          if (v134 != 255)
                          {
                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v124, v133);
                          }

                          if (v117 != 255)
                          {
                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v133, &v115);
                          }

LABEL_404:
                          if (v128 != 255)
                          {
                            if (v128)
                            {
                              v111 = v125;
                              v125 = 0;
                              if (v111 && atomic_fetch_add_explicit(v111, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v111, v16);
                              }
                            }

                            else if (v127 != 255)
                            {
                              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v133, &v125);
                            }
                          }

                          if (v120 != 255)
                          {
                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v133, &v118);
                          }

LABEL_413:
                          if (v132 != 255)
                          {
                            if (v132)
                            {
                              v112 = v129;
                              v129 = 0;
                              if (v112 && atomic_fetch_add_explicit(v112, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v112, v16);
                              }
                            }

                            else if (v131 != 255)
                            {
                              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v133, &v129);
                            }
                          }

                          if (v123 != 255)
                          {
                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v133, &v121);
                          }

                          goto LABEL_422;
                        }
                      }

                      else if (v127 == 6)
                      {
                        LOBYTE(v115) = v125;
                        goto LABEL_347;
                      }

                      v75 = v125;
                      v125 = 0;
                    }

                    else
                    {
                      if (v127 <= 2u)
                      {
                        if (v127)
                        {
                          if (v127 == 1)
                          {
                            LOWORD(v115) = v125;
                          }

                          else
                          {
                            v115 = v125;
                          }
                        }

                        else
                        {
                          LODWORD(v115) = v125;
                        }

                        goto LABEL_347;
                      }

                      if (v127 == 3 || v127 == 4)
                      {
                        LODWORD(v115) = v125;
LABEL_347:
                        v117 = v127;
                        goto LABEL_348;
                      }

                      v75 = v125;
                    }

                    v115 = v75;
                    goto LABEL_347;
                  }

                  goto LABEL_319;
                }
              }

              else if (v131 == 6)
              {
                LOBYTE(v118) = v129;
                goto LABEL_229;
              }

              v46 = v129;
              v129 = 0;
            }

            else
            {
              if (v131 <= 2u)
              {
                if (v131)
                {
                  if (v131 == 1)
                  {
                    LOWORD(v118) = v129;
                  }

                  else
                  {
                    v118 = v129;
                  }
                }

                else
                {
                  LODWORD(v118) = v129;
                }

                goto LABEL_229;
              }

              if (v131 == 3 || v131 == 4)
              {
                LODWORD(v118) = v129;
LABEL_229:
                v120 = v131;
                LOBYTE(v133[0]) = 0;
                v134 = -1;
                _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v131, &v114, v133, &v118);
                v45 = v120;
                goto LABEL_230;
              }

              v46 = v129;
            }

            v118 = v46;
            goto LABEL_229;
          }

LABEL_201:
          if (v44 == 1)
          {
            v62 = v129;
            if (v129)
            {
              atomic_fetch_add_explicit(v129, 2u, memory_order_relaxed);
            }

            *a3 = v62;
            *(a3 + 24) = 1;
            goto LABEL_413;
          }

          goto LABEL_430;
        }
      }

      else if (v139 == 6)
      {
        LOBYTE(v121) = v137;
        goto LABEL_117;
      }

      v33 = v137;
      v137 = 0;
    }

    else
    {
      if (v139 <= 2u)
      {
        if (v139)
        {
          if (v139 == 1)
          {
            LOWORD(v121) = v137;
          }

          else
          {
            v121 = v137;
          }
        }

        else
        {
          LODWORD(v121) = v137;
        }

        goto LABEL_117;
      }

      if (v139 == 3 || v139 == 4)
      {
        LODWORD(v121) = v137;
LABEL_117:
        v123 = v139;
        LOWORD(v133[0]) = COERCE_UNSIGNED_INT(2.0);
        v134 = 1;
        LOBYTE(v135[0]) = 0;
        v136 = -1;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v139, &v118, v135, &v121);
        v38 = v123;
        goto LABEL_118;
      }

      v33 = v137;
    }

    v121 = v33;
    goto LABEL_117;
  }

LABEL_72:
  if (v17 != 1)
  {
    goto LABEL_430;
  }

  v32 = v137;
  if (v137)
  {
    atomic_fetch_add_explicit(v137, 2u, memory_order_relaxed);
  }

  *a3 = v32;
  *(a3 + 24) = 1;
LABEL_422:
  if (v140 != 255)
  {
    if (v140)
    {
      v113 = v137;
      v137 = 0;
      if (v113 && atomic_fetch_add_explicit(v113, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v113, v16);
      }
    }

    else if (v139 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v133, &v137);
    }
  }
}

void WGSL::constantRefract(const WGSL::Type **a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  v266 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = **a2;
  if (!v5)
  {
    goto LABEL_803;
  }

  if (v5 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22584F120);
  }

  if (v5 <= 2)
  {
    __break(0xC471u);
    JUMPOUT(0x22584F140);
  }

  v6 = a1;
  v7 = *(v4 + 72);
  if (v7 == 2)
  {
    if (*(a1 + 48) != 1)
    {
      goto LABEL_799;
    }

    v17 = *(v4 + 7);
    v18 = *a1;
    LOBYTE(v258[0]) = 0;
    v259 = -1;
    v19 = *(v4 + 48);
    if (v19 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v19, &v262, v258, v4 + 4);
      v259 = *(v4 + 48);
    }

    LOBYTE(v260[0]) = 0;
    v261 = -1;
    v20 = *(v4 + 24);
    if (v20 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v20, &v262, v260, v4 + 1);
      v261 = *(v4 + 24);
    }

    v21 = WTF::fastMalloc(0x38);
    *v21 = 2;
    *(v21 + 8) = 0;
    *(v21 + 24) = -1;
    if (v259 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, &v262, v21 + 1, v258);
      *(v21 + 24) = v259;
    }

    *(v21 + 32) = 0;
    *(v21 + 48) = -1;
    if (v261 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, &v262, v21 + 4, v260);
      *(v21 + 48) = v261;
    }

    v254 = v21;
    WGSL::constantDot(v18, &v262);
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
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v250, v22);
        }

        *v25 = -1;
        v25 += 24;
        v24 -= 24;
      }

      while (v24);
    }

    a1 = WTF::fastFree(v21, v22);
    if (v261 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v250, v260);
    }

    v261 = -1;
    if (v259 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v250, v258);
    }

    v36 = v265;
    if (v265)
    {
      goto LABEL_74;
    }

    LOBYTE(v223) = 0;
    v38 = -1;
    v225 = -1;
    if (v264 > 5u)
    {
      if (v264 > 8u)
      {
        if (v264 == 9)
        {
          v45 = v263;
          v263 = 0;
          v223 = v262;
          v224 = v45;
          goto LABEL_152;
        }

        if (v264 != 10)
        {
          LOBYTE(v258[0]) = 0;
LABEL_153:
          v259 = v38;
          v260[0] = 0x4000000000000000;
          v261 = 2;
          v53 = WTF::fastMalloc(0x38);
          *v53 = 2;
          *(v53 + 8) = 0;
          *(v53 + 24) = -1;
          if (v259 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, &v246, v53 + 1, v258);
            *(v53 + 24) = v259;
          }

          *(v53 + 32) = 0;
          *(v53 + 48) = -1;
          if (v261 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, &v246, v53 + 4, v260);
            *(v53 + 48) = v261;
          }

          v250 = v53;
          WGSL::constantPow(&v250, &v254);
          v55 = *v53;
          if (v55)
          {
            v56 = 24 * v55;
            v57 = v53 + 6;
            do
            {
              v54 = v57 - 16;
              if (*v57 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, v54);
              }

              *v57 = -1;
              v57 += 24;
              v56 -= 24;
            }

            while (v56);
          }

          a1 = WTF::fastFree(v53, v54);
          if (v261 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, v260);
          }

          v261 = -1;
          if (v259 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, v258);
          }

          v51 = v257;
          if (v257)
          {
            goto LABEL_203;
          }

          LOBYTE(v220) = 0;
          v222 = -1;
          if (v256 > 5u)
          {
            if (v256 > 8u)
            {
              if (v256 == 9)
              {
                v68 = v255;
                v255 = 0;
                v220 = v254;
                v221 = v68;
                goto LABEL_265;
              }

              if (v256 != 10)
              {
                v258[0] = 0x3FF0000000000000;
                v259 = 2;
                LOBYTE(v260[0]) = 0;
                v78 = -1;
LABEL_266:
                v261 = v78;
                v79 = WTF::fastMalloc(0x38);
                *v79 = 2;
                *(v79 + 8) = 0;
                *(v79 + 24) = -1;
                if (v259 != 255)
                {
                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, &v242, v79 + 1, v258);
                  *(v79 + 24) = v259;
                }

                *(v79 + 32) = 0;
                *(v79 + 48) = -1;
                if (v261 != 255)
                {
                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, &v242, v79 + 4, v260);
                  *(v79 + 48) = v261;
                }

                v246 = v79;
                WGSL::constantMinus(v18, &v246, &v250);
                v81 = *v79;
                if (v81)
                {
                  v82 = 24 * v81;
                  v83 = v79 + 6;
                  do
                  {
                    v80 = v83 - 16;
                    if (*v83 != 255)
                    {
                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v242, v80);
                    }

                    *v83 = -1;
                    v83 += 24;
                    v82 -= 24;
                  }

                  while (v82);
                }

                a1 = WTF::fastFree(v79, v80);
                if (v261 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v242, v260);
                }

                v261 = -1;
                if (v259 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v242, v258);
                }

                v75 = v253;
                if (v253)
                {
                  goto LABEL_316;
                }

                LOBYTE(v217) = 0;
                v219 = -1;
                v76 = v252;
                if (v252 > 5u)
                {
                  if (v252 > 8u)
                  {
                    if (v252 == 9)
                    {
                      v95 = v251;
                      v251 = 0;
                      v217 = v250;
                      v218 = v95;
                      goto LABEL_377;
                    }

                    if (v252 != 10)
                    {
                      goto LABEL_378;
                    }
                  }

                  else if (v252 == 6)
                  {
                    LOBYTE(v217) = v250;
                    goto LABEL_377;
                  }

                  v84 = v250;
                  v250 = 0;
                }

                else
                {
                  if (v252 <= 2u)
                  {
                    if (v252)
                    {
                      if (v252 == 1)
                      {
                        LOWORD(v217) = v250;
                      }

                      else
                      {
                        v217 = v250;
                      }
                    }

                    else
                    {
                      LODWORD(v217) = v250;
                    }

                    goto LABEL_377;
                  }

                  if (v252 == 3 || v252 == 4)
                  {
                    LODWORD(v217) = v250;
LABEL_377:
                    v219 = v252;
LABEL_378:
                    v258[0] = v17;
                    v259 = 2;
                    v260[0] = 0x4000000000000000;
                    v261 = 2;
                    v104 = WTF::fastMalloc(0x38);
                    *v104 = 2;
                    *(v104 + 8) = 0;
                    *(v104 + 24) = -1;
                    if (v259 != 255)
                    {
                      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, &v246, v104 + 1, v258);
                      *(v104 + 24) = v259;
                    }

                    *(v104 + 32) = 0;
                    *(v104 + 48) = -1;
                    if (v261 != 255)
                    {
                      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, &v246, v104 + 4, v260);
                      *(v104 + 48) = v261;
                    }

                    v242 = v104;
                    WGSL::constantPow(&v242, &v246);
                    v106 = *v104;
                    if (v106)
                    {
                      v107 = 24 * v106;
                      v108 = v104 + 6;
                      do
                      {
                        v105 = v108 - 16;
                        if (*v108 != 255)
                        {
                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v239, v105);
                        }

                        *v108 = -1;
                        v108 += 24;
                        v107 -= 24;
                      }

                      while (v107);
                    }

                    a1 = WTF::fastFree(v104, v105);
                    if (v261 != 255)
                    {
                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v239, v260);
                    }

                    v261 = -1;
                    if (v259 != 255)
                    {
                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v239, v258);
                    }

                    v101 = v249;
                    if (v249)
                    {
                      goto LABEL_427;
                    }

                    LOBYTE(v214) = 0;
                    v109 = -1;
                    v216 = -1;
                    v200 = v248;
                    if (v248 > 5u)
                    {
                      if (v248 > 8u)
                      {
                        if (v248 == 9)
                        {
                          v121 = v247;
                          v247 = 0;
                          v214 = v246;
                          v215 = v121;
                          goto LABEL_490;
                        }

                        if (v248 != 10)
                        {
                          LOBYTE(v258[0]) = 0;
LABEL_491:
                          v259 = v109;
                          LOBYTE(v260[0]) = 0;
                          v261 = -1;
                          if (v219 != 255)
                          {
                            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v219, v237, v260, &v217);
                            v261 = v219;
                          }

                          v129 = WTF::fastMalloc(0x38);
                          *v129 = 2;
                          *(v129 + 8) = 0;
                          *(v129 + 24) = -1;
                          if (v259 != 255)
                          {
                            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, v237, v129 + 1, v258);
                            *(v129 + 24) = v259;
                          }

                          *(v129 + 32) = 0;
                          *(v129 + 48) = -1;
                          if (v261 != 255)
                          {
                            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, v237, v129 + 4, v260);
                            *(v129 + 48) = v261;
                          }

                          v239[0] = v129;
                          WGSL::constantMultiply(v18, v239, &v242);
                          v131 = *v129;
                          if (v131)
                          {
                            v132 = 24 * v131;
                            v133 = v129 + 6;
                            do
                            {
                              v130 = v133 - 16;
                              if (*v133 != 255)
                              {
                                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v237, v130);
                              }

                              *v133 = -1;
                              v133 += 24;
                              v132 -= 24;
                            }

                            while (v132);
                          }

                          a1 = WTF::fastFree(v129, v130);
                          if (v261 != 255)
                          {
                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v237, v260);
                          }

                          v261 = -1;
                          if (v259 != 255)
                          {
                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v237, v258);
                          }

                          v127 = v245;
                          if (v245)
                          {
                            goto LABEL_545;
                          }

                          LOBYTE(v211) = 0;
                          v213 = -1;
                          if (v244 > 5u)
                          {
                            if (v244 > 8u)
                            {
                              if (v244 == 9)
                              {
                                v144 = v243;
                                v243 = 0;
                                v211 = v242;
                                v212 = v144;
                                goto LABEL_613;
                              }

                              if (v244 != 10)
                              {
                                v258[0] = 0x3FF0000000000000;
                                v259 = 2;
                                LOBYTE(v260[0]) = 0;
                                v164 = -1;
LABEL_614:
                                v261 = v164;
                                v165 = WTF::fastMalloc(0x38);
                                *v165 = 2;
                                *(v165 + 8) = 0;
                                *(v165 + 24) = -1;
                                if (v259 != 255)
                                {
                                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, v235, v165 + 1, v258);
                                  *(v165 + 24) = v259;
                                }

                                *(v165 + 32) = 0;
                                *(v165 + 48) = -1;
                                if (v261 != 255)
                                {
                                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, v235, v165 + 4, v260);
                                  *(v165 + 48) = v261;
                                }

                                v237[0] = v165;
                                WGSL::constantMinus(v18, v237, v239);
                                v167 = *v165;
                                if (v167)
                                {
                                  v168 = 24 * v167;
                                  v169 = v165 + 6;
                                  do
                                  {
                                    v166 = v169 - 16;
                                    if (*v169 != 255)
                                    {
                                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v235, v166);
                                    }

                                    *v169 = -1;
                                    v169 += 24;
                                    v168 -= 24;
                                  }

                                  while (v168);
                                }

                                a1 = WTF::fastFree(v165, v166);
                                if (v261 != 255)
                                {
                                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v235, v260);
                                }

                                v261 = -1;
                                if (v259 != 255)
                                {
                                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v235, v258);
                                }

                                v151 = v241;
                                if (!v241)
                                {
                                  mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v210, v239);
                                  mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v258, v210);
                                  v260[0] = 0;
                                  v261 = 2;
                                  WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(v235, v258, 2);
                                  WGSL::constantLt(v235, v237);
                                  a1 = WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(v235, v170);
                                  if (v261 != 255)
                                  {
                                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v233, v260);
                                  }

                                  v261 = -1;
                                  if (v259 != 255)
                                  {
                                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v233, v258);
                                  }

                                  v154 = v238;
                                  if (!v238)
                                  {
                                    a1 = mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v208, v237);
                                    if (v209 != 6)
                                    {
                                      goto LABEL_799;
                                    }

                                    if (v208[0] != 1)
                                    {
                                      v258[0] = v17;
                                      v259 = 2;
                                      mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v260, &v223);
                                      WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(v233, v258, 2);
                                      WGSL::constantMultiply(v18, v233, v235);
                                      a1 = WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(v233, v171);
                                      if (v261 != 255)
                                      {
                                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v231, v260);
                                      }

                                      v261 = -1;
                                      if (v259 != 255)
                                      {
                                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v231, v258);
                                      }

                                      v157 = v236;
                                      if (!v236)
                                      {
                                        mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v207, v235);
                                        mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v258, v210);
                                        WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(v231, v258, 1);
                                        WGSL::constantSqrt(v231, v233);
                                        a1 = WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(v231, v172);
                                        if (v259 != 255)
                                        {
                                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v229, v258);
                                        }

                                        v160 = v234;
                                        if (!v234)
                                        {
                                          mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v206, v233);
                                          mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v258, v207);
                                          mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v260, v206);
                                          WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(v229, v258, 2);
                                          WGSL::constantAdd(v18, v229, v231);
                                          a1 = WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(v229, v173);
                                          if (v261 != 255)
                                          {
                                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v227, v260);
                                          }

                                          v261 = -1;
                                          if (v259 != 255)
                                          {
                                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v227, v258);
                                          }

                                          v163 = v232;
                                          if (!v232)
                                          {
                                            mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v205, v231);
                                            v258[0] = v17;
                                            v259 = 2;
                                            goto LABEL_715;
                                          }

LABEL_710:
                                          if (v163 == 1)
                                          {
                                            v189 = v231[0];
                                            if (v231[0])
                                            {
                                              atomic_fetch_add_explicit(v231[0], 2u, memory_order_relaxed);
                                            }

                                            *a3 = v189;
                                            *(a3 + 24) = 1;
                                            goto LABEL_743;
                                          }

                                          goto LABEL_799;
                                        }

LABEL_701:
                                        if (v160 == 1)
                                        {
                                          v187 = v233[0];
                                          if (v233[0])
                                          {
                                            atomic_fetch_add_explicit(v233[0], 2u, memory_order_relaxed);
                                          }

                                          *a3 = v187;
                                          *(a3 + 24) = 1;
                                          goto LABEL_745;
                                        }

                                        goto LABEL_799;
                                      }

LABEL_693:
                                      if (v157 == 1)
                                      {
                                        v185 = v235[0];
                                        if (v235[0])
                                        {
                                          atomic_fetch_add_explicit(v235[0], 2u, memory_order_relaxed);
                                        }

                                        *a3 = v185;
                                        *(a3 + 24) = 1;
                                        goto LABEL_747;
                                      }

                                      goto LABEL_799;
                                    }

LABEL_686:
                                    WGSL::zeroValue(v258, v6);
                                    mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(a3, v258);
                                    *(a3 + 24) = 0;
                                    if (v259 != 255)
                                    {
                                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v235, v258);
                                    }

                                    goto LABEL_748;
                                  }

LABEL_680:
                                  if (v154 == 1)
                                  {
                                    v183 = v237[0];
                                    if (v237[0])
                                    {
                                      atomic_fetch_add_explicit(v237[0], 2u, memory_order_relaxed);
                                    }

                                    *a3 = v183;
                                    *(a3 + 24) = 1;
                                    goto LABEL_750;
                                  }

                                  goto LABEL_799;
                                }

LABEL_671:
                                if (v151 == 1)
                                {
                                  v181 = v239[0];
                                  if (v239[0])
                                  {
                                    atomic_fetch_add_explicit(v239[0], 2u, memory_order_relaxed);
                                  }

                                  *a3 = v181;
                                  *(a3 + 24) = 1;
                                  goto LABEL_752;
                                }

                                goto LABEL_799;
                              }
                            }

                            else if (v244 == 6)
                            {
                              LOBYTE(v211) = v242;
                              goto LABEL_613;
                            }

                            v134 = v242;
                            v242 = 0;
                          }

                          else
                          {
                            if (v244 <= 2u)
                            {
                              if (v244)
                              {
                                if (v244 == 1)
                                {
                                  LOWORD(v211) = v242;
                                }

                                else
                                {
                                  v211 = v242;
                                }
                              }

                              else
                              {
                                LODWORD(v211) = v242;
                              }

                              goto LABEL_613;
                            }

                            if (v244 == 3 || v244 == 4)
                            {
                              LODWORD(v211) = v242;
LABEL_613:
                              v213 = v244;
                              v258[0] = 0x3FF0000000000000;
                              v259 = 2;
                              LOBYTE(v260[0]) = 0;
                              v261 = -1;
                              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v244, v235, v260, &v211);
                              v164 = v213;
                              goto LABEL_614;
                            }

                            v134 = v242;
                          }

                          v211 = v134;
                          goto LABEL_613;
                        }
                      }

                      else if (v248 == 6)
                      {
                        LOBYTE(v214) = v246;
                        goto LABEL_490;
                      }

                      v110 = v246;
                      v246 = 0;
                    }

                    else
                    {
                      if (v248 <= 2u)
                      {
                        if (v248)
                        {
                          if (v248 == 1)
                          {
                            LOWORD(v214) = v246;
                          }

                          else
                          {
                            v214 = v246;
                          }
                        }

                        else
                        {
                          LODWORD(v214) = v246;
                        }

                        goto LABEL_490;
                      }

                      if (v248 == 3 || v248 == 4)
                      {
                        LODWORD(v214) = v246;
LABEL_490:
                        v216 = v248;
                        LOBYTE(v258[0]) = 0;
                        v259 = -1;
                        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v248, v237, v258, &v214);
                        v109 = v216;
                        goto LABEL_491;
                      }

                      v110 = v246;
                    }

                    v214 = v110;
                    goto LABEL_490;
                  }

                  v84 = v250;
                }

                v217 = v84;
                goto LABEL_377;
              }
            }

            else if (v256 == 6)
            {
              LOBYTE(v220) = v254;
              goto LABEL_265;
            }

            v58 = v254;
            v254 = 0;
          }

          else
          {
            if (v256 <= 2u)
            {
              if (v256)
              {
                if (v256 == 1)
                {
                  LOWORD(v220) = v254;
                }

                else
                {
                  v220 = v254;
                }
              }

              else
              {
                LODWORD(v220) = v254;
              }

              goto LABEL_265;
            }

            if (v256 == 3 || v256 == 4)
            {
              LODWORD(v220) = v254;
LABEL_265:
              v222 = v256;
              v258[0] = 0x3FF0000000000000;
              v259 = 2;
              LOBYTE(v260[0]) = 0;
              v261 = -1;
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v256, &v242, v260, &v220);
              v78 = v222;
              goto LABEL_266;
            }

            v58 = v254;
          }

          v220 = v58;
          goto LABEL_265;
        }
      }

      else if (v264 == 6)
      {
        LOBYTE(v223) = v262;
        goto LABEL_152;
      }

      v42 = v262;
      v262 = 0;
    }

    else
    {
      if (v264 <= 2u)
      {
        if (v264)
        {
          if (v264 == 1)
          {
            LOWORD(v223) = v262;
          }

          else
          {
            v223 = v262;
          }
        }

        else
        {
          LODWORD(v223) = v262;
        }

        goto LABEL_152;
      }

      if (v264 == 3 || v264 == 4)
      {
        LODWORD(v223) = v262;
LABEL_152:
        v225 = v264;
        LOBYTE(v258[0]) = 0;
        v259 = -1;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v264, &v246, v258, &v223);
        v38 = v225;
        goto LABEL_153;
      }

      v42 = v262;
    }

    v223 = v42;
    goto LABEL_152;
  }

  if (v7 != 1)
  {
    if (!*(v4 + 72))
    {
      if (*(a1 + 48) != 1)
      {
        goto LABEL_799;
      }

      v26 = v4[14];
      v27 = *a1;
      LOBYTE(v258[0]) = 0;
      v259 = -1;
      v28 = *(v4 + 48);
      if (v28 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v28, &v262, v258, v4 + 4);
        v259 = *(v4 + 48);
      }

      LOBYTE(v260[0]) = 0;
      v261 = -1;
      v29 = *(v4 + 24);
      if (v29 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v29, &v262, v260, v4 + 1);
        v261 = *(v4 + 24);
      }

      v30 = WTF::fastMalloc(0x38);
      *v30 = 2;
      *(v30 + 8) = 0;
      *(v30 + 24) = -1;
      if (v259 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, &v262, v30 + 1, v258);
        *(v30 + 24) = v259;
      }

      *(v30 + 32) = 0;
      *(v30 + 48) = -1;
      if (v261 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, &v262, v30 + 4, v260);
        *(v30 + 48) = v261;
      }

      v254 = v30;
      WGSL::constantDot(v27, &v262);
      v32 = *v30;
      if (v32)
      {
        v33 = 24 * v32;
        v34 = v30 + 6;
        do
        {
          v31 = v34 - 16;
          if (*v34 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v250, v31);
          }

          *v34 = -1;
          v34 += 24;
          v33 -= 24;
        }

        while (v33);
      }

      a1 = WTF::fastFree(v30, v31);
      if (v261 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v250, v260);
      }

      v261 = -1;
      if (v259 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v250, v258);
      }

      v36 = v265;
      if (v265)
      {
        goto LABEL_74;
      }

      LOBYTE(v223) = 0;
      v40 = -1;
      v225 = -1;
      if (v264 > 5u)
      {
        if (v264 > 8u)
        {
          if (v264 == 9)
          {
            v59 = v263;
            v263 = 0;
            v223 = v262;
            v224 = v59;
            goto LABEL_188;
          }

          if (v264 != 10)
          {
            LOBYTE(v258[0]) = 0;
LABEL_189:
            v259 = v40;
            LODWORD(v260[0]) = 0x40000000;
            v261 = 0;
            v60 = WTF::fastMalloc(0x38);
            *v60 = 2;
            *(v60 + 8) = 0;
            *(v60 + 24) = -1;
            if (v259 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, &v246, v60 + 1, v258);
              *(v60 + 24) = v259;
            }

            *(v60 + 32) = 0;
            *(v60 + 48) = -1;
            if (v261 != 255)
            {
              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, &v246, v60 + 4, v260);
              *(v60 + 48) = v261;
            }

            v250 = v60;
            WGSL::constantPow(&v250, &v254);
            v62 = *v60;
            if (v62)
            {
              v63 = 24 * v62;
              v64 = v60 + 6;
              do
              {
                v61 = v64 - 16;
                if (*v64 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, v61);
                }

                *v64 = -1;
                v64 += 24;
                v63 -= 24;
              }

              while (v63);
            }

            a1 = WTF::fastFree(v60, v61);
            if (v261 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, v260);
            }

            v261 = -1;
            if (v259 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, v258);
            }

            v51 = v257;
            if (v257)
            {
              goto LABEL_203;
            }

            LOBYTE(v220) = 0;
            v222 = -1;
            if (v256 > 5u)
            {
              if (v256 > 8u)
              {
                if (v256 == 9)
                {
                  v85 = v255;
                  v255 = 0;
                  v220 = v254;
                  v221 = v85;
                  goto LABEL_301;
                }

                if (v256 != 10)
                {
                  LODWORD(v258[0]) = 1065353216;
                  v259 = 0;
                  LOBYTE(v260[0]) = 0;
                  v86 = -1;
LABEL_302:
                  v261 = v86;
                  v87 = WTF::fastMalloc(0x38);
                  *v87 = 2;
                  *(v87 + 8) = 0;
                  *(v87 + 24) = -1;
                  if (v259 != 255)
                  {
                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, &v242, v87 + 1, v258);
                    *(v87 + 24) = v259;
                  }

                  *(v87 + 32) = 0;
                  *(v87 + 48) = -1;
                  if (v261 != 255)
                  {
                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, &v242, v87 + 4, v260);
                    *(v87 + 48) = v261;
                  }

                  v246 = v87;
                  WGSL::constantMinus(v27, &v246, &v250);
                  v89 = *v87;
                  if (v89)
                  {
                    v90 = 24 * v89;
                    v91 = v87 + 6;
                    do
                    {
                      v88 = v91 - 16;
                      if (*v91 != 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v242, v88);
                      }

                      *v91 = -1;
                      v91 += 24;
                      v90 -= 24;
                    }

                    while (v90);
                  }

                  a1 = WTF::fastFree(v87, v88);
                  if (v261 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v242, v260);
                  }

                  v261 = -1;
                  if (v259 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v242, v258);
                  }

                  v75 = v253;
                  if (v253)
                  {
                    goto LABEL_316;
                  }

                  LOBYTE(v217) = 0;
                  v219 = -1;
                  v76 = v252;
                  if (v252 > 5u)
                  {
                    if (v252 > 8u)
                    {
                      if (v252 == 9)
                      {
                        v111 = v251;
                        v251 = 0;
                        v217 = v250;
                        v218 = v111;
                        goto LABEL_412;
                      }

                      if (v252 != 10)
                      {
                        goto LABEL_413;
                      }
                    }

                    else if (v252 == 6)
                    {
                      LOBYTE(v217) = v250;
                      goto LABEL_412;
                    }

                    v93 = v250;
                    v250 = 0;
                  }

                  else
                  {
                    if (v252 <= 2u)
                    {
                      if (v252)
                      {
                        if (v252 == 1)
                        {
                          LOWORD(v217) = v250;
                        }

                        else
                        {
                          v217 = v250;
                        }
                      }

                      else
                      {
                        LODWORD(v217) = v250;
                      }

                      goto LABEL_412;
                    }

                    if (v252 == 3 || v252 == 4)
                    {
                      LODWORD(v217) = v250;
LABEL_412:
                      v219 = v252;
LABEL_413:
                      LODWORD(v258[0]) = v26;
                      v259 = 0;
                      LODWORD(v260[0]) = 0x40000000;
                      v261 = 0;
                      v112 = WTF::fastMalloc(0x38);
                      *v112 = 2;
                      *(v112 + 8) = 0;
                      *(v112 + 24) = -1;
                      if (v259 != 255)
                      {
                        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, &v246, v112 + 1, v258);
                        *(v112 + 24) = v259;
                      }

                      *(v112 + 32) = 0;
                      *(v112 + 48) = -1;
                      if (v261 != 255)
                      {
                        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, &v246, v112 + 4, v260);
                        *(v112 + 48) = v261;
                      }

                      v242 = v112;
                      WGSL::constantPow(&v242, &v246);
                      v114 = *v112;
                      if (v114)
                      {
                        v115 = 24 * v114;
                        v116 = v112 + 6;
                        do
                        {
                          v113 = v116 - 16;
                          if (*v116 != 255)
                          {
                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v239, v113);
                          }

                          *v116 = -1;
                          v116 += 24;
                          v115 -= 24;
                        }

                        while (v115);
                      }

                      a1 = WTF::fastFree(v112, v113);
                      if (v261 != 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v239, v260);
                      }

                      v261 = -1;
                      if (v259 != 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v239, v258);
                      }

                      v101 = v249;
                      if (v249)
                      {
                        goto LABEL_427;
                      }

                      LOBYTE(v214) = 0;
                      v118 = -1;
                      v216 = -1;
                      v200 = v248;
                      if (v248 > 5u)
                      {
                        if (v248 > 8u)
                        {
                          if (v248 == 9)
                          {
                            v135 = v247;
                            v247 = 0;
                            v214 = v246;
                            v215 = v135;
                            goto LABEL_528;
                          }

                          if (v248 != 10)
                          {
                            LOBYTE(v258[0]) = 0;
LABEL_529:
                            v259 = v118;
                            LOBYTE(v260[0]) = 0;
                            v261 = -1;
                            if (v219 != 255)
                            {
                              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v219, v237, v260, &v217);
                              v261 = v219;
                            }

                            v136 = WTF::fastMalloc(0x38);
                            *v136 = 2;
                            *(v136 + 8) = 0;
                            *(v136 + 24) = -1;
                            if (v259 != 255)
                            {
                              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, v237, v136 + 1, v258);
                              *(v136 + 24) = v259;
                            }

                            *(v136 + 32) = 0;
                            *(v136 + 48) = -1;
                            if (v261 != 255)
                            {
                              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, v237, v136 + 4, v260);
                              *(v136 + 48) = v261;
                            }

                            v239[0] = v136;
                            WGSL::constantMultiply(v27, v239, &v242);
                            v138 = *v136;
                            if (v138)
                            {
                              v139 = 24 * v138;
                              v140 = v136 + 6;
                              do
                              {
                                v137 = v140 - 16;
                                if (*v140 != 255)
                                {
                                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v237, v137);
                                }

                                *v140 = -1;
                                v140 += 24;
                                v139 -= 24;
                              }

                              while (v139);
                            }

                            a1 = WTF::fastFree(v136, v137);
                            if (v261 != 255)
                            {
                              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v237, v260);
                            }

                            v261 = -1;
                            if (v259 != 255)
                            {
                              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v237, v258);
                            }

                            v127 = v245;
                            if (v245)
                            {
                              goto LABEL_545;
                            }

                            LOBYTE(v211) = 0;
                            v213 = -1;
                            if (v244 > 5u)
                            {
                              if (v244 > 8u)
                              {
                                if (v244 == 9)
                                {
                                  v174 = v243;
                                  v243 = 0;
                                  v211 = v242;
                                  v212 = v174;
                                  goto LABEL_656;
                                }

                                if (v244 != 10)
                                {
                                  LODWORD(v258[0]) = 1065353216;
                                  v259 = 0;
                                  LOBYTE(v260[0]) = 0;
                                  v175 = -1;
LABEL_657:
                                  v261 = v175;
                                  v176 = WTF::fastMalloc(0x38);
                                  *v176 = 2;
                                  *(v176 + 8) = 0;
                                  *(v176 + 24) = -1;
                                  if (v259 != 255)
                                  {
                                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, v235, v176 + 1, v258);
                                    *(v176 + 24) = v259;
                                  }

                                  *(v176 + 32) = 0;
                                  *(v176 + 48) = -1;
                                  if (v261 != 255)
                                  {
                                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, v235, v176 + 4, v260);
                                    *(v176 + 48) = v261;
                                  }

                                  v237[0] = v176;
                                  WGSL::constantMinus(v27, v237, v239);
                                  v178 = *v176;
                                  if (v178)
                                  {
                                    v179 = 24 * v178;
                                    v180 = v176 + 6;
                                    do
                                    {
                                      v177 = v180 - 16;
                                      if (*v180 != 255)
                                      {
                                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v235, v177);
                                      }

                                      *v180 = -1;
                                      v180 += 24;
                                      v179 -= 24;
                                    }

                                    while (v179);
                                  }

                                  a1 = WTF::fastFree(v176, v177);
                                  if (v261 != 255)
                                  {
                                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v235, v260);
                                  }

                                  v261 = -1;
                                  if (v259 != 255)
                                  {
                                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v235, v258);
                                  }

                                  v151 = v241;
                                  if (!v241)
                                  {
                                    mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v210, v239);
                                    mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v258, v210);
                                    LODWORD(v260[0]) = 0;
                                    v261 = 0;
                                    WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(v235, v258, 2);
                                    WGSL::constantLt(v235, v237);
                                    a1 = WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(v235, v182);
                                    if (v261 != 255)
                                    {
                                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v233, v260);
                                    }

                                    v261 = -1;
                                    if (v259 != 255)
                                    {
                                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v233, v258);
                                    }

                                    v154 = v238;
                                    if (!v238)
                                    {
                                      a1 = mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v208, v237);
                                      if (v209 != 6)
                                      {
                                        goto LABEL_799;
                                      }

                                      if (v208[0] != 1)
                                      {
                                        LODWORD(v258[0]) = v26;
                                        v259 = 0;
                                        mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v260, &v223);
                                        WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(v233, v258, 2);
                                        WGSL::constantMultiply(v27, v233, v235);
                                        a1 = WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(v233, v184);
                                        if (v261 != 255)
                                        {
                                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v231, v260);
                                        }

                                        v261 = -1;
                                        if (v259 != 255)
                                        {
                                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v231, v258);
                                        }

                                        v157 = v236;
                                        if (!v236)
                                        {
                                          mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v207, v235);
                                          mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v258, v210);
                                          WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(v231, v258, 1);
                                          WGSL::constantSqrt(v231, v233);
                                          a1 = WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(v231, v186);
                                          if (v259 != 255)
                                          {
                                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v229, v258);
                                          }

                                          v160 = v234;
                                          if (!v234)
                                          {
                                            mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v206, v233);
                                            mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v258, v207);
                                            mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v260, v206);
                                            WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(v229, v258, 2);
                                            WGSL::constantAdd(v27, v229, v231);
                                            a1 = WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(v229, v188);
                                            if (v261 != 255)
                                            {
                                              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v227, v260);
                                            }

                                            v261 = -1;
                                            if (v259 != 255)
                                            {
                                              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v227, v258);
                                            }

                                            v163 = v232;
                                            if (!v232)
                                            {
                                              mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v205, v231);
                                              LODWORD(v258[0]) = v26;
                                              v259 = 0;
                                              goto LABEL_715;
                                            }

                                            goto LABEL_710;
                                          }

                                          goto LABEL_701;
                                        }

                                        goto LABEL_693;
                                      }

                                      goto LABEL_686;
                                    }

                                    goto LABEL_680;
                                  }

                                  goto LABEL_671;
                                }
                              }

                              else if (v244 == 6)
                              {
                                LOBYTE(v211) = v242;
                                goto LABEL_656;
                              }

                              v142 = v242;
                              v242 = 0;
                            }

                            else
                            {
                              if (v244 <= 2u)
                              {
                                if (v244)
                                {
                                  if (v244 == 1)
                                  {
                                    LOWORD(v211) = v242;
                                  }

                                  else
                                  {
                                    v211 = v242;
                                  }
                                }

                                else
                                {
                                  LODWORD(v211) = v242;
                                }

                                goto LABEL_656;
                              }

                              if (v244 == 3 || v244 == 4)
                              {
                                LODWORD(v211) = v242;
LABEL_656:
                                v213 = v244;
                                LODWORD(v258[0]) = 1065353216;
                                v259 = 0;
                                LOBYTE(v260[0]) = 0;
                                v261 = -1;
                                _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v244, v235, v260, &v211);
                                v175 = v213;
                                goto LABEL_657;
                              }

                              v142 = v242;
                            }

                            v211 = v142;
                            goto LABEL_656;
                          }
                        }

                        else if (v248 == 6)
                        {
                          LOBYTE(v214) = v246;
                          goto LABEL_528;
                        }

                        v119 = v246;
                        v246 = 0;
                      }

                      else
                      {
                        if (v248 <= 2u)
                        {
                          if (v248)
                          {
                            if (v248 == 1)
                            {
                              LOWORD(v214) = v246;
                            }

                            else
                            {
                              v214 = v246;
                            }
                          }

                          else
                          {
                            LODWORD(v214) = v246;
                          }

                          goto LABEL_528;
                        }

                        if (v248 == 3 || v248 == 4)
                        {
                          LODWORD(v214) = v246;
LABEL_528:
                          v216 = v248;
                          LOBYTE(v258[0]) = 0;
                          v259 = -1;
                          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v248, v237, v258, &v214);
                          v118 = v216;
                          goto LABEL_529;
                        }

                        v119 = v246;
                      }

                      v214 = v119;
                      goto LABEL_528;
                    }

                    v93 = v250;
                  }

                  v217 = v93;
                  goto LABEL_412;
                }
              }

              else if (v256 == 6)
              {
                LOBYTE(v220) = v254;
                goto LABEL_301;
              }

              v66 = v254;
              v254 = 0;
            }

            else
            {
              if (v256 <= 2u)
              {
                if (v256)
                {
                  if (v256 == 1)
                  {
                    LOWORD(v220) = v254;
                  }

                  else
                  {
                    v220 = v254;
                  }
                }

                else
                {
                  LODWORD(v220) = v254;
                }

                goto LABEL_301;
              }

              if (v256 == 3 || v256 == 4)
              {
                LODWORD(v220) = v254;
LABEL_301:
                v222 = v256;
                LODWORD(v258[0]) = 1065353216;
                v259 = 0;
                LOBYTE(v260[0]) = 0;
                v261 = -1;
                _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v256, &v242, v260, &v220);
                v86 = v222;
                goto LABEL_302;
              }

              v66 = v254;
            }

            v220 = v66;
            goto LABEL_301;
          }
        }

        else if (v264 == 6)
        {
          LOBYTE(v223) = v262;
          goto LABEL_188;
        }

        v43 = v262;
        v262 = 0;
      }

      else
      {
        if (v264 <= 2u)
        {
          if (v264)
          {
            if (v264 == 1)
            {
              LOWORD(v223) = v262;
            }

            else
            {
              v223 = v262;
            }
          }

          else
          {
            LODWORD(v223) = v262;
          }

          goto LABEL_188;
        }

        if (v264 == 3 || v264 == 4)
        {
          LODWORD(v223) = v262;
LABEL_188:
          v225 = v264;
          LOBYTE(v258[0]) = 0;
          v259 = -1;
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v264, &v246, v258, &v223);
          v40 = v225;
          goto LABEL_189;
        }

        v43 = v262;
      }

      v223 = v43;
      goto LABEL_188;
    }

LABEL_803:
    __break(0xC471u);
    JUMPOUT(0x22584F100);
  }

  if (*(a1 + 48) != 1)
  {
    goto LABEL_799;
  }

  v8 = *(v4 + 28);
  v9 = *a1;
  LOBYTE(v258[0]) = 0;
  v259 = -1;
  v10 = *(v4 + 48);
  if (v10 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v10, &v262, v258, v4 + 4);
    v259 = *(v4 + 48);
  }

  LOBYTE(v260[0]) = 0;
  v261 = -1;
  v11 = *(v4 + 24);
  if (v11 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v11, &v262, v260, v4 + 1);
    v261 = *(v4 + 24);
  }

  v12 = WTF::fastMalloc(0x38);
  *v12 = 2;
  *(v12 + 8) = 0;
  *(v12 + 24) = -1;
  if (v259 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, &v262, v12 + 1, v258);
    *(v12 + 24) = v259;
  }

  *(v12 + 32) = 0;
  *(v12 + 48) = -1;
  if (v261 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, &v262, v12 + 4, v260);
    *(v12 + 48) = v261;
  }

  v254 = v12;
  WGSL::constantDot(v9, &v262);
  v14 = *v12;
  if (v14)
  {
    v15 = 24 * v14;
    v16 = v12 + 6;
    do
    {
      v13 = v16 - 16;
      if (*v16 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v250, v13);
      }

      *v16 = -1;
      v16 += 24;
      v15 -= 24;
    }

    while (v15);
  }

  a1 = WTF::fastFree(v12, v13);
  if (v261 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v250, v260);
  }

  v261 = -1;
  if (v259 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v250, v258);
  }

  v36 = v265;
  if (!v265)
  {
    LOBYTE(v223) = 0;
    v37 = -1;
    v225 = -1;
    if (v264 > 5u)
    {
      if (v264 > 8u)
      {
        if (v264 == 9)
        {
          v44 = v263;
          v263 = 0;
          v223 = v262;
          v224 = v44;
          goto LABEL_119;
        }

        if (v264 != 10)
        {
          LOBYTE(v258[0]) = 0;
LABEL_120:
          v259 = v37;
          LOWORD(v260[0]) = COERCE_UNSIGNED_INT(2.0);
          v261 = 1;
          v46 = WTF::fastMalloc(0x38);
          *v46 = 2;
          *(v46 + 8) = 0;
          *(v46 + 24) = -1;
          if (v259 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, &v246, v46 + 1, v258);
            *(v46 + 24) = v259;
          }

          *(v46 + 32) = 0;
          *(v46 + 48) = -1;
          if (v261 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, &v246, v46 + 4, v260);
            *(v46 + 48) = v261;
          }

          v250 = v46;
          WGSL::constantPow(&v250, &v254);
          v48 = *v46;
          if (v48)
          {
            v49 = 24 * v48;
            v50 = v46 + 6;
            do
            {
              v47 = v50 - 16;
              if (*v50 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, v47);
              }

              *v50 = -1;
              v50 += 24;
              v49 -= 24;
            }

            while (v49);
          }

          a1 = WTF::fastFree(v46, v47);
          if (v261 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, v260);
          }

          v261 = -1;
          if (v259 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v246, v258);
          }

          v51 = v257;
          if (!v257)
          {
            LOBYTE(v220) = 0;
            v222 = -1;
            if (v256 > 5u)
            {
              if (v256 > 8u)
              {
                if (v256 == 9)
                {
                  v67 = v255;
                  v255 = 0;
                  v220 = v254;
                  v221 = v67;
                  goto LABEL_232;
                }

                if (v256 != 10)
                {
                  LOWORD(v258[0]) = COERCE_UNSIGNED_INT(1.0);
                  v259 = 1;
                  LOBYTE(v260[0]) = 0;
                  v69 = -1;
LABEL_233:
                  v261 = v69;
                  v70 = WTF::fastMalloc(0x38);
                  *v70 = 2;
                  *(v70 + 8) = 0;
                  *(v70 + 24) = -1;
                  if (v259 != 255)
                  {
                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, &v242, v70 + 1, v258);
                    *(v70 + 24) = v259;
                  }

                  *(v70 + 32) = 0;
                  *(v70 + 48) = -1;
                  if (v261 != 255)
                  {
                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, &v242, v70 + 4, v260);
                    *(v70 + 48) = v261;
                  }

                  v246 = v70;
                  WGSL::constantMinus(v9, &v246, &v250);
                  v72 = *v70;
                  if (v72)
                  {
                    v73 = 24 * v72;
                    v74 = v70 + 6;
                    do
                    {
                      v71 = v74 - 16;
                      if (*v74 != 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v242, v71);
                      }

                      *v74 = -1;
                      v74 += 24;
                      v73 -= 24;
                    }

                    while (v73);
                  }

                  a1 = WTF::fastFree(v70, v71);
                  if (v261 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v242, v260);
                  }

                  v261 = -1;
                  if (v259 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v242, v258);
                  }

                  v75 = v253;
                  if (!v253)
                  {
                    LOBYTE(v217) = 0;
                    v219 = -1;
                    v76 = v252;
                    if (v252 > 5u)
                    {
                      if (v252 > 8u)
                      {
                        if (v252 == 9)
                        {
                          v94 = v251;
                          v251 = 0;
                          v217 = v250;
                          v218 = v94;
                          goto LABEL_345;
                        }

                        if (v252 != 10)
                        {
                          goto LABEL_346;
                        }
                      }

                      else if (v252 == 6)
                      {
                        LOBYTE(v217) = v250;
                        goto LABEL_345;
                      }

                      v77 = v250;
                      v250 = 0;
                    }

                    else
                    {
                      if (v252 <= 2u)
                      {
                        if (v252)
                        {
                          if (v252 == 1)
                          {
                            LOWORD(v217) = v250;
                          }

                          else
                          {
                            v217 = v250;
                          }
                        }

                        else
                        {
                          LODWORD(v217) = v250;
                        }

                        goto LABEL_345;
                      }

                      if (v252 == 3 || v252 == 4)
                      {
                        LODWORD(v217) = v250;
LABEL_345:
                        v219 = v252;
LABEL_346:
                        LOWORD(v258[0]) = v8;
                        v259 = 1;
                        LOWORD(v260[0]) = COERCE_UNSIGNED_INT(2.0);
                        v261 = 1;
                        v96 = WTF::fastMalloc(0x38);
                        *v96 = 2;
                        *(v96 + 8) = 0;
                        *(v96 + 24) = -1;
                        if (v259 != 255)
                        {
                          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, &v246, v96 + 1, v258);
                          *(v96 + 24) = v259;
                        }

                        *(v96 + 32) = 0;
                        *(v96 + 48) = -1;
                        if (v261 != 255)
                        {
                          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, &v246, v96 + 4, v260);
                          *(v96 + 48) = v261;
                        }

                        v242 = v96;
                        WGSL::constantPow(&v242, &v246);
                        v98 = *v96;
                        if (v98)
                        {
                          v99 = 24 * v98;
                          v100 = v96 + 6;
                          do
                          {
                            v97 = v100 - 16;
                            if (*v100 != 255)
                            {
                              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v239, v97);
                            }

                            *v100 = -1;
                            v100 += 24;
                            v99 -= 24;
                          }

                          while (v99);
                        }

                        a1 = WTF::fastFree(v96, v97);
                        if (v261 != 255)
                        {
                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v239, v260);
                        }

                        v261 = -1;
                        if (v259 != 255)
                        {
                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v239, v258);
                        }

                        v101 = v249;
                        if (!v249)
                        {
                          LOBYTE(v214) = 0;
                          v102 = -1;
                          v216 = -1;
                          v200 = v248;
                          if (v248 > 5u)
                          {
                            if (v248 > 8u)
                            {
                              if (v248 == 9)
                              {
                                v120 = v247;
                                v247 = 0;
                                v214 = v246;
                                v215 = v120;
                                goto LABEL_455;
                              }

                              if (v248 != 10)
                              {
                                LOBYTE(v258[0]) = 0;
LABEL_456:
                                v259 = v102;
                                LOBYTE(v260[0]) = 0;
                                v261 = -1;
                                if (v219 != 255)
                                {
                                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v219, v237, v260, &v217);
                                  v261 = v219;
                                }

                                v122 = WTF::fastMalloc(0x38);
                                *v122 = 2;
                                *(v122 + 8) = 0;
                                *(v122 + 24) = -1;
                                if (v259 != 255)
                                {
                                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, v237, v122 + 1, v258);
                                  *(v122 + 24) = v259;
                                }

                                *(v122 + 32) = 0;
                                *(v122 + 48) = -1;
                                if (v261 != 255)
                                {
                                  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, v237, v122 + 4, v260);
                                  *(v122 + 48) = v261;
                                }

                                v239[0] = v122;
                                WGSL::constantMultiply(v9, v239, &v242);
                                v124 = *v122;
                                if (v124)
                                {
                                  v125 = 24 * v124;
                                  v126 = v122 + 6;
                                  do
                                  {
                                    v123 = v126 - 16;
                                    if (*v126 != 255)
                                    {
                                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v237, v123);
                                    }

                                    *v126 = -1;
                                    v126 += 24;
                                    v125 -= 24;
                                  }

                                  while (v125);
                                }

                                a1 = WTF::fastFree(v122, v123);
                                if (v261 != 255)
                                {
                                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v237, v260);
                                }

                                v261 = -1;
                                if (v259 != 255)
                                {
                                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v237, v258);
                                }

                                v127 = v245;
                                if (!v245)
                                {
                                  LOBYTE(v211) = 0;
                                  v213 = -1;
                                  if (v244 > 5u)
                                  {
                                    if (v244 > 8u)
                                    {
                                      if (v244 == 9)
                                      {
                                        v143 = v243;
                                        v243 = 0;
                                        v211 = v242;
                                        v212 = v143;
                                        goto LABEL_573;
                                      }

                                      if (v244 != 10)
                                      {
                                        LOWORD(v258[0]) = COERCE_UNSIGNED_INT(1.0);
                                        v259 = 1;
                                        LOBYTE(v260[0]) = 0;
                                        v145 = -1;
LABEL_574:
                                        v261 = v145;
                                        v146 = WTF::fastMalloc(0x38);
                                        *v146 = 2;
                                        *(v146 + 8) = 0;
                                        *(v146 + 24) = -1;
                                        if (v259 != 255)
                                        {
                                          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v259, v235, v146 + 1, v258);
                                          *(v146 + 24) = v259;
                                        }

                                        *(v146 + 32) = 0;
                                        *(v146 + 48) = -1;
                                        if (v261 != 255)
                                        {
                                          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v261, v235, v146 + 4, v260);
                                          *(v146 + 48) = v261;
                                        }

                                        v237[0] = v146;
                                        WGSL::constantMinus(v9, v237, v239);
                                        v148 = *v146;
                                        if (v148)
                                        {
                                          v149 = 24 * v148;
                                          v150 = v146 + 6;
                                          do
                                          {
                                            v147 = v150 - 16;
                                            if (*v150 != 255)
                                            {
                                              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v235, v147);
                                            }

                                            *v150 = -1;
                                            v150 += 24;
                                            v149 -= 24;
                                          }

                                          while (v149);
                                        }

                                        a1 = WTF::fastFree(v146, v147);
                                        if (v261 != 255)
                                        {
                                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v235, v260);
                                        }

                                        v261 = -1;
                                        if (v259 != 255)
                                        {
                                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v235, v258);
                                        }

                                        v151 = v241;
                                        if (!v241)
                                        {
                                          mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v210, v239);
                                          mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v258, v210);
                                          LOWORD(v260[0]) = 0;
                                          v261 = 1;
                                          WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(v235, v258, 2);
                                          WGSL::constantLt(v235, v237);
                                          a1 = WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(v235, v152);
                                          if (v261 != 255)
                                          {
                                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v233, v260);
                                          }

                                          v261 = -1;
                                          if (v259 != 255)
                                          {
                                            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v233, v258);
                                          }

                                          v154 = v238;
                                          if (!v238)
                                          {
                                            a1 = mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v208, v237);
                                            if (v209 != 6)
                                            {
                                              goto LABEL_799;
                                            }

                                            if (v208[0] != 1)
                                            {
                                              LOWORD(v258[0]) = v8;
                                              v259 = 1;
                                              mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v260, &v223);
                                              WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(v233, v258, 2);
                                              WGSL::constantMultiply(v9, v233, v235);
                                              a1 = WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(v233, v155);
                                              if (v261 != 255)
                                              {
                                                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v231, v260);
                                              }

                                              v261 = -1;
                                              if (v259 != 255)
                                              {
                                                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v231, v258);
                                              }

                                              v157 = v236;
                                              if (!v236)
                                              {
                                                mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v207, v235);
                                                mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v258, v210);
                                                WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(v231, v258, 1);
                                                WGSL::constantSqrt(v231, v233);
                                                a1 = WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(v231, v158);
                                                if (v259 != 255)
                                                {
                                                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v229, v258);
                                                }

                                                v160 = v234;
                                                if (!v234)
                                                {
                                                  mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v206, v233);
                                                  mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v258, v207);
                                                  mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v260, v206);
                                                  WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(v229, v258, 2);
                                                  WGSL::constantAdd(v9, v229, v231);
                                                  a1 = WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(v229, v161);
                                                  if (v261 != 255)
                                                  {
                                                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v227, v260);
                                                  }

                                                  v261 = -1;
                                                  if (v259 != 255)
                                                  {
                                                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v227, v258);
                                                  }

                                                  v163 = v232;
                                                  if (!v232)
                                                  {
                                                    mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v205, v231);
                                                    LOWORD(v258[0]) = v8;
                                                    v259 = 1;
LABEL_715:
                                                    mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v260, (v4 + 2));
                                                    WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(v227, v258, 2);
                                                    WGSL::constantMultiply(v6, v227, v229);
                                                    a1 = WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(v227, v190);
                                                    if (v261 != 255)
                                                    {
                                                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v204, v260);
                                                    }

                                                    v261 = -1;
                                                    if (v259 != 255)
                                                    {
                                                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v204, v258);
                                                    }

                                                    if (!v230)
                                                    {
                                                      mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v204, v229);
                                                      mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v258, v205);
                                                      mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v260, (v4 + 8));
                                                      WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(v202, v258, 2);
                                                      WGSL::constantMultiply(v6, v202, v227);
                                                      a1 = WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(v202, v193);
                                                      if (v261 != 255)
                                                      {
                                                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v201, v260);
                                                      }

                                                      v261 = -1;
                                                      if (v259 != 255)
                                                      {
                                                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v201, v258);
                                                      }

                                                      if (v228)
                                                      {
                                                        if (v228 != 1)
                                                        {
                                                          goto LABEL_799;
                                                        }

                                                        v195 = v227[0];
                                                        if (v227[0])
                                                        {
                                                          atomic_fetch_add_explicit(v227[0], 2u, memory_order_relaxed);
                                                        }

                                                        *a3 = v195;
                                                        *(a3 + 24) = 1;
                                                      }

                                                      else
                                                      {
                                                        mpark::detail::move_assignment<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::move_assignment(v202, v227);
                                                        mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v258, v204);
                                                        mpark::detail::copy_constructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1>::copy_constructor(v260, v202);
                                                        WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::FixedVector(&v201, v258, 2);
                                                        WGSL::constantMinus(v6, &v201, a3);
                                                        WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc>::~FixedVector(&v201, v196);
                                                        if (v261 != 255)
                                                        {
                                                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v226, v260);
                                                        }

                                                        v261 = -1;
                                                        if (v259 != 255)
                                                        {
                                                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v226, v258);
                                                        }

                                                        if (v203 != 255)
                                                        {
                                                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, v202);
                                                        }
                                                      }

                                                      std::experimental::fundamentals_v3::expected<WGSL::ConstantValue,WTF::String>::~expected(v227, v194);
                                                      if (v204[16] != 255)
                                                      {
                                                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, v204);
                                                      }

                                                      goto LABEL_741;
                                                    }

                                                    if (v230 == 1)
                                                    {
                                                      v192 = v229[0];
                                                      if (v229[0])
                                                      {
                                                        atomic_fetch_add_explicit(v229[0], 2u, memory_order_relaxed);
                                                      }

                                                      *a3 = v192;
                                                      *(a3 + 24) = 1;
LABEL_741:
                                                      std::experimental::fundamentals_v3::expected<WGSL::ConstantValue,WTF::String>::~expected(v229, v191);
                                                      if (v205[16] != 255)
                                                      {
                                                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, v205);
                                                      }

LABEL_743:
                                                      std::experimental::fundamentals_v3::expected<WGSL::ConstantValue,WTF::String>::~expected(v231, v162);
                                                      if (v206[16] != 255)
                                                      {
                                                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, v206);
                                                      }

LABEL_745:
                                                      std::experimental::fundamentals_v3::expected<WGSL::ConstantValue,WTF::String>::~expected(v233, v159);
                                                      if (v207[16] != 255)
                                                      {
                                                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, v207);
                                                      }

LABEL_747:
                                                      std::experimental::fundamentals_v3::expected<WGSL::ConstantValue,WTF::String>::~expected(v235, v156);
LABEL_748:
                                                      if (v209 != 255)
                                                      {
                                                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, v208);
                                                      }

LABEL_750:
                                                      std::experimental::fundamentals_v3::expected<WGSL::ConstantValue,WTF::String>::~expected(v237, v153);
                                                      if (v210[16] != 255)
                                                      {
                                                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, v210);
                                                      }

LABEL_752:
                                                      if (v241 != 255)
                                                      {
                                                        if (v241)
                                                        {
                                                          v197 = v239[0];
                                                          v239[0] = 0;
                                                          if (v197 && atomic_fetch_add_explicit(v197, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                                          {
                                                            WTF::StringImpl::destroy(v197, v35);
                                                          }
                                                        }

                                                        else if (v240 != 255)
                                                        {
                                                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, v239);
                                                        }
                                                      }

                                                      if (v213 != 255)
                                                      {
                                                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v211);
                                                      }

LABEL_761:
                                                      if (v245 != 255)
                                                      {
                                                        if (v245)
                                                        {
                                                          v198 = v242;
                                                          v242 = 0;
                                                          if (v198 && atomic_fetch_add_explicit(v198, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                                          {
                                                            WTF::StringImpl::destroy(v198, v35);
                                                          }
                                                        }

                                                        else if (v244 != 255)
                                                        {
                                                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v242);
                                                        }
                                                      }

                                                      if (v216 != 255)
                                                      {
                                                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v214);
                                                      }

                                                      if (v200 != 255)
                                                      {
                                                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v246);
                                                      }

LABEL_772:
                                                      if (v219 == 255)
                                                      {
                                                        goto LABEL_774;
                                                      }

                                                      goto LABEL_773;
                                                    }

LABEL_799:
                                                    mpark::throw_bad_variant_access(a1);
                                                  }

                                                  goto LABEL_710;
                                                }

                                                goto LABEL_701;
                                              }

                                              goto LABEL_693;
                                            }

                                            goto LABEL_686;
                                          }

                                          goto LABEL_680;
                                        }

                                        goto LABEL_671;
                                      }
                                    }

                                    else if (v244 == 6)
                                    {
                                      LOBYTE(v211) = v242;
                                      goto LABEL_573;
                                    }

                                    v128 = v242;
                                    v242 = 0;
                                  }

                                  else
                                  {
                                    if (v244 <= 2u)
                                    {
                                      if (v244)
                                      {
                                        if (v244 == 1)
                                        {
                                          LOWORD(v211) = v242;
                                        }

                                        else
                                        {
                                          v211 = v242;
                                        }
                                      }

                                      else
                                      {
                                        LODWORD(v211) = v242;
                                      }

                                      goto LABEL_573;
                                    }

                                    if (v244 == 3 || v244 == 4)
                                    {
                                      LODWORD(v211) = v242;
LABEL_573:
                                      v213 = v244;
                                      LOWORD(v258[0]) = COERCE_UNSIGNED_INT(1.0);
                                      v259 = 1;
                                      LOBYTE(v260[0]) = 0;
                                      v261 = -1;
                                      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v244, v235, v260, &v211);
                                      v145 = v213;
                                      goto LABEL_574;
                                    }

                                    v128 = v242;
                                  }

                                  v211 = v128;
                                  goto LABEL_573;
                                }

LABEL_545:
                                if (v127 == 1)
                                {
                                  v141 = v242;
                                  if (v242)
                                  {
                                    atomic_fetch_add_explicit(v242, 2u, memory_order_relaxed);
                                  }

                                  *a3 = v141;
                                  *(a3 + 24) = 1;
                                  goto LABEL_761;
                                }

                                goto LABEL_799;
                              }
                            }

                            else if (v248 == 6)
                            {
                              LOBYTE(v214) = v246;
                              goto LABEL_455;
                            }

                            v103 = v246;
                            v246 = 0;
                          }

                          else
                          {
                            if (v248 <= 2u)
                            {
                              if (v248)
                              {
                                if (v248 == 1)
                                {
                                  LOWORD(v214) = v246;
                                }

                                else
                                {
                                  v214 = v246;
                                }
                              }

                              else
                              {
                                LODWORD(v214) = v246;
                              }

                              goto LABEL_455;
                            }

                            if (v248 == 3 || v248 == 4)
                            {
                              LODWORD(v214) = v246;
LABEL_455:
                              v216 = v248;
                              LOBYTE(v258[0]) = 0;
                              v259 = -1;
                              _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v248, v237, v258, &v214);
                              v102 = v216;
                              goto LABEL_456;
                            }

                            v103 = v246;
                          }

                          v214 = v103;
                          goto LABEL_455;
                        }

LABEL_427:
                        if (v101 != 1)
                        {
                          goto LABEL_799;
                        }

                        v117 = v246;
                        if (v246)
                        {
                          atomic_fetch_add_explicit(v246, 2u, memory_order_relaxed);
                          *a3 = v117;
                          *(a3 + 24) = 1;
                          if (atomic_fetch_add_explicit(v117, 0xFFFFFFFE, memory_order_relaxed) != 2)
                          {
                            goto LABEL_772;
                          }

                          WTF::StringImpl::destroy(v117, v35);
                          if (v219 == 255)
                          {
LABEL_774:
                            if (v76 != 255)
                            {
                              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v250);
                            }

LABEL_776:
                            if (v222 == 255)
                            {
                              goto LABEL_778;
                            }

                            goto LABEL_777;
                          }
                        }

                        else
                        {
                          *a3 = 0;
                          *(a3 + 24) = 1;
                          if (v219 == 255)
                          {
                            goto LABEL_774;
                          }
                        }

LABEL_773:
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v217);
                        goto LABEL_774;
                      }

                      v77 = v250;
                    }

                    v217 = v77;
                    goto LABEL_345;
                  }

LABEL_316:
                  if (v75 != 1)
                  {
                    goto LABEL_799;
                  }

                  v92 = v250;
                  if (v250)
                  {
                    atomic_fetch_add_explicit(v250, 2u, memory_order_relaxed);
                    *a3 = v92;
                    *(a3 + 24) = 1;
                    if (atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) != 2)
                    {
                      goto LABEL_776;
                    }

                    WTF::StringImpl::destroy(v92, v35);
                    if (v222 == 255)
                    {
LABEL_778:
                      if (!v257)
                      {
                        if (v256 != 255)
                        {
                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v254);
                        }

                        goto LABEL_785;
                      }

                      if (v257 == 255 || (v65 = v254) == 0)
                      {
LABEL_785:
                        if (v225 != 255)
                        {
                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v223);
                        }

                        goto LABEL_787;
                      }

LABEL_781:
                      if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v65, v35);
                      }

                      goto LABEL_785;
                    }
                  }

                  else
                  {
                    *a3 = 0;
                    *(a3 + 24) = 1;
                    if (v222 == 255)
                    {
                      goto LABEL_778;
                    }
                  }

LABEL_777:
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v220);
                  goto LABEL_778;
                }
              }

              else if (v256 == 6)
              {
                LOBYTE(v220) = v254;
                goto LABEL_232;
              }

              v52 = v254;
              v254 = 0;
            }

            else
            {
              if (v256 <= 2u)
              {
                if (v256)
                {
                  if (v256 == 1)
                  {
                    LOWORD(v220) = v254;
                  }

                  else
                  {
                    v220 = v254;
                  }
                }

                else
                {
                  LODWORD(v220) = v254;
                }

                goto LABEL_232;
              }

              if (v256 == 3 || v256 == 4)
              {
                LODWORD(v220) = v254;
LABEL_232:
                v222 = v256;
                LOWORD(v258[0]) = COERCE_UNSIGNED_INT(1.0);
                v259 = 1;
                LOBYTE(v260[0]) = 0;
                v261 = -1;
                _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v256, &v242, v260, &v220);
                v69 = v222;
                goto LABEL_233;
              }

              v52 = v254;
            }

            v220 = v52;
            goto LABEL_232;
          }

LABEL_203:
          if (v51 == 1)
          {
            v65 = v254;
            if (v254)
            {
              atomic_fetch_add_explicit(v254, 2u, memory_order_relaxed);
            }

            *a3 = v65;
            *(a3 + 24) = 1;
            if (!v65)
            {
              goto LABEL_785;
            }

            goto LABEL_781;
          }

          goto LABEL_799;
        }
      }

      else if (v264 == 6)
      {
        LOBYTE(v223) = v262;
        goto LABEL_119;
      }

      v41 = v262;
      v262 = 0;
    }

    else
    {
      if (v264 <= 2u)
      {
        if (v264)
        {
          if (v264 == 1)
          {
            LOWORD(v223) = v262;
          }

          else
          {
            v223 = v262;
          }
        }

        else
        {
          LODWORD(v223) = v262;
        }

        goto LABEL_119;
      }

      if (v264 == 3 || v264 == 4)
      {
        LODWORD(v223) = v262;
LABEL_119:
        v225 = v264;
        LOBYTE(v258[0]) = 0;
        v259 = -1;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v264, &v246, v258, &v223);
        v37 = v225;
        goto LABEL_120;
      }

      v41 = v262;
    }

    v223 = v41;
    goto LABEL_119;
  }

LABEL_74:
  if (v36 != 1)
  {
    goto LABEL_799;
  }

  v39 = v262;
  if (v262)
  {
    atomic_fetch_add_explicit(v262, 2u, memory_order_relaxed);
  }

  *a3 = v39;
  *(a3 + 24) = 1;
LABEL_787:
  if (v265 != 255)
  {
    if (v265)
    {
      v199 = v262;
      v262 = 0;
      if (v199 && atomic_fetch_add_explicit(v199, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v199, v35);
      }
    }

    else if (v264 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v258, &v262);
    }
  }
}