void WGSL::constantNotEqual(int **a1@<X1>, char *a2@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x22582DF04);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22582DF24);
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
        v39 = !v36;
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
    JUMPOUT(0x22582DEE4);
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
          JUMPOUT(0x22582DF50);
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
    v24 = !v21;
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
        JUMPOUT(0x22582DF7CLL);
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

void WGSL::constantLt(int **a1@<X1>, char *a2@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x22582E84CLL);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22582E86CLL);
  }

  v5 = (v3 + 2);
  LOBYTE(v50[0]) = 0;
  v51 = -1;
  v6 = *(v3 + 24);
  if (v6 == 255)
  {
    v7 = 255;
  }

  else
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v40, v50, v3 + 1);
    v7 = *(v3 + 24);
    v51 = *(v3 + 24);
  }

  v8 = (v3 + 8);
  LOBYTE(v52[0]) = 0;
  v53 = -1;
  v9 = *(v3 + 48);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, v40, v52, v3 + 4);
    v53 = *(v3 + 48);
    v7 = v51;
  }

  LOBYTE(v40[0]) = 0;
  v41 = -1;
  if (v7 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v47, v40, v50), v41 = v51, v51 == 255))
  {
LABEL_12:
    LOBYTE(v40[0]) = 0;
    v41 = -1;
    v10 = v53;
    if (v53 == 255)
    {
      goto LABEL_97;
    }

    v10 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v53, v47, v40, v52);
    v41 = v53;
    if (v53 != 8)
    {
      if (v53 != 255)
      {
        goto LABEL_96;
      }

      goto LABEL_97;
    }

    goto LABEL_16;
  }

  if (v51 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
    goto LABEL_12;
  }

LABEL_16:
  if (!v40[0])
  {
LABEL_96:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
    goto LABEL_97;
  }

  v11 = *v40[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
  if (!v11)
  {
LABEL_97:
    v33 = *(v3 + 24);
    if (v33 <= 2)
    {
      if (!*(v3 + 24))
      {
        if (!*(v3 + 48))
        {
          v35 = *v5 < *v8;
          goto LABEL_123;
        }

        goto LABEL_142;
      }

      if (v33 == 1)
      {
        if (*(v3 + 48) == 1)
        {
          v35 = *v5 < *v8;
          goto LABEL_123;
        }

        goto LABEL_142;
      }

      if (v33 == 2)
      {
        if (*(v3 + 48) == 2)
        {
          v35 = *v5 < *v8;
          goto LABEL_123;
        }

        goto LABEL_142;
      }
    }

    else if (*(v3 + 24) > 4u)
    {
      if (v33 == 5)
      {
        if (*(v3 + 48) == 5)
        {
          v34 = *v5 < *v8;
LABEL_109:
          v35 = v34;
LABEL_123:
          LOBYTE(v40[0]) = v35;
          v41 = 6;
          *a2 = v35;
          a2[16] = 6;
          a2[24] = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
          if (v53 == 255)
          {
            goto LABEL_125;
          }

          goto LABEL_124;
        }

LABEL_142:
        mpark::throw_bad_variant_access(v10);
      }

      if (v33 == 6)
      {
        if (*(v3 + 48) == 6)
        {
          v35 = *v8 & ~*v5;
          goto LABEL_123;
        }

        goto LABEL_142;
      }
    }

    else
    {
      if (v33 == 3)
      {
        if (*(v3 + 48) == 3)
        {
          v34 = *v5 < *v8;
          goto LABEL_109;
        }

        goto LABEL_142;
      }

      if (v33 == 4)
      {
        if (*(v3 + 48) == 4)
        {
          v35 = *v5 < *v8;
          goto LABEL_123;
        }

        goto LABEL_142;
      }
    }

    __break(0xC471u);
LABEL_149:
    JUMPOUT(0x22582E82CLL);
  }

  v12 = WTF::fastMalloc((24 * v11 + 8));
  *v12 = v11;
  v13 = v12 + 2;
  v14 = 24;
  bzero(v12 + 2, 24 * ((24 * v11 - 24) / 0x18uLL) + 24);
  v15 = 0;
  v41 = 0;
  LODWORD(v42[0]) = 0;
  v43 = 0;
  v16 = *a2;
  v39 = a2[24];
  LODWORD(v40[0]) = 0;
  do
  {
    v17 = v51;
    if (v51 == 8)
    {
      if (v15 >= *v50[0])
      {
        goto LABEL_143;
      }

      v18 = (v50[0] + v14 - 16);
      v17 = *(v50[0] + v14);
      if (v41 == 255)
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

      v47[0] = v40;
    }

    else
    {
      if (v41 == 255)
      {
        if (v51 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v51 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
        v41 = -1;
        goto LABEL_32;
      }

      v47[0] = v40;
      v18 = v50;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v47, v40, v18);
LABEL_32:
    v19 = v53;
    if (v53 == 8)
    {
      if (v15 >= *v52[0])
      {
LABEL_143:
        *a2 = v16;
        a2[24] = v39;
        __break(0xC471u);
        goto LABEL_149;
      }

      v20 = (v52[0] + v14 - 16);
      v19 = *(v52[0] + v14);
      if (v43 == 255)
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

      v47[0] = v42;
    }

    else
    {
      if (v43 == 255)
      {
        if (v53 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v53 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v42);
        v43 = -1;
        goto LABEL_45;
      }

      v47[0] = v42;
      v20 = v52;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v19, v47, v42, v20);
LABEL_45:
    if (v41 <= 2u)
    {
      if (v41)
      {
        if (v41 == 1)
        {
          if (v43 != 1)
          {
            goto LABEL_141;
          }

          v22 = *v40 < *v42;
        }

        else
        {
          if (v41 != 2)
          {
            goto LABEL_146;
          }

          if (v43 != 2)
          {
            goto LABEL_141;
          }

          v22 = *v40 < *v42;
        }
      }

      else
      {
        if (v43)
        {
          goto LABEL_141;
        }

        v22 = *v40 < *v42;
      }
    }

    else if (v41 > 4u)
    {
      if (v41 == 5)
      {
        if (v43 != 5)
        {
          goto LABEL_141;
        }

        v21 = v40[0] < v42[0];
        goto LABEL_57;
      }

      if (v41 != 6)
      {
LABEL_146:
        *a2 = v16;
        a2[24] = v39;
        __break(0xC471u);
        JUMPOUT(0x22582E898);
      }

      if (v43 != 6)
      {
LABEL_141:
        *a2 = v16;
        a2[24] = v39;
        mpark::throw_bad_variant_access(v19);
      }

      v22 = LOBYTE(v42[0]) & ~LOBYTE(v40[0]);
    }

    else
    {
      if (v41 == 3)
      {
        if (v43 != 3)
        {
          goto LABEL_141;
        }

        v21 = SLODWORD(v40[0]) < SLODWORD(v42[0]);
LABEL_57:
        v22 = v21;
        goto LABEL_71;
      }

      if (v41 != 4)
      {
        goto LABEL_146;
      }

      if (v43 != 4)
      {
        goto LABEL_141;
      }

      v22 = LODWORD(v40[0]) < LODWORD(v42[0]);
    }

LABEL_71:
    LOBYTE(v44[0]) = v22;
    v45 = 6;
    LOBYTE(v47[0]) = v22;
    v48 = 6;
    v49 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v44);
    v24 = v49;
    if (v49)
    {
      if (v49 != 1)
      {
        goto LABEL_141;
      }

      v16 = v47[0];
      if (v47[0])
      {
        atomic_fetch_add_explicit(v47[0], 2u, memory_order_relaxed);
      }

      v39 = 1;
    }

    else
    {
      if (v15 >= *v12)
      {
        *a2 = v16;
        a2[24] = v39;
        __break(0xC471u);
        JUMPOUT(0x22582E8C4);
      }

      if (LOBYTE(v12[v14 / 4]) == 255)
      {
        if (v48 == 255)
        {
          goto LABEL_82;
        }
      }

      else if (v48 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v13);
        LOBYTE(v12[v14 / 4]) = -1;
        goto LABEL_82;
      }

      v44[0] = v13;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v48, v44, v13, v47);
    }

LABEL_82:
    if (v49 != 255)
    {
      if (v49)
      {
        v25 = v47[0];
        v47[0] = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v23);
        }
      }

      else if (v48 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
      }
    }

    if (v24)
    {
      *a2 = v16;
      a2[24] = v39;
      if (v43 != 255)
      {
        goto LABEL_129;
      }

      goto LABEL_130;
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
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v32, v47, v30 - 2, v31 - 2);
        *v30 = *v31;
      }

      v30 += 3;
      v31 += 3;
      v27 -= 24;
    }

    while (v27);
  }

  v48 = 8;
  v47[0] = 0;
  *a2 = v29;
  a2[16] = 8;
  a2[24] = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
  if (v43 != 255)
  {
LABEL_129:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v42);
  }

LABEL_130:
  v43 = -1;
  if (v41 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
  }

  v36 = *v12;
  if (v36)
  {
    v37 = 24 * v36;
    v38 = v12 + 6;
    do
    {
      v23 = (v38 - 16);
      if (*v38 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v23);
      }

      *v38 = -1;
      v38 += 24;
      v37 -= 24;
    }

    while (v37);
  }

  WTF::fastFree(v12, v23);
  if (v53 != 255)
  {
LABEL_124:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v52);
  }

LABEL_125:
  v53 = -1;
  if (v51 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v50);
  }
}

void WGSL::constantLtEq(int **a1@<X1>, char *a2@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x22582F19CLL);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22582F1BCLL);
  }

  v5 = (v3 + 2);
  LOBYTE(v50[0]) = 0;
  v51 = -1;
  v6 = *(v3 + 24);
  if (v6 == 255)
  {
    v7 = 255;
  }

  else
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v40, v50, v3 + 1);
    v7 = *(v3 + 24);
    v51 = *(v3 + 24);
  }

  v8 = (v3 + 8);
  LOBYTE(v52[0]) = 0;
  v53 = -1;
  v9 = *(v3 + 48);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, v40, v52, v3 + 4);
    v53 = *(v3 + 48);
    v7 = v51;
  }

  LOBYTE(v40[0]) = 0;
  v41 = -1;
  if (v7 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v47, v40, v50), v41 = v51, v51 == 255))
  {
LABEL_12:
    LOBYTE(v40[0]) = 0;
    v41 = -1;
    v10 = v53;
    if (v53 == 255)
    {
      goto LABEL_97;
    }

    v10 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v53, v47, v40, v52);
    v41 = v53;
    if (v53 != 8)
    {
      if (v53 != 255)
      {
        goto LABEL_96;
      }

      goto LABEL_97;
    }

    goto LABEL_16;
  }

  if (v51 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
    goto LABEL_12;
  }

LABEL_16:
  if (!v40[0])
  {
LABEL_96:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
    goto LABEL_97;
  }

  v11 = *v40[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
  if (!v11)
  {
LABEL_97:
    v33 = *(v3 + 24);
    if (v33 <= 2)
    {
      if (!*(v3 + 24))
      {
        if (!*(v3 + 48))
        {
          v35 = *v5 <= *v8;
          goto LABEL_123;
        }

        goto LABEL_142;
      }

      if (v33 == 1)
      {
        if (*(v3 + 48) == 1)
        {
          v35 = *v5 <= *v8;
          goto LABEL_123;
        }

        goto LABEL_142;
      }

      if (v33 == 2)
      {
        if (*(v3 + 48) == 2)
        {
          v35 = *v5 <= *v8;
          goto LABEL_123;
        }

        goto LABEL_142;
      }
    }

    else if (*(v3 + 24) > 4u)
    {
      if (v33 == 5)
      {
        if (*(v3 + 48) == 5)
        {
          v34 = *v5 <= *v8;
LABEL_109:
          v35 = v34;
LABEL_123:
          LOBYTE(v40[0]) = v35;
          v41 = 6;
          *a2 = v35;
          a2[16] = 6;
          a2[24] = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
          if (v53 == 255)
          {
            goto LABEL_125;
          }

          goto LABEL_124;
        }

LABEL_142:
        mpark::throw_bad_variant_access(v10);
      }

      if (v33 == 6)
      {
        if (*(v3 + 48) == 6)
        {
          v35 = *v8 & 1 | ((*v5 & 1) == 0);
          goto LABEL_123;
        }

        goto LABEL_142;
      }
    }

    else
    {
      if (v33 == 3)
      {
        if (*(v3 + 48) == 3)
        {
          v34 = *v5 <= *v8;
          goto LABEL_109;
        }

        goto LABEL_142;
      }

      if (v33 == 4)
      {
        if (*(v3 + 48) == 4)
        {
          v35 = *v5 <= *v8;
          goto LABEL_123;
        }

        goto LABEL_142;
      }
    }

    __break(0xC471u);
LABEL_149:
    JUMPOUT(0x22582F17CLL);
  }

  v12 = WTF::fastMalloc((24 * v11 + 8));
  *v12 = v11;
  v13 = v12 + 2;
  v14 = 24;
  bzero(v12 + 2, 24 * ((24 * v11 - 24) / 0x18uLL) + 24);
  v15 = 0;
  v41 = 0;
  LODWORD(v42[0]) = 0;
  v43 = 0;
  v16 = *a2;
  v39 = a2[24];
  LODWORD(v40[0]) = 0;
  do
  {
    v17 = v51;
    if (v51 == 8)
    {
      if (v15 >= *v50[0])
      {
        goto LABEL_143;
      }

      v18 = (v50[0] + v14 - 16);
      v17 = *(v50[0] + v14);
      if (v41 == 255)
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

      v47[0] = v40;
    }

    else
    {
      if (v41 == 255)
      {
        if (v51 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v51 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
        v41 = -1;
        goto LABEL_32;
      }

      v47[0] = v40;
      v18 = v50;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v47, v40, v18);
LABEL_32:
    v19 = v53;
    if (v53 == 8)
    {
      if (v15 >= *v52[0])
      {
LABEL_143:
        *a2 = v16;
        a2[24] = v39;
        __break(0xC471u);
        goto LABEL_149;
      }

      v20 = (v52[0] + v14 - 16);
      v19 = *(v52[0] + v14);
      if (v43 == 255)
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

      v47[0] = v42;
    }

    else
    {
      if (v43 == 255)
      {
        if (v53 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v53 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v42);
        v43 = -1;
        goto LABEL_45;
      }

      v47[0] = v42;
      v20 = v52;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v19, v47, v42, v20);
LABEL_45:
    if (v41 <= 2u)
    {
      if (v41)
      {
        if (v41 == 1)
        {
          if (v43 != 1)
          {
            goto LABEL_141;
          }

          v22 = *v40 <= *v42;
        }

        else
        {
          if (v41 != 2)
          {
            goto LABEL_146;
          }

          if (v43 != 2)
          {
            goto LABEL_141;
          }

          v22 = *v40 <= *v42;
        }
      }

      else
      {
        if (v43)
        {
          goto LABEL_141;
        }

        v22 = *v40 <= *v42;
      }
    }

    else if (v41 > 4u)
    {
      if (v41 == 5)
      {
        if (v43 != 5)
        {
          goto LABEL_141;
        }

        v21 = v40[0] <= v42[0];
        goto LABEL_57;
      }

      if (v41 != 6)
      {
LABEL_146:
        *a2 = v16;
        a2[24] = v39;
        __break(0xC471u);
        JUMPOUT(0x22582F1E8);
      }

      if (v43 != 6)
      {
LABEL_141:
        *a2 = v16;
        a2[24] = v39;
        mpark::throw_bad_variant_access(v19);
      }

      v22 = v42[0] & 1 | ((v40[0] & 1) == 0);
    }

    else
    {
      if (v41 == 3)
      {
        if (v43 != 3)
        {
          goto LABEL_141;
        }

        v21 = SLODWORD(v40[0]) <= SLODWORD(v42[0]);
LABEL_57:
        v22 = v21;
        goto LABEL_71;
      }

      if (v41 != 4)
      {
        goto LABEL_146;
      }

      if (v43 != 4)
      {
        goto LABEL_141;
      }

      v22 = LODWORD(v40[0]) <= LODWORD(v42[0]);
    }

LABEL_71:
    LOBYTE(v44[0]) = v22;
    v45 = 6;
    LOBYTE(v47[0]) = v22;
    v48 = 6;
    v49 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v44);
    v24 = v49;
    if (v49)
    {
      if (v49 != 1)
      {
        goto LABEL_141;
      }

      v16 = v47[0];
      if (v47[0])
      {
        atomic_fetch_add_explicit(v47[0], 2u, memory_order_relaxed);
      }

      v39 = 1;
    }

    else
    {
      if (v15 >= *v12)
      {
        *a2 = v16;
        a2[24] = v39;
        __break(0xC471u);
        JUMPOUT(0x22582F214);
      }

      if (LOBYTE(v12[v14 / 4]) == 255)
      {
        if (v48 == 255)
        {
          goto LABEL_82;
        }
      }

      else if (v48 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v13);
        LOBYTE(v12[v14 / 4]) = -1;
        goto LABEL_82;
      }

      v44[0] = v13;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v48, v44, v13, v47);
    }

LABEL_82:
    if (v49 != 255)
    {
      if (v49)
      {
        v25 = v47[0];
        v47[0] = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v23);
        }
      }

      else if (v48 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
      }
    }

    if (v24)
    {
      *a2 = v16;
      a2[24] = v39;
      if (v43 != 255)
      {
        goto LABEL_129;
      }

      goto LABEL_130;
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
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v32, v47, v30 - 2, v31 - 2);
        *v30 = *v31;
      }

      v30 += 3;
      v31 += 3;
      v27 -= 24;
    }

    while (v27);
  }

  v48 = 8;
  v47[0] = 0;
  *a2 = v29;
  a2[16] = 8;
  a2[24] = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
  if (v43 != 255)
  {
LABEL_129:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v42);
  }

LABEL_130:
  v43 = -1;
  if (v41 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
  }

  v36 = *v12;
  if (v36)
  {
    v37 = 24 * v36;
    v38 = v12 + 6;
    do
    {
      v23 = (v38 - 16);
      if (*v38 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v23);
      }

      *v38 = -1;
      v38 += 24;
      v37 -= 24;
    }

    while (v37);
  }

  WTF::fastFree(v12, v23);
  if (v53 != 255)
  {
LABEL_124:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v52);
  }

LABEL_125:
  v53 = -1;
  if (v51 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v50);
  }
}

void WGSL::constantGt(int **a1@<X1>, char *a2@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x22582FACCLL);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22582FAECLL);
  }

  v5 = (v3 + 2);
  LOBYTE(v50[0]) = 0;
  v51 = -1;
  v6 = *(v3 + 24);
  if (v6 == 255)
  {
    v7 = 255;
  }

  else
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v40, v50, v3 + 1);
    v7 = *(v3 + 24);
    v51 = *(v3 + 24);
  }

  v8 = (v3 + 8);
  LOBYTE(v52[0]) = 0;
  v53 = -1;
  v9 = *(v3 + 48);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, v40, v52, v3 + 4);
    v53 = *(v3 + 48);
    v7 = v51;
  }

  LOBYTE(v40[0]) = 0;
  v41 = -1;
  if (v7 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v47, v40, v50), v41 = v51, v51 == 255))
  {
LABEL_12:
    LOBYTE(v40[0]) = 0;
    v41 = -1;
    v10 = v53;
    if (v53 == 255)
    {
      goto LABEL_97;
    }

    v10 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v53, v47, v40, v52);
    v41 = v53;
    if (v53 != 8)
    {
      if (v53 == 255)
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }

    goto LABEL_16;
  }

  if (v51 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
    goto LABEL_12;
  }

LABEL_16:
  if (!v40[0])
  {
LABEL_96:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
LABEL_97:
    v33 = *(v3 + 24);
    if (v33 <= 2)
    {
      if (*(v3 + 24))
      {
        if (v33 == 1)
        {
          if (*(v3 + 48) != 1)
          {
            goto LABEL_142;
          }

          v34 = *v5 <= *v8;
        }

        else
        {
          if (v33 != 2)
          {
LABEL_148:
            __break(0xC471u);
LABEL_149:
            JUMPOUT(0x22582FAACLL);
          }

          if (*(v3 + 48) != 2)
          {
            goto LABEL_142;
          }

          v34 = *v5 <= *v8;
        }
      }

      else
      {
        if (*(v3 + 48))
        {
          goto LABEL_142;
        }

        v34 = *v5 <= *v8;
      }
    }

    else
    {
      if (*(v3 + 24) <= 4u)
      {
        if (v33 == 3)
        {
          if (*(v3 + 48) == 3)
          {
            v34 = *v5 <= *v8;
            goto LABEL_114;
          }

LABEL_142:
          mpark::throw_bad_variant_access(v10);
        }

        if (v33 == 4)
        {
          if (*(v3 + 48) == 4)
          {
            v35 = *v5 > *v8;
            goto LABEL_117;
          }

          goto LABEL_142;
        }

        goto LABEL_148;
      }

      if (v33 != 5)
      {
        if (v33 == 6)
        {
          if (*(v3 + 48) == 6)
          {
            v35 = *v5 & ~*v8;
            goto LABEL_117;
          }

          goto LABEL_142;
        }

        goto LABEL_148;
      }

      if (*(v3 + 48) != 5)
      {
        goto LABEL_142;
      }

      v34 = *v5 <= *v8;
    }

LABEL_114:
    v35 = !v34;
LABEL_117:
    LOBYTE(v40[0]) = v35;
    v41 = 6;
    *a2 = v35;
    a2[16] = 6;
    a2[24] = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
    if (v53 == 255)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

  v11 = *v40[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
  if (!v11)
  {
    goto LABEL_97;
  }

  v12 = WTF::fastMalloc((24 * v11 + 8));
  *v12 = v11;
  v13 = v12 + 2;
  v14 = 24;
  bzero(v12 + 2, 24 * ((24 * v11 - 24) / 0x18uLL) + 24);
  v15 = 0;
  v41 = 0;
  LODWORD(v42[0]) = 0;
  v43 = 0;
  v16 = *a2;
  v39 = a2[24];
  LODWORD(v40[0]) = 0;
  do
  {
    v17 = v51;
    if (v51 == 8)
    {
      if (v15 >= *v50[0])
      {
        goto LABEL_143;
      }

      v18 = (v50[0] + v14 - 16);
      v17 = *(v50[0] + v14);
      if (v41 == 255)
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

      v47[0] = v40;
    }

    else
    {
      if (v41 == 255)
      {
        if (v51 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v51 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
        v41 = -1;
        goto LABEL_32;
      }

      v47[0] = v40;
      v18 = v50;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v47, v40, v18);
LABEL_32:
    v19 = v53;
    if (v53 == 8)
    {
      if (v15 >= *v52[0])
      {
LABEL_143:
        *a2 = v16;
        a2[24] = v39;
        __break(0xC471u);
        goto LABEL_149;
      }

      v20 = (v52[0] + v14 - 16);
      v19 = *(v52[0] + v14);
      if (v43 == 255)
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

      v47[0] = v42;
    }

    else
    {
      if (v43 == 255)
      {
        if (v53 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v53 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v42);
        v43 = -1;
        goto LABEL_45;
      }

      v47[0] = v42;
      v20 = v52;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v19, v47, v42, v20);
LABEL_45:
    if (v41 <= 2u)
    {
      if (v41)
      {
        if (v41 == 1)
        {
          if (v43 != 1)
          {
            goto LABEL_141;
          }

          v21 = *v40 <= *v42;
        }

        else
        {
          if (v41 != 2)
          {
            goto LABEL_146;
          }

          if (v43 != 2)
          {
            goto LABEL_141;
          }

          v21 = *v40 <= *v42;
        }
      }

      else
      {
        if (v43)
        {
          goto LABEL_141;
        }

        v21 = *v40 <= *v42;
      }

      goto LABEL_62;
    }

    if (v41 > 4u)
    {
      if (v41 == 5)
      {
        if (v43 != 5)
        {
          goto LABEL_141;
        }

        v21 = v40[0] <= v42[0];
        goto LABEL_62;
      }

      if (v41 != 6)
      {
LABEL_146:
        *a2 = v16;
        a2[24] = v39;
        __break(0xC471u);
        JUMPOUT(0x22582FB18);
      }

      if (v43 != 6)
      {
LABEL_141:
        *a2 = v16;
        a2[24] = v39;
        mpark::throw_bad_variant_access(v19);
      }

      v22 = LOBYTE(v40[0]) & ~LOBYTE(v42[0]);
    }

    else
    {
      if (v41 == 3)
      {
        if (v43 != 3)
        {
          goto LABEL_141;
        }

        v21 = SLODWORD(v40[0]) <= SLODWORD(v42[0]);
LABEL_62:
        v22 = !v21;
        goto LABEL_65;
      }

      if (v41 != 4)
      {
        goto LABEL_146;
      }

      if (v43 != 4)
      {
        goto LABEL_141;
      }

      v22 = LODWORD(v40[0]) > LODWORD(v42[0]);
    }

LABEL_65:
    LOBYTE(v44[0]) = v22;
    v45 = 6;
    LOBYTE(v47[0]) = v22;
    v48 = 6;
    v49 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v44);
    v24 = v49;
    if (v49)
    {
      if (v49 != 1)
      {
        goto LABEL_141;
      }

      v16 = v47[0];
      if (v47[0])
      {
        atomic_fetch_add_explicit(v47[0], 2u, memory_order_relaxed);
      }

      v39 = 1;
    }

    else
    {
      if (v15 >= *v12)
      {
        *a2 = v16;
        a2[24] = v39;
        __break(0xC471u);
        JUMPOUT(0x22582FB44);
      }

      if (LOBYTE(v12[v14 / 4]) == 255)
      {
        if (v48 == 255)
        {
          goto LABEL_82;
        }
      }

      else if (v48 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v13);
        LOBYTE(v12[v14 / 4]) = -1;
        goto LABEL_82;
      }

      v44[0] = v13;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v48, v44, v13, v47);
    }

LABEL_82:
    if (v49 != 255)
    {
      if (v49)
      {
        v25 = v47[0];
        v47[0] = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v23);
        }
      }

      else if (v48 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
      }
    }

    if (v24)
    {
      *a2 = v16;
      a2[24] = v39;
      if (v43 != 255)
      {
        goto LABEL_129;
      }

      goto LABEL_130;
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
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v32, v47, v30 - 2, v31 - 2);
        *v30 = *v31;
      }

      v30 += 3;
      v31 += 3;
      v27 -= 24;
    }

    while (v27);
  }

  v48 = 8;
  v47[0] = 0;
  *a2 = v29;
  a2[16] = 8;
  a2[24] = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
  if (v43 != 255)
  {
LABEL_129:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v42);
  }

LABEL_130:
  v43 = -1;
  if (v41 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
  }

  v36 = *v12;
  if (v36)
  {
    v37 = 24 * v36;
    v38 = v12 + 6;
    do
    {
      v23 = (v38 - 16);
      if (*v38 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v23);
      }

      *v38 = -1;
      v38 += 24;
      v37 -= 24;
    }

    while (v37);
  }

  WTF::fastFree(v12, v23);
  if (v53 != 255)
  {
LABEL_118:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v52);
  }

LABEL_119:
  v53 = -1;
  if (v51 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v50);
  }
}

void WGSL::constantGtEq(int **a1@<X1>, char *a2@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x225830404);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x225830424);
  }

  v5 = (v3 + 2);
  LOBYTE(v50[0]) = 0;
  v51 = -1;
  v6 = *(v3 + 24);
  if (v6 == 255)
  {
    v7 = 255;
  }

  else
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v40, v50, v3 + 1);
    v7 = *(v3 + 24);
    v51 = *(v3 + 24);
  }

  v8 = (v3 + 8);
  LOBYTE(v52[0]) = 0;
  v53 = -1;
  v9 = *(v3 + 48);
  if (v9 != 255)
  {
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v9, v40, v52, v3 + 4);
    v53 = *(v3 + 48);
    v7 = v51;
  }

  LOBYTE(v40[0]) = 0;
  v41 = -1;
  if (v7 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v47, v40, v50), v41 = v51, v51 == 255))
  {
LABEL_12:
    LOBYTE(v40[0]) = 0;
    v41 = -1;
    v10 = v53;
    if (v53 == 255)
    {
      goto LABEL_97;
    }

    v10 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v53, v47, v40, v52);
    v41 = v53;
    if (v53 != 8)
    {
      if (v53 == 255)
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }

    goto LABEL_16;
  }

  if (v51 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
    goto LABEL_12;
  }

LABEL_16:
  if (!v40[0])
  {
LABEL_96:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
LABEL_97:
    v33 = *(v3 + 24);
    if (v33 <= 2)
    {
      if (*(v3 + 24))
      {
        if (v33 == 1)
        {
          if (*(v3 + 48) != 1)
          {
            goto LABEL_142;
          }

          v34 = *v5 < *v8;
        }

        else
        {
          if (v33 != 2)
          {
LABEL_148:
            __break(0xC471u);
LABEL_149:
            JUMPOUT(0x2258303E4);
          }

          if (*(v3 + 48) != 2)
          {
            goto LABEL_142;
          }

          v34 = *v5 < *v8;
        }
      }

      else
      {
        if (*(v3 + 48))
        {
          goto LABEL_142;
        }

        v34 = *v5 < *v8;
      }
    }

    else
    {
      if (*(v3 + 24) <= 4u)
      {
        if (v33 == 3)
        {
          if (*(v3 + 48) == 3)
          {
            v34 = *v5 < *v8;
            goto LABEL_114;
          }

LABEL_142:
          mpark::throw_bad_variant_access(v10);
        }

        if (v33 == 4)
        {
          if (*(v3 + 48) == 4)
          {
            v35 = *v5 >= *v8;
            goto LABEL_117;
          }

          goto LABEL_142;
        }

        goto LABEL_148;
      }

      if (v33 != 5)
      {
        if (v33 == 6)
        {
          if (*(v3 + 48) == 6)
          {
            v35 = *v5 & 1 | ((*v8 & 1) == 0);
            goto LABEL_117;
          }

          goto LABEL_142;
        }

        goto LABEL_148;
      }

      if (*(v3 + 48) != 5)
      {
        goto LABEL_142;
      }

      v34 = *v5 < *v8;
    }

LABEL_114:
    v35 = !v34;
LABEL_117:
    LOBYTE(v40[0]) = v35;
    v41 = 6;
    *a2 = v35;
    a2[16] = 6;
    a2[24] = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
    if (v53 == 255)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

  v11 = *v40[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
  if (!v11)
  {
    goto LABEL_97;
  }

  v12 = WTF::fastMalloc((24 * v11 + 8));
  *v12 = v11;
  v13 = v12 + 2;
  v14 = 24;
  bzero(v12 + 2, 24 * ((24 * v11 - 24) / 0x18uLL) + 24);
  v15 = 0;
  v41 = 0;
  LODWORD(v42[0]) = 0;
  v43 = 0;
  v16 = *a2;
  v39 = a2[24];
  LODWORD(v40[0]) = 0;
  do
  {
    v17 = v51;
    if (v51 == 8)
    {
      if (v15 >= *v50[0])
      {
        goto LABEL_143;
      }

      v18 = (v50[0] + v14 - 16);
      v17 = *(v50[0] + v14);
      if (v41 == 255)
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

      v47[0] = v40;
    }

    else
    {
      if (v41 == 255)
      {
        if (v51 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v51 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
        v41 = -1;
        goto LABEL_32;
      }

      v47[0] = v40;
      v18 = v50;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v47, v40, v18);
LABEL_32:
    v19 = v53;
    if (v53 == 8)
    {
      if (v15 >= *v52[0])
      {
LABEL_143:
        *a2 = v16;
        a2[24] = v39;
        __break(0xC471u);
        goto LABEL_149;
      }

      v20 = (v52[0] + v14 - 16);
      v19 = *(v52[0] + v14);
      if (v43 == 255)
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

      v47[0] = v42;
    }

    else
    {
      if (v43 == 255)
      {
        if (v53 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v53 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v42);
        v43 = -1;
        goto LABEL_45;
      }

      v47[0] = v42;
      v20 = v52;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v19, v47, v42, v20);
LABEL_45:
    if (v41 <= 2u)
    {
      if (v41)
      {
        if (v41 == 1)
        {
          if (v43 != 1)
          {
            goto LABEL_141;
          }

          v21 = *v40 < *v42;
        }

        else
        {
          if (v41 != 2)
          {
            goto LABEL_146;
          }

          if (v43 != 2)
          {
            goto LABEL_141;
          }

          v21 = *v40 < *v42;
        }
      }

      else
      {
        if (v43)
        {
          goto LABEL_141;
        }

        v21 = *v40 < *v42;
      }

      goto LABEL_62;
    }

    if (v41 > 4u)
    {
      if (v41 == 5)
      {
        if (v43 != 5)
        {
          goto LABEL_141;
        }

        v21 = v40[0] < v42[0];
        goto LABEL_62;
      }

      if (v41 != 6)
      {
LABEL_146:
        *a2 = v16;
        a2[24] = v39;
        __break(0xC471u);
        JUMPOUT(0x225830450);
      }

      if (v43 != 6)
      {
LABEL_141:
        *a2 = v16;
        a2[24] = v39;
        mpark::throw_bad_variant_access(v19);
      }

      v22 = v40[0] & 1 | ((v42[0] & 1) == 0);
    }

    else
    {
      if (v41 == 3)
      {
        if (v43 != 3)
        {
          goto LABEL_141;
        }

        v21 = SLODWORD(v40[0]) < SLODWORD(v42[0]);
LABEL_62:
        v22 = !v21;
        goto LABEL_65;
      }

      if (v41 != 4)
      {
        goto LABEL_146;
      }

      if (v43 != 4)
      {
        goto LABEL_141;
      }

      v22 = LODWORD(v40[0]) >= LODWORD(v42[0]);
    }

LABEL_65:
    LOBYTE(v44[0]) = v22;
    v45 = 6;
    LOBYTE(v47[0]) = v22;
    v48 = 6;
    v49 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v46, v44);
    v24 = v49;
    if (v49)
    {
      if (v49 != 1)
      {
        goto LABEL_141;
      }

      v16 = v47[0];
      if (v47[0])
      {
        atomic_fetch_add_explicit(v47[0], 2u, memory_order_relaxed);
      }

      v39 = 1;
    }

    else
    {
      if (v15 >= *v12)
      {
        *a2 = v16;
        a2[24] = v39;
        __break(0xC471u);
        JUMPOUT(0x22583047CLL);
      }

      if (LOBYTE(v12[v14 / 4]) == 255)
      {
        if (v48 == 255)
        {
          goto LABEL_82;
        }
      }

      else if (v48 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v13);
        LOBYTE(v12[v14 / 4]) = -1;
        goto LABEL_82;
      }

      v44[0] = v13;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v48, v44, v13, v47);
    }

LABEL_82:
    if (v49 != 255)
    {
      if (v49)
      {
        v25 = v47[0];
        v47[0] = 0;
        if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v25, v23);
        }
      }

      else if (v48 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
      }
    }

    if (v24)
    {
      *a2 = v16;
      a2[24] = v39;
      if (v43 != 255)
      {
        goto LABEL_129;
      }

      goto LABEL_130;
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
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v32, v47, v30 - 2, v31 - 2);
        *v30 = *v31;
      }

      v30 += 3;
      v31 += 3;
      v27 -= 24;
    }

    while (v27);
  }

  v48 = 8;
  v47[0] = 0;
  *a2 = v29;
  a2[16] = 8;
  a2[24] = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v44, v47);
  if (v43 != 255)
  {
LABEL_129:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v42);
  }

LABEL_130:
  v43 = -1;
  if (v41 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v47, v40);
  }

  v36 = *v12;
  if (v36)
  {
    v37 = 24 * v36;
    v38 = v12 + 6;
    do
    {
      v23 = (v38 - 16);
      if (*v38 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v23);
      }

      *v38 = -1;
      v38 += 24;
      v37 -= 24;
    }

    while (v37);
  }

  WTF::fastFree(v12, v23);
  if (v53 != 255)
  {
LABEL_118:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v52);
  }

LABEL_119:
  v53 = -1;
  if (v51 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v40, v50);
  }
}

void WGSL::constantBitwiseNot(void *a1@<X1>, uint64_t a2@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!**a1)
  {
    __break(0xC471u);
    goto LABEL_89;
  }

  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v4 = *(v3 + 24);
  if (v4 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v4, v39, v42, v3 + 1), v43 = *(v3 + 24), LOBYTE(v39[0]) = 0, v40 = -1, v43 == 255) || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v43, v36, v39, v42), v40 = v43, v43 == 255))
  {
LABEL_54:
    v21 = *(v3 + 24);
    if (v21 == 5)
    {
      v39[0] = ~*(v3 + 1);
      v23 = 5;
      v40 = 5;
      *a2 = v39[0];
    }

    else
    {
      if (v21 == 4)
      {
        v22 = ~v3[2];
        LODWORD(v39[0]) = v22;
        v23 = 4;
      }

      else
      {
        if (v21 != 3)
        {
          __break(0xC471u);
          JUMPOUT(0x225830A68);
        }

        v22 = ~v3[2];
        LODWORD(v39[0]) = v22;
        v23 = 3;
      }

      v40 = v23;
      *a2 = v22;
    }

    *(a2 + 16) = v23;
    *(a2 + 24) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v36, v39);
    if (v43 == 255)
    {
      return;
    }

LABEL_62:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v42);
    return;
  }

  if (v43 != 8 || !v39[0])
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v36, v39);
    goto LABEL_54;
  }

  v5 = *v39[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v36, v39);
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
  LODWORD(v34[0]) = 0;
  v35 = 0;
  v10 = *(a2 + 24);
  v11 = *a2;
  do
  {
    v12 = v43;
    if (v43 != 8)
    {
      if (v35 != 255)
      {
        if (v43 == 255)
        {
LABEL_82:
          *a2 = v11;
          *(a2 + 24) = v10;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v34);
          v35 = -1;
          goto LABEL_88;
        }

        goto LABEL_18;
      }

      if (v43 != 255)
      {
LABEL_18:
        v39[0] = v34;
        v13 = v42;
        goto LABEL_21;
      }

      *a2 = v11;
      *(a2 + 24) = v10;
LABEL_88:
      __break(0xC471u);
LABEL_89:
      JUMPOUT(0x225830A00);
    }

    if (v9 >= *v42[0])
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      __break(0xC471u);
      JUMPOUT(0x225830A48);
    }

    v13 = (v42[0] + v8 * 4 - 16);
    v12 = *(v42[0] + v8 * 4);
    if (v35 == 255)
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

    v39[0] = v34;
LABEL_21:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v12, v39, v34, v13);
LABEL_22:
    if (v35 == 3)
    {
      v14 = ~LODWORD(v34[0]);
      LODWORD(v36[0]) = ~LODWORD(v34[0]);
      v15 = 3;
      goto LABEL_26;
    }

    if (v35 == 4)
    {
      v14 = ~LODWORD(v34[0]);
      LODWORD(v36[0]) = ~LODWORD(v34[0]);
      v15 = 4;
LABEL_26:
      v37 = v15;
      LODWORD(v39[0]) = v14;
      goto LABEL_29;
    }

    if (v35 != 5)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      goto LABEL_88;
    }

    v36[0] = ~v34[0];
    v15 = 5;
    v37 = 5;
    v39[0] = ~v34[0];
LABEL_29:
    v40 = v15;
    v41 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, v36);
    v18 = v41;
    if (!v41)
    {
      if (v9 >= *v6)
      {
        *a2 = v11;
        *(a2 + 24) = v10;
        __break(0xC471u);
        JUMPOUT(0x225830A90);
      }

      if (LOBYTE(v6[v8]) == 255)
      {
        if (v40 == 255)
        {
          goto LABEL_41;
        }
      }

      else if (v40 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v36, v7);
        LOBYTE(v6[v8]) = -1;
        v19 = v41;
        if (v41 == 255)
        {
          goto LABEL_48;
        }

        goto LABEL_42;
      }

      v36[0] = v7;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v40, v36, v7, v39);
LABEL_41:
      v19 = v41;
      if (v41 == 255)
      {
        goto LABEL_48;
      }

      goto LABEL_42;
    }

    if (v41 != 1)
    {
      *a2 = v11;
      *(a2 + 24) = v10;
      mpark::throw_bad_variant_access(v16);
    }

    v11 = v39[0];
    if (v39[0])
    {
      atomic_fetch_add_explicit(v39[0], 2u, memory_order_relaxed);
      v10 = 1;
      v19 = v41;
      if (v41 == 255)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v10 = 1;
      v19 = v41;
      if (v41 == 255)
      {
        goto LABEL_48;
      }
    }

LABEL_42:
    if (v19)
    {
      v20 = v39[0];
      v39[0] = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v17);
      }
    }

    else if (v40 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v36, v39);
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
  v24 = *v6;
  v25 = 24 * v24;
  v26 = WTF::fastMalloc((24 * v24 + 8));
  v27 = v26;
  *v26 = v24;
  if (v24)
  {
    v28 = (v26 + 6);
    v29 = (v6 + 6);
    do
    {
      *(v28 - 16) = 0;
      *v28 = -1;
      v30 = *v29;
      if (v30 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v30, v39, v28 - 2, v29 - 2);
        *v28 = *v29;
      }

      v28 += 3;
      v29 += 3;
      v25 -= 24;
    }

    while (v25);
  }

  v40 = 8;
  v39[0] = 0;
  *a2 = v27;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v36, v39);
LABEL_71:
  if (v35 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v34);
  }

  v31 = *v6;
  if (v31)
  {
    v32 = 24 * v31;
    v33 = v6 + 6;
    do
    {
      v17 = (v33 - 16);
      if (*v33 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v17);
      }

      *v33 = -1;
      v33 += 24;
      v32 -= 24;
    }

    while (v32);
  }

  WTF::fastFree(v6, v17);
  if (v43 != 255)
  {
    goto LABEL_62;
  }
}

void WGSL::constantBitwiseXor(int **a1@<X1>, uint64_t a2@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x22583127CLL);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x22583129CLL);
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

  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v39, v49, v3 + 1);
  v6 = *(v3 + 24);
  v50 = *(v3 + 24);
  LOBYTE(v51[0]) = 0;
  v52 = -1;
  v7 = *(v3 + 48);
  if (v7 != 255)
  {
LABEL_5:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v39, v51, v3 + 4);
    v52 = *(v3 + 48);
    v6 = v50;
  }

LABEL_6:
  LOBYTE(v39[0]) = 0;
  v40 = -1;
  if (v6 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v46, v39, v49), v40 = v50, v50 == 255))
  {
LABEL_10:
    LOBYTE(v39[0]) = 0;
    v40 = -1;
    v8 = v52;
    if (v52 == 255)
    {
      goto LABEL_80;
    }

    v8 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v52, v46, v39, v51);
    v40 = v52;
    if (v52 != 8)
    {
      if (v52 != 255)
      {
        goto LABEL_79;
      }

      goto LABEL_80;
    }

    goto LABEL_16;
  }

  if (v50 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v39);
    goto LABEL_10;
  }

LABEL_16:
  if (!v39[0])
  {
LABEL_79:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v39);
    goto LABEL_80;
  }

  v9 = *v39[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v39);
  if (!v9)
  {
LABEL_80:
    v26 = *(v3 + 24);
    switch(v26)
    {
      case 5:
        if (*(v3 + 48) == 5)
        {
          v39[0] = *(v3 + 4) ^ *(v3 + 1);
          v28 = 5;
          v40 = 5;
          *a2 = v39[0];
          goto LABEL_90;
        }

        goto LABEL_114;
      case 4:
        if (*(v3 + 48) == 4)
        {
          v27 = v3[8] ^ v3[2];
          LODWORD(v39[0]) = v27;
          v28 = 4;
LABEL_89:
          v40 = v28;
          *a2 = v27;
LABEL_90:
          *(a2 + 16) = v28;
          *(a2 + 24) = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v39);
          if (v52 == 255)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        }

        goto LABEL_114;
      case 3:
        if (*(v3 + 48) == 3)
        {
          v27 = v3[8] ^ v3[2];
          LODWORD(v39[0]) = v27;
          v28 = 3;
          goto LABEL_89;
        }

LABEL_114:
        mpark::throw_bad_variant_access(v8);
    }

    __break(0xC471u);
LABEL_121:
    JUMPOUT(0x22583125CLL);
  }

  v10 = WTF::fastMalloc((24 * v9 + 8));
  *v10 = v9;
  v11 = v10 + 2;
  v12 = 24;
  bzero(v10 + 2, 24 * ((24 * v9 - 24) / 0x18uLL) + 24);
  v13 = 0;
  LODWORD(v39[0]) = 0;
  v40 = 0;
  LODWORD(v41[0]) = 0;
  v42 = 0;
  v14 = *a2;
  v15 = *(a2 + 24);
  do
  {
    v16 = v50;
    if (v50 == 8)
    {
      if (v13 >= *v49[0])
      {
        goto LABEL_115;
      }

      v17 = (v49[0] + v12 - 16);
      v16 = *(v49[0] + v12);
      if (v40 == 255)
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

      v46[0] = v39;
    }

    else
    {
      if (v40 == 255)
      {
        if (v50 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v50 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v39);
        v40 = -1;
        goto LABEL_32;
      }

      v46[0] = v39;
      v17 = v49;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v16, v46, v39, v17);
LABEL_32:
    v18 = v52;
    if (v52 == 8)
    {
      if (v13 >= *v51[0])
      {
LABEL_115:
        *a2 = v14;
        *(a2 + 24) = v15;
        __break(0xC471u);
        goto LABEL_121;
      }

      v19 = (v51[0] + v12 - 16);
      v18 = *(v51[0] + v12);
      if (v42 == 255)
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

      v46[0] = v41;
    }

    else
    {
      if (v42 == 255)
      {
        if (v52 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v52 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
        v42 = -1;
        goto LABEL_45;
      }

      v46[0] = v41;
      v19 = v51;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v18, v46, v41, v19);
LABEL_45:
    if (v40 == 3)
    {
      if (v42 != 3)
      {
        goto LABEL_113;
      }

      v20 = LODWORD(v41[0]) ^ LODWORD(v39[0]);
      LODWORD(v43[0]) = LODWORD(v41[0]) ^ LODWORD(v39[0]);
      v21 = 3;
      goto LABEL_51;
    }

    if (v40 == 4)
    {
      if (v42 != 4)
      {
        goto LABEL_113;
      }

      v20 = LODWORD(v41[0]) ^ LODWORD(v39[0]);
      LODWORD(v43[0]) = LODWORD(v41[0]) ^ LODWORD(v39[0]);
      v21 = 4;
LABEL_51:
      v44 = v21;
      LODWORD(v46[0]) = v20;
      goto LABEL_55;
    }

    if (v40 != 5)
    {
      *a2 = v14;
      *(a2 + 24) = v15;
      __break(0xC471u);
      JUMPOUT(0x2258312ECLL);
    }

    if (v42 != 5)
    {
LABEL_113:
      *a2 = v14;
      *(a2 + 24) = v15;
      mpark::throw_bad_variant_access(v18);
    }

    v43[0] = (v41[0] ^ v39[0]);
    v21 = 5;
    v44 = 5;
    v46[0] = (v41[0] ^ v39[0]);
LABEL_55:
    v47 = v21;
    v48 = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v45, v43);
    v23 = v48;
    if (!v48)
    {
      if (v13 >= *v10)
      {
        *a2 = v14;
        *(a2 + 24) = v15;
        __break(0xC471u);
        JUMPOUT(0x2258312C4);
      }

      if (LOBYTE(v10[v12 / 4]) == 255)
      {
        if (v47 == 255)
        {
          goto LABEL_67;
        }
      }

      else if (v47 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v11);
        LOBYTE(v10[v12 / 4]) = -1;
        v24 = v48;
        if (v48 == 255)
        {
          goto LABEL_74;
        }

        goto LABEL_68;
      }

      v43[0] = v11;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v47, v43, v11, v46);
LABEL_67:
      v24 = v48;
      if (v48 == 255)
      {
        goto LABEL_74;
      }

      goto LABEL_68;
    }

    if (v48 != 1)
    {
      goto LABEL_113;
    }

    v14 = v46[0];
    if (v46[0])
    {
      atomic_fetch_add_explicit(v46[0], 2u, memory_order_relaxed);
      v15 = 1;
      v24 = v48;
      if (v48 == 255)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v15 = 1;
      v24 = v48;
      if (v48 == 255)
      {
        goto LABEL_74;
      }
    }

LABEL_68:
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
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v46);
    }

LABEL_74:
    if (v23)
    {
      *a2 = v14;
      *(a2 + 24) = v15;
      if (v42 == 255)
      {
        goto LABEL_97;
      }

      goto LABEL_96;
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
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v43, v46);
  if (v42 != 255)
  {
LABEL_96:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v41);
  }

LABEL_97:
  v42 = -1;
  if (v40 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v46, v39);
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
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v22);
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
LABEL_91:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v51);
  }

LABEL_92:
  v52 = -1;
  if (v50 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v49);
  }
}

void WGSL::constantBitwiseShiftLeft(int **a1@<X1>, mpark *a2@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x225831994);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x2258319B4);
  }

  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255)
  {
    v6 = 255;
    LOBYTE(v44[0]) = 0;
    v45 = -1;
    v7 = *(v3 + 48);
    if (v7 == 255)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v34, v42, v3 + 1);
  v6 = *(v3 + 24);
  v43 = *(v3 + 24);
  LOBYTE(v44[0]) = 0;
  v45 = -1;
  v7 = *(v3 + 48);
  if (v7 != 255)
  {
LABEL_5:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v34, v44, v3 + 4);
    v45 = *(v3 + 48);
    v6 = v43;
  }

LABEL_6:
  LOBYTE(v34[0]) = 0;
  v35 = -1;
  if (v6 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v39, v34, v42), v35 = v43, v43 == 255))
  {
LABEL_10:
    LOBYTE(v34[0]) = 0;
    v35 = -1;
    if (v45 == 255)
    {
      goto LABEL_70;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v45, v39, v34, v44);
    v35 = v45;
    if (v45 != 8)
    {
      if (v45 == 255)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    goto LABEL_16;
  }

  if (v43 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v34);
    goto LABEL_10;
  }

LABEL_16:
  if (!v34[0])
  {
LABEL_69:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v34);
LABEL_70:
    WGSL::constantBitwiseShiftLeft(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()<WGSL::ConstantValue,WGSL::ConstantValue>(a2, v3 + 2, v3[8], *(v3 + 48));
    if (v45 == 255)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  v8 = *v34[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v34);
  if (!v8)
  {
    goto LABEL_70;
  }

  v9 = WTF::fastMalloc((24 * v8 + 8));
  *v9 = v8;
  v10 = v9 + 2;
  v11 = 24;
  bzero(v9 + 2, 24 * ((24 * v8 - 24) / 0x18uLL) + 24);
  v12 = 0;
  LODWORD(v34[0]) = 0;
  v35 = 0;
  LODWORD(v36[0]) = 0;
  v37 = 0;
  v13 = *a2;
  v14 = *(a2 + 24);
  do
  {
    v15 = v43;
    if (v43 == 8)
    {
      if (v12 >= *v42[0])
      {
        goto LABEL_97;
      }

      v16 = (v42[0] + v11 - 16);
      v15 = *(v42[0] + v11);
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

      v39[0] = v34;
    }

    else
    {
      if (v35 == 255)
      {
        if (v43 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v43 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v34);
        v35 = -1;
        goto LABEL_32;
      }

      v39[0] = v34;
      v16 = v42;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v15, v39, v34, v16);
LABEL_32:
    v17 = v45;
    if (v45 == 8)
    {
      if (v12 >= *v44[0])
      {
        goto LABEL_97;
      }

      v18 = (v44[0] + v11 - 16);
      v17 = *(v44[0] + v11);
      if (v37 == 255)
      {
        if (v17 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v17 == 255)
      {
        goto LABEL_39;
      }

      v39[0] = v36;
    }

    else
    {
      if (v37 == 255)
      {
        if (v45 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v45 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v36);
        v37 = -1;
        goto LABEL_45;
      }

      v39[0] = v36;
      v18 = v44;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v39, v36, v18);
LABEL_45:
    WGSL::constantBitwiseShiftLeft(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()<WGSL::ConstantValue,WGSL::ConstantValue>(v39, v34, v36[0], v37);
    v21 = v41;
    if (!v41)
    {
      if (v12 >= *v9)
      {
LABEL_97:
        *a2 = v13;
        *(a2 + 24) = v14;
        __break(0xC471u);
        JUMPOUT(0x225831974);
      }

      if (LOBYTE(v9[v11 / 4]) == 255)
      {
        if (v40 == 255)
        {
          goto LABEL_57;
        }
      }

      else if (v40 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, v10);
        LOBYTE(v9[v11 / 4]) = -1;
        v22 = v41;
        if (v41 == 255)
        {
          goto LABEL_64;
        }

        goto LABEL_58;
      }

      v38 = v10;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v40, &v38, v10, v39);
LABEL_57:
      v22 = v41;
      if (v41 == 255)
      {
        goto LABEL_64;
      }

      goto LABEL_58;
    }

    if (v41 != 1)
    {
      *a2 = v13;
      *(a2 + 24) = v14;
      mpark::throw_bad_variant_access(v19);
    }

    v13 = v39[0];
    if (v39[0])
    {
      atomic_fetch_add_explicit(v39[0], 2u, memory_order_relaxed);
      v14 = 1;
      v22 = v41;
      if (v41 == 255)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v14 = 1;
      v22 = v41;
      if (v41 == 255)
      {
        goto LABEL_64;
      }
    }

LABEL_58:
    if (v22)
    {
      v23 = v39[0];
      v39[0] = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v20);
      }
    }

    else if (v40 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, v39);
    }

LABEL_64:
    if (v21)
    {
      *a2 = v13;
      *(a2 + 24) = v14;
      if (v37 == 255)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    ++v12;
    v10 += 24;
    v11 += 24;
  }

  while (v8 != v12);
  v27 = *v9;
  v28 = 24 * v27;
  v29 = WTF::fastMalloc((24 * v27 + 8));
  v30 = v29;
  *v29 = v27;
  if (v27)
  {
    v31 = (v29 + 6);
    v32 = (v9 + 6);
    do
    {
      *(v31 - 16) = 0;
      *v31 = -1;
      v33 = *v32;
      if (v33 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v33, v39, v31 - 2, v32 - 2);
        *v31 = *v32;
      }

      v31 += 3;
      v32 += 3;
      v28 -= 24;
    }

    while (v28);
  }

  v40 = 8;
  v39[0] = 0;
  *a2 = v30;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, v39);
  if (v37 != 255)
  {
LABEL_76:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v36);
  }

LABEL_77:
  v37 = -1;
  if (v35 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v34);
  }

  v24 = *v9;
  if (v24)
  {
    v25 = 24 * v24;
    v26 = v9 + 6;
    do
    {
      v20 = (v26 - 16);
      if (*v26 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v20);
      }

      *v26 = -1;
      v26 += 24;
      v25 -= 24;
    }

    while (v25);
  }

  WTF::fastFree(v9, v20);
  if (v45 != 255)
  {
LABEL_71:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v44);
  }

LABEL_72:
  v45 = -1;
  if (v43 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v42);
  }
}

void WGSL::constantBitwiseShiftRight(int **a1@<X1>, mpark *a2@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if (!v4)
  {
    __break(0xC471u);
    JUMPOUT(0x225832064);
  }

  if (v4 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x225832084);
  }

  LOBYTE(v42[0]) = 0;
  v43 = -1;
  v5 = *(v3 + 24);
  if (v5 == 255)
  {
    v6 = 255;
    LOBYTE(v44[0]) = 0;
    v45 = -1;
    v7 = *(v3 + 48);
    if (v7 == 255)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, v34, v42, v3 + 1);
  v6 = *(v3 + 24);
  v43 = *(v3 + 24);
  LOBYTE(v44[0]) = 0;
  v45 = -1;
  v7 = *(v3 + 48);
  if (v7 != 255)
  {
LABEL_5:
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v7, v34, v44, v3 + 4);
    v45 = *(v3 + 48);
    v6 = v43;
  }

LABEL_6:
  LOBYTE(v34[0]) = 0;
  v35 = -1;
  if (v6 == 255 || (_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v6, v39, v34, v42), v35 = v43, v43 == 255))
  {
LABEL_10:
    LOBYTE(v34[0]) = 0;
    v35 = -1;
    if (v45 == 255)
    {
      goto LABEL_70;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v45, v39, v34, v44);
    v35 = v45;
    if (v45 != 8)
    {
      if (v45 == 255)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    goto LABEL_16;
  }

  if (v43 != 8)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v34);
    goto LABEL_10;
  }

LABEL_16:
  if (!v34[0])
  {
LABEL_69:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v34);
LABEL_70:
    WGSL::constantBitwiseShiftRight(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()<WGSL::ConstantValue,WGSL::ConstantValue>(a2, (v3 + 2), v3[8], *(v3 + 48));
    if (v45 == 255)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  v8 = *v34[0];
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v34);
  if (!v8)
  {
    goto LABEL_70;
  }

  v9 = WTF::fastMalloc((24 * v8 + 8));
  *v9 = v8;
  v10 = v9 + 2;
  v11 = 24;
  bzero(v9 + 2, 24 * ((24 * v8 - 24) / 0x18uLL) + 24);
  v12 = 0;
  LODWORD(v34[0]) = 0;
  v35 = 0;
  LODWORD(v36[0]) = 0;
  v37 = 0;
  v13 = *a2;
  v14 = *(a2 + 24);
  do
  {
    v15 = v43;
    if (v43 == 8)
    {
      if (v12 >= *v42[0])
      {
        goto LABEL_97;
      }

      v16 = (v42[0] + v11 - 16);
      v15 = *(v42[0] + v11);
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

      v39[0] = v34;
    }

    else
    {
      if (v35 == 255)
      {
        if (v43 == 255)
        {
          goto LABEL_32;
        }
      }

      else if (v43 == 255)
      {
LABEL_26:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v34);
        v35 = -1;
        goto LABEL_32;
      }

      v39[0] = v34;
      v16 = v42;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v15, v39, v34, v16);
LABEL_32:
    v17 = v45;
    if (v45 == 8)
    {
      if (v12 >= *v44[0])
      {
        goto LABEL_97;
      }

      v18 = (v44[0] + v11 - 16);
      v17 = *(v44[0] + v11);
      if (v37 == 255)
      {
        if (v17 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v17 == 255)
      {
        goto LABEL_39;
      }

      v39[0] = v36;
    }

    else
    {
      if (v37 == 255)
      {
        if (v45 == 255)
        {
          goto LABEL_45;
        }
      }

      else if (v45 == 255)
      {
LABEL_39:
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v36);
        v37 = -1;
        goto LABEL_45;
      }

      v39[0] = v36;
      v18 = v44;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(v17, v39, v36, v18);
LABEL_45:
    WGSL::constantBitwiseShiftRight(WGSL::Type const*,WTF::FixedVector<WGSL::ConstantValue,WTF::FastMalloc> const&)::$_0::operator()<WGSL::ConstantValue,WGSL::ConstantValue>(v39, v34, v36[0], v37);
    v21 = v41;
    if (!v41)
    {
      if (v12 >= *v9)
      {
LABEL_97:
        *a2 = v13;
        *(a2 + 24) = v14;
        __break(0xC471u);
        JUMPOUT(0x225832044);
      }

      if (LOBYTE(v9[v11 / 4]) == 255)
      {
        if (v40 == 255)
        {
          goto LABEL_57;
        }
      }

      else if (v40 == 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, v10);
        LOBYTE(v9[v11 / 4]) = -1;
        v22 = v41;
        if (v41 == 255)
        {
          goto LABEL_64;
        }

        goto LABEL_58;
      }

      v38 = v10;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignINS0_15move_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSH_OT0_E_JRSC_SG_EEEDcmSI_DpOT0_(v40, &v38, v10, v39);
LABEL_57:
      v22 = v41;
      if (v41 == 255)
      {
        goto LABEL_64;
      }

      goto LABEL_58;
    }

    if (v41 != 1)
    {
      *a2 = v13;
      *(a2 + 24) = v14;
      mpark::throw_bad_variant_access(v19);
    }

    v13 = v39[0];
    if (v39[0])
    {
      atomic_fetch_add_explicit(v39[0], 2u, memory_order_relaxed);
      v14 = 1;
      v22 = v41;
      if (v41 == 255)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v14 = 1;
      v22 = v41;
      if (v41 == 255)
      {
        goto LABEL_64;
      }
    }

LABEL_58:
    if (v22)
    {
      v23 = v39[0];
      v39[0] = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v20);
      }
    }

    else if (v40 != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, v39);
    }

LABEL_64:
    if (v21)
    {
      *a2 = v13;
      *(a2 + 24) = v14;
      if (v37 == 255)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    ++v12;
    v10 += 24;
    v11 += 24;
  }

  while (v8 != v12);
  v27 = *v9;
  v28 = 24 * v27;
  v29 = WTF::fastMalloc((24 * v27 + 8));
  v30 = v29;
  *v29 = v27;
  if (v27)
  {
    v31 = (v29 + 6);
    v32 = (v9 + 6);
    do
    {
      *(v31 - 16) = 0;
      *v31 = -1;
      v33 = *v32;
      if (v33 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v33, v39, v31 - 2, v32 - 2);
        *v31 = *v32;
      }

      v31 += 3;
      v32 += 3;
      v28 -= 24;
    }

    while (v28);
  }

  v40 = 8;
  v39[0] = 0;
  *a2 = v30;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v38, v39);
  if (v37 != 255)
  {
LABEL_76:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v36);
  }

LABEL_77:
  v37 = -1;
  if (v35 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v39, v34);
  }

  v24 = *v9;
  if (v24)
  {
    v25 = 24 * v24;
    v26 = v9 + 6;
    do
    {
      v20 = (v26 - 16);
      if (*v26 != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v20);
      }

      *v26 = -1;
      v26 += 24;
      v25 -= 24;
    }

    while (v25);
  }

  WTF::fastFree(v9, v20);
  if (v45 != 255)
  {
LABEL_71:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v44);
  }

LABEL_72:
  v45 = -1;
  if (v43 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v34, v42);
  }
}

void WGSL::constantBool(const WGSL::Type **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2 && *v4)
  {
    LOBYTE(v17[0]) = 0;
    v18 = -1;
    v5 = *(v4 + 24);
    if (v5 == 255)
    {
      goto LABEL_48;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, &v14, v17, (v4 + 8));
    v18 = *(v4 + 24);
    if (v18 > 2u)
    {
      if (v18 <= 4u)
      {
        if (v18 == 3 || v18 == 4)
        {
          _ZF = LODWORD(v17[0]) == 0;
          goto LABEL_32;
        }

        goto LABEL_48;
      }

      if (v18 == 5)
      {
        _ZF = v17[0] == 0;
        goto LABEL_32;
      }

      if (v18 == 6)
      {
        v12 = v17[0];
LABEL_35:
        LOBYTE(v14) = v12;
        v16 = 6;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v19, v17);
        *(a3 + 16) = -1;
LABEL_36:
        *a3 = v12;
        LOBYTE(v7) = 6;
        goto LABEL_37;
      }

LABEL_48:
      __break(0xC471u);
      return;
    }

    if (v18)
    {
      if (v18 == 1)
      {
        __asm { FCMP            H0, #0 }

        goto LABEL_32;
      }

      if (v18 != 2)
      {
        goto LABEL_48;
      }

      _ZF = *v17 == 0.0;
    }

    else
    {
      _ZF = *v17 == 0.0;
    }

LABEL_32:
    v12 = !_ZF;
    goto LABEL_35;
  }

  WGSL::zeroValue(&v14, a1);
  LODWORD(v7) = v16;
  *a3 = 0;
  *(a3 + 16) = -1;
  if (v7 <= 5)
  {
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        *a3 = v14;
        LOBYTE(v7) = 3;
      }

      else if (v7 == 4)
      {
        *a3 = v14;
        LOBYTE(v7) = 4;
      }

      else
      {
        *a3 = v14;
        LOBYTE(v7) = 5;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        *a3 = v14;
      }

      else
      {
        *a3 = v14;
        LOBYTE(v7) = 2;
      }
    }

    else
    {
      *a3 = v14;
    }

    goto LABEL_37;
  }

  if (v7 <= 8)
  {
    if (v7 != 6)
    {
      if (v7 == 7)
      {
        v7 = v14;
        v14 = 0;
        *a3 = v7;
        LOBYTE(v7) = 7;
      }

      else
      {
        v7 = v14;
        v14 = 0;
        *a3 = v7;
        LOBYTE(v7) = 8;
      }

      goto LABEL_37;
    }

    v12 = v14;
    goto LABEL_36;
  }

  if (v7 == 9)
  {
    v13 = v15;
    v15 = 0;
    *a3 = v14;
    *(a3 + 8) = v13;
    LOBYTE(v7) = 9;
    goto LABEL_37;
  }

  if (v7 == 10)
  {
    v7 = v14;
    v14 = 0;
    *a3 = v7;
    LOBYTE(v7) = 10;
LABEL_37:
    *(a3 + 16) = v7;
    *(a3 + 24) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v17, &v14);
    return;
  }

  *(a3 + 24) = 0;
}

void WGSL::constantI32(const WGSL::Type **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2 && *v4)
  {
    v5 = *(v4 + 24);
    if (v5 == 5)
    {
      v6 = *(v4 + 8);
      if (v6 == v6)
      {
        LODWORD(v20[0]) = *(v4 + 8);
        v21 = 3;
        *a3 = v6;
        *(a3 + 16) = 3;
        *(a3 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v17, v20);
        return;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        v13 = -v6;
        v7 = 1;
        do
        {
          ++v7;
          v14 = v13 >= 0xA;
          v13 /= 0xAuLL;
        }

        while (v14);
      }

      else
      {
        v7 = 0;
        v8 = *(v4 + 8);
        do
        {
          ++v7;
          v9 = v8 > 9;
          v8 /= 0xAuLL;
        }

        while (v9);
      }

      if ((v7 & 0x80000000) == 0)
      {
        v15 = __OFADD__(v7, 31);
        v16 = v7 + 31;
        if (!v15 && !__OFADD__(v16, 6))
        {
          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v20, v16 + 6, "value ", 6uLL, v6, " cannot be represented as 'i32'", 0x1FuLL);
          if (v20[0])
          {
            *a3 = v20[0];
            *(a3 + 24) = 1;
            return;
          }
        }
      }

LABEL_59:
      __break(0xC471u);
      JUMPOUT(0x225832684);
    }

    LOBYTE(v20[0]) = 0;
    v21 = -1;
    if (v5 == 255)
    {
      goto LABEL_59;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, &v22, v20, (v4 + 8));
    v21 = *(v4 + 24);
    if (v21 <= 2u)
    {
      if (v21)
      {
        if (v21 == 1)
        {
          v11 = *v20;
        }

        else
        {
          if (v21 != 2)
          {
            goto LABEL_59;
          }

          v11 = *v20;
        }
      }

      else
      {
        v11 = *v20;
      }

      goto LABEL_56;
    }

    if (v21 > 4u)
    {
      if (v21 != 5)
      {
        if (v21 != 6)
        {
          goto LABEL_59;
        }

        v11 = LOBYTE(v20[0]);
        goto LABEL_56;
      }
    }

    else if (v21 != 3 && v21 != 4)
    {
      goto LABEL_59;
    }

    v11 = v20[0];
LABEL_56:
    LODWORD(v17) = v11;
    v19 = 3;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v22, v20);
    *(a3 + 16) = -1;
    goto LABEL_57;
  }

  WGSL::zeroValue(&v17, a1);
  LODWORD(v10) = v19;
  *a3 = 0;
  *(a3 + 16) = -1;
  if (v10 > 5)
  {
    if (v10 > 8)
    {
      if (v10 == 9)
      {
        v12 = v18;
        v18 = 0;
        *a3 = v17;
        *(a3 + 8) = v12;
        LOBYTE(v10) = 9;
      }

      else
      {
        if (v10 != 10)
        {
          *(a3 + 24) = 0;
          return;
        }

        v10 = v17;
        v17 = 0;
        *a3 = v10;
        LOBYTE(v10) = 10;
      }
    }

    else if (v10 == 6)
    {
      *a3 = v17;
      LOBYTE(v10) = 6;
    }

    else if (v10 == 7)
    {
      v10 = v17;
      v17 = 0;
      *a3 = v10;
      LOBYTE(v10) = 7;
    }

    else
    {
      v10 = v17;
      v17 = 0;
      *a3 = v10;
      LOBYTE(v10) = 8;
    }

    goto LABEL_58;
  }

  if (v10 <= 2)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        *a3 = v17;
      }

      else
      {
        *a3 = v17;
        LOBYTE(v10) = 2;
      }
    }

    else
    {
      *a3 = v17;
    }

    goto LABEL_58;
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {
      *a3 = v17;
      LOBYTE(v10) = 4;
    }

    else
    {
      *a3 = v17;
      LOBYTE(v10) = 5;
    }

    goto LABEL_58;
  }

  v11 = v17;
LABEL_57:
  *a3 = v11;
  LOBYTE(v10) = 3;
LABEL_58:
  *(a3 + 16) = v10;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v20, &v17);
}

void WGSL::constantU32(const WGSL::Type **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2 && *v4)
  {
    v5 = *(v4 + 24);
    if (v5 == 5)
    {
      v6 = *(v4 + 8);
      if (!HIDWORD(v6))
      {
        LODWORD(v20[0]) = *(v4 + 8);
        v21 = 4;
        *a3 = v6;
        *(a3 + 16) = 4;
        *(a3 + 24) = 0;
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v17, v20);
        return;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        v13 = -v6;
        v9 = 1;
        do
        {
          ++v9;
          v14 = v13 >= 0xA;
          v13 /= 0xAuLL;
        }

        while (v14);
      }

      else
      {
        v9 = 0;
        v10 = *(v4 + 8);
        do
        {
          ++v9;
          v11 = v10 > 9;
          v10 /= 0xAuLL;
        }

        while (v11);
      }

      if ((v9 & 0x80000000) == 0)
      {
        v15 = __OFADD__(v9, 31);
        v16 = v9 + 31;
        if (!v15 && !__OFADD__(v16, 6))
        {
          WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<long long,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v20, v16 + 6, "value ", 6uLL, v6, " cannot be represented as 'u32'", 0x1FuLL);
          if (v20[0])
          {
            *a3 = v20[0];
            *(a3 + 24) = 1;
            return;
          }
        }
      }

LABEL_59:
      __break(0xC471u);
      JUMPOUT(0x2258329F8);
    }

    LOBYTE(v20[0]) = 0;
    v21 = -1;
    if (v5 == 255)
    {
      goto LABEL_59;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, &v22, v20, (v4 + 8));
    v21 = *(v4 + 24);
    if (v21 <= 2u)
    {
      if (v21)
      {
        if (v21 == 1)
        {
          v8 = *v20;
        }

        else
        {
          if (v21 != 2)
          {
            goto LABEL_59;
          }

          v8 = *v20;
        }
      }

      else
      {
        v8 = *v20;
      }

      goto LABEL_56;
    }

    if (v21 > 4u)
    {
      if (v21 != 5)
      {
        if (v21 != 6)
        {
          goto LABEL_59;
        }

        v8 = LOBYTE(v20[0]);
        goto LABEL_56;
      }
    }

    else if (v21 != 3 && v21 != 4)
    {
      goto LABEL_59;
    }

    v8 = v20[0];
LABEL_56:
    LODWORD(v17) = v8;
    v19 = 4;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v22, v20);
    *(a3 + 16) = -1;
    goto LABEL_57;
  }

  WGSL::zeroValue(&v17, a1);
  LODWORD(v7) = v19;
  *a3 = 0;
  *(a3 + 16) = -1;
  if (v7 > 5)
  {
    if (v7 > 8)
    {
      if (v7 == 9)
      {
        v12 = v18;
        v18 = 0;
        *a3 = v17;
        *(a3 + 8) = v12;
        LOBYTE(v7) = 9;
      }

      else
      {
        if (v7 != 10)
        {
          *(a3 + 24) = 0;
          return;
        }

        v7 = v17;
        v17 = 0;
        *a3 = v7;
        LOBYTE(v7) = 10;
      }
    }

    else if (v7 == 6)
    {
      *a3 = v17;
      LOBYTE(v7) = 6;
    }

    else if (v7 == 7)
    {
      v7 = v17;
      v17 = 0;
      *a3 = v7;
      LOBYTE(v7) = 7;
    }

    else
    {
      v7 = v17;
      v17 = 0;
      *a3 = v7;
      LOBYTE(v7) = 8;
    }

    goto LABEL_58;
  }

  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        *a3 = v17;
      }

      else
      {
        *a3 = v17;
        LOBYTE(v7) = 2;
      }
    }

    else
    {
      *a3 = v17;
    }

    goto LABEL_58;
  }

  if (v7 == 3)
  {
    *a3 = v17;
    LOBYTE(v7) = 3;
  }

  else
  {
    if (v7 == 4)
    {
      v8 = v17;
LABEL_57:
      *a3 = v8;
      LOBYTE(v7) = 4;
      goto LABEL_58;
    }

    *a3 = v17;
    LOBYTE(v7) = 5;
  }

LABEL_58:
  *(a3 + 16) = v7;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v20, &v17);
}

void WGSL::constantF32(const WGSL::Type **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2 && *v4)
  {
    LOBYTE(v18[0]) = 0;
    v19 = -1;
    v5 = *(v4 + 24);
    if (v5 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, &v15, v18, (v4 + 8));
      v19 = *(v4 + 24);
      if (v19 <= 2u)
      {
        switch(v19)
        {
          case 0u:
            _S8 = *v18;
            goto LABEL_36;
          case 1u:
            _H0 = v18[0];
            __asm { FCVT            S8, H0 }

            goto LABEL_36;
          case 2u:
            _S8 = *v18;
            goto LABEL_36;
        }
      }

      else if (v19 > 4u)
      {
        if (v19 == 5)
        {
          _S8 = v18[0];
          goto LABEL_36;
        }

        if (v19 == 6)
        {
          LOBYTE(v6) = v18[0];
          goto LABEL_35;
        }
      }

      else
      {
        if (v19 == 3)
        {
          _S8 = SLODWORD(v18[0]);
LABEL_36:
          *&v15 = _S8;
          v17 = 0;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v20, v18);
          *(a3 + 16) = -1;
LABEL_37:
          LOBYTE(v8) = 0;
          *a3 = _S8;
          goto LABEL_38;
        }

        if (v19 == 4)
        {
          v6 = v18[0];
LABEL_35:
          _S8 = v6;
          goto LABEL_36;
        }
      }
    }

    __break(0xC471u);
  }

  else
  {
    WGSL::zeroValue(&v15, a1);
    LODWORD(v8) = v17;
    *a3 = 0;
    *(a3 + 16) = -1;
    if (v8 <= 5)
    {
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          *a3 = v15;
          LOBYTE(v8) = 3;
        }

        else if (v8 == 4)
        {
          *a3 = v15;
          LOBYTE(v8) = 4;
        }

        else
        {
          *a3 = v15;
          LOBYTE(v8) = 5;
        }

        goto LABEL_38;
      }

      if (v8)
      {
        if (v8 == 1)
        {
          *a3 = v15;
        }

        else
        {
          *a3 = v15;
          LOBYTE(v8) = 2;
        }

        goto LABEL_38;
      }

      _S8 = *&v15;
      goto LABEL_37;
    }

    if (v8 <= 8)
    {
      if (v8 == 6)
      {
        *a3 = v15;
        LOBYTE(v8) = 6;
      }

      else if (v8 == 7)
      {
        v8 = v15;
        v15 = 0;
        *a3 = v8;
        LOBYTE(v8) = 7;
      }

      else
      {
        v8 = v15;
        v15 = 0;
        *a3 = v8;
        LOBYTE(v8) = 8;
      }

      goto LABEL_38;
    }

    if (v8 == 9)
    {
      v14 = v16;
      v16 = 0;
      *a3 = v15;
      *(a3 + 8) = v14;
      LOBYTE(v8) = 9;
      goto LABEL_38;
    }

    if (v8 == 10)
    {
      v8 = v15;
      v15 = 0;
      *a3 = v8;
      LOBYTE(v8) = 10;
LABEL_38:
      *(a3 + 16) = v8;
      *(a3 + 24) = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v18, &v15);
      return;
    }

    *(a3 + 24) = 0;
  }
}

void WGSL::constantF16(const WGSL::Type **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2 && *v4)
  {
    LOBYTE(v19[0]) = 0;
    v20 = -1;
    v5 = *(v4 + 24);
    if (v5 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v5, &v16, v19, (v4 + 8));
      v20 = *(v4 + 24);
      if (v20 > 2u)
      {
        if (v20 > 4u)
        {
          if (v20 == 5)
          {
            _S0 = v19[0];
            goto LABEL_33;
          }

          if (v20 == 6)
          {
            LOBYTE(v6) = v19[0];
            _H8 = v6;
            goto LABEL_34;
          }
        }

        else
        {
          if (v20 == 3)
          {
            _S0 = SLODWORD(v19[0]);
LABEL_33:
            __asm { FCVT            H8, S0 }

            goto LABEL_34;
          }

          if (v20 == 4)
          {
            _S0 = LODWORD(v19[0]);
            goto LABEL_33;
          }
        }

        goto LABEL_47;
      }

      switch(v20)
      {
        case 0u:
          _S0 = *v19;
          goto LABEL_33;
        case 1u:
          _H8 = *v19;
LABEL_34:
          *&v16 = _H8;
          v18 = 1;
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v21, v19);
          *(a3 + 16) = -1;
LABEL_35:
          *a3 = _H8;
          LOBYTE(v8) = 1;
          goto LABEL_36;
        case 2u:
          _D0 = v19[0];
          __asm { FCVT            H8, D0 }

          goto LABEL_34;
      }
    }

LABEL_47:
    __break(0xC471u);
    return;
  }

  WGSL::zeroValue(&v16, a1);
  LODWORD(v8) = v18;
  *a3 = 0;
  *(a3 + 16) = -1;
  if (v8 <= 5)
  {
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        *a3 = v16;
        LOBYTE(v8) = 3;
      }

      else if (v8 == 4)
      {
        *a3 = v16;
        LOBYTE(v8) = 4;
      }

      else
      {
        *a3 = v16;
        LOBYTE(v8) = 5;
      }

      goto LABEL_36;
    }

    if (!v8)
    {
      *a3 = v16;
      goto LABEL_36;
    }

    if (v8 != 1)
    {
      *a3 = v16;
      LOBYTE(v8) = 2;
      goto LABEL_36;
    }

    _H8 = *&v16;
    goto LABEL_35;
  }

  if (v8 <= 8)
  {
    if (v8 == 6)
    {
      *a3 = v16;
      LOBYTE(v8) = 6;
    }

    else if (v8 == 7)
    {
      v8 = v16;
      v16 = 0;
      *a3 = v8;
      LOBYTE(v8) = 7;
    }

    else
    {
      v8 = v16;
      v16 = 0;
      *a3 = v8;
      LOBYTE(v8) = 8;
    }

    goto LABEL_36;
  }

  if (v8 == 9)
  {
    v15 = v17;
    v17 = 0;
    *a3 = v16;
    *(a3 + 8) = v15;
    LOBYTE(v8) = 9;
    goto LABEL_36;
  }

  if (v8 == 10)
  {
    v8 = v16;
    v16 = 0;
    *a3 = v8;
    LOBYTE(v8) = 10;
LABEL_36:
    *(a3 + 16) = v8;
    *(a3 + 24) = 0;
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v19, &v16);
    return;
  }

  *(a3 + 24) = 0;
}

void WGSL::constantVec2(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  WGSL::constantVector(&v7, a1, a2, 2u);
  *a3 = 0;
  *(a3 + 16) = -1;
  v4 = v9;
  if (v9 <= 5u)
  {
    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          *a3 = v7;
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        *a3 = v7;
      }

      goto LABEL_21;
    }

    if (v9 == 3 || v9 == 4)
    {
      *a3 = v7;
LABEL_21:
      *(a3 + 16) = v4;
      *(a3 + 24) = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v10, &v7);
      return;
    }

    v5 = v7;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (v9 <= 8u)
  {
    if (v9 == 6)
    {
      *a3 = v7;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v9 == 9)
  {
    v6 = v8;
    v8 = 0;
    *a3 = v7;
    *(a3 + 8) = v6;
    goto LABEL_21;
  }

  if (v9 == 10)
  {
LABEL_14:
    v5 = v7;
    v7 = 0;
    goto LABEL_20;
  }

  *(a3 + 24) = 0;
}

void WGSL::constantVec3(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  WGSL::constantVector(&v7, a1, a2, 3u);
  *a3 = 0;
  *(a3 + 16) = -1;
  v4 = v9;
  if (v9 <= 5u)
  {
    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          *a3 = v7;
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        *a3 = v7;
      }

      goto LABEL_21;
    }

    if (v9 == 3 || v9 == 4)
    {
      *a3 = v7;
LABEL_21:
      *(a3 + 16) = v4;
      *(a3 + 24) = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v10, &v7);
      return;
    }

    v5 = v7;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (v9 <= 8u)
  {
    if (v9 == 6)
    {
      *a3 = v7;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v9 == 9)
  {
    v6 = v8;
    v8 = 0;
    *a3 = v7;
    *(a3 + 8) = v6;
    goto LABEL_21;
  }

  if (v9 == 10)
  {
LABEL_14:
    v5 = v7;
    v7 = 0;
    goto LABEL_20;
  }

  *(a3 + 24) = 0;
}

void WGSL::constantVec4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  WGSL::constantVector(&v7, a1, a2, 4u);
  *a3 = 0;
  *(a3 + 16) = -1;
  v4 = v9;
  if (v9 <= 5u)
  {
    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          *a3 = v7;
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        *a3 = v7;
      }

      goto LABEL_21;
    }

    if (v9 == 3 || v9 == 4)
    {
      *a3 = v7;
LABEL_21:
      *(a3 + 16) = v4;
      *(a3 + 24) = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v10, &v7);
      return;
    }

    v5 = v7;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (v9 <= 8u)
  {
    if (v9 == 6)
    {
      *a3 = v7;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v9 == 9)
  {
    v6 = v8;
    v8 = 0;
    *a3 = v7;
    *(a3 + 8) = v6;
    goto LABEL_21;
  }

  if (v9 == 10)
  {
LABEL_14:
    v5 = v7;
    v7 = 0;
    goto LABEL_20;
  }

  *(a3 + 24) = 0;
}

void WGSL::constantMat2x2(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  WGSL::constantMatrix(&v7, a1, a2, 2u, 2);
  *a3 = 0;
  *(a3 + 16) = -1;
  v4 = v9;
  if (v9 <= 5u)
  {
    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          *a3 = v7;
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        *a3 = v7;
      }

      goto LABEL_21;
    }

    if (v9 == 3 || v9 == 4)
    {
      *a3 = v7;
LABEL_21:
      *(a3 + 16) = v4;
      *(a3 + 24) = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v10, &v7);
      return;
    }

    v5 = v7;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (v9 <= 8u)
  {
    if (v9 == 6)
    {
      *a3 = v7;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v9 == 9)
  {
    v6 = v8;
    v8 = 0;
    *a3 = v7;
    *(a3 + 8) = v6;
    goto LABEL_21;
  }

  if (v9 == 10)
  {
LABEL_14:
    v5 = v7;
    v7 = 0;
    goto LABEL_20;
  }

  *(a3 + 24) = 0;
}

void WGSL::constantMat2x3(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  WGSL::constantMatrix(&v7, a1, a2, 2u, 3);
  *a3 = 0;
  *(a3 + 16) = -1;
  v4 = v9;
  if (v9 <= 5u)
  {
    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          *a3 = v7;
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        *a3 = v7;
      }

      goto LABEL_21;
    }

    if (v9 == 3 || v9 == 4)
    {
      *a3 = v7;
LABEL_21:
      *(a3 + 16) = v4;
      *(a3 + 24) = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v10, &v7);
      return;
    }

    v5 = v7;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (v9 <= 8u)
  {
    if (v9 == 6)
    {
      *a3 = v7;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v9 == 9)
  {
    v6 = v8;
    v8 = 0;
    *a3 = v7;
    *(a3 + 8) = v6;
    goto LABEL_21;
  }

  if (v9 == 10)
  {
LABEL_14:
    v5 = v7;
    v7 = 0;
    goto LABEL_20;
  }

  *(a3 + 24) = 0;
}

void WGSL::constantMat2x4(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  WGSL::constantMatrix(&v7, a1, a2, 2u, 4);
  *a3 = 0;
  *(a3 + 16) = -1;
  v4 = v9;
  if (v9 <= 5u)
  {
    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          *a3 = v7;
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        *a3 = v7;
      }

      goto LABEL_21;
    }

    if (v9 == 3 || v9 == 4)
    {
      *a3 = v7;
LABEL_21:
      *(a3 + 16) = v4;
      *(a3 + 24) = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v10, &v7);
      return;
    }

    v5 = v7;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (v9 <= 8u)
  {
    if (v9 == 6)
    {
      *a3 = v7;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v9 == 9)
  {
    v6 = v8;
    v8 = 0;
    *a3 = v7;
    *(a3 + 8) = v6;
    goto LABEL_21;
  }

  if (v9 == 10)
  {
LABEL_14:
    v5 = v7;
    v7 = 0;
    goto LABEL_20;
  }

  *(a3 + 24) = 0;
}

void WGSL::constantMat3x2(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  WGSL::constantMatrix(&v7, a1, a2, 3u, 2);
  *a3 = 0;
  *(a3 + 16) = -1;
  v4 = v9;
  if (v9 <= 5u)
  {
    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          *a3 = v7;
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        *a3 = v7;
      }

      goto LABEL_21;
    }

    if (v9 == 3 || v9 == 4)
    {
      *a3 = v7;
LABEL_21:
      *(a3 + 16) = v4;
      *(a3 + 24) = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v10, &v7);
      return;
    }

    v5 = v7;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (v9 <= 8u)
  {
    if (v9 == 6)
    {
      *a3 = v7;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v9 == 9)
  {
    v6 = v8;
    v8 = 0;
    *a3 = v7;
    *(a3 + 8) = v6;
    goto LABEL_21;
  }

  if (v9 == 10)
  {
LABEL_14:
    v5 = v7;
    v7 = 0;
    goto LABEL_20;
  }

  *(a3 + 24) = 0;
}

void WGSL::constantMat3x3(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  WGSL::constantMatrix(&v7, a1, a2, 3u, 3);
  *a3 = 0;
  *(a3 + 16) = -1;
  v4 = v9;
  if (v9 <= 5u)
  {
    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          *a3 = v7;
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        *a3 = v7;
      }

      goto LABEL_21;
    }

    if (v9 == 3 || v9 == 4)
    {
      *a3 = v7;
LABEL_21:
      *(a3 + 16) = v4;
      *(a3 + 24) = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v10, &v7);
      return;
    }

    v5 = v7;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (v9 <= 8u)
  {
    if (v9 == 6)
    {
      *a3 = v7;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v9 == 9)
  {
    v6 = v8;
    v8 = 0;
    *a3 = v7;
    *(a3 + 8) = v6;
    goto LABEL_21;
  }

  if (v9 == 10)
  {
LABEL_14:
    v5 = v7;
    v7 = 0;
    goto LABEL_20;
  }

  *(a3 + 24) = 0;
}

void WGSL::constantMat3x4(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  WGSL::constantMatrix(&v7, a1, a2, 3u, 4);
  *a3 = 0;
  *(a3 + 16) = -1;
  v4 = v9;
  if (v9 <= 5u)
  {
    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          *a3 = v7;
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        *a3 = v7;
      }

      goto LABEL_21;
    }

    if (v9 == 3 || v9 == 4)
    {
      *a3 = v7;
LABEL_21:
      *(a3 + 16) = v4;
      *(a3 + 24) = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v10, &v7);
      return;
    }

    v5 = v7;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (v9 <= 8u)
  {
    if (v9 == 6)
    {
      *a3 = v7;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v9 == 9)
  {
    v6 = v8;
    v8 = 0;
    *a3 = v7;
    *(a3 + 8) = v6;
    goto LABEL_21;
  }

  if (v9 == 10)
  {
LABEL_14:
    v5 = v7;
    v7 = 0;
    goto LABEL_20;
  }

  *(a3 + 24) = 0;
}

void WGSL::constantMat4x2(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  WGSL::constantMatrix(&v7, a1, a2, 4u, 2);
  *a3 = 0;
  *(a3 + 16) = -1;
  v4 = v9;
  if (v9 <= 5u)
  {
    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          *a3 = v7;
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        *a3 = v7;
      }

      goto LABEL_21;
    }

    if (v9 == 3 || v9 == 4)
    {
      *a3 = v7;
LABEL_21:
      *(a3 + 16) = v4;
      *(a3 + 24) = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v10, &v7);
      return;
    }

    v5 = v7;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (v9 <= 8u)
  {
    if (v9 == 6)
    {
      *a3 = v7;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v9 == 9)
  {
    v6 = v8;
    v8 = 0;
    *a3 = v7;
    *(a3 + 8) = v6;
    goto LABEL_21;
  }

  if (v9 == 10)
  {
LABEL_14:
    v5 = v7;
    v7 = 0;
    goto LABEL_20;
  }

  *(a3 + 24) = 0;
}

void WGSL::constantMat4x3(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  WGSL::constantMatrix(&v7, a1, a2, 4u, 3);
  *a3 = 0;
  *(a3 + 16) = -1;
  v4 = v9;
  if (v9 <= 5u)
  {
    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          *a3 = v7;
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        *a3 = v7;
      }

      goto LABEL_21;
    }

    if (v9 == 3 || v9 == 4)
    {
      *a3 = v7;
LABEL_21:
      *(a3 + 16) = v4;
      *(a3 + 24) = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v10, &v7);
      return;
    }

    v5 = v7;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (v9 <= 8u)
  {
    if (v9 == 6)
    {
      *a3 = v7;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v9 == 9)
  {
    v6 = v8;
    v8 = 0;
    *a3 = v7;
    *(a3 + 8) = v6;
    goto LABEL_21;
  }

  if (v9 == 10)
  {
LABEL_14:
    v5 = v7;
    v7 = 0;
    goto LABEL_20;
  }

  *(a3 + 24) = 0;
}

void WGSL::constantMat4x4(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  WGSL::constantMatrix(&v7, a1, a2, 4u, 4);
  *a3 = 0;
  *(a3 + 16) = -1;
  v4 = v9;
  if (v9 <= 5u)
  {
    if (v9 <= 2u)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          *a3 = v7;
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        *a3 = v7;
      }

      goto LABEL_21;
    }

    if (v9 == 3 || v9 == 4)
    {
      *a3 = v7;
LABEL_21:
      *(a3 + 16) = v4;
      *(a3 + 24) = 0;
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v10, &v7);
      return;
    }

    v5 = v7;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (v9 <= 8u)
  {
    if (v9 == 6)
    {
      *a3 = v7;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v9 == 9)
  {
    v6 = v8;
    v8 = 0;
    *a3 = v7;
    *(a3 + 8) = v6;
    goto LABEL_21;
  }

  if (v9 == 10)
  {
LABEL_14:
    v5 = v7;
    v7 = 0;
    goto LABEL_20;
  }

  *(a3 + 24) = 0;
}

void WGSL::constantAll(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a2;
  if (!**a2)
  {
    __break(0xC471u);
    return;
  }

  v5 = *(v4 + 24);
  if (v5 != 8)
  {
    if (v5 != 6)
    {
LABEL_20:
      mpark::throw_bad_variant_access(a1);
    }

    *a3 = *(v4 + 8);
    a3[16] = 6;
    a3[24] = 0;
    return;
  }

  v6 = *(v4 + 1);
  if (v6)
  {
    v7 = v6 + 2;
  }

  else
  {
    v7 = 0;
  }

  if (!v6)
  {
    v8 = 0;
    if (v7)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v8 = &v6[6 * *v6 + 2];
  if (v7 == v8)
  {
LABEL_17:
    LOBYTE(v10[0]) = 1;
    v11 = 6;
    *a3 = 1;
    a3[16] = 6;
    a3[24] = 0;
LABEL_19:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v9, v10);
    return;
  }

  while (1)
  {
LABEL_13:
    LOBYTE(v10[0]) = 0;
    v11 = -1;
    a1 = *(v7 + 16);
    if (a1 == 255)
    {
      goto LABEL_20;
    }

    a1 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(a1, v9, v10, v7);
    v11 = *(v7 + 16);
    if (v11 != 6)
    {
      goto LABEL_20;
    }

    if ((v10[0] & 1) == 0)
    {
      break;
    }

    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v9, v10);
    v7 += 6;
    if (v7 == v8)
    {
      goto LABEL_17;
    }
  }

  v9[0] = 0;
  v9[16] = 6;
  *a3 = 0;
  a3[16] = 6;
  a3[24] = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v12, v9);
  if (v11 != 255)
  {
    goto LABEL_19;
  }
}

void WGSL::constantAny(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a2;
  if (!**a2)
  {
    __break(0xC471u);
    return;
  }

  v5 = *(v4 + 24);
  if (v5 != 8)
  {
    if (v5 != 6)
    {
LABEL_20:
      mpark::throw_bad_variant_access(a1);
    }

    *a3 = *(v4 + 8);
    a3[16] = 6;
    a3[24] = 0;
    return;
  }

  v6 = *(v4 + 1);
  if (v6)
  {
    v7 = v6 + 2;
  }

  else
  {
    v7 = 0;
  }

  if (!v6)
  {
    v8 = 0;
    if (v7)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v8 = &v6[6 * *v6 + 2];
  if (v7 == v8)
  {
LABEL_17:
    LOBYTE(v10[0]) = 0;
    v11 = 6;
    *a3 = 0;
    a3[16] = 6;
    a3[24] = 0;
LABEL_19:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v9, v10);
    return;
  }

  while (1)
  {
LABEL_13:
    LOBYTE(v10[0]) = 0;
    v11 = -1;
    a1 = *(v7 + 16);
    if (a1 == 255)
    {
      goto LABEL_20;
    }

    a1 = _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(a1, v9, v10, v7);
    v11 = *(v7 + 16);
    if (v11 != 6)
    {
      goto LABEL_20;
    }

    if (LOBYTE(v10[0]) == 1)
    {
      break;
    }

    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v9, v10);
    v7 += 6;
    if (v7 == v8)
    {
      goto LABEL_17;
    }
  }

  v9[0] = v10[0];
  v9[16] = 6;
  *a3 = v10[0];
  a3[16] = 6;
  a3[24] = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v12, v9);
  if (v11 != 255)
  {
    goto LABEL_19;
  }
}

void WGSL::constantSelect(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = **a2;
  if (!v5)
  {
    __break(0xC471u);
    JUMPOUT(0x225834400);
  }

  if (v5 == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x225834420);
  }

  if (v5 <= 2)
  {
    __break(0xC471u);
LABEL_52:
    JUMPOUT(0x225834380);
  }

  v6 = (v4 + 2);
  v7 = (v4 + 8);
  v8 = *(v4 + 72);
  if (v8 == 6)
  {
    if (*(v4 + 56))
    {
      v9 = (v4 + 8);
    }

    else
    {
      v9 = (v4 + 2);
    }

    *a3 = 0;
    *(a3 + 16) = -1;
    v10 = *(v9 + 16);
    if (v10 != 255)
    {
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v10, v32, a3, v9);
      *(a3 + 16) = *(v9 + 16);
    }

    *(a3 + 24) = 0;
    return;
  }

  if (*(v4 + 24) != 8 || *(v4 + 48) != 8 || v8 != 8)
  {
LABEL_45:
    mpark::throw_bad_variant_access(a1);
  }

  v11 = *(v4 + 7);
  if (!v11 || (v12 = *v11, !v12))
  {
    v14 = 0;
    v23 = 0;
    v27 = 1;
    goto LABEL_37;
  }

  v13 = 24 * v12;
  v14 = WTF::fastMalloc((24 * v12 + 8));
  *v14 = v12;
  bzero(v14 + 2, 24 * ((24 * v12 - 24) / 0x18uLL) + 24);
  v15 = 0;
  v16 = 0;
  do
  {
    while (1)
    {
      v17 = *(v4 + 7);
      if (v16 >= *v17)
      {
        __break(0xC471u);
        goto LABEL_52;
      }

      v18 = &v17[v15 / 4];
      if (*(v18 + 24) != 6)
      {
        goto LABEL_45;
      }

      if (*(v18 + 8) == 1)
      {
        v19 = *v7;
        if (v16 >= **v7)
        {
          __break(0xC471u);
          JUMPOUT(0x2258343C0);
        }
      }

      else
      {
        v19 = *v6;
        if (v16 >= **v6)
        {
          __break(0xC471u);
          JUMPOUT(0x2258343E0);
        }
      }

      if (v16 >= *v14)
      {
        __break(0xC471u);
        JUMPOUT(0x2258343A0);
      }

      v20 = v19 + v15;
      a1 = *(v20 + 24);
      if (LOBYTE(v14[v15 / 4 + 6]) != 255)
      {
        break;
      }

      if (a1 != 255)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v16;
      v15 += 24;
      if (v13 == v15)
      {
        goto LABEL_30;
      }
    }

    if (a1 != 255)
    {
LABEL_18:
      v32[0] = &v14[v15 / 4 + 2];
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE14generic_assignIRKNS0_15copy_assignmentISB_LNS0_5TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRSC_SI_EEEDcmSK_DpOT0_(a1, v32, v32[0], (v20 + 8));
      goto LABEL_19;
    }

    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v32, &v14[v15 / 4 + 2]);
    LOBYTE(v14[v15 / 4 + 6]) = -1;
    ++v16;
    v15 += 24;
  }

  while (v13 != v15);
LABEL_30:
  v21 = *v14;
  v22 = 24 * v21;
  v23 = WTF::fastMalloc((24 * v21 + 8));
  *v23 = v21;
  if (v21)
  {
    v24 = 0;
    do
    {
      LOBYTE(v23[v24 / 4 + 2]) = 0;
      v25 = &v14[v24 / 4];
      LOBYTE(v23[v24 / 4 + 6]) = -1;
      v26 = LOBYTE(v14[v24 / 4 + 6]);
      if (v26 != 255)
      {
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_11constructorINS0_6traitsIJfDhdijxbN4WGSL13ConstantArrayENS6_14ConstantVectorENS6_14ConstantMatrixENS6_14ConstantStructEEEEE17generic_constructIRKNS0_16copy_constructorISB_LNS0_5TraitE1EEEEEvRSC_OT_EUlRSK_OT0_E_JSJ_SI_EEEDcmSL_DpOT0_(v26, &v34, &v23[v24 / 4 + 2], v25 + 1);
        LOBYTE(v23[v24 / 4 + 6]) = *(v25 + 24);
      }

      v24 += 24;
    }

    while (v22 != v24);
  }

  v27 = 0;
LABEL_37:
  v33 = 8;
  v32[0] = 0;
  *a3 = v23;
  *(a3 + 16) = 8;
  *(a3 + 24) = 0;
  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(&v34, v32);
  if ((v27 & 1) == 0)
  {
    v29 = *v14;
    if (v29)
    {
      v30 = 24 * v29;
      v31 = v14 + 6;
      do
      {
        v28 = v31 - 16;
        if (*v31 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<float,half,double,int,unsigned int,long long,BOOL,WGSL::ConstantArray,WGSL::ConstantVector,WGSL::ConstantMatrix,WGSL::ConstantStruct>,(mpark::detail::Trait)1> &>(v32, v28);
        }

        *v31 = -1;
        v31 += 24;
        v30 -= 24;
      }

      while (v30);
    }

    WTF::fastFree(v14, v28);
  }
}

void WGSL::constantAcos(void *a1@<X1>, uint64_t a2@<X8>)
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
      v47[0] = COERCE_WTF_STRINGIMPL_(acos(*v4));
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
          JUMPOUT(0x225834A5CLL);
        }

        LODWORD(v47[0]) = acosf(*v4);
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

      _S0 = acosf(_S0);
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
        JUMPOUT(0x2258349F0);
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
      JUMPOUT(0x225834A3CLL);
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

        _S0 = acosf(_S0);
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
        v44[0] = COERCE__BYTE_(acos(*__x));
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
          JUMPOUT(0x225834A84);
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

    LODWORD(v44[0]) = acosf(*__x);
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

void WGSL::constantAsin(void *a1@<X1>, uint64_t a2@<X8>)
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
      v47[0] = COERCE_WTF_STRINGIMPL_(asin(*v4));
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
          JUMPOUT(0x2258350D8);
        }

        LODWORD(v47[0]) = asinf(*v4);
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

      _S0 = asinf(_S0);
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
        JUMPOUT(0x22583506CLL);
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
      JUMPOUT(0x2258350B8);
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

        _S0 = asinf(_S0);
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
        v44[0] = COERCE__BYTE_(asin(*__x));
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
          JUMPOUT(0x225835100);
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

    LODWORD(v44[0]) = asinf(*__x);
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

void WGSL::constantAtan(void *a1@<X1>, uint64_t a2@<X8>)
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
      v47[0] = COERCE_WTF_STRINGIMPL_(atan(*v4));
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
          JUMPOUT(0x225835754);
        }

        LODWORD(v47[0]) = atanf(*v4);
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

      _S0 = atanf(_S0);
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
        JUMPOUT(0x2258356E8);
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
      JUMPOUT(0x225835734);
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

        _S0 = atanf(_S0);
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
        v44[0] = COERCE__BYTE_(atan(*__x));
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
          JUMPOUT(0x22583577CLL);
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

    LODWORD(v44[0]) = atanf(*__x);
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

void WGSL::constantCos(void *a1@<X1>, uint64_t a2@<X8>)
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
      v47[0] = COERCE_WTF_STRINGIMPL_(cos(*v4));
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
          JUMPOUT(0x225835DD0);
        }

        LODWORD(v47[0]) = cosf(*v4);
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

      _S0 = cosf(_S0);
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
        JUMPOUT(0x225835D64);
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
      JUMPOUT(0x225835DB0);
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

        _S0 = cosf(_S0);
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
        v44[0] = COERCE__BYTE_(cos(*__x));
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
          JUMPOUT(0x225835DF8);
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

    LODWORD(v44[0]) = cosf(*__x);
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

void WGSL::constantSin(void *a1@<X1>, uint64_t a2@<X8>)
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
      v47[0] = COERCE_WTF_STRINGIMPL_(sin(*v4));
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
          JUMPOUT(0x22583644CLL);
        }

        LODWORD(v47[0]) = sinf(*v4);
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

      _S0 = sinf(_S0);
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
        JUMPOUT(0x2258363E0);
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
      JUMPOUT(0x22583642CLL);
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

        _S0 = sinf(_S0);
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
        v44[0] = COERCE__BYTE_(sin(*__x));
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
          JUMPOUT(0x225836474);
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

    LODWORD(v44[0]) = sinf(*__x);
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

void WGSL::constantTan(void *a1@<X1>, uint64_t a2@<X8>)
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
      v47[0] = COERCE_WTF_STRINGIMPL_(tan(*v4));
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
          JUMPOUT(0x225836AC8);
        }

        LODWORD(v47[0]) = tanf(*v4);
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

      _S0 = tanf(_S0);
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
        JUMPOUT(0x225836A5CLL);
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
      JUMPOUT(0x225836AA8);
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

        _S0 = tanf(_S0);
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
        v44[0] = COERCE__BYTE_(tan(*__x));
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
          JUMPOUT(0x225836AF0);
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

    LODWORD(v44[0]) = tanf(*__x);
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

void WGSL::constantAcosh(void *a1@<X1>, uint64_t a2@<X8>)
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
      v47[0] = COERCE_WTF_STRINGIMPL_(acosh(*v4));
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
          JUMPOUT(0x225837144);
        }

        LODWORD(v47[0]) = acoshf(*v4);
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

      _S0 = acoshf(_S0);
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
        JUMPOUT(0x2258370D8);
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
      JUMPOUT(0x225837124);
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

        _S0 = acoshf(_S0);
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
        v44[0] = COERCE__BYTE_(acosh(*__x));
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
          JUMPOUT(0x22583716CLL);
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

    LODWORD(v44[0]) = acoshf(*__x);
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

void WGSL::constantAsinh(void *a1@<X1>, uint64_t a2@<X8>)
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
      v47[0] = COERCE_WTF_STRINGIMPL_(asinh(*v4));
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
          JUMPOUT(0x2258377C0);
        }

        LODWORD(v47[0]) = asinhf(*v4);
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

      _S0 = asinhf(_S0);
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
        JUMPOUT(0x225837754);
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
      JUMPOUT(0x2258377A0);
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

        _S0 = asinhf(_S0);
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
        v44[0] = COERCE__BYTE_(asinh(*__x));
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
          JUMPOUT(0x2258377E8);
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

    LODWORD(v44[0]) = asinhf(*__x);
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