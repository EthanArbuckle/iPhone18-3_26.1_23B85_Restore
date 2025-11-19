void WGSL::constantReverseBits(void *a1@<X1>, uint64_t a2@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_89;
  }

  LOBYTE(v43[0]) = 0;
  v44 = -1;
  v4 = *(v3 + 24);
  if (v4 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v4, v40, v43, v3 + 1), v44 = *(v3 + 24), LOBYTE(v40[0]) = 0, v41 = -1, v44 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v44, v37, v40, v43), v41 = v44, v44 == 255))
  {
LABEL_54:
    v21 = *(v3 + 24);
    if (v21 == 5)
    {
      v24 = *(v3 + 1);
      v40[0] = ((v24 >> 29) & 2 | (v24 >> 31) & 1 | (v24 >> 27) & 4 | (v24 >> 25) & 8 | (v24 >> 23) & 0x10 | (v24 >> 21) & 0x20 | (v24 >> 19) & 0x40 | (v24 >> 17) & 0x80 | (v24 >> 15) & 0x100 | (v24 >> 13) & 0x200 | (v24 >> 11) & 0x400 | (v24 >> 9) & 0x800 | (v24 >> 7) & 0x1000 | (v24 >> 5) & 0x2000 | (v24 >> 3) & 0x4000 | (v24 >> 1) & 0x8000 | (2 * v24) & 0x10000 | (8 * v24) & 0x20000 | (32 * v24) & 0x40000 | (v24 << 7) & 0x80000 | (v24 << 9) & 0x100000 | (v24 << 11) & 0x200000 | (v24 << 13) & 0x400000 | (v24 << 15) & 0x800000 | (v24 << 17) & 0x1000000 | (v24 << 19) & 0x2000000 | (v24 << 21) & 0x4000000 | (v24 << 23) & 0x8000000 | (v24 << 25) & 0x10000000 | (v24 << 27) & 0x20000000 | (v24 << 29) & 0x40000000 | (v24 << 31));
      v23 = 5;
      v41 = 5;
      *a2 = v40[0];
    }

    else
    {
      if (v21 == 4)
      {
        v22 = __rbit32(v3[2]);
        LODWORD(v40[0]) = v22;
        v23 = 4;
      }

      else
      {
        if (v21 != 3)
        {
          __break(0xC471u);
          JUMPOUT(0x22584FA0CLL);
        }

        v22 = __rbit32(v3[2]);
        LODWORD(v40[0]) = v22;
        v23 = 3;
      }

      v41 = v23;
      *a2 = v22;
    }

    *(a2 + 16) = v23;
    *(a2 + 24) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v40);
    if (v44 == 255)
    {
      return;
    }

LABEL_62:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v43);
    return;
  }

  if (v44 != 8 || !v40[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v40);
    goto LABEL_54;
  }

  v5 = *v40[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v40);
  if (!v5)
  {
    goto LABEL_54;
  }

  v6 = WTF::fastMalloc((24 * v5 + 8));
  *v6 = v5;
  v7 = v6 + 2;
  v8 = 6;
  bzero(v6 + 2, 24 * ((24 * v5 - 24) / 0x18uLL) + 24);
  v9 = 0;
  LODWORD(v35[0]) = 0;
  v36 = 0;
  v10 = *(a2 + 24);
  v11 = *a2;
  do
  {
    v12 = v44;
    if (v44 != 8)
    {
      if (v36 != 255)
      {
        if (v44 == 255)
        {
LABEL_82:
          *a2 = v11;
          *(a2 + 24) = v10;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v35);
          v36 = -1;
          goto LABEL_88;
        }

        goto LABEL_18;
      }

      if (v44 != 255)
      {
LABEL_18:
        v40[0] = v35;
        v13 = v43;
        goto LABEL_21;
      }

      *a2 = v11;
      *(a2 + 24) = v10;
LABEL_88:
      __break(0xC471u);
LABEL_89:
      JUMPOUT(0x22584F9A4);
    }

    if (v9 >= *v43[0])
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      __break(0xC471u);
      JUMPOUT(0x22584F9ECLL);
    }

    v13 = (v43[0] + v8 * 4 - 16);
    v12 = *(v43[0] + v8 * 4);
    if (v36 == 255)
    {
      if (v12 == 255)
      {
        goto LABEL_22;
      }
    }

    else if (v12 == 255)
    {
      goto LABEL_82;
    }

    v40[0] = v35;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v12, v40, v35, v13);
LABEL_22:
    if (v36 == 3)
    {
      v14 = __rbit32(v35[0]);
      LODWORD(v37[0]) = v14;
      v15 = 3;
      goto LABEL_26;
    }

    if (v36 == 4)
    {
      v14 = __rbit32(v35[0]);
      LODWORD(v37[0]) = v14;
      v15 = 4;
LABEL_26:
      v38 = v15;
      LODWORD(v40[0]) = v14;
      goto LABEL_29;
    }

    if (v36 != 5)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      goto LABEL_88;
    }

    v37[0] = ((v35[0] >> 29) & 2 | (v35[0] >> 31) & 1 | (v35[0] >> 27) & 4 | (v35[0] >> 25) & 8 | (v35[0] >> 23) & 0x10 | (v35[0] >> 21) & 0x20 | (v35[0] >> 19) & 0x40 | (v35[0] >> 17) & 0x80 | (v35[0] >> 15) & 0x100 | (v35[0] >> 13) & 0x200 | (v35[0] >> 11) & 0x400 | (v35[0] >> 9) & 0x800 | (v35[0] >> 7) & 0x1000 | (v35[0] >> 5) & 0x2000 | (v35[0] >> 3) & 0x4000 | (v35[0] >> 1) & 0x8000 | (2 * v35[0]) & 0x10000 | (8 * v35[0]) & 0x20000 | (32 * v35[0]) & 0x40000 | (v35[0] << 7) & 0x80000 | (v35[0] << 9) & 0x100000 | (v35[0] << 11) & 0x200000 | (v35[0] << 13) & 0x400000 | (v35[0] << 15) & 0x800000 | (v35[0] << 17) & 0x1000000 | (v35[0] << 19) & 0x2000000 | (v35[0] << 21) & 0x4000000 | (v35[0] << 23) & 0x8000000 | (v35[0] << 25) & 0x10000000 | (v35[0] << 27) & 0x20000000 | (v35[0] << 29) & 0x40000000 | (LODWORD(v35[0]) << 31));
    v15 = 5;
    v38 = 5;
    v40[0] = v37[0];
LABEL_29:
    v41 = v15;
    v42 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v39, v37);
    v18 = v42;
    if (!v42)
    {
      if (v9 >= *v6)
      {
        *a2 = v11;
        *(a2 + 24) = v10;
        __break(0xC471u);
        JUMPOUT(0x22584FA34);
      }

      if (LOBYTE(v6[v8]) == 255)
      {
        if (v41 == 255)
        {
          goto LABEL_41;
        }
      }

      else if (v41 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v7);
        LOBYTE(v6[v8]) = -1;
        v19 = v42;
        if (v42 == 255)
        {
          goto LABEL_48;
        }

        goto LABEL_42;
      }

      v37[0] = v7;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v41, v37, v7, v40);
LABEL_41:
      v19 = v42;
      if (v42 == 255)
      {
        goto LABEL_48;
      }

      goto LABEL_42;
    }

    if (v42 != 1)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      mpark::throw_bad_variant_access(v16);
    }

    v11 = v40[0];
    if (v40[0])
    {
      atomic_fetch_add_explicit(v40[0], 2u, memory_order_relaxed);
      v10 = 1;
      v19 = v42;
      if (v42 == 255)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v10 = 1;
      v19 = v42;
      if (v42 == 255)
      {
        goto LABEL_48;
      }
    }

LABEL_42:
    if (v19)
    {
      v20 = v40[0];
      v40[0] = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v17);
      }
    }

    else if (v41 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v40);
    }

LABEL_48:
    if (v18)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      goto LABEL_71;
    }

    ++v9;
    v7 += 24;
    v8 += 6;
  }

  while (v5 != v9);
  v25 = *v6;
  v26 = 24 * v25;
  v27 = WTF::fastMalloc((24 * v25 + 8));
  v28 = v27;
  *v27 = v25;
  if (v25)
  {
    v29 = (v27 + 6);
    v30 = (v6 + 6);
    do
    {
      *(v29 - 16) = 0;
      *v29 = -1;
      v31 = *v30;
      if (v31 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v31, v40, v29 - 2, v30 - 2);
        *v29 = *v30;
      }

      v29 += 3;
      v30 += 3;
      v26 -= 24;
    }

    while (v26);
  }

  v41 = 8;
  v40[0] = 0;
  *a2 = v28;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v40);
LABEL_71:
  if (v36 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v35);
  }

  v32 = *v6;
  if (v32)
  {
    v33 = 24 * v32;
    v34 = v6 + 6;
    do
    {
      v17 = (v34 - 16);
      if (*v34 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v17);
      }

      *v34 = -1;
      v34 += 24;
      v33 -= 24;
    }

    while (v33);
  }

  WTF::fastFree(v6, v17);
  if (v44 != 255)
  {
    goto LABEL_62;
  }
}

void WGSL::constantRound(void *a1@<X1>, uint64_t a2@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_88;
  }

  v4 = (v3 + 2);
  LOBYTE(v39[0]) = 0;
  v40 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v36, v39, v3 + 1), v40 = *(v3 + 24), LOBYTE(v36[0]) = 0, v37 = -1, v40 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v40, v33, v36, v39), v37 = v40, v40 == 255))
  {
LABEL_53:
    v20 = *(v3 + 24);
    if (v20 == 2)
    {
      v36[0] = COERCE_WTF_STRINGIMPL_(rint(*v4));
      v37 = 2;
      *a2 = v36[0];
    }

    else
    {
      if (v20 != 1)
      {
        if (*(v3 + 24))
        {
          __break(0xC471u);
          JUMPOUT(0x22585006CLL);
        }

        LODWORD(v36[0]) = rintf(*v4);
        v37 = 0;
        *a2 = v36[0];
        *(a2 + 16) = 0;
LABEL_60:
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v33, v36);
        if (v40 == 255)
        {
          return;
        }

        goto LABEL_61;
      }

      LOWORD(v36[0]) = rintl(*v4);
      v37 = 1;
      *a2 = v36[0];
    }

    *(a2 + 16) = v20;
    goto LABEL_60;
  }

  if (v40 != 8 || !v36[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v33, v36);
    goto LABEL_53;
  }

  v6 = *v36[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v33, v36);
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
  LODWORD(v31[0]) = 0;
  v11 = *(a2 + 24);
  v32 = 0;
  v12 = *a2;
  do
  {
    v13 = v40;
    if (v40 != 8)
    {
      if (v32 == 255)
      {
        if (v40 == 255)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          goto LABEL_87;
        }
      }

      else if (v40 == 255)
      {
LABEL_81:
        *a2 = v12;
        *(a2 + 24) = v11;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v36, v31);
        v32 = -1;
LABEL_87:
        __break(0xC471u);
LABEL_88:
        JUMPOUT(0x225850000);
      }

      v36[0] = v31;
      v14 = v39;
      goto LABEL_21;
    }

    if (v10 >= *v39[0])
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      __break(0xC471u);
      JUMPOUT(0x22585004CLL);
    }

    v14 = (v39[0] + v9 * 4 - 16);
    v13 = *(v39[0] + v9 * 4);
    if (v32 == 255)
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

    v36[0] = v31;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v13, v36, v31, v14);
LABEL_22:
    if (v32)
    {
      if (v32 == 1)
      {
        LOWORD(v33[0]) = rintl(*v31);
        v34 = 1;
        LOWORD(v36[0]) = v33[0];
        v37 = 1;
        v38 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v35, v33);
        v17 = v38;
        if (!v38)
        {
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      if (v32 == 2)
      {
        v33[0] = COERCE__BYTE_(rint(*v31));
        v34 = 2;
        v36[0] = v33[0];
        v37 = 2;
        v38 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v35, v33);
        v17 = v38;
        if (v38)
        {
          goto LABEL_27;
        }

LABEL_33:
        if (v10 >= *v7)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          __break(0xC471u);
          JUMPOUT(0x225850094);
        }

        if (LOBYTE(v7[v9]) == 255)
        {
          if (v37 == 255)
          {
            goto LABEL_40;
          }
        }

        else if (v37 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v33, v8);
          LOBYTE(v7[v9]) = -1;
          v18 = v38;
          if (v38 == 255)
          {
            goto LABEL_47;
          }

          goto LABEL_41;
        }

        v33[0] = v8;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v37, v33, v8, v36);
LABEL_40:
        v18 = v38;
        if (v38 == 255)
        {
          goto LABEL_47;
        }

        goto LABEL_41;
      }

      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_87;
    }

    LODWORD(v33[0]) = rintf(*v31);
    v34 = 0;
    LODWORD(v36[0]) = v33[0];
    v37 = 0;
    v38 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v35, v33);
    v17 = v38;
    if (!v38)
    {
      goto LABEL_33;
    }

LABEL_27:
    if (v17 != 1)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      mpark::throw_bad_variant_access(v15);
    }

    v12 = v36[0];
    if (v36[0])
    {
      atomic_fetch_add_explicit(v36[0], 2u, memory_order_relaxed);
      v11 = 1;
      v18 = v38;
      if (v38 == 255)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v11 = 1;
      v18 = v38;
      if (v38 == 255)
      {
        goto LABEL_47;
      }
    }

LABEL_41:
    if (v18)
    {
      v19 = v36[0];
      v36[0] = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v16);
      }
    }

    else if (v37 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v33, v36);
    }

LABEL_47:
    if (v17)
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
  v21 = *v7;
  v22 = 24 * v21;
  v23 = WTF::fastMalloc((24 * v21 + 8));
  v24 = v23;
  *v23 = v21;
  if (v21)
  {
    v25 = (v23 + 6);
    v26 = (v7 + 6);
    do
    {
      *(v25 - 16) = 0;
      *v25 = -1;
      v27 = *v26;
      if (v27 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v27, v36, v25 - 2, v26 - 2);
        *v25 = *v26;
      }

      v25 += 3;
      v26 += 3;
      v22 -= 24;
    }

    while (v22);
  }

  v37 = 8;
  v36[0] = 0;
  *a2 = v24;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v33, v36);
LABEL_70:
  if (v32 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v36, v31);
  }

  v28 = *v7;
  if (v28)
  {
    v29 = 24 * v28;
    v30 = v7 + 6;
    do
    {
      v16 = (v30 - 16);
      if (*v30 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v36, v16);
      }

      *v30 = -1;
      v30 += 24;
      v29 -= 24;
    }

    while (v29);
  }

  WTF::fastFree(v7, v16);
  if (v40 != 255)
  {
LABEL_61:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v36, v39);
  }
}

void WGSL::constantSaturate(void *a1@<X1>, uint64_t a2@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_112;
  }

  v4 = (v3 + 2);
  LOBYTE(v49[0]) = 0;
  v50 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v46, v49, v3 + 1), v50 = *(v3 + 24), LOBYTE(v46[0]) = 0, v47 = -1, v50 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v50, v43, v46, v49), v47 = v50, v50 == 255))
  {
LABEL_65:
    v27 = *(v3 + 24);
    if (v27 == 2)
    {
      v29 = *v4;
      if (*v4 < 0.0)
      {
        v29 = 0.0;
      }

      if (v29 > 1.0)
      {
        v29 = 1.0;
      }

      v46[0] = *&v29;
      v47 = 2;
      *a2 = v29;
    }

    else
    {
      if (v27 != 1)
      {
        if (*(v3 + 24))
        {
          __break(0xC471u);
          JUMPOUT(0x22585075CLL);
        }

        v30 = *v4;
        if (*v4 < 0.0)
        {
          v30 = 0.0;
        }

        if (v30 > 1.0)
        {
          v30 = 1.0;
        }

        *v46 = v30;
        v47 = 0;
        *a2 = v30;
        *(a2 + 16) = 0;
LABEL_84:
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v46);
        if (v50 == 255)
        {
          return;
        }

        goto LABEL_85;
      }

      __asm { FCMP            H0, #0 }

      if (_NF)
      {
        _H0 = COERCE_SHORT_FLOAT(0);
      }

      if (_H0 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
      {
        LOWORD(_H0) = COERCE_UNSIGNED_INT(1.0);
      }

      *v46 = _H0;
      v47 = 1;
      *a2 = _H0;
    }

    *(a2 + 16) = v27;
    goto LABEL_84;
  }

  if (v50 != 8 || !v46[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v46);
    goto LABEL_65;
  }

  v6 = *v46[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v46);
  if (!v6)
  {
    goto LABEL_65;
  }

  v7 = WTF::fastMalloc((24 * v6 + 8));
  *v7 = v6;
  v8 = (v7 + 2);
  v9 = 6;
  bzero(v7 + 2, 24 * ((24 * v6 - 24) / 0x18uLL) + 24);
  v10 = 0;
  LODWORD(v41[0]) = 0;
  v11 = *(a2 + 24);
  v42 = 0;
  v12 = *a2;
  do
  {
    v13 = v50;
    if (v50 != 8)
    {
      if (v42 != 255)
      {
        if (v50 == 255)
        {
LABEL_105:
          *a2 = v12;
          *(a2 + 24) = v11;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
          v42 = -1;
          goto LABEL_111;
        }

        goto LABEL_18;
      }

      if (v50 != 255)
      {
LABEL_18:
        v46[0] = v41;
        v14 = v49;
        goto LABEL_21;
      }

      *a2 = v12;
      *(a2 + 24) = v11;
LABEL_111:
      __break(0xC471u);
LABEL_112:
      JUMPOUT(0x2258506F0);
    }

    if (v10 >= *v49[0])
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      __break(0xC471u);
      JUMPOUT(0x22585073CLL);
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
      goto LABEL_105;
    }

    v46[0] = v41;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v13, v46, v41, v14);
LABEL_22:
    if (!v42)
    {
      v23 = *v41;
      if (*v41 < 0.0)
      {
        v23 = 0.0;
      }

      if (v23 > 1.0)
      {
        v23 = 1.0;
      }

      v43[0] = v23;
      v44 = 0;
      *v46 = v23;
      v47 = 0;
      v48 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v45, v43);
      v22 = v48;
      if (v48)
      {
        goto LABEL_35;
      }

LABEL_45:
      if (v10 >= *v7)
      {
        *a2 = v12;
        *(a2 + 24) = v11;
        __break(0xC471u);
        JUMPOUT(0x225850784);
      }

      if (LOBYTE(v7[v9]) == 255)
      {
        if (v47 == 255)
        {
          goto LABEL_52;
        }
      }

      else if (v47 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v8);
        LOBYTE(v7[v9]) = -1;
        v24 = v48;
        if (v48 == 255)
        {
          goto LABEL_59;
        }

        goto LABEL_53;
      }

      *v43 = v8;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v47, v43, v8, v46);
LABEL_52:
      v24 = v48;
      if (v48 == 255)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    }

    if (v42 == 1)
    {
      __asm { FCMP            H0, #0 }

      if (_NF)
      {
        _H0 = COERCE_SHORT_FLOAT(0);
      }

      if (_H0 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
      {
        LOWORD(_H0) = COERCE_UNSIGNED_INT(1.0);
      }

      *v43 = _H0;
      v44 = v42;
      *v46 = _H0;
      v47 = v42;
      v48 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v45, v43);
      v22 = v48;
      if (!v48)
      {
        goto LABEL_45;
      }

      goto LABEL_35;
    }

    if (v42 != 2)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_111;
    }

    v25 = *v41;
    if (*v41 < 0.0)
    {
      v25 = 0.0;
    }

    if (v25 > 1.0)
    {
      v25 = 1.0;
    }

    *v43 = v25;
    v44 = 2;
    v46[0] = *&v25;
    v47 = 2;
    v48 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v45, v43);
    v22 = v48;
    if (!v48)
    {
      goto LABEL_45;
    }

LABEL_35:
    if (v22 != 1)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      mpark::throw_bad_variant_access(v20);
    }

    v12 = v46[0];
    if (v46[0])
    {
      atomic_fetch_add_explicit(v46[0], 2u, memory_order_relaxed);
      v11 = 1;
      v24 = v48;
      if (v48 == 255)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v11 = 1;
      v24 = v48;
      if (v48 == 255)
      {
        goto LABEL_59;
      }
    }

LABEL_53:
    if (v24)
    {
      v26 = v46[0];
      v46[0] = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v21);
      }
    }

    else if (v47 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v46);
    }

LABEL_59:
    if (v22)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_94;
    }

    ++v10;
    v8 += 3;
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
LABEL_94:
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
      v21 = (v40 - 16);
      if (*v40 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v21);
      }

      *v40 = -1;
      v40 += 24;
      v39 -= 24;
    }

    while (v39);
  }

  WTF::fastFree(v7, v21);
  if (v50 != 255)
  {
LABEL_85:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v49);
  }
}

void WGSL::constantSign(void *a1@<X1>, uint64_t a2@<X8>)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_144;
  }

  v4 = (v3 + 2);
  LOBYTE(v60[0]) = 0;
  v61 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v57, v60, v3 + 1), v61 = *(v3 + 24), LOBYTE(v57[0]) = 0, v58 = -1, v61 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v61, v54, v57, v60), v58 = v61, v61 == 255))
  {
LABEL_83:
    v31 = *(v3 + 24);
    if (v31 <= 2)
    {
      if (!*(v3 + 24))
      {
        v39 = 0.0;
        if (*v4 < 0.0)
        {
          v39 = -1.0;
        }

        if (*v4 > 0.0)
        {
          v39 = 1.0;
        }

        *v57 = v39;
        v58 = 0;
        *a2 = v39;
        *(a2 + 16) = 0;
LABEL_116:
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v54, v57);
        if (v61 == 255)
        {
          return;
        }

        goto LABEL_117;
      }

      if (v31 == 1)
      {
        __asm { FCMP            H0, #0 }

        v36 = 0;
        if (_NF)
        {
          v36 = COERCE_UNSIGNED_INT(-1.0);
        }

        if (!(_NF ^ _VF | _ZF))
        {
          v36 = COERCE_UNSIGNED_INT(1.0);
        }

        LOWORD(v57[0]) = v36;
        v58 = 1;
        *a2 = v36;
        *(a2 + 16) = 1;
        goto LABEL_116;
      }

      if (v31 == 2)
      {
        v41 = 0.0;
        if (*v4 < 0.0)
        {
          v41 = -1.0;
        }

        if (*v4 > 0.0)
        {
          v41 = 1.0;
        }

        v57[0] = *&v41;
        v58 = 2;
        *a2 = v41;
        *(a2 + 16) = 2;
        goto LABEL_116;
      }

LABEL_139:
      __break(0xC471u);
      JUMPOUT(0x225850F78);
    }

    if (v31 == 5)
    {
      if (*v4 >= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = *v4 >> 63;
      }

      v57[0] = v40;
      v38 = 5;
      v58 = 5;
      *a2 = v40;
    }

    else
    {
      if (v31 == 4)
      {
        v37 = *v4 != 0;
        LODWORD(v57[0]) = v37;
        v38 = 4;
      }

      else
      {
        if (v31 != 3)
        {
          goto LABEL_139;
        }

        if (*v4 >= 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = *v4 >> 31;
        }

        LODWORD(v57[0]) = v37;
        v38 = 3;
      }

      v58 = v38;
      *a2 = v37;
    }

    *(a2 + 16) = v38;
    goto LABEL_116;
  }

  if (v61 != 8 || !v57[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v54, v57);
    goto LABEL_83;
  }

  v6 = *v57[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v54, v57);
  if (!v6)
  {
    goto LABEL_83;
  }

  v7 = WTF::fastMalloc((24 * v6 + 8));
  *v7 = v6;
  v8 = (v7 + 2);
  v9 = 6;
  bzero(v7 + 2, 24 * ((24 * v6 - 24) / 0x18uLL) + 24);
  v10 = 0;
  LODWORD(v52[0]) = 0;
  v11 = *(a2 + 24);
  v53 = 0;
  v12 = *a2;
  do
  {
    v13 = v61;
    if (v61 != 8)
    {
      if (v53 == 255)
      {
        if (v61 == 255)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          goto LABEL_143;
        }
      }

      else if (v61 == 255)
      {
LABEL_137:
        *a2 = v12;
        *(a2 + 24) = v11;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v57, v52);
        v53 = -1;
LABEL_143:
        __break(0xC471u);
LABEL_144:
        JUMPOUT(0x225850F0CLL);
      }

      v57[0] = v52;
      v14 = v60;
      goto LABEL_21;
    }

    if (v10 >= *v60[0])
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      __break(0xC471u);
      JUMPOUT(0x225850F58);
    }

    v14 = (v60[0] + v9 * 4 - 16);
    v13 = *(v60[0] + v9 * 4);
    if (v53 == 255)
    {
      if (v13 == 255)
      {
        goto LABEL_22;
      }
    }

    else if (v13 == 255)
    {
      goto LABEL_137;
    }

    v57[0] = v52;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v13, v57, v52, v14);
LABEL_22:
    if (v53 > 2u)
    {
      switch(v53)
      {
        case 3u:
          if (SLODWORD(v52[0]) >= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = SLODWORD(v52[0]) >> 31;
          }

          LODWORD(v54[0]) = v24;
          v25 = 3;
          goto LABEL_45;
        case 4u:
          v24 = LODWORD(v52[0]) != 0;
          LODWORD(v54[0]) = v24;
          v25 = 4;
LABEL_45:
          v55 = v25;
          LODWORD(v57[0]) = v24;
          goto LABEL_63;
        case 5u:
          if (v52[0] >= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v52[0] >> 63;
          }

          *v54 = v29;
          v25 = 5;
          v55 = 5;
          v57[0] = v29;
LABEL_63:
          v58 = v25;
          v59 = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v54);
          v23 = v59;
          if (!v59)
          {
            goto LABEL_53;
          }

          goto LABEL_64;
      }

LABEL_141:
      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_143;
    }

    if (v53)
    {
      if (v53 == 1)
      {
        __asm { FCMP            H0, #0 }

        if (_NF)
        {
          LOWORD(v20) = COERCE_UNSIGNED_INT(-1.0);
        }

        else
        {
          v20 = COERCE_SHORT_FLOAT(0);
        }

        if (!(_NF ^ _VF | _ZF))
        {
          LOWORD(v20) = COERCE_UNSIGNED_INT(1.0);
        }

        *v54 = v20;
        v55 = v53;
        *v57 = v20;
        v58 = v53;
        v59 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v54);
        v23 = v59;
        if (!v59)
        {
          goto LABEL_53;
        }

        goto LABEL_64;
      }

      if (v53 != 2)
      {
        goto LABEL_141;
      }

      if (*v52 >= 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = -1.0;
      }

      if (*v52 > 0.0)
      {
        v27 = 1.0;
      }

      *v54 = v27;
      v55 = 2;
      v57[0] = *&v27;
      v58 = 2;
      v59 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v54);
      v23 = v59;
      if (v59)
      {
        goto LABEL_64;
      }

LABEL_53:
      if (v10 >= *v7)
      {
        *a2 = v12;
        *(a2 + 24) = v11;
        __break(0xC471u);
        JUMPOUT(0x225850FA0);
      }

      if (LOBYTE(v7[v9]) == 255)
      {
        if (v58 == 255)
        {
          goto LABEL_70;
        }
      }

      else if (v58 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v54, v8);
        LOBYTE(v7[v9]) = -1;
        v28 = v59;
        if (v59 == 255)
        {
          goto LABEL_77;
        }

        goto LABEL_71;
      }

      *v54 = v8;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v58, v54, v8, v57);
LABEL_70:
      v28 = v59;
      if (v59 == 255)
      {
        goto LABEL_77;
      }

      goto LABEL_71;
    }

    v26 = 0.0;
    if (*v52 < 0.0)
    {
      v26 = -1.0;
    }

    if (*v52 > 0.0)
    {
      v26 = 1.0;
    }

    v54[0] = v26;
    v55 = 0;
    *v57 = v26;
    v58 = 0;
    v59 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v56, v54);
    v23 = v59;
    if (!v59)
    {
      goto LABEL_53;
    }

LABEL_64:
    if (v23 != 1)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      mpark::throw_bad_variant_access(v21);
    }

    v12 = v57[0];
    if (v57[0])
    {
      atomic_fetch_add_explicit(v57[0], 2u, memory_order_relaxed);
      v11 = 1;
      v28 = v59;
      if (v59 == 255)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v11 = 1;
      v28 = v59;
      if (v59 == 255)
      {
        goto LABEL_77;
      }
    }

LABEL_71:
    if (v28)
    {
      v30 = v57[0];
      v57[0] = 0;
      if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v30, v22);
      }
    }

    else if (v58 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v54, v57);
    }

LABEL_77:
    if (v23)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_126;
    }

    ++v10;
    v8 += 3;
    v9 += 6;
  }

  while (v6 != v10);
  v42 = *v7;
  v43 = 24 * v42;
  v44 = WTF::fastMalloc((24 * v42 + 8));
  v45 = v44;
  *v44 = v42;
  if (v42)
  {
    v46 = (v44 + 6);
    v47 = (v7 + 6);
    do
    {
      *(v46 - 16) = 0;
      *v46 = -1;
      v48 = *v47;
      if (v48 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v48, v57, v46 - 2, v47 - 2);
        *v46 = *v47;
      }

      v46 += 3;
      v47 += 3;
      v43 -= 24;
    }

    while (v43);
  }

  v58 = 8;
  v57[0] = 0;
  *a2 = v45;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v54, v57);
LABEL_126:
  if (v53 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v57, v52);
  }

  v49 = *v7;
  if (v49)
  {
    v50 = 24 * v49;
    v51 = v7 + 6;
    do
    {
      v22 = (v51 - 16);
      if (*v51 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v57, v22);
      }

      *v51 = -1;
      v51 += 24;
      v50 -= 24;
    }

    while (v50);
  }

  WTF::fastFree(v7, v22);
  if (v61 != 255)
  {
LABEL_117:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v57, v60);
  }
}

void WGSL::constantSmoothstep(unsigned int **a1@<X1>, uint64_t a2@<X8>)
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x225851A1CLL);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x225851A3CLL);
  }

  if (v4 <= 2)
  {
    __break(0xC471u);
    JUMPOUT(0x225851A5CLL);
  }

  LOBYTE(v75[0]) = 0;
  v76 = -1;
  v5 = *(v3 + 24);
  if (v5 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v63, v75, v3 + 1);
    v76 = *(v3 + 24);
  }

  v6 = (v3 + 8);
  LOBYTE(v77[0]) = 0;
  v78 = -1;
  v7 = *(v3 + 48);
  if (v7 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v63, v77, v3 + 4);
    v78 = *(v3 + 48);
  }

  v8 = (v3 + 14);
  LOBYTE(v79[0]) = 0;
  v80 = -1;
  v9 = *(v3 + 72);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, v63, v79, v3 + 7);
    v80 = *(v3 + 72);
  }

  LOBYTE(v63[0]) = 0;
  v64 = -1;
  if (v76 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v76, v72, v63, v75);
    v64 = v76;
    if (v76 != 255)
    {
      if (v76 == 8)
      {
        goto LABEL_22;
      }

      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v72, v63);
    }
  }

  LOBYTE(v63[0]) = 0;
  v64 = -1;
  if (v78 == 255)
  {
    goto LABEL_18;
  }

  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v78, v72, v63, v77);
  v64 = v78;
  if (v78 != 8)
  {
    if (v78 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v72, v63);
    }

LABEL_18:
    LOBYTE(v63[0]) = 0;
    v64 = -1;
    v10 = v80;
    if (v80 == 255)
    {
      goto LABEL_111;
    }

    v10 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v80, v72, v63, v79);
    v64 = v80;
    if (v80 != 8)
    {
      if (v80 != 255)
      {
        goto LABEL_110;
      }

      goto LABEL_111;
    }
  }

LABEL_22:
  if (!v63[0])
  {
LABEL_110:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v72, v63);
    goto LABEL_111;
  }

  v11 = *v63[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v72, v63);
  if (!v11)
  {
LABEL_111:
    v46 = *(v3 + 24);
    if (v46 == 2)
    {
      if (*(v3 + 48) == 2)
      {
        v54 = *(v3 + 72);
        if (v54 == 2)
        {
          v55 = (*v8 - *(v3 + 1)) / (*v6 - *(v3 + 1));
          if (v55 < 0.0)
          {
            v55 = 0.0;
          }

          if (v55 > 1.0)
          {
            v55 = 1.0;
          }

          v56 = v55 * v55 * (v55 * -2.0 + 3.0);
          *v63 = v56;
LABEL_132:
          v64 = v54;
          *a2 = v56;
          *(a2 + 16) = v54;
          *(a2 + 24) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v72, v63);
          if (v80 == 255)
          {
            goto LABEL_134;
          }

          goto LABEL_133;
        }
      }

      goto LABEL_155;
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
          FCVT            S2, H2
          FCVT            S0, H0
        }

        v52 = _S2 - _S0;
        __asm { FCVT            S1, H1 }

LABEL_127:
        v57 = v52 / (_S1 - _S0);
        if (v57 < 0.0)
        {
          v57 = 0.0;
        }

        if (v57 > 1.0)
        {
          v57 = 1.0;
        }

        v56 = (v57 * -2.0 + 3.0) * (v57 * v57);
        *v63 = v56;
        LOBYTE(v54) = 2;
        goto LABEL_132;
      }

      goto LABEL_155;
    }

    if (!*(v3 + 24))
    {
      if (!*(v3 + 48) && !*(v3 + 72))
      {
        _S0 = *(v3 + 2);
        _S1 = *v6;
        v52 = *v8 - _S0;
        goto LABEL_127;
      }

LABEL_155:
      mpark::throw_bad_variant_access(v10);
    }

    __break(0xC471u);
LABEL_163:
    JUMPOUT(0x2258519CCLL);
  }

  v12 = WTF::fastMalloc((24 * v11 + 8));
  *v12 = v11;
  v13 = v12 + 2;
  v14 = 24;
  bzero(v12 + 2, 24 * ((24 * v11 - 24) / 0x18uLL) + 24);
  v15 = 0;
  v64 = 0;
  LODWORD(v65[0]) = 0;
  v66 = 0;
  LODWORD(v67[0]) = 0;
  v68 = 0;
  v16 = *a2;
  v61 = a2;
  v62 = *(a2 + 24);
  LODWORD(v63[0]) = 0;
  do
  {
    v17 = v76;
    if (v76 == 8)
    {
      if (v15 >= *v75[0])
      {
        goto LABEL_156;
      }

      v18 = (v75[0] + v14 - 16);
      v17 = *(v75[0] + v14);
      if (v64 == 255)
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

      v72[0] = v63;
    }

    else
    {
      if (v64 == 255)
      {
        if (v76 == 255)
        {
          goto LABEL_38;
        }
      }

      else if (v76 == 255)
      {
LABEL_32:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v72, v63);
        v64 = -1;
        goto LABEL_38;
      }

      v72[0] = v63;
      v18 = v75;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v72, v63, v18);
LABEL_38:
    v19 = v78;
    if (v78 == 8)
    {
      if (v15 >= *v77[0])
      {
        goto LABEL_156;
      }

      v20 = (v77[0] + v14 - 16);
      v19 = *(v77[0] + v14);
      if (v66 == 255)
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

      v72[0] = v65;
    }

    else
    {
      if (v66 == 255)
      {
        if (v78 == 255)
        {
          goto LABEL_51;
        }
      }

      else if (v78 == 255)
      {
LABEL_45:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v72, v65);
        v66 = -1;
        goto LABEL_51;
      }

      v72[0] = v65;
      v20 = v77;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v19, v72, v65, v20);
LABEL_51:
    v10 = v80;
    if (v80 == 8)
    {
      if (v15 >= *v79[0])
      {
LABEL_156:
        *v61 = v16;
        *(v61 + 24) = v62;
        __break(0xC471u);
        goto LABEL_163;
      }

      v21 = (v79[0] + v14 - 16);
      v10 = *(v79[0] + v14);
      if (v68 == 255)
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

      v72[0] = v67;
    }

    else
    {
      if (v68 == 255)
      {
        if (v80 == 255)
        {
          goto LABEL_64;
        }
      }

      else if (v80 == 255)
      {
LABEL_58:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v72, v67);
        v68 = -1;
        goto LABEL_64;
      }

      v72[0] = v67;
      v21 = v79;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v10, v72, v67, v21);
LABEL_64:
    if (!v64)
    {
      if (v66 || v68)
      {
        goto LABEL_154;
      }

      _S0 = *v63;
      _S1 = *v65;
      v31 = *v67 - *v63;
      goto LABEL_72;
    }

    if (v64 == 1)
    {
      if (v66 != 1 || v68 != 1)
      {
        goto LABEL_154;
      }

      _H0 = v63[0];
      _H1 = v65[0];
      _H2 = v67[0];
      __asm
      {
        FCVT            S2, H2
        FCVT            S0, H0
      }

      v31 = _S2 - _S0;
      __asm { FCVT            S1, H1 }

LABEL_72:
      v33 = v31 / (_S1 - _S0);
      if (v33 < 0.0)
      {
        v33 = 0.0;
      }

      if (v33 > 1.0)
      {
        v33 = 1.0;
      }

      v34 = (v33 * -2.0 + 3.0) * (v33 * v33);
      goto LABEL_85;
    }

    if (v64 != 2)
    {
      *v61 = v16;
      *(v61 + 24) = v62;
      __break(0xC471u);
      JUMPOUT(0x225851A8CLL);
    }

    if (v66 != 2 || v68 != 2)
    {
LABEL_154:
      *v61 = v16;
      *(v61 + 24) = v62;
      goto LABEL_155;
    }

    v35 = (*v67 - *v63) / (*v65 - *v63);
    if (v35 < 0.0)
    {
      v35 = 0.0;
    }

    if (v35 > 1.0)
    {
      v35 = 1.0;
    }

    v34 = v35 * v35 * (v35 * -2.0 + 3.0);
LABEL_85:
    v69[0] = *&v34;
    v70 = 2;
    v72[0] = *&v34;
    v73 = 2;
    v74 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v71, v69);
    v37 = v74;
    if (v74)
    {
      if (v74 != 1)
      {
        goto LABEL_154;
      }

      v16 = v72[0];
      if (v72[0])
      {
        atomic_fetch_add_explicit(v72[0], 2u, memory_order_relaxed);
      }

      v62 = 1;
    }

    else
    {
      if (v15 >= *v12)
      {
        *v61 = v16;
        *(v61 + 24) = v62;
        __break(0xC471u);
        JUMPOUT(0x2258519FCLL);
      }

      if (LOBYTE(v12[v14 / 4]) == 255)
      {
        if (v73 == 255)
        {
          goto LABEL_96;
        }
      }

      else if (v73 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v69, v13);
        LOBYTE(v12[v14 / 4]) = -1;
        goto LABEL_96;
      }

      v69[0] = v13;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v73, v69, v13, v72);
    }

LABEL_96:
    if (v74 != 255)
    {
      if (v74)
      {
        v38 = v72[0];
        v72[0] = 0;
        if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v38, v36);
        }
      }

      else if (v73 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v69, v72);
      }
    }

    if (v37)
    {
      *v61 = v16;
      *(v61 + 24) = v62;
      if (v68 != 255)
      {
        goto LABEL_140;
      }

      goto LABEL_141;
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
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v45, v72, v43 - 2, v44 - 2);
        *v43 = *v44;
      }

      v43 += 3;
      v44 += 3;
      v40 -= 24;
    }

    while (v40);
  }

  v73 = 8;
  v72[0] = 0;
  *v61 = v42;
  *(v61 + 16) = 8;
  *(v61 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v69, v72);
  if (v68 != 255)
  {
LABEL_140:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v72, v67);
  }

LABEL_141:
  v68 = -1;
  if (v66 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v72, v65);
  }

  v66 = -1;
  if (v64 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v72, v63);
  }

  v58 = *v12;
  if (v58)
  {
    v59 = 24 * v58;
    v60 = v12 + 6;
    do
    {
      v36 = (v60 - 16);
      if (*v60 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v63, v36);
      }

      *v60 = -1;
      v60 += 24;
      v59 -= 24;
    }

    while (v59);
  }

  WTF::fastFree(v12, v36);
  if (v80 != 255)
  {
LABEL_133:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v63, v79);
  }

LABEL_134:
  v80 = -1;
  if (v78 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v63, v77);
  }

  v78 = -1;
  if (v76 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v63, v75);
  }
}

void WGSL::constantSqrt(void *a1@<X1>, uint64_t a2@<X8>)
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
      v46[0] = COERCE_WTF_STRINGIMPL_(sqrt(*v4));
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
          JUMPOUT(0x2258520BCLL);
        }

        LODWORD(v46[0]) = sqrtf(*v4);
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

      _S0 = sqrtf(_S0);
      __asm { FCVT            H0, S0 }

      LOWORD(v46[0]) = LOWORD(_S0);
      v47 = 1;
      *a2 = LOWORD(_S0);
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
  v11 = *(a2 + 24);
  v42 = 0;
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
        JUMPOUT(0x225852050);
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
      JUMPOUT(0x22585209CLL);
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

        _S0 = sqrtf(_S0);
        __asm { FCVT            H0, S0 }

        LOWORD(v43[0]) = LOWORD(_S0);
        v44 = 1;
        LOWORD(v46[0]) = LOWORD(_S0);
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
        v43[0] = COERCE__BYTE_(sqrt(*v41));
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
          JUMPOUT(0x2258520E4);
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

    LODWORD(v43[0]) = sqrtf(*v41);
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

void WGSL::constantStep(int **a1@<X1>, uint64_t a2@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x225852890);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x2258528B0);
  }

  v5 = (v3 + 2);
  LOBYTE(v51[0]) = 0;
  v52 = -1;
  v6 = *(v3 + 24);
  if (v6 == 255)
  {
    v7 = 255;
  }

  else
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v41, v51, v3 + 1);
    v7 = *(v3 + 24);
    v52 = *(v3 + 24);
  }

  v8 = (v3 + 8);
  LOBYTE(v53[0]) = 0;
  v54 = -1;
  v9 = *(v3 + 48);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, v41, v53, v3 + 4);
    v54 = *(v3 + 48);
    v7 = v52;
  }

  LOBYTE(v41[0]) = 0;
  v42 = -1;
  if (v7 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v48, v41, v51), v42 = v52, v52 == 255))
  {
LABEL_12:
    LOBYTE(v41[0]) = 0;
    v42 = -1;
    v10 = v54;
    if (v54 == 255)
    {
      goto LABEL_83;
    }

    v10 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v54, v48, v41, v53);
    v42 = v54;
    if (v54 != 8)
    {
      if (v54 != 255)
      {
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    goto LABEL_16;
  }

  if (v52 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v48, v41);
    goto LABEL_12;
  }

LABEL_16:
  if (!v41[0])
  {
LABEL_82:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v48, v41);
    goto LABEL_83;
  }

  v11 = *v41[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v48, v41);
  if (!v11)
  {
LABEL_83:
    v33 = *(v3 + 24);
    if (v33 == 2)
    {
      v35 = *(v3 + 48);
      if (v35 == 2)
      {
        v36 = 0.0;
        if (*v5 <= *v8)
        {
          v36 = 1.0;
        }

        *v41 = v36;
LABEL_97:
        v42 = v35;
        *a2 = v36;
        *(a2 + 16) = v35;
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v48, v41);
        if (v54 == 255)
        {
          goto LABEL_99;
        }

        goto LABEL_98;
      }

      goto LABEL_116;
    }

    if (v33 == 1)
    {
      if (*(v3 + 48) == 1)
      {
        v34 = *v5 > *v8;
LABEL_94:
        v36 = 0.0;
        if (!v34)
        {
          v36 = 1.0;
        }

        *v41 = v36;
        LOBYTE(v35) = 2;
        goto LABEL_97;
      }

      goto LABEL_116;
    }

    if (!*(v3 + 24))
    {
      if (!*(v3 + 48))
      {
        v34 = *v5 > *v8;
        goto LABEL_94;
      }

LABEL_116:
      mpark::throw_bad_variant_access(v10);
    }

    __break(0xC471u);
LABEL_123:
    JUMPOUT(0x225852870);
  }

  v12 = WTF::fastMalloc((24 * v11 + 8));
  *v12 = v11;
  v13 = v12 + 2;
  v14 = 24;
  bzero(v12 + 2, 24 * ((24 * v11 - 24) / 0x18uLL) + 24);
  v15 = 0;
  v42 = 0;
  LODWORD(v43[0]) = 0;
  v44 = 0;
  v16 = *a2;
  v40 = *(a2 + 24);
  LODWORD(v41[0]) = 0;
  do
  {
    v17 = v52;
    if (v52 == 8)
    {
      if (v15 >= *v51[0])
      {
        goto LABEL_117;
      }

      v18 = (v51[0] + v14 - 16);
      v17 = *(v51[0] + v14);
      if (v42 == 255)
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

      v48[0] = v41;
    }

    else
    {
      if (v42 == 255)
      {
        if (v52 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v52 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v48, v41);
        v42 = -1;
        goto LABEL_32;
      }

      v48[0] = v41;
      v18 = v51;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v48, v41, v18);
LABEL_32:
    v19 = v54;
    if (v54 == 8)
    {
      if (v15 >= *v53[0])
      {
LABEL_117:
        *a2 = v16;
        *(a2 + 24) = v40;
        __break(0xC471u);
        goto LABEL_123;
      }

      v20 = (v53[0] + v14 - 16);
      v19 = *(v53[0] + v14);
      if (v44 == 255)
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

      v48[0] = v43;
    }

    else
    {
      if (v44 == 255)
      {
        if (v54 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v54 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v48, v43);
        v44 = -1;
        goto LABEL_45;
      }

      v48[0] = v43;
      v20 = v53;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v19, v48, v43, v20);
LABEL_45:
    if (v42)
    {
      if (v42 == 1)
      {
        if (v44 != 1)
        {
          goto LABEL_115;
        }

        v21 = *v41 > *v43;
      }

      else
      {
        if (v42 != 2)
        {
          *a2 = v16;
          *(a2 + 24) = v40;
          __break(0xC471u);
          JUMPOUT(0x225852908);
        }

        if (v44 != 2)
        {
LABEL_115:
          *a2 = v16;
          *(a2 + 24) = v40;
          mpark::throw_bad_variant_access(v19);
        }

        v21 = *v41 > *v43;
      }
    }

    else
    {
      if (v44)
      {
        goto LABEL_115;
      }

      v21 = *v41 > *v43;
    }

    if (v21)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = 1.0;
    }

    v45[0] = *&v22;
    v46 = 2;
    v48[0] = *&v22;
    v49 = 2;
    v50 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v47, v45);
    v24 = v50;
    if (v50)
    {
      if (v50 != 1)
      {
        goto LABEL_115;
      }

      v16 = v48[0];
      if (v48[0])
      {
        atomic_fetch_add_explicit(v48[0], 2u, memory_order_relaxed);
      }

      v40 = 1;
    }

    else
    {
      if (v15 >= *v12)
      {
        *a2 = v16;
        *(a2 + 24) = v40;
        __break(0xC471u);
        JUMPOUT(0x2258528DCLL);
      }

      if (LOBYTE(v12[v14 / 4]) == 255)
      {
        if (v49 == 255)
        {
          goto LABEL_68;
        }
      }

      else if (v49 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v45, v13);
        LOBYTE(v12[v14 / 4]) = -1;
        goto LABEL_68;
      }

      v45[0] = v13;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v49, v45, v13, v48);
    }

LABEL_68:
    if (v50 != 255)
    {
      if (v50)
      {
        v25 = v48[0];
        v48[0] = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v23);
        }
      }

      else if (v49 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v45, v48);
      }
    }

    if (v24)
    {
      *a2 = v16;
      *(a2 + 24) = v40;
      if (v44 != 255)
      {
        goto LABEL_103;
      }

      goto LABEL_104;
    }

    ++v15;
    v13 += 24;
    v14 += 24;
  }

  while (v11 != v15);
  v26 = *v12;
  v27 = 24 * v26;
  v28 = WTF::fastMalloc((24 * v26 + 8));
  v29 = v28;
  *v28 = v26;
  if (v26)
  {
    v30 = (v28 + 6);
    v31 = (v12 + 6);
    do
    {
      *(v30 - 16) = 0;
      *v30 = -1;
      v32 = *v31;
      if (v32 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v32, v48, v30 - 2, v31 - 2);
        *v30 = *v31;
      }

      v30 += 3;
      v31 += 3;
      v27 -= 24;
    }

    while (v27);
  }

  v49 = 8;
  v48[0] = 0;
  *a2 = v29;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v45, v48);
  if (v44 != 255)
  {
LABEL_103:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v48, v43);
  }

LABEL_104:
  v44 = -1;
  if (v42 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v48, v41);
  }

  v37 = *v12;
  if (v37)
  {
    v38 = 24 * v37;
    v39 = v12 + 6;
    do
    {
      v23 = (v39 - 16);
      if (*v39 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v23);
      }

      *v39 = -1;
      v39 += 24;
      v38 -= 24;
    }

    while (v38);
  }

  WTF::fastFree(v12, v23);
  if (v54 != 255)
  {
LABEL_98:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v53);
  }

LABEL_99:
  v54 = -1;
  if (v52 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v41, v51);
  }
}

void WGSL::constantTranspose(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (!**a2)
  {
    __break(0xC471u);
LABEL_47:
    JUMPOUT(0x225852C0CLL);
  }

  if (*(v4 + 24) != 9)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v6 * v5;
  if (v6 * v5)
  {
    v8 = v4[2];
    v9 = WTF::fastMalloc((24 * v7 + 8));
    *v9 = v7;
    bzero(v9 + 1, 24 * ((24 * v7 - 24) / 0x18) + 24);
    v5 = v8;
    v10 = (v6 | (v8 << 32));
    if (v6)
    {
      v11 = v5 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
LABEL_15:
      v33 = v10;
      v34 = a3;
      v15 = 0;
      v16 = 0;
      v35 = v5;
      while (1)
      {
        v17 = v15;
        v18 = &v9[3 * v15 + 3];
        v19 = v16;
        v36 = v15;
        v20 = v5;
        do
        {
          while (1)
          {
            v21 = *(v4 + 2);
            if (*v21 <= v19)
            {
              __break(0xC471u);
              goto LABEL_47;
            }

            if (v17 >= *v9)
            {
              __break(0xC471u);
              JUMPOUT(0x225852C2CLL);
            }

            v22 = &v21[6 * v19];
            v23 = *(v22 + 24);
            if (*v18 != 255)
            {
              break;
            }

            if (v23 != 255)
            {
              goto LABEL_19;
            }

LABEL_20:
            v18 += 3;
            ++v17;
            v19 += v6;
            if (!--v20)
            {
              goto LABEL_16;
            }
          }

          if (v23 != 255)
          {
LABEL_19:
            v37[0] = v18 - 2;
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v23, v37, v18 - 2, v22 + 1);
            goto LABEL_20;
          }

          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v18 - 16);
          *v18 = -1;
          v18 += 3;
          ++v17;
          v19 += v6;
          --v20;
        }

        while (v20);
LABEL_16:
        ++v16;
        v5 = v35;
        v15 = v36 + v35;
        if (v16 == v6)
        {
          v10 = v33;
          a3 = v34;
          v37[0] = v33;
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = (v6 | (v5 << 32));
    if (v6)
    {
      v14 = v5 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      goto LABEL_15;
    }
  }

  v37[0] = v10;
  if (v9)
  {
LABEL_28:
    v24 = *v9;
    v13 = 24 * v24;
    v25 = WTF::fastMalloc((24 * v24 + 8));
    v12 = v25;
    *v25 = v24;
    if (v24)
    {
      v26 = (v25 + 6);
      v27 = v9 + 3;
      do
      {
        *(v26 - 16) = 0;
        *v26 = -1;
        v28 = *v27;
        if (v28 != 255)
        {
          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v28, &v39, v26 - 2, v27 - 2);
          *v26 = *v27;
        }

        v26 += 3;
        v27 += 3;
        v13 -= 24;
      }

      while (v13);
      v10 = v37[0];
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    v12 = 0;
    LOBYTE(v13) = 1;
  }

  v38 = 9;
  v37[1] = 0;
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = 9;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v39, v37);
  if ((v13 & 1) == 0)
  {
    v30 = *v9;
    if (v30)
    {
      v31 = 24 * v30;
      v32 = v9 + 3;
      do
      {
        v29 = v32 - 16;
        if (*v32 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v29);
        }

        *v32 = -1;
        v32 += 24;
        v31 -= 24;
      }

      while (v31);
    }

    WTF::fastFree(v9, v29);
  }
}

void WGSL::constantTrunc(void *a1@<X1>, uint64_t a2@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_88;
  }

  v4 = (v3 + 2);
  LOBYTE(v39[0]) = 0;
  v40 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v36, v39, v3 + 1), v40 = *(v3 + 24), LOBYTE(v36[0]) = 0, v37 = -1, v40 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v40, v33, v36, v39), v37 = v40, v40 == 255))
  {
LABEL_53:
    v20 = *(v3 + 24);
    if (v20 == 2)
    {
      v36[0] = COERCE_WTF_STRINGIMPL_(trunc(*v4));
      v37 = 2;
      *a2 = v36[0];
    }

    else
    {
      if (v20 != 1)
      {
        if (*(v3 + 24))
        {
          __break(0xC471u);
          JUMPOUT(0x22585324CLL);
        }

        LODWORD(v36[0]) = truncf(*v4);
        v37 = 0;
        *a2 = v36[0];
        *(a2 + 16) = 0;
LABEL_60:
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v33, v36);
        if (v40 == 255)
        {
          return;
        }

        goto LABEL_61;
      }

      LOWORD(v36[0]) = truncl(*v4);
      v37 = 1;
      *a2 = v36[0];
    }

    *(a2 + 16) = v20;
    goto LABEL_60;
  }

  if (v40 != 8 || !v36[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v33, v36);
    goto LABEL_53;
  }

  v6 = *v36[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v33, v36);
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
  LODWORD(v31[0]) = 0;
  v11 = *(a2 + 24);
  v32 = 0;
  v12 = *a2;
  do
  {
    v13 = v40;
    if (v40 != 8)
    {
      if (v32 == 255)
      {
        if (v40 == 255)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          goto LABEL_87;
        }
      }

      else if (v40 == 255)
      {
LABEL_81:
        *a2 = v12;
        *(a2 + 24) = v11;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v36, v31);
        v32 = -1;
LABEL_87:
        __break(0xC471u);
LABEL_88:
        JUMPOUT(0x2258531E0);
      }

      v36[0] = v31;
      v14 = v39;
      goto LABEL_21;
    }

    if (v10 >= *v39[0])
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      __break(0xC471u);
      JUMPOUT(0x22585322CLL);
    }

    v14 = (v39[0] + v9 * 4 - 16);
    v13 = *(v39[0] + v9 * 4);
    if (v32 == 255)
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

    v36[0] = v31;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v13, v36, v31, v14);
LABEL_22:
    if (v32)
    {
      if (v32 == 1)
      {
        LOWORD(v33[0]) = truncl(*v31);
        v34 = 1;
        LOWORD(v36[0]) = v33[0];
        v37 = 1;
        v38 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v35, v33);
        v17 = v38;
        if (!v38)
        {
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      if (v32 == 2)
      {
        v33[0] = COERCE__BYTE_(trunc(*v31));
        v34 = 2;
        v36[0] = v33[0];
        v37 = 2;
        v38 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v35, v33);
        v17 = v38;
        if (v38)
        {
          goto LABEL_27;
        }

LABEL_33:
        if (v10 >= *v7)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          __break(0xC471u);
          JUMPOUT(0x225853274);
        }

        if (LOBYTE(v7[v9]) == 255)
        {
          if (v37 == 255)
          {
            goto LABEL_40;
          }
        }

        else if (v37 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v33, v8);
          LOBYTE(v7[v9]) = -1;
          v18 = v38;
          if (v38 == 255)
          {
            goto LABEL_47;
          }

          goto LABEL_41;
        }

        v33[0] = v8;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v37, v33, v8, v36);
LABEL_40:
        v18 = v38;
        if (v38 == 255)
        {
          goto LABEL_47;
        }

        goto LABEL_41;
      }

      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_87;
    }

    LODWORD(v33[0]) = truncf(*v31);
    v34 = 0;
    LODWORD(v36[0]) = v33[0];
    v37 = 0;
    v38 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v35, v33);
    v17 = v38;
    if (!v38)
    {
      goto LABEL_33;
    }

LABEL_27:
    if (v17 != 1)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      mpark::throw_bad_variant_access(v15);
    }

    v12 = v36[0];
    if (v36[0])
    {
      atomic_fetch_add_explicit(v36[0], 2u, memory_order_relaxed);
      v11 = 1;
      v18 = v38;
      if (v38 == 255)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v11 = 1;
      v18 = v38;
      if (v38 == 255)
      {
        goto LABEL_47;
      }
    }

LABEL_41:
    if (v18)
    {
      v19 = v36[0];
      v36[0] = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v16);
      }
    }

    else if (v37 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v33, v36);
    }

LABEL_47:
    if (v17)
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
  v21 = *v7;
  v22 = 24 * v21;
  v23 = WTF::fastMalloc((24 * v21 + 8));
  v24 = v23;
  *v23 = v21;
  if (v21)
  {
    v25 = (v23 + 6);
    v26 = (v7 + 6);
    do
    {
      *(v25 - 16) = 0;
      *v25 = -1;
      v27 = *v26;
      if (v27 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v27, v36, v25 - 2, v26 - 2);
        *v25 = *v26;
      }

      v25 += 3;
      v26 += 3;
      v22 -= 24;
    }

    while (v22);
  }

  v37 = 8;
  v36[0] = 0;
  *a2 = v24;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v33, v36);
LABEL_70:
  if (v32 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v36, v31);
  }

  v28 = *v7;
  if (v28)
  {
    v29 = 24 * v28;
    v30 = v7 + 6;
    do
    {
      v16 = (v30 - 16);
      if (*v30 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v36, v16);
      }

      *v30 = -1;
      v30 += 24;
      v29 -= 24;
    }

    while (v29);
  }

  WTF::fastFree(v7, v16);
  if (v40 != 255)
  {
LABEL_61:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v36, v39);
  }
}

void WGSL::constantPack4x8snorm(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (!**a2)
  {
    goto LABEL_13;
  }

  if (*(v3 + 24) != 8)
  {
    goto LABEL_12;
  }

  v4 = *(v3 + 1);
  v5 = *v4;
  if (!*v4)
  {
    goto LABEL_13;
  }

  if (*(v4 + 24))
  {
    goto LABEL_12;
  }

  if (v5 == 1)
  {
    goto LABEL_13;
  }

  if (*(v4 + 48))
  {
    goto LABEL_12;
  }

  if (v5 == 2)
  {
    goto LABEL_13;
  }

  if (*(v4 + 72))
  {
    goto LABEL_12;
  }

  if (v5 == 3)
  {
LABEL_13:
    __break(0xC471u);
    JUMPOUT(0x225853404);
  }

  if (*(v4 + 96))
  {
LABEL_12:
    mpark::throw_bad_variant_access(a1);
  }

  v6[0] = (vcvtmd_s64_f64((fminf(fmaxf(*(v4 + 14), -1.0), 1.0) * 127.0) + 0.5) << 16) | (vcvtmd_s64_f64((fminf(fmaxf(*(v4 + 20), -1.0), 1.0) * 127.0) + 0.5) << 24) | (vcvtmd_s64_f64((fminf(fmaxf(*(v4 + 8), -1.0), 1.0) * 127.0) + 0.5) << 8) | vcvtmd_s64_f64((fminf(fmaxf(*(v4 + 2), -1.0), 1.0) * 127.0) + 0.5);
  v7 = 4;
  *a3 = v6[0];
  *(a3 + 16) = 4;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v8, v6);
}

void WGSL::constantPack4x8unorm(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (!**a2)
  {
    goto LABEL_13;
  }

  if (*(v3 + 24) != 8)
  {
    goto LABEL_12;
  }

  v4 = *(v3 + 1);
  v5 = *v4;
  if (!*v4)
  {
    goto LABEL_13;
  }

  if (*(v4 + 24))
  {
    goto LABEL_12;
  }

  if (v5 == 1)
  {
    goto LABEL_13;
  }

  if (*(v4 + 48))
  {
    goto LABEL_12;
  }

  if (v5 == 2)
  {
    goto LABEL_13;
  }

  if (*(v4 + 72))
  {
    goto LABEL_12;
  }

  if (v5 == 3)
  {
LABEL_13:
    __break(0xC471u);
    JUMPOUT(0x225853578);
  }

  if (*(v4 + 96))
  {
LABEL_12:
    mpark::throw_bad_variant_access(a1);
  }

  v6[0] = (vcvtmd_s64_f64((fminf(fmaxf(*(v4 + 14), 0.0), 1.0) * 255.0) + 0.5) << 16) | (vcvtmd_s64_f64((fminf(fmaxf(*(v4 + 20), 0.0), 1.0) * 255.0) + 0.5) << 24) | (vcvtmd_s64_f64((fminf(fmaxf(*(v4 + 8), 0.0), 1.0) * 255.0) + 0.5) << 8) | vcvtmd_s64_f64((fminf(fmaxf(*(v4 + 2), 0.0), 1.0) * 255.0) + 0.5);
  v7 = 4;
  *a3 = v6[0];
  *(a3 + 16) = 4;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v8, v6);
}

void WGSL::constantPack4xI8(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (!**a2)
  {
    goto LABEL_13;
  }

  if (*(v3 + 24) != 8)
  {
    goto LABEL_12;
  }

  v4 = *(v3 + 1);
  v5 = *v4;
  if (!*v4)
  {
    goto LABEL_13;
  }

  if (*(v4 + 24) != 3)
  {
    goto LABEL_12;
  }

  if (v5 == 1)
  {
    goto LABEL_13;
  }

  if (*(v4 + 48) != 3)
  {
    goto LABEL_12;
  }

  if (v5 == 2)
  {
    goto LABEL_13;
  }

  if (*(v4 + 72) != 3)
  {
    goto LABEL_12;
  }

  if (v5 == 3)
  {
LABEL_13:
    __break(0xC471u);
    JUMPOUT(0x225853688);
  }

  if (*(v4 + 96) != 3)
  {
LABEL_12:
    mpark::throw_bad_variant_access(a1);
  }

  v6[0] = (v4[14] << 16) | (v4[20] << 24) | (v4[8] << 8) | *(v4 + 8);
  v7 = 4;
  *a3 = v6[0];
  *(a3 + 16) = 4;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v8, v6);
}

void WGSL::constantPack4xU8(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (!**a2)
  {
    goto LABEL_13;
  }

  if (*(v3 + 24) != 8)
  {
    goto LABEL_12;
  }

  v4 = *(v3 + 1);
  v5 = *v4;
  if (!*v4)
  {
    goto LABEL_13;
  }

  if (*(v4 + 24) != 4)
  {
    goto LABEL_12;
  }

  if (v5 == 1)
  {
    goto LABEL_13;
  }

  if (*(v4 + 48) != 4)
  {
    goto LABEL_12;
  }

  if (v5 == 2)
  {
    goto LABEL_13;
  }

  if (*(v4 + 72) != 4)
  {
    goto LABEL_12;
  }

  if (v5 == 3)
  {
LABEL_13:
    __break(0xC471u);
    JUMPOUT(0x225853798);
  }

  if (*(v4 + 96) != 4)
  {
LABEL_12:
    mpark::throw_bad_variant_access(a1);
  }

  v6[0] = (v4[14] << 16) | (v4[20] << 24) | (v4[8] << 8) | *(v4 + 8);
  v7 = 4;
  *a3 = v6[0];
  *(a3 + 16) = 4;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v8, v6);
}

void WGSL::constantPack4xI8Clamp(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (!**a2)
  {
    goto LABEL_29;
  }

  if (*(v3 + 24) != 8)
  {
    goto LABEL_28;
  }

  v4 = *(v3 + 1);
  v5 = *v4;
  if (!*v4)
  {
    goto LABEL_29;
  }

  if (*(v4 + 24) != 3)
  {
    goto LABEL_28;
  }

  if (v5 == 1)
  {
    goto LABEL_29;
  }

  if (*(v4 + 48) != 3)
  {
    goto LABEL_28;
  }

  if (v5 == 2)
  {
    goto LABEL_29;
  }

  if (*(v4 + 72) != 3)
  {
    goto LABEL_28;
  }

  if (v5 == 3)
  {
LABEL_29:
    __break(0xC471u);
    JUMPOUT(0x2258538F0);
  }

  if (*(v4 + 96) != 3)
  {
LABEL_28:
    mpark::throw_bad_variant_access(a1);
  }

  v6 = v4[2];
  v7 = v4[8];
  v8 = v4[14];
  if (v8 <= -128)
  {
    v8 = -128;
  }

  if (v8 >= 127)
  {
    LOBYTE(v8) = 127;
  }

  if (v7 <= -128)
  {
    v7 = -128;
  }

  if (v7 >= 127)
  {
    LOBYTE(v7) = 127;
  }

  if (v6 <= -128)
  {
    v6 = -128;
  }

  if (v6 >= 127)
  {
    LOBYTE(v6) = 127;
  }

  v9 = v4[20];
  if (v9 <= -128)
  {
    v9 = -128;
  }

  if (v9 >= 127)
  {
    v9 = 127;
  }

  v10[0] = (v8 << 16) | (v9 << 24) | (v7 << 8) | v6;
  v11 = 4;
  *a3 = v10[0];
  *(a3 + 16) = 4;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v12, v10);
}

void WGSL::constantPack4xU8Clamp(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (!**a2)
  {
    goto LABEL_21;
  }

  if (*(v3 + 24) != 8)
  {
    goto LABEL_20;
  }

  v4 = *(v3 + 1);
  v5 = *v4;
  if (!*v4)
  {
    goto LABEL_21;
  }

  if (*(v4 + 24) != 4)
  {
    goto LABEL_20;
  }

  if (v5 == 1)
  {
    goto LABEL_21;
  }

  if (*(v4 + 48) != 4)
  {
    goto LABEL_20;
  }

  if (v5 == 2)
  {
    goto LABEL_21;
  }

  if (*(v4 + 72) != 4)
  {
    goto LABEL_20;
  }

  if (v5 == 3)
  {
LABEL_21:
    __break(0xC471u);
    JUMPOUT(0x225853A24);
  }

  if (*(v4 + 96) != 4)
  {
LABEL_20:
    mpark::throw_bad_variant_access(a1);
  }

  v6 = v4[2];
  v7 = v4[8];
  v8 = v4[14];
  if (v8 >= 0xFF)
  {
    v8 = 255;
  }

  if (v7 >= 0xFF)
  {
    v7 = 255;
  }

  if (v6 >= 0xFF)
  {
    v6 = 255;
  }

  v9 = v4[20];
  if (v9 >= 0xFF)
  {
    v9 = 255;
  }

  v10[0] = (v9 << 24) | (v8 << 16) | (v7 << 8) | v6;
  v11 = 4;
  *a3 = v10[0];
  *(a3 + 16) = 4;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v12, v10);
}

void WGSL::constantPack2x16snorm(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (!**a2)
  {
    goto LABEL_9;
  }

  if (*(v3 + 24) != 8)
  {
    goto LABEL_8;
  }

  v4 = *(v3 + 1);
  if (!*v4)
  {
    goto LABEL_9;
  }

  if (*(v4 + 24))
  {
    goto LABEL_8;
  }

  if (*v4 == 1)
  {
LABEL_9:
    __break(0xC471u);
    JUMPOUT(0x225853B38);
  }

  if (*(v4 + 48))
  {
LABEL_8:
    mpark::throw_bad_variant_access(a1);
  }

  v5[0] = vcvtmd_s64_f64((fminf(fmaxf(*(v4 + 8), -1.0), 1.0) * 32767.0) + 0.5) | (vcvtmd_s64_f64((fminf(fmaxf(*(v4 + 32), -1.0), 1.0) * 32767.0) + 0.5) << 16);
  v6 = 4;
  *a3 = v5[0];
  *(a3 + 16) = 4;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v7, v5);
}

void WGSL::constantPack2x16unorm(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (!**a2)
  {
    goto LABEL_9;
  }

  if (*(v3 + 24) != 8)
  {
    goto LABEL_8;
  }

  v4 = *(v3 + 1);
  if (!*v4)
  {
    goto LABEL_9;
  }

  if (*(v4 + 24))
  {
    goto LABEL_8;
  }

  if (*v4 == 1)
  {
LABEL_9:
    __break(0xC471u);
    JUMPOUT(0x225853C4CLL);
  }

  if (*(v4 + 48))
  {
LABEL_8:
    mpark::throw_bad_variant_access(a1);
  }

  v5[0] = vcvtmd_s64_f64((fminf(fmaxf(*(v4 + 8), 0.0), 1.0) * 65535.0) + 0.5) | (vcvtmd_s64_f64((fminf(fmaxf(*(v4 + 32), 0.0), 1.0) * 65535.0) + 0.5) << 16);
  v6 = 4;
  *a3 = v5[0];
  *(a3 + 16) = 4;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v7, v5);
}

double WGSL::constantPack2x16float@<D0>(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (!**a2)
  {
    __break(0xC471u);
    JUMPOUT(0x225853EF4);
  }

  if (*(v4 + 24) != 8)
  {
    goto LABEL_28;
  }

  v5 = *(v4 + 1);
  if (!*v5)
  {
    goto LABEL_31;
  }

  if (*(v5 + 24))
  {
    goto LABEL_28;
  }

  _S0 = *(v5 + 8);
  _S1 = fabsf(_S0);
  __asm { FCVT            H1, S0 }

  v12 = LODWORD(_S1) | 0x10000;
  if (_VF)
  {
    v12 = 0;
  }

  if ((v12 & 0x10000) == 0)
  {
    goto LABEL_15;
  }

  if (*v5 == 1)
  {
LABEL_31:
    __break(0xC471u);
    goto LABEL_34;
  }

  if (*(v5 + 48))
  {
LABEL_28:
    mpark::throw_bad_variant_access(a1);
  }

  _S0 = *(v5 + 32);
  _S1 = fabsf(_S0);
  __asm { FCVT            H1, S0 }

  v15 = LODWORD(_S1) | 0x10000;
  if (_VF)
  {
    v15 = 0;
  }

  if (v15 >= 0x10000)
  {
    LODWORD(__src) = v12 | (v15 << 16);
    LOBYTE(v40) = 4;
    *a3 = __src;
    *(a3 + 16) = 4;
    *(a3 + 24) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v31, &__src);
    return result;
  }

LABEL_15:
  WTF::numberToStringAndSize();
  HIDWORD(v30) = v16;
  if (v16 < 0 || __OFADD__(v16, 31) || (v17 = (v16 + 37), __OFADD__(v16 + 31, 6)))
  {
    __break(0xC471u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v35 = v27;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  WTF::tryFastCompactMalloc((v17 + 20));
  v18 = __src;
  if (!__src)
  {
    __break(0xC471u);
LABEL_34:
    JUMPOUT(0x225853ED4);
  }

  *__src = 2;
  *(v18 + 4) = v17;
  *(v18 + 8) = v18 + 20;
  *(v18 + 16) = 4;
  v43 = v35;
  v44 = v36;
  v45 = v37;
  v46 = v38;
  __src = v31;
  v40 = v32;
  v41 = v33;
  v42 = v34;
  *(v18 + 20) = 1970037110;
  *(v18 + 24) = 8293;
  v19 = HIDWORD(v46);
  if (HIDWORD(v46) >= 0x7D)
  {
    goto LABEL_30;
  }

  v20 = v17 - 6;
  v21 = (v18 + 26);
  if (HIDWORD(v46))
  {
    if (HIDWORD(v46) == 1)
    {
      *v21 = __src;
    }

    else
    {
      memcpy((v18 + 26), &__src, HIDWORD(v46));
    }
  }

  if (v20 < v19)
  {
    goto LABEL_30;
  }

  qmemcpy(&v21[v19], " cannot be represented as 'f16'", 31);
  result = *"esented as 'f16'";
  *a3 = v18;
  *(a3 + 24) = 1;
  return result;
}

uint64_t WGSL::constantUnpack4x8snorm@<X0>(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (!**a2)
  {
    __break(0xC471u);
LABEL_46:
    JUMPOUT(0x225854258);
  }

  if (*(v4 + 24) != 4)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v5 = v4[2];
  v6 = WTF::fastMalloc(0x68);
  v7 = v6;
  *v6 = 4;
  *(v6 + 12) = 0u;
  *(v6 + 28) = 0u;
  *(v6 + 44) = 0u;
  *(v6 + 60) = 0u;
  *(v6 + 76) = 0u;
  *(v6 + 88) = 0u;
  v8 = v5 / 127.0;
  if (v8 < -1.0)
  {
    v8 = -1.0;
  }

  v30[0] = v8;
  v31 = 0;
  *(v6 + 8) = v8;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v32, v30);
  v9 = (v5 >> 8) / 127.0;
  if (v9 < -1.0)
  {
    v9 = -1.0;
  }

  v30[0] = v9;
  v31 = 0;
  if (*v7 < 2)
  {
LABEL_44:
    __break(0xC471u);
    goto LABEL_46;
  }

  v10 = (v7 + 8);
  if (*(v7 + 48))
  {
    if (*(v7 + 48) == 255)
    {
      *(v7 + 8) = v9;
      *(v7 + 48) = 0;
    }

    else
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v32, v10);
      v11 = v31;
      v7[8] = LODWORD(v30[0]);
      *(v7 + 48) = 0;
      if (v11 == 255)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    *v10 = v9;
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v32, v30);
LABEL_14:
  v12 = (v5 << 8 >> 24) / 127.0;
  if (v12 < -1.0)
  {
    v12 = -1.0;
  }

  v30[0] = v12;
  v31 = 0;
  if (*v7 < 3)
  {
    goto LABEL_44;
  }

  v13 = (v7 + 14);
  if (*(v7 + 72))
  {
    if (*(v7 + 72) == 255)
    {
      *(v7 + 14) = v12;
      *(v7 + 72) = 0;
    }

    else
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v32, v13);
      v14 = v31;
      v7[14] = LODWORD(v30[0]);
      *(v7 + 72) = 0;
      if (v14 == 255)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    *v13 = v12;
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v32, v30);
LABEL_23:
  v15 = (v5 >> 24) / 127.0;
  if (v15 < -1.0)
  {
    v15 = -1.0;
  }

  v30[0] = v15;
  v31 = 0;
  if (*v7 < 4)
  {
    goto LABEL_44;
  }

  v16 = (v7 + 20);
  if (*(v7 + 96))
  {
    if (*(v7 + 96) == 255)
    {
      *(v7 + 20) = v15;
      *(v7 + 96) = 0;
    }

    else
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v32, v16);
      v17 = v31;
      v7[20] = LODWORD(v30[0]);
      *(v7 + 96) = 0;
      if (v17 == 255)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    *v16 = v15;
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v32, v30);
LABEL_32:
  v18 = *v7;
  v19 = 24 * v18;
  v20 = WTF::fastMalloc((24 * v18 + 8));
  v21 = v20;
  *v20 = v18;
  if (v18)
  {
    v22 = (v20 + 6);
    v23 = (v7 + 6);
    do
    {
      *(v22 - 16) = 0;
      *v22 = -1;
      v24 = *v23;
      if (v24 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v24, v30, v22 - 2, v23 - 2);
        *v22 = *v23;
      }

      v22 += 3;
      v23 += 3;
      v19 -= 24;
    }

    while (v19);
  }

  v31 = 8;
  *v30 = 0;
  *a3 = v21;
  *(a3 + 16) = 8;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v32, v30);
  v26 = *v7;
  if (v26)
  {
    v27 = 24 * v26;
    v28 = v7 + 6;
    do
    {
      v25 = v28 - 16;
      if (*v28 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v30, v25);
      }

      *v28 = -1;
      v28 += 24;
      v27 -= 24;
    }

    while (v27);
  }

  return WTF::fastFree(v7, v25);
}

uint64_t WGSL::constantUnpack4x8unorm@<X0>(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (!**a2)
  {
    __break(0xC471u);
LABEL_38:
    JUMPOUT(0x2258545A8);
  }

  if (*(v4 + 24) != 4)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v5 = v4[2];
  v6 = WTF::fastMalloc(0x68);
  *v6 = 4;
  *(v6 + 3) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 11) = 0u;
  *(v6 + 15) = 0u;
  *(v6 + 19) = 0u;
  *(v6 + 22) = 0u;
  v28[0] = v5 / 255.0;
  v29 = 0;
  v6[2] = LODWORD(v28[0]);
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v28);
  v7 = BYTE1(v5) / 255.0;
  v28[0] = v7;
  v29 = 0;
  if (*v6 < 2)
  {
LABEL_36:
    __break(0xC471u);
    goto LABEL_38;
  }

  v8 = (v6 + 8);
  if (*(v6 + 48))
  {
    if (*(v6 + 48) == 255)
    {
      *(v6 + 8) = v7;
      *(v6 + 48) = 0;
    }

    else
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v8);
      v9 = v29;
      v6[8] = LODWORD(v28[0]);
      *(v6 + 48) = 0;
      if (v9 == 255)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    *v8 = v7;
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v28);
LABEL_10:
  v10 = BYTE2(v5) / 255.0;
  v28[0] = v10;
  v29 = 0;
  if (*v6 < 3)
  {
    goto LABEL_36;
  }

  v11 = (v6 + 14);
  if (*(v6 + 72))
  {
    if (*(v6 + 72) == 255)
    {
      *(v6 + 14) = v10;
      *(v6 + 72) = 0;
    }

    else
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v11);
      v12 = v29;
      v6[14] = LODWORD(v28[0]);
      *(v6 + 72) = 0;
      if (v12 == 255)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    *v11 = v10;
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v28);
LABEL_17:
  v13 = HIBYTE(v5) / 255.0;
  v28[0] = v13;
  v29 = 0;
  if (*v6 < 4)
  {
    goto LABEL_36;
  }

  v14 = (v6 + 20);
  if (*(v6 + 96))
  {
    if (*(v6 + 96) == 255)
    {
      *(v6 + 20) = v13;
      *(v6 + 96) = 0;
    }

    else
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v14);
      v15 = v29;
      v6[20] = LODWORD(v28[0]);
      *(v6 + 96) = 0;
      if (v15 == 255)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    *v14 = v13;
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v28);
LABEL_24:
  v16 = *v6;
  v17 = 24 * v16;
  v18 = WTF::fastMalloc((24 * v16 + 8));
  v19 = v18;
  *v18 = v16;
  if (v16)
  {
    v20 = (v18 + 6);
    v21 = (v6 + 6);
    do
    {
      *(v20 - 16) = 0;
      *v20 = -1;
      v22 = *v21;
      if (v22 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v22, v28, v20 - 2, v21 - 2);
        *v20 = *v21;
      }

      v20 += 3;
      v21 += 3;
      v17 -= 24;
    }

    while (v17);
  }

  v29 = 8;
  *v28 = 0;
  *a3 = v19;
  *(a3 + 16) = 8;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v28);
  v24 = *v6;
  if (v24)
  {
    v25 = 24 * v24;
    v26 = v6 + 6;
    do
    {
      v23 = v26 - 16;
      if (*v26 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v28, v23);
      }

      *v26 = -1;
      v26 += 24;
      v25 -= 24;
    }

    while (v25);
  }

  return WTF::fastFree(v6, v23);
}

uint64_t WGSL::constantUnpack4xI8@<X0>(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (!**a2)
  {
    __break(0xC471u);
LABEL_40:
    JUMPOUT(0x22585490CLL);
  }

  if (*(v4 + 24) != 4)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v5 = v4[2];
  v6 = WTF::fastMalloc(0x68);
  *v6 = 4;
  *(v6 + 6) = 0u;
  *(v6 + 10) = 0u;
  *(v6 + 14) = 0u;
  *(v6 + 18) = 0u;
  *(v6 + 22) = 0u;
  *(v6 + 2) = 0u;
  LODWORD(v28[0]) = v5;
  v29 = 3;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v6 + 8);
  v6[2] = v5;
  *(v6 + 24) = 3;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v28);
  v7 = v5 >> 8;
  LODWORD(v28[0]) = v7;
  v29 = 3;
  if (*v6 < 2)
  {
LABEL_38:
    __break(0xC471u);
    goto LABEL_40;
  }

  v8 = *(v6 + 48);
  if (v8 == 3)
  {
    v6[8] = v7;
  }

  else if (v8 == 255)
  {
    v6[8] = v7;
    *(v6 + 48) = 3;
  }

  else
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v6 + 32);
    v9 = v29;
    v6[8] = v28[0];
    *(v6 + 48) = 3;
    if (v9 == 255)
    {
      goto LABEL_12;
    }
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v28);
LABEL_12:
  v10 = v5 << 8 >> 24;
  LODWORD(v28[0]) = v10;
  v29 = 3;
  if (*v6 < 3)
  {
    goto LABEL_38;
  }

  v11 = *(v6 + 72);
  if (v11 == 3)
  {
    v6[14] = v10;
  }

  else if (v11 == 255)
  {
    v6[14] = v10;
    *(v6 + 72) = 3;
  }

  else
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v6 + 56);
    v12 = v29;
    v6[14] = v28[0];
    *(v6 + 72) = 3;
    if (v12 == 255)
    {
      goto LABEL_19;
    }
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v28);
LABEL_19:
  v13 = v5 >> 24;
  LODWORD(v28[0]) = v5 >> 24;
  v29 = 3;
  if (*v6 < 4)
  {
    goto LABEL_38;
  }

  v14 = *(v6 + 96);
  if (v14 == 3)
  {
    v6[20] = v13;
  }

  else if (v14 == 255)
  {
    v6[20] = v13;
    *(v6 + 96) = 3;
  }

  else
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v6 + 80);
    v15 = v29;
    v6[20] = v28[0];
    *(v6 + 96) = 3;
    if (v15 == 255)
    {
      goto LABEL_26;
    }
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v28);
LABEL_26:
  v16 = *v6;
  v17 = 24 * v16;
  v18 = WTF::fastMalloc((24 * v16 + 8));
  v19 = v18;
  *v18 = v16;
  if (v16)
  {
    v20 = (v18 + 6);
    v21 = (v6 + 6);
    do
    {
      *(v20 - 16) = 0;
      *v20 = -1;
      v22 = *v21;
      if (v22 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v22, v28, v20 - 2, v21 - 2);
        *v20 = *v21;
      }

      v20 += 3;
      v21 += 3;
      v17 -= 24;
    }

    while (v17);
  }

  v29 = 8;
  v28[0] = 0;
  *a3 = v19;
  *(a3 + 16) = 8;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v28);
  v24 = *v6;
  if (v24)
  {
    v25 = 24 * v24;
    v26 = v6 + 6;
    do
    {
      v23 = v26 - 16;
      if (*v26 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v28, v23);
      }

      *v26 = -1;
      v26 += 24;
      v25 -= 24;
    }

    while (v25);
  }

  return WTF::fastFree(v6, v23);
}

uint64_t WGSL::constantUnpack4xU8@<X0>(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (!**a2)
  {
    __break(0xC471u);
LABEL_40:
    JUMPOUT(0x225854C6CLL);
  }

  if (*(v4 + 24) != 4)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v5 = v4[2];
  v6 = WTF::fastMalloc(0x68);
  *v6 = 4;
  *(v6 + 6) = 0u;
  *(v6 + 10) = 0u;
  *(v6 + 14) = 0u;
  *(v6 + 18) = 0u;
  *(v6 + 22) = 0u;
  *(v6 + 2) = 0u;
  LODWORD(v26[0]) = v5;
  v27 = 4;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v6 + 8);
  v6[2] = v5;
  *(v6 + 24) = 4;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v26);
  LODWORD(v26[0]) = BYTE1(v5);
  v27 = 4;
  if (*v6 < 2)
  {
LABEL_38:
    __break(0xC471u);
    goto LABEL_40;
  }

  v7 = *(v6 + 48);
  if (v7 == 4)
  {
    v6[8] = BYTE1(v5);
  }

  else if (v7 == 255)
  {
    v6[8] = BYTE1(v5);
    *(v6 + 48) = 4;
  }

  else
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v6 + 32);
    v8 = v27;
    v6[8] = v26[0];
    *(v6 + 48) = 4;
    if (v8 == 255)
    {
      goto LABEL_12;
    }
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v26);
LABEL_12:
  LODWORD(v26[0]) = BYTE2(v5);
  v27 = 4;
  if (*v6 < 3)
  {
    goto LABEL_38;
  }

  v9 = HIBYTE(v5);
  v10 = *(v6 + 72);
  if (v10 == 4)
  {
    v6[14] = BYTE2(v5);
  }

  else if (v10 == 255)
  {
    v6[14] = BYTE2(v5);
    *(v6 + 72) = 4;
  }

  else
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v6 + 56);
    v11 = v27;
    v6[14] = v26[0];
    *(v6 + 72) = 4;
    if (v11 == 255)
    {
      goto LABEL_19;
    }
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v26);
LABEL_19:
  LODWORD(v26[0]) = HIBYTE(v5);
  v27 = 4;
  if (*v6 < 4)
  {
    goto LABEL_38;
  }

  v12 = *(v6 + 96);
  if (v12 == 4)
  {
    v6[20] = v9;
  }

  else if (v12 == 255)
  {
    v6[20] = v9;
    *(v6 + 96) = 4;
  }

  else
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v6 + 80);
    v13 = v27;
    v6[20] = v26[0];
    *(v6 + 96) = 4;
    if (v13 == 255)
    {
      goto LABEL_26;
    }
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v26);
LABEL_26:
  v14 = *v6;
  v15 = 24 * v14;
  v16 = WTF::fastMalloc((24 * v14 + 8));
  v17 = v16;
  *v16 = v14;
  if (v14)
  {
    v18 = (v16 + 6);
    v19 = (v6 + 6);
    do
    {
      *(v18 - 16) = 0;
      *v18 = -1;
      v20 = *v19;
      if (v20 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v20, v26, v18 - 2, v19 - 2);
        *v18 = *v19;
      }

      v18 += 3;
      v19 += 3;
      v15 -= 24;
    }

    while (v15);
  }

  v27 = 8;
  v26[0] = 0;
  *a3 = v17;
  *(a3 + 16) = 8;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v26);
  v22 = *v6;
  if (v22)
  {
    v23 = 24 * v22;
    v24 = v6 + 6;
    do
    {
      v21 = v24 - 16;
      if (*v24 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v26, v21);
      }

      *v24 = -1;
      v24 += 24;
      v23 -= 24;
    }

    while (v23);
  }

  return WTF::fastFree(v6, v21);
}

uint64_t WGSL::constantUnpack2x16snorm@<X0>(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (!**a2)
  {
    __break(0xC471u);
    goto LABEL_28;
  }

  if (*(v4 + 24) != 4)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v5 = v4[2];
  v6 = v5;
  v7 = v5 >> 16;
  v8 = WTF::fastMalloc(0x38);
  v9 = v8;
  *v8 = 2;
  *(v8 + 12) = 0u;
  *(v8 + 28) = 0u;
  *(v8 + 40) = 0u;
  v10 = v6 / 32767.0;
  if (v10 < -1.0)
  {
    v10 = -1.0;
  }

  v26[0] = v10;
  v27 = 0;
  *(v8 + 8) = v10;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v26);
  v11 = v7 / 32767.0;
  if (v11 < -1.0)
  {
    v11 = -1.0;
  }

  v26[0] = v11;
  v27 = 0;
  if (*v9 < 2)
  {
    __break(0xC471u);
LABEL_28:
    JUMPOUT(0x225854ED0);
  }

  v12 = (v9 + 8);
  if (*(v9 + 48))
  {
    if (*(v9 + 48) == 255)
    {
      *(v9 + 8) = v11;
      *(v9 + 48) = 0;
    }

    else
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v12);
      v13 = v27;
      v9[8] = LODWORD(v26[0]);
      *(v9 + 48) = 0;
      if (v13 == 255)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    *v12 = v11;
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v26);
LABEL_14:
  v14 = *v9;
  v15 = 24 * v14;
  v16 = WTF::fastMalloc((24 * v14 + 8));
  v17 = v16;
  *v16 = v14;
  if (v14)
  {
    v18 = (v16 + 6);
    v19 = (v9 + 6);
    do
    {
      *(v18 - 16) = 0;
      *v18 = -1;
      v20 = *v19;
      if (v20 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v20, v26, v18 - 2, v19 - 2);
        *v18 = *v19;
      }

      v18 += 3;
      v19 += 3;
      v15 -= 24;
    }

    while (v15);
  }

  v27 = 8;
  *v26 = 0;
  *a3 = v17;
  *(a3 + 16) = 8;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v26);
  v22 = *v9;
  if (v22)
  {
    v23 = 24 * v22;
    v24 = v9 + 6;
    do
    {
      v21 = v24 - 16;
      if (*v24 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v26, v21);
      }

      *v24 = -1;
      v24 += 24;
      v23 -= 24;
    }

    while (v23);
  }

  return WTF::fastFree(v9, v21);
}

uint64_t WGSL::constantUnpack2x16unorm@<X0>(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (!**a2)
  {
    __break(0xC471u);
    goto LABEL_24;
  }

  if (*(v4 + 24) != 4)
  {
    mpark::throw_bad_variant_access(a1);
  }

  v5 = v4[2];
  v6 = v5;
  v7 = HIWORD(v5);
  v8 = WTF::fastMalloc(0x38);
  *v8 = 2;
  *(v8 + 3) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 10) = 0u;
  v24[0] = v6 / 65535.0;
  v25 = 0;
  v8[2] = LODWORD(v24[0]);
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v26, v24);
  v9 = v7 / 65535.0;
  v24[0] = v9;
  v25 = 0;
  if (*v8 < 2)
  {
    __break(0xC471u);
LABEL_24:
    JUMPOUT(0x225855120);
  }

  v10 = (v8 + 8);
  if (*(v8 + 48))
  {
    if (*(v8 + 48) == 255)
    {
      *(v8 + 8) = v9;
      *(v8 + 48) = 0;
    }

    else
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v26, v10);
      v11 = v25;
      v8[8] = LODWORD(v24[0]);
      *(v8 + 48) = 0;
      if (v11 == 255)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    *v10 = v9;
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v26, v24);
LABEL_10:
  v12 = *v8;
  v13 = 24 * v12;
  v14 = WTF::fastMalloc((24 * v12 + 8));
  v15 = v14;
  *v14 = v12;
  if (v12)
  {
    v16 = (v14 + 6);
    v17 = (v8 + 6);
    do
    {
      *(v16 - 16) = 0;
      *v16 = -1;
      v18 = *v17;
      if (v18 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v18, v24, v16 - 2, v17 - 2);
        *v16 = *v17;
      }

      v16 += 3;
      v17 += 3;
      v13 -= 24;
    }

    while (v13);
  }

  v25 = 8;
  *v24 = 0;
  *a3 = v15;
  *(a3 + 16) = 8;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v26, v24);
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
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v24, v19);
      }

      *v22 = -1;
      v22 += 24;
      v21 -= 24;
    }

    while (v21);
  }

  return WTF::fastFree(v8, v19);
}

uint64_t WGSL::constantUnpack2x16float@<X0>(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (!**a2)
  {
    __break(0xC471u);
    goto LABEL_24;
  }

  if (*(v4 + 24) != 4)
  {
    mpark::throw_bad_variant_access(a1);
  }

  _H8 = *(v4 + 4);
  _H9 = *(v4 + 5);
  v7 = WTF::fastMalloc(0x38);
  *v7 = 2;
  *(v7 + 3) = 0u;
  *(v7 + 7) = 0u;
  *(v7 + 10) = 0u;
  __asm { FCVT            S0, H8 }

  LODWORD(v28[0]) = _S0;
  v29 = 0;
  v7[2] = _S0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v28);
  __asm { FCVT            S0, H9 }

  LODWORD(v28[0]) = _S0;
  v29 = 0;
  if (*v7 < 2)
  {
    __break(0xC471u);
LABEL_24:
    JUMPOUT(0x225855358);
  }

  v14 = v7 + 8;
  if (*(v7 + 48))
  {
    if (*(v7 + 48) == 255)
    {
      v7[8] = _S0;
      *(v7 + 48) = 0;
    }

    else
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v14);
      v15 = v29;
      v7[8] = v28[0];
      *(v7 + 48) = 0;
      if (v15 == 255)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    *v14 = _S0;
  }

  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v28);
LABEL_10:
  v16 = *v7;
  v17 = 24 * v16;
  v18 = WTF::fastMalloc((24 * v16 + 8));
  v19 = v18;
  *v18 = v16;
  if (v16)
  {
    v20 = (v18 + 6);
    v21 = (v7 + 6);
    do
    {
      *(v20 - 16) = 0;
      *v20 = -1;
      v22 = *v21;
      if (v22 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v22, v28, v20 - 2, v21 - 2);
        *v20 = *v21;
      }

      v20 += 3;
      v21 += 3;
      v17 -= 24;
    }

    while (v17);
  }

  v29 = 8;
  v28[0] = 0;
  *a3 = v19;
  *(a3 + 16) = 8;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v30, v28);
  v24 = *v7;
  if (v24)
  {
    v25 = 24 * v24;
    v26 = v7 + 6;
    do
    {
      v23 = v26 - 16;
      if (*v26 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v28, v23);
      }

      *v26 = -1;
      v26 += 24;
      v25 -= 24;
    }

    while (v25);
  }

  return WTF::fastFree(v7, v23);
}

uint64_t WGSL::TypeChecker::check@<X0>(uint64_t a1@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  WGSL::TypeChecker::declareBuiltins(v18);
  if (v18[24] != 1)
  {
    operator new();
  }

  v3 = *v18;
  if (!*v18)
  {
    *v16 = *&v18[8];
LABEL_20:
    v5 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(*v18, 2u, memory_order_relaxed);
  *v16 = *&v18[8];
  if (v18[24])
  {
    v4 = *v18;
    *v18 = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v2);
    }

    if (!v3)
    {
      goto LABEL_20;
    }
  }

  v5 = 0;
  atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
LABEL_11:
  v17[0] = v3;
  *&v17[1] = *v16;
  v6 = WTF::Vector<WGSL::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v18, v17, 1uLL);
  v15[0] = 0;
  v15[1] = 0;
  *&v7 = 0;
  v8 = *&v18[8];
  *a1 = *v18;
  *(a1 + 8) = v8;
  *v18 = 0u;
  *&v18[16] = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  WGSL::FailedCheck::~FailedCheck(v6, v9);
  v11 = v17[0];
  v17[0] = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  result = WTF::Vector<WGSL::CompilationMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15, v10);
  if ((v5 & 1) == 0)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v3, v13);
    }

    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v3, v13);
    }
  }

  return result;
}

void WGSL::TypeChecker::visit(WGSL::TypeChecker *this, WTF::StringImpl **a2, uint64_t a3, double a4)
{
  v74 = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 100);
  if (!v7)
  {
LABEL_5:
    v11 = *(a3 + 128);
    if (v11 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    if (*(a3 + 128))
    {
      v13 = v12;
    }

    else
    {
      v13 = 1;
    }

    v14 = *(a3 + 112);
    if (v14)
    {
      WGSL::TypeChecker::resolve(&v71, a2, v14);
      if (v73)
      {
        if (v73 == 1)
        {
          v47 = v71;
          if (!v71)
          {
LABEL_160:
            *(this + 8) = v72;
            *this = 0;
            goto LABEL_145;
          }

LABEL_156:
          atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
          *(this + 8) = v72;
          *this = v47;
          *(this + 24) = 1;
          if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            return;
          }

          goto LABEL_157;
        }

LABEL_161:
        mpark::throw_bad_variant_access(v15);
      }

      v17 = v71;
      v11 = *(a3 + 128);
      v18 = *(a3 + 120);
      if (v18)
      {
LABEL_14:
        v19 = v13;
        if (v11 == 3)
        {
          if (a2[7])
          {
            v19 = v13;
          }

          else
          {
            v19 = 2;
          }
        }

        *&a4 = WGSL::TypeChecker::infer(&v71, a2, v18, v19, 0).n128_u64[0];
        if (!v73)
        {
          v21 = *(a3 + 120);
          if (*(v21 + 56))
          {
            v22 = v21 + 32;
          }

          else
          {
            v22 = 0;
          }

          v23 = v71;
          if (v71 && *(v71 + 48) == 10)
          {
            v23 = *(v71 + 1);
            *(v21 + 24) = v23;
          }

          if (v17)
          {
            if (v17 == v23)
            {
              goto LABEL_47;
            }

            if (WGSL::conversionRank(v23, v17, v20) == -1)
            {
              WGSL::Type::Type(v69, v17);
              WGSL::Type::Type(v67, v23);
              WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral,WGSL::Type,char>(&v57, "cannot initialize var of type '", 32, v69, "' with value of type '", 23, v67);
              *this = v57;
              *(this + 8) = *(a3 + 8);
              *(this + 24) = 1;
              if (v68 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v56, v67);
              }

              v68 = -1;
              if (v69[48] != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v56, v69);
              }

              return;
            }
          }

          else
          {
            v27 = a2[9];
            if (v23 == *(v27 + 5))
            {
              WTF::makeString<WTF::ASCIILiteral>(&v57, "cannot initialize variable with expression of type 'void'", 0x3AuLL);
              v44 = v57;
              goto LABEL_143;
            }

            v11 = *(a3 + 128);
            if (!*(a3 + 128))
            {
              v17 = v23;
              if (*(a3 + 128) <= 1u)
              {
LABEL_48:
                if (v11)
                {
                  if (v11 == 1)
                  {
                    if (a2[7])
                    {
                      if ((WGSL::Type::isConstructible(v17) & 1) == 0 && *(v17 + 48) != 11)
                      {
                        WGSL::Type::Type(v66, v17);
                        WTF::makeString<char,WGSL::Type,WTF::ASCIILiteral>(&v71, v66, "' cannot be used as the type of a 'let'", 40);
                        *this = v71;
                        *(this + 8) = *(a3 + 8);
                        *(this + 24) = 1;
                        if (v66[48] != 255)
                        {
                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v57, v66);
                        }

                        return;
                      }

                      if (!*(a3 + 120))
                      {
LABEL_208:
                        __break(0xC471u);
                        JUMPOUT(0x225857514);
                      }

                      goto LABEL_117;
                    }

                    v32 = "module-scope 'let' is invalid, use 'const'";
                    v33 = 43;
                    goto LABEL_141;
                  }
                }

                else
                {
                  if (!v18)
                  {
                    goto LABEL_208;
                  }

                  if ((WGSL::Type::isConstructible(v17) & 1) == 0)
                  {
                    WGSL::Type::Type(v65, v17);
                    WTF::makeString<char,WGSL::Type,WTF::ASCIILiteral>(&v71, v65, "' cannot be used as the type of a 'const'", 42);
                    *this = v71;
                    *(this + 8) = *(a3 + 8);
                    *(this + 24) = 1;
                    if (v65[48] != 255)
                    {
                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v57, v65);
                    }

                    return;
                  }
                }

                goto LABEL_117;
              }

LABEL_34:
              if (v11 == 2)
              {
                if (a2[7])
                {
                  __break(0xC471u);
                  JUMPOUT(0x2258580C8);
                }

                if (!v17)
                {
                  goto LABEL_72;
                }

                v29 = v17;
                while (*(v29 + 48) == 10)
                {
                  v29 = *(v29 + 1);
                  if (!v29)
                  {
                    goto LABEL_72;
                  }
                }

                if (*(v29 + 48) || ((v30 = *v29, v30 >= 6) ? (v31 = v30 == 7) : (v31 = 1), !v31))
                {
LABEL_72:
                  WGSL::Type::Type(v64, v17);
                  WTF::makeString<char,WGSL::Type,WTF::ASCIILiteral>(&v71, v64, "' cannot be used as the type of an 'override'", 46);
                  *this = v71;
                  *(this + 8) = *(a3 + 8);
                  *(this + 24) = 1;
                  if (v64[48] != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v57, v64);
                  }

                  return;
                }

                goto LABEL_117;
              }

              if (v11 != 3)
              {
LABEL_117:
                if (!v22 || (WGSL::TypeChecker::convertValue(&v71, (a3 + 8), v17, v22, a4), v73 != 1))
                {
                  v39 = *(a3 + 128);
                  if (*(a3 + 128))
                  {
                    v22 = 0;
                  }

                  *(a3 + 144) = v17;
                  if (v39 == 3)
                  {
                    if ((*(a3 + 152) & 0x100) != 0)
                    {
                      v40 = *(a3 + 154);
                      if ((v40 & 0x100) != 0)
                      {
                        v41 = WGSL::TypeStore::referenceType(a2[9], *(a3 + 152), v17, v40, 0);
                        if (!*(a3 + 112))
                        {
                          v57 = 0uLL;
                          WTF::StringPrintStream::StringPrintStream(&v71);
                          WGSL::Type::dump(v41, &v71);
                          WTF::StringPrintStream::toString(&v56, &v71);
                          WTF::StringPrintStream::~StringPrintStream(&v71);
                          v72 = 0uLL;
                          v71 = off_2838D37C0;
                          v42 = v56;
                          v56 = 0;
                          v73 = v42;
                          WGSL::AST::Builder::construct<WGSL::AST::IdentifierExpression,WGSL::SourceSpan,WGSL::AST::Identifier,void>();
                        }

                        operator new();
                      }
                    }

LABEL_206:
                    __break(1u);
                    __break(0xC471u);
                    JUMPOUT(0x2258580A0);
                  }

                  LOBYTE(v53[0]) = 0;
                  v55 = 0;
                  if (v22 && *(v22 + 24) == 1)
                  {
                    v54 = -1;
                    v43 = *(v22 + 16);
                    if (v43 != 255)
                    {
                      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v43, &v57, v53, v22);
                      v54 = *(v22 + 16);
                    }

                    v55 = 1;
                  }

                  WGSL::TypeChecker::introduceValue(&v71, a2, a3 + 24, v17, v13, v53);
                  if (v55 == 1)
                  {
                    if (v54 != 255)
                    {
                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v57, v53);
                    }

                    v54 = -1;
                  }

                  if (v73 != 1)
                  {
                    *this = 0;
                    *(this + 24) = 0;
                    return;
                  }
                }

                v47 = v71;
                if (!v71)
                {
                  *this = 0;
                  v45 = v72;
                  goto LABEL_144;
                }

                atomic_fetch_add_explicit(v71, 2u, memory_order_relaxed);
                *this = v47;
                *(this + 8) = v72;
                *(this + 24) = 1;
                if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) != 2)
                {
                  return;
                }

LABEL_157:
                WTF::StringImpl::destroy(v47, v16);
                return;
              }

              v24 = *(a3 + 104);
              if (v24)
              {
                v25 = *(v24 + 24);
                v26 = *(v24 + 25);
                *(a3 + 152) = v25 | 0x100;
                *(a3 + 154) = v26 | 0x100;
                if (v25 > 2)
                {
                  switch(v25)
                  {
                    case 5:
                      if ((WGSL::Type::hasFixedFootprint(v17) & 1) == 0)
                      {
                        WGSL::Type::Type(v60, v17);
                        WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral>(&v71, "type '", 7, v60, "' cannot be used in address space <workgroup> because it doesn't have fixed footprint", 86);
                        *this = v71;
                        *(this + 8) = *(a3 + 8);
                        *(this + 24) = 1;
                        if (v60[48] != 255)
                        {
                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v57, v60);
                        }

                        return;
                      }

                      v25 = 5;
                      break;
                    case 4:
                      if ((WGSL::Type::isHostShareable(v17) & 1) == 0)
                      {
                        WGSL::Type::Type(v62, v17);
                        WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral>(&v71, "type '", 7, v62, "' cannot be used in address space <uniform> because it's not host-shareable", 76);
                        *this = v71;
                        *(this + 8) = *(a3 + 8);
                        *(this + 24) = 1;
                        if (v62[48] != 255)
                        {
                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v57, v62);
                        }

                        return;
                      }

                      if ((WGSL::Type::isConstructible(v17) & 1) == 0)
                      {
                        WGSL::Type::Type(v61, v17);
                        WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral>(&v71, "type '", 7, v61, "' cannot be used in address space <uniform> because it's not constructible", 75);
                        *this = v71;
                        *(this + 8) = *(a3 + 8);
                        *(this + 24) = 1;
                        if (v61[48] != 255)
                        {
                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v57, v61);
                        }

                        return;
                      }

                      v25 = 4;
                      break;
                    case 3:
                      if (v26 == 2)
                      {
                        v32 = "access mode 'write' is not valid for the <storage> address space";
                        v33 = 65;
                        goto LABEL_141;
                      }

                      if ((WGSL::Type::isHostShareable(v17) & 1) == 0)
                      {
                        WGSL::Type::Type(v63, v17);
                        WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral>(&v71, "type '", 7, v63, "' cannot be used in address space <storage> because it's not host-shareable", 76);
                        *this = v71;
                        *(this + 8) = *(a3 + 8);
                        *(this + 24) = 1;
                        if (v63[48] != 255)
                        {
                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v57, v63);
                        }

                        return;
                      }

                      if (!v26 && *(v17 + 48) == 12)
                      {
                        v32 = "atomic variables in <storage> address space must have read_write access mode";
                        v33 = 77;
                        goto LABEL_141;
                      }

                      v25 = 3;
                      break;
                  }

LABEL_101:
                  if (a2[7])
                  {
                    v32 = "function-scope 'var' declaration must use 'function' address space";
                    v33 = 67;
                    goto LABEL_141;
                  }

                  if (v25 > 5 || ((1 << v25) & 0x3A) == 0)
                  {
                    goto LABEL_106;
                  }

                  if (!*(a3 + 120))
                  {
                    if (v25 == 5)
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_106;
                  }

                  if (v25 <= 2)
                  {
                    if (v25 != 1)
                    {
                      v50 = "private";
                      goto LABEL_189;
                    }

                    v50 = "handle";
                    v51 = 7;
                  }

                  else
                  {
                    if (v25 == 3)
                    {
                      v50 = "storage";
                      goto LABEL_189;
                    }

                    if (v25 == 4)
                    {
                      v50 = "uniform";
LABEL_189:
                      v51 = 8;
                      goto LABEL_190;
                    }

                    v50 = "workgroup";
                    v51 = 10;
                  }

LABEL_190:
                  WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(&v71, "variables in the address space '", 33, v50, v51, "' cannot have an initializer", 29);
                  goto LABEL_142;
                }

                if (v25)
                {
                  if (v25 != 1)
                  {
                    if ((WGSL::Type::isConstructible(v17) & 1) == 0)
                    {
                      WGSL::Type::Type(v58, v17);
                      WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral>(&v71, "type '", 7, v58, "' cannot be used in address space <private> because it's not constructible", 75);
                      *this = v71;
                      *(this + 8) = *(a3 + 8);
                      *(this + 24) = 1;
                      if (v58[48] != 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v57, v58);
                      }

                      return;
                    }

                    v25 = 2;
                    goto LABEL_101;
                  }

LABEL_88:
                  if (v17)
                  {
                    if (*(v17 + 48))
                    {
                      v34 = 0;
                    }

                    else
                    {
                      v34 = v17;
                    }

                    if (*(v17 + 48) - 7 < 3 || v34 && *v34 - 8 < 3)
                    {
                      goto LABEL_95;
                    }
                  }

                  else if (MEMORY[0x30] - 7 < 3)
                  {
LABEL_95:
                    v25 = 1;
                    goto LABEL_101;
                  }

                  v32 = "module-scope 'var' declarations that are not of texture or sampler types must provide an address space";
                  v33 = 103;
                  goto LABEL_141;
                }
              }

              else
              {
                if (!a2[7])
                {
                  *(a3 + 152) = 16777473;
                  goto LABEL_88;
                }

                *(a3 + 152) = 16843008;
              }

              if ((WGSL::Type::isConstructible(v17) & 1) == 0)
              {
                WGSL::Type::Type(v59, v17);
                WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral>(&v71, "type '", 7, v59, "' cannot be used in address space <function> because it's not constructible", 76);
                *this = v71;
                *(this + 8) = *(a3 + 8);
                *(this + 24) = 1;
                if (v59[48] != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v57, v59);
                }

                return;
              }

              if (!a2[7])
              {
                v32 = "module-scope 'var' must not use address space 'function'";
                v33 = 57;
                goto LABEL_141;
              }

LABEL_106:
              if (!v17)
              {
                goto LABEL_117;
              }

              v35 = v17;
              while (1)
              {
                while (1)
                {
                  v36 = *(v35 + 48);
                  if (v36 != 4)
                  {
                    break;
                  }

                  v37 = *v35;
                  v38 = *(*v35 + 84);
                  if (!v38)
                  {
                    __break(0xC471u);
                    goto LABEL_206;
                  }

                  v35 = *(*(*(*(v37 + 72) + 8 * v38 - 8) + 104) + 24);
                  if (!v35)
                  {
                    goto LABEL_117;
                  }
                }

                if (v36 != 10)
                {
                  break;
                }

                v35 = *(v35 + 1);
                if (!v35)
                {
                  goto LABEL_117;
                }
              }

              if (v36 != 3 || *(v35 + 16) != 2)
              {
                goto LABEL_117;
              }

              v32 = "array with an 'override' element count can only be used as the store type of a 'var<workgroup>'";
              v33 = 96;
LABEL_141:
              WTF::makeString<WTF::ASCIILiteral>(&v71, v32, v33);
LABEL_142:
              v44 = v71;
LABEL_143:
              *this = v44;
              v45 = *(a3 + 8);
LABEL_144:
              *(this + 8) = v45;
LABEL_145:
              *(this + 24) = 1;
              return;
            }

            v28 = WGSL::concretize(v23, v27, v20);
            if (!v28)
            {
              WGSL::Type::Type(v70, v23);
              v48 = *(a3 + 128);
              if (*(a3 + 128))
              {
                if (v48 == 2)
                {
                  v49 = "override";
                  v52 = 9;
                }

                else
                {
                  if (v48 == 1)
                  {
                    v49 = "let";
                  }

                  else
                  {
                    v49 = "var";
                  }

                  v52 = 4;
                }
              }

              else
              {
                v49 = "const";
                v52 = 6;
              }

              WTF::makeString<char,WGSL::Type,WTF::ASCIILiteral,WTF::ASCIILiteral,char>(&v57, v70, v49, v52);
              *this = v57;
              *(this + 8) = *(a3 + 8);
              *(this + 24) = 1;
              if (v70[48] != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v56, v70);
              }

              return;
            }

            v17 = v28;
          }

          v21 = *(a3 + 120);
LABEL_47:
          *(v21 + 24) = v17;
          v11 = *(a3 + 128);
          if (v11 <= 1)
          {
            goto LABEL_48;
          }

          goto LABEL_34;
        }

        if (v73 == 1)
        {
          v47 = v71;
          if (!v71)
          {
            goto LABEL_160;
          }

          goto LABEL_156;
        }

        goto LABEL_161;
      }
    }

    else
    {
      v17 = 0;
      v18 = *(a3 + 120);
      if (v18)
      {
        goto LABEL_14;
      }
    }

    v22 = 0;
    if (v11 <= 1)
    {
      goto LABEL_48;
    }

    goto LABEL_34;
  }

  v8 = *(a3 + 88);
  v9 = 8 * v7;
  while (1)
  {
    WGSL::TypeChecker::visit(&v71, a2, *v8);
    if (v73 == 1)
    {
      break;
    }

    ++v8;
    v9 -= 8;
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  v46 = v71;
  if (!v71)
  {
    v45 = v72;
    v57 = v72;
    *this = 0;
    goto LABEL_144;
  }

  atomic_fetch_add_explicit(v71, 2u, memory_order_relaxed);
  v57 = v72;
  if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, v10);
  }

  atomic_fetch_add_explicit(v46, 2u, memory_order_relaxed);
  *this = v46;
  *(this + 8) = v57;
  *(this + 24) = 1;
  if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, v10);
  }
}

void WGSL::TypeChecker::visit(WGSL::TypeChecker *this, WGSL::AST::ConstAssert *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  WGSL::TypeChecker::infer(&v20, a2, *(a3 + 24), 1u, 0);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_25;
    }

    v12 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      *(this + 8) = v21;
      *this = v12;
      *(this + 24) = 1;
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        WTF::StringImpl::destroy(v12, v7);
      }
    }

    else
    {
      *(this + 8) = v21;
      *this = 0;
      *(this + 24) = 1;
    }
  }

  else
  {
    v9 = *(*(a2 + 9) + 48);
    v10 = v20;
    if (v9 == v20 || WGSL::conversionRank(v20, v9, v8) != -1)
    {
      v11 = *(a3 + 24);
      LOBYTE(v17[0]) = 0;
      v19 = 0;
      if (*(v11 + 56) != 1)
      {
        WTF::makeString<WTF::ASCIILiteral>(&v16, "const assertion requires a const-expression", 0x2CuLL);
        v14 = *(a3 + 24);
        *this = v16;
        v15 = *(v14 + 8);
        goto LABEL_22;
      }

      v18 = -1;
      v6 = *(v11 + 48);
      if (v6 == 255)
      {
        v19 = 1;
      }

      else
      {
        v6 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, &v16, v17, (v11 + 32));
        v18 = *(v11 + 48);
        v19 = 1;
        if (v18 == 6)
        {
          if (v17[0])
          {
            *this = 0;
            *(this + 24) = 0;
            if (v19 != 1)
            {
              return;
            }

LABEL_9:
            if (v18 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v16, v17);
            }

            return;
          }

          WTF::makeString<WTF::ASCIILiteral>(&v16, "const assertion failed", 0x17uLL);
          *this = v16;
          v15 = *(a3 + 8);
LABEL_22:
          *(this + 8) = v15;
          *(this + 24) = 1;
          if (v19 != 1)
          {
            return;
          }

          goto LABEL_9;
        }
      }

LABEL_25:
      mpark::throw_bad_variant_access(v6);
    }

    WGSL::Type::Type(v23, v10);
    WTF::makeString<WTF::ASCIILiteral,WGSL::Type,char>(v17, "const assertion condition must be a BOOL, got '", 48, v23);
    v13 = *(a3 + 24);
    *this = v17[0];
    *(this + 8) = *(v13 + 8);
    *(this + 24) = 1;
    if (v23[48] != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v16, v23);
    }
  }
}

void WGSL::TypeChecker::resolve(WGSL::TypeChecker *this, WTF::StringImpl **a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*(*a3 + 16))(a3) == 21)
  {
    WGSL::TypeChecker::lookupType(&v12, a2, a3 + 64);
    if (!v14)
    {
      v8 = v12;
      a2[6] = v12;
      goto LABEL_6;
    }

    if (v14 != 1)
    {
      mpark::throw_bad_variant_access(v6);
    }

    v9 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      *(this + 8) = v13;
      *this = v9;
      *(this + 24) = 1;
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        return;
      }

LABEL_19:
      WTF::StringImpl::destroy(v9, v7);
      return;
    }

    *(this + 8) = v13;
    *this = 0;
LABEL_23:
    *(this + 24) = 1;
    return;
  }

  WGSL::TypeChecker::visit(&v12, a2, a3);
  if (v14 != 1)
  {
    v8 = a2[6];
LABEL_6:
    if (*(v8 + 48) == 13)
    {
      WGSL::Type::Type(v16, v8);
      WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral>(&v12, "type '", 7, v16, "' requires template arguments", 30);
      *this = v12;
      *(this + 8) = *(a3 + 8);
      *(this + 24) = 1;
      if (v16[48] != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v15, v16);
      }
    }

    else
    {
      *(a3 + 24) = v8;
      a2[6] = 0;
      *this = v8;
      *(this + 24) = 0;
    }

    return;
  }

  v10 = v12;
  if (!v12)
  {
    *this = 0;
    *(this + 8) = v13;
    goto LABEL_23;
  }

  atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
  v11 = v14;
  *this = v10;
  *(this + 8) = v13;
  *(this + 24) = 1;
  if (v11)
  {
    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        goto LABEL_19;
      }
    }
  }
}

WTF::StringImpl *WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral>(void *a1, int8x16_t *a2, uint64_t a3, unsigned __int8 *a4, int8x16_t *a5, uint64_t a6)
{
  v148[20] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a3 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >> 31)
  {
    __break(0xC471u);
    goto LABEL_201;
  }

  WTF::StringPrintStream::StringPrintStream(v148);
  WGSL::Type::dump(a4, v148);
  WTF::StringPrintStream::toString(&v147, v148);
  WTF::StringPrintStream::~StringPrintStream(v148);
  if (a6)
  {
    v14 = a6 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 >> 31)
  {
    __break(0xC471u);
    goto LABEL_199;
  }

  result = v147;
  if (v147)
  {
    v16 = *(v147 + 1);
    if (((v16 | v14) & 0x80000000) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = 0;
    if ((v14 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }
  }

  v17 = __OFADD__(v16, v14);
  v18 = v16 + v14;
  if (v17 || (v19 = (v6 + v18), __OFADD__(v6, v18)))
  {
LABEL_16:
    *a1 = 0;
    v20 = 1;
    v147 = 0;
    if (!result)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (!v147 || (v21 = *(v147 + 4), atomic_fetch_add_explicit(v147, 2u, memory_order_relaxed), (v21 & 4) != 0))
  {
    if (v19)
    {
      if ((v19 & 0x80000000) != 0)
      {
        v22 = 0;
      }

      else
      {
        v23 = result;
        WTF::tryFastCompactMalloc((v19 + 20));
        v22 = v148[0];
        if (v148[0])
        {
          v24 = (v148[0] + 20);
          *v148[0] = 2;
          *(v22 + 4) = v19;
          *(v22 + 8) = v22 + 20;
          *(v22 + 16) = 4;
          result = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
          }

          if (v6)
          {
            if (v6 == 1)
            {
              *v24 = a2->i8[0];
            }

            else
            {
              memcpy((v22 + 20), a2, v6);
              result = v23;
            }
          }

          v54 = v19 >= v6;
          v45 = v19 - v6;
          if (!v54)
          {
            goto LABEL_199;
          }

          v46 = &v24[v6];
          if (!result)
          {
            v69 = 0;
            if (v14)
            {
LABEL_100:
              if (v14 == 1)
              {
                v46[v69] = a5->i8[0];
              }

              else
              {
                memcpy(&v46[v69], a5, v14);
                result = v23;
              }
            }

LABEL_103:
            if (!result)
            {
              *a1 = v22;
              result = v147;
              v20 = v22 == 0;
              v147 = 0;
              if (!result)
              {
                goto LABEL_41;
              }

              goto LABEL_39;
            }

            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v23, v13);
              result = v23;
            }

            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v23, v13);
              result = v23;
            }

            goto LABEL_149;
          }

          atomic_fetch_add_explicit(result, 2u, memory_order_relaxed);
          v13 = *(result + 1);
          v47 = *(result + 1);
          if ((*(result + 16) & 4) != 0)
          {
            if (v47)
            {
              if (v47 == 1)
              {
                *v46 = v13->i8[0];
              }

              else
              {
                memcpy(v46, v13, v47);
                result = v23;
              }
            }
          }

          else
          {
            v48 = &v46[v47];
            if (v47 < 0x10)
            {
              v49 = v46;
            }

            else
            {
              v49 = v46;
              do
              {
                v50 = vld2q_s8(v13->i8);
                v13 += 2;
                *v49++ = v50;
              }

              while (v49 != &v46[v47 & 0xFFFFFFF0]);
            }

            if (v49 != v48)
            {
              v51 = a3 + v22 + v47;
              v52 = v51 - v49 - (a3 != 0) + 20;
              if (v52 < 4 || (!a3 ? (v53 = v49) : (v53 = (v49 + 1)), v49 < (&v13[2].u64[1] + 2 * v51 + -2 * v53) ? (v54 = v13 >= v51 - (a3 != 0) + 20) : (v54 = 1), !v54))
              {
                v56 = v49;
                v57 = v13;
                goto LABEL_91;
              }

              if (v52 >= 0x20)
              {
                v55 = v52 & 0xFFFFFFFFFFFFFFE0;
                v103 = v13 + 2;
                v104 = (v49 + 1);
                v105 = v52 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v107 = v103[-2];
                  v106 = v103[-1];
                  v109 = *v103;
                  v108 = v103[1];
                  v103 += 4;
                  v104[-1] = vuzp1q_s8(v107, v106);
                  *v104 = vuzp1q_s8(v109, v108);
                  v104 += 2;
                  v105 -= 32;
                }

                while (v105);
                if (v52 == v55)
                {
                  goto LABEL_98;
                }

                if ((v52 & 0x1C) == 0)
                {
                  v57 = (v13 + 2 * v55);
                  v56 = (v49 + v55);
                  do
                  {
LABEL_91:
                    v58 = v57->i8[0];
                    v57 = (v57 + 2);
                    *v56 = v58;
                    v56 = (v56 + 1);
                  }

                  while (v56 != v48);
                  goto LABEL_98;
                }
              }

              else
              {
                v55 = 0;
              }

              v56 = (v49 + (v52 & 0xFFFFFFFFFFFFFFFCLL));
              v57 = (v13 + 2 * (v52 & 0xFFFFFFFFFFFFFFFCLL));
              v110 = (v13 + 2 * v55);
              v111 = (v49 + v55);
              v112 = v55 - (v52 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                v113 = *v110++;
                *v111++ = vuzp1_s8(v113, v113).u32[0];
                v112 += 4;
              }

              while (v112);
              if (v52 != (v52 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_91;
              }
            }
          }

LABEL_98:
          v69 = *(result + 1);
          if (v45 < v69)
          {
LABEL_199:
            __break(1u);
            goto LABEL_200;
          }

          if (v14)
          {
            goto LABEL_100;
          }

          goto LABEL_103;
        }

        result = v23;
      }
    }

    else
    {
      v22 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    *a1 = v22;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (!v19)
  {
    v22 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_149;
  }

  if (v19 > 0x7FFFFFEF)
  {
    v22 = 0;
    goto LABEL_149;
  }

  v146 = result;
  WTF::tryFastCompactMalloc((2 * v19 + 20));
  v22 = v148[0];
  if (!v148[0])
  {
    goto LABEL_148;
  }

  v25 = v148[0] + 20;
  *v148[0] = 2;
  *(v22 + 4) = v19;
  *(v22 + 8) = v22 + 20;
  *(v22 + 16) = 0;
  result = v146;
  atomic_fetch_add_explicit(v146, 2u, memory_order_relaxed);
  v26 = (v22 + 20 + 2 * v6);
  if (v6 >= 0x40)
  {
    v27 = v25 + 2 * (v6 & 0x7FFFFFC0);
    v28 = 0uLL;
    do
    {
      v149.val[0] = *a2;
      v29 = a2[1];
      v152.val[0] = a2[2];
      v30 = a2[3];
      a2 += 4;
      v31 = v30;
      v152.val[1] = 0uLL;
      v155.val[0] = v29;
      v149.val[1] = 0uLL;
      v32 = v25;
      vst2q_s8(v32, v149);
      v32 += 32;
      v155.val[1] = 0uLL;
      vst2q_s8(v32, v155);
      v33 = (v25 + 64);
      vst2q_s8(v33, v152);
      v34 = (v25 + 96);
      vst2q_s8(v34, *(&v28 - 1));
      v25 += 128;
    }

    while (v25 != v27);
    v25 = v27;
  }

  if (v25 != v26)
  {
    v35 = v22 + 2 * a3 - v25;
    v36 = -2;
    if (a3)
    {
      v37 = -2;
    }

    else
    {
      v37 = 0;
    }

    v38 = v35 + v37 + 18;
    if (v38 < 0xE)
    {
      goto LABEL_57;
    }

    if (!a3)
    {
      v36 = 0;
    }

    v39 = v35 + v36 + 18;
    if (v25 < a2->u64 + (v39 >> 1) + 1 && a2 < (v39 & 0xFFFFFFFFFFFFFFFELL) + v25 + 2)
    {
LABEL_57:
      v40 = a2;
      v41 = v25;
      goto LABEL_58;
    }

    v99 = (v38 >> 1) + 1;
    if (v38 >= 0x3E)
    {
      v100 = v99 & 0xFFFFFFFFFFFFFFE0;
      v114 = (v25 + 32);
      v115 = &a2[1];
      v116 = v99 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v117 = *v115[-2].i8;
        v118 = vmovl_u8(*v115);
        v119 = vmovl_high_u8(*v115->i8);
        v114[-2] = vmovl_u8(*v117.i8);
        v114[-1] = vmovl_high_u8(v117);
        *v114 = v118;
        v114[1] = v119;
        v114 += 4;
        v115 += 4;
        v116 -= 32;
      }

      while (v116);
      if (v99 == v100)
      {
        goto LABEL_59;
      }

      if ((v99 & 0x18) == 0)
      {
        v41 = (v25 + 2 * v100);
        v40 = (a2 + v100);
        do
        {
LABEL_58:
          v42 = v40->u8[0];
          v40 = (v40 + 1);
          *v41++ = v42;
        }

        while (v41 != v26);
        goto LABEL_59;
      }
    }

    else
    {
      v100 = 0;
    }

    v40 = (a2 + (v99 & 0xFFFFFFFFFFFFFFF8));
    v41 = (v25 + 2 * (v99 & 0xFFFFFFFFFFFFFFF8));
    v120 = (v25 + 2 * v100);
    v121 = &a2->i8[v100];
    v122 = v100 - (v99 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v123 = *v121++;
      *v120++ = vmovl_u8(v123);
      v122 += 8;
    }

    while (v122);
    if (v99 != (v99 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_58;
    }
  }

LABEL_59:
  v54 = v19 >= v6;
  v43 = v19 - v6;
  if (!v54)
  {
    goto LABEL_199;
  }

  atomic_fetch_add_explicit(v146, 2u, memory_order_relaxed);
  v13 = *(v146 + 1);
  v44 = *(v146 + 1);
  if ((*(v146 + 16) & 4) != 0)
  {
    v59 = &v26[v44];
    if (v44 < 0x40)
    {
      v60 = v22 + 20 + 2 * v6;
    }

    else
    {
      v60 = &v26[v44 & 0xFFFFFFC0];
      v61 = 0uLL;
      v62 = v22 + 20 + 2 * v6;
      do
      {
        v150.val[0] = *v13;
        v63 = v13[1];
        v153.val[0] = v13[2];
        v64 = v13[3];
        v13 += 4;
        v65 = v64;
        v153.val[1] = 0uLL;
        v156.val[0] = v63;
        v150.val[1] = 0uLL;
        v66 = v62;
        vst2q_s8(v66, v150);
        v66 += 32;
        v156.val[1] = 0uLL;
        vst2q_s8(v66, v156);
        v67 = (v62 + 64);
        vst2q_s8(v67, v153);
        v68 = (v62 + 96);
        vst2q_s8(v68, *(&v61 - 1));
        v62 += 128;
      }

      while (v62 != v60);
    }

    if (v60 == v59)
    {
      goto LABEL_122;
    }

    v70 = v22 + 2 * (a3 + v44) - v60;
    v71 = -2;
    if (a3)
    {
      v72 = -2;
    }

    else
    {
      v72 = 0;
    }

    v73 = v70 + v72 + 18;
    if (v73 < 0xE)
    {
      goto LABEL_118;
    }

    if (!a3)
    {
      v71 = 0;
    }

    v74 = v70 + v71 + 18;
    if (v60 < v13->u64 + (v74 >> 1) + 1 && v13 < (v74 & 0xFFFFFFFFFFFFFFFELL) + v60 + 2)
    {
LABEL_118:
      v75 = v13;
      v76 = v60;
      goto LABEL_119;
    }

    v124 = (v73 >> 1) + 1;
    if (v73 >= 0x3E)
    {
      v125 = v124 & 0xFFFFFFFFFFFFFFE0;
      v136 = (v60 + 32);
      v137 = &v13[1];
      v138 = v124 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v139 = *v137[-2].i8;
        v140 = vmovl_u8(*v137);
        v141 = vmovl_high_u8(*v137->i8);
        v136[-2] = vmovl_u8(*v139.i8);
        v136[-1] = vmovl_high_u8(v139);
        *v136 = v140;
        v136[1] = v141;
        v136 += 4;
        v137 += 4;
        v138 -= 32;
      }

      while (v138);
      if (v124 == v125)
      {
        goto LABEL_122;
      }

      if ((v124 & 0x18) == 0)
      {
        v76 = (v60 + 2 * v125);
        v75 = (v13 + v125);
        goto LABEL_119;
      }
    }

    else
    {
      v125 = 0;
    }

    v75 = (v13 + (v124 & 0xFFFFFFFFFFFFFFF8));
    v76 = (v60 + 2 * (v124 & 0xFFFFFFFFFFFFFFF8));
    v142 = (v60 + 2 * v125);
    v143 = &v13->i8[v125];
    v144 = v125 - (v124 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v145 = *v143++;
      *v142++ = vmovl_u8(v145);
      v144 += 8;
    }

    while (v144);
    if (v124 == (v124 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_122;
    }

    do
    {
LABEL_119:
      v77 = v75->u8[0];
      v75 = (v75 + 1);
      *v76++ = v77;
    }

    while (v76 != v59);
    goto LABEL_122;
  }

  if (v44)
  {
    if (v44 == 1)
    {
      *v26 = v13->i16[0];
    }

    else
    {
      memcpy((v22 + 20 + 2 * v6), v13, 2 * v44);
      result = v146;
    }
  }

LABEL_122:
  v78 = *(result + 1);
  if (v43 < v78)
  {
    goto LABEL_199;
  }

  v79 = &v26[v78];
  v80 = (v79 + 2 * v14);
  if (v14 >= 0x40)
  {
    v81 = v79 + 2 * (v14 & 0x7FFFFFC0);
    v82 = 0uLL;
    do
    {
      v151.val[0] = *a5;
      v83 = a5[1];
      v154.val[0] = a5[2];
      v84 = a5[3];
      a5 += 4;
      v85 = v84;
      v154.val[1] = 0uLL;
      v157.val[0] = v83;
      v151.val[1] = 0uLL;
      v86 = v79;
      vst2q_s8(v86, v151);
      v86 += 32;
      v157.val[1] = 0uLL;
      vst2q_s8(v86, v157);
      v87 = (v79 + 64);
      vst2q_s8(v87, v154);
      v88 = (v79 + 96);
      vst2q_s8(v88, *(&v82 - 1));
      v79 += 128;
    }

    while (v79 != v81);
    v79 = v81;
  }

  if (v79 != v80)
  {
    v89 = v22 + 2 * (a3 + a6 + v78) - v79;
    v90 = -2;
    if (a3)
    {
      v91 = -2;
    }

    else
    {
      v91 = 0;
    }

    if (a6)
    {
      v92 = -2;
    }

    else
    {
      v92 = 0;
    }

    v93 = v89 + v91 + v92 + 18;
    if (v93 < 0xE)
    {
      goto LABEL_142;
    }

    if (a3)
    {
      v94 = -2;
    }

    else
    {
      v94 = 0;
    }

    if (!a6)
    {
      v90 = 0;
    }

    v95 = v89 + v94 + v90 + 18;
    if (v79 < a5->u64 + (v95 >> 1) + 1 && a5 < (v95 & 0xFFFFFFFFFFFFFFFELL) + v79 + 2)
    {
LABEL_142:
      v96 = a5;
      v97 = v79;
      goto LABEL_143;
    }

    v101 = (v93 >> 1) + 1;
    if (v93 >= 0x3E)
    {
      v102 = v101 & 0xFFFFFFFFFFFFFFE0;
      v126 = (v79 + 32);
      v127 = &a5[1];
      v128 = v101 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v129 = *v127[-2].i8;
        v130 = vmovl_u8(*v127);
        v131 = vmovl_high_u8(*v127->i8);
        v126[-2] = vmovl_u8(*v129.i8);
        v126[-1] = vmovl_high_u8(v129);
        *v126 = v130;
        v126[1] = v131;
        v126 += 4;
        v127 += 4;
        v128 -= 32;
      }

      while (v128);
      if (v101 == v102)
      {
        goto LABEL_144;
      }

      if ((v101 & 0x18) == 0)
      {
        v97 = (v79 + 2 * v102);
        v96 = (a5 + v102);
        do
        {
LABEL_143:
          v98 = v96->u8[0];
          v96 = (v96 + 1);
          *v97++ = v98;
        }

        while (v97 != v80);
        goto LABEL_144;
      }
    }

    else
    {
      v102 = 0;
    }

    v96 = (a5 + (v101 & 0xFFFFFFFFFFFFFFF8));
    v97 = (v79 + 2 * (v101 & 0xFFFFFFFFFFFFFFF8));
    v132 = (v79 + 2 * v102);
    v133 = &a5->i8[v102];
    v134 = v102 - (v101 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v135 = *v133++;
      *v132++ = vmovl_u8(v135);
      v134 += 8;
    }

    while (v134);
    if (v101 != (v101 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_143;
    }
  }

LABEL_144:
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v146, v13);
    result = v146;
  }

  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v146, v13);
LABEL_148:
    result = v146;
  }

LABEL_149:
  *a1 = v22;
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
LABEL_37:
    WTF::StringImpl::destroy(result, v13);
  }

LABEL_38:
  result = v147;
  v20 = v22 == 0;
  v147 = 0;
  if (!result)
  {
    goto LABEL_41;
  }

LABEL_39:
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v13);
  }

LABEL_41:
  if (v20)
  {
LABEL_200:
    __break(0xC471u);
LABEL_201:
    JUMPOUT(0x225858F68);
  }

  return result;
}

WGSL::Type *WGSL::Type::Type(WGSL::Type *this, const void **a2)
{
  *this = 0;
  *(this + 48) = -1;
  v3 = *(a2 + 48);
  if (v3 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJN4WGSL5Types9PrimitiveENS7_6VectorENS7_6MatrixENS7_5ArrayENS7_6StructENS7_15PrimitiveStructENS7_8FunctionENS7_7TextureENS7_14TextureStorageENS7_12TextureDepthENS7_9ReferenceENS7_7PointerENS7_6AtomicENS7_15TypeConstructorEEEEE17generic_constructIRKNS0_16copy_constructorISM_LNS0_5TraitE1EEEEEvRSN_OT_EUlRSV_OT0_E_JSU_ST_EEEDcmSW_DpOT0_(v3, &v6, this, a2);
    *(this + 48) = *(a2 + 48);
  }

  return this;
}

void *WTF::makeString<WTF::ASCIILiteral>(void *result, _BYTE *a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a3 - 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3 >> 31)
  {
    __break(0xC471u);
    goto LABEL_14;
  }

  v4 = result;
  if (a3 <= 1)
  {
    v5 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    *result = v5;
    return result;
  }

  WTF::tryFastCompactMalloc((v3 + 20));
  if (!v7)
  {
    *v4 = 0;
    __break(0xC471u);
LABEL_14:
    JUMPOUT(0x2258590E8);
  }

  result = (v7 + 20);
  *v7 = 2;
  *(v7 + 4) = v3;
  *(v7 + 8) = v7 + 20;
  *(v7 + 16) = 4;
  if (v3 == 1)
  {
    *result = *a2;
  }

  else
  {
    result = memcpy(result, a2, v3);
  }

  *v4 = v7;
  return result;
}

__n128 WGSL::TypeChecker::infer(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5)
{
  v7 = *(a2 + 64);
  if (v7 < a4)
  {
    v13 = "constant";
    if (a4 == 2)
    {
      v13 = "override";
    }

    if (a4 == 3)
    {
      v14 = "runtime";
    }

    else
    {
      v14 = v13;
    }

    if (a4 == 3)
    {
      v15 = 8;
    }

    else
    {
      v15 = 9;
    }

    v16 = "constant";
    if (v7 == 2)
    {
      v16 = "override";
    }

    if (v7 == 3)
    {
      v17 = "runtime";
    }

    else
    {
      v17 = v16;
    }

    if (v7 == 3)
    {
      v18 = 8;
    }

    else
    {
      v18 = 9;
    }

    WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(&v22, v14, v15, v17, v18);
    *a1 = v22;
    result = *(a3 + 8);
    *(a1 + 8) = result;
    *(a1 + 24) = 1;
  }

  else
  {
    v9 = *(a2 + 65);
    *(a2 + 65) = a5;
    *(a2 + 64) = a4;
    WGSL::TypeChecker::visit(&v22, a2);
    if (v24 == 1)
    {
      v19 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
        v20 = v24;
        *a1 = v19;
        result.n128_u64[0] = v23;
        *(a1 + 8) = v23;
        *(a1 + 24) = 1;
        if (v20)
        {
          v21 = v22;
          v22 = 0;
          if (v21)
          {
            if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v21, v10);
            }
          }
        }
      }

      else
      {
        *a1 = 0;
        result.n128_u64[0] = v23;
        *(a1 + 8) = v23;
        *(a1 + 24) = 1;
      }
    }

    else
    {
      v12 = *(a2 + 48);
      *(a3 + 24) = v12;
      *(a2 + 48) = 0;
      *a1 = v12;
      *(a1 + 24) = 0;
    }

    *(a2 + 64) = v7;
    *(a2 + 65) = v9;
  }

  return result;
}

unint64_t WTF::makeString<char,WGSL::Type,WTF::ASCIILiteral,WTF::ASCIILiteral,char>(void *a1, unsigned __int8 *a2, int8x16_t *a3, uint64_t a4)
{
  v114[20] = *MEMORY[0x277D85DE8];
  WTF::StringPrintStream::StringPrintStream(v114);
  WGSL::Type::dump(a2, v114);
  WTF::StringPrintStream::toString(&v113, v114);
  WTF::StringPrintStream::~StringPrintStream(v114);
  if (a4)
  {
    v9 = a4 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 >> 31)
  {
    result = 161;
    __break(0xC471u);
    goto LABEL_139;
  }

  v10 = v113;
  if (v113)
  {
    v11 = *(v113 + 1);
    v12 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_10;
    }

LABEL_15:
    v17 = 0;
    *a1 = 0;
    goto LABEL_16;
  }

  v11 = 0;
  v12 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    goto LABEL_15;
  }

LABEL_10:
  v13 = __OFADD__(v12, 35);
  v14 = v12 + 35;
  if (v13)
  {
    goto LABEL_15;
  }

  if (v11 < 0)
  {
    goto LABEL_15;
  }

  v13 = __OFADD__(v11, v14);
  v15 = v11 + v14;
  if (v13)
  {
    goto LABEL_15;
  }

  v16 = (v15 + 1);
  if (__OFADD__(v15, 1))
  {
    goto LABEL_15;
  }

  if (!v113 || (v19 = *(v113 + 4), atomic_fetch_add_explicit(v113, 2u, memory_order_relaxed), (v19 & 4) != 0))
  {
    if ((v16 & 0x80000000) != 0 || (result = WTF::tryFastCompactMalloc((v16 + 20)), (v17 = v114[0]) == 0))
    {
      v17 = 0;
      *a1 = 0;
      if (!v10)
      {
        goto LABEL_16;
      }

      goto LABEL_106;
    }

    *v114[0] = 2;
    *(v17 + 4) = v16;
    *(v17 + 8) = v17 + 20;
    *(v17 + 16) = 4;
    if (!v10)
    {
      v45 = 0;
      *(v17 + 20) = 39;
      v20 = v16 - 1;
LABEL_60:
      v46 = v17 + v45;
      v47 = v20 - v45;
      qmemcpy((v46 + 21), "' cannot be used as the type of a '", 35);
      if (v47 > 0x22)
      {
        v48 = v46 + 21;
        v49 = v47 - 35;
        v50 = (v48 + 35);
        if (v9)
        {
          if (v9 == 1)
          {
            *v50 = a3->i8[0];
          }

          else
          {
            result = memcpy((v48 + 35), a3, v9);
          }
        }

        if (v49 > v9)
        {
          v50[v9] = 39;
          if (!v10)
          {
            *a1 = v17;
            goto LABEL_16;
          }

          goto LABEL_101;
        }
      }

LABEL_139:
      __break(1u);
LABEL_140:
      __break(0xC471u);
      return result;
    }

    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    *(v17 + 20) = 39;
    v20 = v16 - 1;
    result = v17 + 21;
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    v8 = *(v10 + 1);
    v21 = *(v10 + 1);
    if ((*(v10 + 16) & 4) != 0)
    {
      if (v21)
      {
        if (v21 == 1)
        {
          *result = v8->i8[0];
        }

        else
        {
          result = memcpy(result, v8, v21);
        }
      }
    }

    else
    {
      v22 = (result + v21);
      if (v21 >= 0x10)
      {
        v23 = result + (v21 & 0xFFFFFFF0);
        do
        {
          v24 = vld2q_s8(v8->i8);
          v8 += 2;
          *result = v24;
          result += 16;
        }

        while (result != v23);
      }

      if (result != v22)
      {
        v25 = v17 + v21;
        v26 = v17 + v21 - result + 21;
        if (v26 < 4 || (result < &v8[2].u64[1] + 2 * v25 + -2 * result + 2 ? (v27 = v8 >= v25 + 21) : (v27 = 1), !v27))
        {
          v32 = result;
          v33 = v8;
          goto LABEL_52;
        }

        if (v26 >= 0x20)
        {
          v28 = v26 & 0xFFFFFFFFFFFFFFE0;
          v82 = v8 + 2;
          v83 = (result + 16);
          v84 = v26 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v86 = v82[-2];
            v85 = v82[-1];
            v88 = *v82;
            v87 = v82[1];
            v82 += 4;
            v83[-1] = vuzp1q_s8(v86, v85);
            *v83 = vuzp1q_s8(v88, v87);
            v83 += 2;
            v84 -= 32;
          }

          while (v84);
          if (v26 == v28)
          {
            goto LABEL_59;
          }

          if ((v26 & 0x1C) == 0)
          {
            v33 = (v8 + 2 * v28);
            v32 = (result + v28);
            do
            {
LABEL_52:
              v34 = v33->i8[0];
              v33 = (v33 + 2);
              *v32++ = v34;
            }

            while (v32 != v22);
            goto LABEL_59;
          }
        }

        else
        {
          v28 = 0;
        }

        v32 = (result + (v26 & 0xFFFFFFFFFFFFFFFCLL));
        v33 = (v8 + 2 * (v26 & 0xFFFFFFFFFFFFFFFCLL));
        v89 = (v8 + 2 * v28);
        v90 = (result + v28);
        v91 = v28 - (v26 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v92 = *v89++;
          *v90++ = vuzp1_s8(v92, v92).u32[0];
          v91 += 4;
        }

        while (v91);
        if (v26 != (v26 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_52;
        }
      }
    }

LABEL_59:
    v45 = *(v10 + 1);
    if (v20 < v45)
    {
      goto LABEL_139;
    }

    goto LABEL_60;
  }

  if (v16 > 0x7FFFFFEF)
  {
    v17 = 0;
    *a1 = 0;
    goto LABEL_106;
  }

  result = WTF::tryFastCompactMalloc((2 * v16 + 20));
  v17 = v114[0];
  if (v114[0])
  {
    *v114[0] = 2;
    *(v17 + 4) = v16;
    *(v17 + 8) = v17 + 20;
    *(v17 + 16) = 0;
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    *(v17 + 20) = 39;
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    v29 = v16 - 1;
    v30 = (v17 + 22);
    v8 = *(v10 + 1);
    v31 = *(v10 + 1);
    if ((*(v10 + 16) & 4) == 0)
    {
      if (v31)
      {
        if (v31 == 1)
        {
          *v30 = v8->i16[0];
        }

        else
        {
          result = memcpy((v17 + 22), v8, 2 * v31);
        }
      }

LABEL_82:
      v58 = *(v10 + 1);
      v59 = v29 - v58;
      if (v29 < v58)
      {
        goto LABEL_139;
      }

      v60 = &v30[v58];
      *v60 = xmmword_225882830;
      *(v60 + 1) = xmmword_225882840;
      *(v60 + 2) = xmmword_225882850;
      *(v60 + 3) = xmmword_225882860;
      *(v60 + 16) = 2097249;
      v60[34] = 39;
      if (v59 <= 0x22)
      {
        goto LABEL_139;
      }

      v61 = (v60 + 35);
      v62 = &v60[v9 + 35];
      if (v9 >= 0x40)
      {
        v63 = v61 + 2 * (v9 & 0x7FFFFFC0);
        v64 = 0uLL;
        do
        {
          v116.val[0] = *a3;
          v65 = a3[1];
          v118.val[0] = a3[2];
          v66 = a3[3];
          a3 += 4;
          v67 = v66;
          v118.val[1] = 0uLL;
          v120.val[0] = v65;
          v116.val[1] = 0uLL;
          v68 = v61;
          vst2q_s8(v68, v116);
          v68 += 32;
          v120.val[1] = 0uLL;
          vst2q_s8(v68, v120);
          v69 = (v61 + 64);
          vst2q_s8(v69, v118);
          v70 = (v61 + 96);
          vst2q_s8(v70, *(&v64 - 1));
          v61 += 128;
        }

        while (v61 != v63);
        v61 = v63;
      }

      v71 = v59 - 35;
      if (v61 == v62)
      {
        goto LABEL_99;
      }

      v72 = v17 + 2 * (a4 + v58) - v61;
      v73 = -2;
      if (a4)
      {
        v74 = -2;
      }

      else
      {
        v74 = 0;
      }

      v75 = v72 + v74 + 90;
      if (v75 < 0xE)
      {
        goto LABEL_97;
      }

      if (!a4)
      {
        v73 = 0;
      }

      v76 = v72 + v73 + 90;
      if (v61 < a3->u64 + (v76 >> 1) + 1 && a3 < (v76 & 0xFFFFFFFFFFFFFFFELL) + v61 + 2)
      {
LABEL_97:
        v77 = a3;
        v78 = v61;
        goto LABEL_98;
      }

      v80 = (v75 >> 1) + 1;
      if (v75 >= 0x3E)
      {
        v81 = v80 & 0xFFFFFFFFFFFFFFE0;
        v93 = (v61 + 32);
        v94 = &a3[1];
        v95 = v80 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v96 = *v94[-2].i8;
          v97 = vmovl_u8(*v94);
          v98 = vmovl_high_u8(*v94->i8);
          v93[-2] = vmovl_u8(*v96.i8);
          v93[-1] = vmovl_high_u8(v96);
          *v93 = v97;
          v93[1] = v98;
          v93 += 4;
          v94 += 4;
          v95 -= 32;
        }

        while (v95);
        if (v80 == v81)
        {
          goto LABEL_99;
        }

        if ((v80 & 0x18) == 0)
        {
          v78 = (v61 + 2 * v81);
          v77 = (a3 + v81);
          do
          {
LABEL_98:
            v79 = v77->u8[0];
            v77 = (v77 + 1);
            *v78++ = v79;
          }

          while (v78 != v62);
          goto LABEL_99;
        }
      }

      else
      {
        v81 = 0;
      }

      v77 = (a3 + (v80 & 0xFFFFFFFFFFFFFFF8));
      v78 = (v61 + 2 * (v80 & 0xFFFFFFFFFFFFFFF8));
      v99 = (v61 + 2 * v81);
      v100 = &a3->i8[v81];
      v101 = v81 - (v80 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v102 = *v100++;
        *v99++ = vmovl_u8(v102);
        v101 += 8;
      }

      while (v101);
      if (v80 != (v80 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_98;
      }

LABEL_99:
      if (v71 > v9)
      {
        *v62 = 39;
LABEL_101:
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v8);
        }

        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v8);
        }

        goto LABEL_105;
      }

      goto LABEL_139;
    }

    v35 = &v30[v31];
    if (v31 < 0x40)
    {
      v36 = v17 + 22;
    }

    else
    {
      v36 = &v30[v31 & 0xFFFFFFC0];
      v37 = 0uLL;
      v38 = (v17 + 22);
      do
      {
        v115.val[0] = *v8;
        v39 = v8[1];
        v117.val[0] = v8[2];
        v40 = v8[3];
        v8 += 4;
        v41 = v40;
        v117.val[1] = 0uLL;
        v119.val[0] = v39;
        v115.val[1] = 0uLL;
        v42 = v38;
        vst2q_s8(v42, v115);
        v42 += 32;
        v119.val[1] = 0uLL;
        vst2q_s8(v42, v119);
        v43 = v38 + 64;
        vst2q_s8(v43, v117);
        v44 = v38 + 96;
        vst2q_s8(v44, *(&v37 - 1));
        v38 += 128;
      }

      while (v38 != v36);
    }

    if (v36 == v35)
    {
      goto LABEL_82;
    }

    v51 = v17 + 2 * v31 - v36 + 20;
    if (v51 < 0xE || (v36 < v8->u64 + (v51 >> 1) + 1 ? (v52 = v8 >= (v51 & 0xFFFFFFFFFFFFFFFELL) + v36 + 2) : (v52 = 1), !v52))
    {
      v55 = v8;
      v56 = v36;
      goto LABEL_79;
    }

    v53 = (v51 >> 1) + 1;
    if (v51 >= 0x3E)
    {
      v54 = v53 & 0xFFFFFFFFFFFFFFE0;
      v103 = (v36 + 32);
      v104 = &v8[1];
      v105 = v53 & 0xFFFFFFFFFFFFFFE0;
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
      if (v53 == v54)
      {
        goto LABEL_82;
      }

      if ((v53 & 0x18) == 0)
      {
        v56 = (v36 + 2 * v54);
        v55 = (v8 + v54);
        goto LABEL_79;
      }
    }

    else
    {
      v54 = 0;
    }

    v55 = (v8 + (v53 & 0xFFFFFFFFFFFFFFF8));
    v56 = (v36 + 2 * (v53 & 0xFFFFFFFFFFFFFFF8));
    v109 = (v36 + 2 * v54);
    v110 = &v8->i8[v54];
    v111 = v54 - (v53 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v112 = *v110++;
      *v109++ = vmovl_u8(v112);
      v111 += 8;
    }

    while (v111);
    if (v53 == (v53 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_82;
    }

    do
    {
LABEL_79:
      v57 = v55->u8[0];
      v55 = (v55 + 1);
      *v56++ = v57;
    }

    while (v56 != v35);
    goto LABEL_82;
  }

LABEL_105:
  *a1 = v17;
LABEL_106:
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

LABEL_16:
  result = v113;
  v113 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v8);
    }
  }

  if (!v17)
  {
    goto LABEL_140;
  }

  return result;
}

WTF::StringImpl *WTF::makeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral,WGSL::Type,char>(WTF::StringImpl **a1, int8x16_t *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  v10[0] = a5;
  v10[1] = a6;
  v9 = 39;
  result = WTF::tryMakeString<WTF::ASCIILiteral,WGSL::Type,WTF::ASCIILiteral,WGSL::Type,char>(a1, a2, a3, a4, v10, a7, &v9);
  if (!*a1)
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::makeString<char,WGSL::Type,WTF::ASCIILiteral>(void *a1, unsigned __int8 *a2, int8x16_t *a3, uint64_t a4)
{
  v106[20] = *MEMORY[0x277D85DE8];
  WTF::StringPrintStream::StringPrintStream(v106);
  WGSL::Type::dump(a2, v106);
  WTF::StringPrintStream::toString(&v105, v106);
  WTF::StringPrintStream::~StringPrintStream(v106);
  if (a4)
  {
    v9 = a4 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 >> 31)
  {
    result = 161;
    __break(0xC471u);
    goto LABEL_142;
  }

  result = v105;
  if (v105)
  {
    v11 = *(v105 + 1);
    if (((v11 | v9) & 0x80000000) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_12;
    }
  }

  v12 = __OFADD__(v11, v9);
  v13 = v11 + v9;
  if (v12 || (v14 = (v13 + 1), __OFADD__(v13, 1)))
  {
LABEL_12:
    *a1 = 0;
    v15 = 1;
    v105 = 0;
    if (!result)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (!v105 || (v16 = *(v105 + 4), atomic_fetch_add_explicit(v105, 2u, memory_order_relaxed), (v16 & 4) != 0))
  {
    if (v14)
    {
      if ((v14 & 0x80000000) != 0)
      {
        v17 = 0;
      }

      else
      {
        v18 = result;
        WTF::tryFastCompactMalloc((v14 + 20));
        v17 = v106[0];
        if (v106[0])
        {
          *v106[0] = 2;
          *(v17 + 4) = v14;
          *(v17 + 8) = v17 + 20;
          *(v17 + 16) = 4;
          result = v18;
          if (!v18)
          {
            v44 = 0;
            *(v17 + 20) = 39;
            if (!v9)
            {
              goto LABEL_69;
            }

            goto LABEL_66;
          }

          atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
          *(v17 + 20) = 39;
          v19 = v17 + 21;
          atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
          v8 = *(v18 + 8);
          v20 = *(v18 + 4);
          if ((*(v18 + 16) & 4) != 0)
          {
            if (v20)
            {
              if (v20 == 1)
              {
                *v19 = v8->i8[0];
              }

              else
              {
                memcpy((v17 + 21), v8, v20);
                result = v18;
              }
            }
          }

          else
          {
            v21 = (v19 + v20);
            if (v20 >= 0x10)
            {
              v22 = v19 + (v20 & 0xFFFFFFF0);
              do
              {
                v23 = vld2q_s8(v8->i8);
                v8 += 2;
                *v19 = v23;
                v19 += 16;
              }

              while (v19 != v22);
            }

            if (v19 != v21)
            {
              v24 = v17 + v20;
              v25 = v17 + v20 - v19 + 21;
              if (v25 < 4 || (v19 < &v8[2].u64[1] + 2 * v24 + -2 * v19 + 2 ? (v26 = v8 >= v24 + 21) : (v26 = 1), !v26))
              {
                v31 = v19;
                v32 = v8;
                goto LABEL_57;
              }

              if (v25 >= 0x20)
              {
                v27 = v25 & 0xFFFFFFFFFFFFFFE0;
                v74 = v8 + 2;
                v75 = (v19 + 16);
                v76 = v25 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v78 = v74[-2];
                  v77 = v74[-1];
                  v80 = *v74;
                  v79 = v74[1];
                  v74 += 4;
                  v75[-1] = vuzp1q_s8(v78, v77);
                  *v75 = vuzp1q_s8(v80, v79);
                  v75 += 2;
                  v76 -= 32;
                }

                while (v76);
                if (v25 == v27)
                {
                  goto LABEL_64;
                }

                if ((v25 & 0x1C) == 0)
                {
                  v32 = (v8 + 2 * v27);
                  v31 = (v19 + v27);
                  do
                  {
LABEL_57:
                    v33 = v32->i8[0];
                    v32 = (v32 + 2);
                    *v31++ = v33;
                  }

                  while (v31 != v21);
                  goto LABEL_64;
                }
              }

              else
              {
                v27 = 0;
              }

              v31 = (v19 + (v25 & 0xFFFFFFFFFFFFFFFCLL));
              v32 = (v8 + 2 * (v25 & 0xFFFFFFFFFFFFFFFCLL));
              v81 = (v8 + 2 * v27);
              v82 = (v19 + v27);
              v83 = v27 - (v25 & 0xFFFFFFFFFFFFFFFCLL);
              do
              {
                v84 = *v81++;
                *v82++ = vuzp1_s8(v84, v84).u32[0];
                v83 += 4;
              }

              while (v83);
              if (v25 != (v25 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_57;
              }
            }
          }

LABEL_64:
          v44 = *(result + 4);
          if (v14 - 1 < v44)
          {
LABEL_142:
            __break(1u);
            goto LABEL_143;
          }

          if (!v9)
          {
LABEL_69:
            if (!result)
            {
              *a1 = v17;
              result = v105;
              v15 = v17 == 0;
              v105 = 0;
              if (!result)
              {
                goto LABEL_46;
              }

              goto LABEL_44;
            }

            goto LABEL_70;
          }

LABEL_66:
          v45 = v17 + v44;
          if (v9 == 1)
          {
            *(v45 + 21) = a3->i8[0];
          }

          else
          {
            memcpy((v45 + 21), a3, v9);
            result = v18;
          }

          goto LABEL_69;
        }

        result = v18;
      }
    }

    else
    {
      v17 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    *a1 = v17;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if (!v14)
  {
    v17 = MEMORY[0x277CD4668];
    atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    goto LABEL_75;
  }

  if (v14 > 0x7FFFFFEF)
  {
    v17 = 0;
    goto LABEL_75;
  }

  v18 = result;
  WTF::tryFastCompactMalloc((2 * v14 + 20));
  v17 = v106[0];
  if (!v106[0])
  {
    goto LABEL_74;
  }

  *v106[0] = 2;
  *(v17 + 4) = v14;
  *(v17 + 8) = v17 + 20;
  *(v17 + 16) = 0;
  result = v18;
  atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  *(v17 + 20) = 39;
  v28 = v14 - 1;
  v29 = (v17 + 22);
  atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  v8 = *(v18 + 8);
  v30 = *(v18 + 4);
  if ((*(v18 + 16) & 4) != 0)
  {
    v34 = &v29[v30];
    if (v30 < 0x40)
    {
      v35 = v17 + 22;
    }

    else
    {
      v35 = &v29[v30 & 0xFFFFFFC0];
      v36 = 0uLL;
      v37 = (v17 + 22);
      do
      {
        v107.val[0] = *v8;
        v38 = v8[1];
        v109.val[0] = v8[2];
        v39 = v8[3];
        v8 += 4;
        v40 = v39;
        v109.val[1] = 0uLL;
        v111.val[0] = v38;
        v107.val[1] = 0uLL;
        v41 = v37;
        vst2q_s8(v41, v107);
        v41 += 32;
        v111.val[1] = 0uLL;
        vst2q_s8(v41, v111);
        v42 = v37 + 64;
        vst2q_s8(v42, v109);
        v43 = v37 + 96;
        vst2q_s8(v43, *(&v36 - 1));
        v37 += 128;
      }

      while (v37 != v35);
    }

    if (v35 == v34)
    {
      goto LABEL_91;
    }

    v46 = v17 + 2 * v30 - v35 + 20;
    if (v46 < 0xE || (v35 < v8->u64 + (v46 >> 1) + 1 ? (v47 = v8 >= (v46 & 0xFFFFFFFFFFFFFFFELL) + v35 + 2) : (v47 = 1), !v47))
    {
      v50 = v8;
      v51 = v35;
      goto LABEL_88;
    }

    v48 = (v46 >> 1) + 1;
    if (v46 >= 0x3E)
    {
      v49 = v48 & 0xFFFFFFFFFFFFFFE0;
      v95 = (v35 + 32);
      v96 = &v8[1];
      v97 = v48 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v98 = *v96[-2].i8;
        v99 = vmovl_u8(*v96);
        v100 = vmovl_high_u8(*v96->i8);
        v95[-2] = vmovl_u8(*v98.i8);
        v95[-1] = vmovl_high_u8(v98);
        *v95 = v99;
        v95[1] = v100;
        v95 += 4;
        v96 += 4;
        v97 -= 32;
      }

      while (v97);
      if (v48 == v49)
      {
        goto LABEL_91;
      }

      if ((v48 & 0x18) == 0)
      {
        v51 = (v35 + 2 * v49);
        v50 = (v8 + v49);
        goto LABEL_88;
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = (v8 + (v48 & 0xFFFFFFFFFFFFFFF8));
    v51 = (v35 + 2 * (v48 & 0xFFFFFFFFFFFFFFF8));
    v101 = (v35 + 2 * v49);
    v102 = &v8->i8[v49];
    v103 = v49 - (v48 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v104 = *v102++;
      *v101++ = vmovl_u8(v104);
      v103 += 8;
    }

    while (v103);
    if (v48 == (v48 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_91;
    }

    do
    {
LABEL_88:
      v52 = v50->u8[0];
      v50 = (v50 + 1);
      *v51++ = v52;
    }

    while (v51 != v34);
    goto LABEL_91;
  }

  if (v30)
  {
    if (v30 == 1)
    {
      *v29 = v8->i16[0];
    }

    else
    {
      memcpy((v17 + 22), v8, 2 * v30);
      result = v18;
    }
  }

LABEL_91:
  v53 = *(result + 4);
  if (v28 < v53)
  {
    goto LABEL_142;
  }

  v54 = &v29[v53];
  v55 = (v54 + 2 * v9);
  if (v9 >= 0x40)
  {
    v56 = v54 + 2 * (v9 & 0x7FFFFFC0);
    v57 = 0uLL;
    do
    {
      v108.val[0] = *a3;
      v58 = a3[1];
      v110.val[0] = a3[2];
      v59 = a3[3];
      a3 += 4;
      v60 = v59;
      v110.val[1] = 0uLL;
      v112.val[0] = v58;
      v108.val[1] = 0uLL;
      v61 = v54;
      vst2q_s8(v61, v108);
      v61 += 32;
      v112.val[1] = 0uLL;
      vst2q_s8(v61, v112);
      v62 = (v54 + 64);
      vst2q_s8(v62, v110);
      v63 = (v54 + 96);
      vst2q_s8(v63, *(&v57 - 1));
      v54 += 128;
    }

    while (v54 != v56);
    v54 = v56;
  }

  if (v54 != v55)
  {
    v64 = v17 + 2 * (a4 + v53) - v54;
    v65 = -2;
    if (a4)
    {
      v66 = -2;
    }

    else
    {
      v66 = 0;
    }

    v67 = v64 + v66 + 20;
    if (v67 < 0xE)
    {
      goto LABEL_105;
    }

    if (!a4)
    {
      v65 = 0;
    }

    v68 = v64 + v65 + 20;
    if (v54 < a3->u64 + (v68 >> 1) + 1 && a3 < (v68 & 0xFFFFFFFFFFFFFFFELL) + v54 + 2)
    {
LABEL_105:
      v69 = a3;
      v70 = v54;
      goto LABEL_106;
    }

    v72 = (v67 >> 1) + 1;
    if (v67 >= 0x3E)
    {
      v73 = v72 & 0xFFFFFFFFFFFFFFE0;
      v85 = (v54 + 32);
      v86 = &a3[1];
      v87 = v72 & 0xFFFFFFFFFFFFFFE0;
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
      if (v72 == v73)
      {
        goto LABEL_70;
      }

      if ((v72 & 0x18) == 0)
      {
        v70 = (v54 + 2 * v73);
        v69 = (a3 + v73);
        do
        {
LABEL_106:
          v71 = v69->u8[0];
          v69 = (v69 + 1);
          *v70++ = v71;
        }

        while (v70 != v55);
        goto LABEL_70;
      }
    }

    else
    {
      v73 = 0;
    }

    v69 = (a3 + (v72 & 0xFFFFFFFFFFFFFFF8));
    v70 = (v54 + 2 * (v72 & 0xFFFFFFFFFFFFFFF8));
    v91 = (v54 + 2 * v73);
    v92 = &a3->i8[v73];
    v93 = v73 - (v72 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v94 = *v92++;
      *v91++ = vmovl_u8(v94);
      v93 += 8;
    }

    while (v93);
    if (v72 != (v72 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_106;
    }
  }

LABEL_70:
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v8);
    result = v18;
  }

  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v8);
LABEL_74:
    result = v18;
  }

LABEL_75:
  *a1 = v17;
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
LABEL_42:
    WTF::StringImpl::destroy(result, v8);
  }

LABEL_43:
  result = v105;
  v15 = v17 == 0;
  v105 = 0;
  if (!result)
  {
    goto LABEL_46;
  }

LABEL_44:
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v8);
  }

LABEL_46:
  if (v15)
  {
LABEL_143:
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a3 - 1;
  if (!a3)
  {
    v7 = 0;
  }

  v14[0] = a2;
  v14[1] = v7;
  if (v7 >> 31)
  {
    __break(0xC471u);
    goto LABEL_16;
  }

  v8 = a5 - 1;
  if (!a5)
  {
    v8 = 0;
  }

  v13[0] = a4;
  v13[1] = v8;
  if (v8 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x22585A300);
  }

  v9 = a7 - 1;
  if (!a7)
  {
    v9 = 0;
  }

  v12[0] = a6;
  v12[1] = v9;
  if (v9 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x22585A320);
  }

  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v14, v13, v12, a1);
  if (!*a1)
  {
    __break(0xC471u);
LABEL_16:
    JUMPOUT(0x22585A2E0);
  }

  return result;
}

void WGSL::TypeChecker::convertValue(uint64_t a1, _OWORD *a2, const void **a3, mpark *a4, double a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*(a4 + 24) & 1) != 0 && (WGSL::TypeChecker::convertValueImpl(a3, a4, a3, a5) & 1) == 0)
  {
    WTF::StringPrintStream::StringPrintStream(v16);
    if (*(a4 + 24))
    {
      WGSL::ConstantValue::dump(a4, v16);
      WTF::StringPrintStream::toString(&v11, v16);
      WGSL::Type::Type(v14, a3);
      WTF::makeString<WTF::ASCIILiteral,WTF::String,WTF::ASCIILiteral,WGSL::Type,char>(&v12, v11, v14);
      *a1 = v12;
      *(a1 + 8) = *a2;
      *(a1 + 24) = 1;
      if (v15 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WGSL::Types::Primitive,WGSL::Types::Vector,WGSL::Types::Matrix,WGSL::Types::Array,WGSL::Types::Struct,WGSL::Types::PrimitiveStruct,WGSL::Types::Function,WGSL::Types::Texture,WGSL::Types::TextureStorage,WGSL::Types::TextureDepth,WGSL::Types::Reference,WGSL::Types::Pointer,WGSL::Types::Atomic,WGSL::Types::TypeConstructor>,(mpark::detail::Trait)1> &>(&v13, v14);
      }

      v15 = -1;
      v10 = v11;
      v11 = 0;
      if (v10)
      {
        if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, v9);
        }
      }

      WTF::StringPrintStream::~StringPrintStream(v16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }
}

WTF::StringImpl *WTF::makeString<WTF::ASCIILiteral,WGSL::Type,char>(void *a1, _BYTE *a2, uint64_t a3, unsigned __int8 *a4)
{
  v19[20] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3 - 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >> 31)
  {
    __break(0xC471u);
    goto LABEL_28;
  }

  WTF::StringPrintStream::StringPrintStream(v19);
  WGSL::Type::dump(a4, v19);
  WTF::StringPrintStream::toString(&v17, v19);
  WTF::StringPrintStream::~StringPrintStream(v19);
  result = v17;
  if (v17)
  {
    v11 = *(v17 + 1);
    if (v11 < 0 || (v8 = __OFADD__(v11, 1), v12 = v11 + 1, v8))
    {
LABEL_13:
      *a1 = 0;
      v13 = 1;
      v17 = 0;
      if (!result)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v12 = 1;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  if (__OFADD__(v4, v12))
  {
    goto LABEL_13;
  }

  if (v17)
  {
    v14 = (*(v17 + 4) >> 2) & 1;
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  else
  {
    v14 = 1;
  }

  v18 = result;
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WGSL::Type,void>,WTF::StringTypeAdapter<char,void>>((v4 + v12), v14, a2, v4, &v18, 39, v19);
  v15 = v18;
  v16 = v19[0];
  *a1 = v19[0];
  v18 = 0;
  v19[0] = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v9);
  }

  result = v17;
  v13 = v16 == 0;
  v17 = 0;
  if (result)
  {
LABEL_22:
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v9);
    }
  }

LABEL_24:
  if (v13)
  {
    __break(0xC471u);
LABEL_28:
    JUMPOUT(0x22585A604);
  }

  return result;
}

void WGSL::TypeChecker::visit(uint64_t a1, WGSL::AST::WorkgroupSizeAttribute *a2, uint64_t a3)
{
  v6 = (*(*a3 + 16))(a3);
  if (v6 > 7)
  {
    if (v6 > 11)
    {
      if (v6 == 12)
      {
        WGSL::TypeChecker::check(&v13, a2, *(a3 + 24));
        if (!v15)
        {
          if (!v13)
          {
            v9 = "@size must be an i32 or u32 value";
            v10 = 34;
            goto LABEL_65;
          }

          goto LABEL_37;
        }

        if (v15 != 1)
        {
          goto LABEL_63;
        }

        v11 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          *(a1 + 8) = v14;
          *a1 = v11;
          *(a1 + 24) = 1;
          if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            return;
          }

          goto LABEL_62;
        }

        goto LABEL_67;
      }

      if (v6 != 13)
      {
        if (v6 == 14)
        {

          WGSL::TypeChecker::visit(a1, a2, a3);
          return;
        }

        goto LABEL_68;
      }
    }

    else
    {
      if ((v6 - 8) < 2)
      {
        goto LABEL_37;
      }

      if (v6 == 10)
      {
        WGSL::TypeChecker::check(&v13, a2, *(a3 + 24));
        if (!v15)
        {
          if (!v13)
          {
            v9 = "@location must be an i32 or u32 value";
            v10 = 38;
LABEL_65:
            WTF::makeString<WTF::ASCIILiteral>(&v12, v9, v10);
            *a1 = v12;
            *(a1 + 8) = *(a3 + 8);
LABEL_66:
            *(a1 + 24) = 1;
            return;
          }

          goto LABEL_37;
        }

        if (v15 != 1)
        {
          goto LABEL_63;
        }

        v11 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          *(a1 + 8) = v14;
          *a1 = v11;
          *(a1 + 24) = 1;
          if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            return;
          }

          goto LABEL_62;
        }

        goto LABEL_67;
      }

      if (v6 != 11)
      {
        goto LABEL_68;
      }
    }

LABEL_37:
    *a1 = 0;
    *(a1 + 24) = 0;
    return;
  }

  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      WGSL::TypeChecker::check(&v13, a2, *(a3 + 24));
      if (!v15)
      {
        if (!v13)
        {
          v9 = "@align must be an i32 or u32 value";
          goto LABEL_24;
        }

        goto LABEL_37;
      }

      if (v15 != 1)
      {
        goto LABEL_63;
      }

      v11 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        *(a1 + 8) = v14;
        *a1 = v11;
        *(a1 + 24) = 1;
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          return;
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_68;
      }

      WGSL::TypeChecker::check(&v13, a2, *(a3 + 24));
      if (!v15)
      {
        if (!v13)
        {
          v9 = "@binding must be an i32 or u32 value";
          v10 = 37;
          goto LABEL_65;
        }

        goto LABEL_37;
      }

      if (v15 != 1)
      {
        goto LABEL_63;
      }

      v11 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        *(a1 + 8) = v14;
        *a1 = v11;
        *(a1 + 24) = 1;
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          return;
        }

        goto LABEL_62;
      }
    }

LABEL_67:
    *(a1 + 8) = v14;
    *a1 = 0;
    goto LABEL_66;
  }

  if ((v6 - 3) < 3)
  {
    goto LABEL_37;
  }

  if (v6 != 6)
  {
    if (v6 == 7)
    {
      WGSL::TypeChecker::check(&v13, a2, *(a3 + 24));
      if (!v15)
      {
        if (!v13)
        {
          v9 = "@id must be an i32 or u32 value";
          v10 = 32;
          goto LABEL_65;
        }

        goto LABEL_37;
      }

      if (v15 != 1)
      {
        goto LABEL_63;
      }

      v11 = v13;
      if (!v13)
      {
        goto LABEL_67;
      }

      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      *(a1 + 8) = v14;
      *a1 = v11;
      *(a1 + 24) = 1;
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        return;
      }

LABEL_62:
      WTF::StringImpl::destroy(v11, v8);
      return;
    }

LABEL_68:
    __break(0xC471u);
    return;
  }

  WGSL::TypeChecker::check(&v13, a2, *(a3 + 24));
  if (!v15)
  {
    if (!v13)
    {
      v9 = "@group must be an i32 or u32 value";
LABEL_24:
      v10 = 35;
      goto LABEL_65;
    }

    goto LABEL_37;
  }

  if (v15 != 1)
  {
LABEL_63:
    mpark::throw_bad_variant_access(v7);
  }

  v11 = v13;
  if (!v13)
  {
    goto LABEL_67;
  }

  atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  *(a1 + 8) = v14;
  *a1 = v11;
  *(a1 + 24) = 1;
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    goto LABEL_62;
  }
}

void WGSL::TypeChecker::visit(WGSL::TypeChecker *this, WGSL::AST::WorkgroupSizeAttribute *a2, uint64_t a3)
{
  WGSL::TypeChecker::infer(&v28, a2, *(a3 + 24), 2u, 0);
  if (!v30)
  {
    v8 = v28;
    if (!v28)
    {
      goto LABEL_16;
    }

    v9 = v28;
    while (*(v9 + 48) == 10)
    {
      v9 = *(v9 + 1);
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    if (*(v9 + 48) || *v9 >= 3u)
    {
LABEL_16:
      v14 = "@workgroup_size x dimension must be an i32 or u32 value";
    }

    else
    {
      v10 = *(a3 + 32);
      if (!v10)
      {
        v12 = 0;
        goto LABEL_22;
      }

      WGSL::TypeChecker::infer(&v25, a2, v10, 2u, 0);
      if (v27)
      {
        if (v27 == 1)
        {
          v23 = v25;
          if (!v25)
          {
LABEL_66:
            v24 = v26;
LABEL_69:
            *(this + 8) = v24;
            *this = 0;
            goto LABEL_19;
          }

          goto LABEL_61;
        }

LABEL_67:
        mpark::throw_bad_variant_access(v6);
      }

      v12 = v25;
      if (v25)
      {
        v13 = v25;
        while (*(v13 + 48) == 10)
        {
          v13 = *(v13 + 1);
          if (!v13)
          {
            goto LABEL_49;
          }
        }

        if (!*(v13 + 48) && *v13 < 3u)
        {
          v10 = *(a3 + 40);
          if (v10)
          {
            WGSL::TypeChecker::infer(&v25, a2, v10, 2u, 0);
            if (!v27)
            {
              v16 = v25;
              if (!v25)
              {
                goto LABEL_52;
              }

              v21 = v25;
              while (*(v21 + 48) == 10)
              {
                v21 = *(v21 + 1);
                if (!v21)
                {
                  goto LABEL_52;
                }
              }

              if (*(v21 + 48) || *v21 >= 3u)
              {
LABEL_52:
                v14 = "@workgroup_size z dimension must be an i32 or u32 value";
                goto LABEL_17;
              }

LABEL_23:
              v17 = *(a2 + 9);
              v18 = *(v17 + 56);
              if ((v8 == v18 || WGSL::conversionRank(v8, *(v17 + 56), v10) != -1) && (!v12 || v12 == v18 || WGSL::conversionRank(v12, v18, v10) != -1) && (!v16 || v16 == v18 || WGSL::conversionRank(v16, v18, v10) != -1) || ((v19 = *(a2 + 9), v20 = *(v19 + 64), v8 == v20) || WGSL::conversionRank(v8, *(v19 + 64), v10) != -1) && (!v12 || v12 == v20 || WGSL::conversionRank(v12, v20, v10) != -1) && (!v16 || v16 == v20 || WGSL::conversionRank(v16, v20, v10) != -1))
              {
                *this = 0;
                *(this + 24) = 0;
                return;
              }

              v14 = "@workgroup_size arguments must be of the same type, either i32 or u32";
              v15 = 70;
              goto LABEL_18;
            }

            if (v27 == 1)
            {
              v23 = v25;
              if (!v25)
              {
                goto LABEL_66;
              }

LABEL_61:
              atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
              *(this + 8) = v26;
              *this = v23;
              *(this + 24) = 1;
              if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v23, v11);
              }

              return;
            }

            goto LABEL_67;
          }

LABEL_22:
          v16 = 0;
          goto LABEL_23;
        }
      }

LABEL_49:
      v14 = "@workgroup_size y dimension must be an i32 or u32 value";
    }

LABEL_17:
    v15 = 56;
LABEL_18:
    WTF::makeString<WTF::ASCIILiteral>(&v25, v14, v15);
    *this = v25;
    *(this + 8) = *(a3 + 8);
LABEL_19:
    *(this + 24) = 1;
    return;
  }

  if (v30 != 1)
  {
    goto LABEL_67;
  }

  v22 = v28;
  if (!v28)
  {
    v24 = v29;
    goto LABEL_69;
  }

  atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
  *(this + 8) = v29;
  *this = v22;
  *(this + 24) = 1;
  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    WTF::StringImpl::destroy(v22, v7);
  }
}