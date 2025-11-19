void WGSL::constantAtanh(void *a1@<X1>, uint64_t a2@<X8>)
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
      v47[0] = COERCE_WTF_STRINGIMPL_(atanh(*v4));
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
          JUMPOUT(0x225837E3CLL);
        }

        LODWORD(v47[0]) = atanhf(*v4);
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

      _S0 = atanhf(_S0);
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
        JUMPOUT(0x225837DD0);
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
      JUMPOUT(0x225837E1CLL);
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

        _S0 = atanhf(_S0);
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
        v44[0] = COERCE__BYTE_(atanh(*__x));
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
          JUMPOUT(0x225837E64);
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

    LODWORD(v44[0]) = atanhf(*__x);
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

void WGSL::constantCosh(void *a1@<X1>, uint64_t a2@<X8>)
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
      v47[0] = COERCE_WTF_STRINGIMPL_(cosh(*v4));
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
          JUMPOUT(0x2258384B8);
        }

        LODWORD(v47[0]) = coshf(*v4);
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

      _S0 = coshf(_S0);
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
        JUMPOUT(0x22583844CLL);
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
      JUMPOUT(0x225838498);
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

        _S0 = coshf(_S0);
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
        v44[0] = COERCE__BYTE_(cosh(*__x));
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
          JUMPOUT(0x2258384E0);
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

    LODWORD(v44[0]) = coshf(*__x);
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

void WGSL::constantSinh(void *a1@<X1>, uint64_t a2@<X8>)
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
      v47[0] = COERCE_WTF_STRINGIMPL_(sinh(*v4));
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
          JUMPOUT(0x225838B34);
        }

        LODWORD(v47[0]) = sinhf(*v4);
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

      _S0 = sinhf(_S0);
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
        JUMPOUT(0x225838AC8);
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
      JUMPOUT(0x225838B14);
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

        _S0 = sinhf(_S0);
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
        v44[0] = COERCE__BYTE_(sinh(*__x));
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
          JUMPOUT(0x225838B5CLL);
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

    LODWORD(v44[0]) = sinhf(*__x);
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

void WGSL::constantTanh(void *a1@<X1>, uint64_t a2@<X8>)
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
      v47[0] = COERCE_WTF_STRINGIMPL_(tanh(*v4));
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
          JUMPOUT(0x2258391B0);
        }

        LODWORD(v47[0]) = tanhf(*v4);
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

      _S0 = tanhf(_S0);
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
        JUMPOUT(0x225839144);
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
      JUMPOUT(0x225839190);
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

        _S0 = tanhf(_S0);
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
        v44[0] = COERCE__BYTE_(tanh(*__x));
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
          JUMPOUT(0x2258391D8);
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

    LODWORD(v44[0]) = tanhf(*__x);
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

void WGSL::constantAbs(void *a1@<X1>, uint64_t a2@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_114;
  }

  v4 = (v3 + 2);
  LOBYTE(v45[0]) = 0;
  v46 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v42, v45, v3 + 1), v46 = *(v3 + 24), LOBYTE(v42[0]) = 0, v43 = -1, v46 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v46, v39, v42, v45), v43 = v46, v46 == 255))
  {
LABEL_67:
    v23 = *(v3 + 24);
    if (v23 <= 2)
    {
      if (!*(v3 + 24))
      {
        LODWORD(v42[0]) = fabsf(*v4);
        v43 = 0;
        *a2 = v42[0];
        *(a2 + 16) = 0;
        goto LABEL_86;
      }

      if (v23 == 1)
      {
        LOWORD(v42[0]) = fabsl(*v4);
        v43 = 1;
        *a2 = v42[0];
        *(a2 + 16) = 1;
        goto LABEL_86;
      }

      if (v23 == 2)
      {
        v42[0] = COERCE_WTF_STRINGIMPL_(fabs(*v4));
        v43 = 2;
        *a2 = v42[0];
        *(a2 + 16) = 2;
        goto LABEL_86;
      }

LABEL_109:
      __break(0xC471u);
      JUMPOUT(0x225839914);
    }

    if (v23 == 5)
    {
      v26 = *v4;
      if (*v4 < 0)
      {
        v26 = -v26;
      }

      v42[0] = v26;
      v25 = 5;
      v43 = 5;
      *a2 = v26;
    }

    else
    {
      if (v23 == 4)
      {
        v24 = *v4;
        *v42 = *v4;
        v25 = 4;
      }

      else
      {
        if (v23 != 3)
        {
          goto LABEL_109;
        }

        v24 = *v4;
        if (*v4 < 0)
        {
          LODWORD(v24) = -LODWORD(v24);
        }

        *v42 = v24;
        v25 = 3;
      }

      v43 = v25;
      *a2 = v24;
    }

    *(a2 + 16) = v25;
LABEL_86:
    *(a2 + 24) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v42);
    if (v46 == 255)
    {
      return;
    }

    goto LABEL_87;
  }

  if (v46 != 8 || !v42[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v42);
    goto LABEL_67;
  }

  v6 = *v42[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v42);
  if (!v6)
  {
    goto LABEL_67;
  }

  v7 = WTF::fastMalloc((24 * v6 + 8));
  *v7 = v6;
  v8 = v7 + 2;
  v9 = 6;
  bzero(v7 + 2, 24 * ((24 * v6 - 24) / 0x18uLL) + 24);
  v10 = 0;
  LODWORD(v37[0]) = 0;
  v38 = 0;
  v11 = *(a2 + 24);
  v12 = *a2;
  do
  {
    v13 = v46;
    if (v46 != 8)
    {
      if (v38 == 255)
      {
        if (v46 == 255)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          goto LABEL_113;
        }
      }

      else if (v46 == 255)
      {
LABEL_107:
        *a2 = v12;
        *(a2 + 24) = v11;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v37);
        v38 = -1;
LABEL_113:
        __break(0xC471u);
LABEL_114:
        JUMPOUT(0x2258398A8);
      }

      v42[0] = v37;
      v14 = v45;
      goto LABEL_21;
    }

    if (v10 >= *v45[0])
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      __break(0xC471u);
      JUMPOUT(0x2258398F4);
    }

    v14 = (v45[0] + v9 * 4 - 16);
    v13 = *(v45[0] + v9 * 4);
    if (v38 == 255)
    {
      if (v13 == 255)
      {
        goto LABEL_22;
      }
    }

    else if (v13 == 255)
    {
      goto LABEL_107;
    }

    v42[0] = v37;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v13, v42, v37, v14);
LABEL_22:
    if (v38 > 2u)
    {
      switch(v38)
      {
        case 3u:
          v18 = v37[0];
          if (SLODWORD(v37[0]) < 0)
          {
            v18 = -LODWORD(v37[0]);
          }

          LODWORD(v39[0]) = v18;
          v19 = 3;
          goto LABEL_35;
        case 4u:
          v18 = v37[0];
          LODWORD(v39[0]) = v37[0];
          v19 = 4;
LABEL_35:
          v40 = v19;
          LODWORD(v42[0]) = v18;
          goto LABEL_47;
        case 5u:
          v21 = v37[0];
          if (v37[0] < 0)
          {
            v21 = -v37[0];
          }

          v39[0] = v21;
          v19 = 5;
          v40 = 5;
          v42[0] = v21;
LABEL_47:
          v43 = v19;
          v44 = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v41, v39);
          v17 = v44;
          if (!v44)
          {
            goto LABEL_38;
          }

          goto LABEL_48;
      }

LABEL_111:
      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_113;
    }

    if (v38)
    {
      if (v38 == 1)
      {
        LOWORD(v39[0]) = fabsl(*v37);
        v40 = 1;
        LOWORD(v42[0]) = v39[0];
        v43 = 1;
        v44 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v41, v39);
        v17 = v44;
        if (!v44)
        {
          goto LABEL_38;
        }

        goto LABEL_48;
      }

      if (v38 != 2)
      {
        goto LABEL_111;
      }

      v39[0] = COERCE__BYTE_(fabs(*v37));
      v40 = 2;
      v42[0] = v39[0];
      v43 = 2;
      v44 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v41, v39);
      v17 = v44;
      if (v44)
      {
        goto LABEL_48;
      }

LABEL_38:
      if (v10 >= *v7)
      {
        *a2 = v12;
        *(a2 + 24) = v11;
        __break(0xC471u);
        JUMPOUT(0x22583993CLL);
      }

      if (LOBYTE(v7[v9]) == 255)
      {
        if (v43 == 255)
        {
          goto LABEL_54;
        }
      }

      else if (v43 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v8);
        LOBYTE(v7[v9]) = -1;
        v20 = v44;
        if (v44 == 255)
        {
          goto LABEL_61;
        }

        goto LABEL_55;
      }

      v39[0] = v8;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v43, v39, v8, v42);
LABEL_54:
      v20 = v44;
      if (v44 == 255)
      {
        goto LABEL_61;
      }

      goto LABEL_55;
    }

    LODWORD(v39[0]) = fabsf(*v37);
    v40 = 0;
    LODWORD(v42[0]) = v39[0];
    v43 = 0;
    v44 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v41, v39);
    v17 = v44;
    if (!v44)
    {
      goto LABEL_38;
    }

LABEL_48:
    if (v17 != 1)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      mpark::throw_bad_variant_access(v15);
    }

    v12 = v42[0];
    if (v42[0])
    {
      atomic_fetch_add_explicit(v42[0], 2u, memory_order_relaxed);
      v11 = 1;
      v20 = v44;
      if (v44 == 255)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v11 = 1;
      v20 = v44;
      if (v44 == 255)
      {
        goto LABEL_61;
      }
    }

LABEL_55:
    if (v20)
    {
      v22 = v42[0];
      v42[0] = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v16);
      }
    }

    else if (v43 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v42);
    }

LABEL_61:
    if (v17)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_96;
    }

    ++v10;
    v8 += 24;
    v9 += 6;
  }

  while (v6 != v10);
  v27 = *v7;
  v28 = 24 * v27;
  v29 = WTF::fastMalloc((24 * v27 + 8));
  v30 = v29;
  *v29 = v27;
  if (v27)
  {
    v31 = (v29 + 6);
    v32 = (v7 + 6);
    do
    {
      *(v31 - 16) = 0;
      *v31 = -1;
      v33 = *v32;
      if (v33 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v33, v42, v31 - 2, v32 - 2);
        *v31 = *v32;
      }

      v31 += 3;
      v32 += 3;
      v28 -= 24;
    }

    while (v28);
  }

  v43 = 8;
  v42[0] = 0;
  *a2 = v30;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v42);
LABEL_96:
  if (v38 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v37);
  }

  v34 = *v7;
  if (v34)
  {
    v35 = 24 * v34;
    v36 = v7 + 6;
    do
    {
      v16 = (v36 - 16);
      if (*v36 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v16);
      }

      *v36 = -1;
      v36 += 24;
      v35 -= 24;
    }

    while (v35);
  }

  WTF::fastFree(v7, v16);
  if (v46 != 255)
  {
LABEL_87:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v45);
  }
}

void WGSL::constantAtan2(int **a1@<X1>, uint64_t a2@<X8>)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x22583A12CLL);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22583A14CLL);
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
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, __y, v62, v3 + 1);
    v7 = *(v3 + 24);
    v63 = *(v3 + 24);
  }

  v8 = (v3 + 8);
  LOBYTE(v64[0]) = 0;
  v65 = -1;
  v9 = *(v3 + 48);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, __y, v64, v3 + 4);
    v65 = *(v3 + 48);
    v7 = v63;
  }

  LOBYTE(__y[0]) = 0;
  v53 = -1;
  if (v7 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v59, __y, v62), v53 = v63, v63 == 255))
  {
LABEL_12:
    LOBYTE(__y[0]) = 0;
    v53 = -1;
    v10 = v65;
    if (v65 == 255)
    {
      goto LABEL_80;
    }

    v10 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v65, v59, __y, v64);
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
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __y);
    goto LABEL_12;
  }

LABEL_16:
  if (!__y[0])
  {
LABEL_79:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __y);
    goto LABEL_80;
  }

  v11 = *__y[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __y);
  if (!v11)
  {
LABEL_80:
    v41 = *(v3 + 24);
    if (v41 == 2)
    {
      if (*(v3 + 48) == 2)
      {
        __y[0] = atan2(*v5, *v8);
        v47 = 2;
        v53 = 2;
        *a2 = __y[0];
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

        _S0 = atan2f(_S0, _S1);
        __asm { FCVT            H0, S0 }

        LOWORD(__y[0]) = LOWORD(_S0);
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
        LODWORD(__y[0]) = atan2f(*v5, *v8);
        v53 = 0;
        *a2 = __y[0];
        *(a2 + 16) = 0;
LABEL_90:
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __y);
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
    JUMPOUT(0x22583A10CLL);
  }

  v12 = WTF::fastMalloc((24 * v11 + 8));
  *v12 = v11;
  v13 = v12 + 2;
  v14 = 24;
  bzero(v12 + 2, 24 * ((24 * v11 - 24) / 0x18uLL) + 24);
  v15 = 0;
  v53 = 0;
  LODWORD(__x[0]) = 0;
  v55 = 0;
  v16 = *a2;
  v51 = *(a2 + 24);
  LODWORD(__y[0]) = 0;
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

      v59[0] = __y;
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
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __y);
        v53 = -1;
        goto LABEL_32;
      }

      v59[0] = __y;
      v18 = v62;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v59, __y, v18);
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

      v59[0] = __x;
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
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __x);
        v55 = -1;
        goto LABEL_45;
      }

      v59[0] = __x;
      v20 = v64;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v19, v59, __x, v20);
LABEL_45:
    if (v53)
    {
      if (v53 == 1)
      {
        if (v55 != 1)
        {
          goto LABEL_108;
        }

        _H0 = __y[0];
        _H1 = __x[0];
        __asm
        {
          FCVT            S0, H0; float
          FCVT            S1, H1; float
        }

        _S0 = atan2f(_S0, _S1);
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
          JUMPOUT(0x22583A1A4);
        }

        if (v55 != 2)
        {
LABEL_108:
          *a2 = v16;
          *(a2 + 24) = v51;
          mpark::throw_bad_variant_access(v19);
        }

        v56[0] = COERCE__BYTE_(atan2(*__y, *__x));
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

      LODWORD(v56[0]) = atan2f(*__y, *__x);
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
      JUMPOUT(0x22583A178);
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
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __x);
  }

LABEL_97:
  v55 = -1;
  if (v53 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, __y);
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
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(__y, v31);
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
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(__y, v64);
  }

LABEL_92:
  v65 = -1;
  if (v63 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(__y, v62);
  }
}

void WGSL::constantCeil(void *a1@<X1>, uint64_t a2@<X8>)
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
      v36[0] = COERCE_WTF_STRINGIMPL_(ceil(*v4));
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
          JUMPOUT(0x22583A7C4);
        }

        LODWORD(v36[0]) = ceilf(*v4);
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

      LOWORD(v36[0]) = ceill(*v4);
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
        JUMPOUT(0x22583A758);
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
      JUMPOUT(0x22583A7A4);
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
        LOWORD(v33[0]) = ceill(*v31);
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
        v33[0] = COERCE__BYTE_(ceil(*v31));
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
          JUMPOUT(0x22583A7ECLL);
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

    LODWORD(v33[0]) = ceilf(*v31);
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

void WGSL::constantClamp(unsigned int **a1@<X1>, uint64_t a2@<X8>)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x22583B3F4);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22583B414);
  }

  if (v4 <= 2)
  {
    __break(0xC471u);
    JUMPOUT(0x22583B434);
  }

  LOBYTE(v62[0]) = 0;
  v63 = -1;
  v5 = *(v3 + 24);
  if (v5 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v50, v62, v3 + 1);
    v63 = *(v3 + 24);
  }

  v6 = (v3 + 8);
  LOBYTE(v64[0]) = 0;
  v65 = -1;
  v7 = *(v3 + 48);
  if (v7 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v50, v64, v3 + 4);
    v65 = *(v3 + 48);
  }

  v8 = (v3 + 14);
  LOBYTE(v66[0]) = 0;
  v67 = -1;
  v9 = *(v3 + 72);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, v50, v66, v3 + 7);
    v67 = *(v3 + 72);
  }

  LOBYTE(v50[0]) = 0;
  v51 = -1;
  if (v63 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v63, v59, v50, v62);
    v51 = v63;
    if (v63 != 255)
    {
      if (v63 == 8)
      {
        goto LABEL_22;
      }

      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, v50);
    }
  }

  LOBYTE(v50[0]) = 0;
  v51 = -1;
  if (v65 == 255)
  {
    goto LABEL_18;
  }

  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v65, v59, v50, v64);
  v51 = v65;
  if (v65 != 8)
  {
    if (v65 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, v50);
    }

LABEL_18:
    LOBYTE(v50[0]) = 0;
    v51 = -1;
    v10 = v67;
    if (v67 == 255)
    {
      goto LABEL_142;
    }

    v10 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v67, v59, v50, v66);
    v51 = v67;
    if (v67 != 8)
    {
      if (v67 == 255)
      {
        goto LABEL_142;
      }

      goto LABEL_141;
    }
  }

LABEL_22:
  if (!v50[0])
  {
LABEL_141:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, v50);
LABEL_142:
    v39 = *(v3 + 24);
    if (v39 <= 2)
    {
      if (!*(v3 + 24))
      {
        if (*(v3 + 48) || *(v3 + 72))
        {
          goto LABEL_216;
        }

        v43 = *(v3 + 2);
        if (v43 < *v6)
        {
          v43 = *v6;
        }

        if (v43 > *v8)
        {
          v43 = *v8;
        }

        *v50 = v43;
        v51 = 0;
        *a2 = v43;
        *(a2 + 16) = 0;
LABEL_193:
        *(a2 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, v50);
        if (v67 == 255)
        {
          goto LABEL_195;
        }

        goto LABEL_194;
      }

      if (v39 == 1)
      {
        if (*(v3 + 48) == 1 && *(v3 + 72) == 1)
        {
          v40 = *(v3 + 4);
          if (v40 < *v6)
          {
            v40 = *v6;
          }

          if (v40 > *v8)
          {
            v40 = *v8;
          }

          *v50 = v40;
          v51 = 1;
          *a2 = v40;
          *(a2 + 16) = 1;
          goto LABEL_193;
        }

LABEL_216:
        mpark::throw_bad_variant_access(v10);
      }

      if (v39 == 2)
      {
        if (*(v3 + 48) != 2 || *(v3 + 72) != 2)
        {
          goto LABEL_216;
        }

        v45 = *(v3 + 1);
        if (v45 < *v6)
        {
          v45 = *v6;
        }

        if (v45 > *v8)
        {
          v45 = *v8;
        }

        *v50 = v45;
        v51 = 2;
        *a2 = v45;
        *(a2 + 16) = 2;
        goto LABEL_193;
      }

      goto LABEL_223;
    }

    if (v39 == 5)
    {
      if (*(v3 + 48) != 5 || *(v3 + 72) != 5)
      {
        goto LABEL_216;
      }

      v44 = *(v3 + 1);
      if (v44 <= *v6)
      {
        v44 = *v6;
      }

      if (v44 >= *v8)
      {
        v44 = *v8;
      }

      v50[0] = v44;
      v42 = 5;
      v51 = 5;
      *a2 = v44;
    }

    else
    {
      if (v39 == 4)
      {
        if (*(v3 + 48) != 4 || *(v3 + 72) != 4)
        {
          goto LABEL_216;
        }

        v41 = *(v3 + 2);
        if (LODWORD(v41) <= *v6)
        {
          v41 = *v6;
        }

        if (LODWORD(v41) >= *v8)
        {
          v41 = *v8;
        }

        *v50 = v41;
        v42 = 4;
      }

      else
      {
        if (v39 != 3)
        {
LABEL_223:
          __break(0xC471u);
LABEL_224:
          JUMPOUT(0x22583B3A4);
        }

        if (*(v3 + 48) != 3 || *(v3 + 72) != 3)
        {
          goto LABEL_216;
        }

        v41 = *(v3 + 2);
        if (SLODWORD(v41) <= *v6)
        {
          v41 = *v6;
        }

        if (SLODWORD(v41) >= *v8)
        {
          v41 = *v8;
        }

        *v50 = v41;
        v42 = 3;
      }

      v51 = v42;
      *a2 = v41;
    }

    *(a2 + 16) = v42;
    goto LABEL_193;
  }

  v11 = *v50[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, v50);
  if (!v11)
  {
    goto LABEL_142;
  }

  v12 = WTF::fastMalloc((24 * v11 + 8));
  *v12 = v11;
  v13 = (v12 + 2);
  v14 = 24;
  bzero(v12 + 2, 24 * ((24 * v11 - 24) / 0x18uLL) + 24);
  v15 = 0;
  v51 = 0;
  LODWORD(v52[0]) = 0;
  v53 = 0;
  LODWORD(v54[0]) = 0;
  v55 = 0;
  v16 = *a2;
  v49 = *(a2 + 24);
  LODWORD(v50[0]) = 0;
  do
  {
    v17 = v63;
    if (v63 == 8)
    {
      if (v15 >= *v62[0])
      {
        goto LABEL_217;
      }

      v18 = (v62[0] + v14 - 16);
      v17 = *(v62[0] + v14);
      if (v51 == 255)
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

      v59[0] = v50;
    }

    else
    {
      if (v51 == 255)
      {
        if (v63 == 255)
        {
          goto LABEL_38;
        }
      }

      else if (v63 == 255)
      {
LABEL_32:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, v50);
        v51 = -1;
        goto LABEL_38;
      }

      v59[0] = v50;
      v18 = v62;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v59, v50, v18);
LABEL_38:
    v19 = v65;
    if (v65 == 8)
    {
      if (v15 >= *v64[0])
      {
        goto LABEL_217;
      }

      v20 = (v64[0] + v14 - 16);
      v19 = *(v64[0] + v14);
      if (v53 == 255)
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

      v59[0] = v52;
    }

    else
    {
      if (v53 == 255)
      {
        if (v65 == 255)
        {
          goto LABEL_51;
        }
      }

      else if (v65 == 255)
      {
LABEL_45:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, v52);
        v53 = -1;
        goto LABEL_51;
      }

      v59[0] = v52;
      v20 = v64;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v19, v59, v52, v20);
LABEL_51:
    v10 = v67;
    if (v67 == 8)
    {
      if (v15 >= *v66[0])
      {
LABEL_217:
        *a2 = v16;
        *(a2 + 24) = v49;
        __break(0xC471u);
        goto LABEL_224;
      }

      v21 = (v66[0] + v14 - 16);
      v10 = *(v66[0] + v14);
      if (v55 == 255)
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

      v59[0] = v54;
    }

    else
    {
      if (v55 == 255)
      {
        if (v67 == 255)
        {
          goto LABEL_64;
        }
      }

      else if (v67 == 255)
      {
LABEL_58:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, v54);
        v55 = -1;
        goto LABEL_64;
      }

      v59[0] = v54;
      v21 = v66;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v10, v59, v54, v21);
LABEL_64:
    if (v51 > 2u)
    {
      switch(v51)
      {
        case 3u:
          if (v53 != 3 || v55 != 3)
          {
            goto LABEL_215;
          }

          v24 = v50[0];
          if (SLODWORD(v50[0]) <= SLODWORD(v52[0]))
          {
            v24 = v52[0];
          }

          if (v24 >= SLODWORD(v54[0]))
          {
            v24 = v54[0];
          }

          LODWORD(v56[0]) = v24;
          v25 = 3;
          break;
        case 4u:
          if (v53 != 4 || v55 != 4)
          {
            goto LABEL_215;
          }

          v24 = v50[0];
          if (LODWORD(v50[0]) <= LODWORD(v52[0]))
          {
            v24 = v52[0];
          }

          if (v24 >= LODWORD(v54[0]))
          {
            v24 = v54[0];
          }

          LODWORD(v56[0]) = v24;
          v25 = 4;
          break;
        case 5u:
          if (v53 != 5 || v55 != 5)
          {
LABEL_215:
            *a2 = v16;
            *(a2 + 24) = v49;
            goto LABEL_216;
          }

          v30 = v50[0];
          if (v50[0] <= v52[0])
          {
            v30 = v52[0];
          }

          if (v30 >= v54[0])
          {
            v30 = v54[0];
          }

          *v56 = v30;
          v25 = 5;
          v57 = 5;
          v59[0] = v30;
LABEL_120:
          v60 = v25;
          v61 = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v58, v56);
          v28 = v61;
          if (v61)
          {
            goto LABEL_121;
          }

          goto LABEL_108;
        default:
LABEL_222:
          *a2 = v16;
          *(a2 + 24) = v49;
          __break(0xC471u);
          JUMPOUT(0x22583B464);
      }

      v57 = v25;
      LODWORD(v59[0]) = v24;
      goto LABEL_120;
    }

    if (v51)
    {
      if (v51 == 1)
      {
        if (v53 != 1)
        {
          goto LABEL_215;
        }

        v22 = v55;
        if (v55 != 1)
        {
          goto LABEL_215;
        }

        v23 = *v50;
        if (*v50 < *v52)
        {
          v23 = *v52;
        }

        if (v23 > *v54)
        {
          v23 = *v54;
        }

        *v56 = v23;
        v57 = v55;
        *v59 = v23;
      }

      else
      {
        if (v51 != 2)
        {
          goto LABEL_222;
        }

        if (v53 != 2)
        {
          goto LABEL_215;
        }

        v22 = v55;
        if (v55 != 2)
        {
          goto LABEL_215;
        }

        v29 = v50[0];
        if (*v50 < *v52)
        {
          v29 = v52[0];
        }

        if (*&v29 > *v54)
        {
          v29 = v54[0];
        }

        *v56 = v29;
        v57 = v55;
        v59[0] = v29;
      }

      v60 = v22;
      v61 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v58, v56);
      v28 = v61;
      if (v61)
      {
LABEL_121:
        if (v28 != 1)
        {
          goto LABEL_215;
        }

        v16 = v59[0];
        if (v59[0])
        {
          atomic_fetch_add_explicit(v59[0], 2u, memory_order_relaxed);
        }

        v49 = 1;
        goto LABEL_127;
      }
    }

    else
    {
      if (v53 || v55)
      {
        goto LABEL_215;
      }

      v26 = *v50;
      if (*v50 < *v52)
      {
        v26 = *v52;
      }

      if (v26 > *v54)
      {
        v26 = *v54;
      }

      v56[0] = v26;
      v57 = 0;
      *v59 = v26;
      v60 = 0;
      v61 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v58, v56);
      v28 = v61;
      if (v61)
      {
        goto LABEL_121;
      }
    }

LABEL_108:
    if (v15 >= *v12)
    {
      *a2 = v16;
      *(a2 + 24) = v49;
      __break(0xC471u);
      JUMPOUT(0x22583B3D4);
    }

    if (LOBYTE(v12[v14 / 4]) == 255)
    {
      if (v60 == 255)
      {
        goto LABEL_127;
      }
    }

    else if (v60 == 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v13);
      LOBYTE(v12[v14 / 4]) = -1;
      goto LABEL_127;
    }

    *v56 = v13;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v60, v56, v13, v59);
LABEL_127:
    if (v61 != 255)
    {
      if (v61)
      {
        v31 = v59[0];
        v59[0] = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v27);
        }
      }

      else if (v60 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v59);
      }
    }

    if (v28)
    {
      *a2 = v16;
      *(a2 + 24) = v49;
      if (v55 != 255)
      {
        goto LABEL_201;
      }

      goto LABEL_202;
    }

    ++v15;
    v13 += 3;
    v14 += 24;
  }

  while (v11 != v15);
  v32 = *v12;
  v33 = 24 * v32;
  v34 = WTF::fastMalloc((24 * v32 + 8));
  v35 = v34;
  *v34 = v32;
  if (v32)
  {
    v36 = (v34 + 6);
    v37 = (v12 + 6);
    do
    {
      *(v36 - 16) = 0;
      *v36 = -1;
      v38 = *v37;
      if (v38 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v38, v59, v36 - 2, v37 - 2);
        *v36 = *v37;
      }

      v36 += 3;
      v37 += 3;
      v33 -= 24;
    }

    while (v33);
  }

  v60 = 8;
  v59[0] = 0;
  *a2 = v35;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v56, v59);
  if (v55 != 255)
  {
LABEL_201:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, v54);
  }

LABEL_202:
  v55 = -1;
  if (v53 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, v52);
  }

  v53 = -1;
  if (v51 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v59, v50);
  }

  v46 = *v12;
  if (v46)
  {
    v47 = 24 * v46;
    v48 = v12 + 6;
    do
    {
      v27 = (v48 - 16);
      if (*v48 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v50, v27);
      }

      *v48 = -1;
      v48 += 24;
      v47 -= 24;
    }

    while (v47);
  }

  WTF::fastFree(v12, v27);
  if (v67 != 255)
  {
LABEL_194:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v50, v66);
  }

LABEL_195:
  v67 = -1;
  if (v65 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v50, v64);
  }

  v65 = -1;
  if (v63 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v50, v62);
  }
}

void WGSL::constantCountLeadingZeros(void *a1@<X1>, uint64_t a2@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_82;
  }

  LOBYTE(v40[0]) = 0;
  v41 = -1;
  v4 = *(v3 + 24);
  if (v4 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v4, v37, v40, v3 + 1), v41 = *(v3 + 24), LOBYTE(v37[0]) = 0, v38 = -1, v41 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v41, v34, v37, v40), v38 = v41, v41 == 255))
  {
LABEL_50:
    v19 = *(v3 + 24);
    if (v19 == 4)
    {
      v20 = __clz(v3[2]);
      LODWORD(v37[0]) = v20;
      v21 = 4;
    }

    else
    {
      if (v19 != 3)
      {
        __break(0xC471u);
        JUMPOUT(0x22583BA00);
      }

      v20 = __clz(v3[2]);
      LODWORD(v37[0]) = v20;
      v21 = 3;
    }

    v38 = v21;
    *a2 = v20;
    *(a2 + 16) = v21;
    *(a2 + 24) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v37);
    if (v41 == 255)
    {
      return;
    }

LABEL_55:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v40);
    return;
  }

  if (v41 != 8 || !v37[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v37);
    goto LABEL_50;
  }

  v5 = *v37[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v37);
  if (!v5)
  {
    goto LABEL_50;
  }

  v6 = WTF::fastMalloc((24 * v5 + 8));
  *v6 = v5;
  v7 = v6 + 2;
  v8 = 6;
  bzero(v6 + 2, 24 * ((24 * v5 - 24) / 0x18uLL) + 24);
  v9 = 0;
  LODWORD(v32[0]) = 0;
  v33 = 0;
  v10 = *(a2 + 24);
  v11 = *a2;
  do
  {
    v12 = v41;
    if (v41 != 8)
    {
      if (v33 == 255)
      {
        if (v41 == 255)
        {
          *a2 = v11;
          *(a2 + 24) = v10;
          goto LABEL_81;
        }
      }

      else if (v41 == 255)
      {
LABEL_75:
        *a2 = v11;
        *(a2 + 24) = v10;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v32);
        v33 = -1;
LABEL_81:
        __break(0xC471u);
LABEL_82:
        JUMPOUT(0x22583B9BCLL);
      }

      v37[0] = v32;
      v13 = v40;
      goto LABEL_21;
    }

    if (v9 >= *v40[0])
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      __break(0xC471u);
      JUMPOUT(0x22583BA28);
    }

    v13 = (v40[0] + v8 * 4 - 16);
    v12 = *(v40[0] + v8 * 4);
    if (v33 == 255)
    {
      if (v12 == 255)
      {
        goto LABEL_22;
      }
    }

    else if (v12 == 255)
    {
      goto LABEL_75;
    }

    v37[0] = v32;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v12, v37, v32, v13);
LABEL_22:
    if (v33 != 3)
    {
      if (v33 == 4)
      {
        LODWORD(v34[0]) = __clz(v32[0]);
        v35 = 4;
        LODWORD(v37[0]) = v34[0];
        v38 = 4;
        v39 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v36, v34);
        v16 = v39;
        if (v39)
        {
          goto LABEL_24;
        }

LABEL_30:
        if (v9 >= *v6)
        {
          *a2 = v11;
          *(a2 + 24) = v10;
          __break(0xC471u);
          JUMPOUT(0x22583BA5CLL);
        }

        if (LOBYTE(v6[v8]) == 255)
        {
          if (v38 == 255)
          {
            goto LABEL_37;
          }
        }

        else if (v38 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v7);
          LOBYTE(v6[v8]) = -1;
          v17 = v39;
          if (v39 == 255)
          {
            goto LABEL_44;
          }

          goto LABEL_38;
        }

        v34[0] = v7;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v38, v34, v7, v37);
LABEL_37:
        v17 = v39;
        if (v39 == 255)
        {
          goto LABEL_44;
        }

        goto LABEL_38;
      }

      *a2 = v11;
      *(a2 + 24) = v10;
      goto LABEL_81;
    }

    LODWORD(v34[0]) = __clz(v32[0]);
    v35 = 3;
    LODWORD(v37[0]) = v34[0];
    v38 = 3;
    v39 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v36, v34);
    v16 = v39;
    if (!v39)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (v16 != 1)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      mpark::throw_bad_variant_access(v14);
    }

    v11 = v37[0];
    if (v37[0])
    {
      atomic_fetch_add_explicit(v37[0], 2u, memory_order_relaxed);
      v10 = 1;
      v17 = v39;
      if (v39 == 255)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v10 = 1;
      v17 = v39;
      if (v39 == 255)
      {
        goto LABEL_44;
      }
    }

LABEL_38:
    if (v17)
    {
      v18 = v37[0];
      v37[0] = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v15);
      }
    }

    else if (v38 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v37);
    }

LABEL_44:
    if (v16)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      goto LABEL_64;
    }

    ++v9;
    v7 += 24;
    v8 += 6;
  }

  while (v5 != v9);
  v22 = *v6;
  v23 = 24 * v22;
  v24 = WTF::fastMalloc((24 * v22 + 8));
  v25 = v24;
  *v24 = v22;
  if (v22)
  {
    v26 = (v24 + 6);
    v27 = (v6 + 6);
    do
    {
      *(v26 - 16) = 0;
      *v26 = -1;
      v28 = *v27;
      if (v28 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v28, v37, v26 - 2, v27 - 2);
        *v26 = *v27;
      }

      v26 += 3;
      v27 += 3;
      v23 -= 24;
    }

    while (v23);
  }

  v38 = 8;
  v37[0] = 0;
  *a2 = v25;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v37);
LABEL_64:
  if (v33 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v32);
  }

  v29 = *v6;
  if (v29)
  {
    v30 = 24 * v29;
    v31 = v6 + 6;
    do
    {
      v15 = (v31 - 16);
      if (*v31 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v15);
      }

      *v31 = -1;
      v31 += 24;
      v30 -= 24;
    }

    while (v30);
  }

  WTF::fastFree(v6, v15);
  if (v41 != 255)
  {
    goto LABEL_55;
  }
}

void WGSL::constantCountOneBits(void *a1@<X1>, uint64_t a2@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_82;
  }

  LOBYTE(v43[0]) = 0;
  v44 = -1;
  v4 = *(v3 + 24);
  if (v4 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v4, v40, v43, v3 + 1), v44 = *(v3 + 24), LOBYTE(v40[0]) = 0, v41 = -1, v44 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v44, v37, v40, v43), v41 = v44, v44 == 255))
  {
LABEL_50:
    v22 = *(v3 + 24);
    if (v22 == 4)
    {
      v23 = vcnt_s8(v3[2]);
      v23.i16[0] = vaddlv_u8(v23);
      LODWORD(v40[0]) = v23.i32[0];
      v24 = 4;
    }

    else
    {
      if (v22 != 3)
      {
        __break(0xC471u);
        JUMPOUT(0x22583C028);
      }

      v23 = vcnt_s8(v3[2]);
      v23.i16[0] = vaddlv_u8(v23);
      LODWORD(v40[0]) = v23.i32[0];
      v24 = 3;
    }

    v41 = v24;
    *a2 = v23.i32[0];
    *(a2 + 16) = v24;
    *(a2 + 24) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v40);
    if (v44 == 255)
    {
      return;
    }

LABEL_55:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v43);
    return;
  }

  if (v44 != 8 || !v40[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v40);
    goto LABEL_50;
  }

  v5 = *v40[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v40);
  if (!v5)
  {
    goto LABEL_50;
  }

  v6 = WTF::fastMalloc((24 * v5 + 8));
  *v6 = v5;
  v7 = v6 + 2;
  v8 = 6;
  bzero(v6 + 2, 24 * ((24 * v5 - 24) / 0x18uLL) + 24);
  v10 = 0;
  LODWORD(v35[0]) = 0;
  v36 = 0;
  v11 = *(a2 + 24);
  v12 = *a2;
  do
  {
    v13 = v44;
    if (v44 != 8)
    {
      if (v36 == 255)
      {
        if (v44 == 255)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          goto LABEL_81;
        }
      }

      else if (v44 == 255)
      {
LABEL_75:
        *a2 = v12;
        *(a2 + 24) = v11;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v35);
        v36 = -1;
LABEL_81:
        __break(0xC471u);
LABEL_82:
        JUMPOUT(0x22583BFE4);
      }

      v40[0] = v35;
      v14 = v43;
      goto LABEL_21;
    }

    if (v10 >= *v43[0])
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      __break(0xC471u);
      JUMPOUT(0x22583C050);
    }

    v14 = (v43[0] + v8 * 4 - 16);
    v13 = *(v43[0] + v8 * 4);
    if (v36 == 255)
    {
      if (v13 == 255)
      {
        goto LABEL_22;
      }
    }

    else if (v13 == 255)
    {
      goto LABEL_75;
    }

    v40[0] = v35;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v13, v40, v35, v14);
LABEL_22:
    if (v36 != 3)
    {
      if (v36 == 4)
      {
        v9.i32[0] = v35[0];
        v20 = vcnt_s8(v9);
        v20.i16[0] = vaddlv_u8(v20);
        LODWORD(v37[0]) = v20.i32[0];
        v38 = 4;
        LODWORD(v40[0]) = v20.i32[0];
        v41 = 4;
        v42 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v39, v37);
        v18 = v42;
        if (v42)
        {
          goto LABEL_24;
        }

LABEL_30:
        if (v10 >= *v6)
        {
          *a2 = v12;
          *(a2 + 24) = v11;
          __break(0xC471u);
          JUMPOUT(0x22583C084);
        }

        if (LOBYTE(v6[v8]) == 255)
        {
          if (v41 == 255)
          {
            goto LABEL_37;
          }
        }

        else if (v41 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v7);
          LOBYTE(v6[v8]) = -1;
          v19 = v42;
          if (v42 == 255)
          {
            goto LABEL_44;
          }

          goto LABEL_38;
        }

        v37[0] = v7;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v41, v37, v7, v40);
LABEL_37:
        v19 = v42;
        if (v42 == 255)
        {
          goto LABEL_44;
        }

        goto LABEL_38;
      }

      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_81;
    }

    v9.i32[0] = v35[0];
    v15 = vcnt_s8(v9);
    v15.i16[0] = vaddlv_u8(v15);
    LODWORD(v37[0]) = v15.i32[0];
    v38 = 3;
    LODWORD(v40[0]) = v15.i32[0];
    v41 = 3;
    v42 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v39, v37);
    v18 = v42;
    if (!v42)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (v18 != 1)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      mpark::throw_bad_variant_access(v16);
    }

    v12 = v40[0];
    if (v40[0])
    {
      atomic_fetch_add_explicit(v40[0], 2u, memory_order_relaxed);
      v11 = 1;
      v19 = v42;
      if (v42 == 255)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v11 = 1;
      v19 = v42;
      if (v42 == 255)
      {
        goto LABEL_44;
      }
    }

LABEL_38:
    if (v19)
    {
      v21 = v40[0];
      v40[0] = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v17);
      }
    }

    else if (v41 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v40);
    }

LABEL_44:
    if (v18)
    {
      *a2 = v12;
      *(a2 + 24) = v11;
      goto LABEL_64;
    }

    ++v10;
    v7 += 24;
    v8 += 6;
  }

  while (v5 != v10);
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
LABEL_64:
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
    goto LABEL_55;
  }
}

void WGSL::constantCountTrailingZeros(void *a1@<X1>, uint64_t a2@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_82;
  }

  LOBYTE(v40[0]) = 0;
  v41 = -1;
  v4 = *(v3 + 24);
  if (v4 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v4, v37, v40, v3 + 1), v41 = *(v3 + 24), LOBYTE(v37[0]) = 0, v38 = -1, v41 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v41, v34, v37, v40), v38 = v41, v41 == 255))
  {
LABEL_50:
    v19 = *(v3 + 24);
    if (v19 == 4)
    {
      v20 = __clz(__rbit32(v3[2]));
      LODWORD(v37[0]) = v20;
      v21 = 4;
    }

    else
    {
      if (v19 != 3)
      {
        __break(0xC471u);
        JUMPOUT(0x22583C63CLL);
      }

      v20 = __clz(__rbit32(v3[2]));
      LODWORD(v37[0]) = v20;
      v21 = 3;
    }

    v38 = v21;
    *a2 = v20;
    *(a2 + 16) = v21;
    *(a2 + 24) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v37);
    if (v41 == 255)
    {
      return;
    }

LABEL_55:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v40);
    return;
  }

  if (v41 != 8 || !v37[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v37);
    goto LABEL_50;
  }

  v5 = *v37[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v37);
  if (!v5)
  {
    goto LABEL_50;
  }

  v6 = WTF::fastMalloc((24 * v5 + 8));
  *v6 = v5;
  v7 = v6 + 2;
  v8 = 6;
  bzero(v6 + 2, 24 * ((24 * v5 - 24) / 0x18uLL) + 24);
  v9 = 0;
  LODWORD(v32[0]) = 0;
  v33 = 0;
  v10 = *(a2 + 24);
  v11 = *a2;
  do
  {
    v12 = v41;
    if (v41 != 8)
    {
      if (v33 == 255)
      {
        if (v41 == 255)
        {
          *a2 = v11;
          *(a2 + 24) = v10;
          goto LABEL_81;
        }
      }

      else if (v41 == 255)
      {
LABEL_75:
        *a2 = v11;
        *(a2 + 24) = v10;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v32);
        v33 = -1;
LABEL_81:
        __break(0xC471u);
LABEL_82:
        JUMPOUT(0x22583C5F8);
      }

      v37[0] = v32;
      v13 = v40;
      goto LABEL_21;
    }

    if (v9 >= *v40[0])
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      __break(0xC471u);
      JUMPOUT(0x22583C664);
    }

    v13 = (v40[0] + v8 * 4 - 16);
    v12 = *(v40[0] + v8 * 4);
    if (v33 == 255)
    {
      if (v12 == 255)
      {
        goto LABEL_22;
      }
    }

    else if (v12 == 255)
    {
      goto LABEL_75;
    }

    v37[0] = v32;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v12, v37, v32, v13);
LABEL_22:
    if (v33 != 3)
    {
      if (v33 == 4)
      {
        LODWORD(v34[0]) = __clz(__rbit32(v32[0]));
        v35 = 4;
        LODWORD(v37[0]) = v34[0];
        v38 = 4;
        v39 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v36, v34);
        v16 = v39;
        if (v39)
        {
          goto LABEL_24;
        }

LABEL_30:
        if (v9 >= *v6)
        {
          *a2 = v11;
          *(a2 + 24) = v10;
          __break(0xC471u);
          JUMPOUT(0x22583C698);
        }

        if (LOBYTE(v6[v8]) == 255)
        {
          if (v38 == 255)
          {
            goto LABEL_37;
          }
        }

        else if (v38 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v7);
          LOBYTE(v6[v8]) = -1;
          v17 = v39;
          if (v39 == 255)
          {
            goto LABEL_44;
          }

          goto LABEL_38;
        }

        v34[0] = v7;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v38, v34, v7, v37);
LABEL_37:
        v17 = v39;
        if (v39 == 255)
        {
          goto LABEL_44;
        }

        goto LABEL_38;
      }

      *a2 = v11;
      *(a2 + 24) = v10;
      goto LABEL_81;
    }

    LODWORD(v34[0]) = __clz(__rbit32(v32[0]));
    v35 = 3;
    LODWORD(v37[0]) = v34[0];
    v38 = 3;
    v39 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v36, v34);
    v16 = v39;
    if (!v39)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (v16 != 1)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      mpark::throw_bad_variant_access(v14);
    }

    v11 = v37[0];
    if (v37[0])
    {
      atomic_fetch_add_explicit(v37[0], 2u, memory_order_relaxed);
      v10 = 1;
      v17 = v39;
      if (v39 == 255)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v10 = 1;
      v17 = v39;
      if (v39 == 255)
      {
        goto LABEL_44;
      }
    }

LABEL_38:
    if (v17)
    {
      v18 = v37[0];
      v37[0] = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v15);
      }
    }

    else if (v38 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v37);
    }

LABEL_44:
    if (v16)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      goto LABEL_64;
    }

    ++v9;
    v7 += 24;
    v8 += 6;
  }

  while (v5 != v9);
  v22 = *v6;
  v23 = 24 * v22;
  v24 = WTF::fastMalloc((24 * v22 + 8));
  v25 = v24;
  *v24 = v22;
  if (v22)
  {
    v26 = (v24 + 6);
    v27 = (v6 + 6);
    do
    {
      *(v26 - 16) = 0;
      *v26 = -1;
      v28 = *v27;
      if (v28 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v28, v37, v26 - 2, v27 - 2);
        *v26 = *v27;
      }

      v26 += 3;
      v27 += 3;
      v23 -= 24;
    }

    while (v23);
  }

  v38 = 8;
  v37[0] = 0;
  *a2 = v25;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v37);
LABEL_64:
  if (v33 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v32);
  }

  v29 = *v6;
  if (v29)
  {
    v30 = 24 * v29;
    v31 = v6 + 6;
    do
    {
      v15 = (v31 - 16);
      if (*v31 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v37, v15);
      }

      *v31 = -1;
      v31 += 24;
      v30 -= 24;
    }

    while (v30);
  }

  WTF::fastFree(v6, v15);
  if (v41 != 255)
  {
    goto LABEL_55;
  }
}

uint64_t WGSL::constantCross@<X0>(mpark *a1@<X0>, int **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = **a2;
  if (!v5)
  {
    __break(0xC471u);
    goto LABEL_132;
  }

  if (*(v4 + 24) != 8)
  {
    goto LABEL_106;
  }

  if (v5 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22583CF0CLL);
  }

  if (*(v4 + 48) != 8)
  {
    goto LABEL_106;
  }

  v6 = *(v4 + 1);
  v7 = *v6;
  if (!*v6)
  {
    __break(0xC471u);
    JUMPOUT(0x22583CF2CLL);
  }

  v8 = *(v6 + 24);
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      if (v7 == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x22583CF4CLL);
      }

      if (*(v6 + 48) == 1)
      {
        if (v7 <= 2)
        {
          __break(0xC471u);
          JUMPOUT(0x22583CF6CLL);
        }

        if (*(v6 + 72) == 1)
        {
          v9 = *(v4 + 4);
          v10 = *v9;
          if (!*v9)
          {
            __break(0xC471u);
            JUMPOUT(0x22583D02CLL);
          }

          if (*(v9 + 24) == 1)
          {
            if (v10 == 1)
            {
              __break(0xC471u);
              JUMPOUT(0x22583D04CLL);
            }

            if (*(v9 + 48) == 1)
            {
              if (v10 <= 2)
              {
                __break(0xC471u);
                JUMPOUT(0x22583D0ECLL);
              }

              if (*(v9 + 72) == 1)
              {
                _H11 = *(v6 + 8);
                _H8 = *(v6 + 32);
                _H9 = *(v6 + 56);
                _H10 = *(v9 + 8);
                _H12 = *(v9 + 32);
                _H13 = *(v9 + 56);
                v17 = WTF::fastMalloc(0x50);
                *v17 = 3;
                *(v17 + 6) = 0u;
                *(v17 + 10) = 0u;
                *(v17 + 14) = 0u;
                *(v17 + 9) = 0;
                *(v17 + 2) = 0u;
                __asm
                {
                  FCVT            S8, H8
                  FCVT            S13, H13
                  FCVT            S14, H9
                  FCVT            S9, H12
                }

                _S0 = (_S8 * _S13) - (_S14 * _S9);
                __asm { FCVT            H12, S0 }

                LOWORD(v92[0]) = _H12;
                v93 = 1;
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v17 + 8);
                *(v17 + 4) = _H12;
                *(v17 + 24) = 1;
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v92);
                __asm
                {
                  FCVT            S10, H10
                  FCVT            S11, H11
                }

                _S0 = (_S14 * _S10) - (_S11 * _S13);
                __asm { FCVT            H12, S0 }

                LOWORD(v92[0]) = _H12;
                v93 = 1;
                if (*v17 <= 1)
                {
                  __break(0xC471u);
                  JUMPOUT(0x22583D10CLL);
                }

                v32 = *(v17 + 48);
                if (v32 != 255)
                {
                  if (v32 == 1)
                  {
                    *(v17 + 16) = _H12;
                    goto LABEL_53;
                  }

                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v17 + 32);
                }

                *(v17 + 16) = _H12;
                *(v17 + 48) = 1;
LABEL_53:
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v92);
                _S0 = (_S11 * _S9) - (_S8 * _S10);
                __asm { FCVT            H8, S0 }

                LOWORD(v92[0]) = _H8;
                v93 = 1;
                if (*v17 <= 2)
                {
                  __break(0xC471u);
                  JUMPOUT(0x22583D1ACLL);
                }

                v55 = *(v17 + 72);
                if (v55 != 255)
                {
                  if (v55 == 1)
                  {
                    *(v17 + 28) = _H8;
LABEL_65:
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v92);
                    v58 = *v17;
                    v59 = 24 * v58;
                    v60 = WTF::fastMalloc((24 * v58 + 8));
                    v61 = v60;
                    *v60 = v58;
                    if (v58)
                    {
                      v62 = (v60 + 6);
                      v63 = (v17 + 6);
                      do
                      {
                        *(v62 - 16) = 0;
                        *v62 = -1;
                        v64 = *v63;
                        if (v64 != 255)
                        {
                          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v64, v92, v62 - 2, v63 - 2);
                          *v62 = *v63;
                        }

                        v62 += 3;
                        v63 += 3;
                        v59 -= 24;
                      }

                      while (v59);
                    }

                    v93 = 8;
                    v92[0] = 0.0;
                    *a3 = v61;
                    *(a3 + 16) = 8;
                    *(a3 + 24) = 0;
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v92);
                    v66 = *v17;
                    if (v66)
                    {
                      v67 = 24 * v66;
                      v68 = v17 + 6;
                      do
                      {
                        v65 = v68 - 16;
                        if (*v68 != 255)
                        {
                          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v92, v65);
                        }

                        *v68 = -1;
                        v68 += 24;
                        v67 -= 24;
                      }

                      while (v67);
                    }

                    return WTF::fastFree(v17, v65);
                  }

                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v17 + 56);
                }

                *(v17 + 28) = _H8;
                *(v17 + 72) = 1;
                goto LABEL_65;
              }
            }
          }
        }
      }

LABEL_106:
      mpark::throw_bad_variant_access(a1);
    }

    if (*(v6 + 24))
    {
      __break(0xC471u);
      JUMPOUT(0x22583CFCCLL);
    }

    if (v7 == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x22583CFECLL);
    }

    if (*(v6 + 48))
    {
      goto LABEL_106;
    }

    if (v7 <= 2)
    {
      __break(0xC471u);
      JUMPOUT(0x22583D00CLL);
    }

    if (*(v6 + 72))
    {
      goto LABEL_106;
    }

    v43 = *(v4 + 4);
    v44 = *v43;
    if (!*v43)
    {
      __break(0xC471u);
      JUMPOUT(0x22583D0ACLL);
    }

    if (*(v43 + 24))
    {
      goto LABEL_106;
    }

    if (v44 == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x22583D0CCLL);
    }

    if (*(v43 + 48))
    {
      goto LABEL_106;
    }

    if (v44 <= 2)
    {
      __break(0xC471u);
      JUMPOUT(0x22583D16CLL);
    }

    if (*(v43 + 72))
    {
      goto LABEL_106;
    }

    v45 = *(v6 + 8);
    v46 = *(v6 + 32);
    v47 = *(v6 + 56);
    v48 = *(v43 + 8);
    v49 = *(v43 + 32);
    v50 = *(v43 + 56);
    v17 = WTF::fastMalloc(0x50);
    *v17 = 3;
    *(v17 + 3) = 0u;
    *(v17 + 7) = 0u;
    *(v17 + 11) = 0u;
    *(v17 + 15) = 0u;
    v17[19] = 0;
    *v92 = (v46 * v50) - (v47 * v49);
    v93 = 0;
    v17[2] = LODWORD(v92[0]);
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v92);
    v51 = (v47 * v48) - (v45 * v50);
    *v92 = v51;
    v93 = 0;
    if (*v17 <= 1)
    {
      __break(0xC471u);
      JUMPOUT(0x22583D18CLL);
    }

    if (*(v17 + 48) != 255)
    {
      v52 = (v17 + 8);
      if (!*(v17 + 48))
      {
        *v52 = v51;
LABEL_89:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v92);
        v79 = (v45 * v49) - (v46 * v48);
        *v92 = v79;
        v93 = 0;
        if (*v17 > 2)
        {
          if (*(v17 + 72) != 255)
          {
            v80 = (v17 + 14);
            if (!*(v17 + 72))
            {
              *v80 = v79;
LABEL_95:
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v92);
              v81 = *v17;
              v82 = 24 * v81;
              v83 = WTF::fastMalloc((24 * v81 + 8));
              v84 = v83;
              *v83 = v81;
              if (v81)
              {
                v85 = (v83 + 6);
                v86 = (v17 + 6);
                do
                {
                  *(v85 - 16) = 0;
                  *v85 = -1;
                  v87 = *v86;
                  if (v87 != 255)
                  {
                    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v87, v92, v85 - 2, v86 - 2);
                    *v85 = *v86;
                  }

                  v85 += 3;
                  v86 += 3;
                  v82 -= 24;
                }

                while (v82);
              }

              v93 = 8;
              v92[0] = 0.0;
              *a3 = v84;
              *(a3 + 16) = 8;
              *(a3 + 24) = 0;
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v92);
              v88 = *v17;
              if (v88)
              {
                v89 = 24 * v88;
                v90 = v17 + 6;
                do
                {
                  v65 = v90 - 16;
                  if (*v90 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v92, v65);
                  }

                  *v90 = -1;
                  v90 += 24;
                  v89 -= 24;
                }

                while (v89);
              }

              return WTF::fastFree(v17, v65);
            }

            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v80);
          }

          *(v17 + 14) = v79;
          *(v17 + 72) = 0;
          goto LABEL_95;
        }

        __break(0xC471u);
LABEL_132:
        JUMPOUT(0x22583CEECLL);
      }

      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v52);
    }

    *(v17 + 8) = v51;
    *(v17 + 48) = 0;
    goto LABEL_89;
  }

  if (v7 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22583CF8CLL);
  }

  if (*(v6 + 48) != 2)
  {
    goto LABEL_106;
  }

  if (v7 <= 2)
  {
    __break(0xC471u);
    JUMPOUT(0x22583CFACLL);
  }

  if (*(v6 + 72) != 2)
  {
    goto LABEL_106;
  }

  v33 = *(v4 + 4);
  v34 = *v33;
  if (!*v33)
  {
    __break(0xC471u);
    JUMPOUT(0x22583D06CLL);
  }

  if (*(v33 + 24) != 2)
  {
    goto LABEL_106;
  }

  if (v34 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22583D08CLL);
  }

  if (*(v33 + 48) != 2)
  {
    goto LABEL_106;
  }

  if (v34 <= 2)
  {
    __break(0xC471u);
    JUMPOUT(0x22583D12CLL);
  }

  if (*(v33 + 72) != 2)
  {
    goto LABEL_106;
  }

  v35 = *(v6 + 8);
  v36 = *(v6 + 32);
  v37 = *(v6 + 56);
  v38 = *(v33 + 8);
  v39 = *(v33 + 32);
  v40 = *(v33 + 56);
  v17 = WTF::fastMalloc(0x50);
  *v17 = 3;
  *(v17 + 6) = 0u;
  *(v17 + 10) = 0u;
  *(v17 + 14) = 0u;
  *(v17 + 2) = 0u;
  *(v17 + 9) = 0;
  v92[0] = v36 * v40 - v37 * v39;
  v93 = 2;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v17 + 8);
  *(v17 + 1) = v92[0];
  *(v17 + 24) = 2;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v92);
  v41 = v37 * v38 - v35 * v40;
  v92[0] = v41;
  v93 = 2;
  if (*v17 <= 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22583D14CLL);
  }

  v42 = *(v17 + 48);
  if (v42 != 255)
  {
    if (v42 == 2)
    {
      *(v17 + 4) = v41;
      goto LABEL_59;
    }

    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v17 + 32);
  }

  *(v17 + 4) = v41;
  *(v17 + 48) = 2;
LABEL_59:
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v92);
  v56 = v35 * v39 - v36 * v38;
  v92[0] = v56;
  v93 = 2;
  if (*v17 <= 2)
  {
    __break(0xC471u);
    JUMPOUT(0x22583D1CCLL);
  }

  v57 = *(v17 + 72);
  if (v57 == 255)
  {
    goto LABEL_76;
  }

  if (v57 != 2)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v17 + 56);
LABEL_76:
    *(v17 + 7) = v56;
    *(v17 + 72) = 2;
    goto LABEL_77;
  }

  *(v17 + 7) = v56;
LABEL_77:
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v92);
  v69 = *v17;
  v70 = 24 * v69;
  v71 = WTF::fastMalloc((24 * v69 + 8));
  v72 = v71;
  *v71 = v69;
  if (v69)
  {
    v73 = (v71 + 6);
    v74 = (v17 + 6);
    do
    {
      *(v73 - 16) = 0;
      *v73 = -1;
      v75 = *v74;
      if (v75 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v75, v92, v73 - 2, v74 - 2);
        *v73 = *v74;
      }

      v73 += 3;
      v74 += 3;
      v70 -= 24;
    }

    while (v70);
  }

  v93 = 8;
  v92[0] = 0.0;
  *a3 = v72;
  *(a3 + 16) = 8;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v94, v92);
  v76 = *v17;
  if (v76)
  {
    v77 = 24 * v76;
    v78 = v17 + 6;
    do
    {
      v65 = v78 - 16;
      if (*v78 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v92, v65);
      }

      *v78 = -1;
      v78 += 24;
      v77 -= 24;
    }

    while (v77);
  }

  return WTF::fastFree(v17, v65);
}

void WGSL::constantDegrees(void *a1@<X1>, uint64_t a2@<X8>)
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
      *v49 = *v4 * 57.2957795;
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
          JUMPOUT(0x22583D83CLL);
        }

        v33 = *v4 * 57.2957795;
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

      _D0 = _D0 * 57.2957795;
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
        JUMPOUT(0x22583D7D0);
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
      JUMPOUT(0x22583D81CLL);
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

        _D0 = _D0 * 57.2957795;
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
        *v46 = *v44 * 57.2957795;
        v47 = 2;
        *v49 = *v44 * 57.2957795;
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
          JUMPOUT(0x22583D864);
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

    v25 = *v44 * 57.2957795;
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

void WGSL::constantDeterminant(mpark *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (!**a2)
  {
    goto LABEL_186;
  }

  if (*(v3 + 24) != 9)
  {
    goto LABEL_144;
  }

  v4 = *(v3 + 2);
  v5 = *v4;
  if (!*v4)
  {
    __break(0xC471u);
    JUMPOUT(0x22583E2F4);
  }

  v6 = v3[2];
  v7 = *(v4 + 24);
  if (v7 == 2)
  {
    switch(v6)
    {
      case 4:
        if (v5 <= 4)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E3B4);
        }

        if (*(v4 + 120) != 2)
        {
          goto LABEL_144;
        }

        if (v5 <= 8)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E534);
        }

        if (*(v4 + 216) != 2)
        {
          goto LABEL_144;
        }

        if (v5 <= 0xC)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E594);
        }

        if (*(v4 + 312) != 2 || *(v4 + 48) != 2 || *(v4 + 144) != 2 || *(v4 + 240) != 2)
        {
          goto LABEL_144;
        }

        if (v5 == 13)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E6B4);
        }

        if (*(v4 + 336) != 2 || *(v4 + 72) != 2 || *(v4 + 168) != 2 || *(v4 + 264) != 2)
        {
          goto LABEL_144;
        }

        if (v5 <= 0xE)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E774);
        }

        if (*(v4 + 360) != 2 || *(v4 + 96) != 2 || *(v4 + 192) != 2 || *(v4 + 288) != 2)
        {
          goto LABEL_144;
        }

        if (v5 == 15)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E7D4);
        }

        if (*(v4 + 384) != 2)
        {
          goto LABEL_144;
        }

        v82 = *(v4 + 32);
        v83 = *(v4 + 128);
        v84 = *(v4 + 224);
        v85 = *(v4 + 320);
        v86 = *(v4 + 56);
        v87 = *(v4 + 152);
        v88 = *(v4 + 248);
        v89 = *(v4 + 344);
        v90 = *(v4 + 80);
        v91 = *(v4 + 176);
        v92 = *(v4 + 272);
        v93 = *(v4 + 368);
        v94 = -(v85 * v88);
        v95 = -(v84 * v87);
        v31 = *(v4 + 8) * (v84 * v89 * v91 + v83 * v88 * v93 + v85 * v87 * v92 + v94 * v91 + v95 * v93 + -(v83 * v89) * v92) - (v84 * v89 * v90 + v82 * v88 * v93 + v85 * v86 * v92 + v94 * v90 + -(v84 * v86) * v93 + -(v82 * v89) * v92) * *(v4 + 104) + *(v4 + 200) * (v83 * v89 * v90 + v82 * v87 * v93 + v85 * v86 * v91 + -(v85 * v87) * v90 + -(v83 * v86) * v93 + -(v82 * v89) * v91) - *(v4 + 296) * (v83 * v88 * v90 + v82 * v87 * v92 + v84 * v86 * v91 + v95 * v90 + -(v83 * v86) * v92 + -(v82 * v88) * v91);
        break;
      case 3:
        if (v5 <= 3)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E354);
        }

        if (*(v4 + 96) != 2)
        {
          goto LABEL_144;
        }

        if (v5 <= 6)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E4D4);
        }

        if (*(v4 + 168) != 2 || *(v4 + 48) != 2 || *(v4 + 120) != 2)
        {
          goto LABEL_144;
        }

        if (v5 == 7)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E654);
        }

        if (*(v4 + 192) != 2 || *(v4 + 72) != 2 || *(v4 + 144) != 2)
        {
          goto LABEL_144;
        }

        if (v5 <= 8)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E714);
        }

        if (*(v4 + 216) != 2)
        {
          goto LABEL_144;
        }

        v31 = *(v4 + 80) * *(v4 + 176) * *(v4 + 56) + *(v4 + 8) * *(v4 + 104) * *(v4 + 200) + *(v4 + 152) * *(v4 + 32) * *(v4 + 128) + -(*(v4 + 152) * *(v4 + 104)) * *(v4 + 56) + -(*(v4 + 80) * *(v4 + 32)) * *(v4 + 200) + -(*(v4 + 8) * *(v4 + 176)) * *(v4 + 128);
        break;
      case 2:
        if (v5 <= 2)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E434);
        }

        if (*(v4 + 72) != 2 || *(v4 + 48) != 2)
        {
          goto LABEL_144;
        }

        if (v5 == 3)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E5D4);
        }

        if (*(v4 + 96) != 2)
        {
          goto LABEL_144;
        }

        v31 = *(v4 + 8) * *(v4 + 80) - *(v4 + 56) * *(v4 + 32);
        break;
      default:
        __break(0xC471u);
        JUMPOUT(0x22583E414);
    }

    v120[0] = v31;
    v105 = 2;
    v121 = 2;
    *a3 = v31;
    goto LABEL_112;
  }

  if (v7 != 1)
  {
    if (*(v4 + 24))
    {
      __break(0xC471u);
      JUMPOUT(0x22583E314);
    }

    if (v6 != 4)
    {
      if (v6 == 3)
      {
        if (v5 <= 3)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E374);
        }

        if (*(v4 + 96))
        {
          goto LABEL_144;
        }

        if (v5 <= 6)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E4F4);
        }

        if (*(v4 + 168) || *(v4 + 48) || *(v4 + 120))
        {
          goto LABEL_144;
        }

        if (v5 == 7)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E674);
        }

        if (*(v4 + 192) || *(v4 + 72) || *(v4 + 144))
        {
          goto LABEL_144;
        }

        if (v5 <= 8)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E734);
        }

        if (*(v4 + 216))
        {
          goto LABEL_144;
        }

        v32 = ((((((*(v4 + 80) * *(v4 + 176)) * *(v4 + 56)) + ((*(v4 + 8) * *(v4 + 104)) * *(v4 + 200))) + ((*(v4 + 152) * *(v4 + 32)) * *(v4 + 128))) + (-(*(v4 + 152) * *(v4 + 104)) * *(v4 + 56))) + (-(*(v4 + 80) * *(v4 + 32)) * *(v4 + 200))) + (-(*(v4 + 8) * *(v4 + 176)) * *(v4 + 128));
      }

      else
      {
        if (v6 != 2)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E474);
        }

        if (v5 <= 2)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E494);
        }

        if (*(v4 + 72) || *(v4 + 48))
        {
          goto LABEL_144;
        }

        if (v5 == 3)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E614);
        }

        if (*(v4 + 96))
        {
          goto LABEL_144;
        }

        v32 = (*(v4 + 8) * *(v4 + 80)) - (*(v4 + 56) * *(v4 + 32));
      }

LABEL_142:
      *v120 = v32;
      v121 = 0;
      *a3 = v32;
      *(a3 + 16) = 0;
      goto LABEL_143;
    }

    if (v5 <= 4)
    {
      __break(0xC471u);
      JUMPOUT(0x22583E454);
    }

    if (*(v4 + 120))
    {
      goto LABEL_144;
    }

    if (v5 <= 8)
    {
      __break(0xC471u);
      JUMPOUT(0x22583E554);
    }

    if (*(v4 + 216))
    {
      goto LABEL_144;
    }

    if (v5 <= 0xC)
    {
      __break(0xC471u);
      JUMPOUT(0x22583E5F4);
    }

    if (*(v4 + 312) || *(v4 + 48) || *(v4 + 144) || *(v4 + 240))
    {
      goto LABEL_144;
    }

    if (v5 == 13)
    {
      __break(0xC471u);
      JUMPOUT(0x22583E6D4);
    }

    if (*(v4 + 336) || *(v4 + 72) || *(v4 + 168) || *(v4 + 264))
    {
      goto LABEL_144;
    }

    if (v5 <= 0xE)
    {
      __break(0xC471u);
      JUMPOUT(0x22583E794);
    }

    if (*(v4 + 360) || *(v4 + 96) || *(v4 + 192) || *(v4 + 288))
    {
      goto LABEL_144;
    }

    if (v5 != 15)
    {
      if (*(v4 + 384))
      {
        goto LABEL_144;
      }

      v106 = *(v4 + 32);
      v107 = *(v4 + 128);
      v108 = *(v4 + 224);
      v109 = *(v4 + 320);
      v110 = *(v4 + 56);
      v111 = *(v4 + 152);
      v112 = *(v4 + 248);
      v113 = *(v4 + 344);
      v114 = *(v4 + 80);
      v115 = *(v4 + 176);
      v116 = *(v4 + 272);
      v117 = *(v4 + 368);
      v118 = -(v109 * v112);
      v119 = -(v108 * v111);
      v32 = (((*(v4 + 8) * (((((((v108 * v113) * v115) + ((v107 * v112) * v117)) + ((v109 * v111) * v116)) + (v118 * v115)) + (v119 * v117)) + (-(v107 * v113) * v116))) - ((((((((v108 * v113) * v114) + ((v106 * v112) * v117)) + ((v109 * v110) * v116)) + (v118 * v114)) + (-(v108 * v110) * v117)) + (-(v106 * v113) * v116)) * *(v4 + 104))) + (*(v4 + 200) * (((((((v107 * v113) * v114) + ((v106 * v111) * v117)) + ((v109 * v110) * v115)) + (-(v109 * v111) * v114)) + (-(v107 * v110) * v117)) + (-(v106 * v113) * v115)))) - (*(v4 + 296) * (((((((v107 * v112) * v114) + ((v106 * v111) * v116)) + ((v108 * v110) * v115)) + (v119 * v114)) + (-(v107 * v110) * v116)) + (-(v106 * v112) * v115)));
      goto LABEL_142;
    }

LABEL_186:
    __break(0xC471u);
    JUMPOUT(0x22583E2D4);
  }

  if (v6 == 4)
  {
    if (v5 <= 4)
    {
      __break(0xC471u);
      JUMPOUT(0x22583E394);
    }

    if (*(v4 + 120) == 1)
    {
      if (v5 <= 8)
      {
        __break(0xC471u);
        JUMPOUT(0x22583E514);
      }

      if (*(v4 + 216) == 1)
      {
        if (v5 <= 0xC)
        {
          __break(0xC471u);
          JUMPOUT(0x22583E574);
        }

        if (*(v4 + 312) == 1 && *(v4 + 48) == 1 && *(v4 + 144) == 1 && *(v4 + 240) == 1)
        {
          if (v5 == 13)
          {
            __break(0xC471u);
            JUMPOUT(0x22583E694);
          }

          if (*(v4 + 336) == 1 && *(v4 + 72) == 1 && *(v4 + 168) == 1 && *(v4 + 264) == 1)
          {
            if (v5 <= 0xE)
            {
              __break(0xC471u);
              JUMPOUT(0x22583E754);
            }

            if (*(v4 + 360) == 1 && *(v4 + 96) == 1 && *(v4 + 192) == 1 && *(v4 + 288) == 1)
            {
              if (v5 == 15)
              {
                __break(0xC471u);
                JUMPOUT(0x22583E7B4);
              }

              if (*(v4 + 384) == 1)
              {
                _H1 = *(v4 + 8);
                _H2 = *(v4 + 104);
                _H3 = *(v4 + 200);
                _H0 = *(v4 + 296);
                _H4 = *(v4 + 32);
                _H5 = *(v4 + 128);
                _H6 = *(v4 + 224);
                _H7 = *(v4 + 320);
                _H16 = *(v4 + 56);
                _H17 = *(v4 + 152);
                _H18 = *(v4 + 248);
                _H19 = *(v4 + 344);
                _H20 = *(v4 + 80);
                _H21 = *(v4 + 176);
                _H22 = *(v4 + 272);
                _H23 = *(v4 + 368);
                __asm
                {
                  FCVT            S1, H1
                  FCVT            S5, H5
                  FCVT            S18, H18
                }

                v52 = _S5 * _S18;
                __asm
                {
                  FCVT            S23, H23
                  FCVT            S6, H6
                  FCVT            S19, H19
                  FCVT            S21, H21
                  FCVT            S7, H7
                  FCVT            S17, H17
                  FCVT            S22, H22
                }

                v60 = -(_S7 * _S18);
                v61 = -(_S6 * _S17);
                _S26 = ((((((_S6 * _S19) * _S21) + ((_S5 * _S18) * _S23)) + ((_S7 * _S17) * _S22)) + (v60 * _S21)) + (v61 * _S23)) + (-(_S5 * _S19) * _S22);
                __asm
                {
                  FCVT            H26, S26
                  FCVT            S26, H26
                  FCVT            S2, H2
                  FCVT            S4, H4
                  FCVT            S20, H20
                  FCVT            S16, H16
                }

                v68 = (((((_S6 * _S19) * _S20) + ((_S4 * _S18) * _S23)) + ((_S7 * _S16) * _S22)) + (v60 * _S20)) + (-(_S6 * _S16) * _S23);
                v69 = -(_S4 * _S19);
                _S25 = v68 + (v69 * _S22);
                __asm
                {
                  FCVT            H25, S25
                  FCVT            S25, H25
                }

                v72 = (_S1 * _S26) - (_S2 * _S25);
                __asm { FCVT            S2, H3 }

                v74 = (((_S5 * _S19) * _S20) + ((_S4 * _S17) * _S23)) + ((_S7 * _S16) * _S21);
                v75 = -(_S5 * _S16);
                _S7 = ((v74 + (-(_S7 * _S17) * _S20)) + (v75 * _S23)) + (v69 * _S21);
                __asm
                {
                  FCVT            H7, S7
                  FCVT            S7, H7
                }

                v78 = v72 + (_S2 * _S7);
                __asm { FCVT            S0, H0 }

                _S2 = (((((v52 * _S20) + ((_S4 * _S17) * _S22)) + ((_S6 * _S16) * _S21)) + (v61 * _S20)) + (v75 * _S22)) + (-(_S4 * _S18) * _S21);
                __asm
                {
                  FCVT            H2, S2
                  FCVT            S2, H2
                }

                _S0 = v78 - (_S0 * _S2);
                goto LABEL_103;
              }
            }
          }
        }
      }
    }

LABEL_144:
    mpark::throw_bad_variant_access(a1);
  }

  if (v6 != 3)
  {
    if (v6 != 2)
    {
      __break(0xC471u);
      JUMPOUT(0x22583E3D4);
    }

    if (v5 <= 2)
    {
      __break(0xC471u);
      JUMPOUT(0x22583E3F4);
    }

    if (*(v4 + 72) == 1 && *(v4 + 48) == 1)
    {
      if (v5 == 3)
      {
        __break(0xC471u);
        JUMPOUT(0x22583E5B4);
      }

      if (*(v4 + 96) == 1)
      {
        _H0 = *(v4 + 8);
        _H1 = *(v4 + 56);
        _H2 = *(v4 + 32);
        _H3 = *(v4 + 80);
        __asm
        {
          FCVT            S0, H0
          FCVT            S3, H3
          FCVT            S1, H1
          FCVT            S2, H2
        }

        _S0 = (_S0 * _S3) - (_S1 * _S2);
        goto LABEL_103;
      }
    }

    goto LABEL_144;
  }

  if (v5 <= 3)
  {
    __break(0xC471u);
    JUMPOUT(0x22583E334);
  }

  if (*(v4 + 96) != 1)
  {
    goto LABEL_144;
  }

  if (v5 <= 6)
  {
    __break(0xC471u);
    JUMPOUT(0x22583E4B4);
  }

  if (*(v4 + 168) != 1 || *(v4 + 48) != 1 || *(v4 + 120) != 1)
  {
    goto LABEL_144;
  }

  if (v5 == 7)
  {
    __break(0xC471u);
    JUMPOUT(0x22583E634);
  }

  if (*(v4 + 192) != 1 || *(v4 + 72) != 1 || *(v4 + 144) != 1)
  {
    goto LABEL_144;
  }

  if (v5 <= 8)
  {
    __break(0xC471u);
    JUMPOUT(0x22583E6F4);
  }

  if (*(v4 + 216) != 1)
  {
    goto LABEL_144;
  }

  _H0 = *(v4 + 8);
  _H1 = *(v4 + 80);
  _H2 = *(v4 + 152);
  _H3 = *(v4 + 32);
  _H4 = *(v4 + 104);
  _H5 = *(v4 + 176);
  _H6 = *(v4 + 56);
  _H7 = *(v4 + 128);
  _H16 = *(v4 + 200);
  __asm
  {
    FCVT            S0, H0
    FCVT            S4, H4
    FCVT            S16, H16
    FCVT            S1, H1
    FCVT            S5, H5
    FCVT            S6, H6
    FCVT            S2, H2
    FCVT            S3, H3
    FCVT            S7, H7
  }

  _S0 = ((((((_S1 * _S5) * _S6) + ((_S0 * _S4) * _S16)) + ((_S2 * _S3) * _S7)) + (-(_S2 * _S4) * _S6)) + (-(_S1 * _S3) * _S16)) + (-(_S0 * _S5) * _S7);
LABEL_103:
  __asm { FCVT            H0, S0 }

  LOWORD(v120[0]) = _H0;
  v105 = 1;
  v121 = 1;
  *a3 = _H0;
LABEL_112:
  *(a3 + 16) = v105;
LABEL_143:
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v122, v120);
}

void WGSL::constantDistance(const WGSL::Type **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  WGSL::constantMinus(0, a2, &v23);
  if (v26)
  {
    if (v26 != 1)
    {
      mpark::throw_bad_variant_access(v5);
    }

    v7 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      *a3 = v7;
      *(a3 + 24) = 1;
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        WTF::StringImpl::destroy(v7, v6);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 24) = 1;
    }

    return;
  }

  LOBYTE(v18[0]) = 0;
  v8 = -1;
  v19 = -1;
  v9 = v25;
  if (v25 > 5u)
  {
    if (v25 > 8u)
    {
      if (v25 == 9)
      {
        v11 = v24;
        v24 = 0;
        v18[0] = v23;
        v18[1] = v11;
        goto LABEL_28;
      }

      if (v25 != 10)
      {
        LOBYTE(v21[0]) = 0;
        goto LABEL_29;
      }
    }

    else if (v25 == 6)
    {
      LOBYTE(v18[0]) = v23;
      goto LABEL_28;
    }

    v10 = v23;
    v23 = 0;
LABEL_27:
    v18[0] = v10;
    goto LABEL_28;
  }

  if (v25 <= 2u)
  {
    if (v25)
    {
      if (v25 == 1)
      {
        LOWORD(v18[0]) = v23;
      }

      else
      {
        v18[0] = v23;
      }
    }

    else
    {
      LODWORD(v18[0]) = v23;
    }

    goto LABEL_28;
  }

  if (v25 != 3 && v25 != 4)
  {
    v10 = v23;
    goto LABEL_27;
  }

  LODWORD(v18[0]) = v23;
LABEL_28:
  v19 = v25;
  LOBYTE(v21[0]) = 0;
  v22 = -1;
  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v25, &v20, v21, v18);
  v8 = v19;
LABEL_29:
  v22 = v8;
  v12 = WTF::fastMalloc(0x20);
  *v12 = 1;
  *(v12 + 8) = 0;
  *(v12 + 24) = -1;
  if (v22 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v22, &v20, v12 + 1, v21);
    *(v12 + 24) = v22;
  }

  v17 = v12;
  WGSL::constantLength(a1, &v17, a3);
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
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v20, v13);
      }

      *v16 = -1;
      v16 += 24;
      v15 -= 24;
    }

    while (v15);
  }

  WTF::fastFree(v12, v13);
  if (v22 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v20, v21);
  }

  if (v19 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v21, v18);
  }

  if (v9 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v18, &v23);
  }
}

void WGSL::constantDot(const WGSL::Type **a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = WGSL::constantMultiply(v37);
  if (v39)
  {
    if (v39 == 1)
    {
      v6 = v37[0];
      if (v37[0])
      {
        atomic_fetch_add_explicit(v37[0], 2u, memory_order_relaxed);
      }

      *a2 = v6;
      *(a2 + 24) = 1;
      v7 = v39;
      if (v39 == 255)
      {
        return;
      }

LABEL_56:
      if (v7)
      {
        v22 = v37[0];
        v37[0] = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v5);
        }
      }

      else if (v38 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v30, v37);
      }

      return;
    }

LABEL_69:
    mpark::throw_bad_variant_access(v4);
  }

  if (v38 != 8)
  {
    if (v38 <= 6u)
    {
      goto LABEL_72;
    }

    if (v38 > 9u)
    {
      if (v38 != 10)
      {
        goto LABEL_72;
      }
    }

    else if (v38 != 7)
    {
      v37[1] = 0;
      WGSL::zeroValue(v25, a1);
      goto LABEL_69;
    }

    v37[0] = 0;
LABEL_72:
    WGSL::zeroValue(v25, a1);
    mpark::throw_bad_variant_access(v23);
  }

  v8 = v37[0];
  v37[0] = 0;
  v27 = v8;
  v28 = 8;
  WGSL::zeroValue(v25, a1);
  if (v8)
  {
    v9 = v8 + 2;
  }

  else
  {
    v9 = 0;
  }

  if (!v8)
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_51;
    }

    while (1)
    {
LABEL_15:
      LOBYTE(v30[0]) = 0;
      v31 = -1;
      if (v26 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v26, v34, v30, v25);
        v31 = v26;
      }

      LOBYTE(v32[0]) = 0;
      v33 = -1;
      v11 = *(v9 + 16);
      if (v11 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v11, v34, v32, v9);
        v33 = *(v9 + 16);
      }

      v12 = WTF::fastMalloc(0x38);
      *v12 = 2;
      *(v12 + 8) = 0;
      *(v12 + 24) = -1;
      if (v31 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v31, v34, v12 + 1, v30);
        *(v12 + 24) = v31;
      }

      *(v12 + 32) = 0;
      *(v12 + 48) = -1;
      if (v33 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v33, v34, v12 + 4, v32);
        *(v12 + 48) = v33;
      }

      v24 = v12;
      WGSL::constantAdd(a1, &v24, v34);
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
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v29, v13);
          }

          *v16 = -1;
          v16 += 24;
          v15 -= 24;
        }

        while (v15);
      }

      v4 = WTF::fastFree(v12, v13);
      if (v33 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v29, v32);
      }

      v33 = -1;
      if (v31 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v29, v30);
      }

      v18 = v36;
      if (v36)
      {
        if (v36 != 1)
        {
          goto LABEL_69;
        }

        v19 = v34[0];
        if (v34[0])
        {
          atomic_fetch_add_explicit(v34[0], 2u, memory_order_relaxed);
        }

        *a2 = v19;
        *(a2 + 24) = 1;
      }

      else
      {
        if (v26 == 255)
        {
          if (v35 == 255)
          {
            goto LABEL_42;
          }
        }

        else if (v35 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v30, v25);
          v26 = -1;
          goto LABEL_42;
        }

        v30[0] = v25;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v35, v30, v25, v34);
      }

LABEL_42:
      if (v36 != 255)
      {
        if (v36)
        {
          v20 = v34[0];
          v34[0] = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v17);
          }
        }

        else if (v35 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v30, v34);
        }
      }

      if (v18)
      {
        if (v26 == 255)
        {
          goto LABEL_55;
        }

LABEL_54:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v30, v25);
        goto LABEL_55;
      }

      v9 += 6;
      if (v9 == v10)
      {
        goto LABEL_51;
      }
    }
  }

  v10 = &v8[6 * *v8 + 2];
  if (v9 != v10)
  {
    goto LABEL_15;
  }

LABEL_51:
  *a2 = 0;
  v21 = 255;
  *(a2 + 16) = -1;
  if (v26 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v26, v30, a2, v25);
    v21 = v26;
    *(a2 + 16) = v26;
  }

  *(a2 + 24) = 0;
  if (v21 != 255)
  {
    goto LABEL_54;
  }

LABEL_55:
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v30, &v27);
  v7 = v39;
  if (v39 != 255)
  {
    goto LABEL_56;
  }
}

void WGSL::constantDot4U8Packed(mpark *a1@<X0>, int **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = **a2;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (*(v3 + 24) != 4)
  {
    goto LABEL_6;
  }

  if (v4 == 1)
  {
LABEL_7:
    __break(0xC471u);
    JUMPOUT(0x22583EFF4);
  }

  if (*(v3 + 48) != 4)
  {
LABEL_6:
    mpark::throw_bad_variant_access(a1);
  }

  v5 = v3[2];
  v6[0] = v3[8] * v5 + HIBYTE(v3[8]) * HIBYTE(v5) + BYTE1(v3[8]) * BYTE1(v5) + BYTE2(v3[8]) * BYTE2(v5);
  v7 = 4;
  *a3 = v6[0];
  *(a3 + 16) = 4;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v8, v6);
}

void WGSL::constantDot4I8Packed(mpark *a1@<X0>, int **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = **a2;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (*(v3 + 24) != 4)
  {
    goto LABEL_6;
  }

  if (v4 == 1)
  {
LABEL_7:
    __break(0xC471u);
    JUMPOUT(0x22583F0DCLL);
  }

  if (*(v3 + 48) != 4)
  {
LABEL_6:
    mpark::throw_bad_variant_access(a1);
  }

  v5 = v3[2];
  v6[0] = (v3[8] >> 24) * (v5 >> 24) + (v3[8] >> 8) * (v5 >> 8) + v3[8] * v5 + (v3[8] << 8 >> 24) * (v5 << 8 >> 24);
  v7 = 3;
  *a3 = v6[0];
  *(a3 + 16) = 3;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v8, v6);
}

void WGSL::constantExp(void *a1@<X1>, uint64_t a2@<X8>)
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
      v47[0] = COERCE_WTF_STRINGIMPL_(exp(*v4));
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
          JUMPOUT(0x22583F718);
        }

        LODWORD(v47[0]) = expf(*v4);
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

      _S0 = expf(_S0);
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
        JUMPOUT(0x22583F6ACLL);
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
      JUMPOUT(0x22583F6F8);
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

        _S0 = expf(_S0);
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
        v44[0] = COERCE__BYTE_(exp(*__x));
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
          JUMPOUT(0x22583F740);
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

    LODWORD(v44[0]) = expf(*__x);
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

void WGSL::constantExp2(void *a1@<X1>, uint64_t a2@<X8>)
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
      v47[0] = COERCE_WTF_STRINGIMPL_(exp2(*v4));
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
          JUMPOUT(0x22583FD94);
        }

        LODWORD(v47[0]) = exp2f(*v4);
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

      _S0 = exp2f(_S0);
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
        JUMPOUT(0x22583FD28);
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
      JUMPOUT(0x22583FD74);
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

        _S0 = exp2f(_S0);
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
        v44[0] = COERCE__BYTE_(exp2(*__x));
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
          JUMPOUT(0x22583FDBCLL);
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

    LODWORD(v44[0]) = exp2f(*__x);
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

void WGSL::constantExtractBits(mpark *a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = **a2;
  if (v5 <= 1)
  {
    __break(0xC471u);
    goto LABEL_113;
  }

  if (*(v4 + 48) != 4)
  {
    goto LABEL_102;
  }

  if (v5 == 2)
  {
    __break(0xC471u);
    JUMPOUT(0x22584045CLL);
  }

  if (*(v4 + 72) != 4)
  {
LABEL_102:
    mpark::throw_bad_variant_access(a1);
  }

  v6 = v4[8];
  v7 = v4[14];
  LOBYTE(v55[0]) = 0;
  v56 = -1;
  v8 = *(v4 + 24);
  if (v8 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v8, v52, v55, v4 + 1), v56 = *(v4 + 24), LOBYTE(v52[0]) = 0, v53 = -1, v56 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v56, v49, v52, v55), v53 = v56, v56 == 255))
  {
LABEL_65:
    v27 = *(v4 + 24);
    if (v27 == 4)
    {
      v28 = v4[2];
      if (v6 >= 0x20)
      {
        v29 = 32;
      }

      else
      {
        v29 = v6;
      }

      v30 = 32 - v29;
      if (32 - v29 >= v7)
      {
        v30 = v7;
      }

      v31 = v30 == 32;
      v32 = (v28 & (~(-1 << v30) << v29)) >> v29;
    }

    else
    {
      if (v27 != 3)
      {
        __break(0xC471u);
        JUMPOUT(0x2258404A0);
      }

      v28 = v4[2];
      if (v6 >= 0x20)
      {
        v33 = 32;
      }

      else
      {
        v33 = v6;
      }

      v30 = 32 - v33;
      if (32 - v33 >= v7)
      {
        v30 = v7;
      }

      v32 = (((v28 & (~(-1 << v30) << v33)) >> v33 >> (v30 - 1) << 31) >> 31) & ~((~(-1 << v30) << v33) >> v33) | ((v28 & (~(-1 << v30) << v33)) >> v33);
      v31 = v30 == 32;
    }

    if (!v31)
    {
      v28 = v32;
    }

    if (!v30)
    {
      v28 = 0;
    }

    LODWORD(v52[0]) = v28;
    v53 = v27;
    *a3 = v28;
    *(a3 + 16) = v27;
    *(a3 + 24) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v49, v52);
    if (v56 == 255)
    {
      return;
    }

LABEL_84:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v52, v55);
    return;
  }

  if (v56 != 8 || !v52[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v49, v52);
    goto LABEL_65;
  }

  v9 = *v52[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v49, v52);
  if (!v9)
  {
    goto LABEL_65;
  }

  v10 = WTF::fastMalloc((24 * v9 + 8));
  *v10 = v9;
  v11 = v10 + 2;
  v12 = 6;
  bzero(v10 + 2, 24 * ((24 * v9 - 24) / 0x18uLL) + 24);
  v13 = 0;
  LODWORD(v49[0]) = 0;
  v50 = 0;
  v14 = *(a3 + 24);
  v15 = *a3;
  if (v6 >= 0x20)
  {
    v16 = 32;
  }

  else
  {
    v16 = v6;
  }

  if (32 - v16 < v7)
  {
    v7 = 32 - v16;
  }

  v45 = ~(-1 << v7) << v16;
  v46 = v16;
  v44 = ~(v45 >> v16);
  do
  {
    v17 = v56;
    if (v56 != 8)
    {
      if (v50 != 255)
      {
        if (v56 == 255)
        {
LABEL_106:
          *a3 = v15;
          *(a3 + 24) = v14;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v52, v49);
          v50 = -1;
          goto LABEL_112;
        }

        goto LABEL_26;
      }

      if (v56 != 255)
      {
LABEL_26:
        v52[0] = v49;
        v18 = v55;
        goto LABEL_29;
      }

      *a3 = v15;
      *(a3 + 24) = v14;
LABEL_112:
      __break(0xC471u);
LABEL_113:
      JUMPOUT(0x22584043CLL);
    }

    if (v13 >= *v55[0])
    {
      *a3 = v15;
      *(a3 + 24) = v14;
      __break(0xC471u);
      JUMPOUT(0x2258404C8);
    }

    v18 = (v55[0] + v12 * 4 - 16);
    v17 = *(v55[0] + v12 * 4);
    if (v50 == 255)
    {
      if (v17 == 255)
      {
        goto LABEL_30;
      }
    }

    else if (v17 == 255)
    {
      goto LABEL_106;
    }

    v52[0] = v49;
LABEL_29:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v52, v49, v18);
LABEL_30:
    if (v50 == 3)
    {
      v19 = v7;
      if (v7)
      {
        v19 = v49[0];
        if (v7 != 32)
        {
          v20 = (v49[0] & v45) >> v46;
          v21 = v44;
          if ((v20 & (1 << (v7 - 1))) == 0)
          {
            v21 = 0;
          }

          v19 = v21 | v20;
        }
      }

      goto LABEL_40;
    }

    if (v50 != 4)
    {
      *a3 = v15;
      *(a3 + 24) = v14;
      goto LABEL_112;
    }

    v19 = v7;
    if (v7)
    {
      v19 = v49[0];
      if (v7 != 32)
      {
        v19 = (v49[0] & v45) >> v46;
      }
    }

LABEL_40:
    LODWORD(v47[0]) = v19;
    v48 = v50;
    LODWORD(v52[0]) = v19;
    v53 = v50;
    v54 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v51, v47);
    v24 = v54;
    if (!v54)
    {
      if (v13 >= *v10)
      {
        *a3 = v15;
        *(a3 + 24) = v14;
        __break(0xC471u);
        JUMPOUT(0x2258404FCLL);
      }

      if (LOBYTE(v10[v12]) == 255)
      {
        if (v53 == 255)
        {
          goto LABEL_52;
        }
      }

      else if (v53 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v11);
        LOBYTE(v10[v12]) = -1;
        v25 = v54;
        if (v54 == 255)
        {
          goto LABEL_59;
        }

        goto LABEL_53;
      }

      v47[0] = v11;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v53, v47, v11, v52);
LABEL_52:
      v25 = v54;
      if (v54 == 255)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    }

    if (v54 != 1)
    {
      *a3 = v15;
      *(a3 + 24) = v14;
      mpark::throw_bad_variant_access(v22);
    }

    v15 = v52[0];
    if (v52[0])
    {
      atomic_fetch_add_explicit(v52[0], 2u, memory_order_relaxed);
      v14 = 1;
      v25 = v54;
      if (v54 == 255)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v14 = 1;
      v25 = v54;
      if (v54 == 255)
      {
        goto LABEL_59;
      }
    }

LABEL_53:
    if (v25)
    {
      v26 = v52[0];
      v52[0] = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v23);
      }
    }

    else if (v53 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v52);
    }

LABEL_59:
    if (v24)
    {
      *a3 = v15;
      *(a3 + 24) = v14;
      goto LABEL_93;
    }

    ++v13;
    v11 += 24;
    v12 += 6;
  }

  while (v9 != v13);
  v34 = *v10;
  v35 = 24 * v34;
  v36 = WTF::fastMalloc((24 * v34 + 8));
  v37 = v36;
  *v36 = v34;
  if (v34)
  {
    v38 = (v36 + 6);
    v39 = (v10 + 6);
    do
    {
      *(v38 - 16) = 0;
      *v38 = -1;
      v40 = *v39;
      if (v40 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v40, v52, v38 - 2, v39 - 2);
        *v38 = *v39;
      }

      v38 += 3;
      v39 += 3;
      v35 -= 24;
    }

    while (v35);
  }

  v53 = 8;
  v52[0] = 0;
  *a3 = v37;
  *(a3 + 16) = 8;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v52);
LABEL_93:
  if (v50 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v52, v49);
  }

  v41 = *v10;
  if (v41)
  {
    v42 = 24 * v41;
    v43 = v10 + 6;
    do
    {
      v23 = (v43 - 16);
      if (*v43 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v52, v23);
      }

      *v43 = -1;
      v43 += 24;
      v42 -= 24;
    }

    while (v42);
  }

  WTF::fastFree(v10, v23);
  if (v56 != 255)
  {
    goto LABEL_84;
  }
}

void WGSL::constantFaceForward(mpark *a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = **a2;
  if (!v5)
  {
    goto LABEL_100;
  }

  if (v5 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x225840BD8);
  }

  if (v5 <= 2)
  {
LABEL_100:
    __break(0xC471u);
    JUMPOUT(0x225840BB8);
  }

  v6 = a1;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_97;
  }

  v7 = *a1;
  LOBYTE(v43[0]) = 0;
  v44 = -1;
  v8 = *(v4 + 48);
  if (v8 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v8, &v47, v43, v4 + 4);
    v44 = *(v4 + 48);
  }

  LOBYTE(v45[0]) = 0;
  v46 = -1;
  v9 = *(v4 + 72);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, &v47, v45, v4 + 7);
    v46 = *(v4 + 72);
  }

  v10 = WTF::fastMalloc(0x38);
  *v10 = 2;
  *(v10 + 8) = 0;
  *(v10 + 24) = -1;
  if (v44 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v44, &v47, v10 + 1, v43);
    *(v10 + 24) = v44;
  }

  *(v10 + 32) = 0;
  *(v10 + 48) = -1;
  if (v46 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v46, &v47, v10 + 4, v45);
    *(v10 + 48) = v46;
  }

  v40[0] = v10;
  WGSL::constantDot(v7, &v47);
  v12 = *v10;
  if (v12)
  {
    v13 = 24 * v12;
    v14 = v10 + 6;
    do
    {
      v11 = v14 - 16;
      if (*v14 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v35, v11);
      }

      *v14 = -1;
      v14 += 24;
      v13 -= 24;
    }

    while (v13);
  }

  a1 = WTF::fastFree(v10, v11);
  if (v46 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v35, v45);
  }

  v46 = -1;
  if (v44 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v35, v43);
  }

  if (!v50)
  {
    LOBYTE(v35[0]) = 0;
    v17 = -1;
    v36 = -1;
    if (v49 > 5u)
    {
      if (v49 > 8u)
      {
        if (v49 == 9)
        {
          v19 = v48;
          v48 = 0;
          v35[0] = v47;
          v35[1] = v19;
          goto LABEL_47;
        }

        if (v49 != 10)
        {
          LOBYTE(v43[0]) = 0;
LABEL_48:
          v44 = v17;
          WGSL::zeroValue(v45, v7);
          v20 = WTF::fastMalloc(0x38);
          *v20 = 2;
          *(v20 + 8) = 0;
          *(v20 + 24) = -1;
          if (v44 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v44, &v34, v20 + 1, v43);
            *(v20 + 24) = v44;
          }

          *(v20 + 32) = 0;
          *(v20 + 48) = -1;
          if (v46 != 255)
          {
            _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v46, &v34, v20 + 4, v45);
            *(v20 + 48) = v46;
          }

          v38[0] = v20;
          WGSL::constantLt(v38, v40);
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
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v34, v21);
              }

              *v24 = -1;
              v24 += 24;
              v23 -= 24;
            }

            while (v23);
          }

          a1 = WTF::fastFree(v20, v21);
          if (v46 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v34, v45);
          }

          v46 = -1;
          if (v44 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v34, v43);
          }

          if (v42)
          {
            if (v42 == 1)
            {
              v25 = v40[0];
              if (!v40[0])
              {
                *a3 = 0;
                *(a3 + 24) = 1;
                if (v36 == 255)
                {
                  goto LABEL_86;
                }

LABEL_85:
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v35);
                goto LABEL_86;
              }

              atomic_fetch_add_explicit(v40[0], 2u, memory_order_relaxed);
              *a3 = v25;
              *(a3 + 24) = 1;
              if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v25, v15);
                if (v36 == 255)
                {
                  goto LABEL_86;
                }

                goto LABEL_85;
              }

LABEL_84:
              if (v36 == 255)
              {
                goto LABEL_86;
              }

              goto LABEL_85;
            }
          }

          else if (v41 == 6)
          {
            LOBYTE(v43[0]) = v40[0];
            v44 = 6;
            if (LOBYTE(v40[0]) == 1)
            {
              *a3 = 0;
              *(a3 + 16) = -1;
              v26 = *(v4 + 24);
              if (v26 != 255)
              {
                _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v26, v38, a3, v4 + 1);
                *(a3 + 16) = *(v4 + 24);
              }

              *(a3 + 24) = 0;
            }

            else
            {
              LOBYTE(v38[0]) = 0;
              v39 = -1;
              v27 = *(v4 + 24);
              if (v27 != 255)
              {
                _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v27, &v34, v38, v4 + 1);
                v39 = *(v4 + 24);
              }

              v28 = WTF::fastMalloc(0x20);
              *v28 = 1;
              *(v28 + 8) = 0;
              *(v28 + 24) = -1;
              if (v39 != 255)
              {
                _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v39, &v34, v28 + 1, v38);
                *(v28 + 24) = v39;
              }

              v34 = v28;
              WGSL::constantMinus(v6, &v34, a3);
              v30 = *v28;
              if (v30)
              {
                v31 = 24 * v30;
                v32 = v28 + 6;
                do
                {
                  v29 = v32 - 16;
                  if (*v32 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v37, v29);
                  }

                  *v32 = -1;
                  v32 += 24;
                  v31 -= 24;
                }

                while (v31);
              }

              WTF::fastFree(v28, v29);
              if (v39 != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v37, v38);
              }
            }

            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v38, v43);
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v40);
            goto LABEL_84;
          }

LABEL_97:
          mpark::throw_bad_variant_access(a1);
        }
      }

      else if (v49 == 6)
      {
        LOBYTE(v35[0]) = v47;
        goto LABEL_47;
      }

      v18 = v47;
      v47 = 0;
    }

    else
    {
      if (v49 <= 2u)
      {
        if (v49)
        {
          if (v49 == 1)
          {
            LOWORD(v35[0]) = v47;
          }

          else
          {
            v35[0] = v47;
          }
        }

        else
        {
          LODWORD(v35[0]) = v47;
        }

        goto LABEL_47;
      }

      if (v49 == 3 || v49 == 4)
      {
        LODWORD(v35[0]) = v47;
LABEL_47:
        v36 = v49;
        LOBYTE(v43[0]) = 0;
        v44 = -1;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v49, &v34, v43, v35);
        v17 = v36;
        goto LABEL_48;
      }

      v18 = v47;
    }

    v35[0] = v18;
    goto LABEL_47;
  }

  if (v50 != 1)
  {
    goto LABEL_97;
  }

  v16 = v47;
  if (v47)
  {
    atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
  }

  *a3 = v16;
  *(a3 + 24) = 1;
LABEL_86:
  if (v50 != 255)
  {
    if (v50)
    {
      v33 = v47;
      v47 = 0;
      if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v15);
      }
    }

    else if (v49 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, &v47);
    }
  }
}

void WGSL::constantFirstLeadingBit(void *a1@<X1>, uint64_t a2@<X8>)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_93;
  }

  LOBYTE(v48[0]) = 0;
  v49 = -1;
  v4 = *(v3 + 24);
  if (v4 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v4, v45, v48, v3 + 1), v49 = *(v3 + 24), LOBYTE(v45[0]) = 0, v46 = -1, v49 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v49, v42, v45, v48), v46 = v49, v49 == 255))
  {
LABEL_55:
    v23 = *(v3 + 24);
    if (v23 == 4)
    {
      v24 = 31 - __clz(v3[2]);
      LODWORD(v45[0]) = v24;
      v25 = 4;
    }

    else
    {
      if (v23 != 3)
      {
        __break(0xC471u);
        JUMPOUT(0x2258411DCLL);
      }

      v26 = v3[2];
      if ((v26 + 1) >= 2)
      {
        v27 = __clz(~v26);
        v28 = __clz(v26);
        if (v26 >= 0)
        {
          v29 = v28;
        }

        else
        {
          v29 = v27;
        }

        v24 = 31 - v29;
      }

      else
      {
        v24 = -1;
      }

      LODWORD(v45[0]) = v24;
      v25 = 3;
    }

    v46 = v25;
    *a2 = v24;
    *(a2 + 16) = v25;
    *(a2 + 24) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v45);
    if (v49 == 255)
    {
      return;
    }

LABEL_66:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v45, v48);
    return;
  }

  if (v49 != 8 || !v45[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v45);
    goto LABEL_55;
  }

  v5 = *v45[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v45);
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = WTF::fastMalloc((24 * v5 + 8));
  *v6 = v5;
  v7 = v6 + 2;
  v8 = 6;
  bzero(v6 + 2, 24 * ((24 * v5 - 24) / 0x18uLL) + 24);
  v9 = 0;
  LODWORD(v40[0]) = 0;
  v41 = 0;
  v10 = *(a2 + 24);
  v11 = *a2;
  do
  {
    v12 = v49;
    if (v49 != 8)
    {
      if (v41 != 255)
      {
        if (v49 == 255)
        {
LABEL_86:
          *a2 = v11;
          *(a2 + 24) = v10;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v45, v40);
          v41 = -1;
          goto LABEL_92;
        }

        goto LABEL_18;
      }

      if (v49 != 255)
      {
LABEL_18:
        v45[0] = v40;
        v13 = v48;
        goto LABEL_21;
      }

      *a2 = v11;
      *(a2 + 24) = v10;
LABEL_92:
      __break(0xC471u);
LABEL_93:
      JUMPOUT(0x225841198);
    }

    if (v9 >= *v48[0])
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      __break(0xC471u);
      JUMPOUT(0x225841204);
    }

    v13 = (v48[0] + v8 * 4 - 16);
    v12 = *(v48[0] + v8 * 4);
    if (v41 == 255)
    {
      if (v12 == 255)
      {
        goto LABEL_22;
      }
    }

    else if (v12 == 255)
    {
      goto LABEL_86;
    }

    v45[0] = v40;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v12, v45, v40, v13);
LABEL_22:
    if (v41 == 3)
    {
      v14 = __clz(~LODWORD(v40[0]));
      v15 = __clz(v40[0]);
      if (SLODWORD(v40[0]) >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      v17 = 31 - v16;
      if ((LODWORD(v40[0]) + 1) < 2)
      {
        v17 = -1;
      }

      LODWORD(v42[0]) = v17;
      v43 = 3;
      LODWORD(v45[0]) = v17;
      v46 = 3;
      v47 = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v44, v42);
      v20 = v47;
      if (v47)
      {
        goto LABEL_29;
      }

LABEL_35:
      if (v9 >= *v6)
      {
        *a2 = v11;
        *(a2 + 24) = v10;
        __break(0xC471u);
        JUMPOUT(0x225841238);
      }

      if (LOBYTE(v6[v8]) == 255)
      {
        if (v46 == 255)
        {
          goto LABEL_42;
        }
      }

      else if (v46 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v7);
        LOBYTE(v6[v8]) = -1;
        v21 = v47;
        if (v47 == 255)
        {
          goto LABEL_49;
        }

        goto LABEL_43;
      }

      v42[0] = v7;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v46, v42, v7, v45);
LABEL_42:
      v21 = v47;
      if (v47 == 255)
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    }

    if (v41 != 4)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      goto LABEL_92;
    }

    LODWORD(v42[0]) = 31 - __clz(v40[0]);
    v43 = 4;
    LODWORD(v45[0]) = v42[0];
    v46 = 4;
    v47 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v44, v42);
    v20 = v47;
    if (!v47)
    {
      goto LABEL_35;
    }

LABEL_29:
    if (v20 != 1)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      mpark::throw_bad_variant_access(v18);
    }

    v11 = v45[0];
    if (v45[0])
    {
      atomic_fetch_add_explicit(v45[0], 2u, memory_order_relaxed);
      v10 = 1;
      v21 = v47;
      if (v47 == 255)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v10 = 1;
      v21 = v47;
      if (v47 == 255)
      {
        goto LABEL_49;
      }
    }

LABEL_43:
    if (v21)
    {
      v22 = v45[0];
      v45[0] = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v19);
      }
    }

    else if (v46 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v45);
    }

LABEL_49:
    if (v20)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      goto LABEL_75;
    }

    ++v9;
    v7 += 24;
    v8 += 6;
  }

  while (v5 != v9);
  v30 = *v6;
  v31 = 24 * v30;
  v32 = WTF::fastMalloc((24 * v30 + 8));
  v33 = v32;
  *v32 = v30;
  if (v30)
  {
    v34 = (v32 + 6);
    v35 = (v6 + 6);
    do
    {
      *(v34 - 16) = 0;
      *v34 = -1;
      v36 = *v35;
      if (v36 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v36, v45, v34 - 2, v35 - 2);
        *v34 = *v35;
      }

      v34 += 3;
      v35 += 3;
      v31 -= 24;
    }

    while (v31);
  }

  v46 = 8;
  v45[0] = 0;
  *a2 = v33;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v45);
LABEL_75:
  if (v41 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v45, v40);
  }

  v37 = *v6;
  if (v37)
  {
    v38 = 24 * v37;
    v39 = v6 + 6;
    do
    {
      v19 = (v39 - 16);
      if (*v39 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v45, v19);
      }

      *v39 = -1;
      v39 += 24;
      v38 -= 24;
    }

    while (v38);
  }

  WTF::fastFree(v6, v19);
  if (v49 != 255)
  {
    goto LABEL_66;
  }
}

void WGSL::constantFirstTrailingBit(void *a1@<X1>, uint64_t a2@<X8>)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_94;
  }

  LOBYTE(v48[0]) = 0;
  v49 = -1;
  v4 = *(v3 + 24);
  if (v4 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v4, v45, v48, v3 + 1), v49 = *(v3 + 24), LOBYTE(v45[0]) = 0, v46 = -1, v49 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v49, v42, v45, v48), v46 = v49, v49 == 255))
  {
LABEL_56:
    v23 = *(v3 + 24);
    if (v23 == 4)
    {
      v24 = v3[2];
      v25 = __clz(__rbit32(v24));
      if (v24)
      {
        v26 = v25;
      }

      else
      {
        v26 = -1;
      }

      LODWORD(v45[0]) = v26;
      v27 = 4;
    }

    else
    {
      if (v23 != 3)
      {
        __break(0xC471u);
        JUMPOUT(0x225841814);
      }

      v28 = v3[2];
      v29 = __clz(__rbit32(v28));
      if (v28)
      {
        v26 = v29;
      }

      else
      {
        v26 = -1;
      }

      LODWORD(v45[0]) = v26;
      v27 = 3;
    }

    v46 = v27;
    *a2 = v26;
    *(a2 + 16) = v27;
    *(a2 + 24) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v45);
    if (v49 == 255)
    {
      return;
    }

LABEL_67:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v45, v48);
    return;
  }

  if (v49 != 8 || !v45[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v45);
    goto LABEL_56;
  }

  v5 = *v45[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v45);
  if (!v5)
  {
    goto LABEL_56;
  }

  v6 = WTF::fastMalloc((24 * v5 + 8));
  *v6 = v5;
  v7 = v6 + 2;
  v8 = 6;
  bzero(v6 + 2, 24 * ((24 * v5 - 24) / 0x18uLL) + 24);
  v9 = 0;
  LODWORD(v40[0]) = 0;
  v41 = 0;
  v10 = *(a2 + 24);
  v11 = *a2;
  do
  {
    v12 = v49;
    if (v49 != 8)
    {
      if (v41 == 255)
      {
        if (v49 == 255)
        {
          *a2 = v11;
          *(a2 + 24) = v10;
          goto LABEL_93;
        }
      }

      else if (v49 == 255)
      {
LABEL_87:
        *a2 = v11;
        *(a2 + 24) = v10;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v45, v40);
        v41 = -1;
LABEL_93:
        __break(0xC471u);
LABEL_94:
        JUMPOUT(0x2258417D0);
      }

      v45[0] = v40;
      v13 = v48;
      goto LABEL_21;
    }

    if (v9 >= *v48[0])
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      __break(0xC471u);
      JUMPOUT(0x22584183CLL);
    }

    v13 = (v48[0] + v8 * 4 - 16);
    v12 = *(v48[0] + v8 * 4);
    if (v41 == 255)
    {
      if (v12 == 255)
      {
        goto LABEL_22;
      }
    }

    else if (v12 == 255)
    {
      goto LABEL_87;
    }

    v45[0] = v40;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v12, v45, v40, v13);
LABEL_22:
    if (v41 != 3)
    {
      if (v41 == 4)
      {
        v20 = __clz(__rbit32(v40[0]));
        if (LODWORD(v40[0]))
        {
          v21 = v20;
        }

        else
        {
          v21 = -1;
        }

        LODWORD(v42[0]) = v21;
        v43 = 4;
        LODWORD(v45[0]) = v21;
        v46 = 4;
        v47 = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v44, v42);
        v18 = v47;
        if (v47)
        {
          goto LABEL_27;
        }

LABEL_36:
        if (v9 >= *v6)
        {
          *a2 = v11;
          *(a2 + 24) = v10;
          __break(0xC471u);
          JUMPOUT(0x225841870);
        }

        if (LOBYTE(v6[v8]) == 255)
        {
          if (v46 == 255)
          {
            goto LABEL_43;
          }
        }

        else if (v46 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v7);
          LOBYTE(v6[v8]) = -1;
          v19 = v47;
          if (v47 == 255)
          {
            goto LABEL_50;
          }

          goto LABEL_44;
        }

        v42[0] = v7;
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v46, v42, v7, v45);
LABEL_43:
        v19 = v47;
        if (v47 == 255)
        {
          goto LABEL_50;
        }

        goto LABEL_44;
      }

      *a2 = v11;
      *(a2 + 24) = v10;
      goto LABEL_93;
    }

    v14 = __clz(__rbit32(v40[0]));
    if (LODWORD(v40[0]))
    {
      v15 = v14;
    }

    else
    {
      v15 = -1;
    }

    LODWORD(v42[0]) = v15;
    v43 = 3;
    LODWORD(v45[0]) = v15;
    v46 = 3;
    v47 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v44, v42);
    v18 = v47;
    if (!v47)
    {
      goto LABEL_36;
    }

LABEL_27:
    if (v18 != 1)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      mpark::throw_bad_variant_access(v16);
    }

    v11 = v45[0];
    if (v45[0])
    {
      atomic_fetch_add_explicit(v45[0], 2u, memory_order_relaxed);
      v10 = 1;
      v19 = v47;
      if (v47 == 255)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v10 = 1;
      v19 = v47;
      if (v47 == 255)
      {
        goto LABEL_50;
      }
    }

LABEL_44:
    if (v19)
    {
      v22 = v45[0];
      v45[0] = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v17);
      }
    }

    else if (v46 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v45);
    }

LABEL_50:
    if (v18)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      goto LABEL_76;
    }

    ++v9;
    v7 += 24;
    v8 += 6;
  }

  while (v5 != v9);
  v30 = *v6;
  v31 = 24 * v30;
  v32 = WTF::fastMalloc((24 * v30 + 8));
  v33 = v32;
  *v32 = v30;
  if (v30)
  {
    v34 = (v32 + 6);
    v35 = (v6 + 6);
    do
    {
      *(v34 - 16) = 0;
      *v34 = -1;
      v36 = *v35;
      if (v36 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v36, v45, v34 - 2, v35 - 2);
        *v34 = *v35;
      }

      v34 += 3;
      v35 += 3;
      v31 -= 24;
    }

    while (v31);
  }

  v46 = 8;
  v45[0] = 0;
  *a2 = v33;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v42, v45);
LABEL_76:
  if (v41 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v45, v40);
  }

  v37 = *v6;
  if (v37)
  {
    v38 = 24 * v37;
    v39 = v6 + 6;
    do
    {
      v17 = (v39 - 16);
      if (*v39 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v45, v17);
      }

      *v39 = -1;
      v39 += 24;
      v38 -= 24;
    }

    while (v38);
  }

  WTF::fastFree(v6, v17);
  if (v49 != 255)
  {
    goto LABEL_67;
  }
}

void WGSL::constantFloor(void *a1@<X1>, uint64_t a2@<X8>)
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
      v36[0] = COERCE_WTF_STRINGIMPL_(floor(*v4));
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
          JUMPOUT(0x225841E9CLL);
        }

        LODWORD(v36[0]) = floorf(*v4);
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

      LOWORD(v36[0]) = floorl(*v4);
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
        JUMPOUT(0x225841E30);
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
      JUMPOUT(0x225841E7CLL);
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
        LOWORD(v33[0]) = floorl(*v31);
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
        v33[0] = COERCE__BYTE_(floor(*v31));
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
          JUMPOUT(0x225841EC4);
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

    LODWORD(v33[0]) = floorf(*v31);
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

void WGSL::constantFma(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = **a2;
  if (!v5)
  {
    __break(0xC471u);
    JUMPOUT(0x22584241CLL);
  }

  LOBYTE(v32[0]) = 0;
  v33 = -1;
  v8 = *(v4 + 24);
  if (v8 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v8, &v36, v32, v4 + 1);
    v33 = *(v4 + 24);
    v4 = *a2;
    v5 = **a2;
  }

  if (v5 <= 1)
  {
    __break(0xC471u);
LABEL_76:
    JUMPOUT(0x2258423F4);
  }

  LOBYTE(v34[0]) = 0;
  v35 = -1;
  v9 = *(v4 + 48);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, &v36, v34, v4 + 4);
    v35 = *(v4 + 48);
  }

  v10 = WTF::fastMalloc(0x38);
  *v10 = 2;
  *(v10 + 8) = 0;
  *(v10 + 24) = -1;
  if (v33 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v33, &v36, v10 + 1, v32);
    *(v10 + 24) = v33;
  }

  *(v10 + 32) = 0;
  *(v10 + 48) = -1;
  if (v35 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v35, &v36, v10 + 4, v34);
    *(v10 + 48) = v35;
  }

  v29[0] = v10;
  WGSL::constantMultiply(a1, v29, &v36);
  v12 = *v10;
  if (v12)
  {
    v13 = 24 * v12;
    v14 = v10 + 6;
    do
    {
      v11 = v14 - 16;
      if (*v14 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v11);
      }

      *v14 = -1;
      v14 += 24;
      v13 -= 24;
    }

    while (v13);
  }

  v15 = WTF::fastFree(v10, v11);
  if (v35 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v34);
  }

  v35 = -1;
  if (v33 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v28, v32);
  }

  if (v39)
  {
    if (v39 != 1)
    {
      mpark::throw_bad_variant_access(v15);
    }

    v17 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
    }

    *a3 = v17;
    *(a3 + 24) = 1;
    goto LABEL_63;
  }

  LOBYTE(v29[0]) = 0;
  v30 = -1;
  if (v38 > 5u)
  {
    if (v38 > 8u)
    {
      if (v38 == 9)
      {
        v19 = v37;
        v37 = 0;
        v29[0] = v36;
        v29[1] = v19;
        goto LABEL_45;
      }

      if (v38 != 10)
      {
        LOBYTE(v32[0]) = 0;
        v33 = -1;
        v20 = *a2;
        if (*v20 > 2)
        {
          goto LABEL_46;
        }

        goto LABEL_72;
      }
    }

    else if (v38 == 6)
    {
      LOBYTE(v29[0]) = v36;
      goto LABEL_45;
    }

    v18 = v36;
    v36 = 0;
    goto LABEL_44;
  }

  if (v38 > 2u)
  {
    if (v38 == 3 || v38 == 4)
    {
      LODWORD(v29[0]) = v36;
      goto LABEL_45;
    }

    v18 = v36;
LABEL_44:
    v29[0] = v18;
    goto LABEL_45;
  }

  if (v38)
  {
    if (v38 == 1)
    {
      LOWORD(v29[0]) = v36;
    }

    else
    {
      v29[0] = v36;
    }
  }

  else
  {
    LODWORD(v29[0]) = v36;
  }

LABEL_45:
  v30 = v38;
  LOBYTE(v32[0]) = 0;
  v33 = -1;
  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v38, &v31, v32, v29);
  v33 = v30;
  v20 = *a2;
  if (*v20 <= 2)
  {
LABEL_72:
    __break(0xC471u);
    goto LABEL_76;
  }

LABEL_46:
  LOBYTE(v34[0]) = 0;
  v35 = -1;
  v21 = *(v20 + 72);
  if (v21 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v21, &v31, v34, v20 + 7);
    v35 = *(v20 + 72);
  }

  v22 = WTF::fastMalloc(0x38);
  *v22 = 2;
  *(v22 + 8) = 0;
  *(v22 + 24) = -1;
  if (v33 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v33, &v31, v22 + 1, v32);
    *(v22 + 24) = v33;
  }

  *(v22 + 32) = 0;
  *(v22 + 48) = -1;
  if (v35 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v35, &v31, v22 + 4, v34);
    *(v22 + 48) = v35;
  }

  v28 = v22;
  WGSL::constantAdd(a1, &v28, a3);
  v24 = *v22;
  if (v24)
  {
    v25 = 24 * v24;
    v26 = v22 + 6;
    do
    {
      v23 = v26 - 16;
      if (*v26 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v31, v23);
      }

      *v26 = -1;
      v26 += 24;
      v25 -= 24;
    }

    while (v25);
  }

  WTF::fastFree(v22, v23);
  if (v35 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v31, v34);
  }

  v35 = -1;
  if (v33 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v31, v32);
  }

  if (v30 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v32, v29);
  }

LABEL_63:
  if (v39 != 255)
  {
    if (v39)
    {
      v27 = v36;
      v36 = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v16);
      }
    }

    else if (v38 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v32, &v36);
    }
  }
}